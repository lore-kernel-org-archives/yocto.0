Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96DF9E00E0D; Tue, 16 Aug 2016 23:29:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0700]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Aug 2016 23:29:41 PDT
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00A41E00E05
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 23:29:41 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Wed, 17 Aug 2016 16:28:31 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 17 Aug 2016 16:28:29 +1000
Thread-Topic: Package mono-libs-4.5 size increase in Mono version 4.4.x
Thread-Index: AdH4T24IZo0Q1CXGRzeCiDO2PFVFdQ==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A4022D2BE1F204@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.000.1202-22518.005
x-tm-as-result: No--40.033000-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Package mono-libs-4.5 size increase in Mono version 4.4.x
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
X-List-Received-Date: Wed, 17 Aug 2016 06:29:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've just had to upgrade from Mono 4.2.x to Mono 4.4.x, to get a fix for SM=
TP SSL/TLS.

I'm using the mono-libs-4.5 package. I see that the size of it has increase=
d quite a lot (several MB) due to the upgrade. It looks as though it's now =
putting a bunch of files in /usr/lib/mono/4.5-api in addition to the old /u=
sr/lib/mono/4.5.

I can see this mentioned in the Mono 4.4.0 release notes:
http://www.mono-project.com/docs/about-mono/releases/4.4.0/

But the rationale is not entirely clear to me. Is it possible to cut down t=
he Yocto image size by removing one of /usr/lib/mono/4.5-api and /usr/lib/m=
ono/4.5, or some other refactoring?

--=20
Craig McQueen


