Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB7BFE00B81; Thu, 21 Feb 2019 11:08:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CAB8E00754
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 11:08:40 -0800 (PST)
Received: by mail-ed1-f67.google.com with SMTP id d9so24049266edh.12
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 11:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=T/VKhXD19sERl9Rrfxtpb0PWHtsVtLXB0AT5EsQtFEM=;
	b=ArADPJmEZsauU14cXKH/yhXmC0OGEqiFC8hX3f46lUXPIQ884jZZr8xImsXBqqUYJq
	O32j1sOkkbA5Ozw3+TboeOXK9TMq81DemvWV0wxjUckOGyXUTiIKDqG15On6l2YFa6lL
	ek7q0K+NmQUPAwupsFsgpiYLYss1g86AuPG643HlASafQQfNZJ31lA4vpV0BAVlwbQ3k
	dlJyymkV5ouQdG1dZMSk8ZQi6Zmjvu38pN3LXuaIcu38ivPMFQleOOCsO/6OTI7IgTpz
	JVpCdn74Hscc0sA1FECznsNE+hyD5N4W9WWRHT6Eex4qnzAl3WOftYQw86EXx3MTSWN1
	eiiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=T/VKhXD19sERl9Rrfxtpb0PWHtsVtLXB0AT5EsQtFEM=;
	b=YK/MjywFrHPSx5b17SeP8OZqegzOE7aOsnd+tuzA31ePXgoX1mgMryr225ozq/PUQW
	UeH0Mo22u9XMUuEtDjB0p5BR8al/QVZmxthVI4aZDr4t/XvW83uoxt7t8C5+LRLyKuzc
	YyX9sbWgqRNVeUtrrtS50o11x0Dpms6ZTb4C8LQy4FEkoP+kNE97mMnS4X59ZggmaEDC
	5kMRf2PCgbgM48AxMw7oorvVCMI80T3OY5k4LFGsRZTRHg3WnelTldorWZXEeXQoMK+/
	gYBokI0viwn4oZ5s+LSfi6nfbcCh7YZkjchgZETWgHs7KwMy0QUj1BEEzxY3KMTF1C52
	BMVA==
X-Gm-Message-State: AHQUAuakLwfGYfDqQIS915WrHF80ljtc30LWQTJwdIww2S3WL4iV2ud2
	X8BzSun5LCsSowTn9HXvLD2R8jKPxTfMbEZsEyPEKg8Y
X-Google-Smtp-Source: AHgI3IYc83uR+IxEW/3HSSMf4juymW28hSDUw6Nt9/F3sJ/QLC8T9G+EtOSJ3lWSuStn1QrfzXW96O2JjipjIi3VqSE=
X-Received: by 2002:a17:906:3719:: with SMTP id
	d25mr58245ejc.142.1550776119560; 
	Thu, 21 Feb 2019 11:08:39 -0800 (PST)
MIME-Version: 1.0
References: <20190221120342.23013-1-daniel.ammann@bytesatwork.ch>
In-Reply-To: <20190221120342.23013-1-daniel.ammann@bytesatwork.ch>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 21 Feb 2019 11:08:28 -0800
Message-ID: <CAFNP8OsspQarr-_sgtrbpRpZTg7=__iNyc_-YZrxJfWt9uLOdQ@mail.gmail.com>
To: Daniel Ammann <daniel.ammann@bytesatwork.ch>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATCH] ref-manual: Fix typo
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
X-List-Received-Date: Thu, 21 Feb 2019 19:08:42 -0000
Content-Type: multipart/alternative; boundary="000000000000bb8d7905826c3320"

--000000000000bb8d7905826c3320
Content-Type: text/plain; charset="UTF-8"

Thanks Daniel,

Fixed and published to tips in Sumo, Thud, and Warrior.

See
https://yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#var-USERADD_PACKAGES
for example in 2.7 (under development) YP Reference Manual.

Scott

On Thu, Feb 21, 2019 at 4:11 AM Daniel Ammann <daniel.ammann@bytesatwork.ch>
wrote:

> Signed-off-by: Daniel Ammann <daniel.ammann@bytesatwork.ch>
> ---
>  documentation/ref-manual/ref-variables.xml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index d9d0915a8..9a47bcd33 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -16884,7 +16884,7 @@
>       USERADD_PACKAGES = "${PN}"
>                      </literallayout>
>                      <note>
> -                        If follows that if you are going to use the
> +                        It follows that if you are going to use the
>                          <filename>USERADD_PACKAGES</filename> variable,
>                          you need to set one or more of the
>                          <link
> linkend='var-USERADD_PARAM'><filename>USERADD_PARAM</filename></link>,
> --
> 2.11.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000bb8d7905826c3320
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks Daniel, <br></div><div><br></=
div><div>Fixed and published to tips in Sumo, Thud, and Warrior.</div><div>=
<br></div><div>See <a href=3D"https://yoctoproject.org/docs/2.7/ref-manual/=
ref-manual.html#var-USERADD_PACKAGES">https://yoctoproject.org/docs/2.7/ref=
-manual/ref-manual.html#var-USERADD_PACKAGES</a> for example in 2.7 (under =
development) YP Reference Manual.</div><div><br></div><div>Scott<br></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Feb 21, 2019 at 4:11 AM Daniel Ammann &lt;<a href=3D"mailto:da=
niel.ammann@bytesatwork.ch">daniel.ammann@bytesatwork.ch</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Signed-off-by: Dani=
el Ammann &lt;<a href=3D"mailto:daniel.ammann@bytesatwork.ch" target=3D"_bl=
ank">daniel.ammann@bytesatwork.ch</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-variables.xml | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref=
-manual/ref-variables.xml<br>
index d9d0915a8..9a47bcd33 100644<br>
--- a/documentation/ref-manual/ref-variables.xml<br>
+++ b/documentation/ref-manual/ref-variables.xml<br>
@@ -16884,7 +16884,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 USERADD_PACKAGES =3D &quot;${PN}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;/literallayout&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;note&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 If follows that if you are going to use the<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 It follows that if you are going to use the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&lt;filename&gt;USERADD_PACKAGES&lt;/filename&gt; variable=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0you need to set one or more of the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&lt;link linkend=3D&#39;var-USERADD_PARAM&#39;&gt;&lt;file=
name&gt;USERADD_PARAM&lt;/filename&gt;&lt;/link&gt;,<br>
-- <br>
2.11.0<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000bb8d7905826c3320--
