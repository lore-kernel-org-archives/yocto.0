Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D08FCC433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Jul 2022 08:05:46 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web09.82132.1657008337936990252
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 01:05:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Q5M0nLR8;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193,
 mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 2712B24001B;
	Tue,  5 Jul 2022 08:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1657008336;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kQeQeRXRstf3BWIioT3VqboMFSQqIye1j+ZWVKhj+vE=;
	b=Q5M0nLR8s/Boj8zI4SJ5CSGnrPPptlh94hg3O3wKDyPyDcKDGQp7gTFcCq26kh+DPSArj3
	Hll0RZ49sqloY6cX2u5NYrfRXmQU1Pp2gBcSzF63HzkL8OY4ybIJ/XOevBr3RrxWkuje06
	mjZxfjEswaWB2jRTmaRCNsro+aV37kr/JwUaoKEO2FUdzCDeZeHJjb59+IOW6XL6cCQYyY
	x0tLamThyxMRUQXoHLDnE5e+xp0+hU8q2cpI0pgSFINuo5uaOvEXexNQXfQCy4n6UBDjsK
	+xGPwcQene1l1p/zoazvphZJvxSQmqaRSOFcQR7c4zDPqOgxr6P9TebeEJgxWA==
Date: Tue, 5 Jul 2022 10:05:34 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: johannes.schilling@methodpark.de
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [PATCH 1/2] image-without-static-linkage: add class
Message-ID: <YsPwzobbNQZ7MWYo@mail.local>
References: <20220704162504.1488894-1-johannes.schilling@methodpark.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220704162504.1488894-1-johannes.schilling@methodpark.de>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Jul 2022 08:05:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57448

Hello,

Both patches are missing your SoB, please add those. Also, It would be
great if you could add a From: as this makes it easier to get your patch
from the list. This should do the trick:

git config --global sendemail.from email@provider

Thanks!

