Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9C56E00B47; Thu,  1 Jun 2017 00:40:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F114FE00ADD
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 00:40:20 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 6C67C68A01B; Thu,  1 Jun 2017 08:40:19 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id B321C68A019;
	Thu,  1 Jun 2017 08:40:17 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 3249B6740418;
	Thu,  1 Jun 2017 09:40:17 +0200 (CEST)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <31a2d863-b928-df06-8e86-78b939469614@mlbassoc.com>
	<10690620.1eQvXQkMYH@peggleto-mobl.ger.corp.intel.com>
	<d7c910a5-0d5b-196f-7be5-9d900e528e00@mlbassoc.com>
	<5346749.ruulru6ED8@peggleto-mobl.ger.corp.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <673f3422-6147-3ab8-23c9-84c5cd8b9bda@mlbassoc.com>
Date: Thu, 1 Jun 2017 09:40:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <5346749.ruulru6ED8@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: sstate-cache question
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
X-List-Received-Date: Thu, 01 Jun 2017 07:40:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-06-01 06:32, Paul Eggleton wrote:
> On Thursday, 1 June 2017 3:44:49 PM NZST Gary Thomas wrote:
>> On 2017-06-01 05:28, Paul Eggleton wrote:
>>> It ought to be. At face value it should be finding the files in either
>>> place - we'd need to debug the code to find out why it isn't. Is that
>>> something you might be able to help me with?
>>
>> Happy to give it a go, just let me know what you need
> 
> Thanks. A first step would probably be to enable debug output with -d and see
> what it reports in terms of the files being searched for.

I didn't see much more info here:
$ bitbake-diffsigs -d -t gcc-cross-arm compile
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 40390, PID: 10044
DEBUG: Signature file (previous): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_compile.sigdata.b0eae7e91833efd5e7eceaedbc59983e
DEBUG: Signature file (latest): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_compile.sigdata.84ca7d1957f1644215d99765ece65d9e
Hash for dependent task gcc/gcc-cross_6.3.bb.do_configure changed from d65095d4b9aff89f6990bd17c0ab210b to 
1378c7a11d96284c3d53894d6434b590
Unable to find matching sigdata for /local/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-cross_6.3.bb.do_configure 
with hashes d65095d4b9aff89f6990bd17c0ab210b or 1378c7a11d96284c3d53894d6434b590
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 40390, PID: 10044
NOTE: Terminating PRServer...
gthomas@europa:p0382_2016-01-13$ find tmp/stamps -name "*d65095d4b9aff89f6990bd17c0ab210b*" -or -name 
"*1378c7a11d96284c3d53894d6434b590*"
tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_configure.sigdata.1378c7a11d96284c3d53894d6434b590
tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_configure.sigdata.d65095d4b9aff89f6990bd17c0ab210b
tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_configure.1378c7a11d96284c3d53894d6434b590

I've seen very nice back-trail type output where the program recursively lists
the tasks with changes until it finally settles, so I gave that a go manually:

$ bitbake-diffsigs -d -d -t gcc-cross-arm configure
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 34193, PID: 10104
DEBUG: Signature file (previous): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_configure.sigdata.d65095d4b9aff89f6990bd17c0ab210b
DEBUG: Signature file (latest): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_configure.sigdata.1378c7a11d96284c3d53894d6434b590
Hash for dependent task gcc/gcc-cross_6.3.bb.do_prepare_recipe_sysroot changed from 150112323551011e0e87f99f47ad79c4 to 
c45aaef0cb01f463f9a1b30bd815cd28
Unable to find matching sigdata for 
/local/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-cross_6.3.bb.do_prepare_recipe_sysroot with hashes 
150112323551011e0e87f99f47ad79c4 or c45aaef0cb01f463f9a1b30bd815cd28
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 34193, PID: 10104
NOTE: Terminating PRServer...

