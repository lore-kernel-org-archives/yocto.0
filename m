Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06DDCC3DA64
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 11:29:08 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.42])
 by mx.groups.io with SMTP id smtpd.web10.40562.1722425332659182483
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 04:28:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=boWfredS;
 spf=pass (domain: siemens.com, ip: 40.107.103.42, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pWqGvUE9vhYhRg4X46fSNvLmlhcbddvO4k85OH55ZjJvXZYEpGMCf5KAV2v+1WMATBdHpvIwGs/j+mgD7ft99yO6SyXvYO7ubrEa85OyditkpcYrwh2GQSKlEuP1SCbpsP/lajHyAKz2NeirsZEPrLi8WoTSn8TuPKE12hPgxdKxhZcJHyPQo+iCt+Yv6N42DXoOZAQK9jqd6Zw1a9shn0rkE0Rt7v87eg3nMQAlsMnnY/Fp2x0q3H8GTge9D8/F2X8FThnNdGjIMFqVio5LOo1rQ2mRdl8Jmt+tIeU/ajehkLjj9vT5yj+cWCdxwwLEhEv78xaXfT/jN4cwu+gOiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2R4Tif2AiZ3AGXV+idT5fxQaikRrZtWFmMV8poGat9s=;
 b=p+2sIelYi3ApDCAoeIBZK6ljhsFE2C8kXZNR9JM0igfSbj1txKEP641ZJlQ0qKkBQRQo50BKDZpZCIUDea40waEC//Kqea0SkPfCmY8UXAoE/AnfIf0RI7+foNng36ek5bcC1wHPYR6iTESAb42VMYpptc1i1RvlbtQ5vLaW+WNNdvA2GWIH2rZjiXpU57BQduue8dje+SeQArueiG9SQm/M0wDow/5a6az2HGe3QsKFrsy+pzovYhySNU2AV1c0fAwuIKgG6jTk/SMByU3NH1D8EuaDc/0Dt9n4FwDE8UGbkJlyK7tsxqJXZI7mxzr4iJ790eRDZryeDIaI0hZMsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2R4Tif2AiZ3AGXV+idT5fxQaikRrZtWFmMV8poGat9s=;
 b=boWfredSHn+furiME2BbpCLGRKAkqccRzqOTl5hnOnv4+9ysO13HrhIqbTkW3EnTJhQ44DrD+zu97Lc7SBeDBOi2yohr2MTQOppssKSo5jF4F5Bvj7zfMkQWQzNCJL93VTdmYsOdfUD4gFAx45LN8PaNHPf2o778mD+hbBEjFmn21iuGv+5nxx+3IMpjxcqc2FEM5ODjm7IyfrU/Ircaoe068u0pH7FL3xGXpA4lIDI+OrHM7sfayeiVeZPpH3M/3+IJnIRbBNNGE9YkUZonxFYTtTGGXPuWWg+I+zCoPonCWZmw1xDOiTE292+9dE7r1Yodeo+IFudDMXH8p4Cgpw==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by DU0PR10MB6655.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:401::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Wed, 31 Jul
 2024 11:28:48 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%6]) with mapi id 15.20.7807.023; Wed, 31 Jul 2024
 11:28:48 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: Steven Dorigotti <sdorigotti@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] CVEs and OSS info for nested dependencies
Thread-Topic: [yocto] CVEs and OSS info for nested dependencies
Thread-Index: AQHa4yAeblAsKYGqq0OzPSnWTiHv5LIQfEqwgAA0iQCAAAFGcA==
Date: Wed, 31 Jul 2024 11:28:48 +0000
Message-ID: 
 <AS1PR10MB5697ECA5E747274E8AA40C63FDB12@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <72C4369E-8A25-4CFD-B07E-D8D436665B38@gmail.com>
 <AS1PR10MB56979196B6806897F45F88E3FDB12@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
 <749E7C14-50A8-43D1-8D7B-D742B323E931@gmail.com>
