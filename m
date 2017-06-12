Return-Path: <changhyeok.bae@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B23ACE00AE4; Sun, 11 Jun 2017 22:52:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (changhyeok.bae[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EFA1E00ACF
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 22:52:47 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id i93so9491840iod.3
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 22:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Va0oQPwI0Sl19HPu65tDgm5ye10woKswLyOf+kd51ng=;
	b=Fb0Lvqzub9AZa0w5b94PERXYdTkN2YDB8Zna3vrsf3I2sn75UlPczXLshx2yMUYb+E
	1fFwi84Y+FWd4l3HOvckrSEaNZ2R+fnr87CfejS2RanSl3tgOtuSyxc6WuGcLICcDPrw
	N9N+eKtwC+814gqBtCsVRAyrKvgP6RBJeAxzVdyT3MIY1TTqDhFrTElqUv8IFc0IHgmk
	i0Uj/4KSphvk8c8Au4n429XJF2ypqGKhLN9Qut0M4uoKCFHt6PJhqXBvGPM1qSyGnAxv
	Z/wE/rUkB5Nr74FZnB6WpQqDTmlIx0nrGZNxUq+mHXd0ol2Rbwz6RB4FL93ykpnqNRPA
	vyNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Va0oQPwI0Sl19HPu65tDgm5ye10woKswLyOf+kd51ng=;
	b=P0I1K+yuQcIc+jxeLfhVkods0DUpALNt/48T778+BT4rItufP/nhODuQhfUKDXVJa7
	HxOfXUm3hVpsiRRl5b9Iii0/65MAXii2p0seeZ/XVwkbXcmITv6/TTGGhizV1FzE0/Rm
	tHLpf1nAlUBG3rBJg65a8pc4dAGK+ApnLuFxLImT1eQRiN+So+BOyl87fQvzgzIXBEtM
	47BHOI6dyvO/g4FHMaKZ5kDv3Ay1ntwhglQDDUVHaJXoFY9C/yaWJtK/PDJOgt7Tf8/g
	ibNB2UudR1UOvrvBXgKByzVqR6JWfS1WtBvlDuruF8VnK0R4VQ688MduhKOSp0uW0p6I
	d/gg==
X-Gm-Message-State: AODbwcBNTrW8ZjBj4miDzqiW7Y5tPmYvC/sZRNlKoSUH6LbSbg9pf0tK
	g0pTRuj0O031a9XiVWxG0tc6Mi3kMw==
X-Received: by 10.107.15.87 with SMTP id x84mr43420176ioi.41.1497246767148;
	Sun, 11 Jun 2017 22:52:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.34.16 with HTTP; Sun, 11 Jun 2017 22:52:46 -0700 (PDT)
In-Reply-To: <1497240475-2957-1-git-send-email-changhyeok.bae@gmail.com>
References: <1497240475-2957-1-git-send-email-changhyeok.bae@gmail.com>
From: Changhyeok Bae <changhyeok.bae@gmail.com>
Date: Mon, 12 Jun 2017 14:52:46 +0900
Message-ID: <CACrLJgCVG=mkKukYnG_cTXmS3y-XDQvi7RNCG+R8yE7GTsRQ5Q@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: [yocto-docs][PATCH v2] ref-manual: Replace uclibc to musl
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
X-List-Received-Date: Mon, 12 Jun 2017 05:52:51 -0000
Content-Type: multipart/alternative; boundary="001a113f34b6b2747a0551bced65"

--001a113f34b6b2747a0551bced65
Content-Type: text/plain; charset="UTF-8"

This patch should be merged in morty (2.2), pryo (2.3), and master branch.

Thanks
Changhyeok

2017-06-12 13:07 GMT+09:00 Changhyeok Bae <changhyeok.bae@gmail.com>:

> uClibc Replaced by musl from Yocto 2.2
>
> Signed-off-by: Changhyeok Bae <changhyeok.bae@gmail.com>
> ---
>  documentation/ref-manual/ref-variables.xml | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index bd9e517..0967e40 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -5131,9 +5131,9 @@
>                      is normally the same as the
>                      <link linkend='var-TARGET_OS'><
> filename>TARGET_OS</filename></link>.
>                      The variable can be set to "linux" for
> <filename>glibc</filename>-based systems and
> -                    to "linux-uclibc" for <filename>uclibc</filename>.
> +                    to "linux-musl" for <filename>musl</filename>.
>                      For ARM/EABI targets, there are also "linux-gnueabi"
> and
> -                    "linux-uclibc-gnueabi" values possible.
> +                    "linux-musleabi" values possible.
>                  </para>
>              </glossdef>
>          </glossentry>
> @@ -14152,9 +14152,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>  <!--                <para role="glossdeffirst"><imagedata
> fileref="figures/define-generic.png" /> -->
>                      Specifies the target's operating system.
>                      The variable can be set to "linux" for
> <filename>glibc</filename>-based systems and
> -                    to "linux-uclibc" for <filename>uclibc</filename>.
> +                    to "linux-musl" for <filename>musl</filename>.
>                      For ARM/EABI targets, there are also "linux-gnueabi"
> and
> -                    "linux-uclibc-gnueabi" values possible.
> +                    "linux-musleabi" values possible.
>                  </para>
>              </glossdef>
>          </glossentry>
> @@ -14283,7 +14283,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>
>          <glossentry id='var-TCLIBC'><glossterm>TCLIBC</glossterm>
>              <info>
> -                TCLIBC[doc] = "Specifies GNU standard C library (libc)
> variant to use during the build process. You can select 'glibc' or
> 'uclibc'."
> +                TCLIBC[doc] = "Specifies GNU standard C library (libc)
> variant to use during the build process. You can select 'glibc' or 'musl'."
>              </info>
>              <glossdef>
>                  <para role="glossdeffirst">
> @@ -14295,7 +14295,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                  </para>
>
>                  <para>
> -                    You can select "glibc" or "uclibc".
> +                    You can select "glibc" or "musl".
>                  </para>
>              </glossdef>
>          </glossentry>
> @@ -14334,7 +14334,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                      <link linkend='var-TCLIBC'><
> filename>TCLIBC</filename></link>,
>                      which controls the variant of the GNU standard C
> library
>                      (<filename>libc</filename>) used during the build
> process:
> -                    <filename>glibc</filename> or
> <filename>uclibc</filename>.
> +                    <filename>glibc</filename> or
> <filename>musl</filename>.
>                  </para>
>
>                  <para>
> --
> 2.7.4
>
>


-- 
Thanks
Changhyeok

--001a113f34b6b2747a0551bced65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch should be merged in morty (2.2), pryo (2.3), an=
d master branch.<div><br></div><div>Thanks</div><div>Changhyeok</div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-06-12 13:07 =
GMT+09:00 Changhyeok Bae <span dir=3D"ltr">&lt;<a href=3D"mailto:changhyeok=
.bae@gmail.com" target=3D"_blank">changhyeok.bae@gmail.com</a>&gt;</span>:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><span class=3D"">uClibc Replaced by musl =
from Yocto 2.2<br>
<br>
Signed-off-by: Changhyeok Bae &lt;<a href=3D"mailto:changhyeok.bae@gmail.co=
m">changhyeok.bae@gmail.com</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-<wbr>variables.xml | 14 +++++++-------<b=
r>
=C2=A01 file changed, 7 insertions(+), 7 deletions(-)<br>
<br>
diff --git a/documentation/ref-manual/<wbr>ref-variables.xml b/documentatio=
n/ref-manual/<wbr>ref-variables.xml<br>
</span>index bd9e517..0967e40 100644<br>
<span class=3D"">--- a/documentation/ref-manual/<wbr>ref-variables.xml<br>
+++ b/documentation/ref-manual/<wbr>ref-variables.xml<br>
@@ -5131,9 +5131,9 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0is normally the same as the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;link linkend=3D&#39;var-TARGET_OS&#39;&gt;&lt;<wbr>filename&gt;TARGE=
T_OS&lt;/filename&gt;&lt;<wbr>/link&gt;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0The variable can be set to &quot;linux&quot; for &lt;filename&gt;glibc&l=
t;/filename&gt;-<wbr>based systems and<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to &=
quot;linux-uclibc&quot; for &lt;filename&gt;uclibc&lt;/filename&gt;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to &=
quot;linux-musl&quot; for &lt;filename&gt;musl&lt;/filename&gt;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0For ARM/EABI targets, there are also &quot;linux-gnueabi&quot; and<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quo=
t;linux-uclibc-gnueabi&quot; values possible.<br>
</span>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;linux-musleabi&quot; values possible.<br>
<span class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0&lt;/para&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossentry&gt;<br>
@@ -14152,9 +14152,9 @@ recipes-graphics/xorg-font/<wbr>font-alias_1.0.3.bb=
:PR =3D &quot;${INC_PR}.3&quot;<br>
=C2=A0&lt;!--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;pa=
ra role=3D&quot;glossdeffirst&quot;&gt;&lt;<wbr>imagedata fileref=3D&quot;f=
igures/define-<wbr>generic.png&quot; /&gt; --&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Specifies the target&#39;s operating system.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0The variable can be set to &quot;linux&quot; for &lt;filename&gt;glibc&l=
t;/filename&gt;-<wbr>based systems and<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to &=
quot;linux-uclibc&quot; for &lt;filename&gt;uclibc&lt;/filename&gt;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to &=
quot;linux-musl&quot; for &lt;filename&gt;musl&lt;/filename&gt;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0For ARM/EABI targets, there are also &quot;linux-gnueabi&quot; and<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quo=
t;linux-uclibc-gnueabi&quot; values possible.<br>
</span>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;linux-musleabi&quot; values possible.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossentry&gt;<br>
<div class=3D"HOEnZb"><div class=3D"h5">@@ -14283,7 +14283,7 @@ recipes-gra=
phics/xorg-font/<wbr>font-alias_1.0.3.bb:PR =3D &quot;${INC_PR}.3&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;glossentry id=3D&#39;var-TCLIBC&#39;&=
gt;&lt;glossterm&gt;<wbr>TCLIBC&lt;/glossterm&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;info&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TCLIBC[doc] =3D &q=
uot;Specifies GNU standard C library (libc) variant to use during the build=
 process. You can select &#39;glibc&#39; or &#39;uclibc&#39;.&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TCLIBC[doc] =3D &q=
uot;Specifies GNU standard C library (libc) variant to use during the build=
 process. You can select &#39;glibc&#39; or &#39;musl&#39;.&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/info&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;para role=
=3D&quot;glossdeffirst&quot;&gt;<br>
@@ -14295,7 +14295,7 @@ recipes-graphics/xorg-font/<wbr>font-alias_1.0.3.bb=
:PR =3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;para&gt;<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 You =
can select &quot;glibc&quot; or &quot;uclibc&quot;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 You =
can select &quot;glibc&quot; or &quot;musl&quot;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossentry&gt;<br>
@@ -14334,7 +14334,7 @@ recipes-graphics/xorg-font/<wbr>font-alias_1.0.3.bb=
:PR =3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;link linkend=3D&#39;var-TCLIBC&#39;&gt;&lt;<wbr>filename&gt;TCLIBC&l=
t;/filename&gt;&lt;/<wbr>link&gt;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0which controls the variant of the GNU standard C library<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(&lt;filename&gt;libc&lt;/filename&gt;) used during the build process:<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
filename&gt;glibc&lt;/filename&gt; or &lt;filename&gt;uclibc&lt;/filename&g=
t;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
filename&gt;glibc&lt;/filename&gt; or &lt;filename&gt;musl&lt;/filename&gt;=
.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;para&gt;<=
br>
--<br>
2.7.4<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">Thanks<div>Changhyeok</div></div></div>
</div>

--001a113f34b6b2747a0551bced65--
