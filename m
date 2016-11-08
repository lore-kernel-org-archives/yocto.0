Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63DD6E00828; Tue,  8 Nov 2016 04:48:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AFBEE007A2
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 04:48:32 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id n204so204350589qke.2
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 04:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Qx0t3J4OgpBfls6sw6OjvfmDUWwY053SiHuq03VAYs8=;
	b=wczKRgQpEjqEzAsjfw67ZwuWsYMNco5a+TSNaMrO0/q0WWmYk+6TB6BAk6qiMon2zT
	KHL2WqfyNHj/mJMG5WuPtDsGii8zRkUyfirTMzi4FuTmg5w77+N64idgAOxZbMc0uORD
	onUZPg7hbmu5LJT8Fo7J8j0tjOo4FSt+4byojc21HdOMwXtn8zqFXIJPyRnBaNvhOWmp
	Mc9NXOeeCIjUg3CBAEbhI4pC/M+WgoKTlax+i3jwTUPD49qO/WEcit0t6uF2tdH6hzhU
	TFZvD3Bolcfl/GUjj0felx8bRDnMW/eKm2KBLGIjkPI9wvdvH8Bw9sUZj8ZwOx0cAHZ4
	GzGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Qx0t3J4OgpBfls6sw6OjvfmDUWwY053SiHuq03VAYs8=;
	b=J8vODPI9JOzgL3ziEB4/8cyY4q8Fkls2hCxigb1mgsQ9ItyOAX/CQOn8DqxyaPaRJG
	yj29YN7UYQda8ZNLs/YIZRKZt54LacnBH+6VEgvE4awj5aS+l4uFKTLfK9l9TAKArpN1
	Ome8aKsuWTVedCXy1xhHAvyyiJGV+XACMjil4EJ1vIb+0ZuOTfaaQIeeEAoHiMkTiWyD
	/JCxqGSSl7MxtKtdIrzZ7hnYsStsJkcyhc9V90oCYlwbzhMBsc8ejp960++SO5wFD+NN
	JWt6puJ29ZoepHi8IfLmbeoCWOjcEo+SU4hU750vlUW8JV6x4fhhPMjNSUCmEVPVYnOR
	4Ycg==
X-Gm-Message-State: ABUngvdRXTNSSxBO7M6/rzI02qbghIPWj4cYF/YoD6zFIsaGIa9V821st5ccj1G66aLOZAhxcf/tVDii3Mi16dnp
X-Received: by 10.55.8.20 with SMTP id 20mr13380949qki.3.1478609311891; Tue,
	08 Nov 2016 04:48:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Tue, 8 Nov 2016 04:48:11 -0800 (PST)
In-Reply-To: <D01FE3D2-B0DF-413E-BED4-DD4CE1AE1E11@cisco.com>
References: <3B7E27B6-76D5-460D-BE78-33E49D04BED0@cisco.com>
	<CAJTo0LYtibhhgeSAC27yHzNL8hYu6HpBzKZDvB+k4nv26V+FKw@mail.gmail.com>
	<9C7FDD6C-4BD2-449B-96A1-6540B53D23A8@cisco.com>
	<CAJTo0LYXd=9bDWk_TB_ioZ96GY2gt31AxHR4w47sPdwPSo7VEA@mail.gmail.com>
	<D01FE3D2-B0DF-413E-BED4-DD4CE1AE1E11@cisco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 8 Nov 2016 12:48:11 +0000
Message-ID: <CAJTo0LY5xqyow8J5WgeweohaWw82ug9Uh7pOXMHbHnLDKqXXNw@mail.gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: cmake version 3.0.0 or greater
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
X-List-Received-Date: Tue, 08 Nov 2016 12:48:35 -0000
Content-Type: multipart/alternative; boundary=001a114c9d60cc60280540c98e99

--001a114c9d60cc60280540c98e99
Content-Type: text/plain; charset=UTF-8

On 8 November 2016 at 12:43, Dinh Nguyen (dinhn) <dinhn@cisco.com> wrote:

> Right, and I am trying to upgrade to 3x version.  Would you please tell me
> which cmake patch or recipe  that I can use to upgrade to 3.x version for
> Dizzy?
>

What you said:

> I found  git://git.openembedded.org/openembedded-core has version  3.6.x
> So I tried to pull it in. But this version got a trace back when
integrated to our SDK Yocto Dizzy.

Take the recipes from master, copy the changes to dizzy, then fix any
problems caused by taking recipes from now and applying them to a two year
old release.

Ross

--001a114c9d60cc60280540c98e99
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 November 2016 at 12:43, Dinh Nguyen (dinhn) <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:dinhn@cisco.com" target=3D"_blank">dinhn@cisco.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex"><div>Right, and=C2=A0I am trying to upgrade=
 to 3x version.=C2=A0 Would you please tell me which cmake patch or recipe =
=C2=A0that I can use to upgrade to 3.x version for Dizzy?</div>
<div></div></blockquote></div><br>What you said:</div><br>&gt; I found =C2=
=A0git://<a href=3D"http://git.openembedded.org/openembedded-core">git.open=
embedded.org/openembedded-core</a> has version =C2=A03.6.x <br>&gt; So I tr=
ied to pull it in. But this version got a trace back when integrated to our=
 SDK Yocto Dizzy.<br><br><div>Take the recipes from master, copy the change=
s to dizzy, then fix any problems caused by taking recipes from now and app=
lying them to a two year old release.</div><div><br></div><div>Ross</div></=
div>

--001a114c9d60cc60280540c98e99--
