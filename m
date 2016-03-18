Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B497DE00C60; Fri, 18 Mar 2016 00:16:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A50BE00C39
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 00:16:29 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id k12so82592807lbb.1
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 00:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-transfer-encoding;
	bh=5/hHYIggX5KUmCLWj5XBGSC2ILZPlVEHaGGdtlHrb7g=;
	b=EhIZbcdXbpQdV2Y6alUB/4Qef2ShIZKlkCAvDdATTS76mt9xDBCT9XcSj1ttfmxAeM
	niIVNkkePRt/i6+f9vKZY+0AwWbgnPIzw9yGi+9p3biC7QybBFKggx1Our9jqnTBGPeE
	TIkaIeyKejDEHd9sAGlsCO5aB++ZffR3b7N4cCtIlVNM4wZBExrsQgzJyCRLDcp3rkQe
	leg2pP/N6A2a1k1kTNmVYWKT05u8bWSk9x8S2Efsz1y9Eh7Ow8/SQG4QMWCzpSveFSUX
	br66fhnLyAdN0M30wY7Ew2PvfGddp2BdNseescqqnn0yWHeXEBzhKo1K+RJ7p0Kp4HS9
	oL5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-transfer-encoding;
	bh=5/hHYIggX5KUmCLWj5XBGSC2ILZPlVEHaGGdtlHrb7g=;
	b=IwHHv9aK+rO5arHS5wk5qgnCsV3fGXrpAi2XoL8j5wQ3VGjh0TZu+HHUOPopfXhDmh
	B4ClSZq8BtPOqnlspVfiAN+mRdsbxsDyUTYXMA6lmxpzdLp26aU1wIyQsxZre1QVX4yW
	vVpN9F8l1D5QxrZmffBXAtxYY0xbPe/zB0qEpzW45Uzp0TvIKrs/OT2MHPl5+x7Qi5U5
	IbNEWDblBXndhftLeLOLfoXC26zBSEXkIkzVp/D8WKnJ/blUDk0LZMwp/TNf56qoEb69
	7K78fZgn2LelTLPbSkJlST9aybqgRd9rkhC+0vYGp+gXOyhVI31NUtDu7EhmNT9ez00Z
	8u8w==
X-Gm-Message-State: AD7BkJJTlZ0oremGp6/nvPvyWikOhaGA5/ac544s7bwPU6CPvd0+uIFY8EnJLHM3R7D00fjiC8+ESoY4U/zMzw==
MIME-Version: 1.0
X-Received: by 10.112.124.137 with SMTP id mi9mr5213497lbb.112.1458285387973; 
	Fri, 18 Mar 2016 00:16:27 -0700 (PDT)
Received: by 10.25.205.10 with HTTP; Fri, 18 Mar 2016 00:16:27 -0700 (PDT)
In-Reply-To: <56EAD860.4000306@laposte.net>
References: <op.yec9f2hdmnlnty@pc-mls.ecafaros.local>
	<56E913A0.2030603@laposte.net>
	<CAALGJZYWqQGbRMp70LNVyZyWMyd7ac-L5aGrdA4VrWX=Z+BvwA@mail.gmail.com>
	<56E9664F.8000505@laposte.net> <56EAD860.4000306@laposte.net>
Date: Fri, 18 Mar 2016 08:16:27 +0100
Message-ID: <CAALGJZaPgvZmpXiwADH0Lvu-KV9GD56XGMVJNWrRwke370xGjA@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: <DKIM> Re: Qt5.6 new modules
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
X-List-Received-Date: Fri, 18 Mar 2016 07:16:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

2016-03-17 17:16 GMT+01:00 idealsim <idealsim@laposte.net>:
> Hi, i have started a build of the image this master Branch, like you said=
 i
