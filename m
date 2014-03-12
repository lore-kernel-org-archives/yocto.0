Return-Path: <djwelch666@gmail.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9711E009BB
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 02:39:58 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id fb1so864823pad.1
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 02:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Sh26/3zg7J7M8ttaJIaCyvygFILJm7vrYXrMNlnYVfo=;
	b=YiO0RgydFhE5OOv9bh7e7uKKG0Wcyfz/EMBfc6y3SDa0EZNAaS77hTTY0KMRDp231G
	EHa4WiJe2KSouypZUGxAcS0uFH7QmcdCBmr8P2ZkT2vm1MS6tlJybZ8w3EqFr5peUHx0
	qoaoIjLRtkdVvNsQuL7NjVpbVQKCy7ewbh8hcB3jYStBbEDYsyvbwcFrly3s9do06B/F
	TsQsJC4UgcIzJCCuLlkL/GjHp6u5PfZiOq549o/SxBMxdFzUHTBFlvEEqhQ+NNQZKJ3S
	D9n2x/XLQNbf4MHoZZo7lMPiGqlVMannWebKQPzhLWMIgo/UYt1t/3FuhUbFgkWLtgh3
	WuKQ==
MIME-Version: 1.0
X-Received: by 10.68.12.133 with SMTP id y5mr3714305pbb.134.1394617198096;
	Wed, 12 Mar 2014 02:39:58 -0700 (PDT)
Received: by 10.68.230.199 with HTTP; Wed, 12 Mar 2014 02:39:58 -0700 (PDT)
In-Reply-To: <498C38F5E894A4499E84980494E5D95C1AA628E3@RAC-BCS-EXCHG1.rac.local>
References: <498C38F5E894A4499E84980494E5D95C1AA628E3@RAC-BCS-EXCHG1.rac.local>
Date: Wed, 12 Mar 2014 09:39:58 +0000
Message-ID: <CACP9YJeqSeDm0WPOo2_1eqL+OJ7rrkR3=5oRoxkYnSf_3+NsBQ@mail.gmail.com>
From: David Welch <djwelch666@gmail.com>
To: Kevin Evans <Kevin.Evans@rigaku.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SysVinit and psplash
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
X-List-Received-Date: Wed, 12 Mar 2014 09:39:59 -0000
Content-Type: multipart/alternative; boundary=bcaec5215f8db0b4bf04f4659ed8

--bcaec5215f8db0b4bf04f4659ed8
Content-Type: text/plain; charset=ISO-8859-1

I too found this to be a problem.  Setting console=tty2 made the messages
come out on another console and not visible on the screen.


On Mon, Mar 10, 2014 at 4:19 PM, Kevin Evans <Kevin.Evans@rigaku.com> wrote:

>  Hello all:
>
> I am using yocto denzil release with an IGEPv2 (beagle board clone). It
> appears the init is ignoring my log level being set to quite and prints the
> run level 5 messages and they appear between the splash screen and xorg
> starting.  I am not sure of the best way to suppress the text being
> displayed here. So far I have used:
>
> 1. Set loglevel=quiet in kernel commnand line (this silences the logging
> before pslash but not after.
> 2. Set the USE_VT build variable to "0". this only disabled logins through
> the VT.
>
> Not sure what to try now. Any help would be appreciated.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--bcaec5215f8db0b4bf04f4659ed8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I too found this to be a problem. =A0Setting console=3Dtty=
2 made the messages come out on another console and not visible on the scre=
en.</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On M=
on, Mar 10, 2014 at 4:19 PM, Kevin Evans <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:Kevin.Evans@rigaku.com" target=3D"_blank">Kevin.Evans@rigaku.com</a>&=
gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">




<div>
<div style=3D"direction:ltr;font-size:10pt;font-family:Tahoma">Hello all:<b=
r>
<br>
I am using yocto denzil release with an IGEPv2 (beagle board clone). It app=
ears the init is ignoring my log level being set to quite and prints the ru=
n level 5 messages and they appear between the splash screen and xorg start=
ing.=A0 I am not sure of the best
 way to suppress the text being displayed here. So far I have used:<br>
<br>
1. Set loglevel=3Dquiet in kernel commnand line (this silences the logging =
before pslash but not after.<br>
2. Set the USE_VT build variable to &quot;0&quot;. this only disabled login=
s through the VT.<br>
<br>
Not sure what to try now. Any help would be appreciated.<br>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--bcaec5215f8db0b4bf04f4659ed8--
