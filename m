Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2672.1587583108851632671
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 12:18:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: hpe.com, ip: 140.211.169.56, mailfrom: prvs=03816e55a0=sean.mckay@hpe.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40DAEE01A4C; Wed, 22 Apr 2020 12:18:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [148.163.143.35 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2811 seconds by postgrey-1.32 at yocto-www; Wed, 22 Apr 2020 12:18:25 PDT
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E3A6E01A4A
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 12:18:24 -0700 (PDT)
Received: from pps.filterd (m0148664.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 03MIG2qQ000672;
	Wed, 22 Apr 2020 18:31:34 GMT
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
	by mx0b-002e3701.pphosted.com with ESMTP id 30jqsk1wa5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Apr 2020 18:31:33 +0000
Received: from G1W8106.americas.hpqcorp.net (g1w8106.austin.hp.com [16.193.72.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2352.austin.hpe.com (Postfix) with ESMTPS id 643699B;
	Wed, 22 Apr 2020 18:31:33 +0000 (UTC)
Received: from G9W8674.americas.hpqcorp.net (16.220.49.0) by
 G1W8106.americas.hpqcorp.net (16.193.72.61) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 22 Apr 2020 18:31:01 +0000
Received: from G2W6311.americas.hpqcorp.net (16.197.64.53) by
 G9W8674.americas.hpqcorp.net (16.220.49.0) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 22 Apr 2020 18:31:00 +0000
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (15.241.52.11) by
 G2W6311.americas.hpqcorp.net (16.197.64.53) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Wed, 22 Apr 2020 18:31:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fDp2S9+N6YSCz8wJnTtG/f6Kc7e3SMwQQ6eeRbd6syglzhwcGgbodrbpextCDDm6ZaQPmKTQtIlOcONKiFRtnNwWbmvYjhMhgoSb1JNt1RPUSD+pc4w/vqOGmTIX2LygQT2oAFOSVxbqYP0QrxzvxRZHz/5fKdOH0vI172I3o04YXyxQ3etARKsjc+6gkDsiIZNBtu4WY4kkBzd2RR1lVFuMyqMjzc0dUCyHRZlai7+tT7Rg+WtQWLbffCAc7dywV2chHm47mgl8+Z9uB7TJ6FN4trvM6dWi/0q4r0/w+CYxexUL/XO4dcncWm8kBm/oAPMGgauIi9Qrt1ia0HKwSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5c6OD8lQWQyZGOJ/KTcg/brWmHUrVENr3QqtWi/KTU=;
 b=Q8j3uhopKj67hOxexxgjYh/ewSKabpSxDZnBtuIyhZYK2YwjT5S7k4TnM/HLzxMLzcN4E5mt4nSgKkZRhUTVuqygTPXC7PrvTPUjlN3/t0Wkxe97O9NSzKVSS69TyXCY0DrWlVrCjNZgwtNaDuimToInzYd4SJqIiQi/qghzFQ1IxpPclDcxNdOAMAh20JZByaDnCUDxSL7rXJiJ0pWDQbiPA8bi7Vz0qLJvKmRoN3qXNGB/Fw86EX24mVfbUtGaRYgMexFIaHbtU54iESHcgkRcftRngq7JiUVUo3C54DDotV+dzA/IFWS5hvUaqL+705B1YCa4XT9hzqOt0E7Bsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:760a::15) by DF4PR8401MB0811.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:760c::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Wed, 22 Apr
 2020 18:30:59 +0000
Received: from DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::e8f3:b8f9:2cfe:75bd]) by DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::e8f3:b8f9:2cfe:75bd%10]) with mapi id 15.20.2921.030; Wed, 22 Apr
 2020 18:30:59 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: Emily <easmith5555@gmail.com>, Yocto List <yocto@yoctoproject.org>
