Return-Path: <kumar.manu@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 212ABE77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 17:55:00 +0000 (UTC)
Received: from HK2PR02CU002.outbound.protection.outlook.com (HK2PR02CU002.outbound.protection.outlook.com [52.101.128.9])
 by mx.groups.io with SMTP id smtpd.web11.27228.1736272493227099127
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 09:54:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=ieuki+5c;
 spf=pass (domain: siemens.com, ip: 52.101.128.9, mailfrom: kumar.manu@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DmXBxYS81+RFuUD4bd2mzCioRTQQW4VzzB55SPWADEeBdQrMklw8uqqi/LMK0H4jNUEbreCJYfHcURWI/wz0oTIazeI94J8NoEkixnyNchZbfR+C1IZ+okrkoYLe61Y6kDVGdkSpIUCn6HFeZp5ZwoYcvjDc1RmAaBClY5kl85wPvvaNq3MJMZEfMIbZbHm5ZfOYp3HORHUjNdJNXHtlYBh5UneDh8WCWniaLsvWATmQrCfUYkf8sgKSN+3kGAAcCfxDe+VTdg68l3Q9ewyCLHtdZkxSduT+yEmh7hDDBg6nvF8b4o2aD5L8fS0r6LEODcmQvNijVMzLYADD0YhftA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYQSupW538dkVxkA56va/Tloi4wp+mkGo+ncfCHyobo=;
 b=vu7d30S7+SHjc2X120bi2hvtITStc/Cbu88huLSIF2npys1S73b6iJPuMjx8jZXVGvjFbJpc9cAQCa6e7KLSPUkKiqrXAnHbI2Or1mQGbCicozzj5dUGkdgPeQ+3+agmtsBjOvK9wamTVG7tIw9ilSd2YLaZt8qV7F9GfPtULBj36AK45OBeIORlhX7nwwVtpqpMNmA/HiZdk4yKd+y+qEUxPc2MOansRDe2xqw72ewJVV1g+hgwPR7hu/yL/Qy8/1aiVYgyQIxg9iCEdGCOh70VNZk9nya+KXoOhKdn/yL0f58dl5oEHd1yE2aNWb4Ou+GG6YTYJKzgPBwb1E/rlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYQSupW538dkVxkA56va/Tloi4wp+mkGo+ncfCHyobo=;
 b=ieuki+5ce31QHnlXdqS1vqFt1QZ3Mu3yzPUiEw0MfxGq3HK5n4WNTAke6dfZ838kt1NIriq3epEoPLafckf6+StKxUrghBrs20SOKI837C1GOkng6M2OiYAq7DXrVtz/6Kiwq06RTOVQSIp9B0LSI7RbPZ+CE1ObSN4Ct+haZ+ISotLBH7Z+ZfM2fBiEuFMRgpz/du17pRZQWXuKVgUOnsY/4+2ZiXTwrqG+vvO7vMfCvyoI1DZS9km8qRULQ55Aq8Js5nXGW6zjAveRVinfWR91PXzIfIpOAzSsG88HP9pBfQNZRREy0nqldejmYEXzdHDVckEZrEY9lyurlYByGw==
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com (2603:1096:400:1f7::12)
 by SI6PR06MB7165.apcprd06.prod.outlook.com (2603:1096:4:252::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.9; Tue, 7 Jan
 2025 17:54:48 +0000
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318]) by TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318%6]) with mapi id 15.20.8335.007; Tue, 7 Jan 2025
 17:54:48 +0000
From: "Kumar, Manu" <kumar.manu@siemens.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Gyorgy
 Sarvari <skandigraun@gmail.com>
Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Topic: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Index: 
 Adtf6VoFMsgJcOJER+q6cre+/gzlBwAPQLMAAATTiOYABKyjAAAYT/rAAAgPmoAABVvkoAABVCOAAAFqN4AADN/1QAABnFmAAAA8zIAAAEaZMAAAZJ4AAAA1foAAABVp8A==
Date: Tue, 7 Jan 2025 17:54:47 +0000
Message-ID: 
 <TYZPR06MB5178FF18B165FAACA5D6AE2586112@TYZPR06MB5178.apcprd06.prod.outlook.com>
