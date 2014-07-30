Return-Path: <Andrei.Gherzan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 746EDE00781; Wed, 30 Jul 2014 08:00:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D262EE0076C
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 08:00:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s6UExlHw024709
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Jul 2014 07:59:47 -0700 (PDT)
Received: from windriver.com (128.224.171.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Wed, 30 Jul 2014 07:59:47 -0700
Date: Wed, 30 Jul 2014 17:59:43 +0300
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: Sujith H <sujith.h@gmail.com>
Message-ID: <20140730145942.GH1749@windriver.com>
References: <1406726341-28977-1-git-send-email-sujith.h@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1406726341-28977-1-git-send-email-sujith.h@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi][PATCH] Make pulseaudio run by default
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
X-List-Received-Date: Wed, 30 Jul 2014 15:00:09 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi Sujith,

First of all please format summary following:
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

On Wed, Jul 30, 2014 at 06:49:01PM +0530, Sujith H wrote:
> From: Sujith H <Sujith_Haridasan@mentor.com>
>
> This change will help pulseaudio run by default on the
> target. On the bootup user can see pulseaudio service
> started.
>
> Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
> ---
>  meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend b/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend
> index e32efa7..5401c66 100644
> --- a/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend
> +++ b/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend
> @@ -7,7 +7,7 @@ PR = "r1"
>  inherit systemd
>
>  SYSTEMD_PACKAGES = "${PN}-server"
> -SYSTEMD_SERVICE = "pulseaudio.service"
> +SYSTEMD_SERVICE_${PN}-server = "pulseaudio.service"

There is no functional change between these too. (read
http://patchwork.openembedded.org/patch/29049/). In both cases the services
ends up in pulseaudio-server package.

The autostart feature is handled by SYSTEMD_AUTO_ENABLE which has as the
default value "enable". So, pulseaudio should be up and running in the current
setup.

>
>  PACKAGECONFIG_remove = "bluez4"
>  PACKAGECONFIG_append = " bluez5"
> --
> 1.8.4
>

--
Andrei Gherzan | Wind River Systems
m: +40 734 450 615 | p: +40 236 320 307

