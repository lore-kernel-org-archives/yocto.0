Return-Path: <david@lapinbilly.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 585F1E00C75; Wed, 30 May 2018 08:18:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1238 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 May 2018 08:18:22 PDT
Received: from slow1-d.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E146EE009BC
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 08:18:22 -0700 (PDT)
Received: from relay11.mail.gandi.net (unknown [217.70.178.231])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 71D033ABA42
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 16:57:45 +0200 (CEST)
Received: from sogo5.bi1.0x35.net (sogo5.bi1.0x35.net [10.150.1.75])
	(Authenticated sender: david@lapinbilly.eu)
	by relay11.mail.gandi.net (Postfix) with ESMTPA id AF91010000D
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 16:57:43 +0200 (CEST)
To: yocto@yoctoproject.org
User-Agent: SOGoMail 3.2.10
MIME-Version: 1.0
Date: Wed, 30 May 2018 16:57:43 +0200
Message-ID: <59d0-5b0ebc00-1f-7cae7200@229552361>
X-Forward: 92.103.208.197, 10.150.1.6
From: =?utf-8?q?david=40lapinbilly=2Eeu?= <david@lapinbilly.eu>
Subject: [Rocko] conflicts with clang libraries
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
X-List-Received-Date: Wed, 30 May 2018 15:18:24 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hello

With the help of yocto/rocko, I m writing recipes to build an image tha=
t should provide an opencl stack on top of "beignet".

https://cgit.freedesktop.org/beignet/

started from here:
https://github.com/intel/intel-iot-refkit/tree/master/meta-refkit-compu=
tervision/recipes-opencl


Thus this requires clang to build, I included the meta-layer, from

https://github.com/kraj/meta-clang

in the configuration.


--> 

I am facing conflicts between clang c++ library and libunwind.

ERROR: Multiple .bb files are due to be built which each provide libunw=
ind:                                                                   =
   
  /home/marec/poky/meta-clang/recipes-devtools/clang/libcxx=5Fgit.bb
  /home/marec/poky/meta/recipes-support/libunwind/libunwind=5F1.2.bb
A list of tasks depending on these providers is shown and may help expl=
ain where the dependency comes from.
/home/marec/poky/meta/recipes-support/libunwind/libunwind=5F1.2.bb has =
unique dependees:
  /home/marec/poky/meta/recipes-core/packagegroups/packagegroup-core-to=
ols-profile.bb:do=5Fbuild
  /home/marec/poky/meta/recipes-kernel/perf/perf.bb:do=5Fprepare=5Freci=
pe=5Fsysroot
  /home/marec/poky/meta/recipes-kernel/perf/perf.bb:do=5Fbuild
  /home/marec/poky/meta/recipes-kernel/perf/perf.bb:do=5Fpackage
/home/marec/poky/meta-clang/recipes-devtools/clang/libcxx=5Fgit.bb has =
unique dependees:
  /home/marec/poky/meta-clang/recipes-devtools/clang/clang=5Fgit.bb:do=5F=
package
  /home/marec/poky/meta-clang/recipes-devtools/clang/clang=5Fgit.bb:do=5F=
prepare=5Frecipe=5Fsysroot
  /home/marec/poky/meta-msdk-stack/recipes-multimedia/beignet/beignet=5F=
1.3.2.bb:do=5Fbuild
  /home/marec/poky/meta-clang/recipes-devtools/clang/clang=5Fgit.bb:do=5F=
build
It could be that one recipe provides something the other doesn't and sh=
ould. The following provider and runtime provider differences may be he=
lpful.
/home/marec/poky/meta-clang/recipes-devtools/clang/libcxx=5Fgit.bb has =
unique provides:
  libcxx
/home/marec/poky/meta-clang/recipes-devtools/clang/libcxx=5Fgit.bb has =
unique rprovides:
  libcxx
  libcxx-dbg
  libcxx-doc
  libcxx-staticdev
  libcxx-locale
  libcxx-dev
  ^libcxx-locale-.*
/home/marec/poky/meta/recipes-support/libunwind/libunwind=5F1.2.bb has =
unique provides:

/home/marec/poky/meta/recipes-support/libunwind/libunwind=5F1.2.bb has =
unique rprovides:
  libunwind-doc
  libunwind-dev
  ^libunwind-locale-.*
  libunwind-staticdev
  libunwind-locale
  libunwind-dbg

<--

I do not intend to use Clang as a primary or secondary tool-chain.
- I already setup icc as secondary tool-chain -

Any clue to solve this ?

-- 
David Marec


