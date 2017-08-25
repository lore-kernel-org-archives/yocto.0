Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DF29E00B87; Thu, 24 Aug 2017 18:47:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7082E009A4
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 18:47:56 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Fri, 25 Aug 2017 11:47:53 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 25 Aug 2017 11:47:51 +1000
Thread-Topic: Python module and build_ext args
Thread-Index: AdMdQKxWZvDcB4mqSD6bfq24MXjHxAAAtxYA
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F0864183@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F086417D@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F086417D@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23278.007
x-tm-as-result: No--4.978700-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: Python module and build_ext args
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
X-List-Received-Date: Fri, 25 Aug 2017 01:47:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I wrote:
> I'm trying to make a recipe for python3-uvloop, using setuptools3.
>=20
> The Python 3 uvloop module depends on libuv. It bundles a version of libu=
v,
> and setup.py tries to build it, but it doesn't work well for cross-compil=
ation.
> However, it also provides a build_ext parameter "--use-system-libuv", whi=
ch
> seems to work when I try running it manually in devshell. (I have made a
> suitable recipe for libuv and added libuv to DEPENDS.)
>=20
> How can I specify the "--use-system-libuv" parameter for build_ext in the
> python3-uvloop recipe? I see a reference to DISTUTILS_BUILD_EXT_ARGS,
> but it doesn't seem to be functional.


I see DISTUTILS_BUILD_EXT_ARGS was submitted in this patch:
https://patchwork.openembedded.org/patch/66071/

However, in the Yocto poky repository, I see commit 0221af0f4ee9e8bfb879684=
1bdf806e38bc600c6 which appears to be a broken version of the above patch w=
ith the separate build_ext step not actually executed with the DISTUTILS_BU=
ILD_EXT_ARGS parameters.

--=20
Craig McQueen


