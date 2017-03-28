Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 460EBE00524; Tue, 28 Mar 2017 15:43:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.177 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA01AE004E5
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 15:43:58 -0700 (PDT)
Received: by mail-qt0-f177.google.com with SMTP id n21so77190104qta.1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 15:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jIOMgI4eRjV1rpVFhGTz3eVDgOPjPTkosEuipmRFfFY=;
	b=yxjVhfVT12w8x8VpXSHRFne/dDgImBXD2wzlUMn767TxHiHkn3iXbakbVRizEPmepN
	NX/bRFZqyNzLxC1+AW+yp9naQJxTh2GRLTZAyuUeew+/CM0YBITTkKiLVHAOabFREU6u
	gl6xFO9FscTHJggmosd0p6rLtWm/cGfN+QV6A8aKbJ/18Ri24L5g3+y3wjuARmjymp4j
	139EeChXRaCk1wDdH4KvzWjbJCoPmE5HZrNnV948us/5CrIi99JVypk4eVnQ2mkoeqwN
	gJrjfEqWaJlRLGLrx5FyHz7K6Kq7tsSAUrmlOWX+elEFMGyvPFrzcy9cUCM8HenSCrSw
	RBVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jIOMgI4eRjV1rpVFhGTz3eVDgOPjPTkosEuipmRFfFY=;
	b=KkiWr2NDsGgmy9mL0l5c1BhxRVXA5L2S1vg2sbke/uRij/MeVGV0ZlN+7k3ijj6r33
	PJ0V8UYPhi//PNW4p4lbb3TOQzAmgYBpeMrIf8ck8p53N9PwIxYFY7y5burFs4d5h72K
	uA4SbYKPAGRY/La7xOZai5GZ9SXQCAapP+dJQXKt1//vEzdQcyRWxvrr/gdjZJyQ3Btg
	1OKVFiOmZjbzO+lhQdlulLf4e8uZT3wzoLgdPkdUT64xEGfxdib7sh7VtZDXEOEUiU5G
	Kd13LMYgja0zfqK/JEmnnQLZ19jwxyO8mhAm3qGzv0QtA/z3NB8KzAEnHuabQEEZxGV4
	FTdQ==
X-Gm-Message-State: AFeK/H0WbvDEZKX9wsQjmCqKiY7ZabKvrzUB34Gq8S5whH5yH//w4V8+dodXM9bzJSnH9fZiufc1jr8ShcocVW6d
X-Received: by 10.200.2.150 with SMTP id p22mr31501946qtg.197.1490741037718;
	Tue, 28 Mar 2017 15:43:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 28 Mar 2017 15:43:37 -0700 (PDT)
In-Reply-To: <CAOsmwBQnbywO8SNhtHviL5=DxkCKHr4MoANx7JPR0abPaMHYKQ@mail.gmail.com>
References: <CAOsmwBR47gfDH-mQ5ej7vzn9xJSeB=OM=pv9X06-smxgKkKX6A@mail.gmail.com>
	<CAJTo0LZFhn+df6_x+AnMaU7CT3s38cPfweV2K+M18AiLjy0z9Q@mail.gmail.com>
	<CAOsmwBQnbywO8SNhtHviL5=DxkCKHr4MoANx7JPR0abPaMHYKQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Mar 2017 23:43:37 +0100
Message-ID: <CAJTo0LZyXuVLLpeEQsgqn0pswfFO0m9HBLfg81MLH24+0oFxJw@mail.gmail.com>
To: Alvaro Garcia <maxpowel@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NVIDIA Drivers
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
X-List-Received-Date: Tue, 28 Mar 2017 22:43:59 -0000
Content-Type: multipart/alternative; boundary=f4030435c234019694054bd2326b

--f4030435c234019694054bd2326b
Content-Type: text/plain; charset=UTF-8

On 28 March 2017 at 23:41, Alvaro Garcia <maxpowel@gmail.com> wrote:

> Then I installed the image into my device. Everything worked as expected
> but the nouveau driver. Is this correct or I forgot some step?
>

I'd check that the package actually exists in your rootfs - use the package
manager to verify this.  It should be there but I've never used nouveux.
Beyond that the driver is installed so maybe you need to adjust xorg.conf.

Ross

--f4030435c234019694054bd2326b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 March 2017 at 23:41, Alvaro Garcia <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:maxpowel@gmail.com" target=3D"_blank">maxpowel@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">Then I installed the image into=
 my device. Everything worked as expected but the nouveau driver. Is this c=
orrect or I forgot some step?<br></blockquote><div><br></div><div>I&#39;d c=
heck that the package actually exists in your rootfs - use the package mana=
ger to verify this.=C2=A0 It should be there but I&#39;ve never used nouveu=
x.=C2=A0 Beyond that the driver is installed so maybe you need to adjust xo=
rg.conf.</div><div><br></div><div>Ross=C2=A0</div></div><br></div></div>

--f4030435c234019694054bd2326b--
