Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20E0FE00CCD; Mon, 24 Oct 2016 02:44:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B220BE00CC7
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 02:44:38 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id f193so8938790wmg.3
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 02:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:reply-to:sender:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pNYpZkzcSpVLzP7KtxqTiKzlPoJxJHRuRCx2R3JxUM8=;
	b=JhodCryvdVioBx5q8RcufM8VpaI4atEszMvlkWcH2irFWzDn6QrYZVeTyJUcZq1muA
	Z/ImdnQYP4gezkyKmRoWeUNfG6oRQfF3EIMs4D9eyCql/OjKOVj0rPZ23UDauKvm/6tg
	ohfCQIbSxbBPYzAwzaVqOIWkcyz2pOLH6E3lCwEI6BFDTrSmCtp+SN//HdiqfHzOuZT8
	z+26a+2pK+7CsiYcZjQx1oAoBv6ybFSNhBCX7IvANvTcOE41H0ywz3RPNe8yEVuJFdIH
	xZ+7gm2Fc08YW7nCPLZ6UciV7sGfoezw4UgOTtJRjjFg0wKqqtBgD9T4PbVjTe3NSxR8
	Ie+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:reply-to:sender:in-reply-to
	:references:from:date:message-id:subject:to:cc;
	bh=pNYpZkzcSpVLzP7KtxqTiKzlPoJxJHRuRCx2R3JxUM8=;
	b=gQQbXpUqzxbPxLJZbVFmd8PqvIvoHnoNetFOJ3j+hgixeVMWPWN4v68ZmT2Lmm2mZ0
	3HudUSFGP1k4adPlkAvnEkU+z2CqsmTbNFI0WYoEkAo0WObqW2Y4aJrJ1xvKFwHnimT/
	7pgdXktd1KHhV1SYMZBIW3jw0up3i2hbDml+KnNpbvZtBigR7NzMQqR894Cz5n62ZOxX
	j9OeMyGy2vUOjkZ6NCDMtHd408SRqR85wR5wUUhib3gUfzBem5EuvP83jh3LcMqY3Uzt
	206ipbtOtJnBYhFgfLx+SXmWdm5eukex4ClImmN5joFUkL3ej2xmtfDp+Pqa+Tf3+6HE
	JKXA==
X-Gm-Message-State: ABUngvdi0s2zJJsjhzxo7UxUeUkl5oq5WHrp6ETiRaLgzagMSMoryxSDAjDt/79Wk267d97g3iOP3tNFZ44/8g==
X-Received: by 10.194.119.2 with SMTP id kq2mr10354064wjb.217.1477302277355;
	Mon, 24 Oct 2016 02:44:37 -0700 (PDT)
MIME-Version: 1.0
Sender: vomegaz@gmail.com
Received: by 10.28.134.143 with HTTP; Mon, 24 Oct 2016 02:43:56 -0700 (PDT)
In-Reply-To: <1476748950-21342-13-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-13-git-send-email-akuster808@gmail.com>
From: Thomas PERROT <thomas.perrot@tupi.fr>
Date: Mon, 24 Oct 2016 11:43:56 +0200
X-Google-Sender-Auth: Or06WFkm1FeBxZWenxBufqJBtmg
Message-ID: <CAGXeWg=pNYyuqQoOmZw27N6sypeQxVQgCJFD+TBLanL0zSh+yQ@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: "linux-yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH 13/17] package-group: fix tpm package list
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: thomas.perrot@tupi.fr
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 24 Oct 2016 09:44:43 -0000
Content-Type: multipart/alternative; boundary=089e012299ce77bf3e053f993dde

--089e012299ce77bf3e053f993dde
Content-Type: text/plain; charset=UTF-8

Hello,

Would it not be more interesting to do two packages, one for the TPMV1.2
support and a second for the TPMV2.0 support?

Best regards,
Thomas P.




On Tue, Oct 18, 2016 at 2:02 AM, Armin Kuster <akuster808@gmail.com> wrote:

> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/packagegroup/packagegroup-core-security.bb | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb
> b/recipes-security/packagegroup/packagegroup-core-security.bb
> index 8639acd..ae856c7 100644
> --- a/recipes-security/packagegroup/packagegroup-core-security.bb
> +++ b/recipes-security/packagegroup/packagegroup-core-security.bb
> @@ -63,8 +63,11 @@ RDEPENDS_packagegroup-security-tpm = " \
>      tpm-tools \
>      trousers \
>      tpm2.0-tools \
> -    tpm2.0-tss \
> +    libtss2 \
> +    resourcemgr \
> +    libtctidevice \
> +    libtctisocket \
> +    resourcemgr \
>      libtpm \
>      swtpm \
> -    tpm2simulator-native \
>      "
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e012299ce77bf3e053f993dde
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br><span tabindex=3D"-1" id=3D"gmail-=
result_box" class=3D"gmail-" lang=3D"en"><span><span class=3D"gmail-short_t=
ext" id=3D"gmail-result_box" tabindex=3D"-1" lang=3D"en"><span>Would it</sp=
an> <span>not be</span> <span>more interesting</span></span></span><span></=
span> <span>to do two</span> <span>packages</span><span>, one for the</span=
> <span>TPMV1.2</span> <span>support</span> <span>and a second for</span> <=
span>the</span> <span>TPMV2.0</span> <span>support?<br><br></span></span></=
div><span tabindex=3D"-1" id=3D"gmail-result_box" class=3D"gmail-" lang=3D"=
en"><span>Best regards,<br></span></span></div><span tabindex=3D"-1" id=3D"=
gmail-result_box" class=3D"gmail-" lang=3D"en"><span>Thomas P.<br></span></=
span><div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_=
signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v><div dir=3D"ltr"><div><div dir=3D"ltr"><div><table style=3D"color:rgb(88,=
88,90);font-family:verdana,arial;font-size:10px"><tbody><tr><td valign=3D"t=
op"><br></td><td style=3D"padding-left:10px;border-left:1px solid rgb(0,153=
,153)" valign=3D"top"><br></td></tr></tbody></table></div></div></div></div=
></div></div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Oct 18, 2016 at 2:02 AM, Armin Kuste=
r <span dir=3D"ltr">&lt;<a target=3D"_blank" href=3D"mailto:akuster808@gmai=
l.com">akuster808@gmail.com</a>&gt;</span> wrote:<br><blockquote style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex" class=3D"gmail_quote">Signed-off-by: Armin Kuster &lt;<a href=3D"mail=
to:akuster808@gmail.com">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-security/packagegroup/<a target=3D"_blank" rel=3D"noreferrer"=
 href=3D"http://packagegroup-core-security.bb"><wbr>packagegroup-core-secur=
ity.bb</a> | 7 +++++--<br>
=C2=A01 file changed, 5 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-security/<wbr>packagegroup/<a target=3D"_blank" rel=3D=
"noreferrer" href=3D"http://packagegroup-core-security.bb">packagegroup-<wb=
r>core-security.bb</a> b/recipes-security/<wbr>packagegroup/<a target=3D"_b=
lank" rel=3D"noreferrer" href=3D"http://packagegroup-core-security.bb">pack=
agegroup-<wbr>core-security.bb</a><br>
index 8639acd..ae856c7 100644<br>
--- a/recipes-security/<wbr>packagegroup/<a target=3D"_blank" rel=3D"norefe=
rrer" href=3D"http://packagegroup-core-security.bb">packagegroup-<wbr>core-=
security.bb</a><br>
+++ b/recipes-security/<wbr>packagegroup/<a target=3D"_blank" rel=3D"norefe=
rrer" href=3D"http://packagegroup-core-security.bb">packagegroup-<wbr>core-=
security.bb</a><br>
@@ -63,8 +63,11 @@ RDEPENDS_packagegroup-<wbr>security-tpm =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0tpm-tools \<br>
=C2=A0 =C2=A0 =C2=A0trousers \<br>
=C2=A0 =C2=A0 =C2=A0tpm2.0-tools \<br>
-=C2=A0 =C2=A0 tpm2.0-tss \<br>
+=C2=A0 =C2=A0 libtss2 \<br>
+=C2=A0 =C2=A0 resourcemgr \<br>
+=C2=A0 =C2=A0 libtctidevice \<br>
+=C2=A0 =C2=A0 libtctisocket \<br>
+=C2=A0 =C2=A0 resourcemgr \<br>
=C2=A0 =C2=A0 =C2=A0libtpm \<br>
=C2=A0 =C2=A0 =C2=A0swtpm \<br>
-=C2=A0 =C2=A0 tpm2simulator-native \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a target=3D"_blank" rel=3D"noreferrer" href=3D"https://lists.yoctoproject.=
org/listinfo/yocto">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div>

--089e012299ce77bf3e053f993dde--
