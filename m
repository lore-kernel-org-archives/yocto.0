Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E321C61DA4
	for <webhook@archiver.kernel.org>; Tue,  7 Mar 2023 03:37:22 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.6766.1678160235312641600
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Mar 2023 19:37:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=Ndcvqn81;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678160235; x=1709696235;
  h=from:to:subject:date:message-id:mime-version;
  bh=Hh64b5fCQi6dsyaLT8U6mw24oSniTRszNl6p8+mrNNI=;
  b=Ndcvqn81hJxJHGDZjS4eT8xggZ8PUMXY/N7o5j3CG/hU5ZAjDtBvS6y5
   Oj9ezUlzxgFNBTsAdObIjDEo3DWzTaxkYvSp4O8MI1HDxduPxPNCpePnz
   tCrBTIlJ3MGgX0pn8jwHGSC9TZdHU8eDMHffjijb8wwhP0dlEhYvrivl7
   0krnimHI2nj9AAJsAGiHKEKTOYF6qhaDmiTdB0QqX1dMs41Hr4kgyeyU+
   bw/sCY+PCrdudgygbNpf6E0WXwfWJtYC/X9i7uMTAuzVCNwj7hCYyGJRB
   q8pf7g0EjFiCMzTT/ZkXB0DojSRsN4TcuxGhOs6laUzhqO07T4TXUI8oc
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="363370733"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; 
   d="scan'208,217";a="363370733"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2023 19:37:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="676420308"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; 
   d="scan'208,217";a="676420308"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga002.jf.intel.com with ESMTP; 06 Mar 2023 19:37:13 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 19:37:13 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 19:37:12 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 19:37:12 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 19:37:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W/WZjUV+6Gn5Um/DWvp3WFKoqEjbmwrrI/Ut9VgvEUhUMVUb5mWrsI87eVKj/ZpAPUQ8l6GxBkOnovuUHfZDt5jDohAxUOX476jNMquK/3E1CIDrwiu9dSGU99LfZnCUCjo7M0MeU0o0kbqKMDRdP4pphtDCysVkkF4sRFCxolIkSN4xsIDQZ/I37pYeWDTspMIVoh9fFQhDx3HU3AGBShBDnZqZhpkwPIfa0J9BiLLZFEmQGjADPmylL2DDPFNjyPbn0r/rNQQ5FToT0jpaHflbSu4GxkCEthuy3r+GCR06I9mU9KAxgBj82CwcStwq2kQ2SBpT12F2BS5lmmBehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hh64b5fCQi6dsyaLT8U6mw24oSniTRszNl6p8+mrNNI=;
 b=fpsrmVEJa7EaXuoldOck3Cpe+gLZixmcgwE7UKH6zieVEb/eW8Vqc1GLtWMqh1qkJieRbktE4OtqK6wE+DOhYQuQrtaFKPnogrASmfIm21EAfX0vph3VOnXoI1N6e1M8gb706gqAGN+5WLOnoJ5hkfFn+2+iUmVeq8UGtO4ipeVKmidwYZAWB9Ac8sXeI3afsayePtb2fKiXn+G0cUh5/fyF/5iSDZP3i91Bjh7GENJV94P7T3iJJGLWTvqCFn6egOYBmL7y4pmmOGg69W984sshpC5LA0du1rxF9zzZhgeZ4+haJq7xbt4SzDpA5maGFgN9O43tdOqitJCoy1fQpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by SA3PR11MB7433.namprd11.prod.outlook.com (2603:10b6:806:31e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Tue, 7 Mar
 2023 03:37:05 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::433d:ade8:d177:d3bb]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::433d:ade8:d177:d3bb%5]) with mapi id 15.20.6156.027; Tue, 7 Mar 2023
 03:37:04 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 4.2 (yocto-4.2_M3) Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 4.2 (yocto-4.2_M3)
 Now Available
