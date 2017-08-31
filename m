Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4F25E00B01; Thu, 31 Aug 2017 01:56:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E970E00A9B
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 01:56:55 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id x85so33214vkx.1
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 01:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3AHNteKyxhhAEaH1SZgcRySW+fF801PPMir95woyzcs=;
	b=eKScevcttNnFgG2zMGX2XjlBTi74l0Jm0D40y36KXM7rLeW05beQ0NPbaqIcJZlIuk
	8lpXY3bmm6kZwrJZOXGwx9WPimUBRbMkSpvklHbYWJZ/HCzvYN/vYdmvq/VoGAbdhA2J
	ZJLVExJ370Wxddq1NKXb9Mqy7c9aG2S4gt1jPnNUINUsCm5Ibzh7LAUR5OX50FGaSYog
	6TyJL7Fc132K1q57yVXHilEflI3W0VqQwfuD4gj2Lpd4H4oq5rpknjhPYLhE3Rqr07oY
	bYboAYxxo8O34DbOPnHZyyQy8Urbva0akNHgpVFvUdF7cwZ76VtlPLVTJSBp6OCIOr4H
	dgLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3AHNteKyxhhAEaH1SZgcRySW+fF801PPMir95woyzcs=;
	b=IVTOUaxxlRlMghiMAX1y5B3FPPFM2fzEmJF8fC4/EFfihWroIDBVng7g/8Thg+uxmc
	kdo+nxWlgCieIwoS0h5rbpsdXGFNHf0wxE4kpKbMkWv8nm20icBbdWhWvB+0OOHr4DAS
	CsYKgEj7C1niVP4ivqiYYxfCgQl020Oy1aro+4FGEtUYLBQC/GwsCObJM320sviKdW51
	IBu5ZEJiVi1dpnCfcU4UgzCNJrdhNSS0ys4RNb45kog3bk9N1uTuLJ2mfSoUqvqbwkJw
	4GfeE/f9lznj63CqQUKP8BA739HgsSk7amz0ds/8AlkGgC07zfoGc6bxGSOi+wk5/jV2
	eRoA==
X-Gm-Message-State: AHYfb5j5wd/fUDOy4NBvzAm36N6eBAm2UjHQlEsfsoeoYo4+2hG4LVun
	qea1jh/zE/OKIhjYgnTDJ/x7byX3jQ==
X-Received: by 10.31.102.4 with SMTP id a4mr2536044vkc.15.1504169814152; Thu,
	31 Aug 2017 01:56:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.93.42 with HTTP; Thu, 31 Aug 2017 01:56:53 -0700 (PDT)
In-Reply-To: <1502634551-6371-1-git-send-email-gizero@gmail.com>
References: <1502634551-6371-1-git-send-email-gizero@gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 31 Aug 2017 10:56:53 +0200
Message-ID: <CAC+thW1vA3N3SjsVJ9uE+rz9+4FXCzzAKd6RzrtWHv-yORrgWQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: [yocto-docs][PATCH] kernel-dev: fix typo
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
X-List-Received-Date: Thu, 31 Aug 2017 08:56:58 -0000
Content-Type: multipart/alternative; boundary="001a114df4f0745a80055808d361"

--001a114df4f0745a80055808d361
Content-Type: text/plain; charset="UTF-8"

On Sun, Aug 13, 2017 at 4:29 PM, Andrea Galbusera <gizero@gmail.com> wrote:

> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  documentation/kernel-dev/kernel-dev-advanced.xml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/documentation/kernel-dev/kernel-dev-advanced.xml
> b/documentation/kernel-dev/kernel-dev-advanced.xml
> index 0394e08..c7e5a3a 100644
> --- a/documentation/kernel-dev/kernel-dev-advanced.xml
> +++ b/documentation/kernel-dev/kernel-dev-advanced.xml
> @@ -867,7 +867,7 @@
>              When stored outside of the recipe-space, the kernel Metadata
>              files reside in a separate repository.
>              The OpenEmbedded build system adds the Metadata to the build
> as
> -            a "ktype=meta" repository through the
> +            a "type=kmeta" repository through the
>              <ulink url='&YOCTO_DOCS_REF_URL;#var-
> SRC_URI'><filename>SRC_URI</filename></ulink>
>              variable.
>              As an example, consider the following
> <filename>SRC_URI</filename>
> --
> 2.7.4
>
>
ping...

Just to check I'm not mistakenly using the wrong list/subject/workflow...

--001a114df4f0745a80055808d361
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On S=
un, Aug 13, 2017 at 4:29 PM, Andrea Galbusera <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Signed-off-by: Andrea Galbuser=
a &lt;<a href=3D"mailto:gizero@gmail.com">gizero@gmail.com</a>&gt;<br>
---<br>
=C2=A0documentation/kernel-dev/<wbr>kernel-dev-advanced.xml | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/documentation/kernel-dev/<wbr>kernel-dev-advanced.xml b/docume=
ntation/kernel-dev/<wbr>kernel-dev-advanced.xml<br>
index 0394e08..c7e5a3a 100644<br>
--- a/documentation/kernel-dev/<wbr>kernel-dev-advanced.xml<br>
+++ b/documentation/kernel-dev/<wbr>kernel-dev-advanced.xml<br>
@@ -867,7 +867,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0When stored outside of the =
recipe-space, the kernel Metadata<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files reside in a separate =
repository.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The OpenEmbedded build syst=
em adds the Metadata to the build as<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 a &quot;ktype=3Dmeta&quot; repos=
itory through the<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 a &quot;type=3Dkmeta&quot; repos=
itory through the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;ulink url=3D&#39;&amp;Y=
OCTO_DOCS_REF_URL;#var-<wbr>SRC_URI&#39;&gt;&lt;filename&gt;SRC_URI&lt;/<wb=
r>filename&gt;&lt;/ulink&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0variable.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0As an example, consider the=
 following &lt;filename&gt;SRC_URI&lt;/filename&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra">ping.=
..</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Jus=
t to check I&#39;m not mistakenly using the wrong list/subject/workflow...<=
/div></div>

--001a114df4f0745a80055808d361--
