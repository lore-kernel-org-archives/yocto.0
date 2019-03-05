Return-Path: <prvs=4967f48b94=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDA37E00CE8; Tue,  5 Mar 2019 08:31:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.158.57 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.4 KHOP_DYNAMIC Relay looks like a dynamic address
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 1550 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Mar 2019 08:31:35 PST
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com
	[148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1109E00CD5
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 08:31:35 -0800 (PST)
Received: from pps.filterd (m0098778.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x25FprZg023366; Tue, 5 Mar 2019 10:05:43 -0600
Received: from nam03-dm3-obe.outbound.protection.outlook.com
	(mail-dm3nam03lp2058.outbound.protection.outlook.com [104.47.41.58])
	by mx0b-00010702.pphosted.com with ESMTP id 2r1n29hd1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 05 Mar 2019 10:05:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=wFNbuRYHAZ9gNnlz6lJy0pE9gHFG0PWwkGNnZ9/2ppA=;
	b=iO1k5Q7i0Uu3LkjrvUlt46ec6s82NQ8NzSmP7QZb9fIlo722go+r2j7gv0UloW3ciwDuNa09VY+d6j4gdYKtRop/pAe2mJRcog75SOWosjXPp8s3zcSONkaUrfU73CSk4x4PsODmqzCPtsZUWyELEahmh+ZOPYVlQSYwHHHzlqc=
Received: from SN6PR04MB4221.namprd04.prod.outlook.com (52.135.71.147) by
	SN6PR04MB4671.namprd04.prod.outlook.com (52.135.122.85) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1665.16; Tue, 5 Mar 2019 16:05:40 +0000
Received: from SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::9d2b:f027:875c:974]) by SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::9d2b:f027:875c:974%2]) with mapi id 15.20.1665.019;
	Tue, 5 Mar 2019 16:05:40 +0000
From: Alejandro Del Castillo <alejandro.delcastillo@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>, ChenQi
	<Qi.Chen@windriver.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [EXTERNAL] [opkg-devel] [yocto][opkg-utils] Question: why
	update-alternatives from opkg-utils chooses /usr/lib to hold database?