> have an error on qtserialbus :
>
> WARNING: Failed to fetch URL
> git://github.com/qtproject/qtserialbus.git;name=3Dqtserialbus;branch=3D5.=
6;protocol=3Dgit,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Unable to find revision
> 6a16281aceedb713676e16c3074e6f7ea1e70b79 in branch 5.6 even from upstream
> ERROR: Function failed: Fetcher failure for URL:
> 'git://github.com/qtproject/qtserialbus.git;name=3Dqtserialbus;branch=3D5=
.6;protocol=3Dgit'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /media/modjo/data1TO/yocto/seco/udoo-community-bsp/neoBuild/tmp/work/cort=
exa9hf-vfp-neon-poky-linux-gnueabi/qtserialbus/5.5.99+5.6.0-rc+gitAUTOINC+6=
a16281ace-r0/temp/log.do_fetch.5862
> ERROR: Task 894
> (/media/modjo/data1TO/yocto/seco/udoo-community-bsp/sources/meta-qt5/reci=
pes-qt/qt5/qtserialbus_git.bb,
> do_fetch) failed with exit code '1'
>
> This is my qtserialbus_git.bb :
>
> require qt5.inc
> require qt5-git.inc
>
> # There are no LGPLv3-only licensed files in this component.
> # There are no GPLv2 licensed files in this component.
> LICENSE =3D "GFDL-1.3 & BSD & (LGPL-2.1 & The-Qt-Company-Qt-LGPL-Exceptio=
n-1.1
> | LGPL-3.0)"
> LIC_FILES_CHKSUM =3D " \
>     file://LICENSE.LGPLv3;md5=3Db8c75190712063cde04e1f41b6fdad98 \
>     file://LICENSE.GPLv3;md5=3D40f9bf30e783ddc201497165dfb32afb \
>     file://LICENSE.FDL;md5=3D6d9f2a9af4c8b8c3c769f6cc1b6aaf7e \
>     file://LICENSE.GPLv2;md5=3D05832301944453ec79e40ba3c3cfceec \
> "
>
> DEPENDS +=3D "qtbase qtserialport"
>
> SRCREV =3D "6a16281aceedb713676e16c3074e6f7ea1e70b79"
The SRCREV is the git SHA1 of the repository qtserialbus. For the 5.6
Branch the latest one is:

SRCREV =3D "92c979c6652d55c30ab9118d45db74d8da96fc3b"


You can check the SHA1s here:
https://github.com/qtproject/qtserialbus/commits/5.6

The MD5 Sums will be complained during configure step and bitbake wil
tell you the right ones.
Please check if the Licences do match

Regards,
Christian

>
> An idea is welcome !
>
> Regards,
>
> Micka=C3=ABl
>
>
>
> Le 16/03/2016 14:57, idealsim a =C3=A9crit :
>
> Thanks for the tip. I will try it out and let you know ...
>
> Regards,
>
> Micka=C3=ABl
>
> Le 16/03/2016 10:17, Christian Ege a =C3=A9crit :
>
> Hi,,
>
> 2016-03-16 9:04 GMT+01:00 idealsim <idealsim@laposte.net>:
>
> Hi, we have build an image for udoo neo from meta-qt5 jansa/master-5.6 an=
d
> works fine (thanks to Christian Ege ). The problem is that I'm looking fo=
r
> https://github.com/qtproject/qtquickcontrols2 and
> https://github.com/qtproject/qtserialbus. My question is how we can add t=
his
> modules to our build ?  I add this to our local.conf :
>
>      "qtquickcontrols2 \
>       qtserialbus \
>      "
> But this modules don't have buildable providers ! If someone can help to
> said me how to proceed ...
>
> You can try to add a meta-qt5/recipes-qt/qt5/qtserialbus_git.bb and
> take for example meta-qt5/recipes-qt/qt5/qtsensors_git.bb as reference
>
> require qt5.inc
> require qt5-git.inc
> # There are no LGPLv3-only licensed files in this component.
> # There are no GPLv2 licensed files in this component.
> LICENSE =3D "GFDL-1.3 & BSD & (LGPL-2.1 &
> The-Qt-Company-Qt-LGPL-Exception-1.1 | LGPL-3.0)"
> LIC_FILES_CHKSUM =3D " \
> file://LICENSE.LGPLv21;md5=3D58a180e1cf84c756c29f782b3a485c29 \
> file://LICENSE.LGPLv3;md5=3Db8c75190712063cde04e1f41b6fdad98 \
> file://LICENSE.GPLv3;md5=3D40f9bf30e783ddc201497165dfb32afb \
> file://LGPL_EXCEPTION.txt;md5=3D9625233da42f9e0ce9d63651a9d97654 \
> file://LICENSE.FDL;md5=3D6d9f2a9af4c8b8c3c769f6cc1b6aaf7e \
> file://LICENSE.GPLv2;md5=3D05832301944453ec79e40ba3c3cfceec \
> "
> DEPENDS +=3D "qtbase"
>
> SRCREV =3D "71a323e1f12df8d213a4052621027e223eb5a343"
>
> The configure step will bail out due to the fact that you have wrong
> checksums but it will show you the right ones
>
> Best,
> Christian
>
>
> regards,
>
> Mickael
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>



--=20
http://ch.ege.io/

