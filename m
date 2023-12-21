Return-Path: <mwen@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECA80C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 04:15:26 +0000 (UTC)
Received: from mx0a-00622301.pphosted.com (mx0a-00622301.pphosted.com [205.220.163.205])
 by mx.groups.io with SMTP id smtpd.web11.44538.1703132124829769458
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 20:15:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ambarella.com header.s=com20210415pp header.b=Zsx5w5bP;
 dkim=fail reason="dkim: body hash did not verify" header.i=@ambarella.com header.s=selector1 header.b=WnZXkrnZ;
 spf=pass (domain: ambarella.com, ip: 205.220.163.205, mailfrom: mwen@ambarella.com)
Received: from pps.filterd (m0241924.ppops.net [127.0.0.1])
	by mx0a-00622301.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BL1duFj010961;
	Wed, 20 Dec 2023 20:15:20 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
	 h=from:to:cc:subject:date:message-id:references:in-reply-to
	:content-transfer-encoding:mime-version:content-type; s=
	com20210415pp; bh=z4A2VWJdPol+h7H1+eZPVUcEvrvf29Ng0r+2heIfGUw=; b=
	Zsx5w5bPEOddct7v+GLUnfGsDYn1a6XJqMwvBzthn+KLCNqYGMdPwGwnc8rc4R24
	h70T9iUHTRzjIzFMXrMmjlLNlKx7mSBlrwQjRzlKPdd+2XE+lkeE8v5qlalsFj6+
	1ZSlaksnKoclKi1s6dgfXxBg+E8Nj5sBgV8dop0a/bFLkEY4IPCCLXKkNTOScvX2
	puBk0kvOiIflVRtbjoE+mUr0QXSQ6tpFpwBroK4L3fy6xdzVESXJOnTlaXPuC/t9
	TL7F/kpFjAWGxPHtZkhCyjAjxXnmuFPZkcB8L4iy9or59r3Zb9/c2VWgo71ce83g
	dnnxBnKDoicciMGnhTlV3g==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-00622301.pphosted.com (PPS) with ESMTPS id 3v19rfjthv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 Dec 2023 20:15:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CEqRknGOlpwyuxFhLbD7Qpm25rNfx2GrZztZM7kFcWj9QG5ZuJ9+V81f3Yd4kEXkTwgmulsaFeZNRIk0d30ZQ9i9GAcqNitAikFgVimHcNldmrKvlNwLkRW0IZx3ftOW2lHmrTPAqy4RSsPNzJafsYUm6AGX1nkMHyiGQ5yFriKB4hqYgA4nPTfkChS/7IIl8ggqL0IbKOXibZZ/Z+N5O1rBnAxN9uXWv+4nsxudLRx2c0R6TO+tS1lin3KSPpMt9Vcv0Ls9tcrQ+1oGcu5Lh1FcvePg93L+e9YdJZrXgPRTWAAf5L9cuZbqRwQ2mUrawW5IuT0cTgUOMHV6IxyJ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4cPCyhC3H83iOJULRzOlSEsbjBkPFst73d46hRiacTw=;
 b=ILdPN2o3mx291O8sRiwXh8FTqMUWAqRzRY6rzYWwFt3fFIzIGXUE2teMk2YJjYuoVkJ1wepz1QsHZwT9fgftgbx/uFwMVPAblhE+akgb5EsWj2hZh4wPzTjdOcC+7TU0w9+SyaxTnizFHwn7fTPyAx3I6gEuTXTWv+Fa1KM9W4H8nBgaQS8CwZWKOM8v65IeFTIxwpT16K/Or2JbdwRWgEoCjQ8gKUrlJvCptuG2uIRuEFJqe/MvUqCMWDpyH/4ElRC+4qvlIL9UMapqRTVM70M9QpO7oNZX+Qlajeuz2FQ2dNpIFXctw5uU7Wi1sDOvsMhuMz/RCc9IhxobIICeUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ambarella.com; dmarc=pass action=none
 header.from=ambarella.com; dkim=pass header.d=ambarella.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4cPCyhC3H83iOJULRzOlSEsbjBkPFst73d46hRiacTw=;
 b=WnZXkrnZP5fr/LGV8e+4Fi2CXhZRfzScpF46shl09FXo9qNgQ+ESe0dUVD23xhfiCb3kXnHzZjxqwySzliF36PrEjSF1TV/S9PhcBPZTrQLL2fzEyjfEG+6ba9L7WeaYGKMA3Ga9XoI1vFg06sRIg/W+AfOPCyn1EyoyyPdurvWWV0Tgkb0rwjptAhP5apMJpopWEADOu+SAqvGCvJkjxVR/P764QXqycIl1TZpsqweCMrhitWXs2qpJcynI0hrXCeIQF1jtQuf64cDGJZdrYR50V7QIBnkOwrAyNH8wgn9r+dXJvVqsXUtnEjBfALvqSUsp1xYPRgwJnUc5V+uCWQ==
