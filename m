Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 038CEE00C87; Wed,  3 Jul 2019 11:44:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F2AFE00920
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 11:44:22 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id m23so3524879lje.12
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2019 11:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=T50fCV478dbSMDdDh92L8cKRIYKH1Fy6taY5EnUzL24=;
	b=LwTDs2s3PmsyQqCHyPFfemOOgAdgo8M6TI7wLwA7A2l2QRHJRNWP5tYvEv537BJm2/
	uqaRI2LffZxwJ9P1YZPbyvqymkpAquiyo/7YJlBkfl6zd7McoY4r1IsGcf3v3yPXHbPq
	bm5LLG3oyxa9zFnwCk+HfxWLNAJPwVAycrzLIXG+Dxru4GpyoNEWhTwAtE/jRLxymC1M
	ffrBp4AGnXrgYFFBOVc4wpwLaircMztmZMKKcap/3+mzrYY6a6/VfqTDsZkvyV/GA3La
	sLxFTsoDMmA5RVJEqakd9x7GX98j5H6at+6YZL9RbXsSOGLXG1yLgtcxXNEdB5zOg779
	00aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=T50fCV478dbSMDdDh92L8cKRIYKH1Fy6taY5EnUzL24=;
	b=egMsV8SU3FPh3W3OSt+oar/u86hWScRFFL3KrEK0Xkq6QkPcDsk9etWXnIBlTf9/CH
	lPNxh/cCCfUVxB12PVvAbVPH24+ksAo/0S2UnziMdVYESBlE6ga5MHdnHTU2CUnil74p
	1AUwiuATNeNsRdpHcRj7qxnhPfoE8BIH0fs3qE089/p2nQ2kbTOvIacJFQBj+U/J7asF
	k3nJrReTum1k35gv6epqXb1xI+F8ekyDjYJ62RkQ1/xGIPFcIdRt95upwp6hQvelW+h/
	x/ByqU0VORU31kiU5xCuOP2ZF9nKz65j2LFw2thG6HFCotCpREGcd+BfdfwTNqQHypB4
	q7KQ==
X-Gm-Message-State: APjAAAXh6DjnEnOUMywcOsw/LHNB16y860AjZIuLDYcx/XU++fkLbXEp
	ALL17qsRk+hzM/WFwxxvgL1AK1E9
X-Google-Smtp-Source: APXvYqyp35rkIedipueStGNrLbYvvF/Ie/pkSCCYigO3j8wotB4kabaeY+1m31MeP7CapN1OZNFk4A==
X-Received: by 2002:a2e:7a19:: with SMTP id v25mr22138599ljc.39.1562179461679; 
	Wed, 03 Jul 2019 11:44:21 -0700 (PDT)
Received: from [172.21.20.159] (78-69-166-142-no533.tbcn.telia.com.
	[78.69.166.142])
	by smtp.gmail.com with ESMTPSA id n7sm496366lfi.68.2019.07.03.11.44.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Jul 2019 11:44:20 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Gmail <jonaskgandersson@gmail.com>
X-Mailer: iPhone Mail (16E227)
In-Reply-To: <CAH_3R3LHz5vfY3yyDX6tJe65b-pGg5m6B67uzUWUS0jzt6NOmQ@mail.gmail.com>
Date: Wed, 3 Jul 2019 20:44:19 +0200
Message-Id: <BBC05759-7692-4A75-AC20-CD984B229963@gmail.com>
References: <CAH_3R3LHz5vfY3yyDX6tJe65b-pGg5m6B67uzUWUS0jzt6NOmQ@mail.gmail.com>
To: =?utf-8?Q?Szabolcs_B=C3=A1der?= <sb@baader.hu>
Cc: yocto@yoctoproject.org
Subject: Re: How to run script before mount rootfs
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
X-List-Received-Date: Wed, 03 Jul 2019 18:44:24 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-9524877D-051E-4BB2-9320-C2CA080BE258
Content-Transfer-Encoding: 7bit

--Apple-Mail-9524877D-051E-4BB2-9320-C2CA080BE258
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

You can have a look at https://wiki.yoctoproject.org/wiki/System_Update.=20

I have used RAUC and u-boot on Rasperry Pi, there is an meta-rauc layer for Y=
octo. RAUC Dok at https://rauc.readthedocs.io/en/latest/. RAUC have an u-boo=
t example script for loading different rootfs on boot, have a look at there G=
itHub:
https://github.com/rauc/rauc/blob/master/contrib/uboot.sh

Best regards
Jonas Andersson

> 3 juli 2019 kl. 18:59 skrev Szabolcs B=C3=A1der <sb@baader.hu>:
>=20
> Hi,
>=20
> I created for Raspberry Pi a simple OS-boot-switcher. I change a param fro=
m rootfs, reboot and new OS run. I would like to add to for this flow a para=
meter to create ro boot and rootfs.=20
>=20
> I would like to read this parameter at boot and depend on this choose whic=
h OS will load. How could I define this at boot (eg. from cmdline.txt or wit=
h a shell script or load c code ..?). What is the best idea/ way to do that w=
ithin Yocto?
>=20
>=20
> Thanks in advance,
> Szabolcs
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-9524877D-051E-4BB2-9320-C2CA080BE258
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hi,<div><br></div><div>You can have a look a=
t&nbsp;<a href=3D"https://wiki.yoctoproject.org/wiki/System_Update">https://=
wiki.yoctoproject.org/wiki/System_Update</a>.&nbsp;</div><div><br></div><div=
>I have used RAUC and u-boot on Rasperry Pi, there is an meta-rauc layer for=
 Yocto. RAUC Dok at&nbsp;<a href=3D"https://rauc.readthedocs.io/en/latest/">=
https://rauc.readthedocs.io/en/latest/</a>. RAUC have an u-boot example scri=
pt for loading different rootfs on boot, have a look at there GitHub:</div><=
div><a href=3D"https://github.com/rauc/rauc/blob/master/contrib/uboot.sh">ht=
tps://github.com/rauc/rauc/blob/master/contrib/uboot.sh</a></div><div><br></=
div><div><div dir=3D"ltr">Best regards</div><div dir=3D"ltr">Jonas Andersson=
</div><div dir=3D"ltr"><br>3 juli 2019 kl. 18:59 skrev Szabolcs B=C3=A1der &=
lt;<a href=3D"mailto:sb@baader.hu">sb@baader.hu</a>&gt;:<br><br></div><block=
quote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br=
></div><div>I created for Raspberry Pi a simple=20
OS-boot-switcher. I change a param from rootfs, reboot and new OS run. I
 would like to add to for this flow a parameter to create ro boot and=20
rootfs. <br></div><div><br></div><div>I would like to read this=20
parameter at boot and depend on this choose which OS will load. How=20
could I define this at boot (eg. from cmdline.txt or with a shell script
 or load c code ..?). What is the best idea/ way to do that within=20
Yocto?</div><div><br></div><div><br></div><div>Thanks in advance,</div><div>=
Szabolcs</div></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>-- </spa=
n><br><span>_______________________________________________</span><br><span>=
yocto mailing list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org"=
>yocto@yoctoproject.org</a></span><br><span><a href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><=
/span><br></div></blockquote></div></body></html>=

--Apple-Mail-9524877D-051E-4BB2-9320-C2CA080BE258--
