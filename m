Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A861FC43334
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 09:41:35 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.71])
 by mx.groups.io with SMTP id smtpd.web10.20233.1657705292576849344
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 02:41:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=ernVR/4l;
 spf=pass (domain: arm.com, ip: 40.107.20.71, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=Mplzrk9b9hPOtzW2U4KEXvsrFDwFVBKcbZCtaaW9YA6Y5I5gUaL7f+p4yWIylPTxP0mBpEELxEr0Wc+0EepnkuuGgJK+uf5Cw9Kh/f481oCNLtMOoETM5QdmxckNsByx0fa7/nt7uVECOchtjTga+QuWLppl275LOENm2gh1BxHzvXwHHUXUcmCRkzoEjrWtjPAyhNsvYhoPQrIhYuBazfAiLm+dqcIPK2JlqMJ9/Vh5FXAAX9+FUqxCFD/z7WdsdExzKsy7VkuK+ZrHvotsRkvHDk8CIOMY9PukHs0HCxRiFggwqEWq8/Llr5Ku5sJ0YTv3Ygc2P54rUi3h3bqYMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YOrbEoPnDMNXXi1PbopV5bHN1mmsnzQuXrSnbasZTm8=;
 b=RhkTtkz8ukmSgdW0fBhvVI/Up5ffeSu1JumYMVSJPdu5VkzOuScyI2/pCpPZZ/L+dVfVFkwDdi7TPpnVWbYga+sP4x4VItqAKFgRHwzmb7hASpugh6hLwrIZLDy83GznTEQTjDxcVOyduuyby5fwQiKfAmXcDuR7f/jOht+8AbTKTfOHZ44/6LgU6yctTFWf4EU8fcYxlG4D5l5lROOHtxxj2WvOf8296+DKQikmst5Xi+iVLlVQKcbLpHwWXDgz3aB556LMSDYFbd05yvrbV+qbJVES2T2KX9DzwpH9jcNPKlyGUUnbTt90+eOWKfR5zSBYSm8QZ32utuZj7flksw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOrbEoPnDMNXXi1PbopV5bHN1mmsnzQuXrSnbasZTm8=;
 b=ernVR/4lFLBkYjvL2eDgUYI/8JABxjZQssBJw2ukMDudH5vexQx/AmQXEpTVkNu1l+p0XDuAkkbdEkzrLA8SeXzGH817vJu1phJ30CKG0SQmJNYfBJqDD38mexJWjnzsoc6gy0msbbvmyGrOF86ucZP1L4R3aYOpPXwN0QdcL24=
Received: from AM6P192CA0061.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:82::38)
 by DB6PR0802MB2535.eurprd08.prod.outlook.com (2603:10a6:4:a1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.12; Wed, 13 Jul
 2022 09:41:29 +0000
Received: from VE1EUR03FT044.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:82:cafe::45) by AM6P192CA0061.outlook.office365.com
 (2603:10a6:209:82::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.17 via Frontend
 Transport; Wed, 13 Jul 2022 09:41:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT044.mail.protection.outlook.com (10.152.19.106) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.15 via Frontend Transport; Wed, 13 Jul 2022 09:41:28 +0000
Received: ("Tessian outbound 6f9e7ef31fa8:v122");
 Wed, 13 Jul 2022 09:41:28 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: feb151ac12afefb9
X-CR-MTA-TID: 64aa7808
Received: from b1b592d786ce.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 EECCF9FB-D401-479D-A532-54C8178F6FC4.1;
	Wed, 13 Jul 2022 09:41:21 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 b1b592d786ce.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 13 Jul 2022 09:41:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PX+Tw6ksZf2pVPnwIZkC46K4dG5RKsz5PfhwuNB+DBs2YqwWppberX0Vn9O3e/oT7NFuH5BxiygYHJ+YNYfcg8WDeo/jvr7YITWZuL5at5ULPkkHgeAqs2bE6yDBv+YIAO+jo3BERr9OLKLlJ80t4MltAD3jkUukP8HpIoNVh1dA7jYg1BIDpXtK0SdEEyl4OzWVrfnfB+k8sTK81UZhNqAqCO49h2wvfm3vpb/xa2NjdB5LBSW6ODIhVwOo4wqLgAvcA/Jop3JaD2TSHDPrOD5VzHz2xo2daYkrxDqrkDioamP0skdCBg9NOZx1ZhI09I5bM5X8ebRNQfH1Mr45mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YOrbEoPnDMNXXi1PbopV5bHN1mmsnzQuXrSnbasZTm8=;
 b=ec9nv4rpUfDSgJ75M7LRmKdbWaA/7U+/6l0e1JOGaRX7Zlk+ofefqfbmSHw7FCfm0up1Qsvpx39ZjfYdN1Kj0zt2m7XH2v5KVzsfonB2TWLkK1DCQ4K0umHVT3K0KXQXQ2QW+xaQIudZZaFFH25/NZNQsGo+uPY36kUmZxoMQpBCY6MOdTBAIALFAMNleLDxZ2aFVColV8Ichtz8XuhhuB9wkl4dQy4cwudVLo2Pen1jhoblQi9IfgD2wiznWuQDdsdsXjKooS6lhHokZsbxtJuJffV9TzLJbcWYSKlvAZwk/sNfQWwGtYg45na1xvd1HxDNwayKbQczhGLZPtbMXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOrbEoPnDMNXXi1PbopV5bHN1mmsnzQuXrSnbasZTm8=;
 b=ernVR/4lFLBkYjvL2eDgUYI/8JABxjZQssBJw2ukMDudH5vexQx/AmQXEpTVkNu1l+p0XDuAkkbdEkzrLA8SeXzGH817vJu1phJ30CKG0SQmJNYfBJqDD38mexJWjnzsoc6gy0msbbvmyGrOF86ucZP1L4R3aYOpPXwN0QdcL24=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5731.eurprd08.prod.outlook.com (2603:10a6:20b:1c7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.12; Wed, 13 Jul
 2022 09:41:19 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926%2]) with mapi id 15.20.5417.026; Wed, 13 Jul 2022
 09:41:19 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "n.jeker@delisys.ch" <n.jeker@delisys.ch>
