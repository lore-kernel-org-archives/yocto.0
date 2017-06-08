Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2166CE00BD2; Wed,  7 Jun 2017 23:41:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 486AFE00B3D
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 23:41:38 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Thu, 8 Jun 2017 16:41:28 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 8 Jun 2017 16:41:26 +1000
Thread-Topic: dllmap config for a Mono app
Thread-Index: AdLgIiHYokjLGqGTRNKS/LK5/9xW1g==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFC@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23118.004
x-tm-as-result: No--6.557800-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: dllmap config for a Mono app
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
X-List-Received-Date: Thu, 08 Jun 2017 06:41:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a Mono app that uses DllImport to load some functions from libraries=
. The app can't find the libraries unless I create a Mono config file conta=
ining dllmap lines to map the library's plain "DLL" name (e.g. "foo") to th=
e real name of the .so file (e.g. "libfoo.so.4").

* What would be a good way in the .bb recipe to automatically create the re=
quired Mono config file? It would need to find the "real" names of the libr=
ary files from the library(s) build output. So it would DEPENDS on the libr=
ary(s).

* Is it better to create a local config file, or write it into /etc/mono/co=
nfig? (My Mono app has the DllImports in a compiled DLL, and so far I've fo=
und that I need to create a local MyDll.dll.config file; making a MyApp.exe=
.config file doesn't work.)

* Alternatively, the Mono app can find the libraries if plain libfoo.so sym=
bolic link to libfoo.so.4 exists in the rootfs. But this symbolic link norm=
ally is only in the libfoo-dev package, not the libfoo package. Is there so=
me reasonable way to create and install the libfoo.so symbolic links on the=
 rootfs?

--=20
Craig McQueen


