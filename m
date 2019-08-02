Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D512EE00E6A; Thu,  1 Aug 2019 22:12:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA18E00E5E
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 22:12:17 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id 44so41675919qtg.11
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 22:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=PvWds5l5OiUPOKMM0z2MRrDQWbsg/ObkLRT/WFiGyWQ=;
	b=jygRibHspZorC0aCaFyTMq0Zc8EVeDRPa3jwL6tzYV+ap1XoicQMk6hdlmVYIgtKkF
	B23+jlbCUMc3EVzVRIkgkopesUkIwI0H4cixpFtfP8kBf3Y5Gb6O3Evm8Dm+pWvHsiR1
	sJtlDnl5oxV6cxUEE/yNlqHrCGypbuKMyRM3Z3wikV9OEiuuHujCCGobD67CQPzoTrVV
	LbQlVjBcLs84lTbyHEXyJs7m718mGWh2rMjdRj+N+YvBJZ1xhuZT5deFP5uXfHtPjD8F
	oXm9EfHLb1WnOeDEr8lJVDF/bA4eut7fA2Qh0BxGtmVL404D9gk4l2Lk4jGrue5WEeG7
	cjcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=PvWds5l5OiUPOKMM0z2MRrDQWbsg/ObkLRT/WFiGyWQ=;
	b=LarS3hppjk/jOEMRvoOVv0DWIPgET30aCZdV3P1XpAYKwncXttPY+6dB1qJ3S2/WWl
	Pco9jbf2F7NB9Cs4/qapSspyLUIwJqTpQYYSJjZnFLcbFKYcv3Ef/Ik8WtmRTM8dXgGV
	dT/D6hT5Ms8ydytgJBzQfQV0OIA2B/OVOC4Dq3tNDLT1XjwvcHBLhf22s7hJSPuwFegQ
	60a0oQfYhFzJ2Z/EMQXQVfJPSvihooz8ATaJsEyi/HzPibT3OieqzZ/6PpKt6vu5BPRl
	4t0Cx/BDulpZBEZb1pjh09Bw5QNp5O0bNPvmrodAaciY5teSc/+gRMlb1etqLuttTWip
	tBcA==
X-Gm-Message-State: APjAAAXQpiiP8WhlvJTKC0hSlGQg3zG71jJAKyqjMPSxJnLTLnYgQhSt
	Zm05D49jZyaf92/BRWzFV/x+WCGCGSZWP//pcWXLBaa9JYs=
X-Google-Smtp-Source: APXvYqxNxlA6jIkDtk4BrkBMg6R5JuPMDBBRLTbio/G3pSD0Z3U2dGdv+/xdphwTyh0fGkJnjFCvwbjmtIB8sI5g05M=
X-Received: by 2002:ac8:1183:: with SMTP id d3mr31753322qtj.53.1564722736796; 
	Thu, 01 Aug 2019 22:12:16 -0700 (PDT)
MIME-Version: 1.0
References: <LO2P265MB116541EFF189E7FE94EA99BFDEDF0@LO2P265MB1165.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <LO2P265MB116541EFF189E7FE94EA99BFDEDF0@LO2P265MB1165.GBRP265.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 1 Aug 2019 22:12:00 -0700
Message-ID: <CAMKF1sokGkGmND=ahwFupPXpV-0e2G+mkK-5_MnEMBhOaqcMRg@mail.gmail.com>
To: Edward Tyrrell <ed@disignconsultants.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Patching /lib/systemd/system/systemd-networkd-wait-online.service
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
X-List-Received-Date: Fri, 02 Aug 2019 05:12:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

you should be patching ./units/systemd-networkd-wait-online.service.in file

On Thu, Aug 1, 2019 at 8:14 AM Edward Tyrrell <ed@disignconsultants.com> wr=
ote:
>
> Hi,
>
>
> I'm trying to add a patch to the systemd layer to amend systemd-networkd-=
wait-online.service. Within the service I simply want to add --any as a par=
ameter.
>
>
> The problem is my is bitbake fails with:
>
> Applying patch 0020-systemd-networkd-wait-online-service.patch
> can't find file to patch at input line 3
> Perhaps you used the wrong -p or --strip option?
> The text leading up to this was:
> --------------------------
> |--- a/units/systemd-networkd-wait-online.service 2019-05-23 13:38:23.000=
000000 +0100
> |+++ b/units/systemd-networkd-wait-online.service 2019-07-31 08:30:40.823=
968051 +0100
> --------------------------
> No file to patch.  Skipping patch.
> 1 out of 1 hunk ignored
> Patch 0020-systemd-networkd-wait-online-service.patch does not apply (enf=
orce with -f)
>
>
>
> My ...../sources/poky/meta/recipes-core/systemd/systemd_234.bbappend cons=
ists of:
>
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> SRC_URI +=3D "file://0020-systemd-networkd-wait-online-service.patch"
>
> My patch file:
>
> --- a/units/systemd-networkd-wait-online.service 2019-05-23 13:38:23.0000=
00000 +0100
> +++ b/units/systemd-networkd-wait-online.service 2019-07-31 08:30:40.8239=
68051 +0100
> @@ -16,7 +16,7 @@
>
>  [Service]
>  Type=3Doneshot
> -ExecStart=3D/lib/systemd/systemd-networkd-wait-online
> +ExecStart=3D/lib/systemd/systemd-networkd-wait-online --any
>  RemainAfterExit=3Dyes
>
>  [Install]
>
> -------------------------------------------------------------------------=
------
>
>
> So it finds the patch but struggles locating the service file to patch wi=
thin the build. Any ideas where I'm going wrong?
>
> Is ...../sources/poky/meta/recipes-core/systemd/systemd_234.bb the proper=
 place to patch this service file?
>
>
>
> Regards,
>
>
> Edward
>
>
>
>
> This message and any attachment are confidential and may be privileged or=
 otherwise protected from disclosure. If you are not the intended recipient=
, please telephone or email the sender and delete this message and any atta=
chment from your system. If you are not the intended recipient you must not=
 copy this message or attachment or disclose the contents to any other pers=
on.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