Thread-Index: AQHU0xjl1eEiVp9Fk06yHzBXAoDBg6X9NFoA
Date: Tue, 5 Mar 2019 16:05:40 +0000
Message-ID: <90ababe5-0ec7-ccb6-9308-19660f573930@ni.com>
References: <6323ed1d-0e39-4d07-e691-5e3e07f007f9@windriver.com>
In-Reply-To: <6323ed1d-0e39-4d07-e691-5e3e07f007f9@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0102.namprd05.prod.outlook.com
	(2603:10b6:803:42::19) To SN6PR04MB4221.namprd04.prod.outlook.com
	(2603:10b6:805:30::19)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [130.164.62.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dd30881-40ad-494b-1300-08d6a18469dd
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600127)(711020)(4605104)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:SN6PR04MB4671; 
x-ms-traffictypediagnostic: SN6PR04MB4671:
x-ms-exchange-purlcount: 1
x-microsoft-exchange-diagnostics: =?utf-8?B?MTtTTjZQUjA0TUI0NjcxOzIzOmxPUXpUYW5mN1llek5ZSW9aZERDeTU5U0Vx?=
	=?utf-8?B?SDhIZkR4WGJtMUE3aGlTbDV2Y29UOWpjMzV3Q0F0czdXdVk0dmZvZExQVDlF?=
	=?utf-8?B?cmQwb2d4K0JibHhmdGxIKzdQeWpFOG5KNlpuclhEYWFjY3QxVEZseDJYVitk?=
	=?utf-8?B?N1l3WCtVd3JSV0s2NUVFZ2VtWHc4N2hFeXFZQkZWZGYwZHh5TzhiYU05SzNE?=
	=?utf-8?B?c2xZTWt4SXJSRmdXNnRWQ0JvN1ZPR0hvVlFOSnhPcnhDWFJRVk5pQUNTSUVY?=
	=?utf-8?B?STZRMkx0Qi9XaEJJRGZtZ2M2dlpEaHRwZU9RVU95Q2JrQzV5ZFhlYm4xQXRh?=
	=?utf-8?B?c1VBWDBwZHVMQUxKdGZjKzZLUSsrS2JVQmJGSXRLc3dWOFBjdy9IelU4VUlP?=
	=?utf-8?B?MmZrVXBpKzN2eU1CdkFRYWZwQWcxeEZ0Z3p1dS91dXQ5UVVnL1UrZ240YnlZ?=
	=?utf-8?B?N1lqOFA1RTZ2OFNtTVRxRWdCMThtV0x4Q0xBZEwxL3lyeG5KRDNZZ2RZY1k4?=
	=?utf-8?B?TTJ4Z0M2bW9LendkM2RLY0pLWVNoZmRURjBZdzd0MzFubitWYjlNZnpiVG43?=
	=?utf-8?B?WEFLZHlVYTJGRDl3Ym4rZFZpdHNhcFNVSzVhdTRrejRNWldRWlpiQ0k3bVVy?=
	=?utf-8?B?L3E1RWk2d2xaNi91ZUFPMkJQcmRRSEU3aWQrZ3Yxa0xvbXZFSlE4WS9JWm1R?=
	=?utf-8?B?Qmc1R0lueldHbWRVSDE0MWk5Rys1K2pNdU8vNytyZjZpb2VyS0VIbGcyT1JZ?=
	=?utf-8?B?OWNwb21XVDhIUy9Fckx3aHlkOERIemwrSDUwQlA4NUZSbEhtbEhBWTdyTEd6?=
	=?utf-8?B?dnMzOElJS0g1NFZKMzBMZjN2Z0xNbEFiZnBjOUp5VHBxTk13QUJyVFNscmsx?=
	=?utf-8?B?dHNSdkdma0dSemN2a2pRb3E2OHBwVTJYOFg4cis4RlVBd2hCQTJPbzVIaHJa?=
	=?utf-8?B?UERtWmNTYWxUbzd6S1YrSytlTHRoOGJvdkhGUEErWlpuQStvRWRENzVZQmY2?=
	=?utf-8?B?bkNRaU5HNkNDV2VvTVlrOHhHaFRsYWY4N3B3dHJUNjR5WHdaU1ZRWUxKOFNj?=
	=?utf-8?B?MWtqK21IelRFSUhSbUpENzRFWWJzMElmSFNwb3VDMm1KWEUvTUZ3VXNDUk1T?=
	=?utf-8?B?R2RPMGJXWnJ0ZW1ZakMxNEpsR3lkTEdyQjE1dDd5MzdFSDBXaVZMSWxsRFc0?=
	=?utf-8?B?ZTZCZTVmdGFmS3VuUklzTUtnRzIyTXI5Vkc1RGpDNFY0WEp2cTdZT04yd2k5?=
	=?utf-8?B?MDJZYkRNK0hBY2xCVVJhL2RKTDk2ZzlYb3gxVnc2NHFBb2N4ZVBMMCs3VDEw?=
	=?utf-8?B?NnVhOFc2Yno2TDFFcVZaMzc2NVhsa1cwNHo2R0Y2RTNBN0NyOFpxUjVwVWFr?=
	=?utf-8?B?TUxabHZ0UkxibGp2bWhMYzlwS1VGYktpTE9rYnNaMjB1K3ZXU3pVT3FZN0pt?=
	=?utf-8?B?RXI5VGNXK0Z3UVBmYW1BZzBtQjEzdVRYbEU0T3c0d2hjWHNxWnpNNG12ZkxY?=
	=?utf-8?B?RXI5djIrRGk4QXB0VDRKMXJ4YnBDSUlhZjNIbjMxTmY0NkRXSGJkQlE5aFBo?=
	=?utf-8?B?RWlzV3BjSk5FUlQwazhNVTNqOEw2UDBybEZFMkJ0d3FaMEVuN2tDZENiK3Fh?=
	=?utf-8?B?eW16Skw1OTBzV2o2UXNTbUdrOW9vckUyd3phTDdTTVRacDV0eDlJMDVvbm5y?=
	=?utf-8?B?TFdxd0N1cUUvTHdkcFJBZVN5Zi8wc3VlSXdKaGg5SGZuSEFIVDU2b09TcHRN?=
	=?utf-8?B?WUNUNG90QVRzRjMzeG1NVEQySEgvNGtqME1nU0dBQWk0RElUdTJRaHA4ODNy?=
	=?utf-8?B?UlQwK1h3UXp3NVdBN0pjeER2Sk9Gd0pudTkybmZwTjJBYkRIZFZrKzFoRU1x?=
	=?utf-8?B?eUlUT0tOUytpb3R6aFBpWkdBSThvTG9icERNd2xWd3BaKzVMWHB2MnQxcWVp?=
	=?utf-8?B?RXgvaEg1T3NXejludkVNeW9yc0QrVGN6WnJOaGJLZ241ZTNFUHYrNUZlTDIx?=
	=?utf-8?B?bUFxbkltVnMzVDlHaDN4bU5uRkV6VDhIYzRVUT09?=
