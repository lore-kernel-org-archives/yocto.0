Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CA3BE0149A
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 02:38:12 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Jan 2013 02:37:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,513,1355126400"; d="scan'208";a="250635051"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga001.jf.intel.com with ESMTP; 22 Jan 2013 02:38:10 -0800
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 22 Jan 2013 10:38:10 +0000
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.218]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.144]) with mapi id
	14.01.0355.002; Tue, 22 Jan 2013 10:38:10 +0000
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: Wolfgang Denk <wd@denx.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] M2, M3, M4 milestones available?
Thread-Index: AQHN+HotHjvf4pJhIk+eGJFNSGGpcphVJqGA
Date: Tue, 22 Jan 2013 10:38:09 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMSX103.ger.corp.intel.com>
References: <20130122070331.C3B6120DA8C@gemini.denx.de>
In-Reply-To: <20130122070331.C3B6120DA8C@gemini.denx.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: M2, M3, M4 milestones available?
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
X-List-Received-Date: Tue, 22 Jan 2013 10:38:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Wolfgang,

From a QA point of view, we are approaching the 1.4 M3 milestone. Here is w=
hat Saul wrote for the latest Full Pass request:
"
QA Teams:

Please do FULL Pass testing on this as a PRE-M3 Full Pass so we have some i=
dea of what's going on.

Git Rev: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4
"
1.4 M2 was kind of blurry because it landed during charismas and new year t=
hus many of us were on vacation.

I hope this helped.

Have a nice day,
Stoicescu Cornel
Romania Yocto QA =20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Wolfgang Denk
Sent: Tuesday, January 22, 2013 9:04 AM
To: yocto@yoctoproject.org
Subject: [yocto] M2, M3, M4 milestones available?

Hello,

I wonder if the M2, M3 and M4 milestones have been reached already?
The release schedule [1] says they were due on Nov 26 2012, Dec 24
2012 and Jan 11 2013 respectively, and even lists bugs against these.

[1] https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule


However, I cannot find any other git tags but 1.4_M1.rc1 and 1.4_M1.final

So are these later milestones available somewhere?


Thanks in advance.

Best regards,

Wolfgang Denk

--=20
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Neckties strangle clear thinking.                       -- Lin Yutang
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

