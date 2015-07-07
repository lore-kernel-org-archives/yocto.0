Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6C47E009FD; Mon,  6 Jul 2015 20:34:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 819A1E009E6
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 20:34:48 -0700 (PDT)
Received: by qgii30 with SMTP id i30so78856623qgi.1
	for <yocto@yoctoproject.org>; Mon, 06 Jul 2015 20:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/JrNwBKs7PUSZ9k2vlKjj9caI529kqfpBdhDLQHj1+8=;
	b=jy9UnKHtQ/QQSFQoFiyMhCAqjMySF+/RlET2qXr0CTlrkZloRxYeWOtVuk2FdC4xiR
	DHHfEJvcXn7w+olBSWSKfm10KTUY643xG1xsFwd8XGpBgYjHUnoHX3T2nL+nZjOuoZdi
	549O+J3o1OAS53xkOoy9gjXeIpwClOoYcPpwt32XagWZWy3itH34/HjYGCcACcQo/b2+
	RNz9xa+bhS0izT07Q+QimiSWBfxr1g9nHsNGRbvzcgyra01/w7Pt/gI+1cvQMAVYy/gz
	NHDxzHlhY6A9qM+i3yuO9eQQAF6oHaSYLN/znNp1jYOpO5JGUA57uMnEoHki3tfyj5H7
	2rJw==
MIME-Version: 1.0
X-Received: by 10.140.239.9 with SMTP id k9mr3785783qhc.38.1436240087596; Mon,
	06 Jul 2015 20:34:47 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Mon, 6 Jul 2015 20:34:47 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Mon, 6 Jul 2015 20:34:47 -0700 (PDT)
In-Reply-To: <87vbdwy88m.fsf@weregild.amer.corp.natinst.com>
References: <alpine.LFD.2.11.1502190508290.29947@localhost>
	<CAF3SDA6sUY=4cg-pihtftzTNDREm5cKMS7MqQp4DJ9M81ez5UQ@mail.gmail.com>
	<87vbdwy88m.fsf@weregild.amer.corp.natinst.com>
Date: Tue, 7 Jul 2015 00:34:47 -0300
Message-ID: <CAF3SDA7SYcST1fPRy=cW2nJYaBSHeeOqPHGbK51H+TiDSkuZCg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Richard Tollerton <rich.tollerton@ni.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core@lists.openembedded.org
Subject: Re: [PATCH] cross-localedef-native_2.20.bb: fix for gcc5
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
X-List-Received-Date: Tue, 07 Jul 2015 03:34:54 -0000
Content-Type: multipart/alternative; boundary=001a113593a63bc654051a40b437

--001a113593a63bc654051a40b437
Content-Type: text/plain; charset=UTF-8

Thanks!!!
Em 07/07/2015 00:09, "Richard Tollerton" <rich.tollerton@ni.com> escreveu:

