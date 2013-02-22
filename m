Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CF77E004AB
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 10:39:03 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Feb 2013 10:39:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,717,1355126400"; d="scan'208";a="205374693"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Feb 2013 10:39:01 -0800
Received: from orsmsx108.amr.corp.intel.com (10.22.225.40) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 22 Feb 2013 10:39:01 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.110]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.196]) with mapi id
	14.01.0355.002; Fri, 22 Feb 2013 10:39:00 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Khem Raj
	<raj.khem@gmail.com>, Edward Vidal <vidal.develone@gmail.com>
Thread-Topic: [yocto] adt-manual.pdf
Thread-Index: AQHODzkQ0Qrs/xHNEkCy78mTZHbLLZiEWa8QgAHe4eA=
Date: Fri, 22 Feb 2013 18:39:00 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123796F33E96F@ORSMSX101.amr.corp.intel.com>
References: <CANwz6nz5QUDFeSZR62uncFEsr-4=ehGUpn3AtZpW-4k4reX49A@mail.gmail.com>
	<20130220070508.GA23580@sakrah.homelinux.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123796F33C36A@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123796F33C36A@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adt-manual.pdf
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
X-List-Received-Date: Fri, 22 Feb 2013 18:39:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When I have the file named 'configure.ac', I get an error during the automa=
ke -a step.  It says "configure.ac:5: error: required file 'config.h.in' no=
t found"  Did yours run no problem just by making the name change to the fi=
le?

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
>Sent: Thursday, February 21, 2013 6:03 AM
>To: Khem Raj; Edward Vidal
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] adt-manual.pdf
>
>Thanks for getting back on this.  I will check it out.
>
>Scott
>
>>-----Original Message-----
>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Khem Raj
>>Sent: Tuesday, February 19, 2013 11:05 PM
>>To: Edward Vidal
>>Cc: yocto@yoctoproject.org
>>Subject: Re: [yocto] adt-manual.pdf
>>
>>On (09/01/13 16:59), Edward Vidal wrote:
>>> Hello,
>>> I was testing the example  4.1 Autotools-Based Projects
>>> should the file "configure".in be "configure.ac"
>>> this is the error that I get when I execute aclocal
>>> aclocal
>>> aclocal: warning: autoconf input should be named 'configure.ac', not
>'
>>> configure.in'
>>> Any help will be appreciated.
>>
>>yes configure.ac is right naming. Have you filed a bug for it in
>>bugzilla ? if not I would suggest to file one
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

