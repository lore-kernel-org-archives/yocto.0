Return-Path: <dorin.lazar@gmail.com>
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4746DE0076A
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 20:50:00 -0800 (PST)
Received: by mail-ob0-f172.google.com with SMTP id vb8so15069177obc.31
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 20:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dydAvXBsc517M7ePl2HfixCbQ+470oKZXiRhyxdr4NQ=;
	b=TKLGJUjxK66hyBnbTr7Dn6Act5VAsQHj5t4+h3/kuJ5rPwBYdfzRSuY9LuxpCc8hxj
	vWd+idemdOZp+W/Uhhxve4ZZuKSwIGCqBeq9DVUemfntkiN68nl/TbYxqHEw1gr0E/Be
	JLUOFHHEKivpVJUe+Ce9i7lnXJFtt7T77TFIk9LEP00/RBf2DjcYvXsQ14gvaCRTx+Va
	/d6ynuj1cvO0pN7xYOIvSVXbfhHS5ReddmoQG2jKXMWctVLaswbFFWmHpOPUNFicA3ow
	SewXVUtNklTkIPhEOAhh25cZVhfx8l+PHwgmteBGSa4MXDYRguvkFEpWppM4dLfJZLl5
	2ceA==
MIME-Version: 1.0
X-Received: by 10.60.227.168 with SMTP id sb8mr10024563oec.10.1392439799888;
	Fri, 14 Feb 2014 20:49:59 -0800 (PST)
Received: by 10.60.141.40 with HTTP; Fri, 14 Feb 2014 20:49:59 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F66030@ORSMSX101.amr.corp.intel.com>
References: <CAH1=ZYd5QL15kdtP15E0vvwrKfTRNPh3+_N9PL4e83siEg_wyg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F66030@ORSMSX101.amr.corp.intel.com>
Date: Sat, 15 Feb 2014 06:49:59 +0200
Message-ID: <CAH1=ZYe2k=pKsP-AdzOhbBaLNFbefoFuCSLce2CCetcRkJoOxA@mail.gmail.com>
From: Dorin Lazar <dorin.lazar@gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Update for the quick start guide
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
X-List-Received-Date: Sat, 15 Feb 2014 04:50:02 -0000
Content-Type: multipart/alternative; boundary=001a1136bd70a4c20804f26aa74e

--001a1136bd70a4c20804f26aa74e
Content-Type: text/plain; charset=UTF-8

Yes, I must have had an older version cached in my browser. My bad. (the
.noarch is just adding the architecture to the name, both names are
pointing to the same thing).
Many thanks,
  Dorin


On Sat, Feb 15, 2014 at 12:10 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

>  Hi,
>
>
>
> Does the perl-Thread-Queue package include that?  I have added this
> package for the set of manuals under development.  See
> http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html
> .
>
>
>
> Scott
>
>
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Dorin Lazar
> *Sent:* Friday, February 14, 2014 1:43 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Update for the quick start guide
>
>
>
> Hi everyone,
>
> In the quick-start page, when Fedora packages are listed,
> perl-Thread-Queue.noarch should be added as well; otherwise the build won't
> pass the latest sanity checks.
>
> Many thanks,
>
>   Dorin
>
>
>

--001a1136bd70a4c20804f26aa74e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I must have had an older version cached in my browser=
. My bad. (the .noarch is just adding the architecture to the name, both na=
mes are pointing to the same thing).<div>Many thanks,</div><div>=C2=A0 Dori=
n</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat,=
 Feb 15, 2014 at 12:10 AM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<a href=
=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rifenbark=
@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi,
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Does the perl-Thread-Queu=
e package include that?=C2=A0 I have added this package for the set of manu=
als under development.=C2=A0 See
<a href=3D"http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-p=
roject-qs.html" target=3D"_blank">
http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.h=
tml</a>.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Scott<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Dorin Lazar<br>
<b>Sent:</b> Friday, February 14, 2014 1:43 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Update for the quick start guide<u></u><u></u></spa=
n></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi everyone,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">In the quick-start page, when Fedora packages are li=
sted, perl-Thread-Queue.noarch should be added as well; otherwise the build=
 won&#39;t pass the latest sanity checks.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Many thanks,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 Dorin<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--001a1136bd70a4c20804f26aa74e--
