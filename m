Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6679BE00A7B; Wed,  5 Oct 2016 09:30:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C49CE00951
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 09:30:21 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id CE2D6C025E; Wed,  5 Oct 2016 12:30:20 -0400 (EDT)
Date: Wed, 5 Oct 2016 12:30:20 -0400
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Message-ID: <20161005163020.GC2084@csclub.uwaterloo.ca>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
	<894BCA8B-9CE0-4B9E-9538-ED1B710627E8@cisco.com>
MIME-Version: 1.0
In-Reply-To: <894BCA8B-9CE0-4B9E-9538-ED1B710627E8@cisco.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Wed, 05 Oct 2016 16:30:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Oct 05, 2016 at 04:06:25PM +0000, Dinh Nguyen (dinhn) wrote:
> Many thanks Paul. Your help is greatly appreciated.
> 
> 1. >>> Like the other responder I would suggest you not set PACKAGES
> 
> Yes, I did not set the PACKAGES, so -dev, -dbg and main packages were built as shown below:
> 
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ find tmp/deploy | grep c-mlibtmp/deploy/ipk/core2-64/c-mlib-dbg_1.1-r0_core2-64.ipk
> tmp/deploy/ipk/core2-64/c-mlib-dev_1.1-r0_core2-64.ipk
> tmp/deploy/ipk/core2-64/c-mlib_1.1-r0_core2-64.ipk
> tmp/deploy/licenses/c-mlib
> 
> 2. >>> FILES_${PN}-dev = "${includedir}”
> 
> I added that to .bb as you suggested so .so file doesn't end up in the ${PN}-dev
> Package — No longer see the error mentioned in previous mail. Thx
> 
> 3. >>> This is what I suspected would happen - these files would normally be part of
> the ${PN}-dbg package, but since you've removed that from PACKAGES, they are 
> ending up unpackaged and that is not allowed.
> 
> Did you mean the "install -m 0644 xxx yyy” to remove those files from the PACKAGES? How do I copy .so and binaries from my target to the libdir or bindir?
> 
> After changing the .bb to remove the PACKAGES setting and FILES_${PN}-dev = "${includedir}”
> For the very first time, packages were built find, image were created under image directory and c-mlib source is still in the yp workspace as shown below:
> 
> A.Packages were built
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ find tmp/deploy | grep c-mlib
> tmp/deploy/ipk/core2-64/c-mlib-dbg_1.1-r0_core2-64.ipk
> tmp/deploy/ipk/core2-64/c-mlib-dev_1.1-r0_core2-64.ipk
> tmp/deploy/ipk/core2-64/c-mlib_1.1-r0_core2-64.ipk
> tmp/deploy/licenses/c-mlib
> 
> B. Source files and the c-mlib git directory still have all the sources (e.g just grep the mlib_api.c) 
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ find . -name "mlib_api.c"
> ./tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/git/src/mlib_api.c
> ./tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/packages-split/c-mlib-dbg/usr/src/debug/c-mlib/1.1-r0/git/src/mlib_api.c
> ./tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/package/usr/src/debug/c-mlib/1.1-r0/git/src/mlib_api.c
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ 
> 
> C. Image was built as well including binaries and libmlib.so
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/bin$ ls -ltr
> total 1424
> -rw-r--r-- 1 dinhn dinhn 171701 Oct  5 01:17 datamodel_cache
> -rw-r--r-- 1 dinhn dinhn 187434 Oct  5 01:17 invoke
> -rw-r--r-- 1 dinhn dinhn 184961 Oct  5 01:17 invoke_b
> -rw-r--r-- 1 dinhn dinhn 171701 Oct  5 01:17 protocol_infra
> -rw-r--r-- 1 dinhn dinhn 191362 Oct  5 01:17 publisher
> -rw-r--r-- 1 dinhn dinhn 187084 Oct  5 01:17 rpc-register
> -rw-r--r-- 1 dinhn dinhn 179648 Oct  5 01:17 service
> -rw-r--r-- 1 dinhn dinhn 174518 Oct  5 01:17 subscriber
> 
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/bin$ cd ../lib
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/image/usr/lib$ ls -ltr
> total 856
> -rw-r--r-- 3 dinhn dinhn 872657 Oct  5 01:17 libmlib.so
> 
> So it is all good for the first time, but thereafter that, if I do clean “bitbake -c clean c-mlib” and “bitbake c-mlib” again.
> All packages were build successful, but all data under c-mlib got was gone. Nothing there including .c/h files, image directory etc...
> 
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/git$ ls -ltr
> total 0
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp/tmp/work/core2-64-poky-linux/c-mlib/1.1-r0/git$ 
> 
> Please give me an idea why how to solve this? Sorry for a long email ;-))

Are the files present in the image/packages?  Maybe it is just the
bitbake cache skipping doing work it already did last time.

-- 
Len Sorensen

