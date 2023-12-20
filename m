Return-Path: <mwen@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62237C41535
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 00:51:03 +0000 (UTC)
Received: from mx0a-00622301.pphosted.com (mx0a-00622301.pphosted.com [205.220.163.205])
 by mx.groups.io with SMTP id smtpd.web11.11513.1703033458365665224
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 16:50:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ambarella.com header.s=com20210415pp header.b=aJE4fPrW;
 dkim=fail reason="dkim: body hash did not verify" header.i=@ambarella.com header.s=selector1 header.b=aD+PZJeJ;
 spf=pass (domain: ambarella.com, ip: 205.220.163.205, mailfrom: mwen@ambarella.com)
Received: from pps.filterd (m0241924.ppops.net [127.0.0.1])
	by mx0a-00622301.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BK0jKrJ005817;
	Tue, 19 Dec 2023 16:50:54 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
	 h=from:to:cc:subject:date:message-id:references:in-reply-to
	:content-transfer-encoding:mime-version:content-type; s=
	com20210415pp; bh=ig0f5dk0cvfp85l7OooUgqV0plNuPlHVd3F3vEexOA0=; b=
	aJE4fPrWWRbrKJpfntQwFNN8jfGfl1SpeFbPXibxbzgbBK5pymDEq7x7VUm/YmDV
	p6rIz184pGCQzp6s9I54ZnC/xWAw0qHeJki0DO/g5miDLGpuotGiOta8oP+FzAJd
	tMsrDkvbusFgW/O7kmqyEPzcUQTFyRZwciqpN7cVonq4USNLuQ1pPjxOhFHN9sSv
	UlrTftOF7MGZ0yPN+OiJLJJZHbfSB0RIlKNbi0WXahAgFtWZCEF+n9lpcjOHO87W
	1xKS79T5nqDaJTlK6Xsh2llf5zHTRCwY5wHXXl9ia1y2thfrBVbsYAPYmVMkq+Qc
	AoZnm6m4qufiPk/1QWhClA==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by mx0a-00622301.pphosted.com (PPS) with ESMTPS id 3v19rfj1wx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Dec 2023 16:50:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DvtwBcUo8gNJaSuKknrnXhcfKH09Snv6WCuVIHp6U6++cuGv58dI6Z2ZxaUg88/xwH9qmCGVrry/XkIqiRfa/jtkZlkLccap6JfNu5Uuw3ttzDExnr+E5qoIPnRtykg+PbH7hjBp/A+1MC6VVzIulj3/RR2EdUokdoZuEJa6vE8qOVKlvlnI8p695EniNRjMY235LiWlNTcIqIcizybaUi0NcTKi8cJkyhtOlZlvAOxjHl6FzT/VG/KiNcmfpywrsx5PllhyN+R+oOmfowDWwVxV3E5IVTEB9Ih5bqdhSXnpQ1/u0QPn0AinXl6Fagg/ENXSuP3sBzmXNaj1ufXA8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T25Kf7AJyqV0NjBrmlNGw0NGj5nEFLPdubGmQjh3eBo=;
 b=kM6IaQNgDYdUwW1FInNsJ7LKwOAlpKQO4sUthpid61N8U9U/xJ22wlLJ8aPJ4iA4P4QQlzWg8Ft6i31bfwSfT2rLY7cgzPARbQ6Iu7pAFeBrYbJnGS7ORCs6ye1fwiBLpk5KyFO6otxso7nOaLwl4+0qDR3zxc/znC85C9OkA7ZNXUpxVizWtmIKMvs59A0SuQsrqVbQ7p1ZO8aIAwtaUJ6Khu0OnqMN+heWguv5Jqb6opCjb0rZaqYwmc9ahgwc4FsBYfSRoPnPQTtLqn++BJaIFeqd8lWWL3rdFgSptBh6RLE9b+FqhIuLcBkWIe2y2OII12+hGe7EuqxKXq9uOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ambarella.com; dmarc=pass action=none
 header.from=ambarella.com; dkim=pass header.d=ambarella.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ambarella.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T25Kf7AJyqV0NjBrmlNGw0NGj5nEFLPdubGmQjh3eBo=;
 b=aD+PZJeJ2zGWlXwLyAE46Zed0Q9kDUFA0ul7VSuq7ctNhhJkpGqHqcmLDAU6qCV6V54oRunP7QJvdSlj/5jS0sOCRJR1fOpewB6SdfTa8Lfwh+lfLy2DE9yri6llRan9WtH900Oa+LDSxX1f7IQcjd8LadZSGXKXTNzUkwV2Vm78CA2w2tW+72Qhb9Llq+3lrdFEaMlqynvbnBkziNZ9H8bBztX6QDMhZkeVfar5cbz/qYhLOdwBq3GcPRb5sDBXBRnxkJu39IJ4A1FunFM9SqypGCPdhp+zd4A+MvObzS3vFzshz8yo5Kv0rA29umanRJNtTVGxEPIHUG13cGUEHQ==