gthomas@europa:p0382_2016-01-13$ bitbake-diffsigs -d -d -t binutils-cross-arm populate_sysroot
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 36611, PID: 10208
DEBUG: Signature file (previous): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_populate_sysroot.sigdata.60dbc717c23db51fc4322fe94cf60913
DEBUG: Signature file (latest): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_populate_sysroot.sigdata.2ed367f21ff6b6f36b05dde1983bc81d
Hash for dependent task binutils/binutils-cross_2.28.bb.do_install changed from 160c34a18c757a239c78889e6b4125b7 to 
271845fc54aeec43d79afaf24cf0ebb4
Unable to find matching sigdata for 
/local/poky-cutting-edge/meta/recipes-devtools/binutils/binutils-cross_2.28.bb.do_install with hashes 
160c34a18c757a239c78889e6b4125b7 or 271845fc54aeec43d79afaf24cf0ebb4
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 36611, PID: 10208
NOTE: Terminating PRServer...
gthomas@europa:p0382_2016-01-13$ bitbake-diffsigs -d -d -t binutils-cross-arm install
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 37882, PID: 10221
DEBUG: Signature file (previous): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_install.sigdata.160c34a18c757a239c78889e6b4125b7
DEBUG: Signature file (latest): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_install.sigdata.271845fc54aeec43d79afaf24cf0ebb4
Hash for dependent task binutils/binutils-cross_2.28.bb.do_compile changed from 77a651f90acba2ae988ef9d906fce3b6 to 
0f0a9186b50974acc0dde8674141aeda
Unable to find matching sigdata for 
/local/poky-cutting-edge/meta/recipes-devtools/binutils/binutils-cross_2.28.bb.do_compile with hashes 
77a651f90acba2ae988ef9d906fce3b6 or 0f0a9186b50974acc0dde8674141aeda
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 37882, PID: 10221
NOTE: Terminating PRServer...
gthomas@europa:p0382_2016-01-13$ bitbake-diffsigs -d -d -t binutils-cross-arm compile
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 41341, PID: 10234
DEBUG: Signature file (previous): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_compile.sigdata.77a651f90acba2ae988ef9d906fce3b6
DEBUG: Signature file (latest): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_compile.sigdata.0f0a9186b50974acc0dde8674141aeda
Hash for dependent task binutils/binutils-cross_2.28.bb.do_configure changed from 836554b225cdcb2fe809154e5335f8d7 to 
89d1eff220293f794d96c2b6ad923fbb
Unable to find matching sigdata for 
/local/poky-cutting-edge/meta/recipes-devtools/binutils/binutils-cross_2.28.bb.do_configure with hashes 
836554b225cdcb2fe809154e5335f8d7 or 89d1eff220293f794d96c2b6ad923fbb
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 41341, PID: 10234
NOTE: Terminating PRServer...
gthomas@europa:p0382_2016-01-13$ bitbake-diffsigs -d -d -t binutils-cross-arm configure
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 34817, PID: 10246
gthomas@europa:p0382_2016-01-13$ bitbake-diffsigs -d -d -t binutils-cross-arm configure
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 34817, PID: 10246
DEBUG: Signature file (previous): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_configure.sigdata.836554b225cdcb2fe809154e5335f8d7
DEBUG: Signature file (latest): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_configure.sigdata.89d1eff220293f794d96c2b6ad923fbb
Hash for dependent task binutils/binutils-cross_2.28.bb.do_prepare_recipe_sysroot changed from 
c7aeed8c1bdfcf29bca91407e42bd4f9 to e31b5d78ee20994b02e6405b8f6e9e55
Unable to find matching sigdata for 
/local/poky-cutting-edge/meta/recipes-devtools/binutils/binutils-cross_2.28.bb.do_prepare_recipe_sysroot with hashes 
c7aeed8c1bdfcf29bca91407e42bd4f9 or e31b5d78ee20994b02e6405b8f6e9e55
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 34817, PID: 10246
NOTE: Terminating PRServer...
gthomas@europa:p0382_2016-01-13$ bitbake-diffsigs -d -d -t binutils-cross-arm prepare_recipe_sysroot
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 43542, PID: 10261
DEBUG: Signature file (previous): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_prepare_recipe_sysroot.sigdata.c7aeed8c1bdfcf29bca91407e42bd4f9
DEBUG: Signature file (latest): 
/build/p0382_2016-01-13/tmp/stamps/x86_64-linux/binutils-cross-arm/2.28-r0.do_prepare_recipe_sysroot.sigdata.e31b5d78ee20994b02e6405b8f6e9e55
Hash for dependent task flex/flex_2.6.0.bb.do_populate_sysroot:virtual:native changed from 
803870aa199689fc7ebe4bf052340b08 to 8671f84da160642ed9f3dc73b4c4cf25
   Hash for dependent task flex/flex_2.6.0.bb.do_install:virtual:native changed from 15021a55c6f3b406fe0ec8c445ecf4bb to 
