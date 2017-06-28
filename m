Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A34CE00BB1; Wed, 28 Jun 2017 06:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.54 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 196CCE00B83
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 06:34:32 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id m68so29716050ith.1
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 06:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ol7vXx/nstBUgKgKwMlnlKD/hrdnYmuf1iBZZubZY5M=;
	b=vNjfFT4tpyt7f001YoI2QXpl319HxE+4v5mtDClIkb2zaRbOYV7V19WWMuh/ujE0tK
	clZK0q9UAnPxKqRQ4ZG+A5N6P+SHme7vilpG7/XlsHUobFrxEdNd9pb9W7uXp3Dqlg3n
	tvxO0JkHGzbG5xjNtzkcdJXukue8ifqdkNSL4pMw38Pa9WZAgkBSbBHMdHQu+xIJmtNM
	7NbU1G6CTiIz3yV7QD5fLfwZs3lrq0uDDfgeuBQPcV0z47Sx9jQMaeFPIz2VI1h4h/X9
	QkA+JZ6I+LDvg+jAgbcnFQrNxsVZf0Fw7kgkK+2V0g1KoWxxY9hNVTU5FKnGQ12vIUuF
	BA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ol7vXx/nstBUgKgKwMlnlKD/hrdnYmuf1iBZZubZY5M=;
	b=bi1dU3CzgtylJkIPVUlhib/7BMbuFHPps/0OE43kczM/E8psjduKo/9lIEcZ7XIGNU
	5Cv4lfr75tFZsom0RzHTRisgTrz2kruo10mOkT3SbjriwYFrvo+kVBgwYKjFkwA0gRa6
	5j0J/ZcJFRPiFWJKEu1DKjsoQIYL2Vf9XYVOv7FUGvRdUMoEoIHp6LyAWlSf5GlN9q6C
	mteCQ3dhgrNC/Iq8phlqQOl9YioZ+OVPQM4ql2pRWfw4eYGakrAUCQVfoX+tOIMittZa
	dEjwRolh/DrVTjoNQCbxEj1wx4UpG/7eXzpa1swp7vMxcY/9lseZl0XkmONog7Z78mLP
	U3lg==
X-Gm-Message-State: AKS2vOzOmQwZSyLOrq7cAjmeEA6GUCVKYpSbPmmiD+QTK7Kh4J4B2gSo
	0R5e2XKT6Pmxq75H2j30FQ7uDlaulRb7
X-Received: by 10.36.40.196 with SMTP id h187mr5932526ith.43.1498656871699;
	Wed, 28 Jun 2017 06:34:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Wed, 28 Jun 2017 06:33:51 -0700 (PDT)
X-Originating-IP: [86.141.163.120]
In-Reply-To: <1EDC003F-3267-4A60-8D16-B3619CA56E9A@mender.io>
References: <cover.1498420110.git.drew.moseley@mender.io>
	<CAHUNapTuMqopnqPcaLLym7XsVfKpAVtqdMGqQ4BytrqSPdtk5A@mail.gmail.com>
	<1EDC003F-3267-4A60-8D16-B3619CA56E9A@mender.io>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 28 Jun 2017 14:33:51 +0100
Message-ID: <CAK18fxFjJQgOCho0DFnyBmiC9J3Jc57dopWCNdcOtc2tiKbkLQ@mail.gmail.com>
To: Drew Moseley <drew.moseley@mender.io>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][PATCH V2 0/3] Initial attempt at flashing instructions.
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
X-List-Received-Date: Wed, 28 Jun 2017 13:34:34 -0000
Content-Type: multipart/alternative; boundary="001a1143f65a7ad48d0553053eb0"

--001a1143f65a7ad48d0553053eb0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 28, 2017 at 2:06 PM, Drew Moseley <drew.moseley@mender.io>
wrote:

>
> On Jun 28, 2017, at 9:03 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>
> On Sun, Jun 25, 2017 at 3:55 PM,  <drew.moseley@mender.io> wrote:
>
> From: Drew Moseley <drew.moseley@mender.io>
>
> * V2:
>
> Updated README and layer dependencies.
>
> Added error checking to flashing script
>
> * V1:
>
> This set of patches adds the native tools and target components needed to
> reflash the CHIP boards.  Additionally a shell script is added to the
> deploy
> directory showing how to kick off a flash update. It's not ideal as I've
> hardcoded a max size for the UBI image into the script and didn't see muc=
h
> of an alternative. It does function though.
>
>
>
> Looks and works great! Thanks for investigating and getting this working
> :-)
>
> Tested-by: Trevor Woerner <twoerner@gmail.com>
>
>
> FYI, additional discussion is ongoing at https://github.com/
> agherzan/meta-chip/pull/9.  I=E2=80=99ll have a V3 in a few days. The V3 =
changes
> are primarily cosmetic.
>

Correct. There are some small things to tweak. Nothing major and it will
get in soon.
--
Andrei Gherzan

--001a1143f65a7ad48d0553053eb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Jun 28, 2017 at 2:06 PM, Drew Moseley <span dir=3D"ltr">&lt;<a href=3D"=
mailto:drew.moseley@mender.io" target=3D"_blank">drew.moseley@mender.io</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v style=3D"word-wrap:break-word"><span class=3D"gmail-"><br><div><blockquot=
e type=3D"cite"><div>On Jun 28, 2017, at 9:03 AM, Trevor Woerner &lt;<a hre=
f=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt=
; wrote:</div><br class=3D"gmail-m_-8230727807282430454Apple-interchange-ne=
wline"><div><div>On Sun, Jun 25, 2017 at 3:55 PM, =C2=A0&lt;<a href=3D"mail=
to:drew.moseley@mender.io" target=3D"_blank">drew.moseley@mender.io</a>&gt;=
 wrote:<br><blockquote type=3D"cite">From: Drew Moseley &lt;<a href=3D"mail=
to:drew.moseley@mender.io" target=3D"_blank">drew.moseley@mender.io</a>&gt;=
<br><br>* V2:<br><br>Updated README and layer dependencies.<br><br>Added er=
ror checking to flashing script<br><br>* V1:<br><br>This set of patches add=
s the native tools and target components needed to<br>reflash the CHIP boar=
ds.=C2=A0 Additionally a shell script is added to the deploy<br>directory s=
howing how to kick off a flash update. It&#39;s not ideal as I&#39;ve<br>ha=
rdcoded a max size for the UBI image into the script and didn&#39;t see muc=
h<br>of an alternative. It does function though.<br></blockquote><br><br>Lo=
oks and works great! Thanks for investigating and getting this working :-)<=
br><br>Tested-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" =
target=3D"_blank">twoerner@gmail.com</a>&gt;<br></div></div></blockquote></=
div><br></span><div>FYI, additional discussion is ongoing at=C2=A0<a href=
=3D"https://github.com/agherzan/meta-chip/pull/9" target=3D"_blank">https:/=
/github.com/<wbr>agherzan/meta-chip/pull/9</a>.=C2=A0 I=E2=80=99ll have a V=
3 in a few days. The V3 changes are primarily cosmetic.</div></div></blockq=
uote><div><br></div><div>Correct. There are some small things to tweak. Not=
hing major and it will get in soon.</div><div>--</div><div>Andrei Gherzan=
=C2=A0</div></div></div></div>

--001a1143f65a7ad48d0553053eb0--
