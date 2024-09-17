Return-Path: <alex.stewart@emerson.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F27EACAC58D
	for <webhook@archiver.kernel.org>; Tue, 17 Sep 2024 15:58:09 +0000 (UTC)
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
 by mx.groups.io with SMTP id smtpd.web10.24372.1726588686520321262
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Sep 2024 08:58:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@emerson.com header.s=email header.b=te3hrhx/;
 dkim=fail reason="dkim: body hash did not verify" header.i=@Emerson.com header.s=selector1 header.b=eugNeM0A;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: emerson.com, ip: 148.163.146.64, mailfrom: prvs=69901e6c4f=alex.stewart@emerson.com)
Received: from pps.filterd (m0142705.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48HFCmNS022465;
	Tue, 17 Sep 2024 15:58:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	from:to:cc:subject:date:message-id:references:in-reply-to
	:mime-version:content-type:content-transfer-encoding; s=email;
	 bh=IfWIZV2iVR3A3WGLQgDsURpjRAM++MRYGfmKotoB2og=; b=te3hrhx/Nndx
	ockzAbDmZeWkm53ebmXFnwJsmxHYOJzZWopzkG5+TYiEMbwXIivxq1yYbEh5KE3b
	TRYUYHN8at/ZeMS/qT+9VDUy/mh6Wj+7zptoUk4pHNkQcmxJMURZJg5ocfztywDc
	m9+MxSABOp6/3gMgVFwnmAFPExljPhusad02b5PM4HOhFWU1/FgkKfWAlcL20Vqo
	wu3LE1XlJklcL5vFl6bLYuarmdWZSN8YZ7UnAG+lQE7OtN3Y9JT4OxwzjH1ln9fO
	VEudd5b+QlpEeYC2HxExx0LnVAAOy0kAP/qmt+twcf+jA2eVBJ5AAcWlSqAsKo3g
	43yTD01sSA==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 41qb16sf4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Sep 2024 15:58:01 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hZtqtKyLkXWZgskCruS21XJY5+RkWnAyMRJ74PgW4Fvxlqnlm9gDxbJnKsaygz/5wt+IU7IR8nohm5O8Vrya7j4HjszbSGTGDy6ZykkpVxz/u8/nF+6hyb8YJXyZ+PjgaGCuWN/p0KJOsnLdFBDKEucbY5Q+i7DcMEaH2wS6Zep+4nRamLOAJ1MEz4eRyuuT8/l7qx+lzVsoEjqFSFM89KV3YRfBvUI63UADtTMJxXzkAnYV4JyHD8PxSKFQGbTO6svgkHtRZDpUMgSpDN8KYY2reSm0a0mlCNKh8CzZe3M8NeGn4ADmocOHMjnAJdcY8xg3oGYX6dg+HZCRrWtJFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=54i2TK1cRSbxc/WKNZyO6880/q0/8QBFLIoqa95ybL0=;
 b=EuVMaFsh6ho4wJ3fK3OW6WK7nCVg1VODiTk1QqtpAFPiBN77jcrn4WjphQofK1fGmleNWCb6QSe2QYByCF0KYiSRtrUwZ0v5oGV1/+KsgQw0rxtBaMynPxEtGWgW0Pkl9f4zDzN+6hk7M4PZV3+SpCHVusRSoN07PxPr7StYTYQ3IPih+A5042FwDlyiYHTCCybIE9sRhPGE9qqaD6HYbcNzGjzD3NU9PxLBepGCe/ug/GxwbmAzBEqWHgZi/dKGnOPDJMMXt0qAPm69pJpspAZiwvo/IU9N9RHUUZQkPLieMpUWRG6aOQmOqxKl/PXSbjZQL+ZruaNwbZSbDsO9tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=54i2TK1cRSbxc/WKNZyO6880/q0/8QBFLIoqa95ybL0=;
 b=eugNeM0APavCPb9AYkeQBiS7FUVdDuaWdC09eZCJl7LdEIikoIz07oQUBybCWrGFtjHa7/h7cOyHJlmaQ6nQHXibQ1jN1xGbWukzRGRBCB/1myUgPTvMLQceJA0h9GcyX076ktemjUoHard+zDpz282K4BXj4u0fwv02I2muDMArURTe15ryFtNYacRwUQxdiqRAnN70+e07BpHbjkmb4OYXvkDwSWwWFpT4TLkTzF62JJoP3f5QcWjkJj4t12jehykcPUcDkeGUhb3KTKzRBszvunIBALiD8wh0pJBobJhT20VForm0hO7TXn4LCRk8YFFSBrXzWe4yJFqMBgKAwA==
Received: from DM4PR10MB6134.namprd10.prod.outlook.com (2603:10b6:8:b5::13) by
 SA2PR10MB4650.namprd10.prod.outlook.com (2603:10b6:806:f9::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.14; Tue, 17 Sep 2024 15:57:56 +0000
Received: from DM4PR10MB6134.namprd10.prod.outlook.com
 ([fe80::4d5a:8205:38a6:8441]) by DM4PR10MB6134.namprd10.prod.outlook.com
 ([fe80::4d5a:8205:38a6:8441%5]) with mapi id 15.20.7982.012; Tue, 17 Sep 2024
 15:57:55 +0000
From: "Stewart, Alex" <alex.stewart@emerson.com>
To: "mns@gomspace.com" <mns@gomspace.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [EXTERNAL] [yocto] read-only-rootfs and opkg
Thread-Topic: [EXTERNAL] [yocto] read-only-rootfs and opkg
Thread-Index: AQHbCB9K0xseA13UnESFYa6cXwBiwLJcIaLn
Date: Tue, 17 Sep 2024 15:57:55 +0000
Message-ID: 
 <DM4PR10MB613491F6677B95E3959C93F794612@DM4PR10MB6134.namprd10.prod.outlook.com>
References: <2l0y.1726480831050637843.EbIS@lists.yoctoproject.org>
In-Reply-To: <2l0y.1726480831050637843.EbIS@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=True;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2024-09-17T15:57:55.027Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR10MB6134:EE_|SA2PR10MB4650:EE_
x-ms-office365-filtering-correlation-id: c432a5f7-fbd1-4935-c6b4-08dcd7317ea4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?M2ZYTmZYTEJLdGZZV2ZHdG5WTVlmOW93MkgwT0d5bE1VdjhhU25SQ1ZXTjJr?=
 =?utf-8?B?emlEZ1N5TXVodFU3Nis5MHlaWEFueUV6NnRiR2FhSnJDRng3NElBcU1EU0R5?=
 =?utf-8?B?S0t6UkxKSzh0YldOSVE0RnVuUHVCQ2VyK3pPY1pjVkJvcVI3NFk2Q2VFYS9I?=
 =?utf-8?B?dUNkeFZTcXNzTmwyS2xLOFVDa0dMK3QrNkIwZVhPSnY4NS9henJQUWxjR050?=
 =?utf-8?B?OUpCcU5RRkdaL0RYOHhNSFEvS2VBZm44YXBJbzVNbFQ5RnJURWRaSC9LMTZJ?=
 =?utf-8?B?dFc4UjZDNHl2MnB0OFZQOUI3U1V4Q0JHUzJaTkNCcFMzYUdFUjNzT0tsZHd5?=
 =?utf-8?B?T3kwUmliMmp6YVpDQ1JhbHZzN0FnU0NTbEZ1dFd2NjJJWitkUnJ2L1N3L1Q1?=
 =?utf-8?B?Z0U0S2U1SGpNNTY4VFQwQzNKNjFDQmFHMEJPbXNJQllqMi9iM2oxemNEdnp3?=
 =?utf-8?B?aXlsM3lmUUY4Q3dOQ0FBenc2UlFXWWdlc0xYQk9sZmJ4VXhFaXpMY2wySW1O?=
 =?utf-8?B?NzlZcGVyMDhqUmhKOFJXN3FUU0hyQnBSQ1ZmZDhSSmNMU0w2U1F2VTJ6Vm1s?=
 =?utf-8?B?V1pvaW9Rdm5Pa0ZtSHRUOFA1TDFpUzZKLy9STFE4TjNjQWdKQXJqTk9DVDJH?=
 =?utf-8?B?TFBxSjhxRXdBaHFRNHAzWFdRM1BLWFBsaVd5ZFJYRFJkN0x4VzllbXhFR0FQ?=
 =?utf-8?B?aTdaNG9yYnp5Ujk5bEpXanFSS3RVb2N3KzJGSnpUalRjWGNGNWs1VkNoUDBI?=
 =?utf-8?B?Z0M2djkxbkp3TXpSbzlkRzYzVFNjY2dnMGpGZzY2NnFKbmNjTTVsU3dPZEJm?=
 =?utf-8?B?NGcydzV3LzdOMlVEQmNOWHUrRXl3aGZraGIxUDdmM0ZicUl6MWZaNjJ0dWUr?=
 =?utf-8?B?WVdGM0c4R2FnQkE5amV4a0txZDd6QkZVbE1GeUFwVmVBR1JRR09mUURBWjQz?=
 =?utf-8?B?OTRxR0tHS0hvbGh4RjZLN3JMZnp5ckJYS1RlZUNLK0pUMzNOVDdNdm1HVzQy?=
 =?utf-8?B?eVAwRm9kaGhTR2poS0Z2WFU5Z0FET2FBcWhZVHRkd1V2UGZIek9DbVRrNndu?=
 =?utf-8?B?V0c2YnF4aXJuU09LYndPQkwwOGpaTkhTQUltZnBydVNxai9ETHF3a0lySnZK?=
 =?utf-8?B?L2dWNmYvTUplbFpLb0I2WFV4SVlaRk5LZU5FU0QrTmhmUjcyVS9Jejl2ZGJG?=
 =?utf-8?B?OGxMLzlneFluTm1BVkFXUkVMSUpVM3hKUklnNTUvVDJneWVMMUl1d2NVK1V4?=
 =?utf-8?B?d2hIQy9jczUwSlJRR0c1Um5qZ2hvckxiVFRUaEpzeTJaV3Q0TXlmMk51Z1lS?=
 =?utf-8?B?SjNMekNQUHFnMkNUTWhWMlVZeVpBREJNV2xLaWdLTzdnK3VOeTJiRkVQUmUv?=
 =?utf-8?B?dlZ3N2dxZDNGcUhFQWpMT3pOOVM3ZjZmdEJTbzBXWEx6UXdDVTBzVlIraUN4?=
 =?utf-8?B?TVkvdFVRWEZPdUhpbFFSSEFKSUhXUFQrOGtjeXNHVGpPc2kyOVNoSnJOUFJt?=
 =?utf-8?B?elhUVzMybWtNMW15RTM3UEFNQ3V1M3l1QzZJZmxsNHhqMzFCcTJrT2xzdEx6?=
 =?utf-8?B?ZlJtcDc5T1kxYjN2WnNCYzgxajFLZ0FXN0dZWnhrRmFyUUlNRk1OU0xEejlX?=
 =?utf-8?B?Q0pDbDY2TWZtcXBERWZjbjA4MnZ6UVVhTi9sdzFFTEE1b0d5STlGQUtXdXZl?=
 =?utf-8?B?ZVBOMG5JR2JDVVVJVFdJcVVGOWV3ajhBYW96RVZGTmJsQXk0REtSZEFtNGdk?=
 =?utf-8?B?NGtIWngvc0MxeXJzTCtyd1RFcFNCRS9SWlhzS3pxblROZDloaU5Fc3JQbDhz?=
 =?utf-8?Q?HlIWd23de92RfSRa/oNfH7yON0DzBZMYBkXnk=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB6134.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UDNZY3lHZEdtSU5LYmdvaDRIZElRWTVBeVo3NDNCQ252V1cwaWpFQi9jL2lE?=
 =?utf-8?B?dXZubXZkMFI2VTc3V0VBMTFyZk5TM2lGaDNaSjF6K25WWFVNa1FGa3V2b25l?=
 =?utf-8?B?Y1c4UDhQRzFNdlIrbXJSMytsN1RueTJoOFdaajVaS1hKSjJwWkpINHFYRFpH?=
 =?utf-8?B?Y0EzMDY4c09tY0cwNmtUNjk0MGdtbG1kN29XRVV5R2xVeEovaUFUTW1IRWhB?=
 =?utf-8?B?MUN4dW9PMEVnMWhoUVdmQWpqMmduRS91eTJDOEdCWm0zUmNOTlVDekNVQTR5?=
 =?utf-8?B?c3p2MC81MDc2YlA1OVpVWTd0QmNrK2VFWlJzbVpKVGk0WUNmSnNjMW9DN2R0?=
 =?utf-8?B?OHAxZTJucGJnRDNFUVhuWnp4bEd0QnVHb2pUbk5SZnFTQjZERzV0ZVUwSldo?=
 =?utf-8?B?MzZrVzZLOE5Sa05VcTc1U2J2MkpKelpMTGdJOUJBc0IzdjdFRGJpTlFkYWJX?=
 =?utf-8?B?T0dmQ0dyUG1DVktYS3Rnd3F4dkg4NkdCY1lRRi9MWU44eXFRMDlhdmJTY2xI?=
 =?utf-8?B?Q2JiTjJUWTdLa2FvQW9TbFliUmxEMWRxMVE5V295eGJrU05GbHRGdUh6djI4?=
 =?utf-8?B?NTExc0VsVHFYbFZ1MXVtRHJlbjZGdHBDaUpKcU9nNzhJdzF1dWtyN2Z5ay9M?=
 =?utf-8?B?b3o3U1RiVU5FK3c4bnhZQlNvRjdUWVdWdTNvRHhVSGtNcXpWYjBNaDhYUmN2?=
 =?utf-8?B?VnRmeFk2OGRWQ05GcGxYdSsyWGpwcmRhT1lRcXRoNEU0ODhvZ3BGNVJXVXBw?=
 =?utf-8?B?N29HSHh3NTl2L2RValMxZEpPQjVHVXdicXRid3dncjlnZE5RTFVZNVVGcFNk?=
 =?utf-8?B?UmNJMzlWWVpoR014ZjBtUzdRVTdaTWxKcFF5anUvbTdaZnhZbEFiWUNOWnc0?=
 =?utf-8?B?MjI5a3dpS1FwV1lpMVpqTlVpeFF0V3UxQnovT3VpUTNtUGt1WVlFQnlkWWxN?=
 =?utf-8?B?Y0U3UFEyVURBUEtNaENiUlNDdkRvNnMzWTZ4TmtWZ3plK1g1K0s3M0hldXdG?=
 =?utf-8?B?VzV0VnNReXdISWJyUkdGQ3hPOVNOa0xuUStCME5pZXBtYzdSSWVlQTIvaUtF?=
 =?utf-8?B?T0F0WWVnb2YwTHY2Z0x6RHZsRmxjTytwU1VtQ05XdGJTbURqRTVoSEJ5V2JW?=
 =?utf-8?B?MjhVLytsUVEyYW1qYzZvdjNxVEZQeWthQ1dDNkl6MVI4STFDa01kdTlWTWJw?=
 =?utf-8?B?bmQ2V2hIMjhibmZJRStXbWs0SE9uQitqN0lxdjBKMURSUVdCUjBqT0FpT2Rm?=
 =?utf-8?B?dXlDUEpmRzBDb0h0ODZPQmpWSWQ5SnBzNkkzU1VTalEvVkpRaWZUTVBvdzdQ?=
 =?utf-8?B?SXN3Q1V5aVVWZ1ZRUHBxZFRLekEvQkpEWlhiZUQyWnY5cmpNZ3hsOUU2TG11?=
 =?utf-8?B?MjhSYW5QVS9tODZFdFZiQmNTWVM0emlSL0g3bzNQaDNEa01iVlNhMkFLeVZ2?=
 =?utf-8?B?Ti90emRTT1VFcjE3ZXpMakpDRzhuclV1ODU5ZkRCSno5OXc2K0Z5ZjlMR2cz?=
 =?utf-8?B?QXpOejhyU0ZXWVp1UkRBTjFocHJ3V0NKWjFON2svUmtaVVJ3L2F5aXBXSDVl?=
 =?utf-8?B?ZFVHZ2d6eCtRZGdkckNQS1I5c08yQ2x1NEI2VFlZaktsT3A4b2dTR0ZOa24v?=
 =?utf-8?B?czcwd3Vac0FCa1lHYS8zNXM0c1BPcnIxYXZXZGREL09jdlNQMWpxaHpveFJE?=
 =?utf-8?B?ZGJHRjRFR2lrZXZodGluWDdMMDFicTFDem9nZitXcmVvbUkrVjhzdDliYk9U?=
 =?utf-8?B?RWRvd2tkUFhWa0dNK29lL0Jza2VQSWZISnpuc1dmTVJ1ZW1mMjZrM3dwNml3?=
 =?utf-8?B?QW5nUHovbjZmR0tmK29OYzluUnVrdjk4NGZ5SS9rbGdKYytleEtJZ01LVnBH?=
 =?utf-8?B?K2lPb1htdlQvZytTUmlKU3NGbm5HelJpMTdJODVEcTlCTG9uRlhOYm5aenpa?=
 =?utf-8?B?OXRicUNIU1VqQzlpdGE2SkNYWXlFdXd4czErRWtndXBnS1Qrb1JrblRFZ3hT?=
 =?utf-8?B?c3F4NWpCSGh5aG9TNlpwN0RZT0lzT2RHZm40dS9MKzZITEU2dzc4VTV4SWdm?=
 =?utf-8?B?cGFZQ2dXSlVXeFNjT05aQ3FqeG54bG5mNFRkdWFMRHpUWkJLWnFGUWt3YTlI?=
 =?utf-8?Q?vP7Hs4KsD6c0Bu/aGgsE/poT0?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB6134.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c432a5f7-fbd1-4935-c6b4-08dcd7317ea4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2024 15:57:55.7643
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gavlPC0QT983hBM4V1VBdixj0oZ2wD/7B664R46djv4kVPbKT2oosokXlUXcbLXZhW2HISf+iLvlGr/spQZ3serFe6OxvJ/aNjcdZp2wDuE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4650
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: 6znylSr8r1A6cNBR9H9x39NkMK3xNw6p
X-Proofpoint-ORIG-GUID: 6znylSr8r1A6cNBR9H9x39NkMK3xNw6p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-17_08,2024-09-16_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 phishscore=0 adultscore=0 mlxlogscore=999 impostorscore=0
 malwarescore=0 mlxscore=0 suspectscore=0 clxscore=1011 lowpriorityscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409170115
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 15:58:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63854


Hey Martin,

The opkg config files used during OE rootfs creation and at-runtime are dif=
ferent. The former is supposed to be generated by the opkg package_manager =
implementation [1]. The latter is written by the opkg recipe via the do_ins=
tall (that you identified).

The files you're seeing installed to he incorrect location (`/var/lib`) are=
 the product of the rootfs installation, I think. So the issue seems to imp=
ly an issue in config [1].

Both the recipe and package_manager config files are supposed to handle the=
 OPKGLIBDIR variable. But they might not be handling them *at the same plac=
e* in the OE build process.

My intuition is that the weak-default OPKGLIBDIR assignment is being immedi=
ately-expanded to the upstream value (/var/lib) in the package_manager impl=
ementation prior to your bbappend's weak-assignment taking effect [2].

Does this issue reproduce if you assign OPKGLIBDIR more strongly? eg.
```
OPKGLIBDIR =3D "/data-os/opkg"
```

If it does still, try debugging the values of the package_manager's `self.o=
pkg_dir` attribute [1].

[1] https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/package=
_manager/ipk/__init__.py#n111

[2] https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-=
manual-metadata.html?highlight=3Doperators#setting-a-weak-default-value

---
Alex Stewart
Software Engineer. PR&D Security, RTOS.
T&M, Emerson Electric Corp. (NI)

________________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Martin Siegumfeldt <mns@gomspace.com>
Sent: Monday, September 16, 2024 06:00
To: yocto@lists.yoctoproject.org
Subject: [EXTERNAL] [yocto] read-only-rootfs and opkg

Hi all, I am trying to realize a rootfs backed by opkg as package manager. =
It appears that the opkg meta-data is directed to a volatile mount (trigger=
ed by read-only-rootfs feature in order to achieve write access I assume): =
$ tail -5 /etc/opkg/opkg.=E2=80=8Aconf

Hi all,

I am trying to realize a rootfs backed by opkg as package manager. It appea=
rs that the opkg meta-data is directed to a volatile mount (triggered by re=
ad-only-rootfs feature in order to achieve write access I assume):

$ tail -5 /etc/opkg/opkg.conf
# Default destination for installed packages
dest root /
option lists_dir   /var/lib/opkg/lists
option info_dir    /var/lib/opkg/info
option status_file /var/lib/opkg/status

$ mount | grep var/lib
overlay on /var/lib type overlay (rw,relatime,lowerdir=3D/var/lib,upperdir=
=3D/var/volatile/lib,workdir=3D/var/volatile/.lib-work)

$ find /var/lib/opkg/ | head
/var/lib/opkg/
/var/lib/opkg/status
/var/lib/opkg/info
/var/lib/opkg/info/vim-tiny.list
/var/lib/opkg/info/libdaemon0.list
/var/lib/opkg/info/coreutils.prerm
/var/lib/opkg/info/busybox-syslog.control
/var/lib/opkg/info/libc6.postinst
/var/lib/opkg/info/libmount1.list
/var/lib/opkg/info/libpcap1.postinst

Consequently, any updated meta-data do no persist across reboots.

I have attempted to assign 'OPKGLIBDIR' to a R/W mount:

OPKGLIBDIR ?=3D "/data-os/opkg"

, which does appear to update the conf file:

$ tail -5 /etc/opkg/opkg.conf
# Default destination for installed packages
dest root /
option lists_dir   /data-os/opkg/opkg/lists
option info_dir    /data-os/opkg/opkg/info
option status_file /data-os/opkg/opkg/status
but meta-data still appears to reside with '/var/lib'

but meta-data still appears residing within '/var/lib':

$ find /data-os/opkg/
/data-os/opkg/
/data-os/opkg/opkg
/data-os/opkg/opkg/info

$ find /var/lib/opkg/ | head
/var/lib/opkg/
/var/lib/opkg/status
/var/lib/opkg/info
/var/lib/opkg/info/vim-tiny.list
/var/lib/opkg/info/libdaemon0.list
/var/lib/opkg/info/coreutils.prerm
/var/lib/opkg/info/busybox-syslog.control
/var/lib/opkg/info/libc6.postinst
/var/lib/opkg/info/libmount1.list
/var/lib/opkg/info/libpcap1.postinst

and opkg appears broken (as nothing is indicated installed):

$ opkg list-installed; echo $?
0


To clarify, I imagine a process where the ipk file is uploaded to the devic=
e, after which the rootfs is remounted R/W and ipk installed/updated throug=
h opkg. Installation/update do succeed, but the meta-data do not persist as=
 inteded.

Note, I am on baseline Langdale, no obvious changes seem to have been pushe=
d to master though.

Am I missing any available configuration to achieve this?
Thanks,
Martin

