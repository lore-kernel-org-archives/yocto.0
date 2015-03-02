Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAD95E0077E; Mon,  2 Mar 2015 11:14:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90E30E003FA
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 11:14:44 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 02 Mar 2015 11:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,676,1418112000"; d="scan'208";a="692863941"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2015 11:14:45 -0800
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 2 Mar 2015 11:14:43 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.137]) by
	ORSMSX159.amr.corp.intel.com ([169.254.11.47]) with mapi id
	14.03.0195.001; Mon, 2 Mar 2015 11:14:43 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] kernel dev manual: KBRANCH_DEFAULT is dead, jim.
Thread-Index: AQHQUO0jDYkuQYJwVkyMRigZPO3BWZ0JmAow
Date: Mon, 2 Mar 2015 19:14:42 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EB8BE3@ORSMSX106.amr.corp.intel.com>
References: <alpine.LFD.2.11.1502250618570.4099@localhost>
In-Reply-To: <alpine.LFD.2.11.1502250618570.4099@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: kernel dev manual: KBRANCH_DEFAULT is dead, jim.
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
X-List-Received-Date: Mon, 02 Mar 2015 19:14:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

I have updated the docs to take care of this issue.  KBRANCH_DEFAULT is gon=
e from the variable glossary, KBRANCH has been updated as well as the secti=
on in the kernel-dev manual that mentions its use.

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Wednesday, February 25, 2015 3:20 AM
>To: Yocto discussion list
>Subject: [yocto] kernel dev manual: KBRANCH_DEFAULT is dead, jim.
>
>
>  ch 3 still refers to the variable KBRANCH_DEFAULT even though that varia=
ble
>was tossed back in march of 2014:
>
>commit e631fc989b08873f559c5927117301294f04298c
>Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>Date:   Tue Mar 18 23:01:19 2014 -0400
>
>    kernel-yocto: remove KBRANCH_DEFAULT
>
>    KBRANCH_DEFAULT is no longer used, so we can remove it from all
>    recipes (and it won't be missed).
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

