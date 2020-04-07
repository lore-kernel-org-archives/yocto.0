Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.45])
 by mx.groups.io with SMTP id smtpd.web12.9403.1586267613355522487
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Apr 2020 06:53:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=ftuBHEyR;
 spf=pass (domain: topicproducts.com, ip: 40.107.7.45, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NsICoI5giDby0CuDwetfsCY9yOShqy7Yw8tKvCccDJM=;
 b=ftuBHEyRRnl6+Juq7lhwkXonfCB0d+aZcUbuCD7tMUFHF7VP2IT9TMBeQmkYpT3iiclyI0II81gUqenZpKVOSAjup1wm8+JTk33fNsgX3OEckyDppkRz4G5f5lyChbv3ErNoZb9jCaCC6uGs8jUAwEs/+I2V8odcdMb3117Q8yg=
Received: from AM6P191CA0017.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:8b::30)
 by VI1PR0402MB3693.eurprd04.prod.outlook.com (2603:10a6:803:18::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.19; Tue, 7 Apr
 2020 13:53:28 +0000
Received: from VE1EUR01FT034.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:209:8b:cafe::bb) by AM6P191CA0017.outlook.office365.com
 (2603:10a6:209:8b::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Tue, 7 Apr 2020 13:53:28 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=fail (signature
 did not verify) header.d=topicbv.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 VE1EUR01FT034.mail.protection.outlook.com (10.152.2.235) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15 via Frontend Transport; Tue, 7 Apr 2020 13:53:27 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (104.47.17.173) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 07 Apr 2020 13:53:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MPdu/T1I2W5oWBN+O8Q9kmycergHyO4ffCp1jyaYOoA+6FDFUK78kQIPyo6RyUu7dO6Kj/dF5PbRlOCbYMR/X7TrWFWI3vu8njoTbn7gTAzn5rZcDgOcKk2zCbuHralKfZckJ7lD95dwr4r5I6G3lOJoUu6R8ARmVKuoLRYXz1d0dxMV4uVP9QxKCJwx3ek4df3WrZIzhLRzTY512CWakpZEMGSiT39++v9miH5nr9xyCzECPNBpf7wWb0pzcjfnhjG822tCFqbTuM8w7Iw0o7Z5Prm3e3OFbL+8nrBAMBZ5zfd4NIzWavGG6H0MrHnHVH4UMCIIvkoqc32i0dOVfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NsICoI5giDby0CuDwetfsCY9yOShqy7Yw8tKvCccDJM=;
 b=RwCagLNveFZU2Iq8/MxJKzVguNE3uHl2c+m2MbqyjNnP0qec1Vbp/B5Jls6+lL1Uaq1qfc+6hMutTIWTpaGNf300UlcOKjYntT5BjLgWgAYkhHhfbNrbWzBDOXyOUyZ1AUtNEZi0bGNjIbfGJJKMA6Ix5unG/l0GX/smjb/piN8BRiYzZZDKyMLnRbWTipXrX9kd10y6nGubOXtuEYHWhAquBiYA3mj8gOfp7uNI36KYGfUetAy2ZjjKw7ql0KUbyIBAYQTHK3Kkg/GbLcokmVoCy/yGYbPPjtxseLIYooEOmxO4KjGoaHA9KD+foyRApncAYrwo+4Xg3xY7VVC4ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NsICoI5giDby0CuDwetfsCY9yOShqy7Yw8tKvCccDJM=;
 b=EZ66TlVYL8eeo0/0/4623zKHPLopS8EYU+MeK5qQX/HyvLewjuHuUiW6phhMhLO1xwrBx99MqnEW6exnMAppkL/JnRNoTgFLXivcIEjVLUNvn3JNtt+M8TVurpeVHx7/NRVaiCbtsEFN0SsiuVVNZ3VlF6dr941LxTQEeXYrut8=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (2603:10a6:8:7::19)
 by DB3PR0402MB3787.eurprd04.prod.outlook.com (2603:10a6:8:12::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Tue, 7 Apr
 2020 13:53:23 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71%6]) with mapi id 15.20.2878.017; Tue, 7 Apr 2020
 13:53:23 +0000
