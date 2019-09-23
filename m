Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 600C1E00D46; Mon, 23 Sep 2019 00:38:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_MED, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E843EE00C25
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 00:38:02 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Sep 2019 00:38:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="195295988"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by FMSMGA003.fm.intel.com with ESMTP; 23 Sep 2019 00:38:01 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Mon, 23 Sep 2019 00:38:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.55) by
	edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Mon, 23 Sep 2019 00:38:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=Ju/4aENY4GlzX8ol9kIwL6uxKZ0Tu3QPKvOxyAINAJMzPtyhT4uEVed4YWk/Zqu4NKgwLX5I5BySTHKO212jvrtln1chv6N1A4pPryBqhwPGzaX8ZZFuUCwTMLUeEiPG8dPGH1dYmCR6rDGhI304xNgooF0LXBATs9ezFtuyFNK+AqUkRE2md2KQS6+z/7Pr4c1pOa/dT3SLPS60oSBfoJ/fv3/8IIrn7VHjwpC84U/a8zpHyAtzHcQzlzG5aVgWjaOCkVqClkkKhH81pwmfufp5sq18LheBOA5Hr2SNPhkHTyHtNmwJBiJu7Xte/ivV3hFQbzkBtp3smNu+/Wl6wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=h9SmEo4/5zgRXrzhy1BMxXn9qDRR4oMITNy7dBW1bkY=;
	b=cD97BpyIEcOUnFROrDMQ/M6N032EnyVWEOVwjDt9mkx6InSOy6jMc2Z7htrWib90o0SUpWc+zZ2PAiKg4c6H93L/j7pSxQhq3Z05N55a4qM2ooQncORIFlJLokm7Vd5/rNwnKasZWEadNfCJJ74+c3a5UMh2VquNjb9lU8L8C8CC2JkiWpWh/Jm5XFmx+MEWL/9I6TGDYAE091LCCS7rRqCP1qh3GAL2egXCm4Mjpoz3rGn7TBqmQg8lNBcptocfwTqlWfBJ7UiG0kAaVnaWldz2IQkkJQ5uL0nKY8PtlaPDjo7+gtv3o5mGoSY9/KJCqGZHK+eDaAjgjkL12+c0xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=h9SmEo4/5zgRXrzhy1BMxXn9qDRR4oMITNy7dBW1bkY=;
	b=sGqPOLpyzDa/IE6QDKeujTtqL5F6TZaJJjowFOZrZ9mfmjCX8xWzgyZn5Pd4w+jGtheFm18k2zm+HS3pDeIvyS++Ef2KHLxn1/x9kjzWV2hbEwCYFL9rNUBldtqHzGe9SQhaNlTF+67za0jaWckNv8q4NsXnSUPcX8KiBHofzj4=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB1685.namprd11.prod.outlook.com (10.169.250.151) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2284.18; Mon, 23 Sep 2019 07:37:59 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::3d46:e26e:3050:288f]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::3d46:e26e:3050:288f%11]) with mapi id 15.20.2284.023;
	Mon, 23 Sep 2019 07:37:59 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
Thread-Topic: QA notification for completed autobuilder build
	(yocto-2.8_M3.rc1)
Thread-Index: AQHVb3CAjH+B0RA2wUCbQT8/rReVaKc4lTwAgAADKMCAAC8k4A==
Date: Mon, 23 Sep 2019 07:37:59 +0000
Message-ID: <CY4PR11MB187994BFF9D0605ADCB50754E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20190920050052.0C767E00D8F@yocto-www.yoctoproject.org>
	<9DDD2658D1FE414E99172D2DB1E4D0434823F10E@PGSMSX109.gar.corp.intel.com>
	<CY4PR11MB187921D82C8A26CC9E25CF65E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