References: 
 <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
 <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
 <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <6bd68955-44a5-4a5b-b1f8-990643cb698a@gmail.com>
 <TYZPR06MB5178AB7FF8792D7ABBC1A47286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <ffe32e3d-021f-4224-96d5-e3e496dcd950@gmail.com>
 <CANNYZj9EKn69UjqdAEp9U5DbVLQrf0rNdRZd8JbnmSWji6Wixw@mail.gmail.com>
 <TYZPR06MB5178A50C77D06F140BB5C92586112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <4224c491-c0a3-40e6-9b0a-805f23aa20fe@gmail.com>
 <CANNYZj9jRqHkZfL3Xgqj0xtg+JQwEHy7AM+kAgFA+zO2mShFYw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9jRqHkZfL3Xgqj0xtg+JQwEHy7AM+kAgFA+zO2mShFYw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=053edfad-7201-490e-9ead-efeec757f51f;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-01-07T17:53:06Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR06MB5178:EE_|SI6PR06MB7165:EE_
x-ms-office365-filtering-correlation-id: 06b57957-b94b-4483-abf1-08dd2f446083
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|4022899009|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?xuLR9KlyNdnM03ZCNvrwUGiBALfbZy2nKPkknbGHCPD+klnFQ3QyhkRHUJEX?=
 =?us-ascii?Q?ErbVaNBlwrGb731oKgY5doV+gf2MExbGFYkJWud5auvOEbb01dOVseB1tQ0i?=
 =?us-ascii?Q?fbOZ+n85F5oiMBnhOUQ3w2qo9ctfrELCX+UmaMVSlPJkQlq0rqtzd6R2IWDx?=
 =?us-ascii?Q?2AodcVwDCmPpvj2VR0CjhUET2/ITYIwUKN2rubPxx0+PL+k6qcTr+O66ugar?=
 =?us-ascii?Q?F2px+WEIurl+LD+0eTby8IP2JvLmr5gR2TKZWRhFJPSXJ+o011vgD4hMB0vt?=
 =?us-ascii?Q?U2XSg1Ue4grxO31UTFKUbtddW6rH0w8Z8r9fgGCeROFl0p77rOXMr82j/C5v?=
 =?us-ascii?Q?bpu8qadzbRxZO/WZfz0fKwYD6+63beEtioUvxuQrp5h9pqIV0sV7+hbN84mA?=
 =?us-ascii?Q?5/Ax/r5sma7Fi3jUWoT3NWVXbrwe89yh0h3OF7H9HSuPDOkjTHZ8h7rp5Pbx?=
 =?us-ascii?Q?edF+xL9PxaUkbLaHadLJNA4zLPker5g1mWqfQi+BZwg45HHWGO/HKgZYBMw1?=
 =?us-ascii?Q?zc3x/LHxCxNmSOyn+6rvp2d9+9udR/AIfLTlMAJKNVzR+y3yz2Jgo0NviMjh?=
 =?us-ascii?Q?wrNRp0JxacpV569QDutu8pU79OjJvthhtzebP6zw/tPYW9EY9/IgPPPvnvMs?=
 =?us-ascii?Q?6ZVKPSNbuPRFK8TpFW+JTI9HdKougnuCauE+FhuNP99ToPOQo5lG0ESrQnED?=
 =?us-ascii?Q?i2iuKPi3ZaDBDdLGjSZI3ujKNU/8mBNA3VnWuV/xmEASgmo/6jP+viCgFOKh?=
 =?us-ascii?Q?BHpUjQcIcCeDiyjacKmiLzcNmuyIKEWZushMn7vBgo+c8FDw8iMJhI4OxWYs?=
 =?us-ascii?Q?NTx+kbff02NMIUMhtttdxa32VdgAjjGh+dYo4gzK2Ia1Q4FwLCxBu/d/7zlz?=
 =?us-ascii?Q?EtooohQBSs7fcta2TaYclb197aVaD/cwsTsyPpfs3lyAQ346zOlQZraaJz/w?=
 =?us-ascii?Q?pTAHr/LelpwDX0kDyBfp+kik8HRsubP5hylcSuropZMTIeoepNxN98lVVorZ?=
 =?us-ascii?Q?ZKaIHRUp4hBjLvLSlegx6sZizZGOF2CEW4qULE/mKeE/4EWfD+wuESOh70aT?=
 =?us-ascii?Q?PCAS38b/fUhSRk1Zx1UvNeRqdWg88FVkBdCsikBsG1bmqjmFe7yDsIgKbgAY?=
 =?us-ascii?Q?ps4Fwz4+x7EyKJNeGMCwARn+IOTlZTI3fCbn0vE6l3hheznZJZKv9VkHosLX?=
 =?us-ascii?Q?SxWFzz4wb4XQk1sic4Qz3H3XPdYl8nRoRmiMDsS7aAISnbqpWaQh+aRMU7SG?=
 =?us-ascii?Q?1kOYcK1JA7scdbmGxNZwFUQBoCp70ZnbxgkupPj95mf+atdNzLAgQrGDywPQ?=
 =?us-ascii?Q?0LoDQ6Hqf2N0Ze8epgwQQPGW+zBbTgjti+JPndUkhsWcQhXktuJmhX23oZpV?=
 =?us-ascii?Q?Z2FqUgv5rvvTCdZDvPBc/HukCS99wSb6FMqvPXW2HykMXvR+vQ=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB5178.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?5CJ6lFgFmvz1pEdUTDMNtlg8Cn/sKIPKoQZOq1MxbyPw+JRjY2xg92qWiG2o?=
 =?us-ascii?Q?WAyeI7/qkNqjS3O+1TLo25uIR73hOpNG9WT962Nan78rqmXK29UUnpzaH1hY?=
 =?us-ascii?Q?1HDoCrzZA9f9Vu/PQ8PnhUBzi4sBRE/x/IBhP6TnoKjG4ueyiFnXZnHjODTw?=
 =?us-ascii?Q?ZWAMRbt+4nTshK9rhM2zvgZQfJ98GL8dgFSMXB6gJtp5iKyR25fzYKWq4yOD?=
 =?us-ascii?Q?EcjsrXXKTTdAJA1i4kKD8iMVYcLQx16ATg4X1h+xoarnGZgIiLXItnxDXcq2?=
 =?us-ascii?Q?6b+Opp0jmEf2H9FdCNxpdlUpTowOtDqlG+75yxDFhb4YeIsbOk6fPP6WmPvp?=
 =?us-ascii?Q?5r3LXiupHDHf9xYkRewu4WEhdkyKd3J+4vGpzVlPb40/Aqh2GKllCzhm1/CA?=
 =?us-ascii?Q?JUCaDyt3oNZEIl4MHbE5e4u91wKqRaZQF34YiGw0JoTIN2egYOxBZXZP5mr/?=
 =?us-ascii?Q?1jfQDcKfmnjRdGPAobxWqcGwIHHPuZqSYlmM4I71x3LV7GY79fbMg4gm7MFe?=
 =?us-ascii?Q?4N8e1UAbPI5nxYIu8/V25qu81+kiN7yXAMU3aqiOupUb7zr4WhKq4b0TPXX9?=
 =?us-ascii?Q?AzSDHPgCmg6kY+OztAdkYYPN0trOM3g3Gy+HF/17au+xWYNzVOTNOMrEwZd3?=
 =?us-ascii?Q?gDpNiMXpG6CjEQ8XxVI85hvyuj4FjUnlUXbpwgCr9Td331L7C9XBlDQ05PjW?=
 =?us-ascii?Q?55Qxvu/ncP1VWy/955J4j/6RzEjGkgFTDboCPK4FrPrGW7LFMiiVtjXMEWev?=
 =?us-ascii?Q?AIiWRwoXCJbFzI9VsfZADVpSavS+Fg8b6soX7TySKXL5vNgEoEb3KvhG7Xtp?=
 =?us-ascii?Q?4AffuxHDFBMQ+qH/+H/mURAHHCxHHg6X7LLFWQ+WCK3P8VQ5VZx6MQUeUvnR?=
 =?us-ascii?Q?xKQ8eblQce3ray1UQZyfeqjlastT1egkxIHOUn/EAwreCwkKM4IvuEEO/6Ub?=
 =?us-ascii?Q?6BqfYZo0w66AK91sDsoDaf8qHp6dyHpxSVALiTAyMG3yOkrQkqfR6qAYDCFa?=
 =?us-ascii?Q?4jjgv06i1jeAxosyotIUivTjd4zKSgZ+nm6b1d0b/p2n1yNW2T1dj+1XNaYN?=
 =?us-ascii?Q?qDoLRqHuR7lqr0cUTrIDBmEV0/dL87OZma3YARIurj5LexnTqCuZqrTCwcXE?=
 =?us-ascii?Q?OZGtBju7enZyFwZtUzs06lhQj+ArU210YMIbQGUGrZUOnX50F+Ap9o5v5LRE?=
 =?us-ascii?Q?q2qCUKW/01aSnaKfttfR/8h3M3zAtlzDX+HQ7/WwqqDRg4US9Nowb4p0q1cu?=
 =?us-ascii?Q?/1ZomfhYwjAzZ/QHJtxbHjjuAUmJj177Qk1n3x+JBiDqrN/ffRPotfUbQjPj?=
 =?us-ascii?Q?JIhFul1DoxgDWtjveJKQRLtCJJkit5RyT+py+V2kbofCam/fgfHXcwK/wlBQ?=
 =?us-ascii?Q?CCgmtp5lwl+dH1dwY4SeZHvP9SRJDZF9Elx6Zerg6F/pu/frJdbD9lwniaWt?=
 =?us-ascii?Q?kbIw3uiSCyb0Pom5uKAsqkLil6imwwq4s0BnZILIp+7hGwLmY133lqEXpcKK?=
 =?us-ascii?Q?yWUyWUosprAHoULfxs46JuJ4GnivBLbbCfojGx97LQAoYLmgeFDU/pgqw4iN?=
 =?us-ascii?Q?QzbGud/DJKX75FjM/nM+KtS1JMw0H+H01dAIG118?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB5178.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06b57957-b94b-4483-abf1-08dd2f446083
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 17:54:47.9482
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VJS08gxUup8DwKci4TxStslqIfjDWCUBlVMyyC9rPuiN3zQlbGF9AGT1gQb9PKEqKFi+QTgrcZXQgMvMh0FwPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI6PR06MB7165
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 17:55:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64518