CC: William Huang <whuang8933@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to get license text
Thread-Topic: [yocto] How to get license text
Thread-Index: AQHYlUfViMcEH5YuJ0ewv5XrfQBnkq16yvkAgAFD3gA=
Date: Wed, 13 Jul 2022 09:41:19 +0000
Message-ID: <3E807517-B7AD-4C44-B29B-F24427E4249F@arm.com>
References: <3g66.1657558820921988336.0Jjd@lists.yoctoproject.org>
 <1409eafd6829239effb96306ff724c76a49f7a0a.camel@delisys.ch>
In-Reply-To: <1409eafd6829239effb96306ff724c76a49f7a0a.camel@delisys.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 5b0a239b-da03-4ae4-c50d-08da64b3dc53
x-ms-traffictypediagnostic: 
	AM8PR08MB5731:EE_|VE1EUR03FT044:EE_|DB6PR0802MB2535:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 DqkRxWl4MvV10ephqf+8BX0hA80/hUaIUh+v6zHEgpLSgsIJgQumsyF10i+PA18dqlcdGI9PV+fCplrUDvsBWKTipG7LAHE+W8Qz69HYviqQXCyTqNDx0C0WGhQN9h0vDuQgNaC7zu7bakTY01tb5ujYrMozc73B9MTPqLZWYpaxrdSuJL7ivT7HtGbmkEmbTIgkBshNZzwjKGNHcCchN5F0//5xZQqkWjY96apMD3zZ/TGasvxcQLFXn3tmUhVcKmf6hXL2rzKzVwMqmT3U6FW0hkFXdmN5Z2MFuXpXec+o9BNBjeQ+EhwnoO5DPOcGPyUh8OMvEyCqaue27NnRle9ivvhnPfRmh7YDwb+oq4EU+SXk6ioj3AX4Ahc3jNMPz4nrDzQXBqmFnAn7GiUgI3A/c6mPVWtDd57pLllVwmSByLDMkWW/3YWT+ExTyNKO6dMe1nPG5aU8Mj4z7Mm5dYlY1DQpsRr9eruazAEPzExnK5V4RE8rcC4SVCXWNElsiADtokfK4gn/ME20ZC8+0NMVKPZz7+/OVgyLD8RbSnE2RocdTjfSJxBq+gcNbtxIarbUNePWgE5IpEYdjCqA3eARn0iUPs8aBZhxUmSSwdPnbQtxqL7MGlLEFemOLKvADc7QqBzzZ2FyhEn+0Z+B/5iOiXWQtlcxYRGn5u1Sv/u4BF2EldyV1nPeG27A1JF5pYtpsWVjFvMiUa10D7LrXVVvIah4V2paYQy6z2TcCPe/4YRkBnB1j5P5kc4wnS7nuPm8JhFGRI6zCiTFRl4cDvhkunGuYSzXb74JXYv+6Z4xKG83MzZw/X1tiSH96r/NOHn1A9scE0OIfRt9DaxHqBIL/ctvXckELZj1n5a+G5Kvt2859OBtkIlFk9PkiRq0
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(39860400002)(346002)(376002)(366004)(396003)(2616005)(8676002)(4326008)(76116006)(6506007)(53546011)(36756003)(122000001)(66946007)(66446008)(64756008)(66476007)(66556008)(6512007)(186003)(41300700001)(33656002)(8936002)(5660300002)(38100700002)(316002)(38070700005)(26005)(966005)(6916009)(6486002)(91956017)(478600001)(83380400001)(54906003)(86362001)(2906002)(71200400001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <855C0873AECF6943995A340B78F99B7E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5731
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT044.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5356e88c-eb56-462f-eb1c-08da64b3d6d0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vkXVFOBiJnO5GHps9a/cS1ndrXQcp6D9l+7+5GXOWtZzzMWRHphGtx8vOz8Aqg0uPZMd8knJmdnzhN+UBGumYCfzpPZmLbrZhkmmRGjJmPaMZEXvipxdxECKFd0O6K9mmyldXKN47sbjDdRYQYhyAMTe8XZzG2ioWftmtpyn9SVvT9AujdnsrvPuat+I9mDjRFkE6+VZHAj0HoD13E69XGGtxH95hs0Mb8hA2GYKfmEPJjUk2fwuL5qQlMlhbGcf46Zc9Fcxr1GJw4+LQW8pVAuXECLzebqe8HOThsuM+bz3zqwoeNIGLWyUkEh0d/g2xkWlhMcNV6hgsHBOste4KuHe7skxww7o71yN2WcOQBHefbx9dvj4OnaVVzcKnu0QveerKJId8B6sVhbLzOCeph8FgFpMVYKBlafw9unVgvY5bOkDX3mNeTCav8H2psALYE/2eT3LjU/4AF+A1Jdn1IViiqmw86S4xi7IeAJXMRu0+gCxPnrQT5k8P9oukTfaMiFwj/LIaosUFNiJY+9pZn0mzwb73gR95LljCi54sAqxQGoftYeMvTBeJCb4z2RwdUk0VhCGj1HP+aLhRO8BRfpHqekySpAmO79eZzgC9hgdp7cYXUz5GHEGss0bbgrq7KLxh/00iEOTUU861DF+l1F8WJZUGMBp0klsoxwZzdS4QqT85Md8oPvEFnuyQ8RHCKoOFR+vFieadbc/U1wlY/4t0GBOly+WVrrN+3kYnvUJvQtwm/TB/7K3vP0KPw3uCN727otAFcNpoLCxmLInwZhPNajibSrmEmhVjgR54E/aSjSzCSnSSenxEYDiivl+dRfE/blMGz8sAf+gF2js3ZE+h/ys4dPG1Y6VI7W6kFY=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(396003)(136003)(39860400002)(346002)(376002)(36840700001)(40470700004)(46966006)(36756003)(5660300002)(8936002)(6862004)(86362001)(6512007)(966005)(6486002)(316002)(40480700001)(186003)(2616005)(336012)(82310400005)(36860700001)(47076005)(70586007)(70206006)(2906002)(41300700001)(6506007)(33656002)(81166007)(4326008)(8676002)(40460700003)(356005)(478600001)(83380400001)(53546011)(82740400003)(26005)(54906003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2022 09:41:28.3810
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5b0a239b-da03-4ae4-c50d-08da64b3dc53
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT044.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2535
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 09:41:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57521

T24gMTIgSnVsIDIwMjIsIGF0IDE1OjIyLCBOaWNvbGFzIEpla2VyIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxuLmpla2VyPWRlbGlzeXMuY2hAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3Jv
dGU6DQo+IA0KPiBPbiBNb24sIDIwMjItMDctMTEgYXQgMTA6MDAgLTA3MDAsIFdpbGxpYW0gSHVh
bmcgd3JvdGU6DQo+PiBIaSwNCj4+IEkgd2FzIHdvbmRlcmluZyBpZiBpdCBpcyBwb3NzaWJsZSB0
byBnZXQgdGhlIGxpY2Vuc2UgaW5mb3JtYXRpb24gZm9yDQo+PiBhbGwgb2YgdGhlIGRlcGxveWVk
IHBhY2thZ2VzIGluIHRoZSBpbWFnZT8gSSBrbm93IHRoZXJlJ3MgYQ0KPj4gbGljZW5zZS5tYW5p
ZmVzdCBmaWxlIGluIGRlcGxveS9saWNlbnNlcywgYnV0IEknbSBsb29raW5nIGZvciBhIGZpbGUN
Cj4+IHRoYXQgaW5jbHVkZXMgdGhhdCBtYW5pZmVzdCBhcyB3ZWxsIGFzIHRoZSBwYXJhZ3JhcGgg
YXNzb2NpYXRlZCB3aXRoDQo+PiB0aGUgbGljZW5zZS4gQ2xvc2VzdCBJIGZvdW5kIHdhcyBpbiB0
aGUgL3Vzci9zaGFyZS9jb21tb24tbGljZW5zZQ0KPj4gZm9sZGVyIHdoaWNoIGhhcyB0aGUgTElD
RU5TRSBvciBDT1BZSU5HIGZpbGUgZm9yIGVhY2ggcGFja2FnZSwgYnV0IEkNCj4+IGFtIGxvb2tp
bmcgaWYgdGhlcmUncyBhIHNpbmdsZSBmaWxlIHRoYXQgY29udGFpbnMgdGhpcyBpbmZvcm1hdGlv
bg0KPj4gaW5zdGVhZC4NCj4+IA0KPiANCj4gSSBzdGFydGVkIHdvcmtpbmcgb24gc29tZXRoaW5n
IGxpa2UgdGhpcyBhcyBJJ20gY3VycmVudGx5IG5vdCBhd2FyZQ0KPiB0aGF0IHRoaXMgZnVuY3Rp
b25hbGl0eSBhbHJlYWR5IGV4aXN0cyAoc29tZW9uZSBjb3JyZWN0IG1lIGlmIEknbQ0KPiB3cm9u
ZykuIE15IGdvYWwgd2FzIHRvIGNyZWF0ZSBhIFBERiB3aXRoIGEgbGlzdCBvZiBwYWNrZXRzIGFu
ZCBhbGwNCj4gbGljZW5zZXMuIFRoZSBkZXNpZ24gSSBjaG9zZSB3YXMgY3JlYXRpbmcgc29tZXRo
aW5nIHRleHQgYmFzZWQgZGlyZWN0bHkNCj4gb3V0IG9mIHlvY3RvIChtYXJrZG93bikgYW5kIHVz
aW5nIHNvbWV0aGluZyBsaWtlIHBhbmRvYyB0byBjb252ZXJ0IHRoYXQNCj4gdG8gYSBQREYuIEkn
dmUgYWJhbmRvbmVkIHRoZSBwcm9qZWN0IGZvciB0aGUgbW9tZW50IGFzIG90aGVyIHRoaW5ncw0K
PiBiZWNhbWUgbW9yZSBpbXBvcnRhbnQuDQoNCkkgd3JvdGUgYSBzaW1pbGFyIHRoaW5nIGEgd2hp
bGUgYmFjaywgdG8gcmV2aWV3IHRoZSBsaWNlbnNlIGNoZWNrc3VtcyBpbiBhIGxheWVyLiAgSXTi
gJlzIG9ubHkgaW4gbXkgcm9zcy9tdXQgYnJhbmNoIG9uIHBva3ktY29udHJpYiByaWdodCBub3c6
DQoNCmh0dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvcG9reS1jb250cmliL3RyZWUvc2NyaXB0
cy9saWNlbnNlcmV2aWV3LnB5P2g9cm9zcy9tdXQNCg0KVGhpcyBpcyBzbGlnaHRseSBkaWZmZXJl
bnQ6IGl0IGRvZXNu4oCZdCB3cml0ZSB0aGUgYWN0dWFsIGxpY2Vuc2UgZmlsZXMgYmVpbmcgcmVm
ZXJlbmNlZCwgYnV0IHRoZSBmcmFnbWVudHMgb2YgdGhlIGZpbGVzIHdoaWNoIGFyZSB0aGUgbGlj
ZW5zZSBjaGVja3N1bXMuDQoNClJvc3M=

