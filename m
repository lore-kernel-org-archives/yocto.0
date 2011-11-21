Return-Path: <marc.ferland@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D33E00306
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 08:17:09 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iakh37 with SMTP id h37so10151363iak.35
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 08:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7n0uTRhqrSWmF2x1V2CSUrFVgA086svumJh9vffks/A=;
	b=kwPn42l77cbeJT2NC1YqEI4E7D1K2B8BHpaLdfdaBbFE4oR//HflFsRbHtb9QGlU77
	9PV7WTEoI3CjnAHCA/8kqaBsqmHNb3X7AjQ3Vzkjj5BIXsWieXr5dn8gS0N56VZrjP3+
	Clm9QhiCxrPgTEXX1zMi8vMrS1BAw7+piv35w=
MIME-Version: 1.0
Received: by 10.42.147.65 with SMTP id m1mr12678062icv.27.1321892228413; Mon,
	21 Nov 2011 08:17:08 -0800 (PST)
Received: by 10.50.34.166 with HTTP; Mon, 21 Nov 2011 08:17:08 -0800 (PST)
In-Reply-To: <CAMKF1srwodrwuUUt4aL5paOEkk=Omiz4UwWUR03Ar51wOXcfmQ@mail.gmail.com>
References: <CAMRMzCCzyoJp3JBk94hxmH8tpaAuACCedZnhYPWC6+7=nDqAOw@mail.gmail.com>
	<CAMKF1srwodrwuUUt4aL5paOEkk=Omiz4UwWUR03Ar51wOXcfmQ@mail.gmail.com>
Date: Mon, 21 Nov 2011 11:17:08 -0500
Message-ID: <CAMRMzCAG2Z_Y-494o-9UNkVp7ykyKpXZHr+x0hyduUOzFQ7gYQ@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding line to ld.so.conf
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
X-List-Received-Date: Mon, 21 Nov 2011 16:17:09 -0000
Content-Type: multipart/alternative; boundary=90e6ba1efd3ab4b74404b2410412

--90e6ba1efd3ab4b74404b2410412
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 21, 2011 at 11:04 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Nov 21, 2011 at 7:35 AM, Marc Ferland <marc.ferland@gmail.com>
> wrote:
> > Hi,
> >
> > What's the proper way to add a line to the ld.so.conf file for a new
> library
> > I am adding?
> >
>
> if the libraries is in standard paths you dont have to add it but if
> its in a special path
> then just add the absolute path to the library e.g. /opt/lib if your
> library is in /opt/lib
> and then run ldconfig
>

What I meant was how to do it in a recipe file. I don't want to modify
ld.so.conf and run ldconfig each time I create a new image.

Regards,

Marc

--90e6ba1efd3ab4b74404b2410412
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Mon, Nov 21, 2011 at 11:04 AM, Khem Raj <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">ra=
j.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div>On Mon, Nov 21, 2011 at 7:35 AM, Marc Ferland &lt;<a href=3D"mailto:ma=
rc.ferland@gmail.com" target=3D"_blank">marc.ferland@gmail.com</a>&gt; wrot=
e:<br>
&gt; Hi,<br>
&gt;<br>
&gt; What&#39;s the proper way to add a line to the ld.so.conf file for a n=
ew library<br>
&gt; I am adding?<br>
&gt;<br>
<br>
</div>if the libraries is in standard paths you dont have to add it but if<=
br>
its in a special path<br>
then just add the absolute path to the library e.g. /opt/lib if your<br>
library is in /opt/lib<br>
and then run ldconfig=C2=A0 <br></blockquote><div><br>What I meant was how =
to do it in a recipe file. I don&#39;t want to modify ld.so.conf and run ld=
config each time I create a new image.<br><br>Regards, <br><br>Marc <br></d=
iv>
</div>

--90e6ba1efd3ab4b74404b2410412--