Sure Alexander I will provide more inf o on this ..please give some time I =
will come back on this.. thanks for pointing on this..=20

-----Original Message-----
From: Alexander Kanavin <alex.kanavin@gmail.com>=20
Sent: Tuesday, January 7, 2025 11:21 PM
To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>
Cc: yocto@lists.yoctoproject.org; Gyorgy Sarvari <skandigraun@gmail.com>
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not c=
opying

The key error is:
Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03:
(../lighttpd-1.4.67/src/plugin.c.202) dlopen() failed for:
/usr/lib/lighttpd/mod_redirect.so /usr/lib/lighttpd/mod_redirect.so:
cannot open shared object file: No such file or directory

So I'm not sure how changing the installation to /usr/lib is going to help =
here. Are these files present in these locations or not? Can you share log.=
do_rootfs so we can see what actually gets installed into the image?

Alex

On Tue, 7 Jan 2025 at 18:44, Gyorgy Sarvari <skandigraun@gmail.com> wrote:
>
> Have you changed RDEPENDS_${PN} to RDEPENDS:${PN} from the earlier=20
> email? I would have expected it to solve this very error, as it was=20
> supposed to install the required files exactly in the folder where=20
> this error is showing...
>
> On 07.01.25 18:38, Kumar, Manu wrote:
> > As I was getting error when we run lighttpd as below so modules in /usr=
/lib will be fine..
> >
> > root@manu:~# systemctl status lighttpd.service x lighttpd.service -=20
> > Lighttpd Daemon
> >       Loaded: loaded (/lib/systemd/system/lighttpd.service; enabled; ve=
ndor preset: enabled)
> >       Active: failed (Result: exit-code) since Fri 2024-12-27 05:21:39 =
EST; 15s ago
> >      Process: 782 ExecStartPre=3D/usr/sbin/lighttpd -tt -f=20
> > /etc/lighttpd/lighttpd.conf (code=3Dexited, status=3D255/EXCEPTION)
> >
> > Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Scheduled restart jo=
b, restart counter is at 5.
> > Dec 27 05:21:39 manu systemd[1]: Stopped Lighttpd Daemon.
> > Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Start request repeat=
ed too quickly.
> > Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Failed with result '=
exit-code'.
> > Dec 27 05:21:39 manu systemd[1]: Failed to start Lighttpd Daemon.
> > root@manu:~# journalctl -xeu lighttpd.service Dec 27 02:42:19 manu=20
> > systemd[1]: Starting Lighttpd Daemon...
> > -- Subject: A start job for unit lighttpd.service has begun=20
> > execution
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632394880%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DM6YcEhlB
> > 8nALGXU7BM9xs7DTUOnNaa7i3JSs4QVIe88%3D&reserved=3D0
> > --
> > -- A start job for unit lighttpd.service has begun execution.
> > --
> > -- The job identifier is 109.
> > Dec 27 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21:=20
> > (../lighttpd-1.4.67/src/plugin.c.202) dlopen() failed for:=20
> > /usr/lib/lighttpd/mod_redirect.so /usr/lib/lighttpd/mod_redirect.so:=20
> > cannot open shared object file: No such file or directory Dec 27=20
> > 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21:=20
> > (../lighttpd-1.4.67/src/server.c.1285) loading plugins finally=20
> > failed Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Control=20
> > process exited, code=3Dexited, status=3D255/EXCEPTION
> > -- Subject: Unit process exited
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632413957%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DgCM5MsTE
> > yizPivtxdbByEe%2F2Bdpu8qTKn%2BjG8V9kihk%3D&reserved=3D0
> > --
> > -- An ExecStartPre=3D process belonging to unit lighttpd.service has ex=
ited.
> > --
> > -- The process' exit code is 'exited' and its exit status is 255.
> > Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Failed with result '=
exit-code'.
> > -- Subject: Unit failed
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632425717%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DtsHs1KNI
> > HHGfyyWhB6FeiLwAzAbP07DQ%2Bnec3%2B%2B0BZs%3D&reserved=3D0
> > --
> > -- The unit lighttpd.service has entered the 'failed' state with result=
 'exit-code'.
