Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A54FE005B3; Wed, 16 Dec 2015 14:10:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C939E005B3
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 14:10:23 -0800 (PST)
Received: by mail-ig0-f179.google.com with SMTP id mv3so153002692igc.0
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 14:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hPMtNzbX2JtaedS3t/l7hzHM5/L7o20R3sR09Qa/Ojc=;
	b=GS+1cr0MjTpLz/g29OrWyDFBVmD7Xy61dNY/ziATTmPzrmXhZb3m7oi2SD//gnoOtR
	Gt+Af/FlD8ZF4Q9m4X+PtrBOdmsnh7JK3BIq3sXReTvc7F+TxmE65EjTPgMaLTv8CFWc
	qyuANfnmljTi44q6WR/nCQyTSpu8krJLhNL3WVsk+QqLsuHGxVDHs0UyLCTOhKR05H8D
	yznYl0vTK/ZAjYpkPDAVJ431rHNKh5sQHbm4vZcG2C9EPQWzPf05IiFIllllzroWxdX8
	AT/3LOxsdxT9tb/CiwHBdm9laWX798KRv7G9n+Q7o+Pn7t+iydBy8L85r25FAq/gYlKi
	KYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=hPMtNzbX2JtaedS3t/l7hzHM5/L7o20R3sR09Qa/Ojc=;
	b=VUIAWfMR30LQ9Ngp7Sh7jASTzuM9fAZhIaLs1FxIadiXlJn0nVX38PPE4y7AcqdNt8
	/lWhj52ReEl2DBtHO11nAbEFFN6i16CTvtezXsXe/XFrmdqz7izUzafENIxYqmlpsmN+
	nFj3iFMTJ5R76NLbr8ozjBPV8oOgKMdwVPrizMuGLb5e4S4/5KAG1VcgOdbpRRYrLMl8
	83P9ulNODoa5ci3PseQ5RN/OtUZdqPILERhFzf/tZ1JHlU+q1uQ7pxvS9QXOq7dVPVL2
	wohmVPw412oBBiw25ZF6qbzGCWtMF+q/xz4F+Xz/cc2DV9YLM8DtY0EIOmZlv8uJ3I4I
	c0QQ==
X-Gm-Message-State: ALoCoQlSSRFaPD71VluHn3UjQ0Yfc3qE85Ma5V9QmW+saM/viLaYCflZT+68lecfEi2dsLWJDeYLW4VxO09/K2hK5ROrLV7ZF4eDdbowqEthgnP8t+pXpcs=
X-Received: by 10.50.22.33 with SMTP id a1mr139521igf.52.1450303823152; Wed,
	16 Dec 2015 14:10:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Wed, 16 Dec 2015 14:10:03 -0800 (PST)
In-Reply-To: <CALXY+b70s1UHAH=j-HeHut54sLA7kJ-kXJOaYzTZ8OLz2JpBjQ@mail.gmail.com>
References: <CALXY+b70s1UHAH=j-HeHut54sLA7kJ-kXJOaYzTZ8OLz2JpBjQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Dec 2015 22:10:03 +0000
Message-ID: <CAJTo0Lb9x4CSU43N7VQZ1oR__xEeQLZm0XbOx+_-3FSbdWpPYg@mail.gmail.com>
To: serhat guner <gunerserhats@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: raspberrypi build error
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
X-List-Received-Date: Wed, 16 Dec 2015 22:10:25 -0000
Content-Type: multipart/alternative; boundary=047d7b10ca1932282a05270b2c00

--047d7b10ca1932282a05270b2c00
Content-Type: text/plain; charset=UTF-8

On 16 December 2015 at 22:04, serhat guner <gunerserhats@gmail.com> wrote:

> i m trying to build image for raspberry pi using "bitbake
> core-image-minimal"  and getting error
> "ERROR: Task 1309 (/home/serhat/yoctoProject/meta/recipes-devtools/gcc/
> gcc-cross-initial_5.2.bb, do_compile) failed with exit code '1'"
>

This just says that the gcc build failed.  Please put the full compile log
in a pastebin or something so we can see it.

Ross

--047d7b10ca1932282a05270b2c00
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 December 2015 at 22:04, serhat guner <span dir=3D"ltr">&lt;<a href=3D=
"mailto:gunerserhats@gmail.com" target=3D"_blank">gunerserhats@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">i m =
trying to build image for raspberry pi using &quot;bitbake core-image-minim=
al&quot; =C2=A0and getting error<div>&quot;ERROR: Task 1309 (/home/serhat/y=
octoProject/meta/recipes-devtools/gcc/<a href=3D"http://gcc-cross-initial_5=
.2.bb" target=3D"_blank">gcc-cross-initial_5.2.bb</a>, do_compile) failed w=
ith exit code &#39;1&#39;&quot;</div><div></div></div></blockquote></div><b=
r>This just says that the gcc build failed.=C2=A0 Please put the full compi=
le log in a pastebin or something so we can see it.</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7b10ca1932282a05270b2c00--
