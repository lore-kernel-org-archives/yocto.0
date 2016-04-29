Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F639E00E58; Fri, 29 Apr 2016 04:12:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BE9CE00E53
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 04:12:11 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id bi2so18873165igb.0
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 04:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vIS6GRpQTNgiiJhog5LrDum17xpYp/BRTn3oeBZAlBI=;
	b=wV2LsaZRl/3DSvxqrsJ4dgST/A1+enixCuEA57I3gy6YnJwIBr4NL+oTwqh//plWXv
	2ocoWUZe6q/0yKFlABxHLYpL54kUDDzXF9c0XT8o5Ffznf1AVDKwqwUFj6t2o7RWsrIS
	pVhfG6kHLIZWlYuBZB/JqixDd/8pHFqCMy90aDpKg8dJ80Ypr0JftxBcp1t22uVEkE9w
	9P21RmCIGAcknAr4F6od/DfSazKNPrpamkVAUV4d4ugZxM2X2QzoNxPrZ9lK19i9I5t7
	W8PRE2IYb8ppzsZsT237uXmDMpbb5AMv4qoKRZe8ywTiY1awnU/sjgkpt99JkOFHQ31w
	S0TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vIS6GRpQTNgiiJhog5LrDum17xpYp/BRTn3oeBZAlBI=;
	b=Kl4zP34TkhJzZ+seEyixsZP6pqSG9nJGjtmgsi5tK2n3I2eF5RhqAHWPO5EPTxeTED
	nIi8/6QHCXidRUDs5wWZ1ZJPL/EeuGEdAfQ0I269e8q4YJPIgCmkLGERSnNeQcaiX5Z3
	A54OWRBWRNSwzXFUfuktcsX2c9QGjMjYwTDjLYYKcWdP4XSK3j9CLPLpswDEymf/pflE
	r8yLCFhUA+R5fEzaY3VQEgF173Qu6uWUXmUYJgEzk5z3TbCoxxRnTUumSlElxaYB4rnX
	j51B7nzlL6SIRBiG6YQYZOv25bfTyMwme5JYsOH96FPbnXuEyy25MAdx8HP26aUoIQ6W
	rEmA==
X-Gm-Message-State: AOPr4FUxd3X7uVWCadJ1a+UqtxSrmPGWRAAUkOlFzPR8ReS97HJrPHsemk5qxtAvUMLtYRUdMB1r1BLuikIYXzuP
X-Received: by 10.50.18.111 with SMTP id v15mr3612206igd.64.1461928330832;
	Fri, 29 Apr 2016 04:12:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Fri, 29 Apr 2016 04:11:51 -0700 (PDT)
In-Reply-To: <OFB3F7FD44.568863C7-ONC1257FA4.00364313-C1257FA4.0036E30E@esa-grimma.de>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
	<SIXPR04MB0668640023EA6AFE4596C0ADEC650@SIXPR04MB0668.apcprd04.prod.outlook.com>
	<CAJTo0LY3yqttg6hf3saU+RoLco1_GmNRy7pT+wDciBFFHep0HQ@mail.gmail.com>
	<OFAE948224.6BDA8DD0-ONC1257FA4.0028E4AF-C1257FA4.002B73A2@esa-grimma.de>
	<CAJTo0La51T5zQZv0JbakTifLUNVv=n291fmrx=RhmLpDq+C7Gg@mail.gmail.com>
	<OFB3F7FD44.568863C7-ONC1257FA4.00364313-C1257FA4.0036E30E@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Apr 2016 12:11:51 +0100
Message-ID: <CAJTo0LZgaYqZize00LWxVju_1zZnAai_O4TKyfcYApOyr_gcpQ@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Fri, 29 Apr 2016 11:12:15 -0000
Content-Type: multipart/alternative; boundary=089e014953ccd8ca4e05319db684

--089e014953ccd8ca4e05319db684
Content-Type: text/plain; charset=UTF-8

On 29 April 2016 at 10:59, <S.Jaritz@esa-grimma.de> wrote:

> Finally we made it - Thanks to you all for helping me! I attached my bb
> file for that case someone is searching for a bitbake recipe for building
> the libhiredis
>

If you submit the recipe to meta-oe then you can share development of the
recipe with others.

Oh, and I just noticed that you commented out SRCREV.  Ideally don't use a
tag name in the SRC_URI but set SRCREV to that tag's hash, so caches and
offline builds can work.

Ross

--089e014953ccd8ca4e05319db684
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 April 2016 at 10:59,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jarit=
z@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif"=
>Finally we made it - Thanks to you all
for helping me! I attached my bb file for that case someone is searching
for a bitbake recipe for building the libhiredis</font>
<br></blockquote></div><br>If you submit the recipe to meta-oe then you can=
 share development of the recipe with others.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Oh, and I just noticed that you com=
mented out SRCREV.=C2=A0 Ideally don&#39;t use a tag name in the SRC_URI bu=
t set SRCREV to that tag&#39;s hash, so caches and offline builds can work.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross<=
/div></div>

--089e014953ccd8ca4e05319db684--