Thread-Index: AdlQpOhYyb5KP9n0RBuRxVTUvBS2mg==
Date: Tue, 7 Mar 2023 03:37:04 +0000
Message-ID: <DM5PR1101MB23612E0A97FDD28DE3B30E6CB9B79@DM5PR1101MB2361.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1101MB2361:EE_|SA3PR11MB7433:EE_
x-ms-office365-filtering-correlation-id: 97d28b95-c7e0-4c81-37a7-08db1ebd3878
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mBWM4pkER5DlCVFC49UP7N+ruK5rYmBnbj+cHVY/S9Bt8Lb2Sls5NGlr1iuGdB3hO//bTL1JW+v4UHKsi/dH+z/2KIjLFsSc3wGUYfUtzm9U4ORVGUzPZy85Gplytxn2YUtcf9cfBjGJHnkVrIhdG2YrCLT4B32uicJykefbar6C4wsW23l/cgj0zOuVOLZx5fpx4ThjFm+p6D4Jb+R1I3OSY/Mr7qdRrXabItqmWEfZntf5Lzzo7gslwYnvTg+yo5/ohWgSDOF+fhEDcTv8qLYgPeKK5JehrtWudRxGzgpaWf43K7FeL00whkVw0P4+KfVWgqmNHifODtmPF4WK6NngfjO1QObtUPUM5Kurbxvlr6pXPqpkS433uFs92XZBSDIEWgrX9gAkR+d0p961bWGuK1BpDxtkHZ+UjuGgBlVHVhdyaoaIRGNHooZKHi20y2vtLJrxdnmaDJIzK0jfSawvppB/Qi/M+3fwwij2Ct8m8PgSP91gyr8BNPVRvJRY4/e57L3MN4A095tNTAATgmxBtw6i37mgpdlcBcFY9dAl7deaB8HVasn2VRKa7vvte/TVSXk24D4a7kgnlFc1XehLAtfzXcI+zCfCM7Iu3416fF0+A5sGsolrGC0vammc5DUq/TbA0PMp1jG95HGRTuFvJLxmySwYQkqxY/Voo5JQh+laBWg2RB0scjzby/g+UI9XSJ5dCMO01DTX7D4F4tnhrd8PPpsBUNFqbMN5vb0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(396003)(136003)(376002)(346002)(366004)(39860400002)(451199018)(33656002)(83380400001)(82960400001)(6506007)(41300700001)(9686003)(9326002)(110136005)(186003)(5660300002)(7696005)(966005)(64756008)(8936002)(76116006)(2906002)(8676002)(86362001)(66556008)(66946007)(52536014)(450100002)(71200400001)(4744005)(66446008)(66476007)(122000001)(38070700005)(316002)(478600001)(55016003)(166002)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z3Fnc2l5cnU2NnYzbml5L0oxR080bnZkNnlUMlNLeURUS2NrcXhDeUxLbTZF?=
 =?utf-8?B?Zm9WMzRqYnQ1REJ3TitIblk0cU5ZSVZTQUZGSFlyYkZoQ08yUHV3MUM4SVdi?=
 =?utf-8?B?VzZqTUpMYnJXRjFIaXhkL216NXdSVC9oOVRpNlVrZUtDWlVFT01sMHpKeDNm?=
 =?utf-8?B?SlByUnVCa0J6alRKcWhQWTBIWnhtUW1xQ1Vlcms5aEgzcFh4RmxZRndYUGJG?=
 =?utf-8?B?Z3NxbWVQRTlPYXp1Tkh6WXVGQ2VxVzNYWVduMi91QWd3emZyQzlIMDM1QzZj?=
 =?utf-8?B?OXVmOVpPUkwyYkgweFJtdEVhemo2aVluTDFQNUpnUVpJZ0NBNFR5Z0lGWWo5?=
 =?utf-8?B?OGl5OHp1L3NiVENGQ2lDT3JsMzR0VVFSbEc2NVlNTngrNjFidG1vS3lxZDM2?=
 =?utf-8?B?YTlJZldTbGZYVTIwcUVud3VWbmtlS1VVZ3dpdGsyTWVNdjNGeUJrblQvOG5L?=
 =?utf-8?B?YkxzdHUvaWtheDFjSjhCM3E4SnN2c09XL0tVQXJiTGdrOHZocUdlV3AvSVh1?=
 =?utf-8?B?ejVWWkQyekN3U3VlT3BUSU5Hc1hBY3hOOE03aEU0MG95Q1pyMmRISzdSVFJn?=
 =?utf-8?B?Ylo1YTlzMkh3UzZtRDFyV3AwMTBPZTFmdmdRMm5Na0hpZEJVaVo0Q01nRmQw?=
 =?utf-8?B?YmlGcHkxNElTUnY2bjBPZ0w2bUppRFM5RlhEbE5LUTZhOXFzZHo5N3FkNmVJ?=
 =?utf-8?B?S2pENVRyb2IyN3Bwalcyc2ZTcTdBRThvZCtzQzJYbFJqRWRaM3pSVksrSC9r?=
 =?utf-8?B?cjZLRHBacHpUZWpQYk4vZWh5RmtUYWI1R1R4RHJnamVsVE1XZXZVRWk5cWpS?=
 =?utf-8?B?aWRuWjRTOVZidm5OY3dtVlRSR3Z3aWRRMXFoT204TWI0MUkzSEVyKzdsTVBE?=
 =?utf-8?B?d3dyejJKTUFvUVRQc3ZiYnNQSkJsbG1DaGUwUWpNSzRuSG5UaDlMN3VhcVln?=
 =?utf-8?B?bnVvdkNFUEhrR3JpUHp5OG16WGdTeG1WNklFNWZYSHpsN2pEV3lWWjVITTJx?=
 =?utf-8?B?RGhRLy9GZnRhWlFQRE5oazZPQ2RXUEZUNWZKclhySEhEYys3ZC9mSlppcDY0?=
 =?utf-8?B?WlZlazBYT2xsTHB5OXNublNudnd2Nlk1SkFFRlU5MTEzSGt3RGVNUXFZNkE4?=
 =?utf-8?B?MDFIeTlYcWZTNXR1Y2Z6MzhjMWdFQit3Q1o5Y2xEZ0tOTHhpNHU0K2hTRnMz?=
 =?utf-8?B?TmM2Smc0dDQ0K3BXaGVMQTU3V2lHNldIcFpOM01sRjlkeGlGR3d2SGxOYXFC?=
 =?utf-8?B?YWpPOUJqZ2FiMlQxcTVtYytYd2MvODE0ZUgvZlFrU0xMWWJ5Y3VFMmFsVHM1?=
 =?utf-8?B?UE5ZeHdwbTBwK3BYUXQ3c0hzRnZ0V1FsZTJ4czdpOEVVdm5EbGw5eHozeHcw?=
 =?utf-8?B?a21NWDAzd1NCNk0rV0krMG1KNVNRaHgzZk1DS2JBc2pXM1hrSDArUnVzYmNX?=
 =?utf-8?B?M2U4REtsOVM4d09GTEZLdFdkSC9zVENjNkNFRllOdldldmgzbVdia0liVms1?=
 =?utf-8?B?eFI5RzJlT1dsbnQyT09aeDJsTE16Nml3dENKYW9GcFlLMUdCdjNqcG5acVdu?=
 =?utf-8?B?cXVHeHFuZll5cGFJTUJDOWVIVk1qYjJnNFo3NXNCTkxSMWV0NDkxVXJjQm13?=
 =?utf-8?B?cjEzd2FHVVhrNWxhV2U4SHRQMXZPS2JIQXBXbGtmSi80ZndTYk5nSjRkdHNQ?=
 =?utf-8?B?ZWU5WDIrQ1VrZThzclpraGd4WUlGaEJ0Zy9McGpMSWovekNHRDFRUEZZVU9r?=
 =?utf-8?B?M0w4ZXZSZXZROENIR2tBZnA0OXpHTWw4QjlqK0pCNXQvbjJEZnB1SGlwa2Fy?=
 =?utf-8?B?dml3Y0JZS2NKcjZ2d3hRMURIR0YxV2tYSldhK2VNa0xXTFF3NEloTStaZ21o?=
 =?utf-8?B?dlc4YmJiczdHWDlzRUhDbTM0bXNkRThhamVZakE0NklnYWhDOTVuWE12dTF0?=
 =?utf-8?B?ZUhLZWFKOE5OQU9uZnhtU0s3OXZya09GQjRQU2d0dS82b0loSTNSU1g1SFRn?=
 =?utf-8?B?eGJ0eFp1TlhuelRRWk1vaWFDRE15N21CVkdCTm1SMll5S0Vzdi9HcFJhUlJ1?=
 =?utf-8?B?a1NJWFJYcmJEa2FzMzQvcE1reTNPcFhPdDQvNUlrcXlHczVHQUxRYTZoOENj?=
 =?utf-8?B?NXhXbkJ4MzRNWkVwSHRXNzFMNW8yVk15MUlBZDgzbWRISzdxa3Nvc3BONUV5?=
 =?utf-8?Q?5PZiMDVMYrCqPVwoCqTAJc6FBm8oOKA9m6FUhc19HquH?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR1101MB23612E0A97FDD28DE3B30E6CB9B79DM5PR1101MB2361_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97d28b95-c7e0-4c81-37a7-08db1ebd3878
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2023 03:37:04.7487
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9TwvqFG4DdHdnG74/nlV2RImi6K62AR2fteZLlHzsDUWw0/Xc5EOytc7fEI7IpSZaFwqZZCFQaqepon/2YnxZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7433
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Mar 2023 03:37:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59356

