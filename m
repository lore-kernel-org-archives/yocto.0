Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ABD0E017BB
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 11:11:59 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Nov 2013 11:11:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="385602295"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by azsmga001.ch.intel.com with ESMTP; 06 Nov 2013 11:11:58 -0800
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 6 Nov 2013 11:11:57 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX112.amr.corp.intel.com ([169.254.12.221]) with mapi id
	14.03.0123.003; Wed, 6 Nov 2013 11:11:58 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
Thread-Index: AQHO2yDAnNULuC+NxkqDVDORcZa5k5oYkbhA
Date: Wed, 6 Nov 2013 19:11:57 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44CAE@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311061346180.25975@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311061346180.25975@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: FW: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
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
X-List-Received-Date: Wed, 06 Nov 2013 19:12:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Anyone know this?

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Wednesday, November 06, 2013 10:48 AM
>To: Rifenbark, Scott M
>Subject: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
>
>
>  i've never used that memory-resident version of bitbake -- it's not clea=
r from
>that section whether you need to start bitbake running before you run that
>script.
>
>  that is, it's not really *explicitly* explained whether running that scr=
ipt with a
>port number *starts* the bitbake server. does it?
>
>rday