Subject: Re: [yocto] Adding python3 remotely
Thread-Topic: [yocto] Adding python3 remotely
Thread-Index: AQHWGLpyjDEDLk+HekiQXsSpOP/OVaiFdZBg
Date: Wed, 22 Apr 2020 18:30:59 +0000
Message-ID: <DF4PR8401MB114763DD4730C8772430E40C82D20@DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM>
References: <CAAV2bM2k4+ZPaqgSK5WjEkYZ+fFwDx1uZ4ucOkoh3ParLvFSxQ@mail.gmail.com>
In-Reply-To: <CAAV2bM2k4+ZPaqgSK5WjEkYZ+fFwDx1uZ4ucOkoh3ParLvFSxQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2601:204:cb03:2202:a08c:45e6:328:cde2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 46186cf0-de2f-4407-c74a-08d7e6eb4de0
x-ms-traffictypediagnostic: DF4PR8401MB0811:
x-microsoft-antispam-prvs: <DF4PR8401MB0811D56492254CB498DE40D182D20@DF4PR8401MB0811.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03818C953D
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(376002)(136003)(39860400002)(366004)(396003)(346002)(76116006)(66946007)(186003)(316002)(8936002)(110136005)(33656002)(8676002)(81156014)(7696005)(53546011)(86362001)(478600001)(66446008)(64756008)(66556008)(52536014)(2906002)(71200400001)(66476007)(5660300002)(9686003)(55016002)(6506007);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Aik+hZhcrxF7DJx2kB0qPUCA4+SO/69vmDV+AaGvFxS6rYkOxAszxPPOf5hNIRdbmDXKUI0dkXIS53EjPnKmBzF2cw3coBbWnRGnhJoATEBxcYBCfn/j6wEoBS+X4mc/8vUIGxztA+BsbnFwiX2bosmhdZ1dp4VFpF4OWEp6wqNNg7P5F849hHvi9dLEiGZdEAWt4LEXwvnRhoWLdA+7HYd2H+UIsVDRqGRbtzgatT9ATRkNGplfShBHKQex/pvzIqI71NIy4u0mmUFdofwlcSy4RwK9ZPMylvxYhAtwK8/FJI2kPxSDlcffjSeLRNkcpQLBwHsTWd9guBDkzW2CM83OmNzcU9myFCLZx1z1myhYdP0f3jS7GkaoUwqN0J9njJe73vM5NKnuERRQw9I3LKPa3Rwk9J5bX/oqK4Q5H+7Et2OM3NnlVhvkJp/l+SfU
x-ms-exchange-antispam-messagedata: CvKFvo7r4RBqZRyFafIePA1V6nSraQih0e/oFYNTL+NZzEHcYIortq9P8qTMvee0EoqTkYxtA1VKuaVxmAzDhS9A6pxPHVPg0SEVoacMrhVwGPj6Y2hfa6I6bu6+jecZHkVNw52OADg0iKWSAEllWE16s/S0QQsi5rb79Y2iLCXuCbWpYbiAFVP7QER3UNKuGNq4t4El0hScoN3kqUNxSQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 46186cf0-de2f-4407-c74a-08d7e6eb4de0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2020 18:30:59.3704
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JXmdRgddrge1C6VZNg8asKY2avC6VMnWNkfElIqLs+7LWQ/4oOClqxCtDnk+o2Vt3Xo/7as2z//ubc/4rVFRdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DF4PR8401MB0811
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.676
 definitions=2020-04-22_06:2020-04-22,2020-04-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 impostorscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1011
 suspectscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2003020000 definitions=main-2004220137
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DF4PR8401MB114763DD4730C8772430E40C82D20DF4PR8401MB1147_"