> Message-ID: <87wpycy88v.fsf@weregild.amer.corp.natinst.com>
> MIME-Version: 1.0
> Content-Type: text/plain
> --text follows this line--
> The build of cross-localedef-native is observed to fail under gcc5 hosts
> with multiple definition errors, e.g.:
>
> argp-help.o: In function `argp_fmtstream_write':
> argp-help.c:(.text+0x1da0): multiple definition of `argp_fmtstream_write'
> argp-fmtstream.o:argp-fmtstream.c:(.text+0x7a0): first defined here
>
> The problem is the change of the default C standard from gnu89 to gnu11
> which changes the semantics of 'inline'. The issue is described in the
> Porting guide at https://gcc.gnu.org/gcc-5/porting_to.html. Adding the
> '-fgnu89-inline' option fixes the issue.
>
> (This fix, including the above explanation, was shamelessly copied from
>
> http://git.vahanus.net/?p=csc/ptxdist-kp.git;a=commit;h=2f04a3587bd33c74ccc9be6e115a8b1fde620841
> .)
>
> Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
> ---
>  meta/recipes-core/glibc/cross-localedef-native_2.20.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/recipes-core/glibc/cross-localedef-native_2.20.bb
> b/meta/recipes-core/glibc/cross-localedef-native_2.20.bb
> index ccf56a9..38f2af4 100644
> --- a/meta/recipes-core/glibc/cross-localedef-native_2.20.bb
> +++ b/meta/recipes-core/glibc/cross-localedef-native_2.20.bb
> @@ -39,7 +39,7 @@ SRCREV_localedef =
> "c833367348d39dad7ba018990bfdaffaec8e9ed3"
>  S = "${WORKDIR}/git"
>
>  EXTRA_OECONF = "--with-glibc=${S}"
> -CFLAGS += "-DNOT_IN_libc=1"
> +CFLAGS += "-DNOT_IN_libc=1 -fgnu89-inline"
>
>  do_configure () {
>         ${S}/localedef/configure ${EXTRA_OECONF}
> --
> 2.4.4
>
>

--001a113593a63bc654051a40b437
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Thanks!!!</p>
<div class=3D"gmail_quote">Em 07/07/2015 00:09, &quot;Richard Tollerton&quo=
t; &lt;<a href=3D"mailto:rich.tollerton@ni.com">rich.tollerton@ni.com</a>&g=
t; escreveu:<br type=3D"attribution"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Message=
-ID: &lt;<a href=3D"mailto:87wpycy88v.fsf@weregild.amer.corp.natinst.com">8=
7wpycy88v.fsf@weregild.amer.corp.natinst.com</a>&gt;<br>
MIME-Version: 1.0<br>
Content-Type: text/plain<br>
--text follows this line--<br>
The build of cross-localedef-native is observed to fail under gcc5 hosts<br=
>
with multiple definition errors, e.g.:<br>
<br>
argp-help.o: In function `argp_fmtstream_write&#39;:<br>
argp-help.c:(.text+0x1da0): multiple definition of `argp_fmtstream_write&#3=
9;<br>
argp-fmtstream.o:argp-fmtstream.c:(.text+0x7a0): first defined here<br>
<br>
The problem is the change of the default C standard from gnu89 to gnu11<br>
which changes the semantics of &#39;inline&#39;. The issue is described in =
the<br>
Porting guide at <a href=3D"https://gcc.gnu.org/gcc-5/porting_to.html" rel=
=3D"noreferrer" target=3D"_blank">https://gcc.gnu.org/gcc-5/porting_to.html=
</a>. Adding the<br>
&#39;-fgnu89-inline&#39; option fixes the issue.<br>
<br>
(This fix, including the above explanation, was shamelessly copied from<br>
<a href=3D"http://git.vahanus.net/?p=3Dcsc/ptxdist-kp.git;a=3Dcommit;h=3D2f=
04a3587bd33c74ccc9be6e115a8b1fde620841" rel=3D"noreferrer" target=3D"_blank=
">http://git.vahanus.net/?p=3Dcsc/ptxdist-kp.git;a=3Dcommit;h=3D2f04a3587bd=
33c74ccc9be6e115a8b1fde620841</a>.)<br>
<br>
Signed-off-by: Richard Tollerton &lt;<a href=3D"mailto:rich.tollerton@ni.co=
m">rich.tollerton@ni.com</a>&gt;<br>
---<br>
=C2=A0meta/recipes-core/glibc/<a href=3D"http://cross-localedef-native_2.20=
.bb" rel=3D"noreferrer" target=3D"_blank">cross-localedef-native_2.20.bb</a=
> | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/meta/recipes-core/glibc/<a href=3D"http://cross-localedef-nati=
ve_2.20.bb" rel=3D"noreferrer" target=3D"_blank">cross-localedef-native_2.2=
0.bb</a> b/meta/recipes-core/glibc/<a href=3D"http://cross-localedef-native=
_2.20.bb" rel=3D"noreferrer" target=3D"_blank">cross-localedef-native_2.20.=
bb</a><br>
index ccf56a9..38f2af4 100644<br>
--- a/meta/recipes-core/glibc/<a href=3D"http://cross-localedef-native_2.20=
.bb" rel=3D"noreferrer" target=3D"_blank">cross-localedef-native_2.20.bb</a=
><br>
+++ b/meta/recipes-core/glibc/<a href=3D"http://cross-localedef-native_2.20=
.bb" rel=3D"noreferrer" target=3D"_blank">cross-localedef-native_2.20.bb</a=
><br>
@@ -39,7 +39,7 @@ SRCREV_localedef =3D &quot;c833367348d39dad7ba018990bfdaf=
faec8e9ed3&quot;<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
=C2=A0EXTRA_OECONF =3D &quot;--with-glibc=3D${S}&quot;<br>
-CFLAGS +=3D &quot;-DNOT_IN_libc=3D1&quot;<br>
+CFLAGS +=3D &quot;-DNOT_IN_libc=3D1 -fgnu89-inline&quot;<br>
<br>
=C2=A0do_configure () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${S}/localedef/configure ${EXTRA_OECONF}<br>
--<br>
2.4.4<br>
<br>
</blockquote></div>

--001a113593a63bc654051a40b437--
