Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12EDCE007B5; Tue, 15 Mar 2016 14:18:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BECFCE0071E
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 14:18:07 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id z76so40257763iof.3
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 14:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=RTFRqFC2GP2z7yym+eSIWZD7BqYGoO3zEUPnUdCFHGw=;
	b=WtT+rfHzVc9Vl6HU5gVaijU++xQGN/CitGfiOmwHJzm2EXCZJ9NiVuz+MGtj7MIHAT
	fQPpGsrlHRBbxKOAkihEAY9mCuaIg1N8iFHEWped8RP3SN/RZSDTIa5hZsvWlUMV4vRY
	IGtN1BAZULKBM4TEt/b74r3BeBLoQvHm6a6iuri0f9PupVyWO2iqD+3I0QaBP7NR0LFd
	Hkl177zDMoBOWgug/s5iqQmF8iHzI7CIFR/sja6PIj3ufyJlPPtXlPd3BORjT6eAhD+T
	cxgdlgLmdcskCQCmuAd9OevIKQRyjCnqnF9Wq0JbtYT0WM1ovSmYcs/NW8Qn/0+3+7Xu
	OFLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=RTFRqFC2GP2z7yym+eSIWZD7BqYGoO3zEUPnUdCFHGw=;
	b=QpOM21AKV0Dgd/Jolda9KNRIc+jGpGmgCXiYaeh3Y+RKkAXURG9dE0bsTT4vLaugq3
	/SYiQ13KKr+ULXqxD3We4lz4oA+mILJZH+t3iqcWTUrbirmSZmYk3U9ibvWOuU3zPE2J
	uZyI5m628Y2vGNhK5kPo8nCU5Umn4c+xUpuJBRssUFTwXEkOqgCmsPnfEWWKjASNmcZp
	Eh1Ghhy3MBrgdH5b2Z3iqJLxCnYtnQ8skIhvx6fvyDEYkGE20Safl+IFPPW75+TyNSLJ
	bPxPe+6PPO1/m6pBofpGPgcuWeVXDOl4pnV+bv3WBhlunfv0gbdrylbHRv59PdbRft8w
	IAcg==
X-Gm-Message-State: AD7BkJLH2uEjZrwXvc66xfb9oB+pXNjH6Bbq+rXNoEYM6V9BLAf+7h71C5W8mOHHIthgtS8LYssRP3ri57Or7g==
X-Received: by 10.107.169.68 with SMTP id s65mr886621ioe.126.1458076686795;
	Tue, 15 Mar 2016 14:18:06 -0700 (PDT)
MIME-Version: 1.0
References: <AFBE2F12-5F5E-4982-BB3D-65C7D390485F@keylevel.com>
In-Reply-To: <AFBE2F12-5F5E-4982-BB3D-65C7D390485F@keylevel.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Tue, 15 Mar 2016 21:17:57 +0000
Message-ID: <CABcZAN=1oP=SQ3cHYOjbOxzLOTdfX_rxtpf-t+xpv8OnV86fmA@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Starting Pulseaudio automatically
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
X-List-Received-Date: Tue, 15 Mar 2016 21:18:10 -0000
Content-Type: multipart/alternative; boundary=001a11422688f8cb95052e1cee8f

--001a11422688f8cb95052e1cee8f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 15, 2016 at 2:06 PM Chris Tapp <opensource@keylevel.com> wrote:

> I=E2=80=99ve got an X11 application which uses Pulseaudio. Everything wor=
ks as
> expected when built under =E2=80=9Cdaisy=E2=80=9D (Pulseaudio 5), but the=
 same system built
> under =E2=80=9Cjethro=E2=80=9D (Pulseaudio 6) fails as Pulseaudio doesn=
=E2=80=99t start
> automatically.
>
> It looks like this is down to a difference in start-pulseaudio-x11. The
> following is present in =E2=80=9Cdaisy=E2=80=9D:
>
>    pulseaudio --start
>
> but this isn=E2=80=99t there in =E2=80=9Cjethro=E2=80=9D. Adding this lin=
e makes Pulseaudio start
> as expected, allowing the application to run.
>
> Why was this removed in Pulseaudio 6? Is it supposed to be started anothe=
r
> way?
>

Pulseaudio will autostart when the apps use it, on demand, nowadays. There
should be no need to start it in a startup script, afaik.

--001a11422688f8cb95052e1cee8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 15=
, 2016 at 2:06 PM Chris Tapp &lt;<a href=3D"mailto:opensource@keylevel.com"=
>opensource@keylevel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">I=E2=80=99ve got an X11 application which uses Pulseaudio. Everything =
works as expected when built under =E2=80=9Cdaisy=E2=80=9D (Pulseaudio 5), =
but the same system built under =E2=80=9Cjethro=E2=80=9D (Pulseaudio 6) fai=
ls as Pulseaudio doesn=E2=80=99t start automatically.<br>
<br>
It looks like this is down to a difference in start-pulseaudio-x11. The fol=
lowing is present in =E2=80=9Cdaisy=E2=80=9D:<br>
<br>
=C2=A0 =C2=A0pulseaudio --start<br>
<br>
but this isn=E2=80=99t there in =E2=80=9Cjethro=E2=80=9D. Adding this line =
makes Pulseaudio start as expected, allowing the application to run.<br>
<br>
Why was this removed in Pulseaudio 6? Is it supposed to be started another =
way?<br></blockquote><div><br></div><div>Pulseaudio will autostart when the=
 apps use it, on demand, nowadays. There should be no need to start it in a=
 startup script, afaik.</div></div></div>

--001a11422688f8cb95052e1cee8f--
