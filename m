Return-Path: <umamahesh.y@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6756E00BE8; Wed, 11 Oct 2017 05:29:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [203.105.185.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Oct 2017 05:29:25 PDT
Received: from GWS06.hcl.com (gws06.hcl.com [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06117E008A4
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 05:29:24 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.43,361,1503340200"; d="scan'208";a="248594781"
Received: from unknown (HELO NDA-CORP-HT03.CORP.HCL.IN) ([10.248.64.35])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 11 Oct 2017 16:31:02 +0530
Received: from NDA-CORP-EDGE1.CORP.HCL.COM (10.248.64.159) by
	NDA-CORP-HT03.CORP.HCL.IN (10.248.64.35) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Wed, 11 Oct 2017 17:58:13 +0530
Received: from APC01-HK2-obe.outbound.protection.outlook.com (65.55.88.216) by
	transportedge.hcl.com (10.248.64.159) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Wed, 11 Oct 2017 17:57:47 +0530
Received: from HK2PR04MB0995.apcprd04.prod.outlook.com (10.165.58.153) by
	HK2PR04MB0993.apcprd04.prod.outlook.com (10.165.58.151) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Wed, 11 Oct 2017 12:28:10 +0000
Received: from HK2PR04MB0995.apcprd04.prod.outlook.com
	([fe80::7da9:d478:cd68:f048]) by
	HK2PR04MB0995.apcprd04.prod.outlook.com
	([fe80::7da9:d478:cd68:f048%13]) with mapi id 15.20.0077.020;
	Wed, 11 Oct 2017 12:28:10 +0000
From: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
To: "Maxin B. John" <maxin.john@intel.com>
Thread-Topic: [yocto] Adding test case in LTP in Yocto
Thread-Index: AdNCU4Bc7149BRf0S8u1tIW+EFnU/wANuLEAAAAU62A=
Date: Wed, 11 Oct 2017 12:28:09 +0000
Message-ID: <HK2PR04MB0995F1E36FF064CE210289EEE64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
References: <HK2PR04MB0995028C6AD9F658017BCB29E64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
	<20171011121345.GA5587@mbabyjoh-desk.ger.corp.intel.com>
In-Reply-To: <20171011121345.GA5587@mbabyjoh-desk.ger.corp.intel.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=umamahesh.y@hcl.com; 
x-originating-ip: [115.114.144.236]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR04MB0993;
	6:nWO8YT1i0qE8ZjVFSqtAla6FlgsUhOfJrqktge/lO5vhfIKqzKzQmu5hQ0+tKpMM09iUGktHjD6/mWatWPL3SVICyORCqVHCF3ut9hlJjIFHkTf4z5DpQuhnFC0PqZzimroQTQqvaDgTp82/fcF6frcyiPVDx89d9VDmiVhEN0hgx/Zi9JOulooanvQYF1yNqWaL8U+6tBZv6gIGrefSUAhX1kHEe/JVYKLrGIEThASSGLBcBJQ1zA/xsEcqD2gW6TAirtXH6jBR7ZmfnSJIMElvZX4gufZ8cq/o2tawP8hm486eYFgOfEHOF9K6f0cq91pRCoAB7O3ESDACzbNcqQ==;
	5:+VxNR++0QKxyVNoPfs5aRKNAcIMLo4P0vfZTW96wMcwJuQT7r09DKaVIah2k83yLXj6xOu/WyZaAjCk5l/0hvLa7RYP9zjlsDeQ8m6Xx9NOQz2dnNMbCvLEQ3zVZxPiuAjAtUlbDEZV9x1hJ05pHbA==;
	24:ELdKhRUGjKNAhTIadbEhRSshPGEEIaohdoSi01K/8a9CCzae0csC88Z1Zjvo6oG93371jBByWMPgUsqcQH/q9AEibeSH7A2js/mDXdHBw/A=;
	7:hndzkqs+G0NpIOTRWGXel2ZSD0+dvgaQFhAQ6/1wX+Gb5ixC7HLtVSk862C4tGxRKu5v8JmyZTxNVvgQ9JaW0Ac5gfBks/7mmaeRSNxCZaSToSHMOzhby+6tqGspSF/deKpbaUncOoZr6n+TT9xLhgzoUimwKUKSCXeURwk50IXCChGX+30+L1ZeruSKQDyRQNCCL7tVKX98M4UNMXyqFwFekysw9VQBjV095xjIG2I=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 0ce9bdd7-dc41-40f2-4909-08d510a388b0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:HK2PR04MB0993; 
x-ms-traffictypediagnostic: HK2PR04MB0993:
x-exchange-antispam-report-test: UriScan:(3501301888747)(228905959029699);
x-microsoft-antispam-prvs: <HK2PR04MB0993752B994EF051B644D8F4E64A0@HK2PR04MB0993.apcprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(10201501046)(3002001)(100000703101)(100105400095)(93006095)(93001095)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR04MB0993; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR04MB0993; 
x-forefront-prvs: 0457F11EAF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(346002)(376002)(13464003)(51914003)(199003)(189002)(66066001)(105586002)(7736002)(6506006)(2950100002)(25786009)(8676002)(97736004)(106356001)(229853002)(101416001)(81156014)(7696004)(81166006)(5250100002)(53936002)(74316002)(3660700001)(6916009)(33656002)(478600001)(6306002)(305945005)(6246003)(55016002)(68736007)(966005)(9686003)(6436002)(2900100001)(189998001)(5660300001)(99286003)(8936002)(14454004)(102836003)(76176999)(6116002)(3280700002)(4326008)(53546010)(2906002)(86362001)(54356999)(316002)(50986999)(3846002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR04MB0993;
	H:HK2PR04MB0995.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hcl.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2017 12:28:10.0198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR04MB0993
X-OriginatorOrg: HCL.COM
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test case in LTP in Yocto
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
X-List-Received-Date: Wed, 11 Oct 2017 12:29:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Maxin,

Thanks for the reply. Before sending it for review, I have to test via LTP/=
Yocto.  I am new to yocto /LTP, trying to understand how to add it.
It is that only way to add my files is through patch files?. =


Please suggest.

Thanks
Umamahesh

-----Original Message-----
From: Maxin B. John [mailto:maxin.john@intel.com] =

Sent: 11 October 2017 17:44
To: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Adding test case in LTP in Yocto

Hi Umamahesh, =


>Hi,
>
>Anyone suggest me how to add an test case in LTP (Linux Test Procedure) in=
 Yocto distribution.
>
>  Please suggest.

Prepare patch for Linux Test Project and then, update the ltp recipe by fol=
lowing the steps mentioned here:
http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#new-rec=
ipe-patching-code

You could also send the new test case to LTP mailing list (ltp@lists.linux.=
it) for review. Then, it could be included in the next release and will be =
part of the distro later (slow process)

>   Thanks
>   Umamahesh

Best Regards,
Maxin


::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------

The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.

---------------------------------------------------------------------------=
-------------------------------------------------------------------------


