Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 182D5E00CD6; Thu,  7 Jul 2016 07:00:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFFDDE00CA6
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 07:00:07 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id l202so20362508ioe.3
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2016 07:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6TGdOyz4qcZSOIiZAw6ThHVtQWVxA1UGWTZjh9ooRrI=;
	b=gVda/JQdDFkfM6LgP6lOmNrMlSyEpzS7ZV9AuKdtOlKKWNELX8kG3CDV4LTmyQH+bf
	NrkiJYcWZfhqxlvhvNhGXi5xhA0WuW+szFT0XcHVKyIJHFEXNISUZOaSJ5PpYEEatVKL
	BD7GcL7TuGNBvGvCyALDH1Ss3gpEdhwnV3qpqMcpWopbjAwh9Fkynp3zvf0cnVKDYKPH
	c77BsRyHOdW7rzPAl2jU2xAjctjSlbhTfzNdzNfyKctMFV+1BF5hZjiQ+YnA5liN9pHO
	u+aLINiG5CCxxPUJejbJX3I3PLoHCdnasSXkmwgcoV1MctotCOwQgg1WRmJiK+iOVhaO
	1RbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6TGdOyz4qcZSOIiZAw6ThHVtQWVxA1UGWTZjh9ooRrI=;
	b=NrLY/+lUEXW6Vrr/PbEyhNXKThWDMtb6TBfkeVmuo3XANBHHwcdW5rS1x+V9girEgY
	gHKh7HZ4xL440elfgU5ZjeBTt+Jxg6qeZRjmu0b9kpTF16WtjdLzL41IPnCBnxkcuwCD
	ZuUSvz4SPpxlSaAdVjag58T2Jh2nxszBicGgRr3ywvksYZBXRPvlkfmgtemJNRGKYsHo
	EiY6TqgNmrCZBJceiPhmScoCrIzOgVWj15kjNIuvS7c5fVvv4iker5pTltAbuIvMB+M+
	22sZqx9CpSHfMBzErWQhhO2aes4sqqQm+1fuyOoC+P1Qenu6xadML4civ4YrTRGdmBAb
	dFJA==
X-Gm-Message-State: ALyK8tKqphsb3VSNma+LibrCjuKQIcMskHk/gpTS7JR/jd9HieApW/++rlpX8SDvbEDPgzG1+GO5SdMtVV0WFzAh
X-Received: by 10.107.135.161 with SMTP id r33mr1667929ioi.133.1467900006227; 
	Thu, 07 Jul 2016 07:00:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Thu, 7 Jul 2016 06:59:46 -0700 (PDT)
In-Reply-To: <OF271654E6.9A227F35-ONC1257FE9.0048C1C9-C1257FE9.0049A911@esa-grimma.de>
References: <OF271654E6.9A227F35-ONC1257FE9.0048C1C9-C1257FE9.0049A911@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 7 Jul 2016 14:59:46 +0100
Message-ID: <CAJTo0LZ7RVyNb0NL-5stVicAj4t4cD=wtrPR6uWKxFRuWU-eEA@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to set the prefix of a (cmake) recipe?
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
X-List-Received-Date: Thu, 07 Jul 2016 14:00:11 -0000
Content-Type: multipart/alternative; boundary=001a113ecf5c7004c605370c1a2d

--001a113ecf5c7004c605370c1a2d
Content-Type: text/plain; charset=UTF-8

On 7 July 2016 at 14:24, <S.Jaritz@esa-grimma.de> wrote:

> I want to install my software packages to the usr/local/bin dir. That is
> why I need to change the prefix form usr to usr/local. How to archive that?
>
> The software is build through a cmake. Is there somethingt I need to think
> extra for setting the prefix?


This depends on the software sadly, cmake doesn't have a standard way of
setting the prefix.

cmake.bbclass sets CMAKE_INSTALL_PREFIX etc for you on the assumption that
the CMakeLists might be using the GNUInstallDirs macro, but if they are not
then you'll have to read the CMakeLists to identify how to set the prefix
(if you can).

That isn't an inconsistency you've found: autotools defaults to /usr/local
because the assumption is that hand-compiled software shouldn't replace the
operating system, so installs to /usr/local.  If you're building software
using OE then you *are building* the operating system, so prefix is set to
/usr.

Ross

--001a113ecf5c7004c605370c1a2d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 July 2016 at 14:24,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jaritz@=
esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:s=
olid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif">I want to insta=
ll my software packages
to the usr/local/bin dir. That is why I need to change the prefix form
usr to usr/local. How to archive that?</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">The software is build through a cm=
ake.
Is there somethingt I need to think extra for setting the prefix?</font>
</blockquote></div><br>This depends on the software sadly, cmake doesn&#39;=
t have a standard way of setting the prefix.</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">cmake.bbclass sets=C2=A0CMAKE_INSTAL=
L_PREFIX etc for you on the assumption that the CMakeLists might be using t=
he GNUInstallDirs macro, but if they are not then you&#39;ll have to read t=
he CMakeLists to identify how to set the prefix (if you can).</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">That isn&#39;t an i=
nconsistency you&#39;ve found: autotools defaults to /usr/local because the=
 assumption is that hand-compiled software shouldn&#39;t replace the operat=
ing system, so installs to /usr/local.=C2=A0 If you&#39;re building softwar=
e using OE then you *are building* the operating system, so prefix is set t=
o /usr.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Ross</div></div>

--001a113ecf5c7004c605370c1a2d--
