Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.92.73.63])
 by mx.groups.io with SMTP id smtpd.web11.9988.1609236608642458344
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Dec 2020 02:10:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=EIhm+T+z;
 spf=pass (domain: outlook.com, ip: 40.92.73.63, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aAzRUFsKYMsbvROjh+mnncMXrlq5b+gSCj7jHn7G6XIilRNnax2+z4x4Sn6imjJKzZCFmODGomk3QRZPdauJghYhJ7gNVREHMLs+oPJ1IHhQJUTaTHHZ8IW731eBqA4AP6iT9ImQPRq9pDkG6h67JhZTj71r1WaTbNPkOuySDhwQkAW7wH63buKGYsmWScsk2fBN3VRmr+kLtwLsUxTCScxHoT2Zoz+2tSIV3gClfJvA7itnIHQqNgEGsigodcZkIFCLuaD0jhR+tntO58SrwNcCPY0N5EqPQmXvAfZRj0QorKwKP4slAKPFq6PgucbMQNaLdjIew1rY1mKWafIr9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5R1ielnA7ayB5YOjwCgd7epgwy1435cUjJqvJJAw8Yk=;
 b=oY31X8JyhlQ56765NbPNOMIVZJfd5/Yf2N/d6wOcFIvdwZ4EXzp0aIJHgcC3IdpDN8Uq6oZHU24KG6+cyIpxV/7AtHTNAodayX3MTu/aTPadfF9R6GrhFUDvzHccVMBL6n9Ygk405dcNRVFxZGhCEBeFgoJPEEjl+bteHskVqL8uOU8Qu6nRhNa2wRLhh7i8DnWlH1jocVEwla9wVKS69KM+RuxPxe3g6NGlarw8iz9n+Ion85xFmcIJPlFrZRViOzSWzGq9hPE/9BUCDlG8wNvEQ/ZqsLFmZYchUS6dwMGc9GHickiqV0Ck241O2/ObtlEAk7rsOBSKnKcllv+HHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5R1ielnA7ayB5YOjwCgd7epgwy1435cUjJqvJJAw8Yk=;
 b=EIhm+T+zXEXET0XuBmK2tHQ6h150F6hgPCFsxfuNrlVlG5DyL7V08+bprSj9L2l7MwPcFz2cK4HZzCJirK8eYo89EBQDspt0u+e0WoAu/uiW3ORQKp0j47ZhlAa6VzxAr+8SUUha0p2moiPXTK1QB68pDIF4lzKP0c7PNfpQ5d0WOKF8Gv5Z4RFlER7WugmdoiLKCRu8Ia0hoUSyTJtIDkdesHXk4M1Ua1v9q3U2wwyLQht8jBGStqdcSD/oD5jUmXo1YQxcJDu5zLC4E8QShT7xJ1Zlfo54CMX8zVG/1Eo9hMl2p5Rrv1e7gSWd1pmuZ5NTMNbW7qIwOzXcfBiqNg==
Received: from HE1EUR04FT037.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0d::4f) by
 HE1EUR04HT217.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0d::97)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27; Tue, 29 Dec
 2020 10:09:52 +0000
Received: from AM9PR09MB4739.eurprd09.prod.outlook.com
 (2a01:111:e400:7e0d::53) by HE1EUR04FT037.mail.protection.outlook.com
 (2a01:111:e400:7e0d::161) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27 via Frontend
 Transport; Tue, 29 Dec 2020 10:09:52 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:CA50F6E17C38B2B7EC36B90DE5C62E91BCF14BE8E2E8352FD82423BE9D22C00E;UpperCasedChecksum:418C20AEE9E3E620EEB6E82D79B040689AEB768AFD18E14A11DB9B25F71B46B9;SizeAsReceived:8675;Count:47
Received: from AM9PR09MB4739.eurprd09.prod.outlook.com
 ([fe80::404f:17dc:be86:de0b]) by AM9PR09MB4739.eurprd09.prod.outlook.com
 ([fe80::404f:17dc:be86:de0b%6]) with mapi id 15.20.3700.031; Tue, 29 Dec 2020
 10:09:52 +0000
