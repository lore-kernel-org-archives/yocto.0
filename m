Return-Path: <coolveer07@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76AE7E00D5C; Thu, 23 May 2019 02:43:13 -0700 (PDT)
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
	*      [209.85.160.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB25E00D44
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 02:43:12 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id o7so5929073qtp.4
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 02:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CpHu4zRp01pgbywADLmQLT0IXrhOX3fxZNMFspKXnnw=;
	b=MXu8CGnIZulnp9IPp3dJe38yOvFiCKXpI1jseYVG0wwXOui5ijd8b/lFmz27nwSJRZ
	36SXrWxcARaJFQitehn8FbKbOhFFjndacAGClmohvwv+N8qj6i2veql4dIdwWbiEB9p2
	gm2lLzzuchtVVBj3FEIJtxVB2tNzkGEPda2NSh9ZoDQwUs+A6N0M8r5gSgGysacwRNJ2
	kIQ3MgIgpuaFOk28lKkF5O9SJyo/RZYIEaYbQopzBE3YZMV7YHlxzTVRtYP6UO6q/Nmk
	idqj0lL+QxORhzj5MvYxDR9sZt9jzEa+0M2RAIqyylAqHgISDdob468ZaccSrT688Zuf
	psIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CpHu4zRp01pgbywADLmQLT0IXrhOX3fxZNMFspKXnnw=;
	b=ULTW2VSUz5K3u4WCJlpwf+dR7beEEcVcioeFyrGzdOjhyVZJfdWvPXUqYeR9pmxN03
	96sTeAZmc8Qd46ENRzBFafujYHe/1sy6K9z2NfIjBuFXrVN+fBrmAWwoCiX6Ea6KyLHX
	qgc+b0rqascfk67KVws5Dcwut0mQgtsxsq0bhqLxuqBppMYrJtGmeK3PjqroRXYuWAaj
	jDuGpUTyTV0Ye/A9ukouNPYjoyGt7s4BmKh4PPmfav1eQisJnmn+X9elzIxeoiIWBvXJ
	a1JCKh4GmGeWGpgZ0FxngVBWV3rFvgwy0uwNfwSPlrJLRTpBEmsIRZvbU6cAguJQLf2t
	qIiQ==
X-Gm-Message-State: APjAAAWASJvlZlGjogVl7QuRqO4botujUxf1+780nPrFf44INH3p26g3
	XVlBVjtXxdV6Wi4TBKc0ooEi2OyqueAQ3mFY6x3/v3Wp
X-Google-Smtp-Source: APXvYqz0G/eGuSi1VXuNgJjovAj/acePojdfvg1oZBNMkACYZNGkrKDlNUiRXawXZLmHS1jIq8+6B1pasZ3OEUZbj2Y=
X-Received: by 2002:ac8:3575:: with SMTP id z50mr8193140qtb.102.1558604592206; 
	Thu, 23 May 2019 02:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <CANGFfGa=qMdrWzo-Lxs-tb=6q3XH7aqXVrOd7JdC3G9Yk3Lp=g@mail.gmail.com>
In-Reply-To: <CANGFfGa=qMdrWzo-Lxs-tb=6q3XH7aqXVrOd7JdC3G9Yk3Lp=g@mail.gmail.com>
From: virendra kumar thakur <coolveer07@gmail.com>
Date: Thu, 23 May 2019 15:12:59 +0530
Message-ID: <CANGFfGYLEXR49NvsQUuDawFoGDYiDzGPVaqLiaN=vZzSbdtsnQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: /usr/share/common-license package/recipeinfo contains GPLv3 info
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
X-List-Received-Date: Thu, 23 May 2019 09:43:13 -0000
Content-Type: multipart/alternative; boundary="00000000000010585605898ae96b"

--00000000000010585605898ae96b
Content-Type: text/plain; charset="UTF-8"

Hello team,

I am trying to build yocto image without GPLv3 package, I have added below
things in local.conf and enable meta-gplv2 layer.

INCOMPATIBLE_LICENSE = "GPL-3.0 LGPL-3.0 AGPL-3. 0" in local.conf.

After verifying from package.manifest and license.manifest file in
build/tmp/deploy/license/ directory I observe that no GPLv3 package is
present in rootfs.

But I can see in
rootfs/usr/share/common-license/package/libgcrypt-lic/recipeinfo

LICENSE: GPLV2+ &LGPLV2.1+ &GPLV3+
PR: r0
PV : 1.8.4

Is present..

My doubt is why any GPLv3 is present in common-license directory?

From: "Burton, Ross" <ross.burton@intel.com>
To: virendra kumar thakur <coolveer07@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [yocto] GPLv3 package present in rootfs

On Wed, 22 May 2019 at 06:26, virendra kumar thakur
<coolveer07@gmail.com> wrote:
> still some package gnutls, libidn2, libassuan, are added into rootfs.

Randomly picking libassuan:

LICENSE_${PN} = "LGPLv2.1+"

The library itself is LGPL-2.  Have you verified the *package*
licenses for what is actually going into the image?

Ross

--00000000000010585605898ae96b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><br style=3D"font-family:sans-serif;font-size:12.8px"><di=
v class=3D"gmail_quote" dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><b=
r></div><div dir=3D"auto">Hello team,=C2=A0</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">I am trying to build yocto image without GPLv3 package,=
 I have added below things in local.conf and enable meta-gplv2 layer.=C2=A0=
</div><div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.=
8px"><br></span></div><div dir=3D"auto"><span style=3D"font-family:sans-ser=
if;font-size:12.8px">INCOMPATIBLE_LICENSE =3D &quot;GPL-3.0 LGPL-3.0 AGPL-3=
. 0&quot; in local.conf.=C2=A0=C2=A0</span></div><div dir=3D"auto"><br></di=
v><font face=3D"sans-serif">After verifying from package.manifest and licen=
se.manifest file in build/tmp/deploy/license/ directory I observe that no G=
PLv3 package is present in rootfs.=C2=A0</font><div dir=3D"auto"><font face=
=3D"sans-serif"><br></font></div><div dir=3D"auto"><font face=3D"sans-serif=
">But I can see in rootfs/usr/share/common-license/package/libgcrypt-lic/re=
cipeinfo=C2=A0</font></div><div dir=3D"auto"><font face=3D"sans-serif"><br>=
</font></div><div dir=3D"auto"><font face=3D"sans-serif">LICENSE: GPLV2+ &a=
mp;LGPLV2.1+ &amp;GPLV3+</font></div><div dir=3D"auto"><font face=3D"sans-s=
erif">PR: r0</font></div><div dir=3D"auto"><font face=3D"sans-serif">PV : 1=
.8.4</font></div><div dir=3D"auto"><font face=3D"sans-serif"><br></font></d=
iv><div dir=3D"auto"><font face=3D"sans-serif">Is present..=C2=A0</font></d=
iv><div dir=3D"auto"><font face=3D"sans-serif"><br></font></div><div dir=3D=
"auto"><font face=3D"sans-serif">My doubt is why any GPLv3 is present in co=
mmon-license directory?=C2=A0</font></div><div dir=3D"auto"><font face=3D"s=
ans-serif"><br></font></div><div dir=3D"auto"><span style=3D"font-family:sa=
ns-serif;font-size:12.8px">From: &quot;Burton, Ross&quot; &lt;</span><a hre=
f=3D"mailto:ross.burton@intel.com" style=3D"color:rgb(66,133,244);font-fami=
ly:sans-serif;font-size:12.8px">ross.burton@intel.com</a><span style=3D"fon=
t-family:sans-serif;font-size:12.8px">&gt;</span><br style=3D"font-family:s=
ans-serif;font-size:12.8px"><span style=3D"font-family:sans-serif;font-size=
:12.8px">To: virendra kumar thakur &lt;</span><a href=3D"mailto:coolveer07@=
gmail.com" style=3D"color:rgb(66,133,244);font-family:sans-serif;font-size:=
12.8px">coolveer07@gmail.com</a><span style=3D"font-family:sans-serif;font-=
size:12.8px">&gt;</span><br style=3D"font-family:sans-serif;font-size:12.8p=
x"><span style=3D"font-family:sans-serif;font-size:12.8px">Cc: Yocto-mailin=
g-list &lt;</span><a href=3D"mailto:yocto@yoctoproject.org" style=3D"color:=
rgb(66,133,244);font-family:sans-serif;font-size:12.8px">yocto@yoctoproject=
.org</a><span style=3D"font-family:sans-serif;font-size:12.8px">&gt;</span>=
<br style=3D"font-family:sans-serif;font-size:12.8px"><span style=3D"font-f=
amily:sans-serif;font-size:12.8px">Subject: Re: [yocto] GPLv3 package prese=
nt in rootfs</span></div><div dir=3D"auto"><br style=3D"font-family:sans-se=
rif;font-size:12.8px"><span style=3D"font-family:sans-serif;font-size:12.8p=
x">On Wed, 22 May 2019 at 06:26, virendra kumar thakur</span><br style=3D"f=
ont-family:sans-serif;font-size:12.8px"><span style=3D"font-family:sans-ser=
if;font-size:12.8px">&lt;</span><a href=3D"mailto:coolveer07@gmail.com" sty=
le=3D"color:rgb(66,133,244);font-family:sans-serif;font-size:12.8px">coolve=
er07@gmail.com</a><span style=3D"font-family:sans-serif;font-size:12.8px">&=
gt; wrote:</span><br style=3D"font-family:sans-serif;font-size:12.8px"><spa=
n style=3D"font-family:sans-serif;font-size:12.8px">&gt; still some package=
 gnutls, libidn2, libassuan, are added into rootfs.</span><br style=3D"font=
-family:sans-serif;font-size:12.8px"><br style=3D"font-family:sans-serif;fo=
nt-size:12.8px"><span style=3D"font-family:sans-serif;font-size:12.8px">Ran=
domly picking libassuan:</span><br style=3D"font-family:sans-serif;font-siz=
e:12.8px"><br style=3D"font-family:sans-serif;font-size:12.8px"><span style=
=3D"font-family:sans-serif;font-size:12.8px">LICENSE_${PN} =3D &quot;LGPLv2=
.1+&quot;</span><br style=3D"font-family:sans-serif;font-size:12.8px"><br s=
tyle=3D"font-family:sans-serif;font-size:12.8px"><span style=3D"font-family=
:sans-serif;font-size:12.8px">The library itself is LGPL-2.=C2=A0 Have you =
verified the *package*</span><br style=3D"font-family:sans-serif;font-size:=
12.8px"><span style=3D"font-family:sans-serif;font-size:12.8px">licenses fo=
r what is actually going into the image?</span><br style=3D"font-family:san=
s-serif;font-size:12.8px"><br style=3D"font-family:sans-serif;font-size:12.=
8px"><span style=3D"font-family:sans-serif;font-size:12.8px">Ross</span><di=
v dir=3D"auto" style=3D"font-family:sans-serif" class=3D"elided-text"><div =
dir=3D"auto"><br></div></div></div><div dir=3D"auto"><font face=3D"sans-ser=
if"><br></font></div><div dir=3D"auto"><font face=3D"sans-serif"><br></font=
></div></div>
</div></div>

--00000000000010585605898ae96b--
