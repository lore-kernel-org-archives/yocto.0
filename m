Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9643FE00EAE; Fri, 15 Jul 2016 01:33:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52E57E00E44
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 01:33:49 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id f6so13600357ith.0
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 01:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IXbdzJGn7dx/TKsfOEIUILG7HrNtX08u88idpZXGCqc=;
	b=qw24E3nxoZvBSwEi0K95SYIIbrN0M2RivDe+JrnS26lkFnUP9MoarZn1GOH7PcrV/I
	S6JNq6iyQNs/V+8LKKA5Q0ZiBFvyNX19rtEXth0Wev81aDCKPW/1DRiKeOTore3YDuBK
	v5/PVPeoWtk2c6yvviTX8038eU3xsXbpwSwS3U6mLzE9fS7lYvR6zWG7NApXL1Vnal4D
	Vg4hozur/3ZxhBRaWRw79xEF6w93vbTWwbjXe6T8OMDsu5XLUYMdShx+Mpiobg9m7c8G
	yDHGBWBSLc0kQvfJr3TvSer+dyG2Dt/OBnYykpOYhuXlpAq7jNyGd7zM+ECZXGL8sNqn
	1N7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IXbdzJGn7dx/TKsfOEIUILG7HrNtX08u88idpZXGCqc=;
	b=FmRlR2NFSa7r1izFmRcfwqC4Wl5Hq/65dEoVNt1K+jHcsos4C0nQMsQohmJVBRAkqk
	1p92yX2xwfrwquv2HM0HLEscG3cShmxdlVGwleum3epTD4M1KP555x1VZEPn5Rla4mPH
	0cPIHDRCW1vLto8LoJWEw/KrCVqMuQx0JKK6Tx7YeNTdVwAjxvOTRDP7Rqf1vZZt6f6H
	zSG+QFXC5VawygLrq5kDXsmBooX2wW2hqX0YK1yH0DhyHAhtX4LLBlgPC1m58cH1jIeX
	RrZue4jejMO3HOksEoQcffaHCA/utKl/hBWseAIHZvxpcpWIUrlD5OWMXvCrU1VffH8H
	XDpw==
X-Gm-Message-State: ALyK8tIXNxG2K6xaBsjIlP5QZLFcjF6EieB6qbsJUkI3TQfZCDrQ4/wcnsW/DSRAXYmGvtKK9V9ezOT9G6c+hyr5
X-Received: by 10.36.57.70 with SMTP id l67mr20378236ita.22.1468571628865;
	Fri, 15 Jul 2016 01:33:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Fri, 15 Jul 2016 01:33:29 -0700 (PDT)
In-Reply-To: <CAEKp-abX0bVE0zwCm_oMrG+KSjY9TQH_fAHWLFKLmpTqEwy0OQ@mail.gmail.com>
References: <CAEKp-abX0bVE0zwCm_oMrG+KSjY9TQH_fAHWLFKLmpTqEwy0OQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 15 Jul 2016 09:33:29 +0100
Message-ID: <CAJTo0La7hUL98Ssxme6Rt-Y3Y9-OAm=W2zzwbNyeLktTb3Zc9w@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [Devtool] RPM Source Package
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
X-List-Received-Date: Fri, 15 Jul 2016 08:33:54 -0000
Content-Type: multipart/alternative; boundary=001a114a9c66448aff0537a87ab4

--001a114a9c66448aff0537a87ab4
Content-Type: text/plain; charset=UTF-8

On 15 July 2016 at 08:43, Rudolf Streif <rudolf.streif@gmail.com> wrote:

> Devtool works reasonably well with repos and packaged source tarballs. We
> did a test with a source RPM which resulted in a simple stub recipe
> although the source rpm contained an autotooled package. devtool did not
> even make an attempt to unpack the source RPM into the workspace and
> analyze the code.
>

Please file an enhancement request, it should clearly be unpacking a SRPM
and examining the internal tarball to see if it can do anything useful with
the sources.


> Are there any plans or a roadmap for devtool to support source RPMs? When
> Tizen moved from OBS to YP the developers created a Python script [1] to
> convert an OBS spec file to a YP recipe. A possible starting point.
>

To be honest I'll basically veto this: the transformation from RPM spec to
Bitbake bb is non-trivial and we'll get better results by examining the
upstream sources instead.  If you actually look at what spec2yocto
generates you'll see that it's not anything you'd wish to maintain by hand.

Ross

--001a114a9c66448aff0537a87ab4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 July 2016 at 08:43, Rudolf Streif <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:rudolf.streif@gmail.com" target=3D"_blank">rudolf.streif@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Devto=
ol works reasonably well with repos and packaged source tarballs. We did a =
test with a source RPM which resulted in a simple stub recipe although the =
source rpm contained an autotooled package. devtool did not even make an at=
tempt to unpack the source RPM into the workspace and analyze the code.</di=
v></blockquote><div><br></div><div>Please file an enhancement request, it s=
hould clearly be unpacking a SRPM and examining the internal tarball to see=
 if it can do anything useful with the sources.</div><div>=C2=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr"><div>Are there any plans or a ro=
admap for devtool to support source RPMs? When Tizen moved from OBS to YP t=
he developers created a Python script [1] to convert an OBS spec file to a =
YP recipe. A possible starting point.</div></div></blockquote></div><br>To =
be honest I&#39;ll basically veto this: the transformation from RPM spec to=
 Bitbake bb is non-trivial and we&#39;ll get better results by examining th=
e upstream sources instead.=C2=A0 If you actually look at what spec2yocto g=
enerates you&#39;ll see that it&#39;s not anything you&#39;d wish to mainta=
in by hand.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--001a114a9c66448aff0537a87ab4--