--_000_DM5PR1101MB23612E0A97FDD28DE3B30E6CB9B79DM5PR1101MB2361_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8NCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHRoaXJkIG1pbGVzdG9uZSBy
ZWxlYXNlIGZvciBZb2N0byBQcm9qZWN0IDQuMiAoeW9jdG8tNC4yX00zKSBpcyBub3cgYXZhaWxh
YmxlIGZvciBkb3dubG9hZC4NCg0KRG93bmxvYWQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9w
cm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuMl9NMw0KDQpiaXRi
YWtlOiA2YmM2NWU2NDAyYTc0YzlhNjVlMjkzMzNhN2UwZjFmODVkY2JjZjU4DQoNCm1ldGEtYWds
OiAwOTEzNTE2NGEyMWEyMTZjNmUzZTc1ZDdkZWNjZTg5NmI5Mjk2MmYwDQoNCm1ldGEtYXJtOiBk
NWMwMjRmMWY1MzI2ZmIxOWRlMzM5MjhhY2VhMzRkZjRiNThlOWJhDQoNCm1ldGEtYXdzOiBjMGQz
MzZmYTI4ZGZiNzViNzFlNDAzODAyZjUzMjcyM2E2MTlkOWNiDQoNCm1ldGEtaW50ZWw6IGQ1ZGRm
YTAzNTRmYzYwMjViZDJkNDJmNTZiNzA5NDM0MjljMDZkZDMNCg0KbWV0YS1taW5ndzogMjUwNjE3
ZmZhNTI0YzA4MmI4NDg0ODczNTliOWQwNDU3MDNkNTljMg0KDQptZXRhLW9wZW5lbWJlZGRlZDog
M2YyYWVlMWIwODBlMmY5YWIyZDBhNzMyNjU4MWRhZDJmMDdjYTZlZg0KDQptZXRhLXZpcnR1YWxp
emF0aW9uOiAzNjk3NDlhZDI5NDc5MjFkNzQ1MmEzMWU3YTRjZTZlYjBmOGU4Y2NiDQoNCm9lY29y
ZTogZjZhYzY2NmM5OWRhMTE1YWI0YTIxNGQyNDI4Mjk3OGEwNmMzNmVmYQ0KDQpwb2t5OiBjNDVk
NThmMDAzZThkOGIzMjMxNjljYTlkNDc5ZGM0OWM0M2E5OTc0DQoNCkZ1bGwgVGVzdCBSZXBvcnQ6
DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxl
c3RvbmVzL3lvY3RvLTQuMl9NMy90ZXN0cmVwb3J0LnR4dA0KDQpUaGFuayB5b3UuDQoNCkxlZSBD
aGVlIFlhbmcNCmNoZWUueWFuZy5sZWVAaW50ZWwuY29tPG1haWx0bzpjaGVlLnlhbmcubGVlQGlu
dGVsLmNvbT4NCllvY3RvIFByb2plY3QgQnVpbGQgYW5kIFJlbGVhc2UNCg==

