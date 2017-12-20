Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C299E00D7F; Wed, 20 Dec 2017 02:21:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 863A0E00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:21:44 -0800 (PST)
Received: by mail-it0-f46.google.com with SMTP id r6so6262120itr.3
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ds5LY7Lk9YrHxE2s1hX+Usl3wZiaH3ITa5Z2wFiiW+A=;
	b=ODps/mBNgMDFEg+aJ2nRAFyFMqKdbF93yiLXRe+NVRaId8UfSAkWy1Gc+fqtXZHkP/
	OkNQnf8uypO171R0hH1XmGYj7NcN53tp42Tz4sYJTtB7OqDYRZhRl+ZYOrmDRqM0Ks1T
	AIY/+70nppWGF3eRN8kBfI31jWMopIPGWxdVKgPdaqzeSGgAsQK2XEYcQIJTGEEIHfX7
	7Re+hmONUDcmsLE/y6tgVq59GvoIaX3BHhvP+QToh94rEgYBFr0QzVALKE2hwk1Rn4Eq
	4NXyRK/bPo0oLniksMDGWiqafQmvAX/4Dkprj5ZJa74JfZGxf3BG6qHVf+P1Z2MNrpm3
	Sexw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ds5LY7Lk9YrHxE2s1hX+Usl3wZiaH3ITa5Z2wFiiW+A=;
	b=j98+z8ibsNpI0Q8ih0c/G5kxNp76wk0Yyho7RGCVii17ag6PvmW2oPcrqEYTlfJBQT
	YLiMbBNTBZtSZHW8fW+/xfOfIRHwgk3hpQCsrI97uIIsp+SAqRRwMAzD4lrzvc8y4YcR
	Za1Ej9fWfNUy2fukalQjyIJTLzTryVNy5Oju7m3hTylWMIMXn3dWZcewlf5tsMRqLHx0
	uW4Ue24Srre8bsqcdvXLpne+BrJwuE79V7VZA1Wtyud+xABk7FhP0O/ThgldxgW074ed
	CnlY2wY5Ly5jEnj8SJgnTcrH8gVbGMed8iEMTjKWzk9WkXJdpuSehUzUpRE8D4mUvI0W
	Xjdg==
X-Gm-Message-State: AKGB3mK9ddGoDcr1dEWd7inKnNcvmp+E2Vfyrah1zEzPoBOKr8REkXQh
	rpVsvrrWuvOGuFLpTLAk6/ods7RUaGibjLea1Jmi5w==
X-Google-Smtp-Source: ACJfBoswPqEDYo5iTYUkbvhDRRGMDLGm97Kr8nhqxqDbgnTqczLL8HHJ6cSGUD2mjTFCKlaC/DW0REVheHivRr9LS2o=
X-Received: by 10.36.80.148 with SMTP id m142mr7397069itb.6.1513765303705;
	Wed, 20 Dec 2017 02:21:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.141.20 with HTTP; Wed, 20 Dec 2017 02:21:22 -0800 (PST)
In-Reply-To: <CAGAf8LwXHuc6NEm+w6J40AZnSpspce=cvzzxbs956FSpq_vHUw@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
	<CAGAf8LzbvdQ3HaYnkojw3TrQdUdOgZQ123kfZqe_8D+nw7YzwA@mail.gmail.com>
	<CAGAf8LwXHuc6NEm+w6J40AZnSpspce=cvzzxbs956FSpq_vHUw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Dec 2017 10:21:22 +0000
Message-ID: <CAJTo0Laszwz11hoTQ72MRyw=8ovHcbMqS=dcsuqX_3T3D41joQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rfkill cannot open control device
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
X-List-Received-Date: Wed, 20 Dec 2017 10:21:45 -0000
Content-Type: multipart/alternative; boundary="001a114387b8337fbd0560c2f376"

--001a114387b8337fbd0560c2f376
Content-Type: text/plain; charset="UTF-8"

On 20 December 2017 at 10:18, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > IMAGE_INSTALL_append += "rfkill" (my best guess, easiest way).
>
> My bad! :-(
>
> Should read: IMAGE_INSTALL_append += "Bluez5"
>

Typo in the package name, no need to use += with _append, and missing
whitespace.  No, that won't work.

IMAGE_INSTALL_append = " bluez5"

Ross

--001a114387b8337fbd0560c2f376
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 20 December 2017 at 10:18, Zoran Stojsavljevic <span di=
r=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_b=
lank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<br><div class=3D"=
gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; IMAGE_INSTALL_append +=
=3D &quot;rfkill&quot; (my best guess, easiest way).</span><br><div><span s=
tyle=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:12=
.8px">My bad! :-(</span></div><div><span style=3D"font-size:12.8px"><br></s=
pan></div><div><span style=3D"font-size:12.8px">Should read:=C2=A0</span><s=
pan style=3D"font-size:12.8px">IMAGE_INSTALL_append +=3D &quot;Bluez5&quot;=
</span></div></div></blockquote><div><br></div><div>Typo in the package nam=
e, no need to use +=3D with _append, and missing whitespace.=C2=A0 No, that=
 won&#39;t work.</div><div><br></div><div>IMAGE_INSTALL_append =3D &quot; b=
luez5&quot;</div><div><br></div><div>Ross</div></div></div></div>

--001a114387b8337fbd0560c2f376--
