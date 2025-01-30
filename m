Return-Path: <tim.bird@sony.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 160ECC0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 22:20:07 +0000 (UTC)
Received: from mx08-001d1705.pphosted.com (mx08-001d1705.pphosted.com [185.183.30.70])
 by mx.groups.io with SMTP id smtpd.web10.6717.1738275603590839013
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 14:20:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sony.com header.s=S1 header.b=M8emn6ei;
 spf=pass (domain: sony.com, ip: 185.183.30.70, mailfrom: tim.bird@sony.com)
Received: from pps.filterd (m0209320.ppops.net [127.0.0.1])
	by mx08-001d1705.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50ULr4D5009139;
	Thu, 30 Jan 2025 22:20:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=S1; bh=7tF97FQ
	qqG3/XHsBkLgHMQCSwPFkxh+QwSgxpIH+SJo=; b=M8emn6eiSebBo1TOtcWSg+4
	m54B+TdF+dh2zs2QAOBFoJbvvW8ARHzgj/TUY9nwHN2Ry81OTkkZnYQlJXWTBEis
	e195J3UMMIV8d1qtfiMrKMygpMnPMYcsX1Ms0nvD5Y7K5Ha+t2eMfCjbRloo4jxz
	q9HVWNuWLxrgj7N/9kATIcUO9UgSY9oA5ApVkdJ7YWe0dYlWwjoP95PTTfyb3nSv
	5fRteNKnPD4U7yntBGpzSCmX6xBNo0cMeSQZy0gA0gUCe0CxA3ThOrFr7UJE9cVG
	7eiaA8xDE48jUcpM7CSsu3deV6jFfxhgJiISU1uSeU1wvv4UY8fclzSRy35g2dQ=
	=
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2045.outbound.protection.outlook.com [104.47.55.45])
	by mx08-001d1705.pphosted.com (PPS) with ESMTPS id 44gf8y83cw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 30 Jan 2025 22:20:00 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tQvPoB3WnYD3PV1MDAMTKljsczLg8yVJZrj3wBwcVRxnKAnvhmPVXbzI51160iMM7KaGl+NMyIwlFG+g/gf4k9ycnW58ryf67G5UzEhHIPIZDX4HGvOzKiAO+8OQLXAICYh7EcwUF/+YrbvHwtwqHXcDxmVrumMmp0pQvR74n36yDvcRLdRyIO0hCHcXuNWB6E4XkDhg3dqaZe/DN7Bq2Uu1z8yb+AIAFQK7OG5/Nl6Dm1Id9uLkxjWGiB2OVapjICSjwt+GpOO0zFtzKI/rIXg1Kad8Jq/PkLMb+E1XaTvEZos+qcLLdigwMBOi2WqVfSRhd3XRxzHdhrZwaztagg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7tF97FQqqG3/XHsBkLgHMQCSwPFkxh+QwSgxpIH+SJo=;
 b=ZMrBr9Kix2HdMjLl+j2NEEB18lHN918KJanoM37HXUXiUSEdmf0N1WI/4g1RYAhsJr3hCzP0XTzTvl0SMG3TWSZW8dOYYe7wu9w8KjBM48wgKd7Y/tjjeWWnE7W6uxbVf9eZ7p39KKREw7kF0Jas2/AR7lpZOvCL3b1UcmxhWVJVUUYhZQecxFIN4y7dDGcbQjgO++AiR6oXrTGwWyv7oSmfeCWqv04GesxQE1hzT3NWRdn6rL5I+rEg4nbLdCJ/avwOSyUSlQLa2SSLiRt1C7SO+SvGvi4xV9Thpz4taC6qhoeO6WghIaeGQQpAgMCKZZERMETUbjSC8mp3uNsFbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
Received: from MW5PR13MB5632.namprd13.prod.outlook.com (2603:10b6:303:197::16)
 by BL3PR13MB5209.namprd13.prod.outlook.com (2603:10b6:208:340::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.21; Thu, 30 Jan
 2025 22:19:51 +0000
Received: from MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197]) by MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197%4]) with mapi id 15.20.8377.021; Thu, 30 Jan 2025
 22:19:51 +0000
From: "Bird, Tim" <Tim.Bird@sony.com>
To: Khem Raj <raj.khem@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] How to determine distro for a YP-based image?
Thread-Topic: [yocto] How to determine distro for a YP-based image?
Thread-Index: AdtzTCGl8NhcQIwZQYqeZDYCHbcXmQAFOlKAAADL6NA=
Date: Thu, 30 Jan 2025 22:19:51 +0000
Message-ID: 
 <MW5PR13MB56328B79ED215880FD6864EDFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
