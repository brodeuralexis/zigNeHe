const Builder = @import("std").build.Builder;
const builtin = @import("builtin");

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();
    const exe = b.addExecutable("Lesson05", "src/main.zig");
    exe.setBuildMode(mode);

    switch (builtin.os) {
        .macosx => {
            exe.addFrameworkDir("/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks");
            exe.linkFramework("OpenGL");
        },
        .freebsd => {
            exe.addIncludeDir("/usr/local/include/GL");
            exe.linkSystemLibrary("gl");
            exe.linkSystemLibrary("glu");
        },
        else => {
            @panic("don't know how to build on your system");
        },
    }
    exe.addIncludeDir("/usr/local/include");
    exe.linkSystemLibrary("glfw");

    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
