Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA313E0053F; Fri, 11 Jul 2014 17:33:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45602E003C1
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 17:33:17 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id id10so3481035vcb.2
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 17:33:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=7D9FsWyv8kUjGRrKu+6P7ZXRuhVoM4hz3mmJBcmEFHs=;
	b=jqwXm+F5TNANmpKIoBZREFyccs1hp0amjveEA+rvL8xP/qwM7mgByFtbrBMWoMEwS4
	yTOjx3HYeq0Is5wyw9Wf2PitcyxWioUGlSFp/0zweDznRU1vTuW1bclYZuV5oO3/TFt6
	4QvTADmUFd7GfGH/16ZMWCQWp5l/fMVKqVuDux1tdX6wQMBV3geObTrayhltO14dCHrb
	3DPLGqC0C1gQFUCBZau4i1iXiE2YMlT15+973ziJjrUJ+NyyZwQcnEu4Bbc/iextUpqf
	vrVWduAHihjv9ULPlKx8nf8W1x34K3seGsAx5XfuZNHQ8B7cj32wGRe1KrLTWYdOaNQu
	L5vQ==
X-Gm-Message-State: ALoCoQkgN0DK1iVzQz/wV1KS/JTsMflJ3ZLlAjGYxVPV0Z3DhtZPuy6fgX8g/MLlVjj5ZaSYqMpQ
MIME-Version: 1.0
X-Received: by 10.58.207.84 with SMTP id lu20mr2373977vec.9.1405125196898;
	Fri, 11 Jul 2014 17:33:16 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Fri, 11 Jul 2014 17:33:16 -0700 (PDT)
Date: Fri, 11 Jul 2014 17:33:16 -0700
Message-ID: <CAPhnLPD1ZkYzCOA7gL-aaySUOVvJjC=_co07irgX5Y4kyhAg+Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto-announce@yoctoproject.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] Intel(R) meta-intel 1.0 BSPs for Yocto Project "daisy" 1.6.1 Released
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
X-List-Received-Date: Sat, 12 Jul 2014 00:33:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

All,

The meta-intel 1.0 layer for the Yocto Projects 1.6.1 "daisy" release
and board support packages are now available for download.

meta-intel
--------------
repo: git://git.yoctoproject.org/meta-intel
branch: daisy
tag: 1.0-daisy-1.6.1
hash: 50d1afd52a612dbf9a190bf869c37253864886cc
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/meta=
-intel-1.0-daisy-1.6.1.tar.bz
md5sum: 32c6a5293cc499e190a8cc6c0235126b


BSP downloads
-----------------------

Intel=C2=AE Common Core BSP (intel-core2-32 and intel-corei7-64):
https://www.yoctoproject.org/download/intel%C2%AE-common-core-bsp-intel-cor=
e2-32-and-intel-corei7-64

Intel=C2=AE Atom=E2=84=A2 E640T Processor with Intel EG20T Controller Hub
Development Kit (Queens Bay) with IEMGD or Open Source Graphics (Fish
River Island 2):
https://www.yoctoproject.org/download/intel%C2%AE-atom%E2%84%A2-e640t-proce=
ssor-intel-eg20t-controller-hub-development-kit-queens-bay-iemgd-or

Intel=C2=AE Xeon=C2=AE C5500/C3500 Series Processors With Intel 3420 PCH Ch=
ipset
(Jasper Forest):
https://www.yoctoproject.org/download/intel%C2%AE-xeon%C2%AE-c5500c3500-ser=
ies-processors-intel-3420-pch-chipset-jasper-forest-1

Next Unit of Computing Kit DC3217IYE (nuc):
https://www.yoctoproject.org/download/next-unit-computing-kit-dc3217iye-nuc=
-1

Intel=C2=AE 2nd Generation Core=E2=84=A2 Platforms: Core i3, i5, i7 (Sandy =
Bridge):
https://www.yoctoproject.org/download/intel%C2%AE-2nd-generation-core%E2%84=
%A2-platforms-core-i3-i5-i7-sandy-bridge-1

Intel=C2=AE Xeon=C2=AE processor E5-2600 and E5-2400 families with Intel=C2=
=AE
C604/C602-J Chipset (Romley-EP/EN Platform):
https://www.yoctoproject.org/download/intel%C2%AE-xeon%C2%AE-processor-e5-2=
600-and-e5-2400-families-intel%C2%AE-c604c602-j-chipset-romley-epen

Intel=C2=AE Atom=C2=AE Processor E3800 with Open Source Graphics (Valley Is=
land):
https://www.yoctoproject.org/download/intel%C2%AE-atom%C2%AE-processor-e380=
0-open-source-graphics-valley-island-0

Intel=C2=AE Atom=E2=84=A2 Z5xx Processor With Intel US15W Controller Hub (e=
Menlow):
https://www.yoctoproject.org/download/intel%C2%AE-atom%E2%84%A2-z5xx-proces=
sor-intel-us15w-controller-hub-emenlow-1

Intel=C2=AE Xeon=C2=AE Processor E5-2600 and E5-2400 Series with Intel=C2=
=AE
Communications Chipset 89xx Series (Crystal Forest/Highland Forest)
https://www.yoctoproject.org/download/intel%C2%AE-xeon%C2%AE-processor-e5-2=
600-and-e5-2400-series-intel%C2%AE-communications-chipset-89xx-seri-0

Intel=C2=AE Atom=E2=84=A2 E6xx Processor With Intel EG20T Controller Hub
Development Kit (Crown Bay):
https://www.yoctoproject.org/download/intel%C2%AE-atom%E2%84%A2-e6xx-proces=
sor-intel-eg20t-controller-hub-development-kit-crown-bay-1

Intel=C2=AE Atom=C2=AE Processor C2000 (Mohon Peak):
https://www.yoctoproject.org/download/intel%C2%AE-atom%C2%AE-processor-c200=
0-mohon-peak-0

--=20
Elizabeth Flanagan
Intel Corp.

