Return-Path: <eric_guinn@selinc.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CD3AC4167B
	for <webhook@archiver.kernel.org>; Mon,  4 Dec 2023 19:46:34 +0000 (UTC)
Received: from mx0b-000e8d01.pphosted.com (mx0b-000e8d01.pphosted.com [148.163.143.141])
 by mx.groups.io with SMTP id smtpd.web10.80035.1701719187865104267
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Dec 2023 11:46:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@selinc.com header.s=sel1 header.b=lx+gYz6j;
 dkim=pass header.i=@selinc.com header.s=selector1 header.b=f7rzIhCo;
 spf=pass (domain: selinc.com, ip: 148.163.143.141, mailfrom: prvs=4702d05a15=eric_guinn@selinc.com)
Received: from pps.filterd (m0136174.ppops.net [127.0.0.1])
	by mx0b-000e8d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3B4Jf387021882
	for <yocto@lists.yoctoproject.org>; Mon, 4 Dec 2023 11:46:26 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com; h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=sel1; bh=x7e4irzKcnFQQHACXZkDIkW1/pwhOAt77fO9g3dMiMY=;
 b=lx+gYz6jiT7yt5qu5aK0OAXgxlgG2/qf9X7tN4l16LSXrsJZYzFf8nVxnGHVSsOl3XU3
 CIsDGe2XvyqrV6QK5lBnS4mpMk2PAsVf/4hJPsCZ5MRhcrzlXmQPQpU5fqTwnf7asMkr
 x8DxNm3FO8EriMPKpgRi5pC0hBP4A/o/qAT9LwyHsKZeAKdzR+A+p3hcHklQ1ywawtkV
 axT08F0X97vdiL+35ofkH1d1nEi5zgdM2vaJNv8p0LH/hXSCPuIRaNNOeh53c6ZAx22a
 RU3U/yjuQBWn/8+OocApT7D/xTqaSqw9h2LWhg2Idoox/qxlIPKhPK8bCC4hmeV8qmqt hA== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
	by mx0b-000e8d01.pphosted.com (PPS) with ESMTPS id 3ur1vu1a3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Mon, 04 Dec 2023 11:46:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OkvtZwXLtdwaEqSSK2FPPfrIfclvdX9+5a77Wwo1MRn3ncTCedHedv5zzPLcwr5Xe6uo3B06bgtVBh2LVdkCr1N+7oWEl7wvi9uLUeFH6oZ5CiHhQE9TKOruuVJUYVTLG/SUe3MGUNDhmboxzTz03J5FWjdBSx/k7+as5LFaui/6odINyN+/WJGcQDrjT54uhRQ+jO6GpCBjzwKNkdHiaTVDNc8Q0aa9sxk/KJIsZ/XbloQ5Bmg/CZxQEr8StdD4G890U22+GTZPNHiadNU43Vrjx4lCtFneYhI7iAfFO8E3J7uau4uDA4utDeyRIhV6qM75y9pHgosjsi22Y4shQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x7e4irzKcnFQQHACXZkDIkW1/pwhOAt77fO9g3dMiMY=;
 b=ImNYDB7Ed1XE0UVuhnhRu4MOFf/yFgzHcapQgpYBdrc/EOie1lAYtgPKsh1VcmZio7xtfyE7KS3cn3heH8NUR0dwuLX3kPqihrBy0y0yKOseiTluyf6KcRmEyL+Z5ep41KEcA4t08TtXAnwOKdUq3vKTU3Pb9/z9JaLZi2IxQND8mROiRIl3u73RywNVuWSepq750GSYuqmr92uOy9Tf5hCVQmKiggcHFrTqAO4sHqjwOo99D8U5yYdJHlpf27zJAJg19bjmVGPSRMo7wTCsSe90500iEqSIm5uaRpcGH1p/SkJQHULs118SgFEw/wU62bdfa5NpV3OdH6OnPHNd/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=selinc.com; dmarc=pass action=none header.from=selinc.com;
 dkim=pass header.d=selinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x7e4irzKcnFQQHACXZkDIkW1/pwhOAt77fO9g3dMiMY=;
 b=f7rzIhCo5lBckgB3Yl/0NoGSV1Aa/RGccajK+rEFlamqBHm1p43AuGnYKvsuoiyd4g4NBEhRF61TocyHdKeL6Dq4vBGjg9qe67ly+HBuNYZktXs9GQcMF8wMdYBdTHfbV6QF0l9rPy/TAFpw+Xd+zsqy40uM1qVSSau9bCPhS5C7/Yc6yHtKO+4SdxVL2ACtQ5wENuYKTlsmQFJ8hsYFigTzWoTZUtGT1mr4JVSaXKVL+Kn+Bx3jq28b8AaFTfyUpwz/pgxIa1hhOxGItcPyjXUgvSK5bXRkJccR8fI5yvn09qByR9vwrxCM+p7pGtuhaK9gwa/wo4z4r6BImqchmw==
