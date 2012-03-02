Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F51BE003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 08:45:58 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Mar 2012 08:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72841376"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Mar 2012 08:45:57 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 2 Mar 2012 08:45:57 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.233]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.120]) with mapi id
	14.01.0355.002; Fri, 2 Mar 2012 08:45:56 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Koen Kooi <koen@beagleboard.org>, Robert P.J.Day <rpjday@crashcourse.ca>
Thread-Topic: [yocto] proper recipe for building for beagle xM?  meta-ti?
Thread-Index: AQHM9koT6VjAlfsg7kW4ISOEfovDp5ZTV5SAgAAJXQCAAAPRAIAABU6AgAPnwQD//+i9AA==
Date: Fri, 2 Mar 2012 16:45:56 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D150846E4BF@ORSMSX105.amr.corp.intel.com>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<0ED6D044-756A-4D76-AFE5-525A5D0DDCE2@beagleboard.org>
In-Reply-To: <0ED6D044-756A-4D76-AFE5-525A5D0DDCE2@beagleboard.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Fri, 02 Mar 2012 16:45:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Koen Kooi
>Sent: Friday, March 02, 2012 2:07 AM
>
>Well, if you use the angstrom setupscript you get 'yocto'. Your phrasing s=
eems
>to suggest you are confusing 'yocto' with 'poky', which is a common mistak=
e.

Hey all - from the project perspective, the Yocto Project includes Poky, so=
 I think it's very appropriate for Robert to think that using YP implies us=
ing Poky. This is in all of the project's official QA and communications, s=
o I think it's reasonable.

Dave

