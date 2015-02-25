Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33247E003FA; Wed, 25 Feb 2015 09:33:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2C03E003A8
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 09:33:10 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 25 Feb 2015 09:33:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,646,1418112000"; d="scan'208";a="459475931"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Feb 2015 09:17:37 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.135]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.13]) with mapi id
	14.03.0195.001; Wed, 25 Feb 2015 09:33:08 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: [yocto] kernel dev manual: KBRANCH_DEFAULT is dead, jim.
Thread-Index: AQHQUO0jDYkuQYJwVkyMRigZPO3BWZ0CGdQA//+GYfA=
Date: Wed, 25 Feb 2015 17:33:08 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EB0DBE@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1502250618570.4099@localhost>
	<D1133CA2.BEE3B%dvhart@linux.intel.com>
In-Reply-To: <D1133CA2.BEE3B%dvhart@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
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
X-List-Received-Date: Wed, 25 Feb 2015 17:33:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Don't worry about the patch Robert... I need to scrub the set to fix this u=
p.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Darren Hart
>Sent: Wednesday, February 25, 2015 8:48 AM
>To: Robert P. J. Day; Yocto discussion list
>Subject: Re: [yocto] kernel dev manual: KBRANCH_DEFAULT is dead, jim.
>
>Good catch, thanks Robert. Care to send a patch to the documentation?
>
>On 2/25/15, 3:20 AM, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:
>
>>
>>  ch 3 still refers to the variable KBRANCH_DEFAULT even though that
>>variable was tossed back in march of 2014:
>>
>>commit e631fc989b08873f559c5927117301294f04298c
>>Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>>Date:   Tue Mar 18 23:01:19 2014 -0400
>>
>>    kernel-yocto: remove KBRANCH_DEFAULT
>>
>>    KBRANCH_DEFAULT is no longer used, so we can remove it from all
>>    recipes (and it won't be missed).
>>
>>rday
>>
>>--
>>
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>>                        http://crashcourse.ca
>>
>>Twitter:                                       http://twitter.com/rpjday
>>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>=3D
>>--
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>--
>Darren Hart
>Intel Open Source Technology Center
>
>
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

