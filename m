Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48A78E00852; Fri, 12 May 2017 12:13:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.172 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0DFCE00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:13:18 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id l7so13718560qte.1
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=0cjsTj/A2TY0DiJaEK2fe6xllKZYRrxzpa9XU7MqJlo=;
	b=MNoAgQsVoeyHL6QiNz1Hae3vNW+Z32wsATS9c6LOjgWossYhiDUzMEbb5V5YaVOTVl
	mRAEz+k7WoRfYcNfWtQqJcGjnuPrcmq5Bb2qiwXEXXB2QsTKNlgTlo/oHD+PXXwcChgC
	/VgEb/hWWTdt12hQ6Zh0r6a9XmD+PUhIZjoGedx3zPHZaqtU8Ey314cYD+NSTyR/T/Jk
	2VJsoUXUo1d3lGRU5p6VvOwS/wvYldU0iZZBapq1BzKJ0mmPy/PyUKQ/HaJgaqLIiVPL
	wHotI4h3wb4talM6B/3JbnmlCEiTYfBdUkucrx9Iu15ZgC8RtCjKk2r4ADAcqOui3ilX
	fWYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=0cjsTj/A2TY0DiJaEK2fe6xllKZYRrxzpa9XU7MqJlo=;
	b=XntrBvw1O4s4wp+CnpAJAkmI+gLwr0xproNXcdM91j36AH3UD6tqlDKwgKSn7ZwlDV
	23IX6s7hJgEgC2iUddeKGIQW+/jN5uZ+xEYMizNsiZxx4IlV957tiQJ1AuOV+hc4JhE4
	5ecqe6LsftqRSY1x3lY31e+NgZ0n0UQAavCWLR2E0QIn454B7j2eFYmtVcL3ScTjj9nB
	79DyVpXy7K6vKGxQfYFpyALSnDgLY2M9mIS8mpANqeuns6wb4kIGjd1XmKxWDfVr81n1
	KyikvXbdf3PmqSzIT9l+EtqsfcGRJyiEeK0VoumSLlNJ2BET70IP3RcFIchQ5Et/GgSl
	yigQ==
X-Gm-Message-State: AODbwcAst54BPRUZJ0MFtJ68rUUyGsZITYZC1FhXFdY3LJOPxOk1YwYF
	0SX4Ncp0pQIqp5fYF6GhYgOBAGgy1g==
X-Received: by 10.200.48.45 with SMTP id f42mr4933994qte.199.1494616397637;
	Fri, 12 May 2017 12:13:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.167 with HTTP; Fri, 12 May 2017 12:13:17 -0700 (PDT)
In-Reply-To: <1493393851-13720-1-git-send-email-costamagnagianfranco@yahoo.it>
References: <1493393851-13720-1-git-send-email-costamagnagianfranco@yahoo.it>
From: Paul Barker <pbarker@toganlabs.com>
Date: Fri, 12 May 2017 20:13:17 +0100
Message-ID: <CAPyrkgy1KFxGPUyHS+ckjy6FYw2Fy3KCg4Wu2BwpkbBD+7-9oQ@mail.gmail.com>
To: Gianfranco Costamagna <costamagna.gianfranco@gmail.com>
Cc: yocto@yoctoproject.org,
	Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
Subject: Re: [meta-raspberrypi][PATCH] Make CMDLINE overridable from outside
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
X-List-Received-Date: Fri, 12 May 2017 19:13:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 28, 2017 at 4:37 PM, Gianfranco Costamagna
<costamagna.gianfranco@gmail.com> wrote:
> currently there is no way to override the default CMDLINE, lets set if on=
ly if not already set from outside
>
> Signed-off-by: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/=
linux/linux-raspberrypi.inc
> index cf61cce..9265d55 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -21,7 +21,7 @@ KERNEL_DEFCONFIG_raspberrypi2 ?=3D "bcm2709_defconfig"
>  KERNEL_DEFCONFIG_raspberrypi3-64 ?=3D "bcmrpi3_defconfig"
>
>  # CMDLINE for raspberrypi
> -CMDLINE =3D "dwc_otg.lpm_enable=3D0 console=3Dserial0,115200 root=3D/dev=
/mmcblk0p2 rootfstype=3Dext4 rootwait"
> +CMDLINE ?=3D "dwc_otg.lpm_enable=3D0 console=3Dserial0,115200 root=3D/de=
v/mmcblk0p2 rootfstype=3Dext4 rootwait"
>
>  # Add the kernel debugger over console kernel command line option if ena=
bled
>  CMDLINE_append =3D ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=3Ds=
erial0,115200", "", d)}'
> --
> 2.7.4
>

This looks good, I'll add it to my queue to test next week unless
Andrei has time to pick it up. We've all been a bit busy, sorry you've
not had a response sooner!

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

