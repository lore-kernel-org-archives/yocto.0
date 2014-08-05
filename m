Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0D26E007C1; Tue,  5 Aug 2014 07:52:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0091BE00790
	for <yocto@yoctoproject.org>; Tue,  5 Aug 2014 07:52:41 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Aug 2014 07:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,805,1400050800"; d="scan'208";a="465182097"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 05 Aug 2014 07:52:36 -0700
Received: from irsmsx108.ger.corp.intel.com (163.33.3.3) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Tue, 5 Aug 2014 15:49:39 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.92]) by
	IRSMSX108.ger.corp.intel.com ([169.254.11.3]) with mapi id
	14.03.0195.001; Tue, 5 Aug 2014 15:49:38 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: =?iso-8859-1?Q?Jo=E3o_Henrique_Ferreira_de_Freitas?= <joaohf@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] Yocto 1.7_M2 release candidate 1 ready for QA
Thread-Index: AQHPsLx72APfpdQEA0OBbwuSwgdU2A==
Date: Tue, 5 Aug 2014 14:49:38 +0000
Message-ID: <D006C8E6.779E%alexandru.c.georgescu@intel.com>
References: <CAPhnLPB9VeuosZF16qY2H32adjqC0xZoCWhq_Vdjy7n5YpYCBQ@mail.gmail.com>
	<CFFE70D2.703B%alexandru.c.georgescu@intel.com>
	<53DC4886.8070406@gmail.com>
	<1407232846.6981.77.camel@ted> <1407234725.6981.82.camel@ted>
	<53E0BE90.6050404@gmail.com>
In-Reply-To: <53E0BE90.6050404@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.3.140616
x-originating-ip: [10.237.108.31]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.7_M2 release candidate 1 ready for QA
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
X-List-Received-Date: Tue, 05 Aug 2014 14:52:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <F555F54918CB884C9E15F45EDAED38C6@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi,
As RP mentioned in a previous mail, we aren=B9t covering the meta-fsl
toolchain on our QA. We are validating though on the other platforms that
we cover and progressing with the automation in this area should validate
at least the basic functionality of the toolchain on the other platforms
as well.

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania




On 05/08/14 14:22, "Jo=E3o Henrique Ferreira de Freitas" <joaohf@gmail.com>
wrote:

>
>On 05-08-2014 07:32, Richard Purdie wrote:
>> I also couldn't reproduce this with the armv7 toolchain. Do you have the
>> logs from that failure?
>>
>
>You are right. I retest armv7 and there is no problem. I think I lost
>myself during install-test cycle
>
>Thanks for your attention.
>
>--=20
>Jo=E3o Henrique Ferreira de Freitas - joaohf_at_gmail.com
>Campinas-SP-Brasil
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


