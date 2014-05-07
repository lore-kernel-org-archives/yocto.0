Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04FFFE006EC; Wed,  7 May 2014 01:07:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickdademo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B34C0E003C7
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 01:07:07 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id wn1so767847obc.27
	for <yocto@yoctoproject.org>; Wed, 07 May 2014 01:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Fep4MbOTLRhaXWD7hRQEO4XYLOGPrIF6NxiUeLYyjlE=;
	b=a+CLkKikTgGcAmeozB43u2NtAypsUIezc38U0DMZW11HWjCHrk6bqf4nFwjXILf5mH
	QBU5csqW0D2y5IuB8k22TZ+E3o7MUMyIKGUJZ5qG9wJOmTTQVmXW0/1hAjv08/Tq4H9V
	pCr5EZ1Bpbr9G3PFrdPZ6/suq8BcG6gOVyXGtfMDrBkhPRbQQZTjwnZW/NE2dOG+Gl+j
	47umhkvdZRtK5RNL9A9iTXa1b4A9NAGCWt6j1U/iH6rZxJkqCQd/nG0j/M6GAnTT4Bjl
	dqYeAWFhUtRGw4+VPXyIKyxF1aRYqLHmQFCRa6P/GHURoZaxLo2anAawPHS3cfShzM4h
	qlYw==
X-Received: by 10.60.132.12 with SMTP id oq12mr44157093oeb.42.1399450026768;
	Wed, 07 May 2014 01:07:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.85.33 with HTTP; Wed, 7 May 2014 01:06:46 -0700 (PDT)
In-Reply-To: <CANR6C576Ea7sLf_5J0R814-S7xLWPx-QzoQJ=MGK=nv6RA2=eA@mail.gmail.com>
References: <1399415077-16870-1-git-send-email-nickdademo@gmail.com>
	<CANR6C576Ea7sLf_5J0R814-S7xLWPx-QzoQJ=MGK=nv6RA2=eA@mail.gmail.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Wed, 7 May 2014 18:06:46 +1000
Message-ID: <CANR6C55Gpv=ydMqtohTUmyadDsnodtAg6sWdna9TV5x-kpaUJw@mail.gmail.com>
To: sgw@linux.intel.com
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: [meta-security][PATCH] nmap: inherit autotools-brokensep to allow B=S build.
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
X-List-Received-Date: Wed, 07 May 2014 08:07:11 -0000
Content-Type: multipart/alternative; boundary=047d7b47286eb9fc9a04f8cad92b

--047d7b47286eb9fc9a04f8cad92b
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: Nick D'Ademo <nickdademo@gmail.com>
Date: Wed, May 7, 2014 at 8:26 AM
Subject: Re: [meta-security][PATCH] nmap: inherit autotools-brokensep to
allow B=S build.
To: Yocto list discussion <yocto@yoctoproject.org>


This is a resubmission - added required blank line between subject and SOB.



On Wed, May 7, 2014 at 8:24 AM, Nick D'Ademo <nickdademo@gmail.com> wrote:

> Signed-off-by: Nick D'Ademo <nickdademo@gmail.com>
> ---
>  recipes-security/nmap/nmap_6.25.bb |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/nmap/nmap_6.25.bb b/recipes-security/nmap/
> nmap_6.25.bb
> index aff5c63..5efcc70 100644
> --- a/recipes-security/nmap/nmap_6.25.bb
> +++ b/recipes-security/nmap/nmap_6.25.bb
> @@ -11,7 +11,7 @@ SRC_URI = "http://nmap.org/dist/${PN}-${PV}.tar.bz2 \
>  SRC_URI[md5sum] = "fcc80f94ff3adcb11eedf91092ea6f5e"
>  SRC_URI[sha256sum] =
> "3349cc6d36b86b95ca2b8075d16615a3a598cef494920d6652f9a8bf9f7660b5"
>
> -inherit autotools
> +inherit autotools-brokensep
>
>  DEPENDS = "libpcap"
>
> --
> 1.7.9.5
>
>

--047d7b47286eb9fc9a04f8cad92b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div><div><div class=3D"gmail_quote">---------- Forwar=
ded message ----------<br>From: <b class=3D"gmail_sendername">Nick D&#39;Ad=
emo</b> <span dir=3D"ltr">&lt;<a href=3D"mailto:nickdademo@gmail.com">nickd=
ademo@gmail.com</a>&gt;</span><br>

Date: Wed, May 7, 2014 at 8:26 AM<br>Subject: Re: [meta-security][PATCH] nm=
ap: inherit autotools-brokensep to allow B=3DS build.<br>To: Yocto list dis=
cussion &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.or=
g</a>&gt;<br>

<br><br><div dir=3D"ltr">This is a resubmission - added required blank line=
 between subject and SOB.<div><div class=3D"h5"><br><div class=3D"gmail_ext=
ra"><br clear=3D"all">
<br><div class=3D"gmail_quote">On Wed, May 7, 2014 at 8:24 AM, Nick D&#39;A=
demo <span dir=3D"ltr">&lt;<a href=3D"mailto:nickdademo@gmail.com" target=
=3D"_blank">nickdademo@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">


Signed-off-by: Nick D&#39;Ademo &lt;<a href=3D"mailto:nickdademo@gmail.com"=
 target=3D"_blank">nickdademo@gmail.com</a>&gt;<br>
---<br>
=A0recipes-security/nmap/<a href=3D"http://nmap_6.25.bb" target=3D"_blank">=
nmap_6.25.bb</a> | =A0 =A02 +-<br>
=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-security/nmap/<a href=3D"http://nmap_6.25.bb" target=
=3D"_blank">nmap_6.25.bb</a> b/recipes-security/nmap/<a href=3D"http://nmap=
_6.25.bb" target=3D"_blank">nmap_6.25.bb</a><br>
index aff5c63..5efcc70 100644<br>
--- a/recipes-security/nmap/<a href=3D"http://nmap_6.25.bb" target=3D"_blan=
k">nmap_6.25.bb</a><br>
+++ b/recipes-security/nmap/<a href=3D"http://nmap_6.25.bb" target=3D"_blan=
k">nmap_6.25.bb</a><br>
@@ -11,7 +11,7 @@ SRC_URI =3D &quot;<a href=3D"http://nmap.org/dist/$%7BPN%=
7D-$%7BPV%7D.tar.bz2" target=3D"_blank">http://nmap.org/dist/${PN}-${PV}.ta=
r.bz2</a> \<br>
=A0SRC_URI[md5sum] =3D &quot;fcc80f94ff3adcb11eedf91092ea6f5e&quot;<br>
=A0SRC_URI[sha256sum] =3D &quot;3349cc6d36b86b95ca2b8075d16615a3a598cef4949=
20d6652f9a8bf9f7660b5&quot;<br>
<br>
-inherit autotools<br>
+inherit autotools-brokensep<br>
<br>
=A0DEPENDS =3D &quot;libpcap&quot;<br>
<span><font color=3D"#888888"><br>
--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br></div></div></div></div>
</div><br></div></div></div>

--047d7b47286eb9fc9a04f8cad92b--
