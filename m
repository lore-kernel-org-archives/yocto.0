Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA2B8E00CE9; Fri, 11 Mar 2016 01:50:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4638DE00929
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 01:50:27 -0800 (PST)
Received: by mail-ig0-f171.google.com with SMTP id ig19so7081045igb.0
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 01:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ze8X+YLcOhCeZFqy/0lSo8lnIFHGmnLtDmjDZv17RaM=;
	b=kXHKHUAdt0PdQGU/t+xZGPemVMLRdZqiUw336xV8qkqhEzum0xXgXdFycV9PqQJRS8
	BLDS+BqlS5KOkOtxNOiezgVEdACEIiGgyxE40cdkWOgHV0MfFzfI8QJ2SB04DYR23cvS
	sw3cAf95Z1JvAbphCGd43ip/gqtoEyXUImGG9u+NsnuzB7hTIWuWyOyEQXWXcUSoipJ7
	cZuADO1sQy/6CyCEe6evtpDlsYcnqwz6mNui+dmLeWwVXfxfwwj9NeJMWt098iPHnWyV
	o43C/HsDuNrrX6V92vHs9s0c/3oelcRmzuKKiFLs2gSpk2/T8Y5zBKUD5yEhjsyUSqfA
	Y6pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ze8X+YLcOhCeZFqy/0lSo8lnIFHGmnLtDmjDZv17RaM=;
	b=bcS6PyhV/Cga7+9lV/ml1qZY56bAjdULhpJd/B0QzAaLPMX8ap/HUO5nuYb6c0mIRz
	9glk2Sr9SflnWluJ2CVUQvzo0b4KZpx61kscrWve9KDwlrzvTk0+2nsDsQj/Wk0+KWA8
	LkypQoEhUiGO7WWGMZCxF9VlJr99e7mMp/2XYM0maqBAcEvm08U7gf4PEGDvSeIN4z1I
	dFB9LapSXRxfwS4DVdP2RYy0Ca2PGdJDt3z3N353bty87XCnwoUpdjeMMkGYhDypPYQN
	FvdpAIgi61DcO38sTbwhLRSjbQH4F+AfcnqaKPK+/z2qLgcMCPcSAzEDV3+nul/ICB90
	878A==
X-Gm-Message-State: AD7BkJKIPpiSx83y9JZ8uk93GvJNXQqkZklJRlAyry4bkbG3aqH1vPiOQSWj4JUhQ9Ers1rA4svM2cUMGbLoDSr1
X-Received: by 10.50.97.71 with SMTP id dy7mr1929563igb.78.1457689827337; Fri,
	11 Mar 2016 01:50:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 11 Mar 2016 01:50:08 -0800 (PST)
In-Reply-To: <56E293BD.1080009@konsulko.com>
References: <56E293BD.1080009@konsulko.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 Mar 2016 09:50:08 +0000
Message-ID: <CAJTo0LZDKBYHmKHH56MJESEcpj1KZuDpDOcEBYNRT0JQNnGwEw@mail.gmail.com>
To: Leon Anavi <leon.anavi@konsulko.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nettle from release Fido fails to build
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
X-List-Received-Date: Fri, 11 Mar 2016 09:50:29 -0000
Content-Type: multipart/alternative; boundary=047d7b10cfc15a0cb6052dc2dce3

--047d7b10cfc15a0cb6052dc2dce3
Content-Type: text/plain; charset=UTF-8

On 11 March 2016 at 09:45, Leon Anavi <leon.anavi@konsulko.com> wrote:

>
> Yesterday I noticed that the build of recipe nettle 2.7.1 from release
> Fido fails:
> https://gist.github.com/leon-anavi/dfd3afab567a9dc9fa2f
>

Theres a patch from a few days ago on this list to fix the issue:
http://patchwork.openembedded.org/patch/117355/.

Ross

--047d7b10cfc15a0cb6052dc2dce3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 March 2016 at 09:45, Leon Anavi <span dir=3D"ltr">&lt;<a href=3D"mail=
to:leon.anavi@konsulko.com" target=3D"_blank">leon.anavi@konsulko.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex"><br>
Yesterday I noticed that the build of recipe nettle 2.7.1 from release Fido=
 fails:<br>
<a href=3D"https://gist.github.com/leon-anavi/dfd3afab567a9dc9fa2f" rel=3D"=
noreferrer" target=3D"_blank">https://gist.github.com/leon-anavi/dfd3afab56=
7a9dc9fa2f</a><br></blockquote></div><br>Theres a patch from a few days ago=
 on this list to fix the issue:=C2=A0<a href=3D"http://patchwork.openembedd=
ed.org/patch/117355/">http://patchwork.openembedded.org/patch/117355/</a>.<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</=
div></div>

--047d7b10cfc15a0cb6052dc2dce3--
