Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEA49E00D0B; Thu, 13 Dec 2018 16:19:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADCA0E00CEA
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 16:19:42 -0800 (PST)
Received: by mail-ed1-f67.google.com with SMTP id x30so3582081edx.2
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 16:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=GWbPYKs3PMEtXPoOkv9ma1e2NcklMQMfxn/EeceuFiU=;
	b=De/wZTTdIniEMFByH7E5I2wCI0GAneQolbojoINLAZlRGbkdx1hfxIrodrUXZ2TyA0
	M4sY+PcCFRSdw5a7gr9tQ/ZwMwQmDKP1B5YJmS+HmJzZrR8z4wW7WZ3r5I8h41mJtNv3
	lOzjEKdaP4lVh80mNlFitI9jypWTsbx+lR9MNlWmjvn/FDmYjg1Ya8qzSIiSfkAhj559
	w9r6NhmrEJSqpSIMT+haTQHJhCuiyLkMovtm6z/oVIj8HyuB6amXGsimJ11jDXl5O9H3
	t7vmBpKPF4C1uk8p/ZgX85HRWeKa7hMFiB6+aH4dMciDHX/p54iqsx00vcmFhfe6N0jK
	+7IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=GWbPYKs3PMEtXPoOkv9ma1e2NcklMQMfxn/EeceuFiU=;
	b=rHSEsQxW0n2XAbVtNW5V0bCh3rQh7uuCScADmyJrLB0oZwmyR9BXDygF/gz+e+0Soa
	HseKeqOlt4YJZ1ZeTQm1t7qIxYJGizdI8W2QgB05KY8M1Bg/wolBUesvZ6evSqbTU0K8
	8jRYCrm0uyvwcJ6wAMEwFzCe8nYCD61EzHcI2PzmxghgZbyx9GAWeznFk1I7c0JqsRwv
	tdQ9OoKD86ThM1iXbSuaH0xVSRfdAOOSkpkP/QhTxT/ZE41a/JGutqNlvIj9UJf4suZP
	xNTPH6Wsf+qun3jGHUHhH1wBXXqM0QGONr7nari/PUbsDLeg/gKSzCr2kCoLZxPfRhYr
	aRAw==
X-Gm-Message-State: AA+aEWatcp6HBC46GojZH25lLIoerH+EHrdzMSrOvEfa4EuTRnhm9Ggq
	sgTmCNWA+JgslFzgUCa2FluOE8TohYC2sXS9bOoobPob
X-Google-Smtp-Source: AFSGD/W/RTz2EzPHfTImKROB2a7NfAMf5m95L6SsGY6wbpiEgKttIZRHL26h0vLyTvePdBrm/qRlB3PtR6H0s2O5cHM=
X-Received: by 2002:a17:906:4a4b:: with SMTP id
	a11-v6mr872388ejv.68.1544746781576; 
	Thu, 13 Dec 2018 16:19:41 -0800 (PST)
MIME-Version: 1.0
References: <20181213112305.29609-1-pkj@axis.com>
In-Reply-To: <20181213112305.29609-1-pkj@axis.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 13 Dec 2018 16:19:30 -0800
Message-ID: <CAFNP8OtfK9GZ4E_o1NLAhsz4KDogpfBaACheOQsj+Amq7h4v2Q@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/2] ref-manual: Document the fifth argument to PACKAGECONFIG
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
X-List-Received-Date: Fri, 14 Dec 2018 00:19:43 -0000
Content-Type: multipart/alternative; boundary="0000000000002f1240057cf0630c"

--0000000000002f1240057cf0630c
Content-Type: text/plain; charset="UTF-8"

Peter,

Thanks for the patch.  See
https://yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#var-PACKAGECONFIG
for the changes.

Commit:
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/commit/?id=adb17e3172c829de77d2664c91f7cf4b22c9e5f0

Scott