d2f9d5f6b8cf3bc8bfa0afc11f604b26
     Hash for dependent task flex/flex_2.6.0.bb.do_compile:virtual:native changed from 14ab5d1a366945bd300c4251adb40780 
to 0270e3d57148c7c6d5ce6b9381d3c5ef
       Hash for dependent task flex/flex_2.6.0.bb.do_configure:virtual:native changed from 
03ca5f9dec1c8c0ed67d726e8459393d to a5bceb4ecfa3d0b1dd8b7d0e616c5386
         Hash for dependent task flex/flex_2.6.0.bb.do_prepare_recipe_sysroot:virtual:native changed from 
4b53b86cc1d850c3141b20656b0e6cee to 5db6825e2f7b2149bc14e863b90b6494
           Hash for dependent task libtool/libtool-native_2.4.6.bb.do_populate_sysroot changed from 
534965cfa73951508afd571c4950acc6 to 9e460d34c50195d38c5e00c9f6f31d68
             Hash for dependent task libtool/libtool-native_2.4.6.bb.do_install changed from 
c69723aaa815843eb30edc9fc5339e7b to 09ce0c427b39e469d84a6400b1e1422e
               Hash for dependent task libtool/libtool-native_2.4.6.bb.do_compile changed from 
0d445434af23d62d309f4263f54a54a5 to 68e46b072d25ff4ae3b976367139d29b
                 Hash for dependent task libtool/libtool-native_2.4.6.bb.do_configure changed from 
06a03ebb367ea7c1b9f815249ec063da to d5d9f9278028f743d5a50bcaad6f163b
                   Hash for dependent task libtool/libtool-native_2.4.6.bb.do_prepare_recipe_sysroot changed from 
43df7e3c672bf326d48358c87f0f0449 to ab843480e8e0e6e79007569ba0339fd7
                     Hash for dependent task automake/automake_1.15.bb.do_populate_sysroot:virtual:native changed from 
0a44651cba1faf36d7bc4d477b6a5c7a to 0494b5a86330f82e7020055f1a934222
                       Hash for dependent task automake/automake_1.15.bb.do_install:virtual:native changed from 
2a2bdcb315ecee2e79e462c74a6c8e9a to efcea8dc841eaf9cec211c02f138fa79
                         Hash for dependent task automake/automake_1.15.bb.do_compile:virtual:native changed from 
7b100576aa812338aea2e2eca0f1ae75 to 8f8a135547d6a80d109af8450294f3a6
                           Hash for dependent task automake/automake_1.15.bb.do_configure:virtual:native changed from 
cc27a4ecd28d1a46f74da0b445657e81 to 9e8a7cfd506133a84d67a9bff3b9c9c1
                             Hash for dependent task automake/automake_1.15.bb.do_prepare_recipe_sysroot:virtual:native 
changed from 67db0a1d198eee4e3f605cc465080778 to 603ac9ef5e75181eb75859c1977cc4cc
                               Hash for dependent task automake/automake_1.15.bb.do_fetch:virtual:native changed from 
7c7f1a657800704d2e749c8c6079ef92 to ab02e18b2632fbc5606746e88021a5cc
                                 basehash changed from c2b3c6b61901e097efd83adeb0f5ead8 to 0f08750b29690602e317e0d9b15bf85d
                                 Variable SRC_URI value changed:
                                 "${GNU_MIRROR}/automake/automake-${PV}.tar.gz file://python-libdir.patch 
file://buildtest.patch             file://performance.patch             file://new_rt_path_for_test-driver.patch 
     file://automake-replace-w-option-in-shebangs-with-modern-use-warnings.patch 
{+file://0001-automake-port-to-Perl-5.22-and-later.patch+}  {+           +}"
                                 Dependency on checksum of file 0001-automake-port-to-Perl-5.22-and-later.patch was added
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 43542, PID: 10261
NOTE: Terminating PRServer...

So, it finally got to the answer I was looking for - a change in automake (which seems to ripple everywhere)

Why was it able to back up at some point, but it stopped short before?


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

