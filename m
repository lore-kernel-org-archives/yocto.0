Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE81BE0072F;
	Fri,  1 Feb 2013 04:26:16 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 Feb 2013 04:26:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,579,1355126400"; d="scan'208";a="197695008"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Feb 2013 04:26:14 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.20]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.218]) with mapi id
	14.01.0355.002; Fri, 1 Feb 2013 12:26:06 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Michael Halstead <michael@yoctoproject.org>, Yocto Project Discussion
	<yocto@yoctoproject.org>
Thread-Topic: 1.4_M3.rc2 ready for QA
Thread-Index: AQHOAAQBWYWAYK88eUqyKiRhpFJ6Kphk7QSA
Date: Fri, 1 Feb 2013 12:26:05 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E961676D775@IRSMSX104.ger.corp.intel.com>
References: <510AF2A7.40709@yoctoproject.org>
In-Reply-To: <510AF2A7.40709@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: Otavio Salvador <otavio@ossystems.com.br>,
	McClintock Matthew-B29882 <B29882@freescale.com>
Subject: Re: 1.4_M3.rc2 ready for QA
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Feb 2013 12:26:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Same drill:
*	Incepem cu testele de weekly
*	Daca weekly e ok, continuam cu fullpass pre-release + BSP-uri
*	Daca si pre-release e ok, facem si testele de post-release

--
Alexandru Georgescu

-----Original Message-----
From: Michael Halstead [mailto:mhalstead@linuxfoundation.org] On Behalf Of =
Michael Halstead
Sent: Friday, February 01, 2013 00:40
To: Yocto Project Discussion
Cc: Saul Wold; Flanagan, Elizabeth; Zhao Yi; Georgescu, Alexandru C; McClin=
tock Matthew-B29882; Otavio Salvador; Liu, Song
Subject: 1.4_M3.rc2 ready for QA

The 1.4_M3.rc2 is available at:

http://autobuilder.yoctoproject.org/pub/nightly/20130131-4/

Built from:
poky: 3ae1a4ba972cfc17ff3f2fda632da8ecc3414885
eclipse-poky: 65f1b736b719ad5284281ccd88a33a5a92724da2
meta-qt3: 06e2fe600de962cdba53c23de1207501439a9c9f


Please begin testing against this RC. Please note that tag and branch names=
 for this milestone will be named as if it was M3. Branches have already be=
en created since some commits needed to be cherry-picked for the build. I w=
ill tag, sign and release the milestone if/when given the all clear.

--=20
Michael Halstead
Yocto Project / Sys Admin



