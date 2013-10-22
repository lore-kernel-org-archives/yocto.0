Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEA08E01728
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 22:05:20 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id p9so6305308lbv.41
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 22:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MnFKTkhmy/t5hk6DNSKLaz9tiHAQnF+TWDMi01jYcTc=;
	b=V+Ncg2AHdORKDKInVMmG+WLBcL6htIybeNxm9Ibq4Vs11O8ajbapjjMrZypxyjSTmS
	CCBAgp1YEKKn9E5MwYsSwHgudENqPTWNgSPBSbP7cuo/zZ0pHOMve75zUGqxhKHhDFdj
	XBXAHuY0E8jIWySAs1vqWjcKiN6xyg32sGmAgr2lcFQZJaot15E3B//LrtNJ/3O04PfH
	5zVpPWcrEfm1R5oDum3EocXZnsiEIQ53QIvK/FaQoHLJmQRHDKBv3jR9PZmoFPUvslIt
	zLXYGYI6Y8jIWvgjXIJZ8eK5MsG66Kl8l9/4iZJssqzt1xz52cLcfwQfT+eGe06TrjQd
	ApFA==
MIME-Version: 1.0
X-Received: by 10.152.6.169 with SMTP id c9mr5049868laa.28.1382418318432; Mon,
	21 Oct 2013 22:05:18 -0700 (PDT)
Received: by 10.114.62.115 with HTTP; Mon, 21 Oct 2013 22:05:18 -0700 (PDT)
In-Reply-To: <CAKP9-SgzGG8bLJsu1X1qTDyELnXZCb0B-Xj+rdJvi7Bzg=ATsA@mail.gmail.com>
References: <CAKP9-SgzGG8bLJsu1X1qTDyELnXZCb0B-Xj+rdJvi7Bzg=ATsA@mail.gmail.com>
Date: Tue, 22 Oct 2013 10:35:18 +0530
Message-ID: <CAE_REAucf4Epi1v=xfEGYhLvc1bG_cDDTrUfzxrYJX1jjPyHMQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: "Sandeep G.R" <grsandeep85@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to bring up "apt and dpkg" packages on yocto
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
X-List-Received-Date: Tue, 22 Oct 2013 05:05:21 -0000
Content-Type: multipart/alternative; boundary=089e01493c06cd1f8d04e94d58ca

--089e01493c06cd1f8d04e94d58ca
Content-Type: text/plain; charset=ISO-8859-1

hi,

what packaging method you have selected while creating your image ??

//Gaurang Shastri



On Tue, Oct 22, 2013 at 4:36 AM, Sandeep G.R <grsandeep85@gmail.com> wrote:

> Hi All,
>
> I have ported Embedded Linux using yocto opensource for Freescale QorIQ
> T4240QDS processor. I need to bring up "apt and dpkg" on T4240QDS using
> yocto.
>
> For this i need to modify in some .conf or .bb files. Can you please let
> me know in which files i need to do these changes in order to bring up "apt
> and dpkg" on T4240QDS using yocto.
>
> --
> *Thanks & Regards,*
> *Sandeep G R*
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e01493c06cd1f8d04e94d58ca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>hi,<br><br>what packaging method you=
 have selected while creating your image ??<br><br></div>//Gaurang Shastri<=
br></div><br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_q=
uote">
On Tue, Oct 22, 2013 at 4:36 AM, Sandeep G.R <span dir=3D"ltr">&lt;<a href=
=3D"mailto:grsandeep85@gmail.com" target=3D"_blank">grsandeep85@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif;color:rgb(7,55,99)"><div class=3D"gmail_default" =
style=3D"font-size:13px">Hi All,</div><div class=3D"gmail_default" style=3D=
"font-size:13px">

<br></div><div class=3D"gmail_default" style=3D"font-size:13px">I have port=
ed Embedded Linux using yocto opensource for Freescale QorIQ T4240QDS proce=
ssor. I need to bring up=A0&quot;apt and dpkg&quot; on=A0T4240QDS using yoc=
to.</div>

<div class=3D"gmail_default" style=3D"font-size:13px"><br></div><div class=
=3D"gmail_default" style=3D"font-size:13px">For this i need to modify in so=
me .conf or .bb files. Can you please let me know in which files i need to =
do these changes in order to bring up &quot;apt and dpkg&quot; on T4240QDS =
using yocto.</div>
<span class=3D"HOEnZb"><font color=3D"#888888">
</font></span></div><span class=3D"HOEnZb"><font color=3D"#888888"><div><br=
></div>-- <br><div dir=3D"ltr"><font color=3D"#073763" face=3D"trebuchet ms=
, sans-serif"><b>Thanks &amp; Regards,</b></font><div><font color=3D"#07376=
3" face=3D"trebuchet ms, sans-serif"><b>Sandeep G R</b></font><br>
<br>
</div></div>
</font></span></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--089e01493c06cd1f8d04e94d58ca--
