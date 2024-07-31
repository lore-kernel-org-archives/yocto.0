Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D206BC3DA64
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 08:21:16 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.71])
 by mx.groups.io with SMTP id smtpd.web10.38126.1722414070320679686
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 01:21:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=dS2Hzjyz;
 spf=pass (domain: siemens.com, ip: 40.107.21.71, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kTlHP9A8ygLqwhEJbDg79URT387ny3uP4zNcL7VDQ7q+9yplvXvmR214KNbidPuYqQwNPrnM5qtC02TRC1lpa6VQfy6wdrPVWrsX2cKfgSHVz2SOJL4Un3IFC0PNb6OFkXKk6n65Ha5UJkBLp2+oq3EQSe/sS0bFYYbZW1YrC+zMBiodtn5jT7gVv6DtbBCjmMEotvEGRAnFc8FPo5yHb1swhpELBppQmyvEYZxuRhN0NZFNgcaZl26lgJQicAOTDJbylXBcEA9tVeDlWf86KIHCfNPNTOApvnihCIfdwek9FEh31RVUdv6ZuM+XSYMrWuEHzStc/qAcZzlLYN+scw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Py/E/VoyV4S4Wph9THCROMFvvDkkEc6AuZNxp9S77yU=;
 b=Se39Wznn40ewCfGKzSdfrVUUw6mvJo+6cInen5hbpnrs0OgrDtLjwj34nE+PPx886LKsobJJj0mDL3nYqWJyJmPa/VzB1d1M+HC3Pxynyl68ki4Cll/cK8c18E58VXP5HTZJxarwSP1EkzfPzKTmkoTzdZArI9Dzor6iqTYjQNHiHlR6Ox0YHRdXb4XsMzUthRcvTeMXEkW/t6zPHzpzSyWfmiG/XuWrXRA+1pQluSf11p0M2LVgXMi4Yy4I/Pf0EvJVP9Z2O/5+0+6CHL05SBlGJ6cZUBP/rw2KvBcFTM0cmhyJCfaqjnGAlv/1nPUHigRltebNXDJ/THZD+N7e6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Py/E/VoyV4S4Wph9THCROMFvvDkkEc6AuZNxp9S77yU=;
 b=dS2HzjyzLNuRbSUFWc8SJT0/qM8BCsFwKZJzsyZAJwNocuF9NICIY6hvwQCV17CsipywTg1E2xZ/J0Eee+ivaUnlBc79vLyZa7/D5ITZG9HdzxGLZrl9OHRa0MoOuChf1bIDSt9yyNguccCs5g2PEALD2XLZ8jcPb/+UidQKeoyJBEkcDSlIq6aB83vbGZ2ze/mWy2b0dzlJVdofF1zoMChk8yRwWhMNUzymbymGxmD0BDDKh/jsbNRyrq3sEffeynUqCv147N97Jxl7rpmEARH7rVIH8/u3eKvNxVaxIyX4AnrYxc9zcrXwLIrb772BZwbdgr5w79kEwgd4voA3Qw==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by DB9PR10MB5572.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:30c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 08:21:06 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%6]) with mapi id 15.20.7807.023; Wed, 31 Jul 2024
 08:21:05 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"sdorigotti@gmail.com" <sdorigotti@gmail.com>
Subject: RE: [yocto] CVEs and OSS info for nested dependencies
Thread-Topic: [yocto] CVEs and OSS info for nested dependencies
Thread-Index: AQHa4yAeblAsKYGqq0OzPSnWTiHv5LIQfEqw
Date: Wed, 31 Jul 2024 08:21:05 +0000
Message-ID: 
 <AS1PR10MB56979196B6806897F45F88E3FDB12@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <72C4369E-8A25-4CFD-B07E-D8D436665B38@gmail.com>
