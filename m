Return-Path: <changhyeok.bae@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C4C8E00ACF; Sun, 11 Jun 2017 21:07:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (changhyeok.bae[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B25E00AA2
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 21:07:24 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id f20so99032itb.2
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 21:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sT5heGNoJnQbAsjJa1BIduxy+XoEOE90jXa/R0tbrH8=;
	b=Aj12MkPcNS/z9mTnG3wiUCidAkZbZwzREW3bjXcvMkJFA6/u2KcXfTShkKDCPqhXeS
	vqC5+y2uS8fOV3QmZjOgy3769qN1eNFfqvjh/o2rZE1OJzcBJyUKg2OYe3Tiiy9OMUqg
	/nQXBJwF/QkC5ezGeJVlzonydpBY50Ir7u7fK2UBlr/O/KG9DozYJy3+4GC0XLQbfU3e
	ld5Vg0tHc9aUb1+GZPsI5zeR8F/4ofHcq1eLPIsV+K885KdaEiIZxckmUXiOe+Xk75Uv
	wQsV85VuUeKfqb0qwCyq53alHxq74dSnHn5YU8kzrq7gHCi+gHLKN0xDKOta8ufeKdnI
	URcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sT5heGNoJnQbAsjJa1BIduxy+XoEOE90jXa/R0tbrH8=;
	b=sVvqL0nCf6WMrzuTKLFxL5qzsrPHxW37LCiNRc/hkfJ5rV3/ldCP8fEygydLRur3Bz
	QEo7d6naaC7aoJuv08pV2V57GjB5VqgXWWV5toF5h5HpyfWgqYPeVemriY1Pjzdz+4af
	Cb/B7G8ij3v5lLDeMVBPG4nd61guHwFSod8PKXbiwD7Sksnp4sORtpA6+rPH/TyxzoPo
	OFx/VYUI//HuZ1pMgXzFk1049Flh5teqxoVPsDeeZrW/F61gUlbfJWtcsK/rgKldNT3j
	EzCSIPDWBPLxaP4DudTXmMG52FodokRgZ0gd8PtQEzSHFW66/mHki5WkDvigu0YJB0fk
	d36w==
X-Gm-Message-State: AODbwcAQknm+Z5LgP/kSromDIzNG1EXWaxSPJuPCMPc1BgoUNWq1adEb
	Cce2IDtAvbX7w8HmlDup0/MAjQBUPQ==
X-Received: by 10.36.98.141 with SMTP id d135mr10669954itc.28.1497240444105;
	Sun, 11 Jun 2017 21:07:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.34.16 with HTTP; Sun, 11 Jun 2017 21:07:23 -0700 (PDT)
In-Reply-To: <CAMKF1soh9YHRHi2=5rErf78jzPLeSsPn-ff8oao2WpPtLUpPJw@mail.gmail.com>
References: <1497229386-28541-1-git-send-email-changhyeok.bae@gmail.com>
	<CAMKF1soh9YHRHi2=5rErf78jzPLeSsPn-ff8oao2WpPtLUpPJw@mail.gmail.com>
From: Changhyeok Bae <changhyeok.bae@gmail.com>
Date: Mon, 12 Jun 2017 13:07:23 +0900
Message-ID: <CACrLJgDi2UG1f1=Mpd7XL5aBAUJt6ngHbOCfgqY+dMCGszTpgA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: [yocto-docs][PATCH] ref-manual: Replace uclibc to musl
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
X-List-Received-Date: Mon, 12 Jun 2017 04:07:29 -0000
Content-Type: multipart/alternative; boundary="001a1145b0e0d078f50551bb7460"

--001a1145b0e0d078f50551bb7460
Content-Type: text/plain; charset="UTF-8"

Hi Khem

Thanks for the correction. I'll fix it.

Thanks
Changhyeok

2017-06-12 13:00 GMT+09:00 Khem Raj <raj.khem@gmail.com>:

> On Sun, Jun 11, 2017 at 6:03 PM, Changhyeok Bae
> <changhyeok.bae@gmail.com> wrote:
> > uClibc Replaced by musl from Yocto 2.2
> >
> > Signed-off-by: Changhyeok Bae <changhyeok.bae@gmail.com>
> > ---
> >  documentation/ref-manual/ref-variables.xml | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> > index bd9e517..f284e6e 100644
> > --- a/documentation/ref-manual/ref-variables.xml
> > +++ b/documentation/ref-manual/ref-variables.xml
> > @@ -5131,9 +5131,9 @@
> >                      is normally the same as the
> >                      <link linkend='var-TARGET_OS'><
> filename>TARGET_OS</filename></link>.
> >                      The variable can be set to "linux" for
> <filename>glibc</filename>-based systems and
> > -                    to "linux-uclibc" for <filename>uclibc</filename>.
> > +                    to "linux-musl" for <filename>musl</filename>.
> >                      For ARM/EABI targets, there are also
> "linux-gnueabi" and
> > -                    "linux-uclibc-gnueabi" values possible.
> > +                    "linux-musl-gnueabi" values possible.
> >                  </para>
> >              </glossdef>
> >          </glossentry>
> > @@ -14152,9 +14152,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
> >  <!--                <para role="glossdeffirst"><imagedata
> fileref="figures/define-generic.png" /> -->
> >                      Specifies the target's operating system.
> >                      The variable can be set to "linux" for
> <filename>glibc</filename>-based systems and
> > -                    to "linux-uclibc" for <filename>uclibc</filename>.
> > +                    to "linux-musl" for <filename>musl</filename>.
> >                      For ARM/EABI targets, there are also
> "linux-gnueabi" and
> > -                    "linux-uclibc-gnueabi" values possible.
> > +                    "linux-musl-gnueabi" values possible.
>
>
> this should be linux-musleabi
>
> >                  </para>
> >              </glossdef>
> >          </glossentry>
> > @@ -14283,7 +14283,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
> >
> >          <glossentry id='var-TCLIBC'><glossterm>TCLIBC</glossterm>
> >              <info>
> > -                TCLIBC[doc] = "Specifies GNU standard C library (libc)
> variant to use during the build process. You can select 'glibc' or
> 'uclibc'."
> > +                TCLIBC[doc] = "Specifies GNU standard C library (libc)
> variant to use during the build process. You can select 'glibc' or 'musl'."
> >              </info>
> >              <glossdef>
> >                  <para role="glossdeffirst">
> > @@ -14295,7 +14295,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
> >                  </para>
> >
> >                  <para>
> > -                    You can select "glibc" or "uclibc".
> > +                    You can select "glibc" or "musl".
> >                  </para>
> >              </glossdef>
> >          </glossentry>
> > @@ -14334,7 +14334,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
> >                      <link linkend='var-TCLIBC'><
> filename>TCLIBC</filename></link>,
> >                      which controls the variant of the GNU standard C
> library
> >                      (<filename>libc</filename>) used during the build
> process:
> > -                    <filename>glibc</filename> or
> <filename>uclibc</filename>.
> > +                    <filename>glibc</filename> or
> <filename>musl</filename>.
> >                  </para>
> >
> >                  <para>
> > --
> > 2.7.4
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Thanks
Changhyeok

--001a1145b0e0d078f50551bb7460
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem<div><br></div><div>Thanks for the correction. I&#3=
9;ll fix it.</div><div><br></div><div>Thanks</div><div>Changhyeok</div></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-06-12 13:0=
0 GMT+09:00 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail=
.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span>:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Sun, Jun 11, 2=
017 at 6:03 PM, Changhyeok Bae<br>
&lt;<a href=3D"mailto:changhyeok.bae@gmail.com">changhyeok.bae@gmail.com</a=
>&gt; wrote:<br>
&gt; uClibc Replaced by musl from Yocto 2.2<br>
&gt;<br>
&gt; Signed-off-by: Changhyeok Bae &lt;<a href=3D"mailto:changhyeok.bae@gma=
il.com">changhyeok.bae@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 documentation/ref-manual/ref-<wbr>variables.xml | 14 +++++++----=
---<br>
&gt;=C2=A0 1 file changed, 7 insertions(+), 7 deletions(-)<br>
&gt;<br>
&gt; diff --git a/documentation/ref-manual/<wbr>ref-variables.xml b/documen=
tation/ref-manual/<wbr>ref-variables.xml<br>
&gt; index bd9e517..f284e6e 100644<br>
&gt; --- a/documentation/ref-manual/<wbr>ref-variables.xml<br>
&gt; +++ b/documentation/ref-manual/<wbr>ref-variables.xml<br>
&gt; @@ -5131,9 +5131,9 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 is normally the same as the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &lt;link linkend=3D&#39;var-TARGET_OS&#39;&gt;&lt;<wbr>filename&gt;T=
ARGET_OS&lt;/filename&gt;&lt;<wbr>/link&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 The variable can be set to &quot;linux&quot; for &lt;filename&gt;gli=
bc&lt;/filename&gt;-<wbr>based systems and<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 to &quot;linux-uclibc&quot; for &lt;filename&gt;uclibc&lt;/filename&gt;.<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 to &quot;linux-musl&quot; for &lt;filename&gt;musl&lt;/filename&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 For ARM/EABI targets, there are also &quot;linux-gnueabi&quot; and<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;linux-uclibc-gnueabi&quot; values possible.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;linux-musl-gnueabi&quot; values possible.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/par=
a&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossdef&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossentry&gt;<br>
&gt; @@ -14152,9 +14152,9 @@ recipes-graphics/xorg-font/<wbr>font-alias_1.0=
.3.bb:PR =3D &quot;${INC_PR}.3&quot;<br>
&gt;=C2=A0 &lt;!--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &=
lt;para role=3D&quot;glossdeffirst&quot;&gt;&lt;<wbr>imagedata fileref=3D&q=
uot;figures/define-<wbr>generic.png&quot; /&gt; --&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Specifies the target&#39;s operating system.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 The variable can be set to &quot;linux&quot; for &lt;filename&gt;gli=
bc&lt;/filename&gt;-<wbr>based systems and<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 to &quot;linux-uclibc&quot; for &lt;filename&gt;uclibc&lt;/filename&gt;.<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 to &quot;linux-musl&quot; for &lt;filename&gt;musl&lt;/filename&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 For ARM/EABI targets, there are also &quot;linux-gnueabi&quot; and<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;linux-uclibc-gnueabi&quot; values possible.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;linux-musl-gnueabi&quot; values possible.<br>
<br>
<br>
</div></div>this should be linux-musleabi<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/par=
a&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossdef&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossentry&gt;<br>
&gt; @@ -14283,7 +14283,7 @@ recipes-graphics/xorg-font/<wbr>font-alias_1.0=
.3.bb:PR =3D &quot;${INC_PR}.3&quot;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;glossentry id=3D&#39;var-TCLIBC&=
#39;&gt;&lt;glossterm&gt;<wbr>TCLIBC&lt;/glossterm&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;info&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TCLIBC[doc] =
=3D &quot;Specifies GNU standard C library (libc) variant to use during the=
 build process. You can select &#39;glibc&#39; or &#39;uclibc&#39;.&quot;<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TCLIBC[doc] =
=3D &quot;Specifies GNU standard C library (libc) variant to use during the=
 build process. You can select &#39;glibc&#39; or &#39;musl&#39;.&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/info&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;glossdef&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;para=
 role=3D&quot;glossdeffirst&quot;&gt;<br>
&gt; @@ -14295,7 +14295,7 @@ recipes-graphics/xorg-font/<wbr>font-alias_1.0=
.3.bb:PR =3D &quot;${INC_PR}.3&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/par=
a&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;para=
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 You can select &quot;glibc&quot; or &quot;uclibc&quot;.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 You can select &quot;glibc&quot; or &quot;musl&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/par=
a&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossdef&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/glossentry&gt;<br>
&gt; @@ -14334,7 +14334,7 @@ recipes-graphics/xorg-font/<wbr>font-alias_1.0=
.3.bb:PR =3D &quot;${INC_PR}.3&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &lt;link linkend=3D&#39;var-TCLIBC&#39;&gt;&lt;<wbr>filename&gt;TCLI=
BC&lt;/filename&gt;&lt;/<wbr>link&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 which controls the variant of the GNU standard C library<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (&lt;filename&gt;libc&lt;/filename&gt;) used during the build proces=
s:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &lt;filename&gt;glibc&lt;/filename&gt; or &lt;filename&gt;uclibc&lt;/filen=
ame&gt;.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &lt;filename&gt;glibc&lt;/filename&gt; or &lt;filename&gt;musl&lt;/filenam=
e&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/par=
a&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;para=
&gt;<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div di=
r=3D"ltr">Thanks<div>Changhyeok</div></div></div>
</div>

--001a1145b0e0d078f50551bb7460--