> > Dec 27 02:42:27 manu systemd[1]: Failed to start Lighttpd Daemon.
> > -- Subject: A start job for unit lighttpd.service has failed
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632437147%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3Df6xdHkke
> > wwXSl0RcNnVxMtzFPnMos%2FKKujeKW7zlPKo%3D&reserved=3D0
> > --
> > -- A start job for unit lighttpd.service has finished with a failure.
> > --
> > -- The job identifier is 109 and the job result is failed.
> > Dec 27 02:42:31 manu systemd[1]: lighttpd.service: Scheduled restart jo=
b, restart counter is at 1.
> > -- Subject: Automatic restarting of a unit has been scheduled
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632448082%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DNkGcMi%2
> > B0kKcJ5t7P1r52VNb0G%2Be2rq8xf%2BieprzCjl8%3D&reserved=3D0
> > --
> > -- Automatic restarting of the unit lighttpd.service has been=20
> > scheduled, as the result for
> > -- the configured Restart=3D setting for the unit.
> > Dec 27 02:43:03 manu systemd[1]: Stopped Lighttpd Daemon.
> > -- Subject: A stop job for unit lighttpd.service has finished
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632461097%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DWF7n7Oow
> > Fm2WAplcOHjKh5GnN9PslU93C%2BVxYspP3R4%3D&reserved=3D0
> > --
> > -- A stop job for unit lighttpd.service has finished.
> > --
> > -- The job identifier is 111 and the job result is done.
> > Dec 27 02:43:03 manu systemd[1]: Starting Lighttpd Daemon...
> > -- Subject: A start job for unit lighttpd.service has begun=20
> > execution
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632472328%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3Dtlz9YQ9c
> > cUnnVPd8rQ950%2FY9uKvRkRRJ9Ol%2FHRcn22I%3D&reserved=3D0
> > --
> > -- A start job for unit lighttpd.service has begun execution.
> > --
> > -- The job identifier is 111.
> > Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03:=20
> > (../lighttpd-1.4.67/src/plugin.c.202) dlopen() failed for:=20
> > /usr/lib/lighttpd/mod_redirect.so /usr/lib/lighttpd/mod_redirect.so:=20
> > cannot open shared object file: No such file or directory Dec 27=20
> > 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03:=20
> > (../lighttpd-1.4.67/src/server.c.1285) loading plugins finally=20
> > failed Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Control=20
> > process exited, code=3Dexited, status=3D255/EXCEPTION
> > -- Subject: Unit process exited
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632484057%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DP%2F4mZl
> > tENFJJYHvplCo9WrVwh0lXFE1zU2HW1JHYkJE%3D&reserved=3D0
> > --
> > -- An ExecStartPre=3D process belonging to unit lighttpd.service has ex=
ited.
> > --
> > -- The process' exit code is 'exited' and its exit status is 255.
> > Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Failed with result '=
exit-code'.
> > -- Subject: Unit failed
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632495263%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DFhEyrSwZ
> > ptkrCFtuKxxFMx2HIkJ7imFDtqtZcu843aw%3D&reserved=3D0
> > --
> > -- The unit lighttpd.service has entered the 'failed' state with result=
 'exit-code'.