In-Reply-To: <72C4369E-8A25-4CFD-B07E-D8D436665B38@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=5255e2b3-4520-41ce-90e7-e07e971f3cca;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2024-07-31T08:11:39Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|DB9PR10MB5572:EE_
x-ms-office365-filtering-correlation-id: cc47dee0-4285-4b96-8d92-08dcb139b946
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|4022899009|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?SGwxdjMvblYrck1KNVlGaTVNVEt5MjVhT2hZRmhBUmd5eHRicm5QVkROWkRG?=
 =?utf-8?B?Y2xyUk81SUNiS3dOQzFGVlJZZEU1b3JpWi9qbXhGWFdNSXh1MjRpTWMrZjVD?=
 =?utf-8?B?T2pyeWZEcytNNmc3VFowaGV6cDcxWlJTdWhsbVh0V2pUT2I5SFFsMnhLVnJr?=
 =?utf-8?B?Ty9xalgyTkNQT0IxeDF1NUduWTVHUnRtRjhMSUx0TWlWRXlvK252Q3d0dSts?=
 =?utf-8?B?N05yRUVkOU53dUQxT1hnakc2Z080VHRHeHI5YlBHZEZWSFN6WnNUNEVOQmJS?=
 =?utf-8?B?UUJkWGVuUWNPQ2E1a3Y5bG85RmtjU0t6YU5LcnUxUStEV01kR2tDWml3b0NR?=
 =?utf-8?B?MWYvdXlPR3pmWndnQWdjOGhhMFA1K3BvRDlLMFpmQmRqTVFuMElaaWFSd1ZJ?=
 =?utf-8?B?Sm9EcHdXSkZtMzR5eEhYeVArY0plMGU4ekFtSjRRT3RRLzVITWQ0TzJXSXYw?=
 =?utf-8?B?QTJKbC9YdSt1VzBzQWpDMzdxWnNzbk1tSk9PLzFjMDRqR2oxdGR5cUFsY255?=
 =?utf-8?B?OW9IQUhmUkZKdE5MSVFILzcxNEFDWjQ4bWlISG1vZlM5V3pJTnZUSkJRK29R?=
 =?utf-8?B?aTZHRW1yTWZQcVVaWlI4WWsxRzhXTzdBc2h0Q0ZaTVFIVW91cy9ERGdMbE9o?=
 =?utf-8?B?N0gxUDlWOGpUS0xVOXUxRnI1akpTLzlSNHFpanlYTXM5c1lKaERuL0ZNWVZ0?=
 =?utf-8?B?YWJQYjNBTk5OV3hCRjZVZTJTSExwWWJLOTVGelJCS3hVK0FjZmJsWi9WbWdR?=
 =?utf-8?B?UzM5NVo4WW1jbERLZ0FET2NQaWtJcmZwNlhKY3Z1Z0NpazFHWGNHTzM2VmZs?=
 =?utf-8?B?YXlQSjRiaXFYNkwrV3NHTUV4TUFKTENYK0MzSUNiUFIvSlhsZm1GT3RsVEkz?=
 =?utf-8?B?aGNLMW52S1ppVXdRSjhUclZHU09aM2VTR3M3dithY05ja2FhaEtJUzBPV2gy?=
 =?utf-8?B?bHZlamxoQkg0SlVZT2lSWFBnL1hmRGx4OWF3Q1NWb2ZrakZ6U0l5QzltR1py?=
 =?utf-8?B?dUpBdy9XVDFOWnVpRXpGUmRNM1c2TUx1R1FoTkJpY2hsMEJFZTlFNTNyZGJQ?=
 =?utf-8?B?c291WXJoMDU1N0Rzc1oxOWxHSnBBdUUyNllrM25wVVMvM2ZZeHVDeHBvSy9V?=
 =?utf-8?B?UXdOcFVvV1hGRTJlZmFlK0l6MUFLYWJPZDlRUHhUUG5mTW5sL1Z2N3FJdFdG?=
 =?utf-8?B?WjFsTmtBTXlGVjVCay92SVBBeVdOaEJDNVNFWDZFT2VyV0pLaHkyNC9Oa1pr?=
 =?utf-8?B?WC9KWHVkWHFVanBqWmdFYnhiYlVrWDFEcDN0bDhVZTdwZDR6MkVRYTNHUDNJ?=
 =?utf-8?B?RDUxZlYzRWx4bUJjeU16NzZtWVF2YktBbGRkbzlEVEh3VVlJRmdmTEdReTBz?=
 =?utf-8?B?OXRyYWhBQTkvZUNKSG1nVUpTczJ6bFBjTnozenhJRlZBVkw4Skoyd0RHWDZ2?=
 =?utf-8?B?cmdmMmlZNERtNlRRcTBOc09Pd01lQWRMUkhNcDl6dkROckk3NWNiVC9abXNL?=
 =?utf-8?B?TktUOW1yWmlVbHlTd3luMVJOSmxHSjVsUHFoRGtSejIvOGFXVERJTU9QbUwv?=
 =?utf-8?B?Rjc1M1JuQmFyMzVJS0J4RmJTeVpOWlhGdkcyTU1ZUU5DSmxwVEE3bHhhTGNE?=
 =?utf-8?B?aGNHZmxuajhIaFpQNmswRUp1THdmNE1rcmRhZlI3ZitaNU1yRTZpc3QvMzRz?=
 =?utf-8?B?VzYrcktEano1YmdDcHFQa3NoZFl4ZUw2c3R1cHhRNk84Y0dubnY2aXNZNE5P?=
 =?utf-8?B?cW5GT0pqT1dyRGxZMitzSE94K3pYcW9KNU5JdnNVSXE0c1cxUjJHV1ZtSWZH?=
 =?utf-8?Q?5U+AjOt4RxqaWXqdfiuuVYcCR5Z4TvTLbSBBI=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?aTU5YVBiTEd0QkJlYTZ3c0I3THJkVmlFaWI0Zm5EejEvU09raGg1UmlaRFpF?=
 =?utf-8?B?VkcvaFBPM3BrVVJrSnZsV2RsdzFYWm03d2xyVlZMWFF5eFdHSVVHNEsxamNz?=
 =?utf-8?B?WlhaOHNmdEk3TXA1TjlqQ0JVV1Nhd1dEZjFjdjNxUXVnU0RkelN3b2xBeFN1?=
 =?utf-8?B?bEF0NVBVWWhOdG1kSWNDUVVQV25WWEIzZ2RBYTZJYzdscHFCQ29VRTFQVzAv?=
 =?utf-8?B?MGlGV2M0NUtERituYjhvb1daNElOdW5jMi9veFFiZC9lVzdWN3dEMVVEMThS?=
 =?utf-8?B?aHhCMkUwOWFFcWRSZCtNVjhjVnJ4eEx0ekp3Y3M0UmIzVE5lc0llUE9MZytT?=
 =?utf-8?B?M0J2aFllL2F6cS82aWUyclU5V1I5Z3p6eUpvcFdOcDFlR0FLUHZtelYzamh3?=
 =?utf-8?B?TTFvbWNlbXNiNEhhWmhXS04ybnJCakMrdUtZdGRxUjVkWncrVUx6QUQ4WDVv?=
 =?utf-8?B?SlNWakpmdFVVRVVqaStMTXVoVXYxTHZBMzArSkk3VXErZENxaDBiS3REdG1o?=
 =?utf-8?B?STRra1BTbEdLMzRPNEcxWjI1VnVFU004NHc4ZEg1dDRocEJLZ25iM0FHbmRK?=
 =?utf-8?B?cmhaQVdLcUdOS20wZU53SlpKUDdJWjdTZ0Fwb0g3Y2daU3VUMng3aXZrZ0JO?=
 =?utf-8?B?Qy9KNlZXMkt0eDVwRk5odzNqaTA1S002UytzczRweS92MldDaDljZS9UcEYr?=
 =?utf-8?B?NEdobTBXWmJPYlBvU0hVaTZCa3N0dUxlQnkyOTNPOG5HejNaUWt2L29Nb3Nw?=
 =?utf-8?B?SzVGbnFESnFmblNiajBHSWh6OUYra3ZPQ0NIaHBZRUNFVmdaZXdRZ3BXbWhk?=
 =?utf-8?B?VDZkQTZjTFdaUzUrd0lIRVFSTVMwc1Z3K2gxYlA3NmdTN0ZlQmhkK21rVkow?=
 =?utf-8?B?bGJMeW0rTDIyYWZCdytiSUJoYWdWZ0tyMVJ1Q3llK2ZJb3ovZjZVSitmYlFw?=
 =?utf-8?B?VlRXZ01STFpDRXlFdmFWNkp5KzhaK2UxM1NjV0FrK2IrVzh2V1VXY3ZCejFT?=
 =?utf-8?B?S1c3c2M2eXdqNjZuQ3d6M2ZPNGFsbzMyR0JNdzRFN2FqU0tnckJkS1ljN0Jv?=
 =?utf-8?B?eGJIaFF1N2d1WWZ1Y0ZTakxQMkxQMW9EZVJac05HWmtSdnVrM1RCUEZ3WGlL?=
 =?utf-8?B?dnFRcUh4S2V3SnlhalFrZTRxT1dIYk82OEdoWG80R0NBYS9wVjljQzRMYlh2?=
 =?utf-8?B?UHVzR2tDUXV3cXJZVmpCK1RsRTNWdzVFWXk4WEJZbStybEN3aENsQnI4RVlC?=
 =?utf-8?B?Y0d5VWMrUUNFNFBINndLdk1CblJyV2tIeEdaenhWdHAzbGd5MmZkekt1QXBa?=
 =?utf-8?B?RUJVcFVydk42R014RTdXeCtQOEc5cURTVFZ0L1Rmc0hsb21SYkxuYzVPTGsz?=
 =?utf-8?B?U0pvNDlGT2ZlQXFkVjB5UUthbUVpcGFFUDRDRG1pZDIybGhOUmlmbXp6UlRQ?=
 =?utf-8?B?Sm81MzRiYWkwUGVoemxqOGNuSWdKTEUxSithM2FiejNOS1RPM3BGZ3dhQ0Z1?=
 =?utf-8?B?bzJpcE54MFlqN3dxZ1EwU1B4Unk1Nk8rcEdVWm5xcGhTbzdKZVFUclVBZ2F6?=
 =?utf-8?B?V3hDRG1EM052M1lNVVliYk9IcjhQdVFENjN1Zm1HeW03b01jVHdrK2tKZDVW?=
 =?utf-8?B?OHF6c09nYkRGcHFmWkt2cDRHTllRUDZlcDFNK2FJMDc3UjEyWlZ3dDhoV2FT?=
 =?utf-8?B?Rk5ZQUQ5djlCcW9WMnhBMStDcVJwWXlGbkFZYVdVNXFKNExGcnF2WHg2ZVJh?=
 =?utf-8?B?RkZVZlBXTmVpL2I3clZsVlFKS2doNzdHdUhoSUo4d0FrVHFHM0JpK2hlaFFY?=
 =?utf-8?B?VEtQdHA4OE1ZWitYMXdhQWFiTnkreVpxYzR6RzFLT1lDOFVBQU9ySzNyb3di?=
 =?utf-8?B?dzZWaEh6RzRubzFWekhmcFcrMmFURzhYL1BQVnRyQ2hKNXV1c2EvdlM0RTNW?=
 =?utf-8?B?eHVsZWZ3OUM3OFhYVTZEa2NKbUI3QVZCZm5CMG1USm8xdkdxbGdiNGxVWUJu?=
 =?utf-8?B?ODZhOU1rb3FWdFdsSWk0MStiK0dYUW1nd0tDem9QNGtySVRlM1NIQ3NRVFVk?=
 =?utf-8?B?ZnZYQXBUZTN5eUZzMnZLY2dCYzB3MUR5VWVTSFQvK3dSWEYrT1dnbGxjZzdk?=
 =?utf-8?Q?Qzb4IfhCbiwI8T8qO+xOBDKw1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: cc47dee0-4285-4b96-8d92-08dcb139b946
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 08:21:05.9154
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xN5z/YOFXMtG2wlArOKfCMBSA6uJ2g8IkArQ9GKTQ4Q7YqWYTWYG4tgeo489TnmII6GQG06cKQAZXIS1Zj7HMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB5572
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 08:21:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63623

