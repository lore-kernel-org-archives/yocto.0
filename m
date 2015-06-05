Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63346E009F6; Fri,  5 Jun 2015 09:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
Received: from mail-vn0-f53.google.com (mail-vn0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29C1DE009EA
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 09:05:46 -0700 (PDT)
Received: by vnbg62 with SMTP id g62so9627595vnb.4
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 09:05:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=pXNm/Eq8P+bzvixEzVeQkH2xFQuq5x+VRUq3dmHBBVk=;
	b=WHoYWzOgPxDWX3fLBCykdnmgLl6YPM1X7EX0L90YlzblkERKfYzpwdB84nIU0Hd6gT
	CQCF4cxU5n2LOMTk9nOk8RYz6aDoiNVnGTdm2m2stla5ywa3hpdyyrGP8ARGWhdcxu+p
	QLPFET3poDSn/mqOhvsdtD46hesl9Qa9lXU9YFv2hcV1gmH58NGYP1BVAgbp+9106nRM
	OHAnn3ImXOwUCinFs+8XYvAisMTesgklYOOgwK8Ncs6foN3gyy/ySukUVqQiVNtOiJCx
	8uVa5c9oYuoYySNcqMSQvEoc8yFAt5m/Gh6tbwM4ArKJ60r75NGTXr+o3tPG/VW0T+ac
	KKpw==
X-Gm-Message-State: ALoCoQkuyssPXSG+pgHW0nd7FnMt5/UWMSoeC1TV3vKxzGxizrTCtsZjJNeNpkvEOtBVF/6Wk0G7
MIME-Version: 1.0
X-Received: by 10.52.190.131 with SMTP id gq3mr7401318vdc.70.1433520345599;
	Fri, 05 Jun 2015 09:05:45 -0700 (PDT)
Received: by 10.52.233.105 with HTTP; Fri, 5 Jun 2015 09:05:45 -0700 (PDT)
Date: Fri, 5 Jun 2015 17:05:45 +0100
Message-ID: <CAPhnLPArRnALG8mbN0v8agXVyyNAN8SOWerX10dKzoG61CPANg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto-announce@yoctoproject.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] meta-intel 3.0 for Yocto Project "fido" 1.8 now available
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
X-List-Received-Date: Fri, 05 Jun 2015 16:05:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

All,

The meta-intel 3.0 layer for the Yocto Projects 1.8 "fido" release and
board support packages are now available for download.

Elizabeth Flanagan
Intel Corp.

meta-intel
-----------------------
repo: git://git.yoctoproject.org/meta-intel
branch: fido
tag: 3.0-fido-1.8
hash: f9738ec19d3b2864c0bd71b9bb3418d16e922a12
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/meta-i=
ntel-3.0-fido-1.8.tar.bz2
md5sum: fb7db908cb06d77a913650f304fe7967

BSP downloads
-----------------------

Intel=C2=AE Common Core BSP (intel-core2-32 and intel-corei7-64):
    https://www.yoctoproject.org/downloads/bsps/fido18/intel-core2-32
    https://www.yoctoproject.org/downloads/bsps/fido18/intel-corei7-64
Downloads:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/machines/int=
el-corei7-64/intel-corei7-64-3.0-fido-1.8.tar.bz2
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/machines/int=
el-core2-32/intel-core2-32-3.0-fido-1.8.tar.bz2
md5sums:
    3119280f090644811b4f0b32e5ab2379  intel-corei7-64-3.0-fido-1.8.tar.bz2
    ac332422a8ca155c20db84e32db2fad8  intel-core2-32-3.0-fido-1.8.tar.bz2

Intel=C2=AE Xeon=C2=AE C5500/C3500 Series Processors With Intel 3420 PCH
Chipset(Jasper Forest):
https://www.yoctoproject.org/downloads/bsps/fido18/jasper-forest
Downloads:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/machines/jas=
perforest/jasperforest-3.0-fido-1.8.tar.bz2
md5sums:
    947e3ab9b40a229e3325db46938fed27  jasperforest-3.0-fido-1.8.tar.bz2

Next Unit of Computing Kit DC3217IYE (nuc):
    https://www.yoctoproject.org/downloads/bsps/fido18/nuc
Downloads:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/machines/nuc=
/nuc-3.0-fido-1.8.tar.bz2
md5sums:
    21a1151d96f8dc77a7b9ca2e02718a41  nuc-3.0-fido-1.8.tar.bz2

Intel=C2=AE 2nd Generation Core=E2=84=A2 Platforms: Core i3, i5, i7 (Sandy =
Bridge):
    https://www.yoctoproject.org/downloads/bsps/fido18/sugar-bay
Downloads:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/machines/sug=
arbay/sugarbay-3.0-fido-1.8.tar.bz2
md5sums:
    ede6349fa6f9a068f3e67bac423ba1e6  sugarbay-3.0-fido-1.8.tar.bz2

Features:
-----------------------
- Linux Kernel Updated to 3.19.5 for intel-core2 and intel-corei7
- LTS Kernel Updated to 3.14.39
- meta-isg/romley/mohonpeak updated to use 3.14 LTS Kernel
- xf86-video-mga Updated to 1.6.4
- intel-gpu-tools: Upgrade to 1.9
- gstreamer-vaapi: Upgrade to 0.5.9
- intel-gpu-tools: Update to 1.8
- libva-intel-driver: Update to 1.4.1
- libva: Update to 1.4.1

--=20
Elizabeth Flanagan
Intel OTC
Build and Release

