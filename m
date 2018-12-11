Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBEEAE00C4D; Tue, 11 Dec 2018 05:12:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55DE7E00C10
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 05:12:18 -0800 (PST)
Received: by mail-ed1-f50.google.com with SMTP id f23so12477484edb.3
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 05:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pjKG3EyivjoPEhHNLMReE7OO3UgJgIh9bWdFXvoTTTY=;
	b=G6QhhfVU5ZnwEmAUzEzAYlyV+2YXSec2kNIpB0U3mC6okp2Jxugwbcp3b/az8mwXXI
	HxfCJUnSlW2iIS0GoORxbZUfIyI7nwnzhCidziyAr6SB98oTBFSkKTjks6BMCUC2o2e6
	nlQiVghiSvOFNdtHvCw1FPg98oBDRiMryzfGxmZMI9djpJH9pHp5UjQh+v5xpiYs63ki
	ZSdyPROqFqL3smitCF/puQYKz5CBwZYwoLuvA/urHco+MLdOsemIIH3SfFP1wzow16pL
	+uIc0fVSd5Joa7zHByz3AxBQOGGqh+ZxtChUK9lDc6IDADRUP4dEoXdnMOzEtTsQpH96
	1XfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pjKG3EyivjoPEhHNLMReE7OO3UgJgIh9bWdFXvoTTTY=;
	b=rdA5XDegCAydtm9lpuXG5LaVIH5XNtiPIEBgCTu7eOdFaYL5unEYRlEzt72BZI+0R8
	KQEL8Ygu4EQrfKyaH3WNIT8IE9dwAe+gIPRGg46cSPMq+smSifG9PfkxqqyE1yekEruZ
	zIOtDXEOdpyoakD575g4jqyOhd+exm+nNGeiXx5Knvi0wZ8hc5d1D7YcOZ29Rc2UeyQf
	qBT1Bt0YOAFOJBWQA/hvsTqnNpgSr+/uGLPkBJXiMjF0UTFGYY+0blXxZZAXc0sFXd9C
	ZuAeYw6F2Yp3PxGi8fszFWgbUxpwYiCFiahlBxt1GJ/8axXxD6KGMGgkcHq2hAupvHAN
	yIqg==
X-Gm-Message-State: AA+aEWZITCX5FGt+iyasEDUrSL7hfXOYYywkys/xSMXcoUZ57xFCNIHQ
	AEVIJi5IiTbkQNvN/GL1P1eVJ3XaLyrYOza1Pyk36w==
X-Google-Smtp-Source: AFSGD/V+vf2mhOGwMouMK7jLl4DrWr8E/nPLYaS3hgys9/+N56F3fgtYlZyOPLuIQowkkfcIbcr4t259Bmmeww3eL1g=
X-Received: by 2002:a17:906:1e57:: with SMTP id
	i23-v6mr12838648ejj.146.1544533937327; 
	Tue, 11 Dec 2018 05:12:17 -0800 (PST)
MIME-Version: 1.0
References: <CAKpuFdeEtgn9SFt6OsTca7zHFKDc32ORmbn69EO01P+YdybVDw@mail.gmail.com>
	<CAJTo0LZTGKxuQRQretND8S9NFHnqgX1vBkVbNMNaPgfH9K75sQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZTGKxuQRQretND8S9NFHnqgX1vBkVbNMNaPgfH9K75sQ@mail.gmail.com>
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Tue, 11 Dec 2018 14:12:06 +0100
Message-ID: <CAKpuFdfQvcqjJkM3KybkMYNrHzr60HShqCuLyDkfK4R=tcE3kg@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: Do rootfs fail when switch from rpm to deb
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
X-List-Received-Date: Tue, 11 Dec 2018 13:12:19 -0000
Content-Type: multipart/alternative; boundary="000000000000ad91f3057cbed4df"

--000000000000ad91f3057cbed4df
Content-Type: text/plain; charset="UTF-8"

Thanks, I'll look into it.

Den tis 11 dec. 2018 kl 11:55 skrev Burton, Ross <ross.burton@intel.com>:

> On Tue, 11 Dec 2018 at 09:11, Jonas Andersson
> <jonaskgandersson@gmail.com> wrote:
> > The following packages have unmet dependencies:
> >  microservicebus-node : Depends: microservicebus-node-npm but it is not
> going to be installed
> >                         Depends: microservicebus-node-npm-JSONStream but
> it is not installable
> >                         Depends:
> microservicebus-node-npm-JSONStream-jsonparse but it is not installable
> >                         Depends:
> microservicebus-node-npm-JSONStream-through but it is not installable
> > E: Unable to correct problems, you have held broken packages.
>
> I seem to recall that deb doesn't support packages with uppercase
> names.  This should have caused a warning somewhere else though.
>
> Ross
>

--000000000000ad91f3057cbed4df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, I&#39;ll look into it.=C2=A0<br></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">Den tis 11 dec. 2018 kl 11:55 skrev Bur=
ton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.co=
m</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tu=
e, 11 Dec 2018 at 09:11, Jonas Andersson<br>
&lt;<a href=3D"mailto:jonaskgandersson@gmail.com" target=3D"_blank">jonaskg=
andersson@gmail.com</a>&gt; wrote:<br>
&gt; The following packages have unmet dependencies:<br>
&gt;=C2=A0 microservicebus-node : Depends: microservicebus-node-npm but it =
is not going to be installed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Depends: microservicebus-node-npm-JSONStream but it is =
not installable<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Depends: microservicebus-node-npm-JSONStream-jsonparse =
but it is not installable<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Depends: microservicebus-node-npm-JSONStream-through bu=
t it is not installable<br>
&gt; E: Unable to correct problems, you have held broken packages.<br>
<br>
I seem to recall that deb doesn&#39;t support packages with uppercase<br>
names.=C2=A0 This should have caused a warning somewhere else though.<br>
<br>
Ross<br>
</blockquote></div>

--000000000000ad91f3057cbed4df--
