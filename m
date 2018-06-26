Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFD92E0120A; Tue, 26 Jun 2018 03:23:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDCA4E00D60
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 03:23:44 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5QANeiw004450
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 26 Jun 2018 11:23:41 +0100
Message-ID: <085b7af2813972b2c1e54759c22a6279e6913f17.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org
Date: Tue, 26 Jun 2018 11:23:40 +0100
In-Reply-To: <1529977891-8099-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1529977891-8099-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-ab-helper] Add config support intel-corei7-64
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jun 2018 10:23:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-06-26 at 09:51 +0800, Aaron Chan wrote:
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  scripts/config-intel-lava.json | 129
> +++++++++++++++++++++++++++++++++++++++++
>  scripts/utils.py               |   2 +-
>  2 files changed, 130 insertions(+), 1 deletion(-)
>  create mode 100644 scripts/config-intel-lava.json
> 
> diff --git a/scripts/config-intel-lava.json b/scripts/config-intel-
> lava.json
> new file mode 100644
> index 0000000..76bb4f5
> --- /dev/null
> +++ b/scripts/config-intel-lava.json
> @@ -0,0 +1,129 @@
> +{
> +    "BASE_HOMEDIR" : "~",
> +    "BASE_SHAREDDIR" :
> "/srv/www/vhosts/autobuilder.yoctoproject.org",
> +
> +    "defaults" : {
> +        "NEEDREPOS" : ["poky"],
> +        "DISTRO" : "poky",
> +        "SDKMACHINE" : "i686",
> +        "PACKAGE_CLASSES" : "package_rpm package_deb package_ipk",
> +        "PRSERV" : "PRSERV_HOST = 'localhost:0'",
> +        "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
> +        "SSTATEDIR" : ["SSTATE_DIR ?=
> '${BASE_SHAREDDIR}/pub/sstate'"],
> +        "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.*
> file://${BASE_SHAREDDIR}/pub/sstate/PATH'", "SSTATE_DIR ?=
> '/srv/www/vhosts/downloads.yoctoproject.org/sstate/@RELEASENUM@'"],
> +        "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://ss
> tate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'"],
> +        "BUILDINFO" : false,
> +        "BUILDINFOVARS" : ["INHERIT += 'image-buildinfo'",
> "IMAGE_BUILDINFO_VARS_append = ' IMAGE_BASENAME IMAGE_NAME'"],
> +        "WRITECONFIG" : true,
> +        "SENDERRORS" : true,
> +        "extravars" : [
> +            "QEMU_USE_KVM = 'True'",
> +            "INHERIT += 'report-error'",
> +            "PREMIRRORS = ''",
> +            "BB_GENERATE_MIRROR_TARBALLS = '1'",
> +            "BB_NUMBER_THREADS = '16'",
> +            "PARALLEL_MAKE = '-j 16'",
> +            "BB_TASK_NICE_LEVEL = '5'",
> +            "BB_TASK_NICE_LEVEL_task-testimage = '0'",
> +            "BB_TASK_IONICE_LEVEL = '2.7'",
> +            "BB_TASK_IONICE_LEVEL_task-testimage = '2.1'",
> +            "INHERIT += 'testimage'",
> +            "TEST_QEMUBOOT_TIMEOUT = '1500'",
> +            "SANITY_TESTED_DISTROS = ''",
> +            "SDK_EXT_TYPE = 'minimal'",
> +            "SDK_INCLUDE_TOOLCHAIN = '1'"
> +        ]
> +    },

This does look in direction I'm thinking however do you really change
and override all the above values? Can we get away with just specifying
the values you're actually needing to change?

> +    "overrides" : {
> +        "nightly-x86-64-bsp" : {
> +            "MACHINE" : "intel-corei7-64",
> +            "SDKMACHINE" : "x86_64",
> +            "extravars" : [
> +                "DISTRO_FEATURES_append = \" systemd\"",
> +                "IMAGE_INSTALL_append = \" udev util-linux
> systemd\"",
> +                "CORE_IMAGE_EXTRA_INSTALL_append += \"python3
> python3-pip git socat apt dpkg openssh\"",
> +                "IMAGE__FSTYPES = \"tar.gz\""
> +            ],
> +            "NEEDREPOS" : ["poky", "meta-intel", "meta-minnow",
> "meta-openembedded"],
> +            "step1" : {
> +                "ADDLAYER" : [
> +                    "../meta-intel",
> +                    "../meta-minnow"
> +                ],
> +                "BBTARGETS" : "core-image-sato-sdk"
> +            }
> +        }
> +    },

This piece is one of the key pieces and is fine.

> +    "repo-defaults" : {
> +        "poky" : {
> +            "url" : "git://git.yoctoproject.org/poky",
> +            "branch" : "master",
> +            "revision" : "HEAD",
> +            "checkout-dirname" : ".",
> +            "no-layer-add" : true,
> +            "call-init" : true
> +        },

However this is clearly just a unneeded copy

> +        "meta-intel" : {
> +            "url" : "git://git.yoctoproject.org/meta-intel-contrib",
> +            "branch" : "anujm/next",
> +            "revision" : "HEAD"
> +        },

This appears to just change the branch which you can probably just
specify separately.

> +        "meta-minnow" : {
> +            "url" : "https://github.com/alimhussin2/meta-minnow",
> +            "branch" : "master",
> +            "revision" : "HEAD"
> +        },
> +        "meta-openembedded" : {
> +            "url" : "git://git.openembedded.org/meta-openembedded",
> +            "branch" : "master",
> +            "revision" : "HEAD"
> +        }


These last two are the main additions I could quickly spot.

> +    }
> +}
> diff --git a/scripts/utils.py b/scripts/utils.py
> index 7c6535c..d1c3168 100644
> --- a/scripts/utils.py
> +++ b/scripts/utils.py
> @@ -146,7 +146,7 @@ def loadconfig():
>      for f in files.split():
>          p = f
>          if not f.startswith("/"):
> -            p = os.path.join(scriptsdir, '..', f)
> +            p = os.path.join(scriptsdir, f)

This does not look like it should be here.

Cheers,

Richard


