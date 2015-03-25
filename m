Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB7AEE008F6; Wed, 25 Mar 2015 09:06:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
Received: from mail-yh0-f52.google.com (mail-yh0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D38E008CF
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 09:06:10 -0700 (PDT)
Received: by yhim52 with SMTP id m52so13939517yhi.2
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 09:06:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=JvOfdQ2vaTIerbwPLw81HhuBNXDEcsQpt6G9R1B+xdg=;
	b=h/yWogg/v4uSkgTbIjrX9rECWIyq6PHxtPGN4wDmiUGUPJqhC+98DiocdbdbE7dW6J
	7L0v2HIvFWEfXrN7lXcr+HEe/ISZMLjuikSCvs4TVsQAXxRESbPpvln60JyHs7Co6Wkl
	jzxsBAzaejIUjsJdOZxsNSM7H/djEhC73PVYLeTzUNeKhOi1/XZ+WnjC8Wo/jv7hXhD8
	lGljZyIhZKvzsxjn28/qqpfbEStW6s5Nppo2qmFGXQV5ApiopLt1pxFVXRdYQTDfq6vY
	rGOBZq4AXvEgW2Wy/RygWEkwea+QFhdUJ/BTuot6yrTrbTt24rRGKlibI3Av2LGsqMOK
	cahQ==
X-Gm-Message-State: ALoCoQkaSILYk9tjhynIlPVGNx4MNSUBaA3mMkqqXVv+XAAQzWkPuIRQdLTj5N6Jw3lg5diDXHFT
MIME-Version: 1.0
X-Received: by 10.52.131.82 with SMTP id ok18mr10179447vdb.48.1427299570207;
	Wed, 25 Mar 2015 09:06:10 -0700 (PDT)
Received: by 10.52.124.37 with HTTP; Wed, 25 Mar 2015 09:06:09 -0700 (PDT)
In-Reply-To: <1427239785-28408-1-git-send-email-tracy.graydon@intel.com>
References: <1427239785-28408-1-git-send-email-tracy.graydon@intel.com>
Date: Wed, 25 Mar 2015 16:06:09 +0000
Message-ID: <CAPhnLPD48u=QGGuK+VBdffD8WRzvCJuUBQOOeVTrT7CoZgkYaA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] nightly-world-lsb.conf: Do world builds for poky-lsb
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
X-List-Received-Date: Wed, 25 Mar 2015 16:06:13 -0000
Content-Type: text/plain; charset=UTF-8

Yeah, second version looks fine. I'll pull it tonight.

-b

On 24 March 2015 at 23:29, Graydon, Tracy <tracy.graydon@intel.com> wrote:
> [YOCTO #7261]
>
> Do world builds for poky-lsb. This patch adds the new nightly-world-lsb buildset
> to fix bug #7261. Also added it to the normal nightly.conf trigger
> and yoctoAB.conf.
>
> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> ---
>  buildset-config.controller/nightly-world-lsb.conf | 22 ++++++++++++++++++++++
>  buildset-config.controller/nightly.conf           |  2 +-
>  buildset-config.controller/yoctoAB.conf           |  6 +++---
>  3 files changed, 26 insertions(+), 4 deletions(-)
>  create mode 100644 buildset-config.controller/nightly-world-lsb.conf
>
> diff --git a/buildset-config.controller/nightly-world-lsb.conf b/buildset-config.controller/nightly-world-lsb.conf
> new file mode 100644
> index 0000000..e9782a9
> --- /dev/null
> +++ b/buildset-config.controller/nightly-world-lsb.conf
> @@ -0,0 +1,22 @@
> +[nightly-world-lsb]
> +builders: 'example-worker'
> +repos: [{'poky':
> +            {'repourl':'git://git.yoctoproject.org/poky',
> +             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
> +             'branch':'master'}},
> +        {'meta-qt3':
> +            {'repourl':'git://git.yoctoproject.org/meta-qt3',
> +             'branch':'master'}}]
> +steps: [{'SetDest':{}},
> +        {'CheckOutLayers': {}},
> +        {'RunPreamble': {}},
> +        {'GetDistroVersion' : {'distro': 'poky'}},
> +        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
> +                            'buildhistory' : False, 'multilib': True,
> +                            'distro': 'poky-lsb'}},
> +        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> +        {'BuildImages': {'images': 'world'}},
> +        {'SendErrorReport': {}},
> +        {'UploadToasterEventlog': {}},
> +        {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
> +
> diff --git a/buildset-config.controller/nightly.conf b/buildset-config.controller/nightly.conf
> index e8498f1..cf7c77c 100644
> --- a/buildset-config.controller/nightly.conf
> +++ b/buildset-config.controller/nightly.conf
> @@ -87,7 +87,7 @@ steps: [{'SetDest':{}},
>                             'schedulerNames_nowait' : {'build-appliance': {},
>                             'eclipse-plugin-kepler': {}, 'eclipse-plugin-juno': {},
>                             'nightly-non-gpl3': {}, 'nightly-oecore': {},
> -                           'nightly-world':{}, 'nightly-intel-gpl': {},
> +                           'nightly-world':{}, 'nightly-world-lsb':{}, 'nightly-intel-gpl': {},
>                             'poky-tiny': {}, 'buildtools': {},
>                             'nightly-qa-systemd': {}, 'nightly-qa-extras': {},
>                             'nightly-qa-logrotate': {}, 'nightly-qa-pam': {},
> diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-config.controller/yoctoAB.conf
> index 9a07512..5bc369d 100644
> --- a/buildset-config.controller/yoctoAB.conf
> +++ b/buildset-config.controller/yoctoAB.conf
> @@ -5,6 +5,6 @@ order: ['nightly', 'eclipse-plugin-juno',
>          'nightly-mips-lsb', 'nightly-ppc', 'nightly-ppc-lsb',
>          'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
>          'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
> -        'nightly-world', 'nightly-non-gpl3', 'nightly-oecore',
> -        'nightly-intel-gpl', 'poky-tiny', 'build-appliance',
> -        'nightly-qa-extras', 'nightly-qa-systemd']
> +        'nightly-world', 'nightly-world-lsb', 'nightly-non-gpl3',
> +        'nightly-oecore', 'nightly-intel-gpl', 'poky-tiny',
> +        'build-appliance', 'nightly-qa-extras', 'nightly-qa-systemd']
> --
> 1.9.3
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

