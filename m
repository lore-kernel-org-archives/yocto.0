Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A762E0086D; Thu, 12 Mar 2015 09:27:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2938EE00858
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 09:27:57 -0700 (PDT)
Received: by padfa1 with SMTP id fa1so21802271pad.3
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 09:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=NGz/StgNcF2gbIYY/chDoVeRYvZriMNxXXQROuyEswo=;
	b=BQSv0uqnp7LQQXWhcURK8ldis5q5BamTaZoyxL9SM4MDF7ZtH52qD8dF7UfSsnRc7u
	hyfrVJEe04ISfCosfeNBvHDYRg2K6jI72Wk4QnN6wmPy7ezYJxJV/ytlABaz8f1GpgN7
	/m2mMLVLuNjJ3WMi4McVrsnAxM5VQg+bNWEIG6/X4OneTW+saKda/vm774PpAMBjBiHI
	FZHx5ADyuBmisoss0/u482NqzbZzFapWHNojm4/t2D0Z6wcWJnUQeGgR1tGQ+/CQiA1X
	38JqMi8iP2pJpCto3V/+BJ61+9QoZOd62tRUb2gLWeHJwuY805DFhaPk/Gds9JZqJVxT
	1Qvw==
X-Received: by 10.70.52.8 with SMTP id p8mr91692713pdo.27.1426177676859;
	Thu, 12 Mar 2015 09:27:56 -0700 (PDT)
Received: from [192.168.0.13] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85])
	by mx.google.com with ESMTPSA id r8sm11819949pdp.10.2015.03.12.09.27.55
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Mar 2015 09:27:55 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Message-Id: <1C32BA8A-B6B1-4CD6-A980-72C07E978FA2@gmail.com>
Date: Thu, 12 Mar 2015 09:27:53 -0700
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	yocto <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
X-Mailer: Apple Mail (2.2070.6)
Subject: clang cross compiler for OE available in meta-clang
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
X-List-Received-Date: Thu, 12 Mar 2015 16:27:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi All,

Finally, clang/llvm is now in a working state as a cross compiler in =
meta-clang layer

https://github.com/kraj/meta-clang

Currently, It will build clang and stage it along with gcc cross =
compilers, default remains
as it is. If you wish to compile an additional recipe using clang you =
will add following two entries per recipe


TOOLCHAIN_pn-<recipe> =3D "clang"
DEPENDS_append_pn-<recipe> =3D " clang-cross "

to conf/clang.conf=20

and it will start using clang for that component. Right now it only has =
one entry for =E2=80=98lzo=E2=80=99 :)
I am hoping to have this list grow soon

Right now, its only the cross compiler, which means compiler runtime is =
still same from gcc
and binutils are used in same way

Eventually, I will add compiler-rt and libc++ as well and also add =
cross-canadian builds of clang and make it cohabit in SDK
along with gcc.

If you would like to help trying/porting recipes to use clang/llvm or =
improve the layer, please lend your hand

Thanks for your time

-Khem