References: 
 <MW5PR13MB5632F256FE6E4330430196EFFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
 <CAMKF1spR-X_bM=-xKeG4vNATeKn9qOkw5NgX6ChCLkvOLAjQzA@mail.gmail.com>
In-Reply-To: 
 <CAMKF1spR-X_bM=-xKeG4vNATeKn9qOkw5NgX6ChCLkvOLAjQzA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR13MB5632:EE_|BL3PR13MB5209:EE_
x-ms-office365-filtering-correlation-id: 087be40c-cf41-4509-b30b-08dd417c374b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?R2NFSC8wWUxrUFYzdlZwMlI0Q3RZQXFWM2g0NTUzVGNWQnRvWnFHaVAyT2gx?=
 =?utf-8?B?K0cvRDBGMWszUUQ0c1UxazdSN1JkUWUwcVVCbFJNeTVROG02OHdvelhnYW5z?=
 =?utf-8?B?blp4OExESTZFN1d2cWtrKzQ0UC8xdk9kYVR3NUNKY2YrRmYrb1VuYnhMdjhB?=
 =?utf-8?B?VDZjb2hMRVhuYzhMZ1NQa2w1anFLejJ3NGNFWFZUR0FvQW1GOEJNK1hyVndL?=
 =?utf-8?B?dTUrWGhTU3padDVBOTNGa3BPSDc1MnQxbXVBeS9UMHdINittWlAvL0dGU2xT?=
 =?utf-8?B?Tmxhb3k5Sm1CbWRKWXJvK2NOZGRUNmlQbDlQNDFKS2ZkTUVLWFVXQ3gzR2Z0?=
 =?utf-8?B?Rmo5S29VS05SWEN2WVlhMUk2eU4ydi94ZFhFNnRmYU9remQrWkszYkl4Q014?=
 =?utf-8?B?Q1dhSVV6cEFMSTAwQzM5SWdUdERmbzRDc214Z3l5c0Y4MEZ3NmpyTlg3ckQx?=
 =?utf-8?B?My9sWnhhMVVTUjAxRTVZVkpJZVcyWHJDbmJBSHZLanN2UUZ5QlBjdjdSTHVF?=
 =?utf-8?B?UWhmN3FsYThDSDg0UkFETldQVFd4QTNlWnVVd3RvVSt6aVllbEFwdEZEajV2?=
 =?utf-8?B?aXZ5RGc4TlBiRUZ6NDFpTkN6dzBFMXNPczduSVd1VEJPcnk5bXZabUcvZ3Br?=
 =?utf-8?B?NFY2Mlo1TUUvU0NkVWlvNUlodGZBamZmTzg2KzFTa3lzcGYyL0Y4bUY2OVNL?=
 =?utf-8?B?cDNSMEVKSzRaVUQyZWgzbGR2ZHhNMTdNR0JXd0prbWIvRTFZcE5mUjY4T1E4?=
 =?utf-8?B?dzFFSEJvbDU5YUJBYmpJbnNYOWFZbW9mKytPY3B2L0hOUm5iK0FWSUhiVTRH?=
 =?utf-8?B?UHBrRStWYUk5U3VKWHlldGNLRWtaV3JJbzZjYkQ4S29CZ0VBdFcyYmpYRFlQ?=
 =?utf-8?B?ZDl5SzlBYjFMZis4YStPNUxBQXV1Z21pRHRtMlhpenVob0k5QWE4aVhnaHZ5?=
 =?utf-8?B?dGZmWWsrYnhHS01raTg0RHplQXFmTXdrcWRLd3pua3ZSeHk4YmZBOE5jazg3?=
 =?utf-8?B?WkJyN1dRRlFTTVNJdFhFWDFQOWJsMy8reVkwZzVub2lSWE1jQUF6ZVlzRFpa?=
 =?utf-8?B?elIwTXhKeWxCTGdEM3ZualA1eWJhb3RJRWI0emxqaEZvZ0ZpQUU5aXpjbHhE?=
 =?utf-8?B?QzZYU094QS9tRUNnM3N4UXNvdFBTRUxvcm1GSDJEcTZnUTNiY1RkaUdmWExB?=
 =?utf-8?B?ckZSYll3LzgzTXVmbDl1ZStHZEo5TTNjU1Arb3R4REMxKzF4bU9nTHY5VVRx?=
 =?utf-8?B?R2wveVdsZlBkd1p0UHh4aWJwc0FoNUxNaXRkbmpDbnNxcVdLd0Q5YnJUdVpv?=
 =?utf-8?B?WTdpN1RldkVCREhPR0IvVTZmQ1JMem5makoxc0hKUzcrWXVrYTJMVHZEaGhB?=
 =?utf-8?B?UEhYdXVjb294cm51QjN4bURDNE13QmNTTjhsWEJMQW1TYnhadHJXU2pXRk81?=
 =?utf-8?B?ZjhsNmZsK3JHZFJieUN4VVA3THIrTzFycFk0cUdqQlBVK2toM2ZCNXIrV1ZS?=
 =?utf-8?B?VUsxSmxHc1U2S252NXBnTEc5VHdOdmlPRTBHdlAwM1Rtb0ZSNFdZSTVtc3B5?=
 =?utf-8?B?TTkza2FkS1FHdVE1SUZoQjBvMjFLYzFqb29QajBPMWtpcUswRElkeFVrNHk2?=
 =?utf-8?B?WE94MURMWFY5b1A1VVBsUTFMUExydytuY0MxUnpQTXd0Q25Ic29jdEkzeDB5?=
 =?utf-8?B?S3dpaVBSYzNqYXBJb0xVd1k1cGNuTEhVT0c1aXNZdU14QWMrWDRVSDdTRXdj?=
 =?utf-8?B?eUF4T0Z5UnM3dFdvL0tZL2FLWFJ0b2daaVZsTktTb3Q5VXJ6Q3RiRGdvT0lS?=
 =?utf-8?B?ME1MeGhaSUJQWG5wbjRxbXEzZ1EzK3pxN1EvbUViZzhGbDllTTFYcitGdWZF?=
 =?utf-8?B?bUdGSXg0RzlmaGZrMCtQZzd5Z2FHR2lQLzlVMnVPeDEzZnc9PQ==?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW5PR13MB5632.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VXU4a3cwTEQzelRGQzBIck1lbE5TWWpqT2ZXTEtVVjNTcThxYStxc3VySUJj?=
 =?utf-8?B?U1d3RzRUNWtHKzZiVDJWbFNubFhLd1ViL2ZRSURCck5rMVYxeWZHNzRUUjhD?=
 =?utf-8?B?eldTeEY1dTZ0U3VlTXJUZUpJVlgyMjMvcWMyUW4vVzNQajVLUWsxV1ozOUhx?=
 =?utf-8?B?QWFpa0VUeFlsYkpXaDdnV09Gd3VtTUYxYkxEZ3gzZlo3Vjdjalg3NG5YcE1v?=
 =?utf-8?B?TnM4RllVdUM1VEhPNFdkVG13WkU3OWY3UXgxVGFFQ3h0ZWp0bjAzU29DOWpk?=
 =?utf-8?B?NVRBanJCcktyT0FXQnFYazBJeGdjbEhjM3lpQlFJMGkrK3dtdHV5NWFpT29P?=
 =?utf-8?B?dHRISDRUQnRzTDBjcFdKRzBlUmVFdkpOUzg0UGQvMG9oLy9FRlYxTVhWNHZE?=
 =?utf-8?B?NmpCL0p3QTNERUpaZ3orZnVJWWw4dUxzMmNxb0d5YXVZY1p1K2VMeFFrK2hp?=
 =?utf-8?B?alZlOXhURWxxVDlHNlRwKzA5VFp6ZE9lMnBZQzNoaitUeG1MYWxQNnBJYklB?=
 =?utf-8?B?K2NlTXZLanFNblBWd2JIRnVya0g2QU56aUVsOW53aWlqZHJqSE5wY1c5MU9v?=
 =?utf-8?B?NGlvSFo3QUFtaWFsSnptR1kwRjUrdFVoMzhoZHIzMXc2TWhGYlY3QjRXbE0y?=
 =?utf-8?B?SytKeHhGQkxqZEs1ZERQZUZKcHJMOXBOdUh6c1ZkTXBiS2puaTNMR2dNeWV1?=
 =?utf-8?B?MWdrT0hqM0Zra0thR0Q3SnRpTEUvLyt6MkZlSm9xTlltcDZCYVlVTnBna0R0?=
 =?utf-8?B?SjNWZitTM3JxdnlGVlpLMjBab3h3OUZKNFZRTDlzUUgzajMwQnRhMjFvNzVo?=
 =?utf-8?B?MDF3anNYRTVONEVOYWE2UE1DWmZEdUZ3UGNJL3BLTGNmcTlHUlc5akJxMFd2?=
 =?utf-8?B?Yk5oWVFZUzNpa2l4aG5oamRwMFNIdVlQT0RzcnBhckh5bkY4RHNxRFM1NFFw?=
 =?utf-8?B?U2p1Rm9WS1hRNStjTXZnekd1dklNbXNEbThKS0x0TkpxaWlBblg0UVI2TERm?=
 =?utf-8?B?THFtZzkxeEZyRkpacnN3elczcWlIcWRYV1UzQjc4US9uSloxTUVqTDhYNXFU?=
 =?utf-8?B?UXJYb0pmaXB3WXUzb0dhck1yT2JRUU1NZzdKT01FVStxQmE2V2FIQXFIL1Nm?=
 =?utf-8?B?YUVHYlNUNkpXNXZ6eUtOdi95NlVSWDZ1MDFZSnFDdWJOdnhFcVZoa2VLSWZD?=
 =?utf-8?B?V3VoUElQYmk0UGZiSmdweWxrYWtTMVVUYzViYURKcUt3Uk1wMHFsL0FaMGhM?=
 =?utf-8?B?QXlSZTNjQWhvbE1RSitoZXdubWVRWmQwRkxMMFdoMmlMbG9seG1iL3puZTZu?=
 =?utf-8?B?UUlSSjRJRm0wYjhHdUROaHppUW1hR05yU2pCN3lzUFh3dTZHZzI1aTdNbldn?=
 =?utf-8?B?VlhiK1B6ODA5S2NITTkyMW8xT1lHdkRYbVpKSkVoT0hlbEdQM3ZTeFVMMXJB?=
 =?utf-8?B?OFlxVnQ3TFpVSVZKZ3QyRlZPV1pYakVjV1lnZXJDUEpkUk44cy91VGtFVmg3?=
 =?utf-8?B?N3dIbFIzUG5JR2gyK2lmT2ZuU2xtejRkNDFRVVkwMW5TM084K3VHeG94ay9j?=
 =?utf-8?B?OFpzZ2orZ2VSTkc1U3M5aDJuWDZIMGZvY0xnS1pQRyt1emJXUkxRZ0F4S0VE?=
 =?utf-8?B?YitibDEzb005aXBPV1hHZkdGMkY4UkR6b1RKOWJWTVVNWHJIVTZ6MDlFTDR3?=
 =?utf-8?B?eXRtMFp3MkNZT05xQUJGMWVTdytKdHZlNXAzejlseUxEeDJJYk1VeVQzdXNh?=
 =?utf-8?B?QXU1a0RXVnYxUFRacGhiS0VqdWZvTEJRanVmeFAyUncxY1pyT201REZSc1g5?=
 =?utf-8?B?aUxlUlJBN3VES25ralRZRUtRdlFKSW12LzIxOVBYYmhyVVoweUF2Y0NwLytN?=
 =?utf-8?B?ekJnVWhPeU1rMll5ZXNjaXVFVFpmNTdJb1hGZmJmYUFpVnFEMndzYkVYSE15?=
 =?utf-8?B?cVZUalB4R2JNV0FBa1pIVWd2WStjSGFORlZWSTJINUpBNEFtQmZjM0FJQldF?=
 =?utf-8?B?UkZPNUtuY1JGRG5lNEVrcElsRmhiV3BUMlFqcWxKSFFDci9QbWswVGJxZDNO?=
 =?utf-8?B?akhodDVZQTFjRENWeHdqVXlia0dMQ0xmS2xHaERLeFJkTG5KZlZOOGRYeUxT?=
 =?utf-8?Q?vhQM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	TRPRlYGz8r/XZqeQU/r3yQFW1G7z8AFJiD//aOVnfJUaHcP73JtJSDRbxAjhbBMfLgphvebOMCiv2q9rEkGLurY74RNOPaYkceIqQlK9tRYENAJ7oiEVj/3emvyhDHnkIMqQRJGOfhrLtgEeINbOjsqYQTnaqIXhXelcKrtp3qblPs/JWnAs3rglZT8unJqw8JdwkXh34eDn5LoPENAf/MBtDEuqtbZCyD2BDR7LHJKVLOHJ0m7Ct9aRk+C3SFAY6y7eAoHj0f6Qglhp9dZpb6ZW2mYgDwOV7rTqzB/j29Yi8sGh/0/ftzjghhXIBlcIbshnzosOupe/shAqNyWDbVIyrgGdLZkGt/AmyqfevVIj0C7kLssQipshYWDyeprLpC7f12kvS7ZgFOK5VozvGeGCD1O938fmveVo54KMyR5kQ3cNc734sgKIPwu7B93IbP0WEFTHNlyHxu5zc+5nFB9yrK6Vlu5jpj2QOFB6AqWjwT1deRE+MwmYsPzxlwZWhdthpOGDlK7/WApv4iHvxbmiC8/nOsFlgPTuh/sNOZ3wAX0gNUmJiUoSXfEKG1voA+Se0lDVuOwiEH0eLo6ML3PaIamR0pSQZHj9xqDPW4VndMF0+7mnDkloeoQBbEvc
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR13MB5632.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 087be40c-cf41-4509-b30b-08dd417c374b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2025 22:19:51.5371
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LxDINS/swkO6ctC6YDw8ffdwI+yHExQghgHBK71UCA1rD/pcbLpbnQ9pm+62olFa52ko1mIhfeoboWKDY41Bxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR13MB5209
X-Proofpoint-ORIG-GUID: xpa8zJCThslMoEUxKWpOhVrQCo7b8C08
X-Proofpoint-GUID: xpa8zJCThslMoEUxKWpOhVrQCo7b8C08
X-Sony-Outbound-GUID: xpa8zJCThslMoEUxKWpOhVrQCo7b8C08
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-30_08,2025-01-30_01,2024-11-22_01
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 22:20:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64687

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2hlbSBSYWogPHJhai5r
aGVtQGdtYWlsLmNvbT4NCj4gT24gVGh1LCBKYW4gMzAsIDIwMjUgYXQgMTE6NDjigK9BTSBUaW0g
QmlyZCB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA8dGltLmJpcmQ9c29ueS5jb21AbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBIZWxsbyBZUCB1c2VycywNCj4g
Pg0KPiA+IElzIHRoZXJlIGFueSB3YXkgdG8gdGVsbCB3aGF0IGRpc3RyaWJ1dGlvbiBvciBiaXRi
YWtlIGltYWdlIG5hbWUgd2FzIHVzZWQNCj4gPiBieSBsb29raW5nIGF0IHRoZSBjb250ZW50cyBv
ZiBhbiBpbWFnZS4NCj4gPg0KPiA+IEkgcmVjZW50bHkgYnVpbHQgYSBkaXN0cmlidXRpb24gYmFz
ZWQgb24gUG9reSwgIHVzaW5nICdiaXRiYWtlIGNvcmUtaW1hZ2UtbWluaW1hbCcuDQo+ID4gSSBo
YWQgaG9wZWQgdGhhdCBJIGNvdWxkIHNlZSB0aGlzIHJlY29yZGVkIHNvbWV3aGVyZSBpbiB0aGUg
aW1hZ2UsIHNvIEkgY2FuIGRpc3Rpbmd1aXNoDQo+ID4gYmV0d2VlbiB0aGF0IGltYWdlIGFuZCBh
bm90aGVyIGltYWdlIEkgc29tZXRpbWVzIHVzZSBmcm9tIFRleGFzIEluc3RydW1lbnRzDQo+ID4g
d2hpbGUgcnVubmluZyBvbiBMaW51eCBpbnNpZGUgdGhlIGltYWdlLg0KPiA+DQo+ID4gSXQgZG9l
c24ndCBsb29rIGxpa2UgWVAgcG9wdWxhdGVzIC9ldGMvb3MtcmVsZWFzZSwgd2hlcmUgZGlzdHJp
YnV0aW9uIGluZm9ybWF0aW9uDQo+ID4gaXMgbm9ybWFsbHkgc3RvcmVkLiAgSXMgdGhhdCByaWdo
dD8NCj4gDQo+IFRoZSByZWZlcmVuY2UgaW1hZ2VzIGZyb20gcG9reSBkbyBub3QgaW5jbHVkZSBv
cy1yZWxlYXNlIHBhY2thZ2Ugd2hpY2ggd2lsbA0KPiBwcm92aWRlIHRoaXMgaW5mb3JtYXRpb24s
IHNvIHlvdSBjYW4gbWFudWFsbHkgYWRkIGl0IHZpYSBsb2NhbC5jb25mIHRvDQo+IElNQUdFX0lO
U1RBTEwNCj4gZGlzdHJvcyBkbyBhZGQgaXQgZm9yIHRoZWlyIHNwZWNpZmljIGltYWdlcyBlLmcu
DQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9Zb2VEaXN0cm8veW9lLWRpc3Ryby9ibG9iL21hc3Rlci9z
b3VyY2VzL21ldGEteW9lL3JlY2lwZXMtY29yZS9pbWFnZXMveW9lLXNpbXBsZS1pbWFnZS5iYiNM
MjENCj4gDQoNClRoYW5rcywgS2hlbS4gIFRoaXMgaXMgaGVscGZ1bCBpbmZvcm1hdGlvbi4NCiAt
LSBUaW0NCg0K

