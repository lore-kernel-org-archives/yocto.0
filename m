Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 077D0E00B3F; Thu,  8 May 2014 11:05:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f47.google.com (unknown [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A4F0E00B30
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 11:04:55 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id c13so1957934eek.34
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 11:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=SjRmE13ccjyZW5JBcpb/tlEg02DuJO2h+84Cynadlw8=;
	b=WN8qgSPT6NacxG8WXAytYb+SGxgeB2zd6sOewLHIa5Sboo0Js/04YVx8SM14bhWowx
	Ancw56ZfLbt/psG6vmrYm1KxdF15WcuLXi0WYDrOgLC20nQhpplJ+eT8qkKFQ2GF7CIU
	qwvp7BmDwZFFJsmyyKBHouaV6nOmU7ql38yRjhrUfdNa5uYr/VPb3hED+vKGoREVdaGE
	StiZ/e9P39k1yzlAcAoTCSD+ddOOA7Y11DKS+ncqwUm0uo6Zhk/5YiSr0a8NhGn1Jj5i
	bt8i/G6cV4JA/BQJClVgXaht3sCM7PG0uk1d2cCBwZBCWcnNox90d6/vDGL6kek8oT50
	vfZA==
X-Gm-Message-State: ALoCoQkLFWRCoS4z423FDXvjM3KbXFOza+KbWMpnsHWa51R7M4fFx0GvY5+rMXin+PLNPVTj+9yU
X-Received: by 10.15.93.142 with SMTP id w14mr7396848eez.1.1399572294708;
	Thu, 08 May 2014 11:04:54 -0700 (PDT)
Received: from gmail.com (5-13-208-17.residential.rdsnet.ro. [5.13.208.17])
	by mx.google.com with ESMTPSA id p9sm5770052eeg.32.2014.05.08.11.04.53
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 May 2014 11:04:54 -0700 (PDT)
Date: Thu, 8 May 2014 21:04:47 +0300
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20140508180447.GA29498@gmail.com>
References: <1399045604-8469-1-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1399045604-8469-1-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] Remove uses of PRINC
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
X-List-Received-Date: Thu, 08 May 2014 18:05:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 02, 2014 at 03:46:44PM +0000, Paul Barker wrote:
> PRINC is now obsolete and the PR Service should be used instead to keep PR
> values incrementing on change.
>
> A patch has also been submitted to openembedded-core to bump the appropriate PR
> values so that PR doesn't move backwards. This patch should only be applied
> after that patch, and only to branches which include that patch (ie. if that
> patch doesn't go into daisy in oe-core, this patch shouldn't go into daisy in
> meta-raspberrypi).
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-bsp/formfactor/formfactor_0.0.bbappend                 | 1 -
>  recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend | 3 ---
>  2 files changed, 4 deletions(-)
>
> diff --git a/recipes-bsp/formfactor/formfactor_0.0.bbappend b/recipes-bsp/formfactor/formfactor_0.0.bbappend
> index 0003480..72d991c 100644
> --- a/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,2 +1 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -PRINC = "1"
> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> index 3e86645..e37f942 100644
> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -1,8 +1,5 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> -# Don't forget to bump PRINC if you update the extra files.
> -PRINC := "${@int(PRINC) + 5}"
> -
>  THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>  FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
>

Merged. Thanks.

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

