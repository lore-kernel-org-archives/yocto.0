Return-Path: <david.c.stewart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2320BE013B0
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 06:36:33 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Jul 2013 06:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,677,1367996400"; d="scan'208";a="371085930"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jul 2013 06:36:32 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 16 Jul 2013 06:36:32 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.217]) by
	ORSMSX156.amr.corp.intel.com ([169.254.8.233]) with mapi id
	14.03.0123.003; Tue, 16 Jul 2013 06:36:32 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Regarding offline build
Thread-Index: Ac6CFkymgRXO6FWXTG2mk09tVJ4OrgAEy3MA
Date: Tue, 16 Jul 2013 13:36:31 +0000
Message-ID: <CE0A9A0B.3D847%david.c.stewart@intel.com>
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.5.130515
x-originating-ip: [10.254.126.160]
MIME-Version: 1.0
Subject: Re: Regarding offline build
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
X-List-Received-Date: Tue, 16 Jul 2013 13:36:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <4B6AAB872377AF419804F43AB2C3E28A@intel.com>
Content-Transfer-Encoding: quoted-printable

Amit =96 you will definitely need an internet connection. What you download=
ed is just the build tools and metadata which tells bitbake where to find t=
he sources on the internet.

If you want to build without an internet connection, you might try download=
ing the build appliance. It's a larger download but contains all of the sou=
rces.

Dave

From: Amit Kumar <Amit.Kumar@lntinfotech.com<mailto:Amit.Kumar@lntinfotech.=
com>>
Date: Tuesday, July 16, 2013 4:21 AM
To: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>>
Subject: [yocto] Regarding offline build

Hi,
            I have quarry regarding the Yocto Project build offline.
Is that possible to build the Yocto Project with internet access?
I have download the poky-<latest>.tar.bz2, now I wants to build it independ=
ently without having internet connection.
Do I need to download any other packages also to build it offline?



Thanks & Regards
Amit K

________________________________
The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and using or disseminating the information, and must notify the sende=
r and delete it from their system. L&T Infotech will not accept responsibil=
ity or liability for the accuracy or completeness of, or the presence of an=
y virus or disabling code in this e-mail"

