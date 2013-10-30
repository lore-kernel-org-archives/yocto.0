Return-Path: <b.hutchman@gmail.com>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65885E017B0
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 06:19:57 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id d41so641604eek.10
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 06:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LUsRs0yxSe18of3cNUhj1jq0ZK3atCtmhR6BreAyRUI=;
	b=mcRN40f0ReXgNIguhH2z05HBPNdbfOj/rUKN752dhORzhPv3hFZo7lINe7NzaBhhhR
	KLoRyXDLPCWHuSCjHKn2aee0FNPt7Tx/nNKaq03xU62JdpyRYMG+aseXkEjATT1hHPeG
	QiSHqGI8dTlRpVqYRfFpwTkA09L6q1Cl/jDSoRSSKd8V+5xCiQY+jeGmlpHApa3SGFkr
	VoTQYzgo1pqqQyOWZlrMWtUfT0JxvTw6PvyIdb3J1sTFTrPzKA7RFxfxbEH+5SrTZ6RR
	z280CEDakgIu2672opLCw5jeteaBF2Np5/Rh7k/A/V1L3GpGwhjiZaB1qKhrixDtWr1P
	Bdwg==
MIME-Version: 1.0
X-Received: by 10.15.98.9 with SMTP id bi9mr2234460eeb.67.1383139196204; Wed,
	30 Oct 2013 06:19:56 -0700 (PDT)
Received: by 10.223.170.195 with HTTP; Wed, 30 Oct 2013 06:19:56 -0700 (PDT)
In-Reply-To: <20131030054112.GA23839@lpalcu-linux>
References: <CAFZh4h8aKoop0wdU7THaBD6+5FnEgfPKW0zM_-wqpOOcLgXdsg@mail.gmail.com>
	<CAFZh4h-ULci3FhdeNJDE1zEFRqAQpwVJyLY95-PVW0z2sQFGHQ@mail.gmail.com>
	<20131030054112.GA23839@lpalcu-linux>
Date: Wed, 30 Oct 2013 09:19:56 -0400
Message-ID: <CAFZh4h_oN02R_Z2ymVd6Df0RRnyWichQAD0dtvarUefd4k_eSQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 30 Oct 2013 13:19:58 -0000
Content-Type: multipart/alternative; boundary=089e0168147076fbb804e9f530fa

--089e0168147076fbb804e9f530fa
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Oct 30, 2013 at 1:41 AM, Laurentiu Palcu
<laurentiu.palcu@intel.com>wrote:

>                 ^
> This commit:
>
> commit 39356f622d3d2226f12c4930beeaf4b392d90ca5
> Author: Konrad Scherer <Konrad.Scherer@windriver.com>
> Date:   Thu Oct 17 10:17:20 2013 -0400
>
>     relocate_sdk.py: Allow script to work with Python 2.4 and 3.
>
> should fix your issue.
>
> Thanks,
> Laurentiu
>

Hi Laurentiu,

Which git repo?  I couldn't find it?   Is this contrib or mainline?

Regards,

Brian

--089e0168147076fbb804e9f530fa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Oct 30, 2013 at 1:41 AM, Laurentiu Palcu <span dir=3D"ltr">&lt;<a href=
=3D"mailto:laurentiu.palcu@intel.com" target=3D"_blank">laurentiu.palcu@int=
el.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">=A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 ^<br>
This commit:<br>
<br>
commit 39356f622d3d2226f12c4930beeaf4b392d90ca5<br>
Author: Konrad Scherer &lt;<a href=3D"mailto:Konrad.Scherer@windriver.com">=
Konrad.Scherer@windriver.com</a>&gt;<br>
Date: =A0 Thu Oct 17 10:17:20 2013 -0400<br>
<br>
=A0 =A0 relocate_sdk.py: Allow script to work with Python 2.4 and 3.<br>
<br>
should fix your issue.<br>
<br>
Thanks,<br>
Laurentiu<br></blockquote></div><br></div><div class=3D"gmail_extra">Hi Lau=
rentiu,<br><br></div><div class=3D"gmail_extra">Which git repo?=A0 I couldn=
&#39;t find it?=A0=A0 Is this contrib or mainline?<br><br>Regards,<br><br><=
/div>
<div class=3D"gmail_extra">Brian<br><br></div></div>

--089e0168147076fbb804e9f530fa--