Subject: Re: [yocto] Help regarding yocto receipe (bluez5)
To: yocto@lists.yoctoproject.org, chandumail05@gmail.com
References: <CACXHg=38c=RS-KAe-EqHbWZzLH_xDcqUBM2-gzM5+hx97qwsHg@mail.gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB473928C838830926A06D220BA8D80@AM9PR09MB4739.eurprd09.prod.outlook.com>
Date: Tue, 29 Dec 2020 11:09:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CACXHg=38c=RS-KAe-EqHbWZzLH_xDcqUBM2-gzM5+hx97qwsHg@mail.gmail.com>
X-TMN: [rjwcXVxdJYY9QzdpA2EPWezW2FusZuXt]
X-ClientProxiedBy: AS8PR04CA0061.eurprd04.prod.outlook.com
 (2603:10a6:20b:313::6) To AM9PR09MB4739.eurprd09.prod.outlook.com
 (2603:10a6:20b:282::12)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <0b134b3e-f09e-529c-eeb1-be16daec01df@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.85.168) by AS8PR04CA0061.eurprd04.prod.outlook.com (2603:10a6:20b:313::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27 via Frontend Transport; Tue, 29 Dec 2020 10:09:51 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: f14ac032-2779-4488-1bdc-08d8abe1e223
X-MS-TrafficTypeDiagnostic: HE1EUR04HT217:
X-MS-Exchange-MinimumUrlDomainAge: yoctoproject.org#3764
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Kd/urBfi3vvgHlFonq6yUlX9Vp86aBliwDx9qSH77yQU36QlHxMildDbjUsrrkKefqGM+q0CctGEheuhix5C+oP6oQCf9CPNgdgZq/sDxFAVQlEViPhAOUaSMTkzgcBxB+gsRXc/r5IDTyW64Av5yy+RZHHMRglbsU2ow3g4v0BO+QNpE+DK5RjAu5n2LuHe78cxRELUtQeG0A4qFbiZTbzje6EkYE2utxhVhDiKvUy9ED8xTiMCpEe69NB20AoAPGhaakTN/vwDh+4CCxpxxXbzTvtj78/D0d1yB92JFFA=
X-MS-Exchange-AntiSpam-MessageData: 
	2CV+6q/o4Iv0Q3JsQ/FyB6OzS6iWT5ncYI+lcW0rcOGJ82H+59Q5NkmQURS1YMx1w5M7yBV5Lnv26LBkl99/5k5Y6l4Q74jeWDAhsiurm14SRQgIpYifDsbdpAjG+Z9ASSCFd156gqrmnjeAY8sE1Q==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2020 10:09:52.1553
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-Network-Message-Id: f14ac032-2779-4488-1bdc-08d8abe1e223
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR04FT037.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR04HT217
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I would recommend that you go for a systemd drop-in file [1].
That would be something like a small snippet placed to 
/etc/systemd/system/dbus-org.bluez.service/override.conf

In that file place something like
[Service]
ExecStart=
ExecStart=<new command line with your custom options>

this way you don't need to alter the upstream recipe with weird sed 
hacks or similar.

This drop-in file could be packaged by any recipe or bbappend.

[1] https://coreos.com/os/docs/latest/using-systemd-drop-in-units.html

On 29.12.20 07:48, chandra naik wrote:
> Hi
> 
> After board boot up , we are editing vi 
> /etc/systemd/system/dbus-org.bluez.service these file as 
> ExecStart=/usr/lib/bluetooth/bluetoothd -C (here we are adding -C means 
> bluetooth running in compact mode).
> 
> but these is not good practice , so how we can change these service at 
> compiling time itself , any idea ? main agenda is Run bluetoothd daemon 
> in compatibility mode while building yocto image.
> 
> 
> 
> 
