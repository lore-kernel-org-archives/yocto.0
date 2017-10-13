Return-Path: <send2meena@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C70BBE00CFF; Fri, 13 Oct 2017 08:07:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (send2meena[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8B41E00CF9
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 08:07:11 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id q13so4464185vkb.2
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 08:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6f50D3ENZALLfu/SjXVbt9qROefCIj43529XRbYKaa4=;
	b=eovxpZOO8hFVryrJWAzW0EDgRPv3yTuMBkVZnxngkUwMM44gbNX3fKXPYqIAAFDQR6
	ZPb8vRHckyA7Bz8l0hF9OM5obU0hKsWUhxxYzGfc+2d+pBWVvP2mLqRcs4h03y8OlsfC
	RUGoou4TFscRT6iAF+3Wvfb+66/2RmRcRbdwj4TYZgU4LjCIRpSdzlu5x0aLCh/cXqHk
	0gm5ltZfomXYzBeaXc0LktGde0D3A0+qkoy6b31+gIr+1b+gpEjzSZ9Skl4siXrCPCsA
	8CdBtBb/97YAGZWYEWRebckQgQJ+JdczrpZESjHIwJBvxCCtlH2pDsC/0sooD7OGqQ7M
	JjMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6f50D3ENZALLfu/SjXVbt9qROefCIj43529XRbYKaa4=;
	b=iAPHCKBtWDTz93k/qOi+4P3IvYybQuff1+gdbs4toBOvDqw0yYuH1MZoTxFEZzy8QQ
	XLXMpvaoyqOiTklZg9xLzVxkT5qnnXtiHJ890fDbs8EN1AP6EAA5wsFi2+4SLGSVff0D
	PdcShmQ6Pg0IynApqkj4ARKf9vys9eHJ5yrTo7QP1Vwgq4RHlTk6onDA3nrxjVwG9iT1
	E1YVUFOmzF6E0LHAYoVY0yTzRoSx9bnWE2ovHQKEMgIACFrL+yt/0gkFeH6E1Allzo7V
	zTH8JLOvXmiPxIOM74jGs6uVbhd2en8PsUYMq7QurjE7oliNiam6eK4fIi1Il6bP27cE
	y8cA==
X-Gm-Message-State: AMCzsaWPNMhDTH6GFthhrT6bTSLsLHPp5qbvmJdiylVy7q1DTbyViDKa
	825oxcnGzQkcvIJmSxUrwhlIRyf4SPYWA1XmdkSyMA==
X-Google-Smtp-Source: AOwi7QCyRjB22Jc0tiGgpUHYqwInsDSGV2Ksxar6z6wquYxMlSH4/KlWKo/zMQqjJ822RQ2e4tEMgjZvsvF5f+cnHnc=
X-Received: by 10.31.32.76 with SMTP id g73mr1282840vkg.30.1507907230448; Fri,
	13 Oct 2017 08:07:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.41.166 with HTTP; Fri, 13 Oct 2017 08:07:09 -0700 (PDT)
From: vaishnavi tn <send2meena@gmail.com>
Date: Fri, 13 Oct 2017 17:07:09 +0200
Message-ID: <CAH=AJETKoHsTf-0aPzuEq_xstMMMZDw4rYvW3522UW8Ror43Sg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: aarch64-poky-linux-gcc error during compilation
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
X-List-Received-Date: Fri, 13 Oct 2017 15:07:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to include mlpack (with python bindings) to my yocto
build. I get the following error while building the python bindings:

===========================================
aarch64-poky-linux-gcc -march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb -DNDEBUG -g -O3 -Wall
-Wstrict-prototypes -O2 -pipe -g -feliminate-unused-debug-types -fPIC
-I/builds/build-h3/tmp/sysroots/x86_64-linux/usr/lib/python2.7/site-packages/numpy/core/include
-I/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/
-I/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/git/src
-I/builds/build-h3/tmp/sysroots/h3ulcb/usr/include
-I/builds/build-h3/tmp/sysroots/h3ulcb/usr/include
-I/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/..
-I/builds/build-h3/tmp/sysroots/h3ulcb/usr/include/python2.7 -c
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/sparse_coding.cpp
-o build/temp.linux-x86_64-2.7/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/sparse_coding.o
-DBINDING_TYPE=BINDING_TYPE_PYX -std=c++11 -march=armv8-a
-mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wall
-Wextra -ftemplate-depth=1000 -O3 -fopenmp
aarch64-poky-linux-gcc: error: : No such file or directory
aarch64-poky-linux-gcc: error: : No such file or directory
error: command 'aarch64-poky-linux-gcc' failed with exit status 1
src/mlpack/methods/sparse_coding/CMakeFiles/build_pyx_sparse_coding.dir/build.make:60:
recipe for target
'src/mlpack/methods/sparse_coding/CMakeFiles/build_pyx_sparse_coding'
failed
make[2]: *** [src/mlpack/methods/sparse_coding/CMakeFiles/build_pyx_sparse_coding]
Error 1
make[2]: Leaving directory
'/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build'
CMakeFiles/Makefile2:6651: recipe for target
'src/mlpack/methods/sparse_coding/CMakeFiles/build_pyx_sparse_coding.dir/all'
failed
make[1]: *** [src/mlpack/methods/sparse_coding/CMakeFiles/build_pyx_sparse_coding.dir/all]
Error 2
make[1]: *** Waiting for unfinished jobs....
/builds/build-h3/tmp/sysroots/x86_64-linux/usr/lib/python2.7/site-packages/setuptools-36.2.7-py2.7.egg/setuptools/dist.py:350:
UserWarning: The version specified ('3.0.x') is an invalid version,
this may not work as expected with newer versions of setuptools, pip,
and PyPI. Please see PEP 440 for more details.
running build_ext
cythoning /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/preprocess_split.pyx
to /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/preprocess_split.cpp
building 'mlpack.preprocess_split' extension
aarch64-poky-linux-gcc -march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb -DNDEBUG -g -O3 -Wall
-Wstrict-prototypes -O2 -pipe -g -feliminate-unused-debug-types -fPIC
-I/builds/build-h3/tmp/sysroots/x86_64-linux/usr/lib/python2.7/site-packages/numpy/core/include
-I/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/
-I/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/git/src
-I/builds/build-h3/tmp/sysroots/h3ulcb/usr/include
-I/builds/build-h3/tmp/sysroots/h3ulcb/usr/include
-I/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/..
-I/builds/build-h3/tmp/sysroots/h3ulcb/usr/include/python2.7 -c
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/preprocess_split.cpp
-o build/temp.linux-x86_64-2.7/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/preprocess_split.o
-DBINDING_TYPE=BINDING_TYPE_PYX -std=c++11 -march=armv8-a
-mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wall
-Wextra -ftemplate-depth=1000 -O3 -fopenmp
aarch64-poky-linux-gcc: error: : No such file or directory
aarch64-poky-linux-gcc: error: : No such file or directory
error: command 'aarch64-poky-linux-gcc' failed with exit status 1
src/mlpack/methods/preprocess/CMakeFiles/build_pyx_preprocess_split.dir/build.make:60:
recipe for target
'src/mlpack/methods/preprocess/CMakeFiles/build_pyx_preprocess_split'
failed
make[2]: *** [src/mlpack/methods/preprocess/CMakeFiles/build_pyx_preprocess_split]
Error 1
make[2]: Leaving directory
'/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build'
CMakeFiles/Makefile2:1387: recipe for target
'src/mlpack/methods/preprocess/CMakeFiles/build_pyx_preprocess_split.dir/all'
failed
make[1]: *** [src/mlpack/methods/preprocess/CMakeFiles/build_pyx_preprocess_split.dir/all]
Error 2
[ 89%] Linking CXX executable ../../../../bin/generate_pyx_softmax_regression
cd /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/methods/softmax_regression
&& /builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/cmake -E
cmake_link_script
CMakeFiles/generate_pyx_softmax_regression.dir/link.txt --verbose=1
/builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
   -march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wall
-Wextra -ftemplate-depth=1000 -O3 -fopenmp -O2 -pipe -g
-feliminate-unused-debug-types  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -DNDEBUG
-march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed  -Wl,-O1 -Wl,--hash-style=gnu
-Wl,--as-needed
CMakeFiles/generate_pyx_softmax_regression.dir/__/__/bindings/python/generate_pyx_softmax_regression.cpp.o
CMakeFiles/generate_pyx_softmax_regression.dir/__/__/bindings/python/print_pyx.cpp.o
 -o ../../../../bin/generate_pyx_softmax_regression -rdynamic
../../../../lib/libmlpack.so.2.0 -lrt -larmadillo
-lboost_program_options-mt -lboost_unit_test_framework
-lboost_serialization-mt
cd /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/methods/softmax_regression
&& /builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/cmake
-DGENERATE_PYX_PROGRAM=/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_softmax_regression
-DPYX_OUTPUT_FILE=/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/softmax_regression.pyx
-P /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/git/CMake/GeneratePYX.cmake
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_softmax_regression:
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_softmax_regression:
cannot execute binary file
make[2]: Leaving directory
'/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build'
[ 89%] Built target generate_pyx_softmax_regression
[ 89%] Linking CXX executable ../../../../bin/generate_pyx_knn
cd /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/methods/neighbor_search
&& /builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/cmake -E
cmake_link_script CMakeFiles/generate_pyx_knn.dir/link.txt --verbose=1
/builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
   -march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wall
-Wextra -ftemplate-depth=1000 -O3 -fopenmp -O2 -pipe -g
-feliminate-unused-debug-types  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -DNDEBUG
-march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed  -Wl,-O1 -Wl,--hash-style=gnu
-Wl,--as-needed
CMakeFiles/generate_pyx_knn.dir/__/__/bindings/python/generate_pyx_knn.cpp.o
CMakeFiles/generate_pyx_knn.dir/__/__/bindings/python/print_pyx.cpp.o
-o ../../../../bin/generate_pyx_knn -rdynamic
../../../../lib/libmlpack.so.2.0 -lrt -larmadillo
-lboost_program_options-mt -lboost_unit_test_framework
-lboost_serialization-mt
cd /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/methods/neighbor_search
&& /builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/cmake
-DGENERATE_PYX_PROGRAM=/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_knn
-DPYX_OUTPUT_FILE=/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/knn.pyx
-P /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/git/CMake/GeneratePYX.cmake
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_knn:
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_knn:
cannot execute binary file
make[2]: Leaving directory
'/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build'
[ 89%] Built target generate_pyx_knn
[ 89%] Linking CXX executable ../../../../bin/generate_pyx_kfn
cd /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/methods/neighbor_search
&& /builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/cmake -E
cmake_link_script CMakeFiles/generate_pyx_kfn.dir/link.txt --verbose=1
/builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
   -march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wall
-Wextra -ftemplate-depth=1000 -O3 -fopenmp -O2 -pipe -g
-feliminate-unused-debug-types  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -DNDEBUG
-march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed  -Wl,-O1 -Wl,--hash-style=gnu
-Wl,--as-needed
CMakeFiles/generate_pyx_kfn.dir/__/__/bindings/python/generate_pyx_kfn.cpp.o
CMakeFiles/generate_pyx_kfn.dir/__/__/bindings/python/print_pyx.cpp.o
-o ../../../../bin/generate_pyx_kfn -rdynamic
../../../../lib/libmlpack.so.2.0 -lrt -larmadillo
-lboost_program_options-mt -lboost_unit_test_framework
-lboost_serialization-mt
cd /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/methods/neighbor_search
&& /builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/cmake
-DGENERATE_PYX_PROGRAM=/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_kfn
-DPYX_OUTPUT_FILE=/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/kfn.pyx
-P /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/git/CMake/GeneratePYX.cmake
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_kfn:
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_kfn:
cannot execute binary file
make[2]: Leaving directory
'/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build'
[ 89%] Built target generate_pyx_kfn
[ 89%] Linking CXX executable ../../../../bin/generate_pyx_krann
cd /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/methods/rann
&& /builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/cmake -E
cmake_link_script CMakeFiles/generate_pyx_krann.dir/link.txt
--verbose=1
/builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
   -march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wall
-Wextra -ftemplate-depth=1000 -O3 -fopenmp -O2 -pipe -g
-feliminate-unused-debug-types  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -DNDEBUG
-march=armv8-a -mtune=cortex-a57.cortex-a53
--sysroot=/builds/build-h3/tmp/sysroots/h3ulcb  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed  -Wl,-O1 -Wl,--hash-style=gnu
-Wl,--as-needed
CMakeFiles/generate_pyx_krann.dir/__/__/bindings/python/generate_pyx_krann.cpp.o
CMakeFiles/generate_pyx_krann.dir/__/__/bindings/python/print_pyx.cpp.o
 -o ../../../../bin/generate_pyx_krann -rdynamic
../../../../lib/libmlpack.so.2.0 -lrt -larmadillo
-lboost_program_options-mt -lboost_unit_test_framework
-lboost_serialization-mt
cd /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/methods/rann
&& /builds/build-h3/tmp/sysroots/x86_64-linux/usr/bin/cmake
-DGENERATE_PYX_PROGRAM=/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_krann
-DPYX_OUTPUT_FILE=/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/src/mlpack/bindings/python/mlpack/krann.pyx
-P /builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/git/CMake/GeneratePYX.cmake
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_krann:
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build/bin/generate_pyx_krann:
cannot execute binary file
make[2]: Leaving directory
'/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build'
[ 89%] Built target generate_pyx_krann
make[1]: Leaving directory
'/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/build'
Makefile:141: recipe for target 'all' failed
make: *** [all] Error 2
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (log file is located at
/builds/build-h3/tmp/work/aarch64-poky-linux/mlpack/git-r0/temp/log.do_compile.17361)
===========================================

My recipe looks like this:

===========================================
DEPENDS = "boost armadillo python-native python-setuptools-native
python-pandas-native python-numpy-native python-cython-native
python-pytest-runner-native doxygen-native"

LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=3cee6555b8c975c14d29687fe7e78038"

SRC_URI = "git://github.com/mlpack/mlpack.git;protocol=https \
"
SRCREV = "b8ee319818e6213da4b92cb69dab94b956795401"

S = "${WORKDIR}/git"

inherit cmake pythonnative

EXTRA_OECMAKE = "-DDEBUG:BOOL=OFF \
-DPROFILE:BOOL=OFF \
-DBUILD_TESTS:BOOL=OFF \
-DCMAKE_BUILD_TYPE:STRING=Release \
-DCMAKE_SKIP_INSTALL_RPATH:BOOL=YES \
-DCMAKE_SKIP_RPATH:BOOL=YES \
-DPY_PANDAS:PATH=${STAGING_LIBDIR_NATIVE}/python2.7/site-packages/pandas \
"

do_compile_prepend() {
export STAGING_LIBDIR="${STAGING_LIBDIR}"
export STAGING_INCDIR="${STAGING_INCDIR}"
}
===========================================

Is there something else that needs to be included in my recipe?
Or is the build environment missing something?

I'm a novice. So any pointers would really help.

Thanks!

