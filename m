Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web10.61755.1629323066097821093
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 14:44:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EKjDGW4t;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id x16so3545786pfh.2
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 14:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=xkczZ16D1D4q+Pdb0IF6ItUt6xg9Ela1SSlQd8hdj2E=;
        b=EKjDGW4t00NIIN3SgQM7OmURoVCuvbY9Ow8RObHxzj/ZlpWamCDvXj81O+nSyWGoDX
         HHxZoneixcGKFYQ5NTjXMpfI7bKo3CUbE88vt/2/SWMArCh4XtL8cQgsfEP8Qt8Gd0LE
         zxbEzfwGvwLWEyUkK4mbmmoXfkIgKSsK+PsC/wQy6TqivCtUZKW8QPjD0ipHzPj+0t6M
         9hlKabA1DO73F94P1v9pd5lgAIGjxY8sifo2p4A3efgCBTP4ZzdKQ8solDGGHNLJcohm
         FX55yimCfo7Y2DZVWCyMabw+5Nm9KnVNP0Ckks4ud/0Epz/xzgEDnHK9gkrSjwUUm8fx
         G5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=xkczZ16D1D4q+Pdb0IF6ItUt6xg9Ela1SSlQd8hdj2E=;
        b=Yc0X7EBKXfjXyCxG64yuEWdPonVUddUA+In89TDWu1lT2FkMbVG3oUQB4eBUqserHa
         ZQ37GLnVusuL8P+PS+AaFJfb8Zok5/vwXYBnmcHnmV7KUuI8zxfgLWPsRoSLejKCgIQ7
         ZXY7I8VbrJ9G9jD16SaKHnEAWJca7y6UypkDuYAGG0f+5quGfqSaCYcHaOs2jSlpyIHi
         hCiCpFFXFxLO7vQsVcAboATuycMZCg7gszGv6+ZbKfhb8w+vrCxCkhvUgPU2FCpoMPXP
         b45DLHEh4vdZoZ3bc7LfK0BY/eR3DifIxkJSIDHzvAi7/bDIpTcPMu/irb1gyxxE/n0B
         UDUQ==
X-Gm-Message-State: AOAM530rOqBhRyLmgRcDnRw4xZN7G3/P+1DM/nC+O2i2fqFqBFkQU95z
	59Ya/V9kH5irHiS8i5ia/bY=
X-Google-Smtp-Source: ABdhPJyJyjkkO0jAC7bW1S9hx+d4bINBMX/A+sgyEGgif59inJ7CFLLD/WJXkemrc/pNG1x2TtChxQ==
X-Received: by 2002:a63:1358:: with SMTP id 24mr6022710pgt.327.1629323065328;
        Wed, 18 Aug 2021 14:44:25 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:b96e:f117:a0f6:f2a? ([2601:202:4180:a5c0:b96e:f117:a0f6:f2a])
        by smtp.gmail.com with ESMTPSA id k197sm778320pfd.190.2021.08.18.14.44.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:44:24 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 1/2] image-with-hardened-binaries: add class
To: blenkmax@googlemail.com, yocto@lists.yoctoproject.org
Cc: Maximilian Blenk <Maximilian.Blenk@bmw.de>
References: <20210818154219.3439969-1-Maximilian.Blenk@bmw.de>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <6b0ea63e-4589-2d88-598f-56be003d3838@gmail.com>
Date: Wed, 18 Aug 2021 14:44:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210818154219.3439969-1-Maximilian.Blenk@bmw.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello Max,


