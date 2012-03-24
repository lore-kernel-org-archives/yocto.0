Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3340E004D2
	for <yocto@yoctoproject.org>; Sat, 24 Mar 2012 05:56:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Mar 2012 05:56:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132706272"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 24 Mar 2012 05:56:29 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 24 Mar 2012 05:56:28 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.46]) with mapi id
	14.01.0355.002; Sat, 24 Mar 2012 05:56:29 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] tentative list of vars to be dropped from variable
	glossary
Thread-Index: AQHNCaBYyoATcYtfWUOPFnyPSaVZUZZ5y2AA//+cTSA=
Date: Sat, 24 Mar 2012 12:56:28 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237945175E22@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203240525230.22364@oneiric>
	<1332589972.27577.1.camel@ted>
In-Reply-To: <1332589972.27577.1.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: tentative list of vars to be dropped from variable glossary
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
X-List-Received-Date: Sat, 24 Mar 2012 12:56:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ahhh...  I need to read all the emails in my inbox before responding :)

Thanks Richard.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Richard Purdie
Sent: Saturday, March 24, 2012 5:53 AM
To: Robert P. J. Day
Cc: Yocto discussion list
Subject: Re: [yocto] tentative list of vars to be dropped from variable glo=
ssary

On Sat, 2012-03-24 at 05:27 -0400, Robert P. J. Day wrote:
> finished perusing ref manual variable glossary and here's my list of
> variables that would appear to be dead and should be dropped from the
> glossary:
>=20
> http://www.crashcourse.ca/wiki/index.php/OE-Core#Dead.28.3F.29_variables.=
2C_to_be_dropped_from_glossary
>=20
> unless there are objections or anyone has any others to add to that
> list, i'll submit a patch that removes all those entries.


PACKAGE_SUMMARY - delete
PACKAGE_DESCRIPTION - delete
POKY_EXTRA_INSTALL - was renamed to CORE_IMAGE_EXTRA_INSTALL
POKYMODE -> rename TCMODE
POKYLIBC -> rename TCLIBC
SHELLCMDS - delete
TERMCMD - delete
TERMCMDRUN - delete

Cheers,

Richard



_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

