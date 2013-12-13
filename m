Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C671DE00796
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 09:16:05 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2013 09:16:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,480,1384329600"; d="scan'208";a="451944204"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2013 09:16:01 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.135]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.114]) with mapi id
	14.03.0123.003; Fri, 13 Dec 2013 17:15:59 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, Zhao Yi
	<yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Thread-Topic: Status of dylan and dora point releases
Thread-Index: AQHO+Asq9/HnuiKvGU2oSb+Rj5ObDJpSXY+A
Date: Fri, 13 Dec 2013 17:15:58 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619FB4B41@IRSMSX104.ger.corp.intel.com>
References: <CAPhnLPA93Ca1UkiFDgaYt+4zaqna0qsLsG3eiv6eu_cob3tkpA@mail.gmail.com>
In-Reply-To: <CAPhnLPA93Ca1UkiFDgaYt+4zaqna0qsLsG3eiv6eu_cob3tkpA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: Status of dylan and dora point releases
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
X-List-Received-Date: Fri, 13 Dec 2013 17:16:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

There will be some changes coming in, so please hold testing until next wee=
k when a new build will arrive.

Thanks,
Alex.

-----Original Message-----
From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]=20
Sent: Friday, December 13, 2013 3:56 PM
To: Georgescu, Alexandru C; yocto@yoctoproject.org; Zhao Yi; Otavio Salvado=
r
Subject: Status of dylan and dora point releases

All,

With the failures we saw last night on the dylan point release, we're going=
 to ask folks to switch QA efforts to the dora point release which should b=
e finished building shortly. The build appliance will be built out of band =
in order to fix some autobuilder build issues on it and then added to the r=
c2 area.

http://autobuilder.yoctoproject.org/pub/releases/dora-10.0.1.rc2

bitbake     1484905373ad717cedcaef37a0addd
e034ebdc60
eclipse-poky-juno     2fa1c58940141a3c547c8790b8a6832167e8eb66
eclipse-poky-kepler     ad74249895f882a8f00bdeef7a0f7c18998cc43e
meta-fsl-arm     c7cc5d5f451c9d12df9f11314f4a58ecc347b1f5
meta-fsl-ppc     b5732aeadc9eb0de933f52d0949412e12f8486bd
meta-intel     c86e39dd06571458c7dee6cf289d5b470c98f4bd
meta-minnow     edf75553643face7a0dd5b16085d59a90eb4af8d
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore     d68c267f3387d7fe221d3c5653a66db8b1f78fd8
poky     7a0033cc4e1f590c5a936671f351a1b251e16726

--
Elizabeth Flanagan
Yocto Project
Build and Release

