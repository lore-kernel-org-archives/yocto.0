Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E61B0E006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 15:04:55 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so896737vws.35
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2011 15:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:from:to:cc:in-reply-to:references:content-type:date
	:message-id:mime-version:x-mailer:content-transfer-encoding;
	bh=/BMZDr8w6U7ygNDHm1ZYwrFV2bptpFkEFaDSNwMb8qw=;
	b=wuJNGraE17dEzHL1VQtQUHqe982Gd8GF43Nalw5s62BW2mmGLaPTgcqxHiuUDMmRFf
	xzBlazfBgG75J+JT4Sjixs2W9FM7c9l0WSOS9BZY4lbDIHkHwSWoD2aDtXUjzlQG/Ipa
	tGjiOlXT7/y0Gu8r6uXMT+ekePvi6y7WZna6s=
Received: by 10.52.29.9 with SMTP id f9mr6598059vdh.30.1320271495186;
	Wed, 02 Nov 2011 15:04:55 -0700 (PDT)
Received: from [10.0.1.36] ([67.239.164.153])
	by mx.google.com with ESMTPS id c20sm5029981vdt.6.2011.11.02.15.04.53
	(version=SSLv3 cipher=OTHER); Wed, 02 Nov 2011 15:04:53 -0700 (PDT)
From: Jim Abernathy <jfabernathy@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1320265109.6937.56.camel@elmorro>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
	<1320243867.13661.6.camel@jim-ubuntu-10>
	<1320244912.26655.61.camel@elmorro>
	<1320246467.13661.10.camel@jim-ubuntu-10>
	<1320248073.26655.86.camel@elmorro>
	<1320261498.13661.13.camel@jim-ubuntu-10>
	<1320262596.6937.41.camel@elmorro>
	<1320264445.13661.18.camel@jim-ubuntu-10>
	<1320265109.6937.56.camel@elmorro>
Date: Wed, 02 Nov 2011 18:05:05 -0400
Message-ID: <1320271505.13661.20.camel@jim-ubuntu-10>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Wed, 02 Nov 2011 22:04:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm noticing fetcher failures while my bitbake is working. They are
listed as warning. Do I ignore these??

WARNING: Fetcher failure for URL: 'None'. Fetch command export
HOME=3D"/home/jim"; export SSH_AGENT_PID=3D"1500"; export
SSH_AUTH_SOCK=3D"/tmp/keyring-Zcbzax/ssh"; export
GIT_CONFIG=3D"/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/usr/etc=
/gitconfig"; export PATH=3D"/home/jim/bsp-test/poky/build/tmp/sysroots/i686=
-linux/usr/bin/core2-poky-linux:/home/jim/bsp-test/poky/build/tmp/sysroots/=
mymachine/usr/bin/crossscripts:/home/jim/bsp-test/poky/build/tmp/sysroots/i=
686-linux/usr/sbin:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/us=
r/bin:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/sbin:/home/jim/=
bsp-test/poky/build/tmp/sysroots/i686-linux//bin:/home/jim/bsp-test/poky/sc=
ripts:/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/bsp-test/poky/scripts:=
/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/bsp-test/poky/scripts:/home/=
jim/bsp-test/poky/bitbake/bin/:/home/jim/bsp-test/poky/scripts:/home/jim/bs=
p-test/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/=
:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/CodeSourcery/=
Sourcery_G++_Lite/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sb=
in:/bin:/usr/games:/home/jim/bsp-test/poky/scripts"; /usr/bin/env wget -t 5=
 -q --passive-ftp --no-check-certificate -P /home/jim/bsp-test/poky/build/d=
ownloads 'https://fedorahosted.org/releases/l/i/liberation-fonts/liberation=
-fonts-1.04.tar.gz' failed with signal 4, output:

>=20
>=20



