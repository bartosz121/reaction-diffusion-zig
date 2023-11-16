const std = @import("std");
const raylib = @import("raylib/build.zig");

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardOptimizeOption(.{});
    const exe = b.addExecutable(.{
        .name = "reaction_diffusion",
        .root_source_file = .{ .path = "src/main.zig" },
        .target = target,
        .optimize = mode,
    });

    raylib.addTo(b, exe, target, mode);
    b.installArtifact(exe);
}