Subject: Re: [yocto] initramfs with mdev: No match for argument: busybox-mdev
To: yocto@lists.yoctoproject.org
References: <cMI8.1585822130572319291.TJnH@lists.yoctoproject.org>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <5533d254-c2a2-c50e-4896-73a959ab528c@topic.nl>
Date: Tue, 7 Apr 2020 15:53:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <cMI8.1585822130572319291.TJnH@lists.yoctoproject.org>
X-ClientProxiedBy: AM0P190CA0016.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::26) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM0P190CA0016.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend Transport; Tue, 7 Apr 2020 13:53:23 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7c5e16b7-7005-41e5-4d80-08d7dafb0c8b
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3787:|VI1PR0402MB3693:
X-Microsoft-Antispam-PRVS: 
	<VI1PR0402MB3693D77E04DD3B3CE91936DD96C30@VI1PR0402MB3693.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;OLM:3631;
X-Forefront-PRVS: 036614DD9C
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB3PR0402MB3947.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10009020)(366004)(346002)(376002)(39840400004)(396003)(136003)(508600001)(44832011)(966005)(36756003)(2616005)(5660300002)(8676002)(81156014)(2906002)(66476007)(66556008)(186003)(42882007)(16526019)(8936002)(31686004)(66946007)(81166006)(53546011)(316002)(31696002)(956004)(16576012)(26005)(36916002)(6916009)(6486002)(52116002)(473944003)(414714003);DIR:OUT;SFP:1101;
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 xGNbfVBJfd2Lbcq8MVnxzvL56B/kvxKGPEHV2RFJdE40SlWxir79vymc4aeX1Q+npvmWLn7KK6fJeZUprAfvG0FF3j2to2i8eQ/iabTLeadFiYqXi089nzpLdMwxkrkBOb66YJ46veD1RoJ3uJvs40wGmFfR0lCiA/bUouU01V3n1mIIaEEQNQquISicXAeEVgD8U/G+xVo61pgE/qZb8Wm8C9i0xut9MOLLZY0j8PS/Zg4bAXqiehsyo4wTtZ9vJRUmOKxCOEl+JI3xEJmWyKPy/kuBc+FSt6i+emro6Wi7876UEFcfM0dzLeu1Z1daLmw0ajishHsLlomWWYN8/Y0OBu4LMXdSX05inxiJNJpeurhTq/1VTfCWqufvSCUmILbMQyQbPxqKSBOu+3B0rxz3NQLFeHpue06dGcNHE5ALxyV4TdS3sje1UrCvxDUrsP/fSc0Vnia1IQYNkeY094JDFywwBhrgeMrpaCE+ZMZ5RtdrbFO0ljyELipx8OuD8Q5Cq42j5oLaH7NqPU7w0F6oMvUrka+sB3ZPtC0PU8TO4Qyc2ETmADX15QCPG+aIRGKRvuWe/2AUFJ6JQ7QOyA==
X-MS-Exchange-AntiSpam-MessageData: XEO3UWzOTOnNPbSZ7GnpLlQthAsronDAsjnN014SBXQrtN1uw8zBDxTnYuRZlCvldUEM5rTqt4xFK2HAzPkUVSDrJL1Yxr03zgzMBKxAoq9EIT1uvwwSmTLJF5yosKmkyls1U2b+aIiFF2X6kjAfBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3787
X-CodeTwo-MessageID: 79d80f1a-f479-47d1-88ee-a22dc51e40cf.20200407135325@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT034.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFTY:;SFS:(10009020)(376002)(39840400004)(136003)(346002)(396003)(46966005)(5660300002)(7636002)(8936002)(16526019)(966005)(356004)(508600001)(44832011)(186003)(336012)(53546011)(31696002)(956004)(26005)(2616005)(42882007)(6486002)(36916002)(246002)(7596002)(316002)(36756003)(6916009)(82310400001)(70586007)(16576012)(8676002)(70206006)(47076004)(2906002)(31686004)(414714003)(473944003);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	231da862-8751-48de-6127-08d7dafb09b6
X-Forefront-PRVS: 036614DD9C
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sknWZLvt1SY5MbQG3UqavYcQclAiBPPYuaKjtR2J5fDuNeHjYO3uoemIh519Ljrdw7kSDuxglCqXJOE6hUYzWmmdtx1zRjZ5QZU5jJIHyKMehd4UQ72w17UazrdwLHBt9vTsHtvphGuaqFg7dyOKUih4RYL+l78UY0Rz5Nlg99VWZ9Mu70BJJ5OrhIrNSY0bWv1XpRP3AtyjUVRwwWNE6BsZhEzReXCnGZ7D69KsKkgwHsBICYyhAzLpkb3okPj0UStALMoAEeJhQDN27Vysu6u7HhLs2GbYmmbMOa4UssZ2kiO8SEULxMTEkAt+RoecdHTvTZSMmOKfwbKS5DVCsEDivt+zdsDX2w9HfeZOyw3SdipLFX3RHHlnsNppMGaYkQ9H5+fImeVqCfDONNs52ehqf88UT6+NepINAVtHBjOVMb0C59eYy+VqTQMTO4Pi6zrnbRaWs24/rWxGNrMmzWXuG/uIItXhcen6h8vSiqs+ieLOcbaP7i5ewHA4gAwjDcaN2NIDuxDhTL1MB+I6WAFMyq7E+gjZF2G9wTuZ5XmN5C68QiGglCfaOJZaDyGfSOeslzZd5NK+KLfytsMvaMz8R3DwkwKT408zwZT9lf7KrbZwrIJEeV1uhQluVLmZeoju8x3HdnaYcrc9hm8jwQ==
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2020 13:53:27.7707
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c5e16b7-7005-41e5-4d80-08d7dafb0c8b
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3693
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

