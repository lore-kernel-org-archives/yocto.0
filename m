Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 391E3E00A44; Tue,  6 May 2014 15:27:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickdademo[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4405E00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 15:27:17 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id wo20so174056obc.34
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 15:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=rHlwegkkIyCPFLosmjo7wVdZMwUFKxhTD4B8bGfyKn8=;
	b=cmgbo+2nrDRoS9FgwTGlX9VYabGvhr8fxP5iZQgcOjo3YHaAprNr4SajC9pqShwx3r
	+BikHk2EczLM6RN23vIxLkrAX2rcO2LZgcJNAFlP7AXQkTMSu+d0x/ZV13DNuUzvUzqF
	pkDxnL3+Ir9V0QgGL+OqPDwnZxajzESHbn3u79AWvd3ZA+K0RljjhYo3bMqkfl/eW2LT
	65tqm1X4wjTV5qVqYrkdqEkcguhDyLZDoo3G/CVzgRKYbEiWhpRai1pPfm4kpoONIB5O
	3dGesmI3BWcqOTq0PLY4cSLT8TUW+npJjZq6vm18nm3APRB7RWSGGNmTPJkXpkGnnbpZ
	ydXg==
X-Received: by 10.60.17.132 with SMTP id o4mr41988528oed.34.1399415235458;
	Tue, 06 May 2014 15:27:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.85.33 with HTTP; Tue, 6 May 2014 15:26:54 -0700 (PDT)
In-Reply-To: <1399415077-16870-1-git-send-email-nickdademo@gmail.com>
References: <1399415077-16870-1-git-send-email-nickdademo@gmail.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Wed, 7 May 2014 08:26:54 +1000
Message-ID: <CANR6C576Ea7sLf_5J0R814-S7xLWPx-QzoQJ=MGK=nv6RA2=eA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] nmap: inherit autotools-brokensep to allow B=S build.
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
X-List-Received-Date: Tue, 06 May 2014 22:27:21 -0000
Content-Type: multipart/alternative; boundary=089e01294d0c00bd5904f8c2c02b

--089e01294d0c00bd5904f8c2c02b
Content-Type: text/plain; charset=ISO-8859-1

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

--089e01294d0c00bd5904f8c2c02b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is a resubmission - added required blank line between=
 subject and SOB.<br><div class=3D"gmail_extra"><br clear=3D"all">
<br><div class=3D"gmail_quote">On Wed, May 7, 2014 at 8:24 AM, Nick D&#39;A=
demo <span dir=3D"ltr">&lt;<a href=3D"mailto:nickdademo@gmail.com" target=
=3D"_blank">nickdademo@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">

Signed-off-by: Nick D&#39;Ademo &lt;<a href=3D"mailto:nickdademo@gmail.com"=
>nickdademo@gmail.com</a>&gt;<br>
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
@@ -11,7 +11,7 @@ SRC_URI =3D &quot;<a href=3D"http://nmap.org/dist/${PN}-$=
{PV}.tar.bz2" target=3D"_blank">http://nmap.org/dist/${PN}-${PV}.tar.bz2</a=
> \<br>
=A0SRC_URI[md5sum] =3D &quot;fcc80f94ff3adcb11eedf91092ea6f5e&quot;<br>
=A0SRC_URI[sha256sum] =3D &quot;3349cc6d36b86b95ca2b8075d16615a3a598cef4949=
20d6652f9a8bf9f7660b5&quot;<br>
<br>
-inherit autotools<br>
+inherit autotools-brokensep<br>
<br>
=A0DEPENDS =3D &quot;libpcap&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br></div></div>

--089e01294d0c00bd5904f8c2c02b--
