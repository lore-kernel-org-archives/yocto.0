Return-Path: <bevenson@melinkcorp.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FA4CC433F5
	for <webhook@archiver.kernel.org>; Thu,  6 Jan 2022 14:32:17 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (NAM02-BN1-obe.outbound.protection.outlook.com [40.107.212.118])
 by mx.groups.io with SMTP id smtpd.web11.9358.1641479535845151477
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 06:32:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melink.onmicrosoft.com
 header.s=selector1-melink-onmicrosoft-com header.b=i+fQA7MG;
 spf=pass (domain: melinkcorp.com, ip: 40.107.212.118,
 mailfrom: bevenson@melinkcorp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m6othbZJ0CpjgCwfjws2hQUgU11YvCCiAB2ptgirWildX90IT6ap0l/kxj+8dGKADc/EgGL40UYxQXoSJ8qF6vq5B5E1JOELKUfgH/MTk8IF52WJaWMEqPBU5SDl/Civc4MDoPyxSR9oH3+aK9LR0XIYFzd1ykDsLCybJd2PvU3H8KWRjUj4/Mnx8zAFihgKWPKjJFw9iBXnwipgAVkKRaND8IA7FLrO5zKRgZX5F9f2A+u21r3JPpCBR5rDo9wehfVOIXthdvve8Z1cNJIgd4kqoWCipochGxoopXNQwFn+23xkJNuNvObLgXkiiQ5Yy6OkAyHmBFLwkqzwYrSq8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M5ZK2FiCZCRqnaTp/37xowtPobunwHCn33nCVO9Ea1k=;
 b=mT55H18I50JiEdzayIp9m1u3voIGM7S8nkFZOIpodMTa9nzuKhHWNYaIpj6Y7LCjORSPOMRq7fgZ9qWUe1PJMZClBTps2+o8wgYSWGWk4HSuKBYM1+rJD2Nb48UdmTGgL5H74+j6fYnbFy56TYuZeLgK0rYuPqnJ5r63bksvegg0kp0TccZd20asx2BVlG1ZIB/ZcSlze7qKgd7hI2RPQIvL4HqipqpeZTNZACTdQ1gvyvFMk29VBhgK0buTex9k8bFFdxtOLD0GGMMIebX0SVydMfPjWOowL0XwUqmHvy+Mr7v6k2v9DJ+zqdEoU19DylYD5+pbKCsmoPxdIOgJOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=melinkcorp.com; dmarc=pass action=none
 header.from=melinkcorp.com; dkim=pass header.d=melinkcorp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Melink.onmicrosoft.com; s=selector1-Melink-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M5ZK2FiCZCRqnaTp/37xowtPobunwHCn33nCVO9Ea1k=;
 b=i+fQA7MGIrRbihC7eYsXb0PScV0TypFtSAna7aqu15/4uxhZuC2TO/qdaUrS3lZuoN7+8UcWpG1hEllUlQ/GP96QZLLAafokfEomrcbOnITOZ9IPXnwFIke7zE9Kst7p/SJTrdpQIA2zkid82vnkFcSmVAh4FihWcM3Dxd5Ei05AX5NUbQjCm4vbmLuYHE7C9o6U2K+jBHZYRihJPXT9GWPaTQdSdWqUxB3oFzKJc+FBuzeFb4dMPO01g7dYsIOWr22kp4E/yAD/NVBr0xD2MW+33KnTHt10fdYtMK68P4hteg6XVMtvZsrgQ3vyUlqx4wOnTTSOqRMl9ifIFRMjZA==
Received: from CH0PR20MB3948.namprd20.prod.outlook.com (2603:10b6:610:c6::22)
 by CH2PR20MB3000.namprd20.prod.outlook.com (2603:10b6:610:e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.7; Thu, 6 Jan
 2022 14:32:13 +0000
Received: from CH0PR20MB3948.namprd20.prod.outlook.com
 ([fe80::5d6b:e641:470e:e3be]) by CH0PR20MB3948.namprd20.prod.outlook.com
 ([fe80::5d6b:e641:470e:e3be%4]) with mapi id 15.20.4867.009; Thu, 6 Jan 2022
 14:32:13 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Problems switching from busybox-udhcpc to dhcpcd
Thread-Topic: Problems switching from busybox-udhcpc to dhcpcd
Thread-Index: AdgDBVPB5tU7v1CyRxmBtJ+HRjRyaQ==
Date: Thu, 6 Jan 2022 14:32:13 +0000
Message-ID: 
 <CH0PR20MB394892B757A14C3EC17B61E8BB4C9@CH0PR20MB3948.namprd20.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-bromium-msgid: 2aca6832-9e0e-4b80-b85d-20623614e3f9
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=melinkcorp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75cc6825-4046-428a-090b-08d9d1215490
x-ms-traffictypediagnostic: CH2PR20MB3000:EE_
x-microsoft-antispam-prvs: 
 <CH2PR20MB300022EF15C89C04D643454CBB4C9@CH2PR20MB3000.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ekoDAC9U+OE218E/H8f6OOwSloj+CyoQv65ZFKpb2vzBQkiyCNTZ2v71GnHOf+5KwDWUEiOEWPtiSrLSnvGduyKAadqpZy+RD7xe9c1tBK1luxVjeCIMqmY2q3j8LwedOpVYGCR3IxzGrf0hnmNWJaoxCBmN06sKXJvUQIuZlt8zoOabROfdDVmednxLoQVCZ+eGsThHRaJcRWgfWcsiDF70tTXp/XmcElnI6wrR9FLiDSl7LfnPJmdjEoWVvOawRn7/jWnI21NhUTqaaoudvBQaMk/wEiPnlyGbyQsVnSdrzsXjm+sqK85qOyjNRougZUSILBTA1Fwz7oStWaja46J+V4tLxfYBEIoyN6ARlAXemqmXaxuL1vb/cx4Bu+pRWUoZfr+kYzwwnHHNcpszSlFTe730z+apAyvNxoyk8XCQRVuZasQGfNUrhzKLvsJEv5UJOQ0c8O5TcPLuI97L6ClAI8CkdcfoXZxHl+taDjqtfs8XVn91MzSAGELgmK+Ds0STqbH9ePoUddngHEZBM9lUNyVZHFt5XV1FZYhX+T+r6pGW2EvaHoZOwHH7lMMC3un387D4LWxxViU+aDfw7MR5hrSK+Ev+ya73bas8VZEgMFAiBRSmYRiC+q08Y+WDhGvYkycodvKTGpUUW0Rr/KVzKrGXoBeZJ+XY0ITU1G/twb073wDpXsang4AOohTzpK8YvTWrmbYvnzFIsoipqy+97phkNL6G2CRN55L8aqEHhCrxJWhqvYUEIlLau1uKosultiohr2dTF2BTJAENeg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR20MB3948.namprd20.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(346002)(376002)(396003)(366004)(39840400004)(186003)(9686003)(71200400001)(508600001)(8936002)(6916009)(122000001)(2906002)(86362001)(83380400001)(26005)(66946007)(7696005)(33656002)(38070700005)(8676002)(316002)(38100700002)(66446008)(66556008)(6506007)(64756008)(66476007)(55016003)(76116006)(52536014)(5660300002)(17423001)(156123004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?wtSjI4LLs3lvEGY0P2IZh9v9s49ZtQ/UKPNDzwmm4cqL8aqOxl/GmKXPRMW6?=
 =?us-ascii?Q?tjE15j/LnyZ+zTLu+f7jUx6TOmjxOLOM1nTIbqKtNBNHw1W5E5mZaXtJy0yD?=
 =?us-ascii?Q?/imAEDc7VWwLoGjDONXpFxaBEWv4cz3CIzV0ueYAjizh0GfPTjE04ffaUS7K?=
 =?us-ascii?Q?mlXEKUs4bGZ8a/vWIq28rrRWX53NZhaFV2r47uqISiqEgbU671MXxf4bcgF3?=
 =?us-ascii?Q?Fb+ROZAiHSz/AIHiObqqfgsDUpbrLyQXB5ondiGoGEkzcaGfiDzrB2h0lRBx?=
 =?us-ascii?Q?w54VBZz8iMiRrmEJoS9CJwFVsWJXNe3Ontdv9Xoa4hgXUNbfwNPVa+h4CAnK?=
 =?us-ascii?Q?4OyE8LP61z8IlA06gSWofRAAOKJ5dkdU45r50QqSIzWDn/wJ6zfK6G+4SFOp?=
 =?us-ascii?Q?kKuQbqxZK03LHaPKtHzvTHLgzRriF5nVkHyf1Pf0xWmpPopmJRdzyLsRhPyR?=
 =?us-ascii?Q?6jfp0x1FTU+dbCxBk3q+LH/cjTkuvT+xPDX0Z8caTpkqjg5VGZx0+sx0ZoHT?=
 =?us-ascii?Q?a7Syr8iZwqmSZtOD+bud+ReBPumUhw+FclHgpTImFRHZOlY8xiSBzzrv8xDn?=
 =?us-ascii?Q?eXJrziIez0/cUvk0BafAFuVHlAoostf+lMqcSv7eEVThbdcmSxLDGRUiudd5?=
 =?us-ascii?Q?qX0Iy74j1i+nxc0X7E+Sw5c/36FzsDDOrL7l4fhrL84tLg2LNR2liVZiGOEI?=
 =?us-ascii?Q?B2XDys8ic6KF3Qa4NsNjSViUvyz9bWQt+FqH84e4HBAdTwmCMtIJXwd+eBis?=
 =?us-ascii?Q?d+pnJSCTF2yOy047lIiHxqoCGXw0PBJTnHq8o89erjIitJbGi+uB02v+6so/?=
 =?us-ascii?Q?bYIMf+UCYTjR6jc0K62k8Pdbhxd1Rft9Gzspb9MlL8ruzL4TXUKpyRGEtBxe?=
 =?us-ascii?Q?I/QYT7BleTk+IGUCPRimuYv5OVJdOkbUfrqObPvWjLRao8R/xNGw/JAITJYa?=
 =?us-ascii?Q?N06NhIUoJ5JZvxLNl4WCbFTy88xVVrEqTI/qOx51LqxjuSe8Jslz0+WqA4lZ?=
 =?us-ascii?Q?/xCXELxKaZ8ky/fbKaf1NmWk1we2hgaAAXwUcKdAxXmzMjw70TR8hRsO8oQK?=
 =?us-ascii?Q?xZUtDdbj0t9hw3M2wwuFY1jshjvIbOyLumMud6M9Ky0FuRu42EYtvJFScswK?=
 =?us-ascii?Q?X7MAqHcyCvoTXa01PPpnoBYuq9PxFDHmYPM4er5MLOnyVbWBAlxN8pRmZolJ?=
 =?us-ascii?Q?TdlRkDI+j4vWUtgQTIOIYZ037oM1FDduYbDOKVjUTIlaPilrpEPy0+BArP0X?=
 =?us-ascii?Q?eBig0CgESCBSnY9KbJKlbHM5e3AOpICQn7tWEitO7xFICENv4auxx1VqkFfd?=
 =?us-ascii?Q?tDq2FN/8ACMDT7Jncc778xGeFxMgzefJQPe4auUWfMHd5E1h2W24dw2xT/Lk?=
 =?us-ascii?Q?BXHV2sehqLHnQ0AdG0GDwz3n1swRpGAlB1lcT583udXlimtrb4aMg0tqGN/w?=
 =?us-ascii?Q?cZVrpXXIc8KNGqp/UXtXChaDNSFNgkuKf3O3mx1+n7Adf6TP28hJAmsFACF/?=
 =?us-ascii?Q?dUA6Y+7CsUbiUN2ap6AE5/v2rDMVrw87KuFxAjlJzryDapvlK08iTv3/41l9?=
 =?us-ascii?Q?5feS0tLly7H1Jt9P9waRE+YyXcxGeNqnpnyp/Fq2604CiTY9Bid0Ay/47Szm?=
 =?us-ascii?Q?MdM/ux6jK5Ss3G1ZLzAW1oA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR20MB3948.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 75cc6825-4046-428a-090b-08d9d1215490
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2022 14:32:13.1393
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 +pPSPsL9iGXrG+YJjleig2CKTRcCWStk7YZ0vnU7ofKMZuzEfhWV7U/c1RuUIZqfLfx9qjTCyyIWjNKW645bJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR20MB3000
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jan 2022 14:32:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55750

I have a system that is based off core-image-minimal which uses sysvinit an=
d busybox-udhcpc.  I'm trying to switch to dhcpcd because I want to get the=
 NTP server list from the local DHCP server; dhcpcd supports this feature a=
nd busybox-udhcpc does not.  I'm on the dunfell branch.  I think I finally =
got firmware upgrade to work cleanly (with opkg) but I'm having trouble tri=
ggering dhcpcd.  It doesn't work straight out of the box and I'm looking fo=
r assistance in how to get dhcpcd started.

First, here are the recipe changes I made in my custom layer to install dhc=
pcd onto my image and for it to get pulled in on firmware upgrade.
1. I added the following to my busybox_%.bbappend:

Do not install busybox-udcpcd, since we are using dhcpcd
RRECOMMENDS_${PN} =3D ""

2. I modified my busybox defconfig to unset all the udhcpc related configur=
ation features

3. I created a dhcpcd_%.bbappend with these contents:
# Set the package to conflict with busybox-udhcpc
RCONFLICTS_${PN} =3D "busybox-udhcpc"
RREPLACES_${PN} =3D "busybox-udhcpc"

# Add configuration settings to enable NTP configuration
PACKAGECONFIG +=3D " \
                   ntp \
                 "
PACKAGECONFIG[ntp] =3D "--with-hook=3Dntp, , , ntp"

# Include the hook scripts on the system
EXTRA_OECONF +=3D " \
                 --with-hooks \
                "
4. In my init-ifupdown_%.bbappend:
	a. I added dhcpcd to the RDEPENDS list
	b. I added a script to start dhcpcd and installed it in the ${D}${sysconfd=
ir}/network/if-up directory

5. Here is the if-up script (note: I only have one Ethernet port on this de=
vice which will always be eth0):
#!/bin/sh

# Only do this for eth0 and not the loopback interface
if [ "$IFACE" =3D=3D "eth0" ]; then
  # Start the DHCP client
  dhcpcd -4 -6 -f /etc/dhcpcd.conf "$IFACE"
fi


I think I'm close, but the dhcpcd never gets called when the Ethernet inter=
face starts up.  As best I can tell from my debugging, I think $IFACE is ne=
ver set whenever my if-up script is called.  I'm not sure why that is, beca=
use I have a pre-up script that depends on $IFACE that has been working for=
 years for me.

Has anyone else made this transition that can offer some more support?  Are=
 there some examples floating around on how to start dhcpcd on ifup that I =
am missing?

Thanks,
Bryan Evenson