My guess is that your busybox isn't configured to produce mdev. Run 
"bitbake -c menuconfig busybox" and enable it (and save the config 
fragment for later)


On 02-04-2020 12:08, y1dekel via lists.yoctoproject.org wrote:
> I am new to yocto. I have read some messages on this forum which suggest 
> ways to build an image with initramfs and mdev.
> So far I have implemented all advises but I am getting this message:
> 
> 
>     ERROR: image-argus-tiny-initramfs-1.0-r0 do_rootfs: Could not invoke
>     dnf. Command
>     '/home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/recipe-sysroot-native/usr/bin/dnf
>     -v --rpmverbosity=info -y -c
>     /home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/rootfs/etc/dnf/dnf.conf
>     --setopt=reposdir=/home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/rootfs/etc/yum.repos.d
>     --installroot=/home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/rootfs
>     --setopt=logdir=/home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/temp
>     --repofrompath=oe-repo,/home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/oe-rootfs-repo
>     --nogpgcheck install base-passwd busybox busybox-mdev dropbear
>     initramfs-live-boot-tiny packagegroup-core-boot run-postinsts'
>     returned 1:
> 
>     DNF version: 4.1.0
> 
>     cachedir:
>     /home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/rootfs/var/cache/dnf
> 
>     Added oe-repo repo from
>     /home/ubuntu/yocto_warrior/argus-build/tmp/work/raspberrypi3-poky-linux-gnueabi/image-argus-tiny-initramfs/1.0-r0/oe-rootfs-repo
> 
>     repo: using cache for: oe-repo
> 
>     not found other for:
> 
>     not found modules for:
> 
>     not found deltainfo for:
> 
>     not found updateinfo for:
> 
>     oe-repo: using metadata from Thu 02 Apr 2020 09:20:31 AM UTC.
> 
>     Last metadata expiration check: 0:00:01 ago on Thu 02 Apr 2020
>     09:20:36 AM UTC.
> 
>     No module defaults found
> 
>     No match for argument: busybox-mdev
> 
> 
> I have added an mdev include fragment as follows:
> 
> 
>     CONFIG_MDEV=y
>     CONFIG_FEATURE_MDEV_LOAD_FIRMWARE=y
>     PACKAGES =+ "${PN}-mdev"
>     INITSCRIPT_PACKAGES = "${PN}-httpd ${PN}-syslog ${PN}-udhcpd
>     ${PN}-mdev ${PN}-hwclock"
>     INITSCRIPT_NAME_${PN}-mdev = "mdev"
>     INITSCRIPT_PARAMS_${PN}-mdev = "start 04 S ."
>     CONFFILES_${PN}-mdev = "${sysconfdir}/mdev.conf"
> 
> I also implemented a receipt for our image as follows:
> 
>     VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
>     PACKAGE_INSTALL = "initramfs-live-boot-tiny packagegroup-core-boot
>     dropbear ${VIRTUAL-RUNTIME_base-utils}
>     ${VIRTUAL-RUNTIME_dev_manager} base-passwd ${ROOTFS_BOOTSTRAP_INSTALL}"
>     ...
> 
> Any idea what I might be missing here?
> 
> 
> 
> 


-- 
Mike Looijmans