On Thu, Dec 13, 2018 at 3:24 AM Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> Support for adding runtime recommendations (RRECOMMENDS) using
> PACKAGECONFIG was introduced in Rocko.
>
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  documentation/ref-manual/ref-variables.xml | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index 58c5418d16..7dc3a3f79a 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -10333,9 +10333,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                      Here is the basic block structure:
>                      <literallayout class='monospaced'>
>       PACKAGECONFIG ??= "f1 f2 f3 ..."
> -     PACKAGECONFIG[f1] = "--with-f1,--without-f1,build-deps-f1,rt-deps-f1"
> -     PACKAGECONFIG[f2] = "--with-f2,--without-f2,build-deps-f2,rt-deps-f2"
> -     PACKAGECONFIG[f3] = "--with-f3,--without-f3,build-deps-f3,rt-deps-f3"
> +     PACKAGECONFIG[f1] =
> "--with-f1,--without-f1,build-deps-f1,rt-deps-f1,rt-recs-f1"
> +     PACKAGECONFIG[f2] =
> "--with-f2,--without-f2,build-deps-f2,rt-deps-f2,rt-recs-f2"
> +     PACKAGECONFIG[f3] =
> "--with-f3,--without-f3,build-deps-f3,rt-deps-f3,rt-recs-f3"
>                      </literallayout>
>                  </para>
>
> @@ -10344,7 +10344,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                      variable itself specifies a space-separated list of
> the
>                      features to enable.
>                      Following the features, you can determine the
> behavior of
> -                    each feature by providing up to four order-dependent
> +                    each feature by providing up to five order-dependent
>                      arguments, which are separated by commas.
>                      You can omit any argument you like but must retain the
>                      separating commas.
> @@ -10370,6 +10370,10 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                              (<link
> linkend='var-RDEPENDS'><filename>RDEPENDS</filename></link>)
>                              that should be added if the feature is
> enabled.
>                              </para></listitem>
> +                        <listitem><para>Additional runtime recommendations
> +                            (<link
> linkend='var-RRECOMMENDS'><filename>RRECOMMENDS</filename></link>)
> +                            that should be added if the feature is
> enabled.
> +                            </para></listitem>
>                      </orderedlist>
>                  </para>
>
> --
> 2.12.0
>
>

--0000000000002f1240057cf0630c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Peter, <br></div><d=
iv><br></div><div>Thanks for the patch.=C2=A0 See <a href=3D"https://yoctop=
roject.org/docs/2.7/ref-manual/ref-manual.html#var-PACKAGECONFIG">https://y=
octoproject.org/docs/2.7/ref-manual/ref-manual.html#var-PACKAGECONFIG</a> f=
or the changes.=C2=A0 <br></div><div><br></div><div>Commit: <a href=3D"http=
s://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/commit/?id=3Dadb17e3172c8=
29de77d2664c91f7cf4b22c9e5f0">https://git.yoctoproject.org/cgit/cgit.cgi/yo=
cto-docs/commit/?id=3Dadb17e3172c829de77d2664c91f7cf4b22c9e5f0</a></div><di=
v><br></div><div>Scott<br></div></div></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr">On Thu, Dec 13, 2018 at 3:24 AM Peter Kjellerstedt &=
lt;<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.kjellerstedt@axis.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Support for adding runtime recommendations (RRECOMMENDS) using<br>
PACKAGECONFIG was introduced in Rocko.<br>
<br>
Signed-off-by: Peter Kjellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@=
axis.com" target=3D"_blank">peter.kjellerstedt@axis.com</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-variables.xml | 12 ++++++++----<br>
=C2=A01 file changed, 8 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref=
-manual/ref-variables.xml<br>
index 58c5418d16..7dc3a3f79a 100644<br>
--- a/documentation/ref-manual/ref-variables.xml<br>
+++ b/documentation/ref-manual/ref-variables.xml<br>
@@ -10333,9 +10333,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Here is the basic block structure:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 PACKAGECONFIG ??=3D &quot;f1 f2 f3 ...&quot;<br>
-=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG[f1] =3D &quot;--with-f1,--without-f1,bui=
ld-deps-f1,rt-deps-f1&quot;<br>
-=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG[f2] =3D &quot;--with-f2,--without-f2,bui=
ld-deps-f2,rt-deps-f2&quot;<br>
-=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG[f3] =3D &quot;--with-f3,--without-f3,bui=
ld-deps-f3,rt-deps-f3&quot;<br>
+=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG[f1] =3D &quot;--with-f1,--without-f1,bui=
ld-deps-f1,rt-deps-f1,rt-recs-f1&quot;<br>
+=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG[f2] =3D &quot;--with-f2,--without-f2,bui=
ld-deps-f2,rt-deps-f2,rt-recs-f2&quot;<br>
+=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG[f3] =3D &quot;--with-f3,--without-f3,bui=
ld-deps-f3,rt-deps-f3,rt-recs-f3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;/literallayout&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
<br>
@@ -10344,7 +10344,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0variable itself specifies a space-separated list of the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0features to enable.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Following the features, you can determine the behavior of<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 each=
 feature by providing up to four order-dependent<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 each=
 feature by providing up to five order-dependent<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0arguments, which are separated by commas.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0You can omit any argument you like but must retain the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0separating commas.<br>
@@ -10370,6 +10370,10 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(&lt;link linkend=3D&#39;var-RDEPENDS&#39;&g=
t;&lt;filename&gt;RDEPENDS&lt;/filename&gt;&lt;/link&gt;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0that should be added if the feature is enabl=
ed.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;&lt;/listitem&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;Additional runtime recommendations<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (&lt;link linkend=3D&#39;var-RRECOMMENDS&#39;&gt;&=
lt;filename&gt;RRECOMMENDS&lt;/filename&gt;&lt;/link&gt;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 that should be added if the feature is enabled.<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;/orderedlist&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
<br>
-- <br>
2.12.0<br>
<br>
</blockquote></div>

--0000000000002f1240057cf0630c--
