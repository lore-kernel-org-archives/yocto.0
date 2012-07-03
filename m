Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A65E006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:25:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jul 2012 11:25:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="166461828"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 03 Jul 2012 11:25:37 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Jul 2012 11:25:36 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.138]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 11:25:36 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: jfabernathy <jfabernathy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] prerequisite tools for  making documentation
Thread-Index: AQHNUiNaFxq6gUJ8aE+tg/YhTtPoQJcX7hFQ
Date: Tue, 3 Jul 2012 18:25:35 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com>
References: <4FE73AF6.2060008@gmail.com>
In-Reply-To: <4FE73AF6.2060008@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: prerequisite tools for making documentation
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
X-List-Received-Date: Tue, 03 Jul 2012 18:25:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jim,=20

Do you have a list of what you had to install?  I can add this to the QS "P=
ackages" section.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of jfabernathy
Sent: Sunday, June 24, 2012 9:06 AM
To: yocto@yoctoproject.org
Subject: [yocto] prerequisite tools for making documentation

I had a need to look at the bitbake manual in the=20
poky/bitbake/doc/manual directory and tried to make pdf.  I had all the=20
prerequisites listed in the QS guide.  However, I found the make failed=20
due to a number of xml related tools being missing.  I installed those=20
and got the pdf manual generated.

Should we add those xml tools to the prerequisites?  BTW, I'm using=20
denzil branch and referring to the QS guide 1.2.

Jim A

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

