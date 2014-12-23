Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C5B9E00911; Tue, 23 Dec 2014 00:22:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19716E007C1
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 00:21:57 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 23 Dec 2014 00:21:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="432482603"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by FMSMGA003.fm.intel.com with ESMTP; 23 Dec 2014 00:10:26 -0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.62]) by
	PGSMSX106.gar.corp.intel.com ([169.254.9.181]) with mapi id
	14.03.0195.001; Tue, 23 Dec 2014 16:21:36 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Building clang with Yocto
Thread-Index: AQHQEw7mRsY0MXmXQESP6lU4D7T5NZyGdePQgAAVi/CAAGJQAIABNS4AgBLk3LD///72AIAB4a1Q
Date: Tue, 23 Dec 2014 08:21:35 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A25190B@PGSMSX101.gar.corp.intel.com>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25021D@PGSMSX101.gar.corp.intel.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A2517AC@PGSMSX101.gar.corp.intel.com>
	<3004533.IQ76YFNeID@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3004533.IQ76YFNeID@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: 'Jim Rafert' <jimr@spectralogic.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building clang with Yocto
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
X-List-Received-Date: Tue, 23 Dec 2014 08:22:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I tried ldd-ing my binary on my build machine since it doesn't work on my i=
mage and it was built on glibc indeed. Since yocto is based on ulibc so it =
won't work even my target platform is roughly the same as my build platform=
. I wonder what options should I specify to get llvm to build against the Y=
octo's libraries rather than my build machine's.

As I said in IRC yesterday I found https://lists.yoctoproject.org/pipermail=
/yocto/2014-June/020358.html which should suit my needs but I get stupid er=
rors on uint32_t:

/work/corei7-64-poky-linux/llvm/3.3-r0/llvm
-3.3.src/include/llvm/Support/BranchProbability.h:27:3: error: 'uint32_t' d=
oes not name a type
   uint32_t N;

I tried adding #include <cstdint> to that header but no luck.

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Monday, December 22, 2014 7:22 PM
To: Yu, Chan KitX
Cc: 'Liviu Gheorghisan'; 'Jim Rafert'; yocto@yoctoproject.org
Subject: Re: [yocto] Building clang with Yocto

Hi Chan Kit,

On Monday 22 December 2014 03:33:17 Yu, Chan KitX wrote:
> Here's an update FYI. I have managed to get clang sort of working. It=20
> compiles my sample code but I can't get the binary to execute. ./a.out=20
> simply returns:
>=20
>=20
> ./a.out: No such file or directory.
>=20
> I'm sure that a.out exists and weirdly I could get the same binary=20
> file to run on my build machine. So I guess it could be because of=20
> some architecture difference but both target and build platform are=20
> quite the same (Intel x64 in build machine and BayleyBay for target=20
> platform) I used
> valleyisland-64 for the target platform so both should be able to=20
> execute
> 64 bit binaries. I suppose I can specify some other configuration=20
> options there but I have no idea what to specify the configure=20
> parameter --target=3D<TARGET> . x64 did not do any good. So any idea?

That sounds a bit like the binary has been linked to libraries in the host =
libdir rather than the correct one for the target. You may be able to verif=
y that using ldd.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