VGhpcyB0b3BpYyBjb21lcyB1cCBmcm9tIHRpbWUgdG8gdGltZS4NClRoZXJlIHdhcyBhbHJlYWR5
IGEgcGF0Y2ggcHJvcG9zZWQgZm9yIHRoaXM6DQpodHRwczovL2xpc3RzLm9wZW5lbWJlZGRlZC5v
cmcvZy9vcGVuZW1iZWRkZWQtY29yZS90b3BpYy8xMDE5OTEyNjkjbXNnMTg5MjYwDQpodHRwczov
L2xpc3RzLm9wZW5lbWJlZGRlZC5vcmcvZy9vcGVuZW1iZWRkZWQtY29yZS90b3BpYy8xMDIwNzY5
NjQjbXNnMTg5NTAxDQoNCk1heWJlIGl0IHdvdWxkbid0IGJlIHRoYXQgZGlmZmljdWx0IHRvIGZp
bmlzaCBpdCwgYnV0IGl0J3MgcG9zc2libGUgdGhhdCBpdCBuZWVkcyB0byBnZXQgYSBiaXQgYnJv
YWRlciB0byBhbHNvIHVwZGF0ZSBnZW5lcmF0ZWQgc3BkeA0KYXMgdGhlcmUgaXMgb25nb2luZyBh
Y3Rpdml0eSB0byBzZXBhcmF0ZSBjdmUtY2hlY2sgaW50byBvZmZsaW5lIHRvb2wgcHJvY2Vzc2lu
ZyB0aGUgc3BkeCBmaWxlLg0KDQpQZXRlcg0KDQo+IEZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBTdGV2
ZW4gRG9yaWdvdHRpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFNlbnQ6IFdlZG5lc2Rh
eSwgSnVseSAzMSwgMjAyNCAxMDowMw0KPiBUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0KPiBTdWJqZWN0OiBbeW9jdG9dIENWRXMgYW5kIE9TUyBpbmZvIGZvciBuZXN0ZWQgZGVwZW5k
ZW5jaWVzDQo+DQo+IEhlbGxvLA0KPg0KPiBJIHRoaW5rIEkgaGF2ZSBjb21lIGFjcm9zcyBzb21l
IGxpbWl0YXRpb25zIGluIENWRSBhbmQgT1NTIGhhbmRsaW5nIGZvciBpbnRlcm5hbCBkZXBlbmRl
bmNpZXMuDQo+DQo+IEFzIGEgcHJhY3RpY2FsIGV4YW1wbGUgdG8gbWFrZSB0aGlzIGNsZWFyLCBs
ZXTigJlzIHRha2UgdGhpcyBDVkU6DQo+IGh0dHBzOi8vbnZkLm5pc3QuZ292L3Z1bG4vZGV0YWls
L0NWRS0yMDIzLTM1OTQ1DQo+DQo+IHdoaWNoIGRvZXNu4oCZdCBzaG93IHVwIGluIHRoZSBjdmUt
Y2hlY2sgcmVwb3J0LCBhbmQgdGhlIG5naHR0cDIgZGVwZW5kZW5jeSBpcyBub3QgbGlzdGVkIGlu
IHRoZSBsaWNlbnNlIG1hbmlmZXN0IGZpbGUuDQo+DQo+IFRoZSBDVkUgaXMgYXBwbGljYWJsZSB0
byBhbGwgdmVyc2lvbnMgb2YgbmdodHRwMiDigJxVcCB0byAoZXhjbHVkaW5nKSAxLjU1LjHigJ0g
d2hpY2ggYWZmZWN0cyBhbiBpbnRlcm5hbCBkZXBlbmRlbmN5IG9mIG5vZGVqcy4gVGhlIGxhdGVz
dCBvcGVuZW1iZWRkZWQgcmVjaXBlcyBhcmUgdW5hZmZlY3RlZCBidXQgS2lya3N0b25lIHVzZXMg
bm9kZSAxNi4yMC4yIGFuZCBuZ2h0dHAyIDEuNDcuMCB3aGljaCBkb2VzIHNlZW0gYWZmZWN0ZWQu
DQo+DQo+IENhbiB5b3UgY29uZmlybSB0aGF0IHRoZXJlIGlzIGN1cnJlbnRseSBubyB3YXkgdG8g
ZGVmaW5lIENWRV9QUk9EVUNUIC8gQ1ZFX1ZFUlNJT04gcGFpcnMgZm9yIG5lc3RlZCBwYWNrYWdl
IGRlcGVuZGVuY2llcz8gSXMgdGhpcyBwbGFubmVkIGF0IGFsbCBmb3IgdGhlIGZ1dHVyZSBvciBk
byB5b3UgaGF2ZSBhbnkgc3VnZ2VzdGlvbnMgaGVyZT8NCj4NCj4gT3RoZXJ3aXNlIEnigJlsbCBu
ZWVkIHRvIGNvbnNpZGVyIHNvbWUga2luZCBvZiB3b3JrYXJvdW5kLCBwZXJoYXBzIGRlZmluaW5n
IE4gZHVtbXkvZW1wdHkgcGFja2FnZXMgc3VjaCBhcyDigJxub2RlanMtbmd0dHAy4oCdIHNvIHRo
YXQgQ1ZFcyBhcmUgZGV0ZWN0ZWQgYW5kIGNvbXBsZXRlIG1hbmlmZXN0IGxpY2Vuc2UgaW5mbyBp
cyBnZW5lcmF0ZWQuDQo+DQo+IFRoZSBzYW1lIGlzc3VlIGFwcGxpZXMgdG8gbWFueSBsYXJnZSBw
cm9qZWN0cyBzdWNoIGFzIFF0LCB3aGljaCBoYXZlIG1hbnkgbmVzdGVkL3N0YXRpYyAoYW5kIGF0
IHRoaXMgc3RhZ2UgaGlkZGVuKSBkZXBlbmRlbmNpZXMuDQo+DQo+IFRoYW5rcyBhIGxvdCBpbiBh
ZHZhbmNlLA0KPg0KPiBTdGV2ZW4NCj4NCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gTGlu
a3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+IFZpZXcv
UmVwbHkgT25saW5lICgjNjM2MjEpOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95
b2N0by9tZXNzYWdlLzYzNjIxDQo+IE11dGUgVGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0
b3Byb2plY3Qub3JnL210LzEwNzY0MjcyMC80NDU0NDQxDQo+IEdyb3VwIE93bmVyOiBtYWlsdG86
eW9jdG8rb3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNjcmliZTogaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWIgW3BldGVyLm1hcmtvQHNpZW1l
bnMuY29tXQ0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0K

