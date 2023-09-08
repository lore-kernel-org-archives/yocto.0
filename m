Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F72EE57ED
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 09:57:05 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.85])
 by mx.groups.io with SMTP id smtpd.web11.35766.1694167020821054276
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Sep 2023 02:57:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=G170J1ED;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=G170J1ED;
 spf=pass (domain: arm.com, ip: 40.107.13.85, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SuQ9TtLmA2WHXq5gzbJQ9sqkrcDTtUx5N1au0sRlXD8=;
 b=G170J1ED5CG2HletjGy21c+9nKOTTuMH41y9b1pFZqDuuiTakClAjgmWUIZOdIsA6HWrzEKAawMfUQn4UqgiZSoUVMpwsjGo/q2ln3LwDw0GYWDMchuRGbEoCJHLdR3f0UYzK75Yqr/WS7hMDGpXSfwrMrmwh0AYZc+SH17FFVA=
Received: from DUZPR01CA0052.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::8) by AM9PR08MB5987.eurprd08.prod.outlook.com
 (2603:10a6:20b:2da::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 09:56:55 +0000
Received: from DBAEUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:469:cafe::2b) by DUZPR01CA0052.outlook.office365.com
 (2603:10a6:10:469::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30 via Frontend
 Transport; Fri, 8 Sep 2023 09:56:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT062.mail.protection.outlook.com (100.127.142.64) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.28 via Frontend Transport; Fri, 8 Sep 2023 09:56:55 +0000
Received: ("Tessian outbound 30c9f5e988c5:v175"); Fri, 08 Sep 2023 09:56:54 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 26ee4d971be73d85
X-CR-MTA-TID: 64aa7808
Received: from e7a1b2a4e9c4.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id C9180419-14D7-44F8-BC70-CEF455BBD5B8.1;
	Fri, 08 Sep 2023 09:56:48 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e7a1b2a4e9c4.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 08 Sep 2023 09:56:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hFO9qfM3xdmLe7fQNmp0Nkz1PAQCEi4H/OUbsVxKETTaovb3exA+gss2vyZ8kmoQMT15VEWBn43OfbSOH9Xn9i7mcqRUeIzN8PvuGXEJ49J60poAxNZcilAO0DzK1IQAZo3l1/4EUT7Rcb1Z4+WiRcyXDLwGdXpFPLPgugO0lKrqZCeQoZfzWDR4r2jwnAdkOiJyzWTnHDtM8Mvb9GVSb85XfiGiGQmLFlpHjZSazfIO8zjtMoYuTZeYS6VqXDbRF/c18fiGDCUM/DWw26R+SJ8al8/Mz3VG8HIk/8cqiDsOMM0e/OC+02NabUJMcboElgjAPjjJEvL0+j3RYAqVkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SuQ9TtLmA2WHXq5gzbJQ9sqkrcDTtUx5N1au0sRlXD8=;
 b=VI8qQaVXOmh1I+DjJ54oCoJQOgzbmbrWx9/L4EDiU8lyLrXv/FTVTOG+hhYc16VNrnKE7uOomhxKbATi/M/pE66GhgGwn8gkQLH3+w/qG13ar9wjAYk5z+ILka++yoeDP6iELcv53KfkJl+7uG6qvH+5JbXaysmOKMhIgQffVys3ntTcmVJNysIM4+62igxbKSxdGfvptAC2LGtkpxKK1M6y0uKIjGdKWpsk3x9xrIQy42yM9pP9AfkUvol52Yd/sVeiCgsbs3w/bcE0EH6kLkCGtQALRsY97P2vXQZipIYWT94021TaZiplwtjiJa310kK59xn1Xg9dw8PsG60WCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SuQ9TtLmA2WHXq5gzbJQ9sqkrcDTtUx5N1au0sRlXD8=;
 b=G170J1ED5CG2HletjGy21c+9nKOTTuMH41y9b1pFZqDuuiTakClAjgmWUIZOdIsA6HWrzEKAawMfUQn4UqgiZSoUVMpwsjGo/q2ln3LwDw0GYWDMchuRGbEoCJHLdR3f0UYzK75Yqr/WS7hMDGpXSfwrMrmwh0AYZc+SH17FFVA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VE1PR08MB5839.eurprd08.prod.outlook.com (2603:10a6:800:1a0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 09:56:44 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727%7]) with mapi id 15.20.6745.034; Fri, 8 Sep 2023
 09:56:44 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "shrikantvaishnav@hotmail.com" <shrikantvaishnav@hotmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to start application/script at startup
Thread-Topic: [yocto] How to start application/script at startup
Thread-Index: AQHZ4jrGUj5sRl4feUSgc86boc5VPg==
Date: Fri, 8 Sep 2023 09:56:44 +0000
Message-ID: <36AADC7A-607C-41E7-9FE3-37358C0022DB@arm.com>
References: <E7867E22-E791-46E9-9374-F71E58824161@arm.com>
 <3255.1694104177753088113@lists.yoctoproject.org>
