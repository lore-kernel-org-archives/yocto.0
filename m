Return-Path: <ndec13@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 321CAE011C0
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 16:45:20 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id l22so5704626vbn.35
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 16:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=as3fp4ywJ5uraDcu4bPnv/CZyCY161YRYQjYjNW0T2Y=;
	b=sMZAnUCBZOraK9K5QVw9E0JNJxEd1mIrf1Pymi3gSpsa269z+Uuk64bE+X9c6Eq3CK
	o9jWhmsVP6mEQqVc7r+6k780VX85dbyvHdQtegbPZ7itxwZH10juc6hE/Bf9zZgmlgdU
	NXnU6I0bAGkvDfa6juVzguORbgFixGzwBQLDjuccxqd9jmCd3ldkf2yeHnTnKb6bE/VL
	yh3xlf2Nmsuy7+aUTJrBeM9/3CQJDxNWrFeBpupAvtvJvdVWbnr1xkaSgXioJ9a5ylCs
	OCPZ+OJgqhcl2Tv9NWjlLV24FGpHrzlk4kDnceAH3e5HCaWh+YgAmT52fI2n4L58uELJ
	z86w==
Received: by 10.58.210.65 with SMTP id ms1mr24319037vec.59.1353458719151; Tue,
	20 Nov 2012 16:45:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.248.74 with HTTP; Tue, 20 Nov 2012 16:44:58 -0800 (PST)
From: Nicolas Dechesne <ndec13@gmail.com>
Date: Wed, 21 Nov 2012 01:44:58 +0100
Message-ID: <CAOT3miKZaw+s=0QSp+nh8-VnL+-ez=Lz6M849=o3UVLJfXwjhQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: build error since commit: gcc: Use FILESPATH instead of FILESDIR and cleanup/simplify
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Nov 2012 00:45:20 -0000
Content-Type: multipart/alternative; boundary=047d7bae47922c569f04cef6aad1

--047d7bae47922c569f04cef6aad1
Content-Type: text/plain; charset=ISO-8859-1

hello,

i was attempting a rebuild from scratch with today's master of poky, and i
was facing issues such as:

WARNING: Failed to fetch URL file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch,
attempting MIRRORS if available
ERROR: Fetcher failure: Unable to find file
file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch anywhere. The paths that were
searched were:
    /yocto/poky/meta/recipes-devtools/gcc/gcc-4.7.2
    /yocto/build-poky-master/downloads
ERROR: Function failed: Fetcher failure for URL:
'file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch'. Unable to fetch URL from
any source.

This seems to be since this commit:

commit 90616875b432a932415063b08497266e70c49d75
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Mon Nov 19 21:18:52 2012 +0000

    gcc: Use FILESPATH instead of FILESDIR and cleanup/simplify

    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

and looking at a similar patch sent to oe-core (
http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/29668) not
merged yet, the following patch fixes my problem...

--- a/meta/recipes-devtools/gcc/gcc-4.7.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.7.inc
@@ -18,6 +18,8 @@ PV = "4.7.2"

 BINV = "4.7.2"

+FILESPATH = "${FILE_DIRNAME}/gcc-4.7"
+
 DEPENDS =+ "mpfr gmp libmpc"
 NATIVEDEPS = "mpfr-native gmp-native libmpc-native zlib-native"

without that, bitbake is looking for 'file://xxx' from recipe in the wrong
folder (e.g. gcc-4.7.2 instead of gcc-4.7)

is there anything that i am overlooking here?

cheers

nicolas

--047d7bae47922c569f04cef6aad1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>hello,</div><div><br></div><div>i was attempting a rebuild from scratc=
h with today&#39;s master of poky, and i was facing issues such as:</div><d=
iv><br></div><div><div>WARNING: Failed to fetch URL file://gcc-4.3.1-ARCH_F=
LAGS_FOR_TARGET.patch, attempting MIRRORS if available</div>

<div>ERROR: Fetcher failure: Unable to find file file://gcc-4.3.1-ARCH_FLAG=
S_FOR_TARGET.patch anywhere. The paths that were searched were:</div><div>=
=A0 =A0 /yocto/poky/meta/recipes-devtools/gcc/gcc-4.7.2</div><div>=A0 =A0 /=
yocto/build-poky-master/downloads</div>

<div>ERROR: Function failed: Fetcher failure for URL: &#39;file://gcc-4.3.1=
-ARCH_FLAGS_FOR_TARGET.patch&#39;. Unable to fetch URL from any source.</di=
v></div><div><br></div><div>This seems to be since this commit:</div><div>

<br></div><div><div>commit 90616875b432a932415063b08497266e70c49d75</div><d=
iv>Author: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org">richard.purdie@linuxfoundation.org</a>&gt;</div><div>Date: =A0 Mon=
 Nov 19 21:18:52 2012 +0000</div>

<div><br></div><div>=A0 =A0 gcc: Use FILESPATH instead of FILESDIR and clea=
nup/simplify</div><div>=A0 =A0=A0</div><div>=A0 =A0 Signed-off-by: Richard =
Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.pu=
rdie@linuxfoundation.org</a>&gt;</div>

</div><div><br></div><div>and looking at a similar patch sent to oe-core (<=
a href=3D"http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/=
29668">http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/296=
68</a>) not merged yet, the following patch fixes my problem...</div>

<div><br></div><div>--- a/meta/recipes-devtools/gcc/gcc-4.7.inc</div><div>+=
++ b/meta/recipes-devtools/gcc/gcc-4.7.inc</div><div>@@ -18,6 +18,8 @@ PV =
=3D &quot;4.7.2&quot;</div><div><br></div><div>=A0BINV =3D &quot;4.7.2&quot=
;</div>

<div><br></div><div>+FILESPATH =3D &quot;${FILE_DIRNAME}/gcc-4.7&quot;</div=
><div>+</div><div>=A0DEPENDS =3D+ &quot;mpfr gmp libmpc&quot;</div><div>=A0=
NATIVEDEPS =3D &quot;mpfr-native gmp-native libmpc-native zlib-native&quot;=
</div>

<div><br></div><div>without that, bitbake is looking for &#39;file://xxx&#3=
9; from recipe in the wrong folder (e.g. gcc-4.7.2 instead of gcc-4.7)</div=
><div><br></div><div>is there anything that i am overlooking here?</div>

<div><br></div><div>cheers</div><div><br></div><div>nicolas</div>

--047d7bae47922c569f04cef6aad1--
