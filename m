Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D3CDE01440
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 01:26:46 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id jy13so714135veb.19
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 01:26:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Pml3FnKwPfazqZocst8lXw6Dw53c4J23LJfXM2S6oaA=;
	b=MyW0FvJ1gjA8iXhgOG4VSQm3Da0M4Z2J/n+SuLCnAYEyAN80vF6MnSPJzZPSN78bMk
	J/RxnLAzvJlXeVDAHZ0CUQMCsYsoC2LsKBH9teaod1flbgSPNhDYILUWorqMxnu5WIBS
	IjBHduXe2Zd8MHnNoBz5di2io8UIdKfqK1U3xLh0IcD/VgT6Q912t0TTAczOpOSVUbxM
	Ij6vjF1a/ot1RzCBolhEcij7NgPwAEGnLULzlxai/cqoJAz2D8EgqfbaHB3S5WQR4sQG
	SaDxkPn2C4NwdB3YMjtbQV7mOaap3m9OqKrhDJXQz+mGfyDXiphAsJ2EtBjRsRj7Zh9W
	EXpQ==
X-Gm-Message-State: ALoCoQk8cmN0gMquG41MeFGl0260qYBg3PYkWICqMTBmLmu2MrtEIkz0zB7WggyYXW0BDSkdA4X1
X-Received: by 10.220.46.72 with SMTP id i8mr11032764vcf.10.1379060806022;
	Fri, 13 Sep 2013 01:26:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Fri, 13 Sep 2013 01:26:25 -0700 (PDT)
In-Reply-To: <A790EB169C7F954ABA26B79E28628A62A600B0B3@TAIMBX1.dmntai.intra>
References: <A790EB169C7F954ABA26B79E28628A62A600B0B3@TAIMBX1.dmntai.intra>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 Sep 2013 09:26:25 +0100
Message-ID: <CAJTo0LZgpsPtoBcWztP_mMPnX9RnMO6p_kLFngDowNznSfsKPQ@mail.gmail.com>
To: =?UTF-8?Q?Serdar_Topalo=C4=9Flu?= <stopaloglu@tai.com.tr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: working with less known x86 compatible CPUs
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
X-List-Received-Date: Fri, 13 Sep 2013 08:26:47 -0000
Content-Type: multipart/alternative; boundary=001a11c2c6747791ca04e63f9d72

--001a11c2c6747791ca04e63f9d72
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 13 September 2013 08:54, Serdar Topalo=C4=9Flu <stopaloglu@tai.com.tr> w=
rote:

> **
>
> Is there any compatibility problem in Yocto Linux with less popular x86
> compatible CPUs like Vortex86DX, AMD Geode LX800, AMD T44R, VIA Eden,  et=
c
> ? Now they are getting popular in different form factor SBCs as PC/104,
> PC/104+, ComExpress,etc. Especially, can I use Vortex86DX CPUs in my yoct=
o
> linux based projects without problem? We are currently working with Intel
> Atom n450 without problem.
>

You'll probably want to create a specific machine for your target hardware
so that the kernel and gcc are tuned appropriately, but there's no known
compatibility problems with any x86 processors as far as I'm aware in Yocto
itself, assuming the kernel and gcc themselves have no problems.

Ross

--001a11c2c6747791ca04e63f9d72
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On 13 September 2013 08:54, Ser=
dar Topalo=C4=9Flu <span dir=3D"ltr">&lt;<a href=3D"mailto:stopaloglu@tai.c=
om.tr" target=3D"_blank">stopaloglu@tai.com.tr</a>&gt;</span> wrote:<br><di=
v class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"><u></u></p>
<p class=3D"MsoNormal">Is there any compatibility problem in Yocto Linux wi=
th less popular x86 compatible CPUs like Vortex86DX, AMD Geode LX800, AMD T=
44R, VIA Eden, =C2=A0etc ? Now they are getting popular in different form f=
actor SBCs as PC/104, PC/104+, ComExpress,etc.
 Especially, can I use Vortex86DX CPUs in my yocto linux based projects wit=
hout problem? We are currently working with Intel Atom n450 without problem=
.</p></blockquote></div><br>You&#39;ll probably want to create a specific m=
achine for your target hardware so that the kernel and gcc are tuned approp=
riately, but there&#39;s no known compatibility problems with any x86 proce=
ssors as far as I&#39;m aware in Yocto itself, assuming the kernel and gcc =
themselves have no problems.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--001a11c2c6747791ca04e63f9d72--