> > Dec 27 02:43:04 manu systemd[1]: Failed to start Lighttpd Daemon.
> > -- Subject: A start job for unit lighttpd.service has failed
> > -- Defined-By: systemd
> > -- Support:=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fli
> > sts.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C0
> > 2%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291aa08dd2f43d5f9%7C38
> > ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718690632507090%7CUnknow
> > n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJX
> > aW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DpF2NiQro
> > 0KN1w%2FcPbbtVHmL%2BXj8EtyC31Gv5k8i%2FS%2Fg%3D&reserved=3D0
> > --
> > -- A start job for unit lighttpd.service has finished with a failure.
> > --
> > -- The job identifier is 111 and the job result is failed.
> >
> > Also I am not able to see any binary files in /etc/init.d..
> >
> > If there is any further suggestions please suggest.. for further unders=
tanding..
> >
> > -----Original Message-----
> > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > Sent: Tuesday, January 7, 2025 10:56 PM
> > To: yocto@lists.yoctoproject.org; skandigraun@gmail.com
> > Cc: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>
> > Subject: Re: [yocto] Query: Regarding lighttpd/librarries in=20
> > /usr/lib not copying
> >
> > I'm not sure it's worth the effort to revert the module installation ba=
ck to how it was. It's better to adapt to the new location where necessary.
> >
> > Why do you want modules in /usr/lib, what breaks when they are in /usr/=
lib/lighttpd?
> >
> > Alex
> >
> > On Tue, 7 Jan 2025 at 18:18, Gyorgy Sarvari via lists.yoctoproject.org =
<skandigraun=3Dgmail.com@lists.yoctoproject.org> wrote:
> >> Beside that change you made, you also need to make sure that=20
> >> lighttpd installs the files to the location where you expect them=20
> >> to be. Add something like this in a bbappend (this option comes=20
> >> from the meson_options.txt file, where the module install location can=
 be specified):