--_000_DF4PR8401MB114763DD4730C8772430E40C82D20DF4PR8401MB1147_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXNzdW1pbmcgeW914oCZcmUgdXNpbmcgdGhlIGRlZmF1bHQgcnBtIHBhY2thZ2luZywgeW91IGNh
biBleHRyYWN0IHRoZSBjb250ZW50cyBvZiB0aGUgcnBtIChmcm9tIHRtcC9kZXBsb3kvcnBtLzx0
YXJnZXQ+KSBmaWxlIHRvIGEgc3RhZ2luZyBkaXJlY3RvcnkgdXNpbmcgcnBtMmNwaW8gYW5kIHBp
cGluZyB0byBjcGlvIChlYXNpZXN0IHdheSBJIGtub3cgb2YgdG8gZXh0cmFjdCBhbiBycG0pIGFu
ZCB0aGVuIHNjcC9yc3luYy9ldGMgdGhlIGZpbGVzIGludG8gdGhlIHJpZ2h0IHBsYWNlcy4NCg0K
VGhhdCBiZWluZyBzYWlkLCB5b3XigJlsbCBub3cgaGF2ZSBhIOKAnHBhY2thZ2XigJ0gdGhhdCB3
YXNu4oCZdCBpbnN0YWxsZWQgYnkgdGhlIHBhY2thZ2UgbWFuYWdlciBvbiB0aGUgc3lzdGVtLCBz
byBpdCBjb3VsZCBjYXVzZSB3ZWlyZG5lc3Mgd2hlbiB5b3UgZG8gZmluYWxseSBnZXQgaXQgdXAg
YW5kIHJ1bm5pbmcuIEnigJlkIHN0cm9uZ2x5IHJlY29tbWVuZCB0cnlpbmcgdG8gZ2V0IHRoZSBw
YWNrYWdpbmcgdG8gd29yayBjb3JyZWN0bHnigKYgaXMgcnBtIChvciB3aGF0ZXZlciBwYWNrYWdl
bWFuYWdlciB5b3XigJlyZSB1c2luZykgaW5zdGFsbGVkIG9uIHlvdXIgdGFyZ2V0PyBEb2VzIGl0
IHdvcmsgaWYgeW91IHRyeSB0byBjb3B5IHRoZSB3aG9sZSBwYWNrYWdlIG9uIG1hbnVhbGx5IGFu
ZCBpbnN0YWxsIGl0IHdpdGggdGhlIHBhY2thZ2UgbWFuYWdlciwgcmF0aGVyIHRoYW4gZ29pbmcg
dGhyb3VnaCB0aGUgd2hvbGUgc291cmNlcyBwcm9jZXNzIGZvciB1cGRhdGluZz8NCg0KLVNlYW4g
TWNLYXkNCg0KRnJvbTogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9mIEVtaWx5DQpTZW50OiBXZWRuZXNkYXksIEFw
cmlsIDIyLCAyMDIwIDg6MjUgQU0NClRvOiBZb2N0byBMaXN0IDx5b2N0b0B5b2N0b3Byb2plY3Qu
b3JnPg0KU3ViamVjdDogW3lvY3RvXSBBZGRpbmcgcHl0aG9uMyByZW1vdGVseQ0KDQpIaSBhbGwg
LQ0KDQpJJ2QgbGlrZSB0byBhZGQgcHl0aG9uMyB0byBteSBPUyAtIEkgY2FuIGFkZCBhbmQgYnVp
bGQgaXQganVzdCBmaW5lLCBidXQgYXQgdGhlIG1vbWVudCBJIGNhbid0IHBoeXNpY2FsbHkgYWNj
ZXNzIG15IGJvYXJkLiBJJ3ZlIG5ldmVyIGJlZW4gYWJsZSB0byBnZXQgdGhlIE9TIHRvIHVwZGF0
ZSBwcm9wZXJseSByZW1vdGVseSwgdGhvdWdoIEkgdGhpbmsgdGhlcmUgc2hvdWxkIGJlIGEgd2F5
IHNpbmNlIEknbSBib290aW5nIGZyb20gU0QuIFRoYXQgYXNpZGUsIGNhbiBJIGp1c3QgY29weSB0
aGUgYnVpbHQgcHl0aG9uMyBmaWxlcyB0byB0aGUgcHJvcGVyIHBsYWNlcyBpbiBteSBPUyAoL3Vz
ci9saWIsIC91c3IvYmluLCBldGMpIGFuZCBoYXZlIGEgd29ya2luZyBweXRob24zIG9uIHRoZSBi
b2FyZD8gSWYgc28sIHdoaWNoIGZpbGVzIGRvIEkgbmVlZD8gSSd2ZSBiZWVuIHVuYWJsZSB0byBn
ZXQgaXQgdG8gd29yayB0aHVzIGZhciBieSBqdXN0IHBva2luZyBhcm91bmQgdGhlIHdvcmtkaXIg
ZmlsZXMuDQoNClRoYW5rcywNCkVtaWx5IFNtaXRoDQo=