On 04/07/2022 18:25:03+0200, Johannes Schilling via lists.yoctoproject.org wrote:
> This class provides a new image QA check that tries to detect static
> linkage of a set of well-known libraries, leveraging the detectors from
> cve-bin-tool[0].
> 
> To use in your project, provide a config file as described in the header
> comment of the class, and inherit image-without-static-linkage in your
> image recipe.
> 
> [0] https://github.com/intel/cve-bin-tool/tree/main/cve_bin_tool/checkers
> ---
>  classes/image-without-static-linkage.bbclass  |  65 +++++++++
>  .../python/python3-packaging_%.bbappend       |   1 +
>  .../cve-bin-tool/cve-bin-tool-native.bb       |  34 +++++
>  .../files/cve-bin-tool-static-linkage-checker | 126 ++++++++++++++++++
>  4 files changed, 226 insertions(+)
>  create mode 100644 classes/image-without-static-linkage.bbclass
>  create mode 100644 recipes-devtools/python/python3-packaging_%.bbappend
>  create mode 100644 recipes-security/cve-bin-tool/cve-bin-tool-native.bb
>  create mode 100644 recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage-checker
> 
> diff --git a/classes/image-without-static-linkage.bbclass b/classes/image-without-static-linkage.bbclass
> new file mode 100644
> index 0000000..c6f2013
> --- /dev/null
> +++ b/classes/image-without-static-linkage.bbclass
> @@ -0,0 +1,65 @@
> +# Provide a QA check for statically linked copies of libraries.
> +#
> +# You need to provide a config file in TOML format and point the
> +# variable `STATIC_LINKAGE_CHECK_CONFIG_FILE` to it.
> +#
> +# The file format is as follows
> +# ```
> +# [checkers]
> +# modules = [
> +#   # list of checker module names of cve-bin-tool checkers lib to
> +#   # enable, i.e. file names in the cve_bin_tool/checkers subfolder.
> +#   # https://github.com/intel/cve-bin-tool/tree/main/cve_bin_tool/checkers
> +#   "librsvg",
> +#   "zlib",
> +# ]
> +#
> +# [exceptions]
> +# ignore_dirs = [
> +#   # list of directories, everything under these is completely ignored
> +#   "/var/lib/opkg",
> +# ]
> +#
> +# [exceptions.ignore_checks]
> +#   # for each binary path, a list of checkers from the global list to
> +#   # ignore for this binary (allowlist)
> +#   "/bin/ary/name" = [ "zlib" ],
> +# ```
> +
> +IMAGE_QA_COMMANDS += "image_check_static_linkage"
> +
> +DEPENDS += "cve-bin-tool-native"
> +
> +inherit python3native
> +
> +
> +STATIC_LINKAGE_CUSTOM_ERROR_MESSAGE ??= ""
> +
> +python image_check_static_linkage() {
> +    import json
> +    from pathlib import Path
> +    import subprocess
> +
> +    from oe.utils import ImageQAFailed
> +
> +    check_result = subprocess.check_output(["cve-bin-tool-static-linkage-checker",
> +        "--config", d.getVar("STATIC_LINKAGE_CHECK_CONFIG_FILE"),
> +        d.getVar("IMAGE_ROOTFS"),
> +    ])
> +    check_result = json.loads(check_result)
> +
> +    deploy_dir = Path(d.getVar("DEPLOYDIR"))
> +    deploy_dir.mkdir(parents=True, exist_ok=True)
> +    image_basename = d.getVar("IMAGE_BASENAME")
> +    stats_filename = "static_linkage_stats-" + image_basename + ".json"
> +    with open(deploy_dir / stats_filename, "w") as stats_out:
> +        json.dump(check_result, stats_out)
> +
> +    binaries_with_violations = {k: v for k, v in check_result.items() if v}
> +    if binaries_with_violations:
> +        msg = "Static linkage check: found {} violations".format(len(binaries_with_violations))
> +        for violator, violations in binaries_with_violations.items():
> +            msg += "\n{}: {}".format(violator, violations)
> +
> +        raise ImageQAFailed(msg, image_check_static_linkage)
> +}
> diff --git a/recipes-devtools/python/python3-packaging_%.bbappend b/recipes-devtools/python/python3-packaging_%.bbappend
> new file mode 100644
> index 0000000..d6f5869
> --- /dev/null
> +++ b/recipes-devtools/python/python3-packaging_%.bbappend
> @@ -0,0 +1 @@
> +BBCLASSEXTEND += "native"
> diff --git a/recipes-security/cve-bin-tool/cve-bin-tool-native.bb b/recipes-security/cve-bin-tool/cve-bin-tool-native.bb
> new file mode 100644
> index 0000000..3efbdf7
> --- /dev/null
> +++ b/recipes-security/cve-bin-tool/cve-bin-tool-native.bb
> @@ -0,0 +1,34 @@
> +SUMMARY = "Scanner for statically linked library copies"
> +HOMEPAGE = "https://github.com/intel/cve-bin-tool"
> +
> +LICENSE = "GPL-3.0"
> +LIC_FILES_CHKSUM = "file://LICENSE.md;md5=97a733ff40c50b4bfc74471e1f6ca88b"
> +
> +VERSION = "3.1"
> +
> +
> +SRC_URI = "\
> +    https://github.com/intel/cve-bin-tool/archive/refs/tags/v${VERSION}.tar.gz \
> +    file://cve-bin-tool-static-linkage-checker \
> +"
> +
> +SRC_URI[md5sum] = "af6958f8be7f7ce0d2b5ddffa34a1aee"
> +SRC_URI[sha256sum] = "c4faaa401a2605a0d3f3c947deaf01cb56b4da927bfc29b5e959cde243bf5daf"
> +
> +inherit python3native native
> +
> +S = "${WORKDIR}/cve-bin-tool-3.1"
> +inherit setuptools3
> +
> +RDEPENDS_${PN} = "\
> +  python3-rich-native \
> +  python3-packaging-native \
> +"
> +
> +do_install:append() {
> +  install -m 0755 "${WORKDIR}/cve-bin-tool-static-linkage-checker" "${D}${bindir}"
> +}
> +FILES-${PN}:append = "${bindir}/cve-bin-tool-static-linkage-checker"
> +
> +do_configure[noexec] = "1"
> +do_compile[noexec] = "1"
> diff --git a/recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage-checker b/recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage-checker
> new file mode 100644
> index 0000000..7da1b3b
> --- /dev/null
> +++ b/recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage-checker
> @@ -0,0 +1,126 @@
> +#!/usr/bin/env python3
> +
> +from importlib import import_module
> +from pathlib import Path
> +
> +import argparse
> +import json
> +import subprocess
> +import toml
> +
> +
> +def parse_args():
> +    """
> +    Parse command line arguments.
> +    """
> +    parser = argparse.ArgumentParser(
> +        prog=sys.argv[0],
> +        description="Checker for staticly linked copies of libraries",
> +    )
> +
> +    parser.add_argument(
> +        "directory",
> +        help="Path to the directory to scan",
> +    )
> +
> +    parser.add_argument(
> +        "--config",
> +        help="Path to the config file",
> +        required=True,
> +    )
> +
> +    return parser.parse_args()
> +
> +
> +def list_input_files(rootdir):
> +    """
> +    Iterate over the input rootfs and find any file that is an executable ELF file, yielding their
> +    names for the next step to iterate over.
> +    """
> +    import sys
> +    with subprocess.Popen(
> +        ["find", rootdir, "-type", "f", "-executable", "-printf", "/%P\\n"],
> +        stdout=subprocess.PIPE,
> +    ) as find:
> +        for line in find.stdout:
> +            executable_filename = line.decode().strip()
> +            file_out = subprocess.check_output(["file", rootdir + executable_filename]).decode()
> +            if "ELF " not in file_out:
> +                continue
> +
> +            yield executable_filename
> +
> +
> +# PurePath.is_relative_to was only added in python 3.9
> +def _path_is_relative_to(subdir, base):
> +    try:
> +        subdir.relative_to(base)
> +        return True
> +    except ValueError:
> +        return False
> +
> +
> +def check_file(root_dir, filename, checkers, exceptions):
> +    """
> +    Check an executable file for traces of static linkage using all the checkers specified and
> +    applying all exceptions specified.
> +    """
> +    full_filepath = root_dir + filename
> +    strings_out = subprocess.check_output(["strings", full_filepath]).decode()
> +
> +    filepath = Path(filename)
> +    if any(
> +        _path_is_relative_to(Path(ex), filepath) for ex in exceptions["ignore_dirs"]
> +    ):
> +        return []
> +
> +    found_lib_versions = []
> +    for checker_name, checker in checkers.items():
> +        if filename in exceptions["ignore_checks"]:
> +            if checker_name in exceptions["ignore_checks"][filename]:
> +                continue
> +
> +        vi = checker().get_version(strings_out, filename)
> +        if vi and vi["is_or_contains"] == "contains" and vi["version"] != "UNKNOWN":
> +            found_lib_versions.append({checker_name: vi["version"]})
> +
> +    return found_lib_versions
> +
> +
> +def _load_checker_class(mod_name):
> +    """
> +    Load a checker class given the module name.
> +
> +    The class and module name can be generated from each other (the setup.py file for cve-bin-tool
> +    does the same), e.g. module `libjpeg_turbo` contains checker class `LibjpegTurboChecker`.
> +    """
> +    class_name = "".join(mod_name.replace("_", " ").title().split()) + "Checker"
> +
> +    mod = import_module(f"cve_bin_tool.checkers.{mod_name}")
> +    return getattr(mod, class_name)
> +
> +
> +def main():
> +    """
> +    Main entry point.
> +    """
> +    args = parse_args()
> +    config = toml.load(args.config)
> +
> +    all_checkers = {
> +        modname: _load_checker_class(modname)
> +        for modname in config["checkers"]["modules"]
> +    }
> +
> +    violations = {
> +        f: check_file(args.directory, f, all_checkers, config["exceptions"])
> +        for f in list_input_files(args.directory)
> +    }
> +
> +    print(json.dumps(violations))
> +
> +
> +if __name__ == "__main__":
> +    import sys
> +
> +    sys.exit(main())
> -- 
> 2.36.1
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57439): https://lists.yoctoproject.org/g/yocto/message/57439
> Mute This Topic: https://lists.yoctoproject.org/mt/92168377/3617179
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

