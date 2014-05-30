Return-Path: <hui.qing.chong@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B96EE00BBC; Fri, 30 May 2014 02:41:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81499E00A44
	for <yocto@yoctoproject.org>; Fri, 30 May 2014 02:40:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 May 2014 02:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,940,1392192000"; d="scan'208";a="438939019"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by azsmga001.ch.intel.com with ESMTP; 30 May 2014 02:40:32 -0700
Received: from pgsmsx108.gar.corp.intel.com (10.221.44.103) by
	PGSMSX103.gar.corp.intel.com (10.221.44.82) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 30 May 2014 17:39:46 +0800
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.123]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.69]) with mapi id
	14.03.0123.003; Fri, 30 May 2014 17:39:46 +0800
From: "Chong, Hui Qing" <hui.qing.chong@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Repo Issue] x264: Unable to find revision 
Thread-Index: Ac976iPX7mQHDD8nRnuAwLnZW5cePg==
Date: Fri, 30 May 2014 09:39:46 +0000
Message-ID: <4D2B74E594FF4C4A97424079247E473A17DC8258@PGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "x264-devel@videolan.org" <x264-devel@videolan.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: [Repo Issue] x264: Unable to find revision
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
X-List-Received-Date: Fri, 30 May 2014 09:41:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, I am working on Yocto Project 1.6, Daisy branch. Previously I am able t=
o build the image successfully, but now I have errors as follow:

ERROR: Fetcher failure: Unable to find revision 585324fee380109acd9986388f8=
57f413a60b896 in branch master even from upstream
ERROR: Function failed: Fetcher failure for URL: 'git://git.videolan.org/x2=
64.git'. Unable to fetch URL from any source.

In the x264_git.bb file, the SRC_URI and SRCREV are:

SRC_URI =3D "git://git.videolan.org/x264.git \
	        file://don-t-default-to-cortex-a9-with-neon.patch \
	        "
SRCREV =3D "585324fee380109acd9986388f857f413a60b896"

Does anyone notice this and is there any solution for this error? Thank you=
.

Regards,
Hui Qing