> >>
> >> EXTRA_OEMESON:append =3D " -Dmoduledir=3Dlib "
> >>
> >>
> >> On 07.01.25 17:37, Kumar, Manu wrote:
> >>> I have tried to change
> >>> "sources/oe-core/meta/recipes-extended/lighttpd/lighttpd_1.4.67" only=
 last 2 lines as below, python populate_packages:prepend () {
> >>>       lighttpd_libdir =3D d.expand('${libdir}')
> >>>       do_split_packages(d, lighttpd_libdir, r'^mod_(.*)\.so$',=20
> >>> 'lighttpd-module-%s', 'Lighttpd module for %s', extra_depends=3D'')=20
> >>> }
> >>>
> >>> But I am getting error as below,
> >>>
> >>> NOTE: Executing Tasks
> >>> ERROR: lighttpd-1.4.67-r0 do_package: QA Issue: lighttpd: Files/direc=
tories were installed but not shipped in any package:
> >>>     /usr/lib/lighttpd/mod_alias.so
> >>>     /usr/lib/lighttpd/mod_wstunnel.so
> >>>     /usr/lib/lighttpd/mod_redirect.so
> >>>     /usr/lib/lighttpd/mod_webdav.so
> >>>     /usr/lib/lighttpd/mod_evhost.so
> >>>     /usr/lib/lighttpd/mod_authn_file.so
> >>>     /usr/lib/lighttpd/mod_secdownload.so
> >>>     /usr/lib/lighttpd/mod_staticfile.so
> >>>     /usr/lib/lighttpd/mod_usertrack.so
> >>>     /usr/lib/lighttpd/mod_setenv.so
> >>>     /usr/lib/lighttpd/mod_proxy.so
> >>>     /usr/lib/lighttpd/mod_indexfile.so
> >>>     /usr/lib/lighttpd/mod_auth.so
> >>>     /usr/lib/lighttpd/mod_ajp13.so
> >>>     /usr/lib/lighttpd/mod_deflate.so
> >>>     /usr/lib/lighttpd/mod_simple_vhost.so
> >>>     /usr/lib/lighttpd/mod_scgi.so
> >>>     /usr/lib/lighttpd/mod_openssl.so
> >>>     /usr/lib/lighttpd/mod_vhostdb.so
> >>>     /usr/lib/lighttpd/mod_accesslog.so
> >>>     /usr/lib/lighttpd/mod_fastcgi.so
> >>>     /usr/lib/lighttpd/mod_ssi.so
> >>>     /usr/lib/lighttpd/mod_dirlisting.so
> >>>     /usr/lib/lighttpd/mod_status.so
> >>>     /usr/lib/lighttpd/mod_access.so
> >>>     /usr/lib/lighttpd/mod_expire.so
> >>>     /usr/lib/lighttpd/mod_userdir.so
> >>>     /usr/lib/lighttpd/mod_sockproxy.so
> >>>     /usr/lib/lighttpd/mod_evasive.so
> >>>     /usr/lib/lighttpd/mod_cgi.so
> >>>     /usr/lib/lighttpd/mod_extforward.so
> >>>     /usr/lib/lighttpd/mod_rrdtool.so
> >>>     /usr/lib/lighttpd/mod_uploadprogress.so
> >>>     /usr/lib/lighttpd/mod_rewrite.so Please set FILES such that=20
> >>> these items are packaged. Alternatively if they are unneeded, avoid i=
nstalling them or delete them within do_install.
> >>> lighttpd: 34 installed and not shipped files.=20
> >>> [installed-vs-shipped]
> >>> ERROR: lighttpd-1.4.67-r0 do_package: Fatal QA errors were found, fai=
ling task.
> >>>
> >>>
> >>> Can you please help me how to overriding it in a bbappend or similar =
as you mentioned in older thread.. it helps !!!
> >>>
> >>> -----Original Message-----
> >>> From: Gyorgy Sarvari <skandigraun@gmail.com>
> >>> Sent: Tuesday, January 7, 2025 3:54 PM
> >>> To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>;=20
> >>> yocto@lists.yoctoproject.org
> >>> Subject: Re: [yocto] Query: Regarding lighttpd/librarries in=20
> >>> /usr/lib not copying
> >>>
> >>> On 07.01.25 11:05, Kumar, Manu wrote:
> >>>> reason behind ask this question is.. in earlier tisdk all the module=
s were there in "/usr/lib" as when we start lightpd service(which was there=
 in (/etc/init.d) it will check modules in "/usr/lib". in the latest tisdk =
also if I run "systemctl start lighttpd" looks like it is searching "/usr/l=
ib"
> >>>>
> >>> This change comes from this[1] commit (look at the very bottom of it)=
.
> >>> If it causing problems, you can try overriding it in a bbappend or si=
milar. Though maybe it would be more interesting to look into why your ti-s=
dk is looking for these files at the incorrect place. TI layers are usually=
 reasonably maintained, I'd expect them to follow changes in the oe-core la=
yer...
> >>>
> >>> [1]:
> >>> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2F
> >>> gi%2F&data=3D05%7C02%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291
> >>> aa08dd2f43d5f9%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718
> >>> 690632519053%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiO
> >>> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C
> >>> 0%7C%7C%7C&sdata=3DO%2FWtFAGIerJoxrvNQ8v%2F6Bh3%2BXF0gSaMStf1TWuVfx4
> >>> %3D&reserved=3D0=20
> >>> t.yoctoproject.org%2Fpoky%2Fcommit%2Fmeta%2Frecipes-extended%2Flig
> >>> ht=20
> >>> tpd%3Fh%3Dkirkstone%26id%3D3755f6c4eb404b6218784ad21c3a56312c425cc
> >>> 2&=20
> >>> data=3D05%7C02%7Ckumar.manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd
> >>> 2f
> >>> 40530e%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C63871867553540
> >>> 92=20
> >>> 81%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDA
> >>> wM=20
> >>> CIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&s
> >>> da
> >>> ta=3Dv%2FUyHY8SqNaHixsAlCLK21phFXZeva6ECGnwtrs4i60%3D&reserved=3D0
> >>>
> >>>
> >>>> -----Original Message-----
> >>>> From: Kumar, Manu (FT D IN PAMC MI EMB FW)
> >>>> Sent: Tuesday, January 7, 2025 2:37 PM
> >>>> To: Gyorgy Sarvari <skandigraun@gmail.com>;=20
> >>>> yocto@lists.yoctoproject.org
> >>>> Subject: RE: [yocto] Query: Regarding lighttpd/librarries in=20
> >>>> /usr/lib not copying
> >>>>
> >>>> Ok , I will try and let you know !!
> >>>>
> >>>> But how can I make all the modules to be present inside "/usr/lib" i=
nstead of "/usr/lib/lighttpd" ?
> >>>>
> >>>> Regards
> >>>> Manu
> >>>>
> >>>>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#64512):
> >> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl
> >> ist%2F&data=3D05%7C02%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291
> >> aa08dd2f43d5f9%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186
> >> 90632530543%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiI
> >> wLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> >> C%7C%7C&sdata=3DE9Rtv5JA9wKK56HvWlAucWYdJ4dc5ka6rHS%2FwLUXVuw%3D&rese
> >> rved=3D0=20
> >> s.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F64512&data=3D05%7C02%7Ckuma=
r.
> >> manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd957
> >> 94f
> >> d4addab42e1495d55a%7C1%7C0%7C638718675535434387%7CUnknown%7CTWFpbGZ
> >> sb3=20
> >> d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOI
> >> joi=20
> >> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DKazrtJZyhv9ot5uU8lTEt3d
> >> 5Ij
> >> Q9qqomcN8WxkaRFRw%3D&reserved=3D0 Mute This Topic:
> >> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl
> >> ist%2F&data=3D05%7C02%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291
> >> aa08dd2f43d5f9%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186
> >> 90632541557%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiI
> >> wLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> >> C%7C%7C&sdata=3Dg7HKqVL9bCND1vQjG42BrG9GO31nHMbobkAHUwTgNek%3D&reserv
> >> ed=3D0=20
> >> s.yoctoproject.org%2Fmt%2F110454032%2F1686489&data=3D05%7C02%7Ckumar.
> >> man=20
> >> u%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794f
> >> d4a=20
> >> ddab42e1495d55a%7C1%7C0%7C638718675535447010%7CUnknown%7CTWFpbGZsb3
> >> d8e=20
> >> yJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> >> TWF
> >> pbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DZeeFGhmZ%2ByaCSv0Gm5QZ2Kw9
> >> 4Q6
> >> 4brEb%2F%2BWNKjwKltc%3D&reserved=3D0
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe:
> >> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl
> >> ist%2F&data=3D05%7C02%7Ckumar.manu%40siemens.com%7C3c1e74ccf2224a5291
> >> aa08dd2f43d5f9%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186
> >> 90632552230%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiI
> >> wLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> >> C%7C%7C&sdata=3DFfq3z0GURoJ3zumRmX1ERklSPYwsTqvPexfl6jmAlvE%3D&reserv
> >> ed=3D0=20
> >> s.yoctoproject.org%2Fg%2Fyocto%2Funsub&data=3D05%7C02%7Ckumar.manu%40
> >> sie=20
> >> mens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794fd4addab
> >> 42e
> >> 1495d55a%7C1%7C0%7C638718675535460871%7CUnknown%7CTWFpbGZsb3d8eyJFb
> >> XB0=20
> >> eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCI
> >> sIl
> >> dUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D2w4dbqZ%2BwFgOWdF6ei7IX%2F1M6FaSZ
> >> p%2
> >> FLWeL19o3NDXo%3D&reserved=3D0 [alex.kanavin@gmail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>