On 8/18/21 8:42 AM, Maximilian Blenk via lists.yoctoproject.org wrote:
> Add class to analyze binaries with checksec.py. checksec.py is a tool
> that checks if security features of a compiler have been used. To do
> so, it analyses the resulting binaries:
>  * NX Proctection is enabled
>  * Full RELRO is enabled
>  * RPATH and RUNPATH are not set
>  * Executables are compiled to be position independent
>  * FORTIFY_SOURCE is set (false-positives possible)
>  * Stack Canaries are enabled (false-positives possible)
>
> Signed-off-by: Maximilian Blenk <Maximilian.Blenk@bmw.de>
> ---
> Hi guys,
>
> we are currently working on adding automatically checking the binaries
> we put into an image for the presence of certain recommended compiler
> features. To achieve this, we created a bbclass that wraps around the
> existing project checksec.py (https://github.com/Wenzel/checksec.py). In
> particular, checksec.py is used to check if
> * relro is enabled
> * executables are compiled to be position indipendet code
> * rpath and runpath are not set
> * stack canaries are enabled
> * fortify source is enabled
> I must however admit that the last two checks can suffer from
> false-positives which need manual analysis and whitelisting (check can
> also be completely disabled).
>
> Motivation:
> We've decided that such checks would be a nice thing to have because
> people might overwrite important compiler flags in their local recipe.
> Additionally there is always the possibility that components are shipped
> as binaries instead of code (so they are actually build outside the
> current build environment). Overall we've detected several cases where
> required compiler flags have not been applied to shipped components.
> After internal discussion we came to the conclusion that you guys would
> maybe also be interested in this kind of checks, so I'm offering this
> patch to you as well.

Is this a v2 or a resend?

Thanks for the patch set. I will need some time to take a look at it.

- armin
> I would really appreciate your feedback :-)
>
> BR Max
>
>  classes/image-with-hardened-binaries.bbclass  | 338 ++++++++++++++++++
>  ...1-main-Add-option-to-ignore-symlinks.patch |  81 +++++
>  .../0002-Elf-Fix-relro-detection.patch        |  51 +++
>  ...heck-Treat-binaries-with-0-fortifiab.patch |  33 ++
>  ...o-use-pre-compiled-version-of-spdlog.patch | 154 ++++++++
>  .../python/python3-asttokens_2.0.5.bb         |  15 +
>  .../python3-checksec.py-native_0.6.1.bb       |  31 ++
>  .../python/python3-colorama_%.bbappend        |   1 +
>  .../python/python3-commonmark_0.9.1.bb        |  14 +
>  .../python/python3-docopt_0.6.2.bb            |  18 +
>  .../python/python3-icontract_2.5.3.bb         |  14 +
>  .../python/python3-lief_0.11.5.bb             |  36 ++
>  .../python/python3-pylddwrap_1.0.1.bb         |  21 ++
>  recipes-devtools/python/python3-rich_7.1.0.bb |  16 +
>  .../python/python3-setuptools-scm_6.0.1.bb    |  17 +
>  .../python/python3-toml_%.bbappend            |   1 +
>  16 files changed, 841 insertions(+)
>  create mode 100644 classes/image-with-hardened-binaries.bbclass
>  create mode 100644 recipes-devtools/python/files/python3-checksec.py/0001-main-Add-option-to-ignore-symlinks.patch
>  create mode 100644 recipes-devtools/python/files/python3-checksec.py/0002-Elf-Fix-relro-detection.patch
>  create mode 100644 recipes-devtools/python/files/python3-checksec.py/0003-fortify-source-check-Treat-binaries-with-0-fortifiab.patch
>  create mode 100644 recipes-devtools/python/files/python3-lief/0001-Enable-to-use-pre-compiled-version-of-spdlog.patch
>  create mode 100644 recipes-devtools/python/python3-asttokens_2.0.5.bb
>  create mode 100644 recipes-devtools/python/python3-checksec.py-native_0.6.1.bb
>  create mode 100644 recipes-devtools/python/python3-colorama_%.bbappend
>  create mode 100644 recipes-devtools/python/python3-commonmark_0.9.1.bb
>  create mode 100644 recipes-devtools/python/python3-docopt_0.6.2.bb
>  create mode 100644 recipes-devtools/python/python3-icontract_2.5.3.bb
>  create mode 100644 recipes-devtools/python/python3-lief_0.11.5.bb
>  create mode 100644 recipes-devtools/python/python3-pylddwrap_1.0.1.bb
>  create mode 100644 recipes-devtools/python/python3-rich_7.1.0.bb
>  create mode 100644 recipes-devtools/python/python3-setuptools-scm_6.0.1.bb
>  create mode 100644 recipes-devtools/python/python3-toml_%.bbappend
>
> diff --git a/classes/image-with-hardened-binaries.bbclass b/classes/image-with-hardened-binaries.bbclass
> new file mode 100644
> index 0000000..d7d3908
> --- /dev/null
> +++ b/classes/image-with-hardened-binaries.bbclass
> @@ -0,0 +1,338 @@
> +# Provide qa checks to ensure all applications and libraries shipped with the image
> +# have common compiler security features enabled. In particular there are checks that:
> +# * nx protection is enabled
> +# * relro is enabled
> +# * executables (except for static linked ones) are position independent
> +# * rpath and runpath are not set
> +
> +IMAGE_QA_COMMANDS += "image_check_binary_hardening"
> +
> +DEPENDS += "python3-checksec.py-native"
> +
> +inherit python3native
> +
> +# Add mappings to the path mappers (which determines if a binary is a application or
> +# shared library). To add a mapping append " /path/from/the/root/to/bin:{application,library,ignore}"
> +# to the list
> +HARDENED_BINARIES_EXTRA_MAPPING ?= ""
> +
> +# Config file in TOML format:
> +# [check]
> +# enabled = true
> +# whitelist = [
> +#   "path to some binary",
> +#   "path to some other binary"
> +# ]
> +# supported checks are: nx, relro, pie, rpath, runpath
> +HARDENED_BINARIES_CONFIG_FILE ?= ""
> +
> +# Custom message to show in case of a detected violation
> +# For instace if you want to add whom to contact for support
> +HARDENED_BINARIES_CUSTOM_ERROR_MESSAGE ?= ""
> +
> +# Path to libc used for foritfy source analysis. If fortify_source check is
> +# not enabled, this variable can be ignored.
> +HARDENED_BINARIES_LIBC_PATH ?= "${IMAGE_ROOTFS}${baselib}/libc.so.6"
> +
> +python image_check_binary_hardening () {
> +    import fnmatch
> +    import json
> +    import os
> +    import subprocess
> +    import toml
> +    from collections import defaultdict, OrderedDict
> +    from enum import Enum, auto
> +
> +    from oe.utils import ImageQAFailed
> +
> +    rootfs = d.getVar("IMAGE_ROOTFS")
> +
> +    #################################
> +    ## Data about supported checks ##
> +    #################################
> +
> +    class BinType(Enum):
> +        IGNORE = "ignore"
> +        APPLICATION = "application"
> +        LIBRARY = "library"
> +
> +    # Dict of checks to perform on the analysis result of checksec.py
> +    # Each entry needs to contain the following attributes:
> +    #  - allowed_value: Value in the analysis result that should be accepted
> +    #  - bintypes: List of types on which the check shall be enforced (e.g. PIE check on libraries
> +    #              doesn't make much sense because PIE is only for executables)
> +    #  - errormsg: Message that should be prompted in case violators have been found
> +    #  - ignore_static: Indicates if statically linked applications should be ignored for that check
> +    #  Notes specific checks:
> +    #  - NX: Needs to be enforced on applications and libraries. This is because if only a single shared
> +    #        library doesn't use that, the whole process needs to have a executable stack.
> +    #  - RELRO: Statically linked applications do not make use of relocation, so this check would always
> +    #           fail for statically linked applications.
> +    #  - PIE: This check is only valid for applications (as in "position independent executable" for
> +    #         applications vs. "position independent code" (PIC) for shared libraries)
> +    CHECK_DATA = {
> +        "nx" : {
> +            "allowed_value": True,
> +            "bintypes": [BinType.APPLICATION, BinType.LIBRARY],
> +            "errormsg":
> +                "The following {} binaries do not use nx (not executable) protection. This mechanism is used " \
> +                "to separate data from executable code. Disabling this mechanism is a security issue because " \
> +                "this enables attackers to put code onto the stack. Please also note, if the nx protection is " \
> +                "disabled in a shared library, all binary objects that link against this library will not be " \
> +                "protected. This message usually appears if your binary is linked using the \"-z execstack\" " \
> +                "flag.",
> +            "ignore_static": False,
> +        },
> +        "relro": {
> +            "allowed_value": "Full",
> +            "bintypes": [BinType.APPLICATION, BinType.LIBRARY],
> +            "errormsg":
> +                "The following {} binaries do not make use of the relro (relocation read-only). This feature " \
> +                "prevents attackers from modifying addresses of functions that are located in shared libraries " \
> +                "(which is a common technique to exploit vulnerabilities). Due to this, not making use of this " \
> +                "feature is a security issue. Please make sure your application is linked using " \
> +                "\"-Wl,-z,relro,-z,now\". ",
> +            "ignore_static": True,
> +        },
> +        "rpath": {
> +            "allowed_value": False,
> +            "bintypes": [BinType.APPLICATION, BinType.LIBRARY],
> +            "errormsg":
> +                "The following {} binaries are making use of the rpath feature. This can easily enable an attacker " \
> +                "to get malicious code executed if there is some issue with the file permissions at the specified " \
> +                "location. Due to this, the usage of this feature is generally discouraged and needs approval " \
> +                "by the security team.",
> +            "ignore_static": False,
> +        },
> +        "runpath": {
> +            "allowed_value": False,
> +            "bintypes": [BinType.APPLICATION, BinType.LIBRARY],
> +            "errormsg":
> +                "The following {} binaries are making use of the runpath feature. This can easily enable an attacker" \
> +                " to get malicious code executed if there is some issue with the file permissions at the specified " \
> +                "location. Due to this, the usage of this feature is generally discouraged and needs approval " \
> +                "by the security team.",
> +            "ignore_static": False,
> +        },
> +        "pie": {
> +            "allowed_value": "PIE",
> +            "bintypes": [BinType.APPLICATION],
> +            "errormsg":
> +                "The following {} applications are not compiled to be position independent executables (pie). This " \
> +                "compiler feature compiles the code in a way that it can be mapped to any location in the virtual " \
> +                "memory. Compiling the application this way is required to make use of the Address Space Layout " \
> +                "Randomization (ASLR). This feature maps executable code to a random location, which means an " \
> +                "attacker can not rely on the fact that a specific portion of code is mapped to a specific address. " \
> +                "Please ensure that you application is compiled using \"-fPIE\".",
> +            "ignore_static": True,
> +        },
> +        "canary": {
> +            "allowed_value": True,
> +            "bintypes": [BinType.APPLICATION, BinType.LIBRARY],
> +            "errormsg":
> +                "The following {} binaries seem to be not using stack canaries. These canaries are used to mitigate " \
> +                "stack buffer overflows attacks. To do so the compiler adds checks to the end of a function to " \
> +                "ensure that this function did not overwrite the stack frames of another function. Not using " \
> +                "canaries may allow an attacker to exploit stack based buffer overflows by modifying the stack frame " \
> +                "of other function calls (which simplifies exploiting such vulnerabilities a lot). Please make sure " \
> +                "your components are compiled with the \"-fstack-protector-strong\" compile flag. Please note that " \
> +                "there is a slight possibility for false-positives in this check: The compiler checks if a function " \
> +                "needs canary protection or not. If there is no function that needs proctedtion in your binary, this " \
> +                "check will fail anyway and the binary needs to be whitelisted.",
> +            "ignore_static": False,
> +        },
> +        "fortify_source": {
> +            "allowed_value": True,
> +            "bintypes": [BinType.APPLICATION, BinType.LIBRARY],
> +            "errormsg":
> +                "The following {} binaries seem to be not using the fortify source feature. This feature protects " \
> +                "(some, not all) calls to memory manipulations function like memcpy, strcpy or strcat by adding " \
> +                "checks that prevent buffer overflows. These checks can prevent attackers from exploiting such a " \
> +                "buffer overflow. Please make sure your component is compiled with \"-D_FORTIFY_SOURCE=2\". In " \
> +                "addition the compiler optimizations need to be enabled with \"-O1\" or higher. Please note that " \
> +                "there is a slight possibility for false positives here: Not all occurences of these mentioned " \
> +                "memory calls that can not be protected they will appear as if_FORTIFY_SOURCE has not been set. " \
> +                "In such a case the binary needs to be whitelisted.",
> +            "ignore_static": False,
> +        }
> +    }
> +
> +    #################################
> +    ## Parse data from config file ##
> +    #################################
> +
> +    config_file = d.getVar("HARDENED_BINARIES_CONFIG_FILE", True)
> +    if not config_file:
> +        msg = "Hardend Binary Check: No config file specifed. Please create a config file and set " \
> +              "the variable \"HARDENED_BINARIES_CONFIG_FILE\" accordingly"
> +        raise ImageQAFailed(msg, image_check_binary_hardening)
> +
> +    CHECK_CONFIG_DATA = defaultdict(lambda: {"enabled": False})
> +    CHECK_CONFIG_DATA.update(toml.load(config_file))
> +
> +    # Expand whitelisted paths with rootfs
> +    for check, values in CHECK_CONFIG_DATA.items():
> +        values["whitelist"] = [rootfs + x for x in values["whitelist"]]
> +
> +    ###############################################
> +    ## Classes and functions to perform analysis ##
> +    ###############################################
> +
> +    class PathMapping:
> +        """ Class to map paths to BinTypes """
> +        def __init__(self, rootfs):
> +            self.rootfs = rootfs
> +            self.mapping = OrderedDict()
> +
> +            self.add("/bin/*", BinType.APPLICATION)
> +            self.add("/lib/firmware/*", BinType.IGNORE)
> +            self.add("/lib/modules/*", BinType.IGNORE)
> +            self.add("/lib/systemd/*.so", BinType.LIBRARY)
> +            self.add("/lib/systemd/*", BinType.APPLICATION)
> +            self.add("/lib/*", BinType.LIBRARY)
> +            self.add("/sbin/*", BinType.APPLICATION)
> +            self.add("/usr/bin/*", BinType.APPLICATION)
> +            self.add("/usr/libexec/*", BinType.APPLICATION)
> +            self.add("/usr/lib/firmware/*", BinType.IGNORE)
> +            self.add("/usr/lib/modules/*", BinType.IGNORE)
> +            self.add("/usr/lib/systemd/*.so", BinType.LIBRARY)
> +            self.add("/usr/lib/systemd/*", BinType.APPLICATION)
> +            self.add("/usr/lib/*", BinType.LIBRARY)
> +            self.add("/usr/sbin/*", BinType.APPLICATION)
> +
> +
> +        def add(self, path, bin_type):
> +            """ Add mapping of a path to a FileyType """
> +            self.mapping[self.rootfs + path] = bin_type
> +
> +        def map(self, path):
> +            """ Map a path to a FilesType. Returns None if path can not be mapped. """
> +            for match_path, bin_type in self.mapping.items():
> +                if fnmatch.fnmatch(path, match_path):
> +                    return bin_type
> +            else:
> +                return None
> +
> +    def call_checksec(rootfs):
> +        """ Wrapper to call the checksec.py script
> +
> +            This function returns a list of result dicts, e.g.:
> +            [
> +                ...,
> +                "/bin/systemd-hwdb": {
> +                    "relro": "No",
> +                    "canary": true,
> +                    "nx": true,
> +                    "pie": "PIE",
> +                    "rpath": false,
> +                    "runpath": false,
> +                    "symbols": false,
> +                    "fortify_source": true,
> +                    "fortified": 5,
> +                    "fortify-able": 16,
> +                    "fortify_score": 31
> +                }
> +            ]
> +
> +        """
> +        parallel_make = d.getVar("PARALLEL_MAKE")
> +
> +        cmd = ["python3", "-m", "checksec", "--json", "--recursive", "--ignore-symlinks"]
> +        if parallel_make:
> +            cmd.append(parallel_make.replace("-j", "--workers="))
> +        if CHECK_CONFIG_DATA["foritfy_source"]["enabled"]:
> +            libc_path = d.getVar("HARDENED_BINARIES_LIBC_PATH", True)
> +            cmd.append("--set-libc={}".format(libc_path))
> +        cmd.append(rootfs)
> +
> +        return json.loads(subprocess.check_output(cmd).decode('utf-8'))
> +
> +
> +    class ResultAnalyzer:
> +        """ Class to evaluate the results produced by checksec.py """
> +        def __init__(self, rootfs):
> +            self.rootfs = rootfs
> +            self.violators = defaultdict(list)
> +
> +        @staticmethod
> +        def __is_static(path):
> +            """ Checks if binary at given path is statically linked """
> +            return "statically linked" in subprocess.check_output(["file", path], stderr=subprocess.STDOUT).decode('utf-8')
> +
> +        def check_result(self, path, result, bintype):
> +            """ Perfom checks specified in CHECK_DATA on the given analysis result (of a specific binary) """
> +
> +            for check, values in CHECK_DATA.items():
> +                if CHECK_CONFIG_DATA[check]["enabled"] and bintype in values["bintypes"]:
> +                    for whitelisted in CHECK_CONFIG_DATA[check]["whitelist"]:
> +                        if fnmatch.fnmatch(path, whitelisted):
> +                            break
> +                    else:
> +                        if result[check] != values["allowed_value"] and \
> +                                (not values["ignore_static"] or not self.__is_static(path)):
> +                            self.violators[check].append(path)
> +
> +
> +    def perform_analysis(rootfs):
> +        """ Analyze all binaries in a given rootfs. In case a container shall be analyzed the absolute path to the container_path
> +            rootfs needs to be passed.
> +        """
> +
> +        # Add custom path mapping (for bins in non-standard locations)
> +        path_mapping = PathMapping(rootfs)
> +        extra_mapping = d.getVar("HARDENED_BINARIES_EXTRA_MAPPING")
> +        if extra_mapping:
> +            for mapping in extra_mapping.split():
> +                try:
> +                    path, type = mapping.split(':')
> +                except:
> +                    bb.error("Hardened Binary Checks: Got misformated extra mapping {}. Mapping needs to be " \
> +                             "in form: \"<path regex>:{application,library,ignore}\"".format(mapping))
> +                    raise
> +                path_mapping.add(path, BinType(type))
> +
> +        # Perform analysis of complete rootfs
> +        analysis_result = call_checksec(rootfs)
> +
> +        # Check analysis results and ensure that all we can actually map all binaries to a BinType
> +        result_analyzer = ResultAnalyzer(rootfs)
> +        unmapped_binaries = []
> +        for path, result in analysis_result.items():
> +            bintype = path_mapping.map(path)
> +            if bintype in [BinType.APPLICATION, BinType.LIBRARY]:
> +                result_analyzer.check_result(path, result, bintype)
> +            elif bintype != BinType.IGNORE:
> +                unmapped_binaries.append(path)
> +
> +        # To ensure that we analyze all the binaries lets break the build if we can not map binaries
> +        if unmapped_binaries:
> +            msg = "Hardend Binary Check: Couldn't figure out if the following files are applications " \
> +                  "or libraries. This is probably due to a non standard location for applications or " \
> +                  "libraries. If you think this is required add the mapping to " \
> +                  "HARDENED_BINARIES_EXTRA_MAPPING and/or contact mgu-security-frontdesk@list.bmw.com" \
> +                  "\nUnmapped:\n{}".format("\n".join(unmapped_binaries),
> +                  image_check_binary_hardening)
> +            raise ImageQAFailed(msg, image_check_binary_hardening)
> +
> +        custom_error_message = d.getVar('HARDENED_BINARIES_CUSTOM_ERROR_MESSAGE')
> +
> +        # Break the build and show error message if we detected violators that are not whitelisted
> +        errors = []
> +        for check, violators in result_analyzer.violators.items():
> +            if violators:
> +                errormsg = CHECK_DATA[check]["errormsg"].format(len(violators))
> +                errormsg += "\n{}".format("\n".join(violators))
> +                if custom_error_message:
> +                    errormsg += "\n" + custom_error_message
> +                errors.append(errormsg)
> +
> +        if errors:
> +            raise ImageQAFailed("\n".join(errors), image_check_binary_hardening)
> +
> +    ##############################
> +    ## Start analysis on rootfs ##
> +    ##############################
> +
> +    perform_analysis(rootfs)
> +
> +}
> diff --git a/recipes-devtools/python/files/python3-checksec.py/0001-main-Add-option-to-ignore-symlinks.patch b/recipes-devtools/python/files/python3-checksec.py/0001-main-Add-option-to-ignore-symlinks.patch
> new file mode 100644
> index 0000000..ae434bc
> --- /dev/null
> +++ b/recipes-devtools/python/files/python3-checksec.py/0001-main-Add-option-to-ignore-symlinks.patch
> @@ -0,0 +1,81 @@
> +From 182268203951750dcfb2c134354e801dea472e4c Mon Sep 17 00:00:00 2001
> +From: Maximilian Blenk <Maximilian.Blenk@bmw.de>
> +Date: Fri, 2 Jul 2021 14:42:25 +0200
> +Subject: [PATCH 1/2] main: Add option to ignore symlinks
> +
> +When analyzing a complete rootfs (which might not be the rootfs of the
> +analyzing system) symlinks within that rootfs might be broken. In
> +particular absolute symlinks. However, if by chance such a symlink
> +currently points to a valid binary in your system, this binary pointed
> +to is analyzed. This commit adds the possibility to ignore symlinks to
> +files (symlinks to dirs are already ignored by default). This allows to
> +solve the issue described above, and if the whole rootfs is analyzed
> +there shouldn't be a loss of information (because all the binaries will
> +be analyzed anyway). Additionally, this also saves some time when
> +performing the analysis.
> +
> +Upstream-Status: Submitted https://github.com/Wenzel/checksec.py/pull/106
> +---
> + checksec/__main__.py | 12 +++++++-----
> + 1 file changed, 7 insertions(+), 5 deletions(-)
> +
> +diff --git a/checksec/__main__.py b/checksec/__main__.py
> +index 856d0b3..f1a3445 100644
> +--- a/checksec/__main__.py
> ++++ b/checksec/__main__.py
> +@@ -8,6 +8,7 @@ Options:
> +     -w WORKERS --workers=WORKERS    Specify the number of process pool workers [default: 4]
> +     -j --json                       Display results as JSON
> +     -s LIBC --set-libc=LIBC         Specify LIBC library to use to check for fortify scores (ELF)
> ++    -i --ignore-symlinks            Ignore symlinks to files
> +     -d --debug                      Enable debug output
> +     -h --help                       Display this message
> + """
> +@@ -27,15 +28,15 @@ from .pe import PEChecksecData, PESecurity, is_pe
> + from .utils import lief_set_logging
> + 
> + 
> +-def walk_filepath_list(filepath_list: List[Path], recursive: bool = False) -> Iterator[Path]:
> ++def walk_filepath_list(filepath_list: List[Path], recursive: bool = False, ignore_symlinks: bool = False) -> Iterator[Path]:
> +     for path in filepath_list:
> +         if path.is_dir() and not path.is_symlink():
> +             if recursive:
> +                 for f in os.scandir(path):
> +-                    yield from walk_filepath_list([Path(f)], recursive)
> ++                    yield from walk_filepath_list([Path(f)], recursive, ignore_symlinks)
> +             else:
> +                 yield from (Path(f) for f in os.scandir(path))
> +-        elif path.is_file():
> ++        elif path.is_file() and (not ignore_symlinks or not path.is_symlink()):
> +             yield path
> + 
> + 
> +@@ -72,6 +73,7 @@ def main(args):
> +     json = args["--json"]
> +     recursive = args["--recursive"]
> +     libc_path = args["--set-libc"]
> ++    ignore_symlinks = args["--ignore-symlinks"]
> + 
> +     # logging
> +     formatter = "%(asctime)s %(levelname)s:%(name)s:%(message)s"
> +@@ -107,7 +109,7 @@ def main(args):
> +             # we need to consume the iterator once to get the total
> +             # for the progress bar
> +             check_output.enumerating_tasks_start()
> +-            count = sum(1 for i in walk_filepath_list(filepath_list, recursive))
> ++            count = sum(1 for i in walk_filepath_list(filepath_list, recursive, ignore_symlinks))
> +             check_output.enumerating_tasks_stop(count)
> +             with ProcessPoolExecutor(
> +                 max_workers=workers, initializer=worker_initializer, initargs=(libc_path,)
> +@@ -116,7 +118,7 @@ def main(args):
> +                     check_output.processing_tasks_start()
> +                     future_to_checksec = {
> +                         pool.submit(checksec_file, filepath): filepath
> +-                        for filepath in walk_filepath_list(filepath_list, recursive)
> ++                        for filepath in walk_filepath_list(filepath_list, recursive, ignore_symlinks)
> +                     }
> +                     for future in as_completed(future_to_checksec):
> +                         filepath = future_to_checksec[future]
> +-- 
> +2.31.1
> +
> diff --git a/recipes-devtools/python/files/python3-checksec.py/0002-Elf-Fix-relro-detection.patch b/recipes-devtools/python/files/python3-checksec.py/0002-Elf-Fix-relro-detection.patch
> new file mode 100644
> index 0000000..a891c2b
> --- /dev/null
> +++ b/recipes-devtools/python/files/python3-checksec.py/0002-Elf-Fix-relro-detection.patch
> @@ -0,0 +1,51 @@
> +From f550777f35e178bc16a2ec612b2b39aa2c3946f2 Mon Sep 17 00:00:00 2001
> +From: Maximilian Blenk <Maximilian.Blenk@bmw.de>
> +Date: Fri, 2 Jul 2021 16:16:47 +0200
> +Subject: [PATCH 2/2] Elf: Fix relro detection
> +
> +Currently, relro is only detected when the BIND_NOW is set. If however
> +the NOW flag in the FLAGS_1 section is set, relro is not detected (it
> +does not even tell that relro is enabled partially). With this commit
> +relro is detected correctly.
> +
> +Upstream-Status: Submitted https://github.com/Wenzel/checksec.py/pull/107
> +---
> + checksec/elf.py | 19 +++++++++++++++----
> + 1 file changed, 15 insertions(+), 4 deletions(-)
> +
> +diff --git a/checksec/elf.py b/checksec/elf.py
> +index 78ecacc..ef1850c 100644
> +--- a/checksec/elf.py
> ++++ b/checksec/elf.py
> +@@ -118,13 +118,24 @@ class ELFSecurity(BinarySecurity):
> +     def relro(self) -> RelroType:
> +         try:
> +             self.bin.get(lief.ELF.SEGMENT_TYPES.GNU_RELRO)
> +-            if lief.ELF.DYNAMIC_FLAGS.BIND_NOW in self.bin.get(lief.ELF.DYNAMIC_TAGS.FLAGS):
> +-                return RelroType.Full
> +-            else:
> +-                return RelroType.Partial
> +         except lief.not_found:
> +             return RelroType.No
> + 
> ++        try:
> ++            bind_now = lief.ELF.DYNAMIC_FLAGS.BIND_NOW in self.bin.get(lief.ELF.DYNAMIC_TAGS.FLAGS)
> ++        except lief.not_found:
> ++            bind_now = False
> ++
> ++        try:
> ++            now = lief.ELF.DYNAMIC_FLAGS_1.NOW in self.bin.get(lief.ELF.DYNAMIC_TAGS.FLAGS_1)
> ++        except lief.not_found:
> ++            now = False
> ++
> ++        if bind_now or now:
> ++            return RelroType.Full
> ++        else:
> ++            return RelroType.Partial
> ++
> +     @property
> +     def has_canary(self) -> bool:
> +         canary_sections = ["__stack_chk_fail", "__intel_security_cookie"]
> +-- 
> +2.31.1
> +
> diff --git a/recipes-devtools/python/files/python3-checksec.py/0003-fortify-source-check-Treat-binaries-with-0-fortifiab.patch b/recipes-devtools/python/files/python3-checksec.py/0003-fortify-source-check-Treat-binaries-with-0-fortifiab.patch
> new file mode 100644
> index 0000000..0351f84
> --- /dev/null
> +++ b/recipes-devtools/python/files/python3-checksec.py/0003-fortify-source-check-Treat-binaries-with-0-fortifiab.patch
> @@ -0,0 +1,33 @@
> +From 8de048c0065f8c5890d9e04ef2b32306e2ac4f8c Mon Sep 17 00:00:00 2001
> +From: Maximilian Blenk <Maximilian.Blenk@bmw.de>
> +Date: Thu, 5 Aug 2021 15:21:58 +0200
> +Subject: [PATCH] fortify source check: Treat binaries with 0 fortifiable as
> + fortified
> +
> +Currently, if checksec.py detects 0 fortifiable instances it still
> +treats the binary as not fortified. Semtically it would make sense to
> +treat these binaries as fortified (because there is no evidence that it
> +is not)
> +
> +Upstream-Status: Submitted https://github.com/Wenzel/checksec.py/pull/109
> +---
> + checksec/elf.py | 3 +--
> + 1 file changed, 1 insertion(+), 2 deletions(-)
> +
> +diff --git a/checksec/elf.py b/checksec/elf.py
> +index ef1850c..5914135 100644
> +--- a/checksec/elf.py
> ++++ b/checksec/elf.py
> +@@ -229,8 +229,7 @@ class ELFSecurity(BinarySecurity):
> +                 else:
> +                     score = (fortified_count * 100) / fortifiable_count
> +                     score = round(score)
> +-
> +-            fortify_source = True if fortified_count != 0 else False
> ++            fortify_source = True if fortified_count != 0 or fortifiable_count == 0 else False
> +         return ELFChecksecData(
> +             relro=self.relro,
> +             canary=self.has_canary,
> +-- 
> +2.31.1
> +
> diff --git a/recipes-devtools/python/files/python3-lief/0001-Enable-to-use-pre-compiled-version-of-spdlog.patch b/recipes-devtools/python/files/python3-lief/0001-Enable-to-use-pre-compiled-version-of-spdlog.patch
> new file mode 100644
> index 0000000..af94cfa
> --- /dev/null
> +++ b/recipes-devtools/python/files/python3-lief/0001-Enable-to-use-pre-compiled-version-of-spdlog.patch
> @@ -0,0 +1,154 @@
> +From d2ad8f6108c750c3dbd33ee6d4e4c94ada748b8a Mon Sep 17 00:00:00 2001
> +From: Romain Thomas <me@romainthomas.fr>
> +Date: Mon, 3 May 2021 11:25:49 +0200
> +Subject: [PATCH] Enable to use pre-compiled version of spdlog
> +
> +---
> + CMakeLists.txt               |  8 ++++----
> + cmake/LIEFDependencies.cmake | 36 +++++++++++++++++++++++-------------
> + cmake/LIEFOptions.cmake      |  4 ++++
> + setup.py                     | 17 +++++++++++++++++
> + 4 files changed, 48 insertions(+), 17 deletions(-)
> +
> +diff --git a/CMakeLists.txt b/CMakeLists.txt
> +index d1665cd..b92519a 100644
> +--- a/CMakeLists.txt
> ++++ b/CMakeLists.txt
> +@@ -307,8 +307,7 @@ source_group("mbedtls\\tls" FILES ${mbedtls_src_tls})
> + # Library definition
> + # ==================
> + target_include_directories(
> +-  LIB_LIEF SYSTEM PRIVATE "${SPDLOG_SOURCE_DIR}/include"
> +-                          "${MBEDTLS_INCLUDE_DIRS}")
> ++  LIB_LIEF SYSTEM PRIVATE "${MBEDTLS_INCLUDE_DIRS}")
> + 
> + target_include_directories(
> +   LIB_LIEF
> +@@ -355,7 +354,8 @@ target_sources(LIB_LIEF PRIVATE
> +   ${CMAKE_CURRENT_BINARY_DIR}/include/LIEF/third-party/utfcpp/utf8.h)
> + 
> + 
> +-add_dependencies(LIB_LIEF lief_spdlog lief_mbed_tls)
> ++add_dependencies(LIB_LIEF lief_mbed_tls)
> ++target_link_libraries(LIB_LIEF PRIVATE lief_spdlog)
> + 
> + # Flags definition
> + # ----------------
> +@@ -626,7 +626,7 @@ install(
> +   DESTINATION lib/pkgconfig
> +   COMPONENT libraries)
> + 
> +-export(TARGETS LIB_LIEF FILE LIEFExport.cmake)
> ++export(TARGETS LIB_LIEF lief_spdlog FILE LIEFExport.cmake)
> + 
> + # Package
> + # ======================
> +diff --git a/cmake/LIEFDependencies.cmake b/cmake/LIEFDependencies.cmake
> +index e75326f..37e6987 100644
> +--- a/cmake/LIEFDependencies.cmake
> ++++ b/cmake/LIEFDependencies.cmake
> +@@ -144,21 +144,31 @@ set(mbedtls_src_tls
> +   "${MBEDTLS_SOURCE_DIR}/library/ssl_tls13_keys.c"
> + )
> + 
> +-#set_source_files_properties("${MBEDTLS_SOURCE_DIR}/library/bignum.c" PROPERTIES COMPILE_FLAGS -Wno-overlength-strings)
> ++add_library(lief_spdlog INTERFACE)
> + 
> +-set(SPDLOG_VERSION 1.8.2)
> +-set(SPDLOG_SHA256 SHA256=f0410b12b526065802b40db01304783550d3d20b4b6fe2f8da55f9d08ed2035d)
> +-set(SPDLOG_URL "${THIRD_PARTY_DIRECTORY}/spdlog-${SPDLOG_VERSION}.zip" CACHE STRING "URL to the spdlog lib repo")
> +-ExternalProject_Add(lief_spdlog
> +-  URL               ${SPDLOG_URL}
> +-  URL_HASH          ${SPDLOG_SHA256}
> +-  CONFIGURE_COMMAND ""
> +-  BUILD_COMMAND     ""
> +-  UPDATE_COMMAND    ""
> +-  INSTALL_COMMAND   "")
> ++if(LIEF_EXTERNAL_SPDLOG)
> ++  find_package(spdlog REQUIRED)
> ++  list(APPEND CMAKE_MODULE_PATH "${SPDLOG_DIR}/cmake")
> ++  target_link_libraries(lief_spdlog INTERFACE spdlog::spdlog)
> ++  get_target_property(SPDLOG_INC_DIR spdlog::spdlog INTERFACE_INCLUDE_DIRECTORIES)
> ++  target_include_directories(lief_spdlog SYSTEM INTERFACE ${SPDLOG_INC_DIR})
> ++else()
> ++  set(SPDLOG_VERSION 1.8.2)
> ++  set(SPDLOG_SHA256 SHA256=f0410b12b526065802b40db01304783550d3d20b4b6fe2f8da55f9d08ed2035d)
> ++  set(SPDLOG_URL "${THIRD_PARTY_DIRECTORY}/spdlog-${SPDLOG_VERSION}.zip" CACHE STRING "URL to the spdlog source")
> ++  ExternalProject_Add(lief_spdlog_project
> ++    URL               ${SPDLOG_URL}
> ++    URL_HASH          ${SPDLOG_SHA256}
> ++    CONFIGURE_COMMAND ""
> ++    BUILD_COMMAND     ""
> ++    UPDATE_COMMAND    ""
> ++    INSTALL_COMMAND   "")
> + 
> +-ExternalProject_get_property(lief_spdlog SOURCE_DIR)
> +-set(SPDLOG_SOURCE_DIR "${SOURCE_DIR}")
> ++  ExternalProject_get_property(lief_spdlog_project SOURCE_DIR)
> ++  set(SPDLOG_SOURCE_DIR "${SOURCE_DIR}")
> ++  add_dependencies(lief_spdlog lief_spdlog_project)
> ++  target_include_directories(lief_spdlog SYSTEM INTERFACE ${SPDLOG_SOURCE_DIR}/include)
> ++endif()
> + 
> + # Fuzzing
> + # ~~~~~~~
> +diff --git a/cmake/LIEFOptions.cmake b/cmake/LIEFOptions.cmake
> +index fd6df6c..3bb92c3 100644
> +--- a/cmake/LIEFOptions.cmake
> ++++ b/cmake/LIEFOptions.cmake
> +@@ -45,6 +45,10 @@ option(LIEF_PROFILING "Enable performance profiling" OFF)
> + cmake_dependent_option(LIEF_INSTALL_COMPILED_EXAMPLES "Install LIEF Compiled examples" OFF
> +                        "LIEF_EXAMPLES" OFF)
> + 
> ++# Use a user-provided version of spdlog
> ++# It can be useful to reduce compile time
> ++option(LIEF_EXTERNAL_SPDLOG OFF)
> ++
> + set(LIEF_ELF_SUPPORT 0)
> + set(LIEF_PE_SUPPORT 0)
> + set(LIEF_MACHO_SUPPORT 0)
> +diff --git a/setup.py b/setup.py
> +index b915180..ad70bd8 100644
> +--- a/setup.py
> ++++ b/setup.py
> +@@ -45,6 +45,10 @@ class LiefDistribution(setuptools.Distribution):
> +         ('lief-no-vdex', None, 'Disable VDEX module'),
> +         ('lief-no-oat', None, 'Disable OAT module'),
> +         ('lief-no-dex', None, 'Disable DEX module'),
> ++
> ++        ('lief-no-cache', None, 'Do not use compiler cache (ccache)'),
> ++
> ++        ('spdlog-dir=', None, 'Path to the directory that contains spdlogConfig.cmake'),
> +     ]
> + 
> +     def __init__(self, attrs=None):
> +@@ -66,6 +70,10 @@ class LiefDistribution(setuptools.Distribution):
> + 
> +         self.lief_no_android  = False
> +         self.doc = False
> ++
> ++        self.lief_no_cache  = False
> ++
> ++        self.spdlog_dir = None
> +         super().__init__(attrs)
> + 
> + 
> +@@ -154,6 +162,15 @@ class BuildLibrary(build_ext):
> +         else:
> +             cmake_args += ["-DLIEF_LOGGING_DEBUG=off"]
> + 
> ++        if self.distribution.lief_no_cache:
> ++            cmake_args += ["-DLIEF_USE_CCACHE=off"]
> ++
> ++        # Setup spdlog configuration flags if
> ++        # the user provides --spdlog-dir
> ++        if self.distribution.spdlog_dir is not None:
> ++            cmake_args.append("-DLIEF_EXTERNAL_SPDLOG=ON")
> ++            cmake_args.append("-Dspdlog_DIR={}".format(self.distribution.spdlog_dir))
> ++
> +         # Main formats
> +         # ============
> +         if self.distribution.lief_no_elf:
> +-- 
> +2.31.1
> +
> diff --git a/recipes-devtools/python/python3-asttokens_2.0.5.bb b/recipes-devtools/python/python3-asttokens_2.0.5.bb
> new file mode 100644
> index 0000000..7ac2052
> --- /dev/null
> +++ b/recipes-devtools/python/python3-asttokens_2.0.5.bb
> @@ -0,0 +1,15 @@
> +SUMMARY = "Annotate AST trees with source code positions"
> +HOMEPAGE = "https://github.com/gristlabs/asttokens"
> +AUTHOR = "Dmitry Sagalovskiy, Grist Labs <dmitry@getgrist.com>"
> +LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=e3fc50a88d0a364313df4b21ef20c29e"
> +
> +SRC_URI[md5sum] = "0a2a057b9c9a220bffdb3e7512062f17"
> +SRC_URI[sha256sum] = "9a54c114f02c7a9480d56550932546a3f1fe71d8a02f1bc7ccd0ee3ee35cf4d5"
> +
> +RDEPENDS_${PN} = "python3-six"
> +DEPENDS += "python3-setuptools-scm python3-toml"
> +
> +inherit pypi setuptools3
> +
> +BBCLASSEXTEND += "native"
> diff --git a/recipes-devtools/python/python3-checksec.py-native_0.6.1.bb b/recipes-devtools/python/python3-checksec.py-native_0.6.1.bb
> new file mode 100644
> index 0000000..edce0a6
> --- /dev/null
> +++ b/recipes-devtools/python/python3-checksec.py-native_0.6.1.bb
> @@ -0,0 +1,31 @@
> +SUMMARY = "Tool to verify the security properties of binaries"
> +DESCRIPTION = "checksec.py is a tool verify if certain compiler flags \
> +               have been enabled on compield applications and libraries."
> +HOMEPAGE = "https://github.com/Wenzel/checksec.py"
> +BUGTRACKER = "https://github.com/Wenzel/checksec.py/issues"
> +SECTION = "devel/python"
> +
> +LICENSE = "GPL-3.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=1ebbd3e34237af26da5dc08a4e440464"
> +
> +RDEPENDS_${PN} += " \
> +    python3-docopt-native \
> +    python3-lief-native \
> +    python3-pylddwrap-native \
> +    python3-rich-native \
> +    "
> +
> +# Needs to be pulled from github becuase pypi package is currently broken
> +SRC_URI = " \
> +    git://github.com/Wenzel/checksec.py.git;protocol=https;branch=master \
> +    file://python3-checksec.py/0001-main-Add-option-to-ignore-symlinks.patch \
> +    file://python3-checksec.py/0002-Elf-Fix-relro-detection.patch \
> +    file://python3-checksec.py/0003-fortify-source-check-Treat-binaries-with-0-fortifiab.patch \
> +    "
> +
> +SRCREV = "4335ecd08f6ee13ff4ca9b01e83857ae6a8074e9"
> +
> +S="${WORKDIR}/git"
> +
> +inherit setuptools3 native
> +
> diff --git a/recipes-devtools/python/python3-colorama_%.bbappend b/recipes-devtools/python/python3-colorama_%.bbappend
> new file mode 100644
> index 0000000..d6f5869
> --- /dev/null
> +++ b/recipes-devtools/python/python3-colorama_%.bbappend
> @@ -0,0 +1 @@
> +BBCLASSEXTEND += "native"
> diff --git a/recipes-devtools/python/python3-commonmark_0.9.1.bb b/recipes-devtools/python/python3-commonmark_0.9.1.bb
> new file mode 100644
> index 0000000..a35abc3
> --- /dev/null
> +++ b/recipes-devtools/python/python3-commonmark_0.9.1.bb
> @@ -0,0 +1,14 @@
> +SUMMARY = "Python parser for the CommonMark Markdown spec"
> +HOMEPAGE = "https://github.com/rtfd/commonmark.py"
> +AUTHOR = "Bibek Kafle <bkafle662@gmail.com>, Roland Shoemaker <rolandshoemaker@gmail.com>"
> +LICENSE = "BSD-3-Clause"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=37e127eb75a030780aefcfc584e78523"
> +
> +SRC_URI[md5sum] = "cd1dc70c4714d9ed4117a40490c25e00"
> +SRC_URI[sha256sum] = "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
> +
> +S = "${WORKDIR}/commonmark-0.9.1"
> +
> +inherit pypi setuptools3
> +
> +BBCLASSEXTEND += "native"
> diff --git a/recipes-devtools/python/python3-docopt_0.6.2.bb b/recipes-devtools/python/python3-docopt_0.6.2.bb
> new file mode 100644
> index 0000000..c1b111a
> --- /dev/null
> +++ b/recipes-devtools/python/python3-docopt_0.6.2.bb
> @@ -0,0 +1,18 @@
> +
> +SUMMARY = "Pythonic argument parser, that will make you smile"
> +HOMEPAGE = "http://docopt.org"
> +AUTHOR = "Vladimir Keleshev <vladimir@keleshev.com>"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://LICENSE-MIT;md5=09b77fb74986791a3d4a0e746a37d88f"
> +
> +SRC_URI = "https://github.com/docopt/docopt/archive/refs/tags/${PV}.tar.gz"
> +SRC_URI[md5sum] = "a6c44155426fd0f7def8b2551d02fef6"
> +SRC_URI[sha256sum] = "2113eed1e7fbbcd43fb7ee6a977fb02d0b482753586c9dc1a8e3b7d541426e99"
> +
> +S = "${WORKDIR}/docopt-0.6.2"
> +
> +RDEPENDS_${PN} = ""
> +
> +inherit setuptools3
> +
> +BBCLASSEXTEND += "native"
> diff --git a/recipes-devtools/python/python3-icontract_2.5.3.bb b/recipes-devtools/python/python3-icontract_2.5.3.bb
> new file mode 100644
> index 0000000..88ac2ef
> --- /dev/null
> +++ b/recipes-devtools/python/python3-icontract_2.5.3.bb
> @@ -0,0 +1,14 @@
> +SUMMARY = "Provide design-by-contract with informative violation messages."
> +HOMEPAGE = "https://github.com/Parquery/icontract"
> +AUTHOR = "Marko Ristin <marko.ristin@gmail.com>"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=1d4a9b1f6b84bedf7a38843931e0dd57"
> +
> +SRC_URI[md5sum] = "6f41b9b84e4405374c160836587b3235"
> +SRC_URI[sha256sum] = "b790101c8cc0d9df0105d852a645373c4d90d5049391b6e54db32a0acb4bccd7"
> +
> +inherit pypi setuptools3
> +
> +RDEPENDS_${PN} += "python3-asttokens"
> +
> +BBCLASSEXTEND += "native"
> diff --git a/recipes-devtools/python/python3-lief_0.11.5.bb b/recipes-devtools/python/python3-lief_0.11.5.bb
> new file mode 100644
> index 0000000..5e4b422
> --- /dev/null
> +++ b/recipes-devtools/python/python3-lief_0.11.5.bb
> @@ -0,0 +1,36 @@
> +SUMMARY = "Library to instrument executable formats"
> +DESCRIPTION = " \
> +    This project provides a cross platform library which can parse, modify \
> +    and abstract ELF, PE and MachO formats. \
> +  "
> +SECTION = "devel/python"
> +HOMEPAGE = "https://github.com/lief-project/LIEF"
> +LICENSE = "APACHE-2.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=1809bd489c3dae63aa0cb70070dc308e"
> +
> +SRC_URI = " \
> +    https://github.com/lief-project/LIEF/releases/download/${PV}/lief-${PV}.zip \
> +    file://python3-lief/0001-Enable-to-use-pre-compiled-version-of-spdlog.patch \
> +    "
> +SRC_URI[sha256sum] = "947825134d5dab91df218bb201fa4551814f1da0a47e4a890283716b800c8e8f"
> +
> +S = "${WORKDIR}/lief-${PV}"
> +
> +inherit setuptools3
> +
> +DEPENDS += "cmake-native"
> +
> +BBCLASSEXTEND += "native"
> +
> +DISTUTILS_BUILD_ARGS += " ${PARALLEL_MAKE} "
> +
> +do_compile() {
> +    # From distutils3.bbclass (needs to be modified here to avoid usage of ccache)
> +    cd ${DISTUTILS_SETUP_PATH}
> +    NO_FETCH_BUILD=1 \
> +    STAGING_INCDIR=${STAGING_INCDIR} \
> +    STAGING_LIBDIR=${STAGING_LIBDIR} \
> +    ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-native/${PYTHON_PN} setup.py \
> +    --lief-no-cache build --build-base=${B} ${DISTUTILS_BUILD_ARGS} || \
> +    bbfatal_log "'${PYTHON_PN} setup.py --lief-no-cache build ${DISTUTILS_BUILD_ARGS}' execution failed."
> +}
> diff --git a/recipes-devtools/python/python3-pylddwrap_1.0.1.bb b/recipes-devtools/python/python3-pylddwrap_1.0.1.bb
> new file mode 100644
> index 0000000..985c424
> --- /dev/null
> +++ b/recipes-devtools/python/python3-pylddwrap_1.0.1.bb
> @@ -0,0 +1,21 @@
> +SUMMARY = "Python wrapper for ldd"
> +DESCRIPTION = " \
> +    Pylddwrap wraps ldd *nix utility to determine shared libraries required by a program. \
> +  "
> +SECTION = "devel/python"
> +HOMEPAGE = "https://github.com/Parquery/pylddwrap"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=48fd6c978d39a38b3a04f45a1456d0fa"
> +
> +SRC_URI[sha256sum] = "171a39fc7feb33e607706c57c08373ceb2f6fd4362af9241ccc65e80c948ccdf"
> +
> +inherit pypi setuptools3
> +
> +RDEPENDS_${PN} += "python3-icontract"
> +
> +do_install_append() {
> +    rm -f "${D}/${datadir}/requirements.txt"
> +    rm -f "${D}/${datadir}/README.rst"
> +}
> +
> +BBCLASSEXTEND += "native"
> diff --git a/recipes-devtools/python/python3-rich_7.1.0.bb b/recipes-devtools/python/python3-rich_7.1.0.bb
> new file mode 100644
> index 0000000..59c26a4
> --- /dev/null
> +++ b/recipes-devtools/python/python3-rich_7.1.0.bb
> @@ -0,0 +1,16 @@
> +SUMMARY = "Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal"
> +HOMEPAGE = "https://github.com/willmcgugan/rich"
> +AUTHOR = "Will McGugan <willmcgugan@gmail.com>"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=d0d35d5357392e5bfeb0d0a7e6ba4d83"
> +
> +SRC_URI[md5sum] = "25daeefa226770a84b98c591069b419c"
> +SRC_URI[sha256sum] = "ff701be541be32bcf46e821487c00bf4fa560aa814fc3cc9b3d514fd9b19a6f6"
> +
> +S = "${WORKDIR}/rich-7.1.0"
> +
> +RDEPENDS_${PN} = "python3-typing-extensions python3-pygments python3-commonmark python3-colorama"
> +
> +inherit pypi setuptools3
> +
> +BBCLASSEXTEND += "native"
> diff --git a/recipes-devtools/python/python3-setuptools-scm_6.0.1.bb b/recipes-devtools/python/python3-setuptools-scm_6.0.1.bb
> new file mode 100644
> index 0000000..234694e
> --- /dev/null
> +++ b/recipes-devtools/python/python3-setuptools-scm_6.0.1.bb
> @@ -0,0 +1,17 @@
> +SUMMARY = "the blessed package to manage your versions by scm tags"
> +HOMEPAGE = "https://github.com/pypa/setuptools_scm/"
> +AUTHOR = "Ronny Pfannschmidt <opensource@ronnypfannschmidt.de>"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=838c366f69b72c5df05c96dff79b35f2"
> +
> +SRC_URI = "git://github.com/pypa/setuptools_scm.git;protocol=https;branch=main;tag=v${PV}"
> +
> +SRC_URI[sha256sum] = "8f85bfc7272fb5c04df28f00bde9db8f862c586d25fa155eea90fe62ea6a3302"
> +
> +RDEPENDS_${PN} = "python3-setuptools"
> +
> +inherit setuptools3
> +
> +S = "${WORKDIR}/git"
> +
> +BBCLASSEXTEND += "native"
> diff --git a/recipes-devtools/python/python3-toml_%.bbappend b/recipes-devtools/python/python3-toml_%.bbappend
> new file mode 100644
> index 0000000..d6f5869
> --- /dev/null
> +++ b/recipes-devtools/python/python3-toml_%.bbappend
> @@ -0,0 +1 @@
> +BBCLASSEXTEND += "native"
>
> 
>

