Return-Path: <wmat@alphatroop.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5204CE006CC
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 11:56:55 -0800 (PST)
Received: by mail-ia0-f176.google.com with SMTP id y26so4138525iab.35
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 11:56:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=FtmgMBU3V6Jvt1WZO2epYCYiOSocHB9J1dczi0YsE/M=;
	b=WimjMloErRhvKo3bgyMo3mLwpP/wifm/TKYB19Kn8zOHhL4NVaFaF4JyPb3zbMje9w
	F6APn86csqDhIpvBCyv0tJzXBar4M5/V4yp3kgQfFBdcf1Vvr4z/HW/rrUHwDMjgzUaU
	OdMJKvZKD0psuCpkrkUXNpJPM9zXznsdV0ZgVCpUKP2kREIugi9wK6qfYIsdmDmf2IGf
	J+JLCm/QFfW7LZyIdyTNd4yloo8kg4hXLzlb+1Ktto40zZNGJNcAkai320+7ycIvwl60
	Y7c4x6CBhitkoGSWhURadsb5c8ZFWIusWZHaAX/VbFtJngW7ZZPeRtqLd8sXTblyfBgZ
	dbyw==
Received: by 10.42.51.207 with SMTP id f15mr7610877icg.16.1355601414754; Sat,
	15 Dec 2012 11:56:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.169 with HTTP; Sat, 15 Dec 2012 11:56:34 -0800 (PST)
X-Originating-IP: [24.246.30.132]
In-Reply-To: <CAHUNapTyXw4kheb78nKS8dKo=U-=h2O1XxU77=+-zC76082hiw@mail.gmail.com>
References: <alpine.DEB.2.02.1212130857190.5702@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCE36@ORSMSX101.amr.corp.intel.com>
	<CAHUNapTyXw4kheb78nKS8dKo=U-=h2O1XxU77=+-zC76082hiw@mail.gmail.com>
From: Bill Traynor <wmat@alphatroop.com>
Date: Sat, 15 Dec 2012 14:56:34 -0500
Message-ID: <CAGfZjq70CU=Yn0KYxVU7SXPj3VeFT_qVsDbGEbrw6Pde4Dv3Fw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQnQviFJ6tKWoR2jlA5T2lYfnPxoRkX/XVBQtvItESICWnSL42A9Uh54dzbLPAQ2LOqkqzI+
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bitbake user manual vs mega manual, and more info on local file fetcher?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 15 Dec 2012 19:56:55 -0000
Content-Type: multipart/alternative; boundary=20cf301cc2c8c8929e04d0e98c64

--20cf301cc2c8c8929e04d0e98c64
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Dec 15, 2012 at 10:53 AM, Trevor Woerner <twoerner@gmail.com> wrote:

> On Thu, Dec 13, 2012 at 10:18 AM, Rifenbark, Scott M
> <scott.m.rifenbark@intel.com> wrote:
> > we are revising the BitBake manual as part of the YP 1.4 release
>
>
> Personally I think it would be great if the bitbake documentation
> could be updated to include some of the information from Eren's
> document as well. Eren provides a "hands-on" demonstration of how
> bitbake works (and how to work with bitbake). The current
> documentation reads more like a dictionary (which is great if someone
> is looking for a dictionary-like treatment of bitbake).
>

I assume you're referring to Eren's blog post:
http://hambedded.org/blog/categories/bitbake/

I'll be doing the bitbake manual update and will integrate similar
information into the manual, or perhaps as new document in addition to the
Bitbake manual.


> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--20cf301cc2c8c8929e04d0e98c64
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat, D=
ec 15, 2012 at 10:53 AM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</span=
> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On Thu, Dec 13, 2012 at 10:18 AM, Rifenb=
ark, Scott M<br>


&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.=
com</a>&gt; wrote:<br>
&gt; we are revising the BitBake manual as part of the YP 1.4 release<br>
<br>
<br>
</div>Personally I think it would be great if the bitbake documentation<br>
could be updated to include some of the information from Eren&#39;s<br>
document as well. Eren provides a &quot;hands-on&quot; demonstration of how=
<br>
bitbake works (and how to work with bitbake). The current<br>
documentation reads more like a dictionary (which is great if someone<br>
is looking for a dictionary-like treatment of bitbake).<br></blockquote><di=
v><br></div><div>I assume you&#39;re referring to Eren&#39;s blog post: =A0=
<a href=3D"http://hambedded.org/blog/categories/bitbake/">http://hambedded.=
org/blog/categories/bitbake/</a></div>

<div><br></div><div>I&#39;ll be doing the bitbake manual update and will in=
tegrate similar information into the manual, or perhaps as new document in =
addition to the Bitbake manual.</div><div>=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-le=
ft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">


<div class=3D""><div class=3D"h5">_________________________________________=
______<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--20cf301cc2c8c8929e04d0e98c64--
