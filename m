Return-Path: <shubham.kumar4@wipro.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78CAEE00C8F; Thu,  4 Feb 2016 03:17:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [203.91.208.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wipro-chn-out01.wipro.com (wipro-chn-out01.wipro.com
	[203.91.208.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 791EDE00A7D
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 03:17:05 -0800 (PST)
X-AuditID: cb5bdd88-f79ee6d000001534-5d-56b333305f91
X-Invalid-Recipients: 
Received: from BLR-OUT-EDG03.wipro.com ( [203.91.201.88])
	by wipro-chn-out01.wipro.com (Symantec Mail Security) with SMTP id
	7C.40.05428.03333B65; Thu,  4 Feb 2016 16:47:04 +0530 (IST)
Received: from BLR-EC-MBX1.wipro.com (10.208.51.111) by
	BLR-OUT-EDG03.wipro.com (203.91.193.33) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Thu, 4 Feb 2016 16:46:46 +0530
Received: from wipro-blr-tls01.wipro.com (203.91.193.39) by
	BLR-EC-MBX1.wipro.com (10.208.51.111) with Microsoft SMTP Server (TLS)
	id 14.3.266.1; Thu, 4 Feb 2016 16:46:46 +0530
Received: from APC01-HK2-obe.outbound.protection.outlook.com (65.55.88.216) by
	wipro-blr-tls01.wipro.com (203.91.193.39) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Thu, 4 Feb 2016 16:46:42 +0530
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com (10.160.238.142) by
	SIXPR03MB0672.apcprd03.prod.outlook.com (10.160.238.142) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Thu, 4 Feb 2016 11:16:40 +0000
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) by
	SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) with mapi id
	15.01.0396.020; Thu, 4 Feb 2016 11:16:40 +0000
From: <shubham.kumar4@wipro.com>
To: <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] [meta-intel]:Quark not accepting "root" username at
	login prompt
Thread-Index: AQHRXne6BvZjGpKKWUqs+vIN6ugpkp8aVidlgAARJ4CAAAEaD4AAK4sAgADU8W2AABK4gIAAAiOBgAAeo4CAAB9+bg==
Date: Thu, 4 Feb 2016 11:16:40 +0000
Message-ID: <SIXPR03MB0672B8815A8B18D9F2C6981BD4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<CAMKF1so_i2iZJxv2fdV58XtYnDVODCzi8d1nFEEKqm=Z1wH4vA@mail.gmail.com>
	<SIXPR03MB06723015AFA054223A0F4226D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>,
	<3567390.mrz9OiGkxe@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3567390.mrz9OiGkxe@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=wipro.com; 
x-originating-ip: [198.175.68.39]
x-microsoft-exchange-diagnostics: 1; SIXPR03MB0672;
	5:yS2owojzpfO+6UK46gi93yTJhR/oVqY0MSBjeqk72a/29pxA+YLfp+xQ100zaNmbuBDZOXX/Q2jp/kNPeRK7ZPRxYfyomE6me5UUYPXgAut8An44mXEFvM4+kFDTGcEGtBKerkQ0THnoZirvmKG6LA==;
	24:+Jt/GEQ7hbd5IMQhw3YPR9IvHnYV8HOLE/n4mhdpTNWkpBgcjiwtk2nUSI9V9+PFFsQM0uOGOhhUum4bMecvXVp0TSh9BHAQSLfUMihYI3I=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR03MB0672;
x-ms-office365-filtering-correlation-id: ee5030e8-0ad9-4339-c62e-08d32d54a7ff
x-microsoft-antispam-prvs: <SIXPR03MB067275B175651ADA707D6135D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(62627912741753);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(61425038)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(61426038)(61427038);
	SRVR:SIXPR03MB0672; BCL:0; PCL:0; RULEID:; SRVR:SIXPR03MB0672; 
x-forefront-prvs: 084285FC5C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(43544003)(152014003)(24454002)(164054003)(3280700002)(3660700001)(106116001)(87936001)(19580405001)(5003600100002)(50986999)(2906002)(33656002)(1096002)(189998001)(4326007)(19580395003)(76176999)(5002640100001)(40100003)(5001960100002)(76576001)(54356999)(1220700001)(110136002)(102836003)(10400500002)(6116002)(3846002)(586003)(66066001)(86362001)(11100500001)(93886004)(77096005)(2950100001)(5008740100001)(92566002)(74316001)(5004730100002)(122556002)(2900100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SIXPR03MB0672;
	H:SIXPR03MB0672.apcprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2016 11:16:40.7182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 258ac4e4-146a-411e-9dc8-79a9e12fd6da
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR03MB0672
X-OrganizationHeadersPreserved: SIXPR03MB0672.apcprd03.prod.outlook.com
X-CrossPremisesHeadersPromoted: BLR-HES-EDG02.wipro.com
X-CrossPremisesHeadersFiltered: BLR-HES-EDG02.wipro.com
X-CFilter-Loop: Reflected
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel]:Quark not accepting "root" username at login prompt
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
X-List-Received-Date: Thu, 04 Feb 2016 11:17:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


On Thu, 04 Feb 2016 07:31:32 shubham.kumar4@wipro.com wrote:
> >That entry is already there in "<build>/conf/local.conf " file as follow=
s:-
>>
> ># We default to enabling the debugging tweaks.
> >EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
>>
> >In addition to the above, I have also added "tools-sdk" and "tools-debug=
" as
> >follows in the same file :-
>>
> >#Other packages
> >EXTRA_IMAGE_FEATURES =3D "tools-sdk"
> >EXTRA_IMAGE_FEATURES =3D "tools-debug"
>>
> >Is there anything else I'm missing?

>Er... is that exactly how you are setting the EXTRA_IMAGE_FEATURES value? =
If
>it is, =3D sets the value, it does not add to it, so you're wiping out the
>previous items. You presumably want to be using +=3D rather than =3D .

>Cheers,
>Paul


Thanks Paul. The issue is solved now. You pointed out the correct mistake :=
). However, I had been doing the same mistake while building extra packages=
 for qemux86. But it didn't throw any such error, and the virtual machine w=
orked just perfectly fine. However, It was not the same with Galileo.
But I would take care of these issues in future.
Thanks Paul , Thanks Maciej. Have a Great day ahead !!

Thanks,
Shubham_K
The information contained in this electronic message and any attachments to=
 this message are intended for the exclusive use of the addressee(s) and ma=
y contain proprietary, confidential or privileged information. If you are n=
ot the intended recipient, you should not disseminate, distribute or copy t=
his e-mail. Please notify the sender immediately and destroy all copies of =
this message and any attachments. WARNING: Computer viruses can be transmit=
ted via email. The recipient should check this email and any attachments fo=
r the presence of viruses. The company accepts no liability for any damage =
caused by any virus transmitted by this email. www.wipro.com

