Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46487E00BE6; Fri, 16 Oct 2015 08:09:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C802FE00BE1
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 08:09:55 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so13445369wic.1
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 08:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=7o4HjHX1Ce85vaE1RWVi1+3DEGvO5lEaoDIF4yYPPhc=;
	b=oXL87pCpGyg8ZbatbEyAMz8cPcwZCWfBAiVaHWRutLTdCl7EbzfEEEeNAylhUClqNG
	TeJsf1RRJSq1Yqvv84I49GGixTEkcl6UJgPkH8aYrL0A/5wvxRXdEYEJYGylu8fpUq53
	vw/nSNOkf+6qm2AON1atUsc4FHdHTnidbHu8CSypmKsjpEYea3ocPTvQjql7Dh/EHtT7
	5KJBXQSc4cRtVFUH1lkxVzQHWyqDi4eCpG4CSbuNngTdEsEr3OfLR7l8O+ijKHLw43/Z
	/SnaogAPmTYi8O9Pyb3p5mehlBDqcFjfPxAJeYl0UlHJDv7n2/4p89Pc5W7AihmF8w+T
	5L+w==
X-Received: by 10.180.184.232 with SMTP id ex8mr5436341wic.15.1445008193190;
	Fri, 16 Oct 2015 08:09:53 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by smtp.gmail.com with ESMTPSA id
	he3sm23076989wjc.48.2015.10.16.08.09.52
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 16 Oct 2015 08:09:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <CA+KKcbm9JAeutnDhyYfVprxt3AZYX0B9n44Cokt3yMhiS8TPZw@mail.gmail.com>
Date: Fri, 16 Oct 2015 17:09:49 +0200
Message-Id: <7EEFD0BE-EA3E-49A4-990D-09862F31D3EE@gmail.com>
References: <CA+KKcbm9JAeutnDhyYfVprxt3AZYX0B9n44Cokt3yMhiS8TPZw@mail.gmail.com>
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
X-List-Received-Date: Fri, 16 Oct 2015 15:09:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> Am 16.10.2015 um 15:35 schrieb Federico Pietro Briata =
<federicobriata@gmail.com>:
>=20
> Hi Folks,
> I'm trying to compile java without x11 and unfortunately also without =
success..
>=20
> I've added in my local.conf:
>=20
> DISTRO_FEATURES_remove =3D "x11"
> # Java build settings
> PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"
> PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"
> PREFERRED_VERSION_openjdk-7-jre =3D "85b01-2.6.1"
> PREFERRED_VERSION_icedtea7-native =3D "2.1.3"
> PREFERRED_PROVIDER_openjdk-7-jre =3D "openjdk-7-jre"
>=20
> but I get this error
>=20
> ERROR: Nothing RPROVIDES 'openjdk-7-jre' (but =
/home/f34389b/yocto/PCM/R5.0/sources/meta-fede/recipes-images/images/fede-=
java-test.bb RDEPENDS on or otherwise requires it)
> ERROR: openjdk-7-jre was skipped: missing required distro feature =
['x11'] (not in DISTRO_FEATURES)
>=20
> Patching those files:
> meta-java/recipes-core/classpath/classpath.inc
> meta-java/recipes-core/jamvm/jamvm.inc
> meta-java/recipes-core/jamvm/jamvm_git.bb
> meta-java/recipes-core/openjdk/openjdk-common.inc
> poky/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
>=20
> like this:
> -REQUIRED_DISTRO_FEATURES =3D "x11"
> +#REQUIRED_DISTRO_FEATURES =3D "x11"
>=20
> seems to be a temporary workaround

Hi Federico,

unfortunately I missed =
https://github.com/rehsack/meta-java/commit/11e30f2bf198bcad91c0d14104fcd8=
b91255ad69 when submitting my patchset.

I'm working on some jdk7 native fixes and layer cleanup and will send a =
new patchset later today.

I do not intend to provide jdk7 for cross-compiling support without x11 =
- when you want no-x11, from my point of view, go to jdk8.

Cheers
--=20
Jens Rehsack - rehsack@gmail.com