--_000_DF4PR8401MB114763DD4730C8772430E40C82D20DF4PR8401MB1147_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQg
bWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2
IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToy
IDE1IDUgMiAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3Jt
YWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1i
b3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJp
IixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE5DQoJe21zby1zdHlsZS10eXBlOnBlcnNv
bmFsLWNvbXBvc2U7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6
d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25s
eTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFnZSBXb3JkU2VjdGlv
bjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGlu
O30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT4N
CjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3
MiI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QXNz
dW1pbmcgeW914oCZcmUgdXNpbmcgdGhlIGRlZmF1bHQgcnBtIHBhY2thZ2luZywgeW91IGNhbiBl
eHRyYWN0IHRoZSBjb250ZW50cyBvZiB0aGUgcnBtIChmcm9tIHRtcC9kZXBsb3kvcnBtLyZsdDt0
YXJnZXQmZ3Q7KSBmaWxlIHRvIGEgc3RhZ2luZyBkaXJlY3RvcnkgdXNpbmcgcnBtMmNwaW8gYW5k
IHBpcGluZyB0byBjcGlvIChlYXNpZXN0IHdheSBJIGtub3cgb2YgdG8gZXh0cmFjdCBhbiBycG0p
IGFuZCB0aGVuIHNjcC9yc3luYy9ldGMNCiB0aGUgZmlsZXMgaW50byB0aGUgcmlnaHQgcGxhY2Vz
LjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGF0IGJlaW5nIHNhaWQsIHlvdeKAmWxsIG5vdyBo
YXZlIGEg4oCccGFja2FnZeKAnSB0aGF0IHdhc27igJl0IGluc3RhbGxlZCBieSB0aGUgcGFja2Fn
ZSBtYW5hZ2VyIG9uIHRoZSBzeXN0ZW0sIHNvIGl0IGNvdWxkIGNhdXNlIHdlaXJkbmVzcyB3aGVu
IHlvdSBkbyBmaW5hbGx5IGdldCBpdCB1cCBhbmQgcnVubmluZy4gSeKAmWQgc3Ryb25nbHkgcmVj
b21tZW5kIHRyeWluZyB0byBnZXQgdGhlIHBhY2thZ2luZyB0byB3b3JrIGNvcnJlY3RseeKApg0K
IGlzIHJwbSAob3Igd2hhdGV2ZXIgcGFja2FnZW1hbmFnZXIgeW914oCZcmUgdXNpbmcpIGluc3Rh
bGxlZCBvbiB5b3VyIHRhcmdldD8gRG9lcyBpdCB3b3JrIGlmIHlvdSB0cnkgdG8gY29weSB0aGUg
d2hvbGUgcGFja2FnZSBvbiBtYW51YWxseSBhbmQgaW5zdGFsbCBpdCB3aXRoIHRoZSBwYWNrYWdl
IG1hbmFnZXIsIHJhdGhlciB0aGFuIGdvaW5nIHRocm91Z2ggdGhlIHdob2xlIHNvdXJjZXMgcHJv
Y2VzcyBmb3IgdXBkYXRpbmc/PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPi1TZWFuIE1jS2F5PG86
cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4N
CjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtw
YWRkaW5nOjMuMHB0IDBpbiAwaW4gMGluIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPkZyb206
PC9iPiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnICZsdDt5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnJmd0Ow0KPGI+T24gQmVoYWxmIE9mIDwvYj5FbWlseTxicj4NCjxiPlNlbnQ6PC9i
PiBXZWRuZXNkYXksIEFwcmlsIDIyLCAyMDIwIDg6MjUgQU08YnI+DQo8Yj5Ubzo8L2I+IFlvY3Rv
IExpc3QgJmx0O3lvY3RvQHlvY3RvcHJvamVjdC5vcmcmZ3Q7PGJyPg0KPGI+U3ViamVjdDo8L2I+
IFt5b2N0b10gQWRkaW5nIHB5dGhvbjMgcmVtb3RlbHk8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+SGkgYWxsIC0mbmJzcDs8bzpwPjwvbzpwPjwvcD4NCjxkaXY+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPkknZCBsaWtlIHRvIGFkZCBweXRob24zIHRvIG15IE9TIC0gSSBj
YW4gYWRkIGFuZCBidWlsZCBpdCBqdXN0IGZpbmUsIGJ1dCBhdCB0aGUgbW9tZW50IEkgY2FuJ3Qg
cGh5c2ljYWxseSBhY2Nlc3MgbXkgYm9hcmQuIEkndmUgbmV2ZXIgYmVlbiBhYmxlIHRvIGdldCB0
aGUgT1MgdG8gdXBkYXRlIHByb3Blcmx5IHJlbW90ZWx5LCB0aG91Z2ggSSB0aGluayB0aGVyZSBz
aG91bGQgYmUgYSB3YXkgc2luY2UgSSdtIGJvb3RpbmcNCiBmcm9tIFNELiBUaGF0IGFzaWRlLCBj
YW4gSSBqdXN0IGNvcHkgdGhlIGJ1aWx0IHB5dGhvbjMgZmlsZXMgdG8gdGhlIHByb3BlciBwbGFj
ZXMgaW4gbXkgT1MgKC91c3IvbGliLCAvdXNyL2JpbiwgZXRjKSBhbmQgaGF2ZSBhIHdvcmtpbmcg
cHl0aG9uMyBvbiB0aGUgYm9hcmQ/IElmIHNvLCB3aGljaCBmaWxlcyBkbyBJIG5lZWQ/IEkndmUg
YmVlbiB1bmFibGUgdG8gZ2V0IGl0IHRvIHdvcmsgdGh1cyBmYXIgYnkganVzdCBwb2tpbmcgYXJv
dW5kIHRoZQ0KIHdvcmtkaXIgZmlsZXMuJm5ic3A7PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxk
aXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0K
PGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRoYW5rcyw8bzpwPjwvbzpwPjwvcD4NCjwvZGl2
Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkVtaWx5IFNtaXRoPG86cD48L286cD48L3A+
DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_DF4PR8401MB114763DD4730C8772430E40C82D20DF4PR8401MB1147_--