Received: from MN2PR19MB3440.namprd19.prod.outlook.com (2603:10b6:208:18c::18)
 by BL1PR19MB6084.namprd19.prod.outlook.com (2603:10b6:208:39f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Thu, 21 Dec
 2023 04:15:16 +0000
Received: from MN2PR19MB3440.namprd19.prod.outlook.com
 ([fe80::b5f4:acc5:587:59fd]) by MN2PR19MB3440.namprd19.prod.outlook.com
 ([fe80::b5f4:acc5:587:59fd%5]) with mapi id 15.20.7113.016; Thu, 21 Dec 2023
 04:15:16 +0000
From: Ming Wen <mwen@ambarella.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "ross.burton@arm.com" <ross.burton@arm.com>,
        Song-Jun Han
	<sjhan@ambarella.com>, Jian Tang <jtang@ambarella.com>
Subject: RE: [EXT] Re: [yocto] do_populate_sdk_ext failed
Thread-Topic: [EXT] Re: [yocto] do_populate_sdk_ext failed
Thread-Index: 
 AQHaLnmJAax5T/WxLE+YEJyb8sSI4rColyyAgAAIeICAAAHgAIAIvQCAgAFN7oCAAHtQoA==
Date: Thu, 21 Dec 2023 04:15:16 +0000
Message-ID: 
 <MN2PR19MB3440B873BD88093542C6358ADD95A@MN2PR19MB3440.namprd19.prod.outlook.com>
References: <9B6E1D5F-50FB-408B-9A16-AFFC956FB49B@arm.com>
 <24207.1702552293492620689@lists.yoctoproject.org>
 <75C93DB1-34A5-49D0-9912-0E937B111495@arm.com>
 <CH2PR19MB3429DB00CE138E0B42C57172DD96A@CH2PR19MB3429.namprd19.prod.outlook.com>
 <CANNYZj_apJTWSZAEASHSxGaXfs2oFQBb66gwsFpR9EesCPJ0=Q@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_apJTWSZAEASHSxGaXfs2oFQBb66gwsFpR9EesCPJ0=Q@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR19MB3440:EE_|BL1PR19MB6084:EE_
x-ms-office365-filtering-correlation-id: 505e9909-745d-4c3a-094b-08dc01db6fe0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 N++IMKLqoIdFhmO6ie9pjHWi9b3q3kK0gELFTDO/lX9XOP9vBBamJdterlREcv+s740ROIUMU4nRawSiC+Fu7WoCqUU7AoyDRU/twMcKYgMv+tjLIBp2KLfYOPRJe/+oTACzBloMPMhKPg9yInK3oBdM1qGYRmchhsdH23iG9BHXJmzLKRkgpL0OIgq8nQaTfsUcNz8GwDHYCA6ecN9g2ofkMsrf5mvGr38l6eK04s1ebjj6hEKSyCj5qRC7SAOmESXH+kxPF0P4/XEnWdWt8eOEEu6XJiW7ZPD5iFmpJZ//16qb2GQBWlZQFLDtFWFP8C7npvgMX3VJ+DAP9ZrAIkomQck6B28nZN1R65VbSOtR2gvuhwDRPPYsGmktsAgeHFV8mbe9kMtBWkgmGlEeFCxR4ZP+Lox7JsW0ax+kQGu51P/6rF6SNJJNoJv/6b9plxmN8gRYAyM8fYlyuDXZHl3fPBdKXbYuUyPSby+1yhZ0MShbuc1Brdizy9bBOadNgRL+fmx/NBJTdFK1EekiJgytYn9J2ebkfB4ND5gFMHB+1r03TGrIpAMPz0ODnellPzDnlcVJIoT3g6NrE58Evgoj1LHNCex6Mr/LE0N/5LiJxDA8ZbJHN65ITs1WXKvDNQpQ/K63wPbjBpDozVpQJMbhcpCPZZez5idPSeyX/Rg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR19MB3440.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(376002)(39850400004)(136003)(396003)(230273577357003)(230173577357003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(55016003)(38070700009)(66899024)(26005)(53546011)(76116006)(33656002)(66446008)(66556008)(38100700002)(122000001)(66476007)(66946007)(86362001)(110136005)(4326008)(9686003)(83380400001)(64756008)(107886003)(7696005)(6506007)(5660300002)(8936002)(71200400001)(41300700001)(54906003)(8676002)(52536014)(316002)(2906002)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MUd1ZmhJQmU1QnBISUlEOXFrYzE3dUZva08xRzFGcTJoTkRnR3hxNmtOdHRM?=
 =?utf-8?B?ZWtQTHpCcElOdGtiejM2ODFIYXlGOXdxcEwzQnVuc2NTMC8vZHQxdTF2NFFs?=
 =?utf-8?B?dTA0ZEdnK2xFMEFFMkUvWTloYnhLZ0VuVFlkVnJmTTJLdHgzV0VIN3djLy81?=
 =?utf-8?B?Smo4VnFhbTNuTFVPUkgrMVdSUUlwSnNyOW9YaE9jNldBbjVNSjVwQXFYSFlw?=
 =?utf-8?B?K09JcWtFMmloWWRZVEVNcHF2MlUva3ByMml4dEpTSHo2dTFqSFM2Z2ZzbDRX?=
 =?utf-8?B?NWlFRm1UaDJqVXlJM01RdjhJYkhyNm5mTDJmNkdUSUs1VW12dEZLY25UVWZm?=
 =?utf-8?B?SjIwTS9CVDZYbWJ3RHB5T2NJenJ4RVA4STAyK3FMV2NvbDQzdHRNZmhSU0Ix?=
 =?utf-8?B?TTd6cnZMM3ZlUWRBZ1JBNWZiTUN1SWk4Nk5zbE5Hdy9Sc0Zua2dWd29lZS9K?=
 =?utf-8?B?azM3dzdnVTBPWElJRVhqMU44K2hadlJJZUxwUnM3TWpxNDliTXdGb0gwQmNJ?=
 =?utf-8?B?bktUOERMYnVoZm56aHNKaXhzYTlSNEs4cnBsUmhOdDZhdE9nMDNtcTF5ZUdQ?=
 =?utf-8?B?aHFtRzV3ZEdVK0pPUkNEazhpRG9vR3BqcXluWkN3dlJJcEVwa2Jzd3RRZjgr?=
 =?utf-8?B?amxWeU9DTmVkMldGWGVFSmFKVUVLY3Y0SUZnNkV4NmprcVBpeXQraHdTWExB?=
 =?utf-8?B?YnR6SllkQ2NoUitLUk1ITVZCZlQyeEExY2NCcmFhelhkR1dCYjVGSXMrNnRN?=
 =?utf-8?B?OXBaSmx2U2JVVU1kdk82aUdBaVZWK1RHVThDRC9WMEhvWUJhK1BxQlpPazF2?=
 =?utf-8?B?NkxUT1VUdGlTSC9TdENMN3pnL1RNZ3V3NDZZNlZHb1ZZdk5pYjNyVHVPbUpx?=
 =?utf-8?B?a29lazROVUJrZ1JQRGJ1OWUzVjZXTmc0Q1JWempQRHBSZmZXYnlscmZTd3lz?=
 =?utf-8?B?NU41TUVZRWRlZDBZTEJJdno3QWFDL2pYWUtkVzRpbkZ0d1VkMmh1R0tkeko1?=
 =?utf-8?B?WmhYWFZmMjdQamtpMGk3Y3NpSDd6a0c3UGQ1TWVFaElXMUg5VC8vQmZELzJw?=
 =?utf-8?B?SGpIVEh2elVBYUF5Z3U2S2RTcEhPUjBYS3c4bS9sdkxDb2VyVGJFb29PMEJz?=
 =?utf-8?B?Y3RDVXpWM0lzSFR1djVyWDh3NHhuSTlJL3hJQnlKVmJLelN1cDRNZWJSY0JS?=
 =?utf-8?B?Njh0K3JzamNSTWRmRUVXcit3eWJFUjJaa1VWcmRPa2NnWWR5SlBjRCtoOHg4?=
 =?utf-8?B?NElXY2J1YlFUQXB2VXNJT3puVVZVeHZTQU5RVzYrUGNaeUJDV0FXWlFiR0Mv?=
 =?utf-8?B?YjdZcHNPSm9YNVNTUWdKeFV4YUV2RlZqRFZvWk45QVZEaWNWVVZ3RWtsSkRR?=
 =?utf-8?B?K1FOa2dqL3hINEpVMVN2K1dsSkJzY2dGZk9GdGtWLzFpNjRsMDFhbjBxNEdz?=
 =?utf-8?B?Umg1dWc0dzY2S3RNVWNVYjNLM2VQYVd0TlVndCtQTFhBQzdaSUx3cSs3em9s?=
 =?utf-8?B?aTZhZlhUN1VjQmZRQkJIVHYvNjJla3lYT1gxbCtZKzB6TXQ0YWJoMW9pcHoy?=
 =?utf-8?B?Mmx6SktKZDZHVTYraEphZTBwa1hwNUUraEdVNTl0WGQ5b3R5NVo3SGVRWWww?=
 =?utf-8?B?U2FnYXRSTmU1Unh6eHJ2aFUrNEVQRVF1ZDlVRlZ3L1R2dEhUM3MwZytpK0Nt?=
 =?utf-8?B?YWF2eHJvNUg4eU9FNXEybG1XUVdrQ1Zmamx6SmtmSVRaeDRjaGlkRTFJbXor?=
 =?utf-8?B?SEV3eXZiWU1lVUszRnZrY0VHVzlXSjhlNTdRNExTUlp1ejlXWVkrQWEwV3dR?=
 =?utf-8?B?d0pDcEU3aXhrOUdaWWpNbmVSejdIWURDNEdCYTFDVHRESC93M0ZhKzRVdEM0?=
 =?utf-8?B?WVF5R1hzbFhWaVRJMlJ2Q0hNdnVJYzFsSndvUHhJYnY0cGFUY0FZclo0T1NV?=
 =?utf-8?B?TXo5WUR5djVlY3pMWEVvQTlRYzhFaDVSNitMVHBlY2NiR1Q2MDhGMHoxQjli?=
 =?utf-8?B?ZnZFQWVKeU5oS0h6dDg2WWgrd0syME80Z3gxVnN5aldwQ3BwYmE1cllLSzRJ?=
 =?utf-8?B?QjZaUnRjbnZkRkhCeC9GRTc0OXJtVVJpUDA2VkhkMDFJRmZ5bWdDUTVVOHhB?=
 =?utf-8?Q?OfAK3im+pyveXjjxlS6z0xtH1?=
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ambarella.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR19MB3440.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 505e9909-745d-4c3a-094b-08dc01db6fe0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2023 04:15:16.5723
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ccd3c8d-5f7c-4eb4-ae6f-32d8c106402c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DR0Igs7ZFb3ZNJfS79+HjL2yiIQwwrthlXXtCb19NNSIAX0F4Qy/qCVw1+lCfTlJNOBz5j+/ujDzWnbNge/90Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR19MB6084
X-Proofpoint-GUID: F5Lm_klw6imCSaDs_fnVja0ZMZ13jh7F
X-Proofpoint-ORIG-GUID: F5Lm_klw6imCSaDs_fnVja0ZMZ13jh7F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 malwarescore=0 adultscore=0 phishscore=0 mlxlogscore=999 clxscore=1011
 impostorscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312210028
Content-Type: text/plain; charset="utf-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 04:15:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62003

SGkgQWxleDoNCsKgDQpOaWNlIHRvIG1lZXQgeW91IGFuZCB0aGFua3MgZm9yIHRoZSBjb21tZW50
cy4gRnVsbHkgdW5kZXJzdGFuZCENCg0KV2UncmUgbm90IHRyeWluZyB0byBwdXNoIHlvdSBmb3Ig
dGhlIGZpeChkZWZpbml0ZWx5IG5vdCkuIEluc3RlYWQsIHdlIGFsd2F5cyBhcHByZWNpYXRlIHlv
dXIgZWZmb3J0cyBvbiBicmluZ2luZyBZb2N0byB0byB1cy4gUmVhbGx5IHNvIG1hbnkgUiZEcyBs
b3ZlIGl0LiBJdCBpcyBldmVuIG11Y2ggbW9yZSB0aGFuIG91ciBleHBlY3RhdGlvbiB3aGVuIHdl
IHRyaWVkIHRvIHdlbGNvbWUgWW9jdG8gdG8gb3VyIFNESyB5ZWFycyBhZ28uDQpIZXJlLCB3ZSBq
dXN0IHNlZWsgZm9yIHlvdXIgaGVscCB0byBzZWUgaWYgdGhpcyBpc3N1ZSBoYXMgYmVlbiBmaXhl
ZCBpbiB5b3VyIGxhdGVyIExUUyBwb2t5LiBJZiBub3QsIHRoZW4gdG8gc2VlIGlmIGl0IGNhbiBo
YXZlIGEgY2hhbmNlIHRvIGJlIGZpeGVkIGluIGZ1dHVyZSB3aGVuIHlvdSBoYXZlIGVub3VnaCBy
ZXNvdXJjZS4NCg0KVGhhbmtzIGFnYWluIGZvciB5b3UgYW5kIFlvY3RvIQ0KwqANCkJlc3QgUmVn
YXJkcyENCk1pbmcgV2VuICjpl7vmmI4pDQpTREsgVGVhbSB8IEFtYmFyZWxsYSBTaGFuZ2hhaQ0K
DQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQWxleGFuZGVyIEthbmF2aW4gPGFs
ZXgua2FuYXZpbkBnbWFpbC5jb20+IA0KU2VudDogVGh1cnNkYXksIERlY2VtYmVyIDIxLCAyMDIz
IDQ6NDAgQU0NClRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnOyBNaW5nIFdlbiA8bXdl
bkBhbWJhcmVsbGEuY29tPg0KQ2M6IHJvc3MuYnVydG9uQGFybS5jb207IFNvbmctSnVuIEhhbiA8
c2poYW5AYW1iYXJlbGxhLmNvbT47IEppYW4gVGFuZyA8anRhbmdAYW1iYXJlbGxhLmNvbT4NClN1
YmplY3Q6IFtFWFRdIFJlOiBbeW9jdG9dIGRvX3BvcHVsYXRlX3Nka19leHQgZmFpbGVkDQoNCk9u
IFdlZCwgMjAgRGVjIDIwMjMgYXQgMDE6NTEsIE1pbmcgV2VuIDxtd2VuQGFtYmFyZWxsYS5jb20+
IHdyb3RlOg0KPiBTb25nLUp1biBhbmQgbXlzZWxmIGFyZSBpbiB0aGUgc2FtZSB0ZWFtLiBXZSBz
cGVudCBzb21lIGVmZm9ydHMgdG8gDQo+IG1ha2UgaXQgaGFwcGVuIGZvciAiIGRvX3BvcHVsYXRl
X3Nka19leHQiIGZpbmFsbHkgYnkgZml4aW5nIHNvbWUgaXNzdWUgaW4gUG9reSh3ZSdyZSB1c2lu
ZyBsYXRlc3QgS2lya3N0b25lIDQuMCkuIEJ1dCBhcyB5b3UgbWVudGlvbmVkLCB3aGVuIHdlIHRy
aWVkIHRoZSBnZW5lcmF0ZWQgZVNESywgd2UgZm91bmQgdGhhdCBpdCBzdGlsbCBjYW4ndCBnbyB3
aXRoIGV4dGVybmFsc3JjIGVuYWJsZWQuIDooIFdlJ3JlIHdvbmRlcmluZyB3aGV0aGVyIHRoaXMg
bGltaXRhdGlvbi9pc3N1ZSB3aWxsIGJlIHJlc29sdmVkIGluIHlvdXIgbmV4dCBMVFMgU2NhcnRo
Z2FwICg1LjApLiBPciBpdCBpcyBzdGlsbCB3YWl0aW5nIHRvIGJlIGZpeGVkIGluIGZ1dHVyZS4g
SWYgaXQgaXMgdGhlIGxhdGVyLCB3ZSB3aWxsIGZpbGUgYSBidWcgZm9yIGVTREsuDQoNCkhlbGxv
IE1pbmcsDQoNCkkgaGF2ZSB0byBzdHJlc3MgdGhhdCBZb2N0byBpcyBhIGNvbW11bml0eSBvcGVu
IHNvdXJjZSBwcm9qZWN0LCBhbmQgbm90IHlvdXIgY29tbWVyY2lhbCBzdXBwbGllci4gTm9ib2R5
IG93ZXMgeW91IGEgZml4LiBJZiB0aGluZ3MgZG8gbm90IHdvcmsgZm9yIHlvdSwgaXQgaXMgeW91
ciByZXNwb25zaWJpbGl0eSB0byBmaW5kIG91dCB3aGF0IHNvbHV0aW9ucyBjYW4gYmUsIGFuZCBp
bXBsZW1lbnQgdGhlbSB3aXRoIGNvZGUuIFlvdSBjYW4gb2YgY291cnNlIGZpbGUgYSBidWcgYXMg
YSB3YXkgdG8gZG9jdW1lbnQgdGhlIHByb2JsZW0sIGJ1dCBpdCBkb2Vzbid0IG1lYW4gdGhlIGJ1
ZyBpcyBnb2luZyB0byBiZSB3b3JrZWQgb24gYnkgc29tZW9uZSB3aXRoaW4gcmVhc29uYWJsZSB0
aW1lLiBUaGF0IG9ubHkgaGFwcGVucyBmb3IgaGlnaCBwcmlvcml0eSBpc3N1ZXMgdGhhdCBhZmZl
Y3QgbWFueSBwZW9wbGUsIGFuZCB0aGlzIG9uZSBpc24ndCBzdWNoLg0KDQpUaGFua3MsDQpBbGV4
DQoNCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMNClRoaXMgRVhURVJOQUwgZW1haWwgaGFzIGJlZW4gc2Nhbm5lZCBi
eSBQcm9vZnBvaW50IEVtYWlsIFByb3RlY3Qgc2VydmljZS4NCgoqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqClRoaXMg
ZW1haWwgYW5kIGF0dGFjaG1lbnRzIGNvbnRhaW4gQW1iYXJlbGxhIFByb3ByaWV0YXJ5IGFuZC9v
ciBDb25maWRlbnRpYWwgSW5mb3JtYXRpb24gYW5kIGlzIGludGVuZGVkIHNvbGVseSBmb3IgdGhl
IHVzZSBvZiB0aGUgaW5kaXZpZHVhbChzKSB0byB3aG9tIGl0IGlzIGFkZHJlc3NlZC4gQW55IHVu
YXV0aG9yaXplZCByZXZpZXcsIHVzZSwgZGlzY2xvc3VyZSwgZGlzdHJpYnV0ZSwgY29weSwgb3Ig
cHJpbnQgaXMgcHJvaGliaXRlZC4gSWYgeW91IGFyZSBub3QgYW4gaW50ZW5kZWQgcmVjaXBpZW50
LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGJ5IHJlcGx5IGVtYWlsIGFuZCBkZXN0cm95IGFs
bCBjb3BpZXMgb2YgdGhlIG9yaWdpbmFsIG1lc3NhZ2UuIFRoYW5rIHlvdS4K

