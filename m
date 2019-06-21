Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 661C9E0096F; Fri, 21 Jun 2019 05:52:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 944EDE008A4
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Jun 2019 05:52:50 -0700 (PDT)
Received: by mail-ed1-f68.google.com with SMTP id z25so9941303edq.9
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Jun 2019 05:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=g0Jdy1bcW/g5C/LxJy18q76NDJXfhVlQZf6yFXfht6I=;
	b=dkhrJv+oKQfjxAKbol3dG1sELEfTj+NTBRApHtDozmQ/1bTupTyo5RqerjCFVRZBSu
	wnc4K4ACq9uu8yU9C3MLxlGAdBVL1Pfz4sRRZmjUWp0FXpdnMrlTXSm5FdzMtBVvsTzF
	vpDsgpy9QebUK8ljKLgwoCsPhtRJSddvlSEj18edpxlRHCL7Zzt/TiRHT+l1EIC57oUO
	EA1nWT0awBFjzDGgXjRUmGXxZOanHqvUtYao/kxE6n5VibzA2dLLROzT2fOt5uGDeB7l
	Klp6huIKgbKeoDaEA4iZ28fw2G34drEoUkXdAH6xTq+tUPthJrJQybaVyJxwb8BeHYuw
	TNEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=g0Jdy1bcW/g5C/LxJy18q76NDJXfhVlQZf6yFXfht6I=;
	b=abIbPYQh+lLqcKZKeRUGtBx+Q+3d+lXmov0TRxhzMKadvzYTnhsciurEFFi1tOC3T9
	uxbN8R41/RZtnCEfPZ931EdntoVxfiSJO+1A8+ebu/fPpB2zEYfs5Oywbk7FOuSIADIF
	nIys8hEj/vc9DxQnAJsaWXqowejt+WGVYqpZh1iBd4uCxdCy9GmGahXHJvSq5Y6/vmKG
	cct5WVSm3WwUikq5MXqribY2MB/gE8vQeP5o+xRFc6mciqj3mTrJCzUP9Y5CHEg4S0sX
	VZqQTZxiFTWJCE/PdPPW20mx2syWZPMZPBOvzrc1U34yvoILPbpR2QlkS2v5S+uQKqIw
	7rNw==
X-Gm-Message-State: APjAAAUIncDcX1v8T0Z9GMMDUGs26fE2AA91m+MmRzsaaLj5Q4c/1jGU
	qzeYiEAHsT+8ajTa1rSUnrPiGJDTYq452C6kNNe9xw==
X-Google-Smtp-Source: APXvYqxLa2WhPpFGqFqGIe2gyGESeWavqoQ+lXjPQ73fXwG/pV1F7gMZv/htXqWLAl4KiP0VMhp8kKp5nTY04ysro2w=
X-Received: by 2002:a50:8be8:: with SMTP id
	n37mr125044857edn.216.1561121569420; 
	Fri, 21 Jun 2019 05:52:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190611070823.367-1-Martin.Jansa@gmail.com>
In-Reply-To: <20190611070823.367-1-Martin.Jansa@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 21 Jun 2019 14:52:37 +0200
Message-ID: <CA+chaQfFa0PyiDx78Qba1PnKYn+fDvKGS7TqGgGuzV-Mx+g9Sw@mail.gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-gplv2][warrior][PATCH] bc: use u-a for bc as well
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
X-List-Received-Date: Fri, 21 Jun 2019 12:52:51 -0000
Content-Type: multipart/alternative; boundary="00000000000098cfdd058bd4f0d5"

--00000000000098cfdd058bd4f0d5
Content-Type: text/plain; charset="UTF-8"

ping for warrior

On Tue, Jun 11, 2019 at 9:08 AM Martin Jansa <martin.jansa@gmail.com> wrote:

> * bc can be provided by busybox as well (e.g. if you have your own
>   defconfig and forget to explicitly disable it:
>   ...
>   *
>   * Miscellaneous Utilities
>   *
>   adjtimex (4.7 kb) (ADJTIMEX) [N/y/?] n
>   bbconfig (9.7 kb) (BBCONFIG) [N/y/?] n
>   bc (45 kb) (BC) [Y/n/?] (NEW) dc (36 kb) (DC) [Y/n/?] y
>     Use bc code base for dc (larger, more features) (FEATURE_DC_BIG) [Y]
> (NEW) y
>       Interactive mode (+4kb) (FEATURE_BC_INTERACTIVE) [Y/n/?] (NEW)
>  Enable bc/dc long options (FEATURE_BC_LONG_OPTIONS) [Y/n] (NEW) beep (2.4
> kb) (BEEP) [N/y/?] n
>   chat (6.3 kb) (CHAT) [N/y/?] n
>   conspy (10 kb) (CONSPY) [N/y/?] n
>   ...
>   ), causing conflict in u-a:
>
>   update-alternatives: Error: not linking /usr/bin/bc to
> /bin/busybox.nosuid since /usr/bin/bc exists and is not a link
>
>   and then whole do_rootfs or do_populate_sdk to fail because busybox
> postinst is failing:
>
>   do_populate_sdk: Postinstall scriptlets of ['busybox'] have failed. If
> the intention is to defer them to first boot,
>   then please place them into pkg_postinst_ontarget_${PN} (). Deferring to
> first boot via 'exit 1' is no longer supported.
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  recipes-extended/bc/bc_1.06.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-extended/bc/bc_1.06.bb b/recipes-extended/bc/
> bc_1.06.bb
> index d8c8a86..3de1b24 100644
> --- a/recipes-extended/bc/bc_1.06.bb
> +++ b/recipes-extended/bc/bc_1.06.bb
> @@ -20,7 +20,7 @@ SRC_URI[sha256sum] =
> "4ef6d9f17c3c0d92d8798e35666175ecd3d8efac4009d6457b5c99cea7
>
>  inherit autotools texinfo update-alternatives
>
> -ALTERNATIVE_${PN} = "dc"
> +ALTERNATIVE_${PN} = "bc dc"
>  ALTERNATIVE_PRIORITY = "100"
>
>  BBCLASSEXTEND = "native"
> --
> 2.17.1
>
>

