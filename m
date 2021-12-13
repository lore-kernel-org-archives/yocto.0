Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D0FC433EF
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 02:54:04 +0000 (UTC)
Received: from esa20.fujitsucc.c3s2.iphmx.com (esa20.fujitsucc.c3s2.iphmx.com
 [216.71.158.65])
 by mx.groups.io with SMTP id smtpd.web10.6575.1639364039879443800
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Dec 2021 18:54:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=C8XQg4eg;
 spf=pass (domain: fujitsu.com, ip: 216.71.158.65,
 mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1639364040; x=1670900040;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=S/LdxoDVZpMhK1ZrFxCU9hRke8b6YTtko3c5abTN/nA=;
  b=C8XQg4egFLKliw0wmcLLyXZqIUwpQjtmirqSOxK6KRHI1R9fQxHvwrWT
   wdAsz85EoRaKP+Zs/BDE2ei87newHjb4SIgIo6w5tVUG63RrJGVar42VB
   3ExSnzS1xihfrUV9CYyJpZ+tMXFVUvnbEjiYTHc1dKjW7sxyL/RfP9uEI
   HlfsPWAnn/I/YKy3HjRUiW3o5VxpdMVRxuaKpbMOc+tvlxgvZdUkjjlHC
   HUrmlv/0ssMnyeQNmpJwLonAYPdfUW/oAYWql9g7Smos7Boc3PD4tyuL6
   /jC32eQj8VaqySwZwtQH0c57QOURWJH/IoEDG7F9phpBIXsEfMnMq34GR
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="45692098"
X-IronPort-AV: E=Sophos;i="5.88,201,1635174000";
   d="scan'208";a="45692098"
Received: from mail-os0jpn01lp2107.outbound.protection.outlook.com (HELO
 JPN01-OS0-obe.outbound.protection.outlook.com) ([104.47.23.107])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 11:53:52 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LeNM/WuEsM5j0ZpwYrMUOxDz3adljcla52kbDAmquDC4mkxLVjcaXMb3ZDPd8DHaY12SsiVctC+BR67TeWUmdRNe01e0NUEAfHuGOSzGln1Xite2oJsaiTGiUtuilpLTPKHceyuqzVNFATCCPSYrDIakaec7MaCdbJYa7lHcRN/TsmlWtcu50S4/yKdQJOY9pm5gfCVzxk4P4KCzxKofK1OSYGXh1Ltxp0Kwl4yt3bl2ve75xswqDImNTQpYtbPEN4VQHPw77qpeSgrWLbxyuYV5YmuLn0mJSLPBUvSEC9V5ahfQnyWizVU1cqizI1sf8BccE3MXmFWW5IVByYrdsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S/LdxoDVZpMhK1ZrFxCU9hRke8b6YTtko3c5abTN/nA=;
 b=Jwv+teoW41VNLbJGxUh+JP2ILhCV5gygLw8iNwzXL3dhzak9lL4N8bDSHnz25HKXx+lFHfXx+8fmpJ7ZjQz3brBu6QIpEDY1M4yodaPLs+s3HZi9lbmmYeGMF0qHY4XM6WWnR5ee0I8ChO90e9tye4n1mp2PlBOX/c6AqXEVeMVKBlQQa803IXSzEQnPOeXdVpCHIK1kqsAEuLIPK22r6O89pGgjrjOlO1UuSUVZRQEir9wB6Osx7iNF6sSBVGT1Qf+DjyLUBMSOvSvd5EHF5Bj9/AR97d6Qa0crNlG6XhILD93SdRZFvHNWzv55j48EV3NzYdw0Ysqu1TcAiY209Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S/LdxoDVZpMhK1ZrFxCU9hRke8b6YTtko3c5abTN/nA=;
 b=KT3HnoneUUhtFxwNrn/8U9hw8V5p2b2dm0f7rbeNgce8BKRLchOaeWUuAYp6auJRJz0gAPLUwzp7jJKT5CNFhFgdBmt7HQWf7lJKYl3vpXZW+HAQgSTe8U+NtbrFsiA17MBiLntFsrZFfBP0+kTv01fyk3fg5CGLn4ccOyBkt9E=
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by OSAPR01MB3283.jpnprd01.prod.outlook.com (2603:1096:603:3a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.17; Mon, 13 Dec
 2021 02:53:49 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::e812:bf56:51b3:e3e9]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::e812:bf56:51b3:e3e9%9]) with mapi id 15.20.4778.017; Mon, 13 Dec 2021
 02:53:49 +0000