In-Reply-To: <3255.1694104177753088113@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VE1PR08MB5839:EE_|DBAEUR03FT062:EE_|AM9PR08MB5987:EE_
X-MS-Office365-Filtering-Correlation-Id: 81d5a9ea-add6-439c-c97d-08dbb051eef3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 sZX9owAXcEY8+DpWa8UhH5wVD8aKjaBlOIAS/pDhmnf7gGjFUb9XU604PogIVuxUo0GiPZJUE/g50rJDc7tOuSZN0JnfAJqj+08JEe3oGrIq2epz85va9PNaWMOJSV8ChGSWu0tjmxYzWs4Og+u0PzoOyxB9JURE/1rbhHHCzeGcXlDo/qBmc8c9pV4A64k/Z5EGweZsN0TwaHSfH9BE755YDlsZvSyv/7hZFQ3ZZ0QFhL7E2p9stLR6FZipmZjGTU4G3VpzvNnMr+oko5vkdotZiO2cBwtUVqZg7l1r7WAGKHlomgFJB3IN0E2rBBx6LjCPg+qjFSyul+ETR07PjvZPYLL+mJm30pKZJ4YODGrsAYBHhTeQU6ZLy4lAJw9PHo+Fe7F9Q3o1EZ7nVZnuk7kOqxVaWHv87A5gwBRkZ/AaZ/LjPwt/m/TyBhvm38z/31Hf8+kTg2/GVcYfsgt7DKqc/uwbdlgk1kNUDtv8nWDd0wqwT+KmxIlBItKcVHVCCSxEwZ9+CUai6iP2IylhYmxkB9+BOoVmtvObIKGDq6S20YkU70SovYLSh80v4/91ltrsrjjtFJYsHuSlY9N081X3WhVTLGiQLTMAwcG4Xg419zn1UvHCLUuwQ99ESg+cUKeQN85zn2zs8vtPp+1pbg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(346002)(136003)(376002)(366004)(186009)(1800799009)(451199024)(53546011)(6506007)(6486002)(41300700001)(316002)(122000001)(36756003)(2906002)(478600001)(33656002)(86362001)(66476007)(66556008)(91956017)(66446008)(64756008)(38070700005)(76116006)(6916009)(45080400002)(38100700002)(66946007)(71200400001)(5660300002)(83380400001)(2616005)(8936002)(4326008)(8676002)(26005)(6512007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <38ECADD0FE0891459D95E2BD4C6BEF0C@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5839
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT062.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	795f06ee-26e1-45cc-3ac7-08dbb051e8d6
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	t/gceeEoQaAlK/BSoloinAnUo1rtx/2rYhyGuY2cxaj7Xm7PJvfPwtcIBcHeClO9LNrMHlCceM3a3itrquNu1dpO0bMHVuCYaclFeWGf8FkbpAhw9a65iBA8dGEs0WXZzNUsOePIon7YQQwgh6wiSsLJYhcN/mcXKkAcb27B4oMSzO8rE06JeXuQaCHTBL7kN2NxafwSh5pPtyp+U0z3i2ATqBnrN8+DWweEIodnSxMp4cDUgsSuEylhG9qoGP0jDwshdu9zIKkzpJNBvYpkrWnzTqQCX19ovi3xYJiZqqsLNqVu8vR+if3EozlH+c2CkzmxQ0Wl2YxxCsfKI4IbuvC3i4jdA7VxXrOsRqfnmU+ZdRL6IseA3sYJ5dm0V5k1HdB9sJmojHhvxchhMg2fbkcBQ6hJNuYa96ThuVbNqfMSpQxGNsy43dOwASbmxoaRryIIBHKZ5EqbdpGT/zj/+jrYgu8eW/6dnGYyxlOT/Sa9itPKYKyzxSf82+JgB/wYuNrwBHLkGp2Q6QZQ/K4R9d8/ogndR8GwlSKDEGJz0Q2d8lkuS0YP8yerpv1RaYzdTRMJvhVOrtJS/1e1hLesL7hwJQGtqikNMaFbkk21MJd/0D9h/G2WWbkmIq71vYEFjM9XsvtQ+EByvZaXLXeoCBm0nbk/OkWI9YEe/FeeCw007RX5f5I3cX20OXy8ttEMb/c2HKDZGsz3MGudrdFh44vonIZuZrkEJaE0RJeqhP6mVA/o0sc90T9RJIkqxeDj
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(136003)(346002)(376002)(396003)(451199024)(1800799009)(82310400011)(186009)(40470700004)(36840700001)(46966006)(6486002)(6506007)(53546011)(6512007)(45080400002)(478600001)(41300700001)(83380400001)(2616005)(336012)(26005)(2906002)(316002)(70206006)(4326008)(5660300002)(6862004)(70586007)(8936002)(8676002)(40460700003)(82740400003)(47076005)(86362001)(33656002)(36860700001)(36756003)(40480700001)(81166007)(356005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 09:56:55.0382
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 81d5a9ea-add6-439c-c97d-08dbb051eef3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT062.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB5987
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 09:57:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60952

Q29weWluZyB0aGUgbGlzdCwgSSBkb27igJl0IGRvIHByaXZhdGUgc3VwcG9ydC4NCg0KT24gNyBT
ZXAgMjAyMywgYXQgMTc6MjksIHNocmlrYW50dmFpc2huYXZAaG90bWFpbC5jb20gd3JvdGU6DQo+
IA0KPiBUaGFua3MgUm9zcyBzaXIsDQo+IGkgaGF2ZSBzb21lIGRvdWJ0cyByZWdhcmRpbmcgeW91
ciBhbnN3ZXIgdGhhbmtzIGluIGFkdmFuY2UuDQo+IA0KPiAoMSljYW50IGkgZGlyZWN0bHkgbW9k
aWZ5IGluc2lkZSAicG9reS9tZXRhL3JlY2lwZXMtY29yZS9zeXN2aW5pdCIgZm9sZGVyIGFuZCB3
cml0ZSB3aGF0ZXZlciBpIHdhbnQgaXMgdGhpcyBhcHByb2FjaCBvayA/IGkgdHJpZWQgd2l0aCBp
bml0dGFiIGFuZCB0aGVuIHdpdGggcmMgYnV0IG15IGVjaG8gInNocmkiIHNjcmlwdC9jb21tYW5k
IG5vdCBkaXNwbGF5ZWQgYWZ0ZXIgc3RhcnR1cC4NCg0KRWRpdGluZyBpbml0dGFiIGlzIGEgYmFk
IGlkZWEuDQoNCj4gKDIpQWxzbyBpIGNvbmZ1c2Ugd2l0aCB0aGVzZSB0d28gbGluZToNCj4gDQo+
ICAgICDigKIgSW4geW91ciByZWNpcGUgaW5zdGFsbCBpdCB0byAvZXRjL2luaXQuZCA6d2hlcmUg
aXMgdGhlIGxvY2F0aW9uIGluc2lkZSBQb2t5IGRpcmVjdG9yeT8/Pw0KDQpUaGF04oCZcyBhbiBv
bi10YXJnZXQgbG9jYXRpb24uICBTb21ldGhpbmcgbGlrZToNCg0KU1JDX1VSSSA9IOKAnGZpbGU6
Ly9teWluaXRzY3JpcHQgPGZpbGU6Ly9teWluaXRzY3JpcHQvPuKAnQ0KDQpkb19pbnN0YWxsKCkg
ew0KCW1rZGlyIOKAlHBhcmVudHMgJHtzeXNjb25mZGlyfS9pbml0LmQNCglpbnN0YWxsICR7V09S
S0RJUn0vbXlpbml0c2NyaXB0ICR7c3lzY29uZmRpcn0vaW5pdC5kDQp9DQoNCj4gICAgIOKAoiB1
c2UgdGhlIHVwZGF0ZS1yY2QgY2xhc3MgdG8gcmVnaXN0ZXIgaXQ6d2h5IGkgbmVlZCB0aGlzIHN0
ZXBzDQoNCldyaXRlIHRoZSBpbml0IHNjcmlwdCBhbmQgaW5zdGFsbCBpdCBpbiB0aGUgcmVjaXBl
IGZvciB5b3VyIGFwcGxpY2F0aW9uLCBvciB3cml0ZSBhIG5ldyByZWNpcGUgaWYgdGhlcmUgaXNu
4oCZdCBhIHNpbmdsZSBvYnZpb3VzIHJlY2lwZS4NCg0KVGhlIHVwZGF0ZS1yY2QgY2xhc3MgaXMg
bmVlZGVkIHRvIGNvbnN0cnVjdCB0aGUgc3ltbGlua3MgZm9yIHN5c3YgdG8gd29yay4gIElmIHlv
dSBkb27igJl0IGtub3cgd2hhdCBJ4oCZbSB0YWxraW5nIGFib3V0IHRoZW4gcmVhZCB1cCBvbiBo
b3cgU3lzViBpbml0IHNjcmlwdHMgd29yazogdGhpcyBpc27igJl0IFlvY3RvLXNwZWNpZmljIGJ1
dCBhIFVuaXggc3RhbmRhcmQgc2luY2UgMTk4My4NCg0KUm9zcw==

