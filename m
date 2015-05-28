Return-Path: <jessecobra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33760E009E5; Wed, 27 May 2015 21:39:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jessecobra[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6989E009A1
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 21:39:06 -0700 (PDT)
Received: by wgbgq6 with SMTP id gq6so25770768wgb.3
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 21:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=44TiRXhOkWNeFmvau4w0Y+f1EvmmjZq6qs0qKEX41N4=;
	b=IwWMCtweImKoEnwX8MnATcXpbnVQ14Ml0uhIpgKgrpnOcXq7NCzOfyxS0JAO/r+0mS
	2tVJL/g0RUdK6AnSUsdQIwRqewLFeEmya6Jr3iTs6FMAHLSZEfsbt9H0oCoKcNkaaeEN
	0izCVv2T/VMn+3NvaWn8oCZLV5su8m3nvvLVjOQS3NGW0o45imdiYvtgDaZap4ZkLCaf
	KZGY3O/um/cw4F3AmkyoF2OE2AyANMZp8JmI7lW9b+uP1jhPpWWH3OMD8ikAtDVrxqu+
	P065xXP1ig8/MRejXj5zwx4FRwIuniDdCy0z+J4amJ+DNLqea6tfw1ecdQ55FXYCXR2M
	XcdA==
MIME-Version: 1.0
X-Received: by 10.180.87.105 with SMTP id w9mr56642694wiz.32.1432787944567;
	Wed, 27 May 2015 21:39:04 -0700 (PDT)
Received: by 10.27.220.21 with HTTP; Wed, 27 May 2015 21:39:04 -0700 (PDT)
In-Reply-To: <CAMKF1sr9Bb65KjLq=9WK+MSEdswbCczQ2bESfFp4_V5CbWg30A@mail.gmail.com>
References: <CACG401qjzuj6bNjSb6sjAuKYKbC5Gibwn75chuv9nfydHmim+w@mail.gmail.com>
	<CAMKF1sr9Bb65KjLq=9WK+MSEdswbCczQ2bESfFp4_V5CbWg30A@mail.gmail.com>
Date: Wed, 27 May 2015 21:39:04 -0700
Message-ID: <CACG401rvMrw_X-_vZcj4n+3nK44z9iBPsOkBtx1--LcSOcWHgw@mail.gmail.com>
From: Jesse Cobra <jessecobra@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GCC 4.8.2 build errors
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
X-List-Received-Date: Thu, 28 May 2015 04:39:11 -0000
Content-Type: multipart/alternative; boundary=f46d044401987977d705171cf09f

--f46d044401987977d705171cf09f
Content-Type: text/plain; charset=UTF-8

Always reproducible on this build folder.

Just created a new build folder and kicked off a brand new build. See if
that works...

my setup:

repo init -u git://git.freescale.com/imx/fsl-arm-yocto-bsp.git -b
imx-3.14.28-1.0.0_ga
repo sync
MACHINE=imx6qsabreauto source fsl-setup-release.sh -b newbuild
bitbake core-image-minimal

On Wed, May 27, 2015 at 7:12 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, May 27, 2015 at 3:46 PM, Jesse Cobra <jessecobra@gmail.com> wrote:
> >
> /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c
> > -o cp/parser.o
> > |
> >
> /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c:
> > In function 'bool cp_parser_tokens_start_cast_expression(cp_parser*)':
> > |
> >
> /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c:7159:12:
> > error: 'ref_qual' was not declared in this scope
> > |      return ref_qual;
> > |             ^
> > | make[2]: *** [cp/parser.o] Error 1
>
>
> is it always reproducible ? can you try same for say qemumips or
> qemux86 as machine and see if it fails in same way ?
>

--f46d044401987977d705171cf09f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Always reproducible on this build folder.<br><br></di=
v>Just created a new build folder and kicked off a brand new build. See if =
that works...<br><br>my setup:<br><br>repo init -u git://<a href=3D"http://=
git.freescale.com/imx/fsl-arm-yocto-bsp.git">git.freescale.com/imx/fsl-arm-=
yocto-bsp.git</a> -b imx-3.14.28-1.0.0_ga<br>repo sync<br>MACHINE=3Dimx6qsa=
breauto source fsl-setup-release.sh -b newbuild<br>bitbake core-image-minim=
al<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On We=
d, May 27, 2015 at 7:12 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">On Wed, May 27, 2015 at 3:46 PM, Je=
sse Cobra &lt;<a href=3D"mailto:jessecobra@gmail.com">jessecobra@gmail.com<=
/a>&gt; wrote:<br>
&gt; /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/g=
cc/cp/parser.c<br>
&gt; -o cp/parser.o<br>
&gt; |<br>
&gt; /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/g=
cc/cp/parser.c:<br>
&gt; In function &#39;bool cp_parser_tokens_start_cast_expression(cp_parser=
*)&#39;:<br>
&gt; |<br>
&gt; /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/g=
cc/cp/parser.c:7159:12:<br>
&gt; error: &#39;ref_qual&#39; was not declared in this scope<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 return ref_qual;<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>
&gt; | make[2]: *** [cp/parser.o] Error 1<br>
<br>
<br>
is it always reproducible ? can you try same for say qemumips or<br>
qemux86 as machine and see if it fails in same way ?<br>
</blockquote></div><br></div>

--f46d044401987977d705171cf09f--