--00000000000098cfdd058bd4f0d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ping for warrior</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 11, 2019 at 9:08 AM Martin Jan=
sa &lt;<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">* bc=
 can be provided by busybox as well (e.g. if you have your own<br>
=C2=A0 defconfig and forget to explicitly disable it:<br>
=C2=A0 ...<br>
=C2=A0 *<br>
=C2=A0 * Miscellaneous Utilities<br>
=C2=A0 *<br>
=C2=A0 adjtimex (4.7 kb) (ADJTIMEX) [N/y/?] n<br>
=C2=A0 bbconfig (9.7 kb) (BBCONFIG) [N/y/?] n<br>
=C2=A0 bc (45 kb) (BC) [Y/n/?] (NEW) dc (36 kb) (DC) [Y/n/?] y<br>
=C2=A0 =C2=A0 Use bc code base for dc (larger, more features) (FEATURE_DC_B=
IG) [Y] (NEW) y<br>
=C2=A0 =C2=A0 =C2=A0 Interactive mode (+4kb) (FEATURE_BC_INTERACTIVE) [Y/n/=
?] (NEW)=C2=A0 =C2=A0 =C2=A0Enable bc/dc long options (FEATURE_BC_LONG_OPTI=
ONS) [Y/n] (NEW) beep (2.4 kb) (BEEP) [N/y/?] n<br>
=C2=A0 chat (6.3 kb) (CHAT) [N/y/?] n<br>
=C2=A0 conspy (10 kb) (CONSPY) [N/y/?] n<br>
=C2=A0 ...<br>
=C2=A0 ), causing conflict in u-a:<br>
<br>
=C2=A0 update-alternatives: Error: not linking /usr/bin/bc to /bin/busybox.=
nosuid since /usr/bin/bc exists and is not a link<br>
<br>
=C2=A0 and then whole do_rootfs or do_populate_sdk to fail because busybox =
postinst is failing:<br>
<br>
=C2=A0 do_populate_sdk: Postinstall scriptlets of [&#39;busybox&#39;] have =
failed. If the intention is to defer them to first boot,<br>
=C2=A0 then please place them into pkg_postinst_ontarget_${PN} (). Deferrin=
g to first boot via &#39;exit 1&#39; is no longer supported.<br>
<br>
Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com" t=
arget=3D"_blank">Martin.Jansa@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-extended/bc/<a href=3D"http://bc_1.06.bb" rel=3D"noreferrer" =
target=3D"_blank">bc_1.06.bb</a> | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-extended/bc/<a href=3D"http://bc_1.06.bb" rel=3D"noref=
errer" target=3D"_blank">bc_1.06.bb</a> b/recipes-extended/bc/<a href=3D"ht=
tp://bc_1.06.bb" rel=3D"noreferrer" target=3D"_blank">bc_1.06.bb</a><br>
index d8c8a86..3de1b24 100644<br>
--- a/recipes-extended/bc/<a href=3D"http://bc_1.06.bb" rel=3D"noreferrer" =
target=3D"_blank">bc_1.06.bb</a><br>
+++ b/recipes-extended/bc/<a href=3D"http://bc_1.06.bb" rel=3D"noreferrer" =
target=3D"_blank">bc_1.06.bb</a><br>
@@ -20,7 +20,7 @@ SRC_URI[sha256sum] =3D &quot;4ef6d9f17c3c0d92d8798e356661=
75ecd3d8efac4009d6457b5c99cea7<br>
<br>
=C2=A0inherit autotools texinfo update-alternatives<br>
<br>
-ALTERNATIVE_${PN} =3D &quot;dc&quot;<br>
+ALTERNATIVE_${PN} =3D &quot;bc dc&quot;<br>
=C2=A0ALTERNATIVE_PRIORITY =3D &quot;100&quot;<br>
<br>
=C2=A0BBCLASSEXTEND =3D &quot;native&quot;<br>
-- <br>
2.17.1<br>
<br>
</blockquote></div>

--00000000000098cfdd058bd4f0d5--
