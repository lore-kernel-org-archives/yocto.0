Return-Path: <eddy.lai.tw@gmail.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A5C6E002AB
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 22:40:58 -0800 (PST)
Received: by mail-vc0-f169.google.com with SMTP id gb23so10792518vcb.0
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 22:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CWckq1VGyFB95KQCTTgMkRNGl9j3gVDSEdTV2/oBPeg=;
	b=RDQ8DfnfXRknBzIQKI+AFFoS1hVpin2XaKbdpQJ1MSAPTa07yv5yhcKC7/kq9n7tqk
	IT4877Qh8ixLuBiYBbcTnVZvGibqPJozHasyXIUlqyXKp4fcHAqJegaPrBIq8lgUpZhP
	0GrDp/50GiGE7TTmqnUzCKPVD+awerhEkqgBrPM7/EjUFPpfdMZoiJsKCp/eZhO3duWx
	7n6cKzcaJj0CmtJAtpZYsRaMOaAb61Nd0L/vZrqGhmgSAApELYZ/xv/Ob72ToiP+LIeQ
	VsVFZOTBbT5iZqzf0e9x7Mqi0YQwc0eaDZXFHZ0fQrC1i9udCJAYQYDxE88m9SJVqY+R
	Dpeg==
MIME-Version: 1.0
Received: by 10.220.151.142 with SMTP id c14mr49578901vcw.16.1356676857311;
	Thu, 27 Dec 2012 22:40:57 -0800 (PST)
Received: by 10.58.18.235 with HTTP; Thu, 27 Dec 2012 22:40:57 -0800 (PST)
Received: by 10.58.18.235 with HTTP; Thu, 27 Dec 2012 22:40:57 -0800 (PST)
In-Reply-To: <50DAE8D5.7090309@mlbassoc.com>
References: <CACrgodehbngP-+zvoEyn=Gbr+mqK+w7ipsREOGT4kgbN+K7AvA@mail.gmail.com>
	<50DAE8D5.7090309@mlbassoc.com>
Date: Fri, 28 Dec 2012 14:40:57 +0800
Message-ID: <CACrgodeMSvt9yr_M_VE0GqTHVFeYXTbMhFzALF762QjXaJMbmg@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: enable netbase network interfaces?
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
X-List-Received-Date: Fri, 28 Dec 2012 06:40:58 -0000
Content-Type: multipart/alternative; boundary=f46d043be06a27b2dc04d1e3f231

--f46d043be06a27b2dc04d1e3f231
Content-Type: text/plain; charset=ISO-8859-1

Thanks Gary,

after download and extract the ti cortex A8 BSP . there's only binary image
inside, what MACHINE to use to build a beagleboard yocto image?
 On 2012-12-25 16:31, Lai Eddy wrote:

> in the "Reference Manual "How do I make sure connected network interfaces
> are brought up by default?" said 2 files need to be added to enable network
> interfaces, where can I find
> template files?
> ------------------------------**------------------------------**
> ------------------------------**-----------------
> The default interfaces file provided by the netbase recipe does not
> automatically bring up network interfaces. Therefore, you will need to add
> a BSP-specific netbase that includes
> an interfaces file.
> For example, add the following files to your layer:
>       meta-MACHINE/recipes-bsp/**netbase/netbase/MACHINE/**interfaces
>       meta-MACHINE/recipes-bsp/**netbase/netbase_5.0.bbappend
> ------------------------------**------------------------------**
> ------------------------------**------------------
>

Look in meta-ti
(git://git.yoctoproject.org/**meta-ti<http://git.yoctoproject.org/meta-ti>
):
$ find meta-ti/recipes-core/netbase/
meta-ti/recipes-core/netbase/
meta-ti/recipes-core/netbase/**netbase-5.0
meta-ti/recipes-core/netbase/**netbase-5.0/beagleboard
meta-ti/recipes-core/netbase/**netbase-5.0/beagleboard/**interfaces
meta-ti/recipes-core/netbase/**netbase_5.0.bbappend



-- 
------------------------------**------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------**------------------------------
______________________________**_________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>

--f46d043be06a27b2dc04d1e3f231
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Thanks Gary,</p>
<p>after download and extract the=A0ti cortex A8 BSP . there&#39;s only bin=
ary image inside, what MACHINE to use to build a beagleboard yocto image?<b=
r>
</p>
<div class=3D"gmail_quot&lt;blockquote class=3D" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">On 2012-12-25 16:31, Lai Eddy=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
in the &quot;Reference Manual &quot;How do I make sure connected network in=
terfaces are brought up by default?&quot; said 2 files need to be added to =
enable network interfaces, where can I find<br>
template files?<br>
------------------------------<u></u>------------------------------<u></u>-=
-----------------------------<u></u>-----------------<br>
The default interfaces file provided by the netbase recipe does not automat=
ically bring up network interfaces. Therefore, you will need to add a BSP-s=
pecific netbase that includes<br>
an interfaces file.<br>
For example, add the following files to your layer:<br>
=A0 =A0 =A0 meta-MACHINE/recipes-bsp/<u></u>netbase/netbase/MACHINE/<u></u>=
interfaces<br>
=A0 =A0 =A0 meta-MACHINE/recipes-bsp/<u></u>netbase/netbase_5.0.bbappend<br=
>
------------------------------<u></u>------------------------------<u></u>-=
-----------------------------<u></u>------------------<br>
</blockquote>
<br>
Look in meta-ti (git://<a href=3D"http://git.yoctoproject.org/meta-ti" targ=
et=3D"_blank">git.yoctoproject.org/<u></u>meta-ti</a>):<br>
$ find meta-ti/recipes-core/netbase/<br>
meta-ti/recipes-core/netbase/<br>
meta-ti/recipes-core/netbase/<u></u>netbase-5.0<br>
meta-ti/recipes-core/netbase/<u></u>netbase-5.0/beagleboard<br>
meta-ti/recipes-core/netbase/<u></u>netbase-5.0/beagleboard/<u></u>interfac=
es<br>
meta-ti/recipes-core/netbase/<u></u>netbase_5.0.bbappend<br>
<br>
<br>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div>

--f46d043be06a27b2dc04d1e3f231--
