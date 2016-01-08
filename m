Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB6B6E00AEA; Fri,  8 Jan 2016 01:21:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC462E0079A
	for <yocto@yoctoproject.org>; Fri,  8 Jan 2016 01:21:48 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id 77so249498729ioc.2
	for <yocto@yoctoproject.org>; Fri, 08 Jan 2016 01:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=zFbb9gQcZaoW0/PMMnxsGjOamy44Hwf9uyWBiDednl4=;
	b=urrgO32pn3flLuWA2RTX2uvaCTi7Zr8GS/w2ir1UINdQgtUWFYUdph5FpnA02j1vkP
	Vp04H4O9aB6fnkNEJjVuQAHubsoAb2hG6dEM9wZju9OcMjI75mK6avD20DF8D9UGCOk2
	RzAdHIhNY32zHdZ2rOI+n8oHIul/g+iP05BmkMhywz8U77g624o3BzK0dJCpVCybAIy2
	9j6FhugNy12K6BW0m/hykQg5FKCAeLBWL2oUaHek89CnkGhcuIBQDd0ddaRRK94474aJ
	qQVoVZWhZS4rOD6t1Djk7pZy3ahp6MMuBSWLIc8mi8WGdMGxmEFv+Mcx6cDWTOUq0cpE
	+LqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=zFbb9gQcZaoW0/PMMnxsGjOamy44Hwf9uyWBiDednl4=;
	b=O0kU5D3tvC8foX98Y7zf3LfGWt6ThvQ6xHj9H2yS8ml9Xe7t0a4V//XZVlMtMtVNuJ
	bUviqGEpVQ7ngeGqQuscy8A4UZdMVCNNwf4ZAU/L5vMCY0j0Cgv8qkGWSsejEGZ+Xd8E
	rn1Q0DJ9dAaoRe+4SMCowtdJ15nzJyLJgHltIVNsYlXMGfadi25n6UFZ+XvVWPoY4Nyv
	HDA83pwxhqEqvRLGuIoyOoXHry1TBYhkqc7tv7+m7S9RnuCROfiDNIVhiZkSn6gHtxoS
	vlB5SSqvfKy884FXgEc6zD4m7171xNr0BZxH2cQK/aYuLPvuTZJBbn5m7m8dIFPGUPot
	hZ0A==
X-Gm-Message-State: ALoCoQnOjysApVX/m2vmbt2DKDV4igi988SX8j3us/uYbfQRQ14UDkfAHxJpUYIdxE9zBhzDT7rqE0rQFImxHtoqogligoDpEbXYoC133v2PP4pdxnHF1SM=
X-Received: by 10.107.135.104 with SMTP id j101mr74191159iod.133.1452244907925;
	Fri, 08 Jan 2016 01:21:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 8 Jan 2016 01:21:28 -0800 (PST)
In-Reply-To: <CAJTo0Lbbpd8gqaDPiMQsD_ynZEa2Q5T1i_-nHY-FhbA__g2Dvg@mail.gmail.com>
References: <1450569917-439-1-git-send-email-raj.khem@gmail.com>
	<CAJTo0Lbbpd8gqaDPiMQsD_ynZEa2Q5T1i_-nHY-FhbA__g2Dvg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Jan 2016 09:21:28 +0000
Message-ID: <CAJTo0Lap1WUuDoqx38TbQFP7YFm-Z9cGXOgZtcAF2deXzUFn0g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-yocto][PATCH] poky-tiny: Use musl for default system C library
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
X-List-Received-Date: Fri, 08 Jan 2016 09:21:52 -0000
Content-Type: multipart/alternative; boundary=001a113ebe92dd2d490528cf1db0

--001a113ebe92dd2d490528cf1db0
Content-Type: text/plain; charset=UTF-8

On 8 January 2016 at 09:09, Burton, Ross <ross.burton@intel.com> wrote:

> For anyone else reading, I just gave this a test locally, and for context
> the previous poky-tiny was using a tuned glibc and the rootfs came in at
> 1.5M.
>

Finished my comparison builds:

musl:
-rw-r--r-- 1 ross ross  731681 Jan  7 23:46
core-image-minimal-qemux86-20160107234351.rootfs.cpio.gz
glibc:
-rw-r--r-- 1 ross ross 1569610 Jan  8 00:01
core-image-minimal-qemux86-20160107235147.rootfs.cpio.gz
uclibc:
-rw-r--r-- 1 ross ross  669759 Jan  8 09:14
core-image-minimal-qemux86-20160108090512.rootfs.cpio.gz

So it's a slightly increase over uclibc, but by default poky-tiny uses
glibc so this is a massive win.  In the greater scheme of things musl is
trending to be worth the increase over uclibc too.

Ross

--001a113ebe92dd2d490528cf1db0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 January 2016 at 09:09, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border=
-left-style:solid;padding-left:1ex"><div class=3D"gmail_extra">For anyone e=
lse reading, I just gave this a test locally, and for context the previous =
poky-tiny was using a tuned glibc and the rootfs came in at 1.5M.</div></bl=
ockquote><div><br></div><div>Finished my comparison builds:</div><div><br><=
/div><div>musl:</div><div>-rw-r--r-- 1 ross ross =C2=A0731681 Jan =C2=A07 2=
3:46 core-image-minimal-qemux86-20160107234351.rootfs.cpio.gz</div><div>gli=
bc:</div><div>-rw-r--r-- 1 ross ross 1569610 Jan =C2=A08 00:01 core-image-m=
inimal-qemux86-20160107235147.rootfs.cpio.gz</div><div>uclibc:</div><div>-r=
w-r--r-- 1 ross ross =C2=A0669759 Jan =C2=A08 09:14 core-image-minimal-qemu=
x86-20160108090512.rootfs.cpio.gz=C2=A0</div><div><br></div><div>So it&#39;=
s a slightly increase over uclibc, but by default poky-tiny uses glibc so t=
his is a massive win.=C2=A0 In the greater scheme of things musl is trendin=
g to be worth the increase over uclibc too.</div><div><br></div><div>Ross</=
div></div></div></div>

--001a113ebe92dd2d490528cf1db0--