x-microsoft-antispam-prvs: <SN6PR04MB46715828A7BCCF1BDC10C7F986720@SN6PR04MB4671.namprd04.prod.outlook.com>
x-forefront-prvs: 0967749BC1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(376002)(366004)(396003)(136003)(346002)(189003)(199004)(53754006)(256004)(3846002)(6116002)(6512007)(14444005)(4326008)(6246003)(478600001)(2906002)(53936002)(25786009)(2616005)(106356001)(105586002)(476003)(10710500007)(486006)(966005)(446003)(7736002)(66066001)(14454004)(316002)(52116002)(15650500001)(99286004)(7110500001)(386003)(6506007)(76176011)(2420400007)(53546011)(31686004)(305945005)(110136005)(97736004)(36756003)(54906003)(186003)(6436002)(71190400001)(229853002)(71200400001)(11346002)(6306002)(2501003)(102836004)(6486002)(26005)(81156014)(81166006)(86362001)(31696002)(4744005)(8676002)(68736007)(8936002)(5660300002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4671;
	H:SN6PR04MB4221.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x3zwimQm2Rm+Pe6J+Ypjek3RHEOf1N9h1XK6uOMZSWnKtoRRZApnzOGfKuwDBcHAXYTEuyxWu68OAqHZUHtWoamaO8pQYiyiVEIqqrIVCh58robiz/vZ4LkBSlkROFJd3MatT6suUBpoaAld5g8d7qRt/uErfm1BMBS135xAmpMZ8epnsh7AGqtfP4jEuD9ekv21yMVtClYBHNM7eoh5/C4qGvQIYtD82C+QzFZoiqg4wpN5vCRCkPMWvXll9apFfcFlG3E9HGJxp9C293Ge3DJKrnt/2IJ8m4cOz+n4ohkQMcrKPg5/qeEDJpi4/akdow6V06G5eYcP1sX9szwzJQFCYJerz79GRF0GgJnuvhsNze9d63WPwKNGXEe7rwuReoTad3m2KgWJJmLsDPaVaAY6E2vIVFprsWAdH20ltyI=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dd30881-40ad-494b-1300-08d6a18469dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2019 16:05:40.8228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4671
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-03-05_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=30 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1903050104
Subject: Re: [opkg-devel] [opkg-utils] Question: why update-alternatives from opkg-utils chooses /usr/lib to hold database?
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
X-List-Received-Date: Tue, 05 Mar 2019 16:31:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FEC3CC629E76BC44985ADA76027CEDBF@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

DQoNCk9uIDMvNS8xOSAxMjoxMSBBTSwgQ2hlblFpIHdyb3RlOg0KPiBIaSBBbGwsDQo+IA0KPiBS
ZWNlbnRseSBJJ20gZGVhbGluZyB3aXRoIGlzc3VlIGZyb20gd2hpY2ggc29tZSBkaXNjdXNzaW9u
IHJhaXNlcy4NCj4gSSdkIGxpa2UgdG8gYXNrIHdoeSB1cGRhdGUtYWx0ZXJuYXRpdmVzIGZyb20g
b3BrZy11dGlscyBjaG9vc2VzIC91c3IvbGliIA0KPiB0byBob2xkIGl0cyBhbHRlcm5hdGl2ZXMg
ZGF0YWJhc2U/DQo+IEkgbG9va2VkIGludG8gZGViaWFuLCBpdHMgdXBkYXRlLWFsdGVybmF0aXZl
cyBjaG9vc2VzIC92YXIvbGliIGJ5IGRlZmF1bHQuDQo+IElzIHRoZXJlIHNvbWUgZGVzaWduIGNv
bnNpZGVyYXRpb24/IE9yIHNvbWUgaGlzdG9yaWNhbCByZWFzb24/DQoNClVwZGF0ZS1hbHRlcm5h
dGl2ZXMgdXNlZCB0byBiZSBvbiB0aGUgb3BrZyByZXBvLiBJIGRpZCBhIHNlYXJjaCB0aGVyZSAN
CmFsbCB0aGUgd2F5IHRvIHRoZSBmaXJzdCBjb21taXQgb24gMjAwOC0xMi0xNSBbMV0sIGJ1dCBl
dmVuIHRoZW4gDQovdXNyL2xpYiB3YXMgdXNlZC4gSSBjYW4ndCB0aGluayBvZiBhIGRlc2lnbiBj
b25zaWRlcmF0aW9uIHRoYXQgd291bGQgDQptYWtlIC91c3IvbGliIG1vcmUgcGFsYXRhYmxlIHRo
YW4gdGhlIERlYmlhbiBkZWZhdWx0Lg0KDQpNYXliZSBzb21lb25lIHdpdGggbW9yZSBrbm93bGVk
Z2Ugb2YgdGhlIHByZXZpb3VzIGhpc3RvcnkgY2FuIGNoaW1lIGluPw0KDQpbMV0gDQpodHRwOi8v
Z2l0LnlvY3RvcHJvamVjdC5vcmcvY2xlYW4vY2dpdC5jZ2kvb3BrZy9jb21taXQvP2lkPThiZjQ5
ZDE2YTYzN2NjYTBjZDExNjQ1MGRmY2FiYzRjOTQxYmFmNmMNCg0KPiBCZXN0IFJlZ2FyZHMsDQo+
IENoZW4gUWkNCj4gDQoNCi0tIA0KQ2hlZXJzLA0KDQpBbGVqYW5kcm8NCg==