Received: from CH2PR19MB3429.namprd19.prod.outlook.com (2603:10b6:610:42::22)
 by PH0PR19MB4842.namprd19.prod.outlook.com (2603:10b6:510:96::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 00:50:50 +0000
Received: from CH2PR19MB3429.namprd19.prod.outlook.com
 ([fe80::2014:3237:d846:a3ba]) by CH2PR19MB3429.namprd19.prod.outlook.com
 ([fe80::2014:3237:d846:a3ba%7]) with mapi id 15.20.7091.034; Wed, 20 Dec 2023
 00:50:49 +0000
From: Ming Wen <mwen@ambarella.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "ross.burton@arm.com" <ross.burton@arm.com>,
        Song-Jun Han
	<sjhan@ambarella.com>
CC: Jian Tang <jtang@ambarella.com>
Subject: RE: [yocto] do_populate_sdk_ext failed
Thread-Topic: [yocto] do_populate_sdk_ext failed
Thread-Index: AQHaLnmJAax5T/WxLE+YEJyb8sSI4rColyyAgAAIeICAAAHgAIAIvQCA
Date: Wed, 20 Dec 2023 00:50:49 +0000
Message-ID: 
 <CH2PR19MB3429DB00CE138E0B42C57172DD96A@CH2PR19MB3429.namprd19.prod.outlook.com>
References: <9B6E1D5F-50FB-408B-9A16-AFFC956FB49B@arm.com>
 <24207.1702552293492620689@lists.yoctoproject.org>
 <75C93DB1-34A5-49D0-9912-0E937B111495@arm.com>
In-Reply-To: <75C93DB1-34A5-49D0-9912-0E937B111495@arm.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH2PR19MB3429:EE_|PH0PR19MB4842:EE_
x-ms-office365-filtering-correlation-id: 92471eb5-0b17-49fa-2996-08dc00f5b5d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bPg2ExdfkQB391GLbNKo0g7PLhioLYpzIXk3k6lxAaEgxA98Czp+ZaeLe5ez6YqMCEMQPOgmfyP7Ut4XLXlsVWX9rfxp8ikxohXP0LnxS3tYieTfFjiYSEHswbAem9GsNpnEIZRAmPIVJeiKMGsRWWcB5NpNndNcklPKPQ4THPO4FJmKPGmQ6iYq3ANO/0MIQSFMgyOGN9fp+3wm1Y8N0xVb8qT3maw3a972vLt/gxGtKgcaH2Ufy5O1PfrzZrYNUyr4u4vB3KQME38YjVsxWEP1KSvbKzCSEZPPODIZJzJuiE9ytwKzg6UwvCClYKYYPTNdsAOq2oiZNqaMNaWTkMi5MBhYnZzJoATYHFZqLCNRBjl4pzf8mVhP9HQYr7dirFAZQ3gC34n6p9sTpo8xFiP3DDnqbtJ9G2ZHLKbJMI28I3+IvId+pWtkNHaVbL/4JccDaCuJdaBgJpyRYcPuJlVE5p4bquRODzlWsRGB9UigKE7T2SDqIRkswgxPn5p7T38WolxMrNLwFWCWKNtf1Zn3jkVFSAUkJ8YD2Z2JUBigaayuHCOjUi2higouJQYBGIY5OVB+HaT2T8KLZo2tlGy0zAmIEQZCvs2eLptEm+452/djSvc0/Kopx9vpK7fbElVEYDVfD2qJOUpcv/1ZgQdmmFDjBqRo+edxe/R0iiY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR19MB3429.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39850400004)(230173577357003)(230273577357003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(66899024)(2906002)(41300700001)(86362001)(33656002)(38100700002)(122000001)(71200400001)(316002)(478600001)(110136005)(6506007)(7696005)(8936002)(8676002)(66476007)(66446008)(76116006)(66946007)(66556008)(64756008)(6636002)(9686003)(5660300002)(83380400001)(26005)(4326008)(52536014)(53546011)(107886003)(38070700009)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TVBOOGNlN29tdUFRTDBUSkErWDljajlia08zZTdWZUZwL3QyemJyQ2QvbGEy?=
 =?utf-8?B?QTl6RE9vTGdSTVhJQ09pRWpoZXY1WGp3MFFkL2NPcW8xcW8xdTVDT2FWK1Qy?=
 =?utf-8?B?N081VVhKc3J6cVhkTVczOGI0OHdlQUpSNUZjSE9WdDZCazJnODFmL2NnYU0y?=
 =?utf-8?B?dS9KVy8xWkFtSUxFMncva0ZtUFJvMDlwV21PWWlCeHdVL3RkYzdlRlcxOThl?=
 =?utf-8?B?UDNvdXk2SDNmbkg0K1hUWVlQNWpEaFNLb1lQZXg3YUdoTjc0ZG5Yd0hSelBX?=
 =?utf-8?B?cnZOaER2Wnl1c3J5dzBGYXJLZUZ5Y1pYL21jaS84M2Q1VU5ZV0hncXd6Y09k?=
 =?utf-8?B?Q3ROK3ljdEVnd1JUSnBDMVJqSG5UblNzOFZTNGoyVW1jY3MvVEZ6NEYrT0Q2?=
 =?utf-8?B?bnJndzFXTmRSYVI2Vm9GSmk3WGJpNFdwcVFGNm1EN3J6SWpaS0hKbVcwWmFa?=
 =?utf-8?B?OTBDRXJxbUhvUEhNWkJ5OGdtOU1FMjdYSUZRZjMxVEVXUXhGbVpkUCt0L3k2?=
 =?utf-8?B?UHRDNXlLQXdiQ0tzUldFOHMxNHc5Z3B5bnlPblhiOFhub3BGeUV4S0JjOXhj?=
 =?utf-8?B?SjQ2LzBoVGcvYThFNktNQmFRQ2UrOUFCMG1HbFA4c2ZIdHlwQ0JZM0xTN2FB?=
 =?utf-8?B?dnhZdUxibzhkSWpYeEJPMitDbG5SQ3pmQjMxMk15czdsaG9YYktQaThMdGRW?=
 =?utf-8?B?WmRBcGdrUTlyVW5rMjFBd1NqWG9meTVGeWVrejBKVktzNTJRODJOSXRvOWtE?=
 =?utf-8?B?UEhtY3Y4d2xkbVNrMGV6YUVBMmVIaCtpMnk5bU9jYTFweFpDaXVmSWxEZzd0?=
 =?utf-8?B?N1JLNlg3aEUweUZ4aTNud3BjRFBBODVKSy9XemxDUEk2Y0NFY1ZKTUhSZ1Nz?=
 =?utf-8?B?V0JTSVo5QUx3cVlFRE9xZ0xlYkhZUFBiRG43SXNOU1duazk4K0hRQ2xzWE5v?=
 =?utf-8?B?Q0NYRWVuQWEwcmdrY0p2VGtVTmdsQjhHM0t0NVNPL1krWTJWaXNVRjZrKzgx?=
 =?utf-8?B?U3B5SmhOdGxJQVpIQWg2R2RiOHBLVVAvL2d2UGFCSzJZczhvWkhsSDJFYUJP?=
 =?utf-8?B?MURMOFlLQkVYMlB4QTZuUjFaeURsdmppQVFhc1NPRksyYU13cEUyYzFRR3dE?=
 =?utf-8?B?bUszRE5UTEYwcWRod0l3cXExV0FKanpISlhkWDFiSGIwWW9IcXZLOE1BeS8v?=
 =?utf-8?B?TTZISEwyZnoxdy9QZGdPbzk4aHZ1dCtWd0gzWFJMeXUxSXVhNENtOWh1dnVE?=
 =?utf-8?B?aC9BK1phQ1YvUE5IbUxTUDE2T1ZQUjFrSkVoMzRHYTRRM1l0OFlKZjVyOXp6?=
 =?utf-8?B?eXZZT3NIdUMvc0pMNDVnUDFXZWE2cUI5NG5FbkVKeHRndUovMWxMSHlnVFBM?=
 =?utf-8?B?L2loZzBmazk3NFBuTkZ3OHBWVUpscVhNNGllMkoxa0xsR1ErNjlOMzl0dE5W?=
 =?utf-8?B?WFRjODBWYkJ6TzNGdXpsWDN5YktJMGZUSU9lbUtWb0tJakpqdjBDVE9xSFIw?=
 =?utf-8?B?VWtzVUxBcm9ZWmtnWWlja3EreTN3RXhoc1QyNlhnWEdkTlhzbnlBNzJnR1c0?=
 =?utf-8?B?OGN5ZmhwM2J0NDdib01JbjIyUFNhU1hCTm5ESkxCQlZyWW1SL2Nac3FGSXU1?=
 =?utf-8?B?M0FCWkJUd0hELythV3dFdnlGTlJvRFA1TUgybm44QUxjbVp3MkdiL0c5OHVK?=
 =?utf-8?B?WXBNaTlPM1dHaDJBMEZIQ0lRQ2xTK2xtTjBERXpMc1NEV2dFT1JhWW5ZYWxa?=
 =?utf-8?B?V3ZKZ2FOUW9zVDZYcCt6VHFYWlFwc2xUWk82NUZOTFVoUTlMa3RnZmVHRVFn?=
 =?utf-8?B?cHdad2tINk9QZ2l2Qjh1MFpOWTNVYWh6ellRdWJzd0dISitGRWpFMW5seVFH?=
 =?utf-8?B?NVAzRDJXdXE3WVFoTUFGbDlmVDZTVFczNVY3ZnQxUDRPUm9TTnV1b0s1bzAy?=
 =?utf-8?B?KzRPay80QmowY1p6bGZhZWZ0dWl3THR6TU10aTVudDlJc3E3c3BJRjRrT2VS?=
 =?utf-8?B?cUc5djlQd3k1K2lHNVpLbEdiV0dNMnlydUlMeHN3dFdOdCtJY095WTBLM2wv?=
 =?utf-8?B?R1ZVQ0s1TFhIREVlOWNuZ0FXVTl5MG1EYzgwbHJWTk5ud0x2bG5qSmxjWjJ2?=
 =?utf-8?Q?G1Wc1784Pdj/tnSD5fTOBJ3O4?=
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ambarella.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR19MB3429.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92471eb5-0b17-49fa-2996-08dc00f5b5d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 00:50:49.7366
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ccd3c8d-5f7c-4eb4-ae6f-32d8c106402c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3zqMPHOQ31ziAL9pyzHiX9iARIXDtCLE5KF7+RC+0Ax6bsiWJxFz91w9TMrWqlyvTRqzwy1XEZWKgzxnhZV4oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR19MB4842
X-Proofpoint-GUID: 92E7l-HhaRAq6yh-Kt15B0ac10iyngoL
X-Proofpoint-ORIG-GUID: 92E7l-HhaRAq6yh-Kt15B0ac10iyngoL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 malwarescore=0 adultscore=0 phishscore=0 mlxlogscore=999 clxscore=1011
 impostorscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312200002
Content-Type: text/plain; charset="utf-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Dec 2023 00:51:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61994

SGkgUm9zczoNCsKgDQpOaWNlIHRvIG1lZXQgeW91IGFuZCB0aGFua3MgZm9yIHlvdXIgc3VwcG9y
dCENCg0KU29uZy1KdW4gYW5kIG15c2VsZiBhcmUgaW4gdGhlIHNhbWUgdGVhbS4gV2Ugc3BlbnQg
c29tZSBlZmZvcnRzIHRvIG1ha2UgaXQgaGFwcGVuIGZvciAiIGRvX3BvcHVsYXRlX3Nka19leHQi
IGZpbmFsbHkgYnkgZml4aW5nIHNvbWUgaXNzdWUgaW4gUG9reSh3ZSdyZSB1c2luZyBsYXRlc3Qg
S2lya3N0b25lIDQuMCkuIEJ1dCBhcyB5b3UgbWVudGlvbmVkLCB3aGVuIHdlIHRyaWVkIHRoZSBn
ZW5lcmF0ZWQgZVNESywgd2UgZm91bmQgdGhhdCBpdCBzdGlsbCBjYW4ndCBnbyB3aXRoIGV4dGVy
bmFsc3JjIGVuYWJsZWQuIDooDQpXZSdyZSB3b25kZXJpbmcgd2hldGhlciB0aGlzIGxpbWl0YXRp
b24vaXNzdWUgd2lsbCBiZSByZXNvbHZlZCBpbiB5b3VyIG5leHQgTFRTIFNjYXJ0aGdhcCAoNS4w
KS4gT3IgaXQgaXMgc3RpbGwgd2FpdGluZyB0byBiZSBmaXhlZCBpbiBmdXR1cmUuIElmIGl0IGlz
IHRoZSBsYXRlciwgd2Ugd2lsbCBmaWxlIGEgYnVnIGZvciBlU0RLLg0KDQrCoA0KQmVzdCBSZWdh
cmRzIQ0KTWluZyBXZW4gKOmXu+aYjikNClNESyBUZWFtIHwgQW1iYXJlbGxhIFNoYW5naGFpDQoN
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBSb3Nz
IEJ1cnRvbg0KU2VudDogVGh1cnNkYXksIERlY2VtYmVyIDE0LCAyMDIzIDc6MTggUE0NClRvOiBT
b25nLUp1biBIYW4gPHNqaGFuQGFtYmFyZWxsYS5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZw0KU3ViamVjdDogW0VYVF0gUmU6IFt5b2N0b10gZG9fcG9wdWxhdGVfc2RrX2V4
dCBmYWlsZWQNCg0KT24gMTQgRGVjIDIwMjMsIGF0IDExOjExLCBzamhhbkBhbWJhcmVsbGEuY29t
IHdyb3RlOg0KPiBUaGFua3MgZm9yIHlvdXIgdGlwcy4gSG93ZXZlciwgdGhpcyB3YXkgaXMgbm90
IHN1aXRhYmxlIGZvciBvdXIgc2l0dWF0aW9uLiBJcyB0aGVyZSBhbnkgb3RoZXIgcG9zc2libGUg
c29sdXRpb25zPw0KDQpJZiB5b3VyIHJlY2lwZXMgX3JlcXVpcmVfIGV4dGVybmFsc3JjIHRoZW4g
eW91IHNob3VsZCBmaXggeW91ciByZWNpcGVzLg0KDQpUaGUgaW1tZWRpYXRlIHNvbHV0aW9ucyB3
b3VsZCBiZToNCjEpIHJlcG9ydCBhIGJ1ZyBhbmQgaG9wZSBzb21lb25lIGNhbiBmaXggaXQNCjIp
IGRlYnVnIGFuZCBmaXggdGhlIHByb2JsZW0geW91cnNlbGYNCjMpIHBheSBzb21lb25lIHRvIGRv
ICgyKQ0KDQpQZXJzb25hbGx5IEkgZG9u4oCZdCBrbm93IGVub3VnaCBhYm91dCBlU0RLIGNvbnN0
cnVjdGlvbiB0byBvZmZlciBhbnkgZnVydGhlciBhZHZpY2UuDQoNClJvc3MNCg0KIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIw0KVGhpcyBFWFRFUk5BTCBlbWFpbCBoYXMgYmVlbiBzY2FubmVkIGJ5IFByb29mcG9pbnQg
RW1haWwgUHJvdGVjdCBzZXJ2aWNlLg0KCioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKVGhpcyBlbWFpbCBhbmQgYXR0
YWNobWVudHMgY29udGFpbiBBbWJhcmVsbGEgUHJvcHJpZXRhcnkgYW5kL29yIENvbmZpZGVudGlh
bCBJbmZvcm1hdGlvbiBhbmQgaXMgaW50ZW5kZWQgc29sZWx5IGZvciB0aGUgdXNlIG9mIHRoZSBp
bmRpdmlkdWFsKHMpIHRvIHdob20gaXQgaXMgYWRkcmVzc2VkLiBBbnkgdW5hdXRob3JpemVkIHJl
dmlldywgdXNlLCBkaXNjbG9zdXJlLCBkaXN0cmlidXRlLCBjb3B5LCBvciBwcmludCBpcyBwcm9o
aWJpdGVkLiBJZiB5b3UgYXJlIG5vdCBhbiBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBjb250
YWN0IHRoZSBzZW5kZXIgYnkgcmVwbHkgZW1haWwgYW5kIGRlc3Ryb3kgYWxsIGNvcGllcyBvZiB0
aGUgb3JpZ2luYWwgbWVzc2FnZS4gVGhhbmsgeW91Lgo=

