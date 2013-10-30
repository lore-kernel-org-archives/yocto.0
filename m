Return-Path: <b.hutchman@gmail.com>
Received: from mail-ea0-f173.google.com (mail-ea0-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5A90E0175F
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:45:22 -0700 (PDT)
Received: by mail-ea0-f173.google.com with SMTP id g10so715869eak.4
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LgGOJfOmKF0odHslUUK2gt6z/+yHwkYItyX5mGwuNBY=;
	b=qulAibgqu2xk5sDqC5p8+sWNClfNR6vlhPzdEmcub0eXs+1DADyQ7ao9LhIZXGbGof
	vmTLUGH+VfxhcQcSLp8+ksI2UeIT5XKEcoV4pLvSUyu3KcZSXGEr1ZqIidpG+rcJ99wo
	xFSd8GSiDsEyVJIjSXwf69bcf/GHy3fOCczLz3WQiBJTPt/dhFLFSZ8dwh3ORBAa7qb6
	oAESU/qef+rRSVveo8XKInoDY/WhNdk57/uHQRhPT0oIpLMKM5XGNhnjd2un2mS5YxSA
	EdBRwJlRdd4hnVMYenRacsBQy/Dbv38PadR6LBXwnHkge0xBP2phPhGxMNcnF2T5HqxE
	gO5g==
MIME-Version: 1.0
X-Received: by 10.14.203.70 with SMTP id e46mr5397511eeo.33.1383144320972;
	Wed, 30 Oct 2013 07:45:20 -0700 (PDT)
Received: by 10.223.170.195 with HTTP; Wed, 30 Oct 2013 07:45:20 -0700 (PDT)
In-Reply-To: <20131030144108.GA1061@lpalcu-linux>
References: <CAFZh4h8aKoop0wdU7THaBD6+5FnEgfPKW0zM_-wqpOOcLgXdsg@mail.gmail.com>
	<CAFZh4h-ULci3FhdeNJDE1zEFRqAQpwVJyLY95-PVW0z2sQFGHQ@mail.gmail.com>
	<20131030054112.GA23839@lpalcu-linux>
	<CAFZh4h_oN02R_Z2ymVd6Df0RRnyWichQAD0dtvarUefd4k_eSQ@mail.gmail.com>
	<20131030133451.GA25490@lpalcu-linux>
	<CAFZh4h_fdSXqN5KoacQn9FfTjLNAC4UijS3eM2HPd+eHXMXdew@mail.gmail.com>
	<20131030144108.GA1061@lpalcu-linux>
Date: Wed, 30 Oct 2013 10:45:20 -0400
Message-ID: <CAFZh4h8G1MAbr45-gU1cs=FgrgJdyiGDAYzCU5AsprNFqeE6hw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting a relocate_sdk.py issue when installing a sdk on Centos
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
X-List-Received-Date: Wed, 30 Oct 2013 14:45:23 -0000
Content-Type: multipart/alternative; boundary=047d7b3440f4ecbb6b04e9f66158

--047d7b3440f4ecbb6b04e9f66158
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Oct 30, 2013 at 10:41 AM, Laurentiu Palcu <laurentiu.palcu@intel.com
> wrote:

>
> > Helps to read the release notes ... I wonder if I shouldn't also make
> folks
> > with these older Centos boxes also install buildtools-tarball so
> everyone has
> > the same rev of Python etc.  That might make the SDK install go better
> too.
> If those folks are just users of the SDK then I don't think this is
> necessary, provided that the one that generated the SDK tarball had the fix
> installed.
>
>
Yes, they are just using the generated SDK.

Thanks for putting me onto this patch, I'm looking at it now.

Regards,

Brian

--047d7b3440f4ecbb6b04e9f66158
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Oct 30, 2013 at 10:41 AM, Laurentiu Palcu <span dir=3D"ltr">&lt;<a href=
=3D"mailto:laurentiu.palcu@intel.com" target=3D"_blank">laurentiu.palcu@int=
el.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; Helps to read the release notes ... I wonder if I shouldn&#39;t also m=
ake folks<br>
&gt; with these older Centos boxes also install buildtools-tarball so every=
one has<br>
&gt; the same rev of Python etc. =A0That might make the SDK install go bett=
er too.<br>
</div></div>If those folks are just users of the SDK then I don&#39;t think=
 this is<br>
necessary, provided that the one that generated the SDK tarball had the fix=
<br>
installed.<br>
<br></blockquote><div><br></div><div>Yes, they are just using the generated=
 SDK.<br><br>Thanks for putting me onto this patch, I&#39;m looking at it n=
ow.<br><br>Regards,<br><br>Brian<br>=A0<br></div></div><br></div></div>

--047d7b3440f4ecbb6b04e9f66158--