From: "leimaohui@fujitsu.com" <leimaohui@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "Jeremy Puhlman (jpuhlman@mvista.com)" <jpuhlman@mvista.com>
Subject: RE: [yocto] [meta-cgl][PATCH] resource-agents: Fix QA Issue:
Thread-Topic: [yocto] [meta-cgl][PATCH] resource-agents: Fix QA Issue:
Thread-Index: AQHX4BC8zYKfwNkjLE20NMW8hxw6Iqwv2Q7A
Date: Mon, 13 Dec 2021 02:53:48 +0000
Message-ID: 
 <OS0PR01MB61784660660C3881E21B9255A0749@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <1637666429-4258-1-git-send-email-leimaohui@fujitsu.com>
In-Reply-To: <1637666429-4258-1-git-send-email-leimaohui@fujitsu.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c09898e8-f077-4783-95ae-08d9bde3c9cc
x-ms-traffictypediagnostic: OSAPR01MB3283:EE_
x-microsoft-antispam-prvs: 
 <OSAPR01MB32833991138BDC3E0F09402BA0749@OSAPR01MB3283.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VKFbdEvu7fbBZqHVva95WaoVZFi9QcA9Wbjo9eF2nTzrMqO4vL27EJSLIesqWtFVcX7B52gUSZ7HJnfUaHFwzpJu5Nyy2PxNIkiqRLkXd0U8JXhuQ6/zGhDsUntgNUWV3glLBa9/sCq0NUcIVypH6O4qbqXchyvAMGMCYbbNeCYZC6d7wtwjaxfHiYHNnLLQITGoBeQ4bQTzFvIpZHj9o872RDOcINuHxbQ5JKgYdTR1vmPNSCSFwST9FYWmKJzKmCBZpFgB0VNzDTtnYkxzVJzRC/HE6RPVr2oaSkMO119hCzKnAEbxs/bLIB08zg+n9Tpa41mBgfkbHGM/keVIr4Xbxx2FVOcNV0yr80QSQnQtE6rDVUAnIw50BAzbKQRW/yrsShJMQx1FYGfRIbDx+eFkIzZcsMk9jnpWF2xNHFHIhfSawrsMXAUq+p9L9Tizp5jrEirr99Bcjkcs2WmyVg8oQXTSq+EPudBn8AdU2L0budazpVPWE26NLfvN87cw/FC7iJSSgNgXi6jCaDdvXPxv13YMzMBdVrBUmk72ocFD3yqccFPqYKO+bS9x3t+IKz2RxUXwhLxcW0v9L6LkPoYVv6ROxvUjcvfixKlQevj/YpvtL6Z4QYgGo5ibGLbZjhAMVn8sZ8fEDN1tmPeLDJbEGAHYwX1ucjxjfvj0jMj61pzZJSGjhD2ZJeGYmZTc
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(85182001)(38070700005)(122000001)(26005)(86362001)(508600001)(76116006)(66476007)(71200400001)(5660300002)(55016003)(4326008)(186003)(66556008)(52536014)(83380400001)(8676002)(38100700002)(8936002)(9686003)(64756008)(66446008)(6916009)(2906002)(7696005)(33656002)(82960400001)(66946007)(316002)(53546011)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?UlJhcTU3S0tWR2Jvd0IwZTJxNFQ5cjRNWEg0VmN6K3Y2MzY0cTduRHpP?=
 =?shift_jis?B?V1QxMzE2NXkyaTB2U2svYllYSzRnMEI0VlJtM3lGUmRwMTBFZDZSb3F5?=
 =?shift_jis?B?clNtVzkrV2ppK1NucURIVG8wbEFwSGpNUnRJODZCZWlzMmdUUXpzVHNQ?=
 =?shift_jis?B?ZHdsb2xtdENIaHRQRm9mTUV3Z0MzNDNESTUzUFAyZjBPbVM5Y2piMXho?=
 =?shift_jis?B?SStURk1LUmRVNW94Szd3ZllWSG1kbFBtb3UyQ0NlNWY0MVpGOUFxMWps?=
 =?shift_jis?B?WU1TeS9CTi9QeHFTK2M1dHJDZXpyZnVwRHgzQUhuTksyVENnUCtQeWpm?=
 =?shift_jis?B?dGovaHR3ak05QjliNHNFbndTSFFmYnNCU0JscjlsL1FxNHZ2U2xab0ds?=
 =?shift_jis?B?R29VRmpFalJYY2NnbTQySjIyVHAxS3NPNG1ZSjdYQVlrbWlmRVp5TE9P?=
 =?shift_jis?B?VExFT0hqT0lVY21jUm1MT09qYUZTL21xamFtbDhiYUI3enNJbjFGcy94?=
 =?shift_jis?B?OUNWbE9hdjZGNndYR0R2d2RwcjFrd0wycUVSd0FMMnRTUGdMWG9MUjBZ?=
 =?shift_jis?B?SThwbGlIelNtUVlaNDgrQVZLREdIbkhLcUVrYks3eVFtblpteFFKZWZs?=
 =?shift_jis?B?YnRLdTJOZVhlODdpcjlhZG5aaVk0dmh1aENMUExwYkNzNG0xcDYwYW9J?=
 =?shift_jis?B?L2t0eDZGRzhMdEEyNEZuR3VnRE0xajVhUUE2V25jeWVWVFJwK1p2dFh4?=
 =?shift_jis?B?MzBZaEluSU9mdG1sVktGSTdzNWxjQTYxR01obHA5N045WmRGVjJWRzBF?=
 =?shift_jis?B?YWdCSGk3RzRqVTNLOXVaZ2pndUxXb2VXUGVtdHcwK3RCVzhHZ1hSRkZD?=
 =?shift_jis?B?SkpHYndhSTNkQjBhOFJGb2dwUGlZbG9xNXN4WWZUOTNibXNRM2REck9R?=
 =?shift_jis?B?ZW9LSzBqTDEyUjF3S1QvMVdUWnFTTjFkby9CTjU5a1Y0d25tOVhOWjhk?=
 =?shift_jis?B?TGVwUHVFdGdCR2NMRFc1SjEvYVQ4dWR6ZG8vRFRUYXZaRVc5MThmeTZu?=
 =?shift_jis?B?YVNPd3paTTVrbW5neVFsblA2NDIvM29VWlpwd29yQnBmMUNFMXVCYWxu?=
 =?shift_jis?B?VEFTVUtpNmhucDZJR0pEazJzREdCaTBsbytBZUZKcitLVkEzZzVpR3Bp?=
 =?shift_jis?B?RkZJWllNRERvQ0NmYll0cVlKODFjSEwyY0lLYWFiTEhjMFU0OWdQSVBh?=
 =?shift_jis?B?aVNsNm9RL2pSWUlhMzRLTzhnUkVsQllOMW9JSjlFanRlQy9sRmFSbS9k?=
 =?shift_jis?B?aEdvMkVBU1NTaDFrSWNGSWRJa0ZBQTVOV2dqek9ycXJ5dEtTWnVIWmJ2?=
 =?shift_jis?B?Q3lyLzRtOXpBSWYvNEh0cVlGaDZvZEJTVWJ1cm0wazZOSzdPV0FvdTNF?=
 =?shift_jis?B?SWNoSkZqTy8zNkNsaHpZRENMcURTdmpNbGNMYVdlenVXZWtjK2tIdlQ4?=
 =?shift_jis?B?ZVlCRWpuVWluRjFKUXVpM3BQK29BNEFFVFdxYjJFRU1hM2RaWGU5RnJ0?=
 =?shift_jis?B?UjRHWkVxOEl0ZjJyRk9Demx3d09Qc3lBOEp2S21WRUhnL2hJV052OWlD?=
 =?shift_jis?B?V1phM0pER3NvSExFRVFJaVcrMisxTDJxOGw1alVOOHcveU42RU5sSkZW?=
 =?shift_jis?B?dG1TejVxVXcyNTViQ0Erb2ZYbVdTVlRSMGpxa09raDkvZDZFdWtxc3hq?=
 =?shift_jis?B?Q3V2VjhxRmVJY0pVNkQ0bDh0SVlRV1dTVjdZWXVhZjgrTTZiWmtZYlly?=
 =?shift_jis?B?ZTJuUmU0UFNwSStabDlJRjgxTlZMblFQdzFpV2pTT1FOenVRSCtXb2FW?=
 =?shift_jis?B?eW9WTkU3dFJBMDlCY2Vna21hY3VVMmt5aFNlaDBvcHM5UUdsR3A3eTNZ?=
 =?shift_jis?B?cGVNQThFejd5bUtzZ2hqcW9uMnB0ZnVWRnVCOHRodUJWdFZwQS95MEF0?=
 =?shift_jis?B?bTNSK3hJVDA2UnRVV2VLTnRIVEJwSUJMdHVGUmZQQi94ck9wSTFEWXMw?=
 =?shift_jis?B?Z0FoUjhMTnlKZ21nb1c3c0VZOWlDWXZEcXcwZ1lyd3RMNkhjWjhJa1dM?=
 =?shift_jis?B?NnJaNWMzbDFCTGFiYTEyaUhHWU9FYUlJZ0wrSU1EZG9JSWpXUkdoT0NI?=
 =?shift_jis?B?QWlSdFRLT2dCRDluMVhTSkVzR1RMRitETzl5dFkyTEVYWW9Yc2lvcWZk?=
 =?shift_jis?B?NUQzZ2RzRG93TGFDODZ0MmxlMitnYW1HL1ZzS1F2clZITDJlemw0L2ln?=
 =?shift_jis?B?K3VuUDhrMjFaOTE0Qkl3SXh6WXpnc2k1Tmc9PQ==?=
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c09898e8-f077-4783-95ae-08d9bde3c9cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 02:53:48.9991
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 fu5Cpq2cZ9fIGJVMjgAXrk62QfSfpMdG1e8LZT4J+0W3++ML8fec+454moLw8RQAhcBpwdcUSky6HeRQwqO+KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB3283
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 02:54:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55556

