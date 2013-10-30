Return-Path: <b.hutchman@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEB8DE0173B
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:00:15 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id l15so562827eak.20
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gM9sOONHXbnxu1I5C4qHcP10zUVce3t0TWD8WGVt6PA=;
	b=TShTHAM+0cAu1TyrjDbwLo6Dv5jU8eu3R23eT5iRSdpy+DevvK4La63PWTOuV5c6re
	1iORlPJINkA/YDQyhmBl0I5ZXi+VK4TXQsTeGP6ZR0BSOyGZSf6Hkpa1y4NPzpqfGp7t
	FOQsej+b0EoOBrvuyj86O2KPNJ7ezTy04u1ffZlsq1ZTNozICJ+rSUggUhfZ+OSRMlTX
	Xo45am6c6v7OK3t6n7oLFEs/2nsfD5eXoixn10Wg38oPnDlYQhemDTslIdkbRKr7MVrS
	iRjjVwKZ4RD5rR6reQyCd4PrpiTcU5v/72VKL5g53tJYCmQX8U97/TpnuFpc0gaK/1kj
	Dkwg==
MIME-Version: 1.0
X-Received: by 10.15.21.133 with SMTP id d5mr24622eeu.121.1383141614129; Wed,
	30 Oct 2013 07:00:14 -0700 (PDT)
Received: by 10.223.170.195 with HTTP; Wed, 30 Oct 2013 07:00:14 -0700 (PDT)
Received: by 10.223.170.195 with HTTP; Wed, 30 Oct 2013 07:00:14 -0700 (PDT)
In-Reply-To: <20131030133451.GA25490@lpalcu-linux>
References: <CAFZh4h8aKoop0wdU7THaBD6+5FnEgfPKW0zM_-wqpOOcLgXdsg@mail.gmail.com>
	<CAFZh4h-ULci3FhdeNJDE1zEFRqAQpwVJyLY95-PVW0z2sQFGHQ@mail.gmail.com>
	<20131030054112.GA23839@lpalcu-linux>
	<CAFZh4h_oN02R_Z2ymVd6Df0RRnyWichQAD0dtvarUefd4k_eSQ@mail.gmail.com>
	<20131030133451.GA25490@lpalcu-linux>
Date: Wed, 30 Oct 2013 10:00:14 -0400
Message-ID: <CAFZh4h_fdSXqN5KoacQn9FfTjLNAC4UijS3eM2HPd+eHXMXdew@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 30 Oct 2013 14:00:19 -0000
Content-Type: multipart/alternative; boundary=089e0168162e9597a704e9f5c08f

--089e0168162e9597a704e9f5c08f
Content-Type: text/plain; charset=ISO-8859-1

On Oct 30, 2013 9:36 AM, "Laurentiu Palcu" <laurentiu.palcu@intel.com>
wrote:
>
> On Wed, Oct 30, 2013 at 09:19:56AM -0400, Brian Hutchinson wrote:
> > On Wed, Oct 30, 2013 at 1:41 AM, Laurentiu Palcu <
laurentiu.palcu@intel.com>
> > wrote:
> >
> >                     ^
> >     This commit:
> >
> >     commit 39356f622d3d2226f12c4930beeaf4b392d90ca5
> >     Author: Konrad Scherer <Konrad.Scherer@windriver.com>
> >     Date:   Thu Oct 17 10:17:20 2013 -0400
> >
> >         relocate_sdk.py: Allow script to work with Python 2.4 and 3.
> >
> >     should fix your issue.
> >
> >     Thanks,
> >     Laurentiu
> >
> >
> > Hi Laurentiu,
> >
> > Which git repo?  I couldn't find it?   Is this contrib or mainline?
>
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=39356f622d3d2226f12c4930beeaf4b392d90ca5
>
> or
>
>
http://cgit.openembedded.org/openembedded-core/commit/?id=1e2ec5f576f167673d7980737826987fefdc74a9
>
> Laurentiu
> >
> > Regards,
> >
> > Brian
> >

Thanks!  I don't know why my searches didn't find that.

Helps to read the release notes ... I wonder if I shouldn't also make folks
with these older Centos boxes also install buildtools-tarball so everyone
has the same rev of Python etc.  That might make the SDK install go better
too.

Regards,

Brian

--089e0168162e9597a704e9f5c08f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Oct 30, 2013 9:36 AM, &quot;Laurentiu Palcu&quot; &lt;<a href=3D"mailto:=
laurentiu.palcu@intel.com">laurentiu.palcu@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Oct 30, 2013 at 09:19:56AM -0400, Brian Hutchinson wrote:<br>
&gt; &gt; On Wed, Oct 30, 2013 at 1:41 AM, Laurentiu Palcu &lt;<a href=3D"m=
ailto:laurentiu.palcu@intel.com">laurentiu.palcu@intel.com</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^<br>
&gt; &gt; =A0 =A0 This commit:<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 commit 39356f622d3d2226f12c4930beeaf4b392d90ca5<br>
&gt; &gt; =A0 =A0 Author: Konrad Scherer &lt;<a href=3D"mailto:Konrad.Scher=
er@windriver.com">Konrad.Scherer@windriver.com</a>&gt;<br>
&gt; &gt; =A0 =A0 Date: =A0 Thu Oct 17 10:17:20 2013 -0400<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 =A0 =A0 relocate_sdk.py: Allow script to work with Python=
 2.4 and 3.<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 should fix your issue.<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 Thanks,<br>
&gt; &gt; =A0 =A0 Laurentiu<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Hi Laurentiu,<br>
&gt; &gt;<br>
&gt; &gt; Which git repo? =A0I couldn&#39;t find it? =A0 Is this contrib or=
 mainline?<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D3935=
6f622d3d2226f12c4930beeaf4b392d90ca5">http://git.yoctoproject.org/cgit.cgi/=
poky/commit/?id=3D39356f622d3d2226f12c4930beeaf4b392d90ca5</a><br>
&gt;<br>
&gt; or<br>
&gt;<br>
&gt; <a href=3D"http://cgit.openembedded.org/openembedded-core/commit/?id=
=3D1e2ec5f576f167673d7980737826987fefdc74a9">http://cgit.openembedded.org/o=
penembedded-core/commit/?id=3D1e2ec5f576f167673d7980737826987fefdc74a9</a><=
br>

&gt;<br>
&gt; Laurentiu<br>
&gt; &gt;<br>
&gt; &gt; Regards,<br>
&gt; &gt;<br>
&gt; &gt; Brian<br>
&gt; &gt;</p>
<p dir=3D"ltr">Thanks!=A0 I don&#39;t know why my searches didn&#39;t find =
that.</p>
<p dir=3D"ltr">Helps to read the release notes ... I wonder if I shouldn&#3=
9;t also make folks with these older Centos boxes also install buildtools-t=
arball so everyone has the same rev of Python etc.=A0 That might make the S=
DK install go better too.</p>

<p dir=3D"ltr">Regards,</p>
<p dir=3D"ltr">Brian</p>

--089e0168162e9597a704e9f5c08f--
