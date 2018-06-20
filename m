Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53B59E01C56; Wed, 20 Jun 2018 15:29:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7E15E010AF
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2018 15:29:28 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5KMTKnA020430
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 20 Jun 2018 23:29:21 +0100
Message-ID: <ad50c51b1cd1ef4e68a1e739ade98df2198ffe65.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org
Date: Wed, 20 Jun 2018 23:29:20 +0100
In-Reply-To: <1529395535-8886-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1529395535-8886-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-autobuilder2] Add nightly-x86-64-bsp job to enable BSP HW Testcase
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
X-List-Received-Date: Wed, 20 Jun 2018 22:29:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Aaron,

Thanks for this. I think this made it clear we needed an extensions
mechanism for yocto-autobuilder-helper (note this patch is against
yocto-autobuilder-helper, not yocto-autobuilder2).

I've just pushed a change to yocto-autobuilder2 which should allow it
to load extra json files instead of the standard config.json.

What I'd propose is we add a config-intel-qa.json file there and that
we add these extra definitions to that file (or maybe a config-intel-
lava-qa.json?).

Right now the simplistic logic in loadconfig() won't allow the simple
addition/replacement of an entry within a dict/list but that is
something which should be easily fixed.

I am rather worried about this meta-minnow repository. We ideally want
to test the artefacts the standard system builds, not change their
configuration. It looks like the layer simply builds an extra kernel
module. Is there a reason we can't enable upstream in the kernels?

Also, "meta-minnow" is a very confusing name for what is a very
specific purpose layer related to lava automated testing. The README in
the layer is also incomplete/inaccurate.

Can you have a look at the above and see if you think we can rework
this as above and possibly drop meta-minnow entirely?

Cheers,

Richard

On Tue, 2018-06-19 at 16:05 +0800, Aaron Chan wrote:
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  config.json | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/config.json b/config.json
> index 808fefc..e79fae3 100644
> --- a/config.json
> +++ b/config.json
> @@ -230,6 +230,23 @@
>                  "MACHINE" : "genericx86-64"
>              }
>          },
> +        "nightly-x86-64-bsp" : {
> +            "MACHINE" : innaccurate"intel-corei7-64",
> +            "SDKMACHINE" : "x86_64",
> +            "BBTARGETS" : "core-image-sato-sdk",
> +            "extravars" : [
> +                "DISTRO_FEATURES_append = \" systemd\"",
> +                "IMAGE_INSTALL_append = \" udev util-linux
> systemd\"",
> +                "IMAGE_FSTYPES = \"tar.gz\"",
> +                "CORE_IMAGE_EXTRA_INSTALL += \"python3 python3-pip
> python-pip git socat apt dpkg openssh\""
> +            ],
> +            "NEEDREPOS" : ["poky", "meta-intel", "meta-minnow",
> "meta-openembedded"],
> +            "ADDLAYER" : [
> +                "${BUILDDIR}/../meta-intel",
> +                "${BUILDDIR}/../meta-minnow",
> +                "${BUILDDIR}/../meta-openembedded/meta-python"
> +            ]
> +        },
>          "nightly-world" : {
>              "MACHINE" : "qemux86",
>              "SDKMACHINE" : "x86_64",
> @@ -738,6 +755,11 @@
>              "url" : "git://git.yoctoproject.org/meta-gplv2",
>              "branch" : "master",
>              "revision" : "HEAD"
> +        },
> +        "meta-minnow" : {
> +            "url" : "https://github.com/alimhussin2/meta-minnow",
> +            "branch" : "master",
> +            "revision" : "HEAD"
>          }
>      }
>  }
> -- 
> 2.7.4
> 

