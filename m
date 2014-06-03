Return-Path: <hock.leong.kweh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AD5DE00AFD; Mon,  2 Jun 2014 23:27:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62748E00985;
	Mon,  2 Jun 2014 23:27:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Jun 2014 23:27:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,963,1392192000"; d="scan'208";a="550677217"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by orsmga002.jf.intel.com with ESMTP; 02 Jun 2014 23:27:17 -0700
Received: from kmsmsx151.gar.corp.intel.com (172.21.73.86) by
	PGSMSX103.gar.corp.intel.com (10.221.44.82) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 3 Jun 2014 14:25:42 +0800
Received: from pgsmsx102.gar.corp.intel.com ([169.254.6.101]) by
	KMSMSX151.gar.corp.intel.com ([169.254.10.227]) with mapi id
	14.03.0123.003; Tue, 3 Jun 2014 14:25:42 +0800
From: "Kweh, Hock Leong" <hock.leong.kweh@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>
Thread-Topic: [yocto] [OE-core] [Repo Issue] x264: Unable to find revision
Thread-Index: Ac9768FBpew9lhsRQAKr3WglFQX35v//jc2A//nQfuD/807WIA==
Date: Tue, 3 Jun 2014 06:25:41 +0000
Message-ID: <F54AEECA5E2B9541821D670476DAE19C2B6AD91A@PGSMSX102.gar.corp.intel.com>
References: <4D2B74E594FF4C4A97424079247E473A17DC8288@PGSMSX104.gar.corp.intel.com>
	<1678042.dqjeM3hNZI@peggleto-mobl5.ger.corp.intel.com>
	<AF233D1473C1364ABD51D28909A1B1B7241489D1@pgsmsx105.gar.corp.intel.com>
In-Reply-To: <AF233D1473C1364ABD51D28909A1B1B7241489D1@pgsmsx105.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 06 Jun 2014 11:32:24 -0700
Subject: Re: [OE-core] [Repo Issue] x264: Unable to find revision
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
X-List-Received-Date: Tue, 03 Jun 2014 06:27:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, understand the patch below is to fix the x264 yocto build issue but it =
is for "Daisy" branch. How about the "Dylan" branch?=20
Can we use the same commit id on the SRCREV?


-----Original Message-----
From: Ong, Boon Leong=20
Sent: Tuesday, June 03, 2014 9:25 AM
To: Tan, Raymond; Chew, Kean Ho; Kweh, Hock Leong; Chen, Alvin
Subject: FW: [yocto] [OE-core] [Repo Issue] x264: Unable to find revision

Pleae take note on this patch that is reported on x264 issue when you build=
.
The issue is related to the remote git has be rebased/changed that cause co=
mmit id not found by the YP metadata script.=20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Friday, May 30, 2014 6:56 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] [OE-core] [Repo Issue] x264: Unable to find revision

Hi Hui Qing,

On Friday 30 May 2014 09:44:31 Chong, Hui Qing wrote:
> Hi, I am working on Yocto Project 1.6, Daisy branch. Previously I am=20
> able to build the image successfully, but now I have errors as follow:
>=20
> ERROR: Fetcher failure: Unable to find revision
> 585324fee380109acd9986388f857f413a60b896 in branch master even from=20
> upstream ERROR: Function failed: Fetcher failure for URL:
> 'git://git.videolan.org/x264.git'. Unable to fetch URL from any source.
>=20
> In the x264_git.bb file, the SRC_URI and SRCREV are:
>=20
> SRC_URI =3D "git://git.videolan.org/x264.git \
> 	        file://don-t-default-to-cortex-a9-with-neon.patch \
> 	        "
> SRCREV =3D "585324fee380109acd9986388f857f413a60b896"
>=20
> Does anyone notice this and is there any solution for this error? Thank y=
ou.

Yes, there is a patch here:

http://patchwork.openembedded.org/patch/72933/

It should be merged fairly soon I would think, but in the mean time you can=
 apply it locally.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