cGluZw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IExlaSwgTWFvaHVp
IDxsZWltYW9odWlAZnVqaXRzdS5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDIzLCAy
MDIxIDc6MjAgUE0NCj4gVG86IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IExl
aSwgTWFvaHVpIDxsZWltYW9odWlAZnVqaXRzdS5jb20+DQo+IFN1YmplY3Q6IFt5b2N0b10gW21l
dGEtY2dsXVtQQVRDSF0gcmVzb3VyY2UtYWdlbnRzOiBGaXggUUEgSXNzdWU6DQo+IA0KPiBFUlJP
UjogcmVzb3VyY2UtYWdlbnRzLTQuNS4wLXIwIGRvX3BhY2thZ2VfcWE6IFFBIElzc3VlOiByZXNv
dXJjZS1hZ2VudHMNCj4gaW5zdGFsbHMgZmlsZXMgaW4gL3Zhci92b2xhdGlsZSwgYnV0IGl0IGlz
IGV4cGVjdGVkIHRvIGJlIGVtcHR5IFtlbXB0eS1kaXJzXQ0KPiANCj4gU2lnbmVkLW9mZi1ieTog
TGVpIE1hb2h1aSA8bGVpbWFvaHVpQGZ1aml0c3UuY29tPg0KPiAtLS0NCj4gIC4uLi9jbHVzdGVy
LXJlc291cmNlLWFnZW50cy9yZXNvdXJjZS1hZ2VudHNfNC41LjAuYmIgICAgICAgICAgIHwgMyAr
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQNCj4gYS9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wvY2x1c3Rlci1y
ZXNvdXJjZS1hZ2VudHMvcmVzb3VyY2UtYWdlbnRzXzQuNS4wDQo+IC5iYg0KPiBiL21ldGEtY2ds
LWNvbW1vbi9yZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291cmNlLWFnZW50cy9yZXNvdXJjZS1hZ2Vu
dHNfNC41LjANCj4gLmJiDQo+IGluZGV4IDI2MTY4MWMuLmQ2ZmI3MDggMTAwNjQ0DQo+IC0tLQ0K
PiBhL21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291cmNlLWFnZW50cy9y
ZXNvdXJjZS1hZ2VudHNfNC41LjANCj4gLmJiDQo+ICsrKw0KPiBiL21ldGEtY2dsLWNvbW1vbi9y
ZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291cmNlLWFnZW50cy9yZXNvdXJjZS1hZ2VudHNfNC41LjAN
Cj4gLmJiDQo+IEBAIC01Nyw4ICs1Nyw3IEBAIEVYVFJBX09FQ09ORiArPSAiLS1kaXNhYmxlLWZh
dGFsLXdhcm5pbmdzIFwNCj4gICAgICAgICAgICAgICAgICAgLS13aXRoLXJzY3RtcGRpcj0vdmFy
L3J1bi9oZWFydGJlYXQvcnNjdG1wIg0KPiANCj4gIGRvX2luc3RhbGw6YXBwZW5kKCkgew0KPiAt
ICAgIHJtIC1yZiAiJHtEfSR7bG9jYWxzdGF0ZWRpcn0vcnVuIg0KPiAtICAgIHJtZGlyIC0taWdu
b3JlLWZhaWwtb24tbm9uLWVtcHR5ICIke0R9JHtsb2NhbHN0YXRlZGlyfSINCj4gKyAgICBybSAt
cmYgIiR7RH0ke2xvY2Fsc3RhdGVkaXJ9Ig0KPiAgfQ0KPiANCj4gICMgdGlja2xlX3RjcCBpcyBw
dWJsaXNoZWQgdW5kZXIgR1BMdjMsIHdlIGp1c3Qgc3BsaXQgaXQgaW50byAke1BOfS1leHRyYSwN
Cj4gLS0NCj4gMi4yNS4xDQoNCg==