In-Reply-To: <749E7C14-50A8-43D1-8D7B-D742B323E931@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=e98166ba-824e-4354-b7fe-722562e8a6c8;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2024-07-31T11:24:14Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|DU0PR10MB6655:EE_
x-ms-office365-filtering-correlation-id: c2865248-4592-440b-7476-08dcb153f21b
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?eUhRM08xanJKYTN0b0hIWTlRa24zem8zZEF1bXYrQjhWL2VCVEpUN0JsdEts?=
 =?utf-8?B?dk1DU25zQUV3M1JyVGR1ZmE4OHMxYWNlQVNGRGlFeXZpUVpUdFI4Y0hCZjRS?=
 =?utf-8?B?WElYVHpiRVJPNS9ZNmdOOCtIK1MzK2taRGlsWTBoMUdCaGIrbStQWEc1L2Ey?=
 =?utf-8?B?bEYvbHEwUmtSVjB0bTJ3L0R3SFEvUE1YRnd3U1VJMUNQa1pzT2hDbjAvWCtH?=
 =?utf-8?B?NklaaUlyelpLQ093TGRHSTZlc3FGYmZ4TTN6cWN1clNuTkJsbzkyVTI1by80?=
 =?utf-8?B?UzRtK2k1S0NIS1V3Ym9vaUNVY3hQZXc4RXUrckc2bVVYaFpSZzl1dGtraFFt?=
 =?utf-8?B?dHZVbDJFT1NOQ2dkUlp1Z3Y1ZThTb1pKMElKK0ticzd6U1IxL2M3dC8zcUdL?=
 =?utf-8?B?QkpmY3E4RHFzY1o2YVd0aVFENGRueTVXY0cvaXNmU3VuWVlISmd5OG1kZUUz?=
 =?utf-8?B?SlN0TnBqeW84NE5SS2R3Y2NjcnI2aXhURlhTWUJQbWozcE1MMmd1UEhhMkl4?=
 =?utf-8?B?ZXBPWTFXNjc3WGptbHpKbzArM3pEcXNyK2dyRjBQVzJOdzdBNVREQUlWMXVy?=
 =?utf-8?B?bkZFTml0dW94eDVLVnpncXF2MlJCcmNwVkJGVGpHbWZCbnBkWWxRWmpQLzZt?=
 =?utf-8?B?MUpzdElEY1k4UmN6M1ZyYm90d0pVaG8xU3hxcVFVZDFaY056K01xVXdmSGRw?=
 =?utf-8?B?TVd6bFRRYUcveUtTL21DWmxjQkJscUNwMkhqM3F2WEltUzh5alM5cDJLZytT?=
 =?utf-8?B?alNWbHBSSEhoZjN1bHRFcTZralphYzJCb0pJQTQva2pyVmlyVVc2aUIrSHVn?=
 =?utf-8?B?RHZNN3Y1UnIrM0xuOEhMVU1ic3lEL3k2S2UzeDhCUVNxZnZ4YmVVU1phVUVX?=
 =?utf-8?B?MHRnRDRNQ2s0dGdzT0E5ZTdqR0YxRVgwK2F6TGtveFVORC9zVkFSNXZFNXFk?=
 =?utf-8?B?RkZXVVdCQVZhOWZHbzhiV1h6eFVvQzR3dklBVDZucUxFcFVwUUZKSmNjNEJz?=
 =?utf-8?B?a1h6WnNaczh5Vi94NzZFVWM5TmY3RHAxS3ZnWEMxMDJZNXhMbDhoZ3JoQnM0?=
 =?utf-8?B?bldSNHNzVFBwcHN3M0tEZGtnbExNdW5hWGJmcldSQ01UbWkxdmdpTEEzRGRh?=
 =?utf-8?B?T2dyZUR0Mk9QNUM3aUZZdXdZM1ZrREJMcE5ZbzdmL2p6eWxUL2UyNVZtdzNM?=
 =?utf-8?B?NEJrNHhWNmRTVnVkbUN1djlUVXR5SDdUck81aTcvY0h1R1RTbDArRW5rU0Ur?=
 =?utf-8?B?dmE1L3VJWTVaWjBKWVNMNDZSclQ2WElBd1FPb0hMY013dVdhaVpCajllQzU0?=
 =?utf-8?B?ZFpuZ29hVFloM0tkb294anhIQ1QxUXp2bm05dU5oNjY4bFhNWmJhRE5kZ244?=
 =?utf-8?B?cTFKWmo3UFpDMm51ZFFmMlJEK2dxSlFrV1M0VjlLamx3QkdwNG1McGVGazRm?=
 =?utf-8?B?N2ZEMnRGKy9WYVNZcVNVSUlRVnBWTVgvT1Y2TlFZTjlnUE0rTnB6Umk5ZVN3?=
 =?utf-8?B?NkhabUhvRGU1UENkS3hZMFNJdERxV0FPMWdwSWx5dVR4U1NOWndxNG5lSU02?=
 =?utf-8?B?cXkrQU5HamsycWNzM1M5KzlPbnlNVjIwbUp1Nk84Y0NFc3hrOGVjdSszRmRK?=
 =?utf-8?B?TE5KTjdjeXFtNldTZUR3dm5KTVoxR0UydEwvcml5YVdSY01SOG8xd0Q1alJ2?=
 =?utf-8?B?REVhYmxZU2NJT3I2OVpUSi9PdTN5aHlldVoyYjVHM1dvZmtpY3FIWTRMakhY?=
 =?utf-8?B?ZEo3OTdNb1dOWDVBaXNOWndQYmZVZXdkVVh6SHhYR1RwVUdzMXpRUlZjZHNB?=
 =?utf-8?Q?2b5+gaqlNinfcpDSEXmSFEofxGwmJ13Nzz6Lg=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?S1NLcXNubFhtd25XRkdNWHNlOE1Vb3ZBbEZmN1NnakZqZlo3T29xOStTWFo2?=
 =?utf-8?B?V1AzWnFQWkZDNnU2UGgwVkp6TzlZdm1xbm5lQVRrMnBPQVRldjNKWXFSZ0Vv?=
 =?utf-8?B?dE1mcmpvY0N0eEhaNzlBWlZxclE5cW1CaURpSkFpUjZlQ3ZuaGRuMU5zL0pp?=
 =?utf-8?B?MXc5TXlGZE12UzVzL2l5azZXSDd5K2xhSk05ZFhRU3I4S2UzM2xYcXV3RVdR?=
 =?utf-8?B?bUdickJHbE5JNnA4NXI5bmVKUjRDaytlanBMZDRKMkhCZ1dGVjJTM1dPZy9a?=
 =?utf-8?B?b05iWFkxR0RPcEZVZXQ4WFRiZDJWc0dwK2FsMzVPR1ZiR1dTQ0JZR3FSeHhS?=
 =?utf-8?B?Q2taZ2RraHREaThCSU16dHFxTlRyVEgvQjhUQzFLWWkrTEhidEZ2MXV1TlRx?=
 =?utf-8?B?M3BEcHJYQU51TWI5WFVmQXJJQTNVY2U2NGQ5ZHpiMVk0c2h3NkxWNnRFbFJp?=
 =?utf-8?B?QnFIclM2OUZDdFdBdmVBWWRPemp3Sk5RU3BPU2wwU3VUcUlXb3hPK0NCb0Zi?=
 =?utf-8?B?WTdSSjZyaHoyS0Z0SlhLM3Rad0VvbE5tU0pIZGphRnBXUGhJYUZQL0FpZUxC?=
 =?utf-8?B?THBIdU1ueHNIRWwwVmV5cXVrcDRYdVI0TGw1M3duQ1l2d0NPZFJpVXlydCs4?=
 =?utf-8?B?Vzd2TEw2blp6VmxMVHhrY1cyTCtoNUE1c0x2NDFlUEhsWWRKUFhneFhQOTQy?=
 =?utf-8?B?YWM0TzhmeXJYRG5QMzVRbDMxWnU4OW55RWhkc1I0KzFhSHBveWdENmJpMnVB?=
 =?utf-8?B?L0Q4ayswcUtrc3Rzd2lDbnR2emVUbDBraitMWFo0a3NPZHZqbG16K08vL3B0?=
 =?utf-8?B?N0tFRkN0WWk4ZGpCMENxVUVDemdET05LTnA3MHlOa2pldUtMMGx3RkFQaTll?=
 =?utf-8?B?T1VmZmpIZjhGbFB6cGd0SmZwTmx0akNRNHI2bWJPZlEzTDY5eFZPd1VUVjFO?=
 =?utf-8?B?SlhwdjRDbmFhS0plTnhnMCtFbGlqRTlrWFQ3RklnbU0veVUzWmZOSktSaTBR?=
 =?utf-8?B?V3Z5aGcrUHV4ekRMZk9jcUMzLzdvNzlaZDE4YkFoRHRaS0pXdXBGdVkvWWM2?=
 =?utf-8?B?WGJGVUNLUVd2MVNpRkJEV1hOazByQmJHQ01pMTZ4ZVVqMHlDdnlZVmRYMzJD?=
 =?utf-8?B?Tlg1bjVjVXEwc2I5U21EbC9UaUIzSWtCV25sK0RITzA0YnExQ21yOEFMMDFp?=
 =?utf-8?B?WWZPTTNIVXQwZ25CamMyVnRyRUpoSFJPdUo2VEZFbDUxUmpITmFXSDJQT21j?=
 =?utf-8?B?SDFtRng3ZmxPUDRDb21Va2s3RXdwTE50U3QzQ3IrY2dueXdXR0c0YlBQYmgy?=
 =?utf-8?B?VE1PWEd4MmlmZG51RmN1bU00STJNT0g2bGdtd3ZMMUU4YnZENmNtc3pvMktW?=
 =?utf-8?B?RFNuOHpNendrUG5xMUtSaWI2K2VKNjVuQk1PTkhPS2d5RmZ2QTZ1SXc4Y3dN?=
 =?utf-8?B?cVBYY0pqTmdLUzFjL1ZxamJNN1lKcHFnNmlOUnBZbmZiNk16djAxb3BkMW45?=
 =?utf-8?B?L2JkWnNQeElQOE1aRWlac0hjM1BmNXdXTEJualBmbFVVeFYraEwrSkRpRTdH?=
 =?utf-8?B?clpwV2ZSRUlFbXQ1S0JRUllYei9UbHZGeDNuQ1Z0bEJ4WFpJS09qWUNHTlgz?=
 =?utf-8?B?bUFGTUpYdFNvWXR0RHNNVk9MaWkyckZSenRpK0M0dTRjOTltdWtabWpYOEVo?=
 =?utf-8?B?czVmZWNzNmpIQXlRZ3IxRDlmKzVJTCtPcHdzamhGTkxDS1ZqMTBDbW9sUUtn?=
 =?utf-8?B?SmdGQzlsV3VaZHUzZ3o1Q1F2TVQyU0psVlFqUkxIaTQyaWhpWExIVk5rc05h?=
 =?utf-8?B?dE1sM1BuRDF5TEdsOFE4bFBCZG9WN1RpRXpaWXdPa1dZTVEyTlFJY29LZ3BC?=
 =?utf-8?B?cmFhTTRoSkRMUndaSjduTmY4T2dqMDc4eWlSYy9yTCsyYjZpV3dxamtmcFVU?=
 =?utf-8?B?OVl0bWluT2dkYkFaMSt4TjF5WDAwQnMxYTY5UmtSWTFOVjVwVDRudDZPSW1E?=
 =?utf-8?B?Z0dJaExjOUNVTFU1OW45WWhZZzJEd3l6SFRGVXRiQlNwc2ZkcVA0YVRkNGN1?=
 =?utf-8?B?MmdRRW1OV2lZU0szeTBCR3REWW9oRlhLTWVjd09jWVlLanRzQXU1QU1EeDhl?=
 =?utf-8?Q?OqofMAcJFD5Md7Oa5xjzXMTuo?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c2865248-4592-440b-7476-08dcb153f21b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 11:28:48.1636
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8CjWODSJVRXU6jmVXA9FDSwFaXY6xZ2ybPpd8aFnur2KeLN6j+rv3MHMyUqHggtwngQF4oiLOR1m2l0thQIi0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6655
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 11:29:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63630

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFN0ZXZlbiBEb3JpZ290dGkg
PHNkb3JpZ290dGlAZ21haWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEp1bHkgMzEsIDIwMjQg
MTM6MjANCj4gVG86IE1hcmtvLCBQZXRlciAoQURWIEQgRVUgU0sgQkZTMSkgPFBldGVyLk1hcmtv
QHNpZW1lbnMuY29tPg0KPiBDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJq
ZWN0OiBSZTogW3lvY3RvXSBDVkVzIGFuZCBPU1MgaW5mbyBmb3IgbmVzdGVkIGRlcGVuZGVuY2ll
cw0KPiANCj4gDQo+ID4gT24gMzEgSnVsIDIwMjQsIGF0IDEwOjIxLCBNYXJrbywgUGV0ZXIgPFBl
dGVyLk1hcmtvQHNpZW1lbnMuY29tPiB3cm90ZToNCj4gDQo+IEhlbGxvIFBldGVyLA0KPiANCj4g
PiBUaGlzIHRvcGljIGNvbWVzIHVwIGZyb20gdGltZSB0byB0aW1lLg0KPiANCj4gSXTigJlzIG5p
Y2UgdG8gZ2V0IGNvbmZpcm1hdGlvbiwgSSB3YXMgdW5hYmxlIHRvIGZpbmQgYW55IHRyYWNlcyBv
ZiB0aGUgaXNzdWUuDQo+IA0KPiA+IFRoZXJlIHdhcyBhbHJlYWR5IGEgcGF0Y2ggcHJvcG9zZWQg
Zm9yIHRoaXM6DQo+ID4gaHR0cHM6Ly9saXN0cy5vcGVuZW1iZWRkZWQub3JnL2cvb3BlbmVtYmVk
ZGVkLQ0KPiBjb3JlL3RvcGljLzEwMTk5MTI2OSNtc2cxODkyNjANCj4gPiBodHRwczovL2xpc3Rz
Lm9wZW5lbWJlZGRlZC5vcmcvZy9vcGVuZW1iZWRkZWQtDQo+IGNvcmUvdG9waWMvMTAyMDc2OTY0
I21zZzE4OTUwMQ0KPiA+DQo+ID4gTWF5YmUgaXQgd291bGRuJ3QgYmUgdGhhdCBkaWZmaWN1bHQg
dG8gZmluaXNoIGl0LCBidXQgaXQncyBwb3NzaWJsZSB0aGF0IGl0IG5lZWRzDQo+IHRvIGdldCBh
IGJpdCBicm9hZGVyIHRvIGFsc28gdXBkYXRlIGdlbmVyYXRlZCBzcGR4DQo+ID4gYXMgdGhlcmUg
aXMgb25nb2luZyBhY3Rpdml0eSB0byBzZXBhcmF0ZSBjdmUtY2hlY2sgaW50byBvZmZsaW5lIHRv
b2wgcHJvY2Vzc2luZw0KPiB0aGUgc3BkeCBmaWxlLg0KPiANCj4gVGhpcyBkb2VzIHNlZW1zIGxp
a2UgYSBnb29kIHN0YXJ0IG9uIHRoZSBDVkUgcmVwb3J0aW5nIHNpZGUuDQo+IA0KPiBXaGVyZWFz
IGZvciBTUERYLCBwZXJoYXBzIHRoZSDigJxkdW1teSBkZXBlbmRlbmN5IHBhY2thZ2XigJ0gKGUu
Zy4gbm9kZWpzLQ0KPiBuZ2h0dHAyKSBhcHByb2FjaCBtYXkgYmUgdGhlIHNpbXBsZXN0IGFsdGVy
bmF0aXZlIGV2ZW4gdGhvdWdoIGl0IHJlcXVpcmVzDQo+IG1hbnVhbCBjb3B5aW5nIG9mIGxpY2Vu
c2UgaW5mby9maWxlcyBhbmQgc29tZSBleHRyYSBtYWludGVuYW5jZSBvdmVyaGVhZC4NCj4gSG93
IGRvZXMgdGhpcyBzb3VuZCB0byB5b3U/DQoNCkkgZG9uJ3QgdGhpbmsgdGhhdCBkdW1teSBkZXBl
bmRlbmNpZXMgYXJlIGEgZ29vZCBzb2x1dGlvbi4NClRoZXkgd2lsbCBiZSBmb3Jnb3R0ZW4gdG8g
dXBkYXRlIGFuZCBmb3IgcmVjaXBlcyBsaWtlIG5vZGUgdGhlcmUgd2lsbCBiZSBtYXliZSBodW5k
ZXJlZHMgb2YgdGhlbS4NCihlLmcuIHNlZSBhbnkgcnVzdCByZWNpcGUgaG93IGxvbmcgdGhleSBh
cmUsIGFuZCB0aGF0IHdvdWxkIGJlIHNwbGl0IHRvIHRoYXQgbWFueSBmaWxlcykNCkhhdmluZyBh
IHZhcmlhYmxlIHdoaWNoIGRlZmluZXMgYWxsIHZlbmRvcmVkIGNvbXBvbmVudHMgaW4gc29tZSBm
b3JtIChlLmcuICJ0eXBlLG5hbWUsdmVyc2lvbixjcGUiKSBsb29rcyBtdWNoIGJldHRlci4NCg0K
PiANCj4gVGhhbmtzIGEgbG90IGZvciB0aGUgc3luYywNCj4gU3RldmVuDQo=

