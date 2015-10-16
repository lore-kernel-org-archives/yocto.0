Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88306E00B21; Fri, 16 Oct 2015 12:26:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4453AE006D5
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 12:26:28 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so22150068wic.1
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 12:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=9SVSYcZmxnUoIJhGMPFWt0LZyE6Ag/pSzvfw3zdxteg=;
	b=dUf8rnxx6bD9PQu6Mw8YuXnCUoDDUjgH9p08mrMlxv/slo0jxa+40nZ6qqS3/pE6Ez
	DhJNU9U71zzcbO2mNCUA9TbV4zgve0C/Ly/s2fCp40Pn5dwa3TaY5ED5o6dhTBvM7Ixu
	xpBQURxpzuTgIubAfBKFACZ75svuBoTFYmiVSs/hdKsDT8YLJS6AjtLTmjUmCwuIo3yo
	cblHVgR5TccnqmHnNM76ldUBDtccg2r0J7fHm6uyth5B72XxqzsaEfJYzCoA7kBbPZOv
	0AkWaWs8t0ku99buOZlh4/LDi7TrRHbJddVlYt5aVm/CmFjcQPUNogxpRGjXBiF0IKzz
	ybeA==
X-Received: by 10.194.235.39 with SMTP id uj7mr20752992wjc.115.1445023587929; 
	Fri, 16 Oct 2015 12:26:27 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by smtp.gmail.com with ESMTPSA id
	l1sm24171218wjx.13.2015.10.16.12.26.27
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 16 Oct 2015 12:26:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <CA+KKcbmivGjU969MGgYBzBKpD=b1EnoaebVVKr=DrrM_inWiUA@mail.gmail.com>
Date: Fri, 16 Oct 2015 21:26:24 +0200
Message-Id: <FF10587E-562D-4B1B-9F6C-FA99A1D98CC7@gmail.com>
References: <CA+KKcbm9JAeutnDhyYfVprxt3AZYX0B9n44Cokt3yMhiS8TPZw@mail.gmail.com>
	<7EEFD0BE-EA3E-49A4-990D-09862F31D3EE@gmail.com>
	<CA+KKcbmivGjU969MGgYBzBKpD=b1EnoaebVVKr=DrrM_inWiUA@mail.gmail.com>
To: Federico Pietro Briata <federicobriata@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java] openjdk-7-jre was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
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
X-List-Received-Date: Fri, 16 Oct 2015 19:26:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> Am 16.10.2015 um 21:21 schrieb Federico Pietro Briata =
<federicobriata@gmail.com>:
>=20
> 2015-10-16 16:09 GMT+01:00, Jens Rehsack <rehsack@gmail.com>:
>>=20
>>> Am 16.10.2015 um 15:35 schrieb Federico Pietro Briata
>>> <federicobriata@gmail.com>:
>>>=20
>>> Hi Folks,
>>> I'm trying to compile java without x11 and unfortunately also =
without
>>> success..
>>>=20
>>> I've added in my local.conf:
>>>=20
>>> DISTRO_FEATURES_remove =3D "x11"
>>> # Java build settings
>>> PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"
>>> PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"
>>> PREFERRED_VERSION_openjdk-7-jre =3D "85b01-2.6.1"
>>> PREFERRED_VERSION_icedtea7-native =3D "2.1.3"
>>> PREFERRED_PROVIDER_openjdk-7-jre =3D "openjdk-7-jre"
>>>=20
>>> but I get this error
>>>=20
>>> ERROR: Nothing RPROVIDES 'openjdk-7-jre' (but
>>> =
/home/f34389b/yocto/PCM/R5.0/sources/meta-fede/recipes-images/images/fede-=
java-test.bb
>>> RDEPENDS on or otherwise requires it)
>>> ERROR: openjdk-7-jre was skipped: missing required distro feature =
['x11']
>>> (not in DISTRO_FEATURES)
>>>=20
>>> Patching those files:
>>> meta-java/recipes-core/classpath/classpath.inc
>>> meta-java/recipes-core/jamvm/jamvm.inc
>>> meta-java/recipes-core/jamvm/jamvm_git.bb
>>> meta-java/recipes-core/openjdk/openjdk-common.inc
>>> poky/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
>>>=20
>>> like this:
>>> -REQUIRED_DISTRO_FEATURES =3D "x11"
>>> +#REQUIRED_DISTRO_FEATURES =3D "x11"
>>>=20
>>> seems to be a temporary workaround
>>=20
>> Hi Federico,
>>=20
>> unfortunately I missed
>> =
https://github.com/rehsack/meta-java/commit/11e30f2bf198bcad91c0d14104fcd8=
b91255ad69
>> when submitting my patchset.
>>=20
>> I'm working on some jdk7 native fixes and layer cleanup and will send =
a new
>> patchset later today.
>>=20
>> I do not intend to provide jdk7 for cross-compiling support without =
x11 -
>> when you want no-x11, from my point of view, go to jdk8.
>>=20
>> Cheers
>> --
>> Jens Rehsack - rehsack@gmail.com
>>=20
>>=20
>=20
> Hi Jens,
>=20
> my machine it's a arm7 Imx6 display less.
>=20
> I choose jdk7 because I thought was the best for my target, so for you
> should I go to jdk8?

Not for me, for yourself if you want to build an x11-less distro.

> Anyway I've compiled jdk7 now, but I'm not sure if I've to use some
> specific configuration set for build with no-x11.

I patched the jdk8 I submitted to build without x11, not because it's =
display less,
but because it uses EGL and framebuffer.

Because jdk8 requires =
https://github.com/rehsack/poky/commit/04f606795c29705e4e053895f1f007e3b4e=
3cd17 - you have to cherry-pick the jdk8 patch and =
revert-x11-disto-prereq from =
https://github.com/rehsack/meta-java/commits/master to use jdk8.

Cheers
--=20
Jens Rehsack - rehsack@gmail.com


