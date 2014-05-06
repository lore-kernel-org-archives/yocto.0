Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 441E3E00B7A; Tue,  6 May 2014 04:31:15 -0700 (PDT)
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
	*      [209.85.214.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F194E00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 04:31:01 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id gq1so2318903obb.10
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 04:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=vdlTWL3EQ1eFQabh6MAi1svc430KVheLs6MbUVc8Hy8=;
	b=lY/giiHITfiB44wkMSI01Kf9M8uaBFPq9Qfabvr3EnZeo+zuMLJIMboWImjBX3+1lc
	crq3cbGsJly3Xc9aWKHTk/gS3JOhQab37Re/0+3AGLukWoSGTplFZDGVhmD95S0Ag+g6
	Q387f+9kLfJA1UHuNfljzL6yC6mXZAW3u5Wc3NnKGr0yHJJStq6SJMHaOgiWAs1wXfuu
	HTLaxPaKD9JDRThzLl+UpsJW4YzLDWXe+j+c2lSiJ3uDyki+nIfhFHATMJ9AUbyZAlIq
	lMtuwWqUpEW6q4SlW/EauXVtWMAeY/vZ5TP18pyto6+Ok6rFLAlZpCOb4VI00pirj/ji
	tfVQ==
X-Received: by 10.60.145.199 with SMTP id sw7mr18191360oeb.4.1399375860804;
	Tue, 06 May 2014 04:31:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.85.33 with HTTP; Tue, 6 May 2014 04:30:40 -0700 (PDT)
In-Reply-To: <1399375706-31857-1-git-send-email-nickdademo@gmail.com>
References: <1399375706-31857-1-git-send-email-nickdademo@gmail.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Tue, 6 May 2014 21:30:40 +1000
Message-ID: <CANR6C57ccrbqBx2GUsV=E_qPD74cY9+pHNT6h80-zm7+Fcnzvg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] nmap: inherit autotools-brokensep to allow B=S build. Signed-off-by: Nick D'Ademo <nickdademo@gmail.com>
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
X-List-Received-Date: Tue, 06 May 2014 11:31:15 -0000
Content-Type: multipart/alternative; boundary=047d7b5d3d0a17609904f8b99591

--047d7b5d3d0a17609904f8b99591
Content-Type: text/plain; charset=ISO-8859-1

Re-submitted with new lines at end of recipe preserved.

Nick


On Tue, May 6, 2014 at 9:28 PM, Nick D'Ademo <nickdademo@gmail.com> wrote:

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

--047d7b5d3d0a17609904f8b99591
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Re-submitted with new lines at end of recipe preserved.<br=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Nick<br></=
div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Tue, May 6, 2014 at 9:28 PM, Nick D&#=
39;Ademo <span dir=3D"ltr">&lt;<a href=3D"mailto:nickdademo@gmail.com" targ=
et=3D"_blank">nickdademo@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">

---<br>
=A0recipes-security/nmap/<a href=3D"http://nmap_6.25.bb" target=3D"_blank">=
nmap_6.25.bb</a> | =A0 =A02 +-<br>
=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-security/nmap/<a href=3D"http://nmap_6.25.bb" target=
=3D"_blank">nmap_6.25.bb</a> b/recipes-security/nmap/<a href=3D"http://nmap=
_6.25.bb" target=3D"_blank">nmap_6.25.bb</a><br>
index aff5c63..5efcc70 100644<br>
<div class=3D"HOEnZb"><div class=3D"h5">--- a/recipes-security/nmap/<a href=
=3D"http://nmap_6.25.bb" target=3D"_blank">nmap_6.25.bb</a><br>
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
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br></div></div>

--047d7b5d3d0a17609904f8b99591--