In-Reply-To: <CY4PR11MB187921D82C8A26CC9E25CF65E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDZiZmYxNzItYjNkNC00NDMwLTlmNWEtMTQ3OWU3MDlhYjMyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMnd2VHY1NVdyd3dycnoxSnhTT3E5elY5MTl5cEZXSEo1MkNVS3FrajF3ZDgrQWJDUWNCc3VtbUREdnpFUFlGZCJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48cd66ad-c26e-474e-7f38-08d73ff8f52c
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:CY4PR11MB1685; 
x-ms-traffictypediagnostic: CY4PR11MB1685:
x-ms-exchange-purlcount: 2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB16859E4038EAF1E7B236CE78E3850@CY4PR11MB1685.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(366004)(346002)(39860400002)(136003)(53754006)(199004)(189003)(13464003)(6246003)(6506007)(305945005)(7736002)(2940100002)(52536014)(102836004)(86362001)(186003)(15650500001)(55016002)(6306002)(6436002)(8936002)(26005)(316002)(99286004)(110136005)(76116006)(66556008)(66476007)(66946007)(256004)(54906003)(14444005)(2501003)(64756008)(66446008)(2906002)(8676002)(4326008)(74316002)(5660300002)(33656002)(81156014)(76176011)(81166006)(9686003)(71200400001)(71190400001)(7696005)(25786009)(14454004)(486006)(11346002)(966005)(229853002)(446003)(6116002)(478600001)(3846002)(476003)(66066001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB1685;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 80scPqf+W/3oNGtBs3POkSB7ehXuaevrq1i7EU9ATdN9lzBtkayms7Sz1R9EIlzz7vSZHgctLdoMuotfVGY/ZonL58CAmekU91/FVQ1ePzu+msCumka/eHcURo2J+MxLk0353K3y5vy3FhaIrbOuH1HsxQup8Zk3X02mujbN0SHvNnbdENENLeZClcC9jdAn705w5CnE/PlIU1+dOesuBEwQcibqhRGNOiX2HCo8o4qLld4ZneaDJHEiZDeHEaJLGjSHqj7Yuj5nYzg+eJB0YeEiNqrUGtBBo3iY7nHIvrXO4VNZZ+QmPmbLXFXOu0Fb1bEnLchLWw2mtFLHfiooxXpWpXjtgyTvQg3vBKIYaz06kyjr/idnZZIO+DzulqMBvyx5mF0kcoESMtb4pryZLWRdCshug42tTUfgG5XNF/E=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 48cd66ad-c26e-474e-7f38-08d73ff8f52c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 07:37:59.2498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ozOIaMZOhzAr9d3llXHhDVihSEwVs/GJX68haYuVEawbvphFhf6AXTetZ5HH1R3feu4J6zYHoJAw2IMLI1Da7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1685
X-OriginatorOrg: intel.com
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M3.rc1)
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
X-List-Received-Date: Mon, 23 Sep 2019 07:38:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

LSB support was expected to be removed from build 'yocto-2.8_M3.rc1' onward=
s, but link on AB still points to LSB images.
The images present inside https://autobuilder.yocto.io/pub/releases/yocto-2=
.8_M3.rc1/machines/genericx86-64-lsb/  are built with systemd as init manag=
er.

Can you please confirm if these are altcfg images and the link name needs t=
o updated?

Thanks,
Sangeeta Jain

>-----Original Message-----
>From: Jain, Sangeeta
>Sent: Monday, 23 September, 2019 11:09 AM
>To: pokybuild@ubuntu1804-ty-1.yocto.io; yocto@yoctoproject.org
>Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
><apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
><chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>akuster808@gmail.com; sjolley.yp.pm@gmail.com; Tummalapalli, Vineela
><vineela.tummalapalli@intel.com>
>Subject: RE: QA notification for completed autobuilder build (yocto-2.8_M3=
.rc1)
>
>Hello All,
>
>Intel and WR YP QA is planning for QA execution for YP build yocto-2.8_M3.=
rc1.
>We are planning to execute following tests for this cycle:
>
>OEQA-manual tests for following module:
>1. OE-Core
>2. BSP-hw
>3. BSP-Qemu
>
>Runtime auto test for following platforms:
>1. MinnowTurbot 32-bit
>2. Coffee Lake
>3. NUC 7
>4. NUC 6
>5. Edgerouter
>6. MPC8315e-rdb
>7. Beaglebone
>
>ETA for completion is next Thursday, September 26.
>
>Thanks & Regards,
>Sangeeta Jain
>
>>-----Original Message-----
>>From: pokybuild@ubuntu1804-ty-1.yocto.io
>>[mailto:pokybuild@ubuntu1804-ty- 1.yocto.io]
>>Sent: Friday, September 20, 2019 1:01 PM
>>To: yocto@yoctoproject.org
>>Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>><apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>;
>>Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
>><chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>>akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
>><sangeeta.jain@intel.com>
>>Subject: QA notification for completed autobuilder build
>>(yocto-2.8_M3.rc1)
>>
>>
>>A build flagged for QA (yocto-2.8_M3.rc1) was completed on the
>>autobuilder and is available at:
>>
>>
>>    https://autobuilder.yocto.io/pub/releases/yocto-2.8_M3.rc1
>>
>>
>>Build hash information:
>>
>>bitbake: 797354d285f6d624d9adb52bab65823572da0e39
>>meta-gplv2: 1e2480e50f34e55bdfd5e06f98441e03a3752d5a
>>meta-intel: 655dfaec95196b9c0e15d34f490e4a51a7d501e3
>>meta-mingw: 9df4e115ab9a7ab23f81fdbcc62b2a0269d6377f
>>oecore: 95ad5626296380358c8a502a3e04879dab653d78
>>poky: 81f9e815d36848761a9dfa94b00ad998bb39a4a6
>>
>>
>>
>>This is an automated message from the Yocto Project Autobuilder
>>Git: git://git.yoctoproject.org/yocto-autobuilder2
>>Email: richard.purdie@linuxfoundation.org
>>
>>
>>


