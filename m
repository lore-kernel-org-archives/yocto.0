Return-Path: <coolveer07@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF3B5E00BAA; Thu, 23 May 2019 23:37:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (coolveer07[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F279E00B5F
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 23:37:51 -0700 (PDT)
Received: by mail-qk1-f171.google.com with SMTP id d10so5833830qko.4
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 23:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rwAHQXOyUBouv2GYEx8ClRjSaxArFnB8le2ReN1haQM=;
	b=hLJhj/NLf29qAQ1LJYmDAQ0oYJJTH0vQ/wKo/sQ0fYmQaZEf3v8qJnvrEa/0Ud1bCw
	VIeYcpsnw2t2MJJEiXp9ch54jPLSQs11AdKApF9sTDRC1pqfqudnaF28NLAbgUS2L1nA
	6yUQDbqO4h7zrOpubEXGqeyVt7lETumG3Hj/c6Z3jnHNAnIO9Wzubm67cMYRm6ARZ66L
	B/nsgPqbVAJo7mFCB4OQ/bhw7v+TyjPER9HfsPRBdjVChIkRXDFZWQBP8FNwcrIPe7sn
	fGBPYB4UVdegjj6/ZkwL6g15chPRWxxf6Aaz9ZLECwTztFEth/sg0fUT4YBj1RvqQYQM
	bWpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rwAHQXOyUBouv2GYEx8ClRjSaxArFnB8le2ReN1haQM=;
	b=LBuiPswrfsOvr8zD/F7+KksUnNkRNigTpz9NibS4YHvsEL5hWtqRlfXHYE+49vxGbf
	G83ITo/mOR30KHev1jkqzALXhIkpbS+2khSN4cw5w04SUBD+5/HhjahPiMK6d3qmCiNn
	7fyGuVRhRQGpucu9dGX9pP2D3fcDrqBP+eP1DzkmFVdW3vS5tN+Up9Xdz8EisPMpJMOA
	nrDa+UoVBSJk3sf+kLQ5TvC5ji0OX/R27gnbo4+W0ihB0smR1hC6ztYeOJ7QRBqDkdtX
	8+ka0+XKwM/kh0TvWaLVZeeVYf4PLpMw7nK5obnixkcTZsakjvhwbMGxfRaPAnp3Q6UC
	jctg==
X-Gm-Message-State: APjAAAXxo4aCwjZG+z0l5Ms8+Or3Poara7uafRs2mxr/vm9G0w3wNIEc
	cAAvc5SaACSQPIIjj0Uogi2Qj1U64t8Fh8+hiKI=
X-Google-Smtp-Source: APXvYqwi68dWQLUXuM/QQ5Hi0KCsxmp+42F6lztRXjbfiXHi1OcQMz2xjV2Hvz8CvcEsJQyw/a6BSr6O1LYhK6xULWo=
X-Received: by 2002:a0c:8a93:: with SMTP id 19mr75116700qvv.7.1558679871416;
	Thu, 23 May 2019 23:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <CANGFfGa=qMdrWzo-Lxs-tb=6q3XH7aqXVrOd7JdC3G9Yk3Lp=g@mail.gmail.com>
	<CANGFfGYLEXR49NvsQUuDawFoGDYiDzGPVaqLiaN=vZzSbdtsnQ@mail.gmail.com>
	<277b0434-c5df-ac19-5e79-6c5ffb6a55d5@gmail.com>
In-Reply-To: <277b0434-c5df-ac19-5e79-6c5ffb6a55d5@gmail.com>
From: virendra kumar thakur <coolveer07@gmail.com>
Date: Fri, 24 May 2019 12:07:39 +0530
Message-ID: <CANGFfGaQudi3B5t+YuL5j8ChqfDDeTi-7SrdJGNg4zVjh8y00g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: /usr/share/common-license package/recipeinfo contains GPLv3 info
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
X-List-Received-Date: Fri, 24 May 2019 06:37:54 -0000
Content-Type: multipart/alternative; boundary="0000000000000df32d05899c70f6"

--0000000000000df32d05899c70f6
Content-Type: text/plain; charset="UTF-8"

Thank you khem raj for your input, I have already tried with

INCOMPATIBLE_LICENSE = "GPLv3+ LGPLv3+ AGPLv3+"

And this also

INCOMPATIBLE_LICENSE = "GPLv3* LGPLv3* AGPLv3*"

But no luck, still I can see same output


rootfs/usr/share/common-license/package/libgcrypt-lic/recipeinfo

LICENSE: GPLV2+ &LGPLV2.1+ &GPLV3+
PR: r0
 PV : 1.8.4


On Fri 24 May, 2019, 5:25 AM Khem Raj, <raj.khem@gmail.com> wrote:

>
>
> On 5/23/19 2:42 AM, virendra kumar thakur wrote:
> >
> >
> > Hello team,
> >
> > I am trying to build yocto image without GPLv3 package, I have added
> > below things in local.conf and enable meta-gplv2 layer.
> >
> > INCOMPATIBLE_LICENSE = "GPL-3.0 LGPL-3.0 AGPL-3. 0" in local.conf.
>
> Can you try adding GPLv3+ to INCOMPATIBLE_LICENSE and see if that helps ?
>
> >
> > After verifying from package.manifest and license.manifest file in
> > build/tmp/deploy/license/ directory I observe that no GPLv3 package is
> > present in rootfs.
> >
> > But I can see in
> > rootfs/usr/share/common-license/package/libgcrypt-lic/recipeinfo
> >
> > LICENSE: GPLV2+ &LGPLV2.1+ &GPLV3+
> > PR: r0
> > PV : 1.8.4
> >
> > Is present..
> >
> > My doubt is why any GPLv3 is present in common-license directory?
> >
> > From: "Burton, Ross" <ross.burton@intel.com <mailto:
> ross.burton@intel.com>>
> > To: virendra kumar thakur <coolveer07@gmail.com
> > <mailto:coolveer07@gmail.com>>
> > Cc: Yocto-mailing-list <yocto@yoctoproject.org
> > <mailto:yocto@yoctoproject.org>>
> > Subject: Re: [yocto] GPLv3 package present in rootfs
> >
> > On Wed, 22 May 2019 at 06:26, virendra kumar thakur
> > <coolveer07@gmail.com <mailto:coolveer07@gmail.com>> wrote:
> >> still some package gnutls, libidn2, libassuan, are added into rootfs.
> >
> > Randomly picking libassuan:
> >
> > LICENSE_${PN} = "LGPLv2.1+"
> >
> > The library itself is LGPL-2.  Have you verified the *package*
> > licenses for what is actually going into the image?
> >
> > Ross
> >
> >
> >
> >
>

--0000000000000df32d05899c70f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Thank you khem raj for your input, I have already tr=
ied with</div><div dir=3D"auto"><br></div><div dir=3D"auto"><span style=3D"=
font-family:sans-serif">INCOMPATIBLE_LICENSE =3D &quot;GPLv3+=C2=A0</span><=
span style=3D"font-family:sans-serif">LGPLv3+ AGPLv3+&quot;</span></div><di=
v dir=3D"auto"><span style=3D"font-family:sans-serif">=C2=A0</span></div><d=
iv dir=3D"auto"><font face=3D"sans-serif">And this also</font></div><div di=
r=3D"auto"><font face=3D"sans-serif"><br></font></div><div dir=3D"auto"><sp=
an style=3D"font-family:sans-serif">INCOMPATIBLE_LICENSE =3D &quot;GPLv3*=
=C2=A0</span><span style=3D"font-family:sans-serif">LGPLv3* AGPLv3*&quot;</=
span></div><div dir=3D"auto"><font face=3D"sans-serif"><br></font></div><di=
v dir=3D"auto"><font face=3D"sans-serif">But no luck, still I can see same =
output</font></div><div dir=3D"auto"><font face=3D"sans-serif"><br></font><=
/div><div dir=3D"auto"><font face=3D"sans-serif"><br></font></div><div dir=
=3D"auto"><span style=3D"font-family:sans-serif">rootfs/usr/share/common-li=
cens</span><span style=3D"font-family:sans-serif">e/package/libgcrypt-lic/r=
ecipe</span><span style=3D"font-family:sans-serif">info</span><br style=3D"=
font-family:sans-serif"><br style=3D"font-family:sans-serif"><span style=3D=
"font-family:sans-serif">LICENSE: GPLV2+ &amp;LGPLV2.1+ &amp;GPLV3+</span><=
br style=3D"font-family:sans-serif"><span style=3D"font-family:sans-serif">=
PR: r0</span></div><div dir=3D"auto"><span style=3D"font-family:sans-serif"=
>=C2=A0PV : 1.8.4</span><font face=3D"sans-serif"><br></font></div><div dir=
=3D"auto"><font face=3D"sans-serif"><br></font><br><div class=3D"gmail_quot=
e" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Fri 24 May, 2019, =
5:25 AM Khem Raj, &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On 5/23/19 2:42 AM, virendra kumar thakur wrote:<br>
&gt; <br>
&gt; <br>
&gt; Hello team,<br>
&gt; <br>
&gt; I am trying to build yocto image without GPLv3 package, I have added <=
br>
&gt; below things in local.conf and enable meta-gplv2 layer.<br>
&gt; <br>
&gt; INCOMPATIBLE_LICENSE =3D &quot;GPL-3.0 LGPL-3.0 AGPL-3. 0&quot; in loc=
al.conf.<br>
<br>
Can you try adding GPLv3+ to INCOMPATIBLE_LICENSE and see if that helps ?<b=
r>
<br>
&gt; <br>
&gt; After verifying from package.manifest and license.manifest file in <br=
>
&gt; build/tmp/deploy/license/ directory I observe that no GPLv3 package is=
 <br>
&gt; present in rootfs.<br>
&gt; <br>
&gt; But I can see in <br>
&gt; rootfs/usr/share/common-license/package/libgcrypt-lic/recipeinfo<br>
&gt; <br>
&gt; LICENSE: GPLV2+ &amp;LGPLV2.1+ &amp;GPLV3+<br>
&gt; PR: r0<br>
&gt; PV : 1.8.4<br>
&gt; <br>
&gt; Is present..<br>
&gt; <br>
&gt; My doubt is why any GPLv3 is present in common-license directory?<br>
&gt; <br>
&gt; From: &quot;Burton, Ross&quot; &lt;<a href=3D"mailto:ross.burton@intel=
.com" target=3D"_blank" rel=3D"noreferrer">ross.burton@intel.com</a> &lt;ma=
ilto:<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank" rel=3D"nore=
ferrer">ross.burton@intel.com</a>&gt;&gt;<br>
&gt; To: virendra kumar thakur &lt;<a href=3D"mailto:coolveer07@gmail.com" =
target=3D"_blank" rel=3D"noreferrer">coolveer07@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:coolveer07@gmail.com" target=3D"_blank" r=
el=3D"noreferrer">coolveer07@gmail.com</a>&gt;&gt;<br>
&gt; Cc: Yocto-mailing-list &lt;<a href=3D"mailto:yocto@yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto@yoctoproject.org</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
 rel=3D"noreferrer">yocto@yoctoproject.org</a>&gt;&gt;<br>
&gt; Subject: Re: [yocto] GPLv3 package present in rootfs<br>
&gt; <br>
&gt; On Wed, 22 May 2019 at 06:26, virendra kumar thakur<br>
&gt; &lt;<a href=3D"mailto:coolveer07@gmail.com" target=3D"_blank" rel=3D"n=
oreferrer">coolveer07@gmail.com</a> &lt;mailto:<a href=3D"mailto:coolveer07=
@gmail.com" target=3D"_blank" rel=3D"noreferrer">coolveer07@gmail.com</a>&g=
t;&gt; wrote:<br>
&gt;&gt; still some package gnutls, libidn2, libassuan, are added into root=
fs.<br>
&gt; <br>
&gt; Randomly picking libassuan:<br>
&gt; <br>
&gt; LICENSE_${PN} =3D &quot;LGPLv2.1+&quot;<br>
&gt; <br>
&gt; The library itself is LGPL-2.=C2=A0 Have you verified the *package*<br=
>
&gt; licenses for what is actually going into the image?<br>
&gt; <br>
&gt; Ross<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</blockquote></div></div></div>

--0000000000000df32d05899c70f6--