Received: from MWHPR2201MB1054.namprd22.prod.outlook.com
 (2603:10b6:301:2c::16) by MW4PR22MB3158.namprd22.prod.outlook.com
 (2603:10b6:303:18c::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 19:46:22 +0000
Received: from MWHPR2201MB1054.namprd22.prod.outlook.com
 ([fe80::2f20:9f6e:209f:5182]) by MWHPR2201MB1054.namprd22.prod.outlook.com
 ([fe80::2f20:9f6e:209f:5182%4]) with mapi id 15.20.7046.015; Mon, 4 Dec 2023
 19:46:21 +0000
From: Eric Guinn <eric_guinn@selinc.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #bitbake - Single Recpie Multiple Outputs/Build Types
Thread-Topic: #bitbake - Single Recpie Multiple Outputs/Build Types
Thread-Index: AQHaJukSrs6x2GT7Dk24aCoP21K9Kg==
Date: Mon, 4 Dec 2023 19:46:21 +0000
Message-ID: 
 <MWHPR2201MB1054EFB78B365E713E7A14599286A@MWHPR2201MB1054.namprd22.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR2201MB1054:EE_|MW4PR22MB3158:EE_
x-ms-office365-filtering-correlation-id: a46bfb51-b623-4e1b-b8db-08dbf501b11f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5gJm1/MiHffeDCnOh7HSpJtwe9heC5XHEAvyuwbZKWzB8ydbLGYAMxnvVqd1+GX2nMid+88X9cBBbnH7bjGPs48qmOvIaHhGFe3gj7r6RoUfE42kaGFWcmf/L6SW46P/xiXCXtrFA2mPQ2XszvLpmR4eVzlbPXHGqAi2V5dPHbma/eBY/w22p6RoicoAmw7gOaBc5rjqm08Rtitob/ZH6zocUngyGmzhEvJzmJ1Z/vARDxnoQO108KB3elQniibd1KuJLtm/O2be/EGIflztEwm1SpOLVB94/2QmUOx+OIh8p12P/YINRE+MuTSferdmCP5q4vmW+BiO9r7dM95XWc4915847MKuHXNVHJ9ztoxIHWL0WiWq4trlBf3fKGYJfCiqwdN7DVLm6b0qt7e5J7SZcgZIlvUdSMqN2WfZeOM9Gwk9AJDVSwralltyJnXHLC1ZxqlB3W2xBdrTKtWKuspSle11tvc5xjYmO5pmIS0SqIGV/j1FlWhsheRqP9sNpVx9vu5563n6snkNfRDXRMN74Gu3nOm5D+7AUZEp2xVK2zuaZoxKpx5c2gQYAWM5aZfCKVq1eaKKTyHTRqyj0DN/v1k/krr2ZLAjuiNcCNQXQCG4THRzzPUdBhZfyYmO
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR2201MB1054.namprd22.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39860400002)(136003)(376002)(396003)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(4744005)(2906002)(71200400001)(478600001)(52536014)(8936002)(8676002)(5660300002)(86362001)(66946007)(76116006)(316002)(66446008)(64756008)(66556008)(66476007)(6916009)(38100700002)(26005)(55016003)(33656002)(9686003)(83380400001)(41300700001)(6506007)(38070700009)(7696005)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?+2TYvGqeZAdh/swPXVfzJDj7NtzoO5nB5/zR1q0z4reDzPMp6zuFyrIDH2?=
 =?iso-8859-1?Q?ZGVeREkpUdv9FJs3lDqR3DnN0jsjWwdOm2KXAMTFZGanwou8iYqwpkbSTJ?=
 =?iso-8859-1?Q?+35NGe5C5aU9/FO4e20EDBwVQgd7OQ2Jcnyu7hMYYRWHQ7VCMYKA08ApFL?=
 =?iso-8859-1?Q?uP9MEqsY3MF0eNcNlyOEIEs8MfdAX8p9VJ1jBCky8E70FBDJ7xJ3LYifaQ?=
 =?iso-8859-1?Q?BgZk7B2AsuUwJzj5LEo7X8fGkKFQpC549g5aR83hv3gb6NmzJfME0lodUs?=
 =?iso-8859-1?Q?LNhHh6Dg9Hqb+JaIZDt+1UDGLzajQiotSz2xiZtgoW6bLL+ukAJpRXO1sz?=
 =?iso-8859-1?Q?UNre32UcQ7Ks4F+VVBG0TNGYYwCBeJaWxcmQdWvf6y6nGtjTyrprCGxSMw?=
 =?iso-8859-1?Q?8AM3vEvR+C9YGaXI3zdfDkxSonxKvEDS3k6rJaCLTOmqsngl6FsmVLAf/e?=
 =?iso-8859-1?Q?tfU5paK4rr3YgQ1Wh8AjAWz6c7LTIDuFbSbwLPOF6FYZQsv/VYiEnm3tIc?=
 =?iso-8859-1?Q?NavbGHehmLuw7hhcmzfnkeX6q/2tzsGmaWWtHAqjZ5H5wSIDkDPH1Pv7vX?=
 =?iso-8859-1?Q?VLhC9eOerfzQkyZtUTF+LkBYOJMineE0xMvwRH5iU7us6ceB+gLbCZ1JV3?=
 =?iso-8859-1?Q?fmA0pgDepYNlDsSte0gaNaXx1M5nI7MoOCtjLiGhe/L6NIAODZkrTk8YVJ?=
 =?iso-8859-1?Q?iwQ/zMUEL9s08P17OsDQ5fFoam6PUOD5b0Vmk+skYmiE7UH4UGeyXRX411?=
 =?iso-8859-1?Q?hiNoMOI9zS6SqIfVTYahomDeW3UZLtf1QUBmSdMB962YymOzXOf+11bqFR?=
 =?iso-8859-1?Q?ioeN0ik50JsxTmWA2+etCWQjlcNO7UnFbjrQ6BwsE5L6bco6Ht6Lwkukb7?=
 =?iso-8859-1?Q?GJ0mlOLqDrj48uEqK0en7m0baAVFq0mFAbtHNKhwH8pHJSO0vIt3pepJyO?=
 =?iso-8859-1?Q?F+QJZaMmEFyVwsprlebH8LqioBQ+vRWEjif7nefxCqBcx1zJIioEEkzC7m?=
 =?iso-8859-1?Q?ZXao3AVAEU14UXmRvFAHCSjtP3RQAu+DXIzrUhh+bwDCdCy11Y0Dbs3Ldf?=
 =?iso-8859-1?Q?0dIKjOM1ogoNAzFn9qf9eMdVMC6wMtnb6dBJSo+9mcESaMSTsSqR+fRhD3?=
 =?iso-8859-1?Q?YzpppMbBu0brEOy+dop1DszoxLGfSs3rfdnYvdQ0CgHZkHji0jHL2Ny70Z?=
 =?iso-8859-1?Q?6ZBIU/e6k55cj49O4BXfucgg2gv004oK4/P2seQHqHEKdakz+m5KniUcgN?=
 =?iso-8859-1?Q?8da92gpx4kwhcu1KVNjYcBFmkNoSplZ0CH+3imyqKR3+9lMOahPxq8zjMl?=
 =?iso-8859-1?Q?kf/3TAE57kvkyUOcluzLGlEQ57myK8z7fSMMCFf6SnxU5P4SLtS86YI4u3?=
 =?iso-8859-1?Q?gHRclTofGnEbRk/PFlQ3n0jfrEKsjYGALV5wOb9S5xsE6Gi5JE4x0fortd?=
 =?iso-8859-1?Q?tLdh4zrfVEwgTKLoAc6usZpKv4EdcsEM+fSUfRBXXiLHAPnlLLP8RhrdcF?=
 =?iso-8859-1?Q?6DLzMHG9L77jpSvt1GzYacbinXKZXFG7tlubjb909c0p/M5ZxucKyzuNVL?=
 =?iso-8859-1?Q?OVAzwdhrrFIPcBGiYu0w8dlMaBrr0SlnURRCG9Bv1TluAHIQ4f1qsaK42+?=
 =?iso-8859-1?Q?g52OyelwFscXdqiGI1PjwDICBsd+aClqHx?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: selinc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR2201MB1054.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a46bfb51-b623-4e1b-b8db-08dbf501b11f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 19:46:21.8238
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 12381f30-10fe-4e2c-aa3a-5e03ebeb59ec
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x5lwu4cdPHnkNIV6Bc3T7kmrAioAlNavLdRPp90Ry6O68jX6NhUseWJw6K7oRxrqvmrYsBTp15SBppD3HrPtwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR22MB3158
X-Proofpoint-ORIG-GUID: 2YCT3LuGQhQo-nbE6RsNcygNeVGYaGNh
X-Proofpoint-GUID: 2YCT3LuGQhQo-nbE6RsNcygNeVGYaGNh
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1011
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 adultscore=0 bulkscore=0 mlxlogscore=625
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2312040153
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Dec 2023 19:46:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61793

Hello,=0A=
=0A=
I need some feedback/advice on a "problem" I'm facing with the recipe syste=
m. Currently, I have a library written in C++ that also has generated SWIG =
bindings and a resultant Python lib to install. In order to do both the C++=
 build/install and the python build/install I have to use two different rec=
ipes, but really these outputs always need to be present together (they're =
in the same repo). I may also add .NET bindings in the future, so any answe=
rs related to that will help as well.=0A=
=0A=
Insofar I've not found a way to get a single recipe to do multiple builds/i=
nstalls, if I do:=0A=
=0A=
```=0A=
inherit cmake=0A=
inherit setuptools3=0A=
```=0A=
=0A=
then all I get is python, if I do the opposite, all I get is C++.=0A=
=0A=
It could just be that what I'm trying to do is anti-pattern and stupid, in =
which case please let me know and I'll keep using multiple recipes.=0A=
=0A=
Thanks,=0A=
Eric=

