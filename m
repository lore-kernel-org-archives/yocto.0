Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC5CEE00945; Fri, 15 May 2015 12:51:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5A51E00820
	for <yocto@yoctoproject.org>; Fri, 15 May 2015 12:51:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 May 2015 12:51:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,436,1427785200"; d="scan'208";a="710881150"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 15 May 2015 12:51:19 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.102]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.45]) with mapi id
	14.03.0224.002; Fri, 15 May 2015 12:51:18 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Trevor Woerner <twoerner@gmail.com>, "Georgescu, Alexandru C"
	<alexandru.c.georgescu@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Replacing HOB in Build Appliance for YP 1.9
Thread-Index: AQHQg1+jJHA8n6FEVE60UTnnmkXlIZ1pAqKAgBSHTpA=
Date: Fri, 15 May 2015 19:51:17 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF817D@ORSMSX101.amr.corp.intel.com>
References: <D1682DBC.1AE81%alexandru.c.georgescu@intel.com>
	<5544B307.7010804@gmail.com>
In-Reply-To: <5544B307.7010804@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Replacing HOB in Build Appliance for YP 1.9
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
X-List-Received-Date: Fri, 15 May 2015 19:51:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes - this "build-appliance-manual" will need to be updated.  Is the work t=
o replace HOB in the BA for 1.9 going to have bug associated with it? =20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Trevor Woerner
>Sent: Saturday, May 02, 2015 4:21 AM
>To: Georgescu, Alexandru C; yocto@yoctoproject.org
>Cc: Paul Eggleton
>Subject: Re: [yocto] Replacing HOB in Build Appliance for YP 1.9
>
>On 04/30/15 12:06, Georgescu, Alexandru C wrote:
>> Since HOB is started
>> automatically in BA in order to help users get started quickly with
>> YP, I have the following proposal for updating BA in 1.9 and to replace =
HOB:
>
>...
>
>and updating relevant documentation, such as:
>https://www.yoctoproject.org/documentation/build-appliance-manual
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