--_000_DM5PR1101MB23612E0A97FDD28DE3B30E6CB9B79DM5PR1101MB2361_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5Ouetiee6vzsNCglwYW5vc2UtMToyIDEgNiAwIDMgMSAxIDEgMSAx
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUg
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJcQOetiee6vyI7DQoJ
cGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0K
cC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0K
CWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0K
YTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29s
b3I6IzA1NjNDMTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnAuTXNvUGxhaW5UZXh0
LCBsaS5Nc29QbGFpblRleHQsIGRpdi5Nc29QbGFpblRleHQNCgl7bXNvLXN0eWxlLXByaW9yaXR5
Ojk5Ow0KCW1zby1zdHlsZS1saW5rOiJQbGFpbiBUZXh0IENoYXIiOw0KCW1hcmdpbjowY207DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpz
cGFuLkVtYWlsU3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZv
bnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0Kc3Bh
bi5QbGFpblRleHRDaGFyDQoJe21zby1zdHlsZS1uYW1lOiJQbGFpbiBUZXh0IENoYXIiOw0KCW1z
by1zdHlsZS1wcmlvcml0eTo5OTsNCgltc28tc3R5bGUtbGluazoiUGxhaW4gVGV4dCI7DQoJZm9u
dC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0
eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7
fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0KCW1hcmdpbjo3
Mi4wcHQgOTAuMHB0IDcyLjBwdCA5MC4wcHQ7fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldv
cmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hh
cGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlm
XS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQi
Pg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94
bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1NWSIgbGluaz0iIzA1NjND
MSIgdmxpbms9IiM5NTRGNzIiIHN0eWxlPSJ3b3JkLXdyYXA6YnJlYWstd29yZCI+DQo8ZGl2IGNs
YXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGVsbG88YnI+DQo8YnI+
DQpXZSBhcmUgcGxlYXNlZCB0byBhbm5vdW5jZSB0aGUgdGhpcmQgbWlsZXN0b25lIHJlbGVhc2Ug
Zm9yIFlvY3RvIFByb2plY3QgNC4yICh5b2N0by00LjJfTTMpIGlzIG5vdyBhdmFpbGFibGUgZm9y
IGRvd25sb2FkLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJz
cDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Eb3dubG9hZDo8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3Jl
bGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4yX00zIj5odHRwOi8vZG93bmxvYWRzLnlv
Y3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjJfTTM8L2E+
DQo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPjxicj4NCmJpdGJha2U6
IDZiYzY1ZTY0MDJhNzRjOWE2NWUyOTMzM2E3ZTBmMWY4NWRjYmNmNTg8bzpwPjwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29QbGFpblRleHQiPm1ldGEtYWdsOiAwOTEzNTE2NGEyMWEyMTZjNmUzZTc1
ZDdkZWNjZTg5NmI5Mjk2MmYwPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0
Ij5tZXRhLWFybTogZDVjMDI0ZjFmNTMyNmZiMTlkZTMzOTI4YWNlYTM0ZGY0YjU4ZTliYTxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+bWV0YS1hd3M6IGMwZDMzNmZhMjhk
ZmI3NWI3MWU0MDM4MDJmNTMyNzIzYTYxOWQ5Y2I8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29QbGFpblRleHQiPm1ldGEtaW50ZWw6IGQ1ZGRmYTAzNTRmYzYwMjViZDJkNDJmNTZiNzA5NDM0
MjljMDZkZDM8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPm1ldGEtbWlu
Z3c6IDI1MDYxN2ZmYTUyNGMwODJiODQ4NDg3MzU5YjlkMDQ1NzAzZDU5YzI8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPm1ldGEtb3BlbmVtYmVkZGVkOiAzZjJhZWUxYjA4
MGUyZjlhYjJkMGE3MzI2NTgxZGFkMmYwN2NhNmVmPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvUGxhaW5UZXh0Ij5tZXRhLXZpcnR1YWxpemF0aW9uOiAzNjk3NDlhZDI5NDc5MjFkNzQ1MmEz
MWU3YTRjZTZlYjBmOGU4Y2NiPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0
Ij5vZWNvcmU6IGY2YWM2NjZjOTlkYTExNWFiNGEyMTRkMjQyODI5NzhhMDZjMzZlZmE8bzpwPjwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPnBva3k6IGM0NWQ1OGYwMDNlOGQ4YjMy
MzE2OWNhOWQ0NzlkYzQ5YzQzYTk5NzQ8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RnVsbCBUZXN0
IFJlcG9ydDo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fk
cy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4yX00z
L3Rlc3RyZXBvcnQudHh0Ij5odHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFz
ZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjJfTTMvdGVzdHJlcG9ydC50eHQ8L2E+PG86cD48
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPlRoYW5rIHlvdS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+TGVl
IENoZWUgWWFuZzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0i
bWFpbHRvOmNoZWUueWFuZy5sZWVAaW50ZWwuY29tIj5jaGVlLnlhbmcubGVlQGludGVsLmNvbTwv
YT48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPllvY3RvIFByb2plY3QgQnVp
bGQgYW5kIFJlbGVhc2U8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_DM5PR1101MB23612E0A97FDD28DE3B30E6CB9B79DM5PR1101MB2361_--

