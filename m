Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59ACDE00559; Tue, 29 Jul 2014 23:52:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7AD7E003FA
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 23:52:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Jul 2014 23:52:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,762,1400050800"; d="scan'208";a="569288982"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2014 23:52:31 -0700
Received: from irsmsx107.ger.corp.intel.com (163.33.3.99) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 30 Jul 2014 07:52:29 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.226]) by
	IRSMSX107.ger.corp.intel.com ([169.254.10.138]) with mapi id
	14.03.0123.003; Wed, 30 Jul 2014 07:52:29 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zhao, Yi (Wind River)"
	<yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Thread-Topic: Yocto 1.7_M2 release candidate 1 ready for QA
Thread-Index: AQHPq8LTTXHPCRQDOUG78qfSHQr2Lg==
Date: Wed, 30 Jul 2014 06:52:28 +0000
Message-ID: <CFFE70D2.703B%alexandru.c.georgescu@intel.com>
References: <CAPhnLPB9VeuosZF16qY2H32adjqC0xZoCWhq_Vdjy7n5YpYCBQ@mail.gmail.com>
In-Reply-To: <CAPhnLPB9VeuosZF16qY2H32adjqC0xZoCWhq_Vdjy7n5YpYCBQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.3.140616
x-originating-ip: [10.237.108.44]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 30 Jul 2014 06:52:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CA67D8CA8278CC47BD874DA1E8E3AC55@intel.com>
Content-Transfer-Encoding: quoted-printable

Ha, nice to see green here! :)
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania




On 30/07/14 09:41, "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
wrote:

>Full green build!
>
>http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1
>
>bitbake 4aaf56bfbad4aa626be8a2f7a5f70834c3311dd3
>eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
>eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
>meta-fsl-arm 6ef8db67df3436a463851ff95dcfb6a66132f3c0
>meta-fsl-ppc 5efa2d27dcf4637b008faf782b5e257b748b24c0
>meta-intel 67b7f6f3a03ddbdcf66823eb5a236edbc0aa4858
>meta-minnow ee48eba5895178ec19febee2e0a2d8b0f3ace0e9
>meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
>oecore 7986adeac16550b33f65fded39a55f668e0e543f
>poky 2d1660112e54653f7bb763939d0416472c49fe01
>
>
>--=20
>Elizabeth Flanagan
>Yocto Project
>Build and Release


