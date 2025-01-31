Return-Path: <kumar.manu@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A08C0218A
	for <webhook@archiver.kernel.org>; Fri, 31 Jan 2025 03:05:18 +0000 (UTC)
Received: from HK3PR03CU002.outbound.protection.outlook.com (HK3PR03CU002.outbound.protection.outlook.com [52.101.129.53])
 by mx.groups.io with SMTP id smtpd.web10.11747.1738292708246981813
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 19:05:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=qQ8USL9v;
 spf=pass (domain: siemens.com, ip: 52.101.129.53, mailfrom: kumar.manu@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m99LBZrzNUU07PZnGY/R8QXlaGQ+GeEwRXY299YrRGaw5Zc1+MPfcdjP4UvROKARlxOAfxOHQcl6hOKwoSnQTTWICNkitdw38AnMAIultFoXiWkDBQajHJoL2DkkAj2hXMcSjiCoKFoVJJBPG50EY+GaQDFAjidASUq9dSfjM9HECztrCtncy9hK6VBx4grPbO5oGYjfcZZsY1BPrY7Idf/IJ8fSLhV68ojlfGw2O1fddNgVpSwd84Ui/+d/v5FeMddYqc0MZwkKnRwxr/PZHaTZxIXt6sLDriBvAMCnAJp6SptBh7q89R2rDu63tIB5oW0QV8QtxKVHMCadiQ+u0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=InNyi8PCQ3ERqqgeBcneUtTG+vOLNF0eTxQJdK8zB4w=;
 b=CzcDH4T3esBKT7YILmyvFk5+5TUCtJxV5sBVq7gYt4TAVeCpqhbIeaoI3lwClhbWpgfEoJCAbVQYIhwuSFEnDZhcVra5H+nanx/ushETuMKNvonOCNdPvPjMEl0MfoFFHjVbYHaLMXvB4WSQz3kD9wEcQ5S9M0ClS03hTfmVTVAJh4V0mbD9y1KoLoy7MW4pphSJptsqXBfzZ+h4VndrtB1AX6QA7GMAphrXW8rJdpMFdtitq7ZhJiA+7pACbSR+m0bD7kNkX2OEr4pze1AIdkEkmXBBHlQ1KW2PNBEZqfSjK3UpcmY9H2X21XvQcO2GuhO7KPKGMGmZ2Ia2HmK20g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=InNyi8PCQ3ERqqgeBcneUtTG+vOLNF0eTxQJdK8zB4w=;
 b=qQ8USL9v4HH6y8KkxrM4YaJpZ3sRppEO74ZjwsuRe84KPyREmvBFYhcU+514LDMGeL6CTqWv7734GCo5Dil590KhKEXy/dudg6JdPb7GIS8hcWHf3cN6hisw6vk1WRxHmR2Ga/aZ5gxxK7epihBjdEJ6sJYogH0d2K1BMXTByuFqPNHMeb+FPVIZwlnpOvTymU8TFwRfalIWykuwqtJWjWSGQKiFRmb7jR2vzdqc1ZuPk3+LbMj3i6H8E/oqbl8n/YDG7R6KoMoF5LGuWCsn6mZLgCTb/Qus4H0EOyWI4QDBUcF7pTOf/uG468Z/suVY/B+iZaz54LijAeaHQwyu9w==
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com (2603:1096:400:1f7::12)
 by JH0PR06MB7352.apcprd06.prod.outlook.com (2603:1096:990:a3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.6; Fri, 31 Jan
 2025 03:04:59 +0000
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318]) by TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318%4]) with mapi id 15.20.8398.014; Fri, 31 Jan 2025
 03:04:58 +0000
From: "Kumar, Manu" <kumar.manu@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Need help in resolving dhcp private IP issue
Thread-Topic: Need help in resolving dhcp private IP issue
Thread-Index: Adtzif0d+dYXFsHCQPC5yztmvdE/CQ==
Date: Fri, 31 Jan 2025 03:04:58 +0000
Message-ID: 
 <TYZPR06MB51780E9646E785347BA94BDD86E82@TYZPR06MB5178.apcprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=True;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-01-31T02:43:22.0000000Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR06MB5178:EE_|JH0PR06MB7352:EE_
x-ms-office365-filtering-correlation-id: dda38b29-f9e8-48b9-bb3c-08dd41a40bda
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?RdSxI6V0xM/ocnN70pe85uK40zLeXNyHwv9mJjUoJJkFjbn5/WIpRAWxjjSR?=
 =?us-ascii?Q?MqvIF97+eXFtAnPuh2qdTVRMdBOyiGPVewQpk8uVIDiLZCBpdkvOH4k6HsWU?=
 =?us-ascii?Q?xz8Ce4Xn5QKE6k7nIWH8nWqU1kYYzyAhPFCO+9C8Vh2IrhyHA8xsAlnzkHR5?=
 =?us-ascii?Q?1lpgdJH8l2tH5wX4TzzsujoujsLEEOu/VDdkDdnSrSTGRiNNbM8CrxVfIGNs?=
 =?us-ascii?Q?Keh6Xt28SYiZtn1bxQT4l3c1G9jZ59juc7bQ4ZBVc7ZFLRyIkKaQPfZYR5gA?=
 =?us-ascii?Q?MlnDcT9heP8SKOybfaRyBXIyTjDMqJl7djmfysfjnz4OGCPFlln3e/oG9waN?=
 =?us-ascii?Q?BBoLche4lSrYvyqJ/JJTlMJ+cfmCPF8U1AAqffhPJe8C2n6AX0gekXaxD9iP?=
 =?us-ascii?Q?OtXyQjZINV3AH8xrkZpZiMBPQzVHGf7FoZsKUtmqGAj3vLzEpCTXHi4mZ3xY?=
 =?us-ascii?Q?AV93uFeKxzGeEoEqGTfMGiuuch+/mp8ymbuZ3o3ZmcO9ArvW4Ipo0/QHcLZO?=
 =?us-ascii?Q?fm5tDwwyvIgu3V3Y1MWTanj7hJciJzKQppVyRQenWaafSM5azx2BO77lJZ9g?=
 =?us-ascii?Q?uBlQytX2qIeXdpH+gdYwoMXxV2hTRvii2sMIxpcgPTtZrMHh4WIuDJB7ne4R?=
 =?us-ascii?Q?noMShzKAgjqXKhbL7YDrExW66o3cDsOzU1SYcEOue315MwWkGO5Qe0oOUe08?=
 =?us-ascii?Q?oGF4tNYEMWCjGUpi8oNdiPm5kcr0/kSfXxI+UR7eRhRSM+44tpiVrAsjwBEv?=
 =?us-ascii?Q?QHXE/zqsujiKgGIRhXtxQkS9P2NyjG9c7g2jJA11q3j1EES0SnFCul6eyqiW?=
 =?us-ascii?Q?WxO3dmR1U3l+49FuVknzoy4x9LfWHY7dOBcBGMr/0WshPSmKWqOraKPnQ/TN?=
 =?us-ascii?Q?268LrAzBlrZt0KnNxHgfVW31frwtG+3keTosWb0tSP0BhONWH6hZJNo4iyHP?=
 =?us-ascii?Q?LMPaWcDEjW3nqNltZUaQDtiia91PBqPpDbo0azTZqJQ5XQ/6BTVvTSIfBdSZ?=
 =?us-ascii?Q?X1y3Z8FNvH0SUmwy9//HiGpQNYWyQzmM5p50MEIGTodmOXn+Z2GkyihPZrCS?=
 =?us-ascii?Q?BoJFuq+fzUs5gRIY4UKQ2XWnpiBoVN7wnW13MHluftBZjVGTVZBtarF18WOD?=
 =?us-ascii?Q?I755p0dA4QOn5O0Di3scgPb7TYGwD1gZ6TjAC66AJ5XSMlPpmBKljpabGoX/?=
 =?us-ascii?Q?ayUhnbSasEjhqHNZk3o4QXsfK0Al5GasV8J8DcysG52C4m64vsjDPb6Jmv6b?=
 =?us-ascii?Q?voavHsZ9cTWK93MtFYBKsMBXebpyxPVrtZhnwE4f2j8f4TeTv5MpaW5h5zR4?=
 =?us-ascii?Q?RM5QmGoF7iP5PU6zQ4+G1A4s/ihybKZZLE0n9vBe0avS/rTRiTwZObzzKCgQ?=
 =?us-ascii?Q?eEqKnxeeMAWbWNJEUqIKB9dCRy9yVL3POXTko3IkAOmED/2QXn1Cq+P2bGs6?=
 =?us-ascii?Q?OmlRAUb4kl4ckMZHtlsz/jzlVvLNPfvk?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB5178.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?GhZzyKncO0baN4KKn3WYBsG03RYgvQYWqEAMh8HZScCFnivl5Lbsrjw9V1u8?=
 =?us-ascii?Q?p6RuaQgZiQhQJAmuVQG9P0/aYxy6YIQXK7jBoK4S1O6FZO+/PAyVgMi7tx0I?=
 =?us-ascii?Q?4mT8wRZNWEtZp4v95inQATSHFGf1yhb6mB9FczlIjA6FS9mMC8s1YSlC76TA?=
 =?us-ascii?Q?y0lUwI0pyGSEahlRWvCI0bprGT1gnDUhus7X2sdbq2oBQAeEMNhw9lMA4+t0?=
 =?us-ascii?Q?tuD3XVF1GoCQvTS4gj6C28+YMChK6J418hd/QSBkxk3MX5KnibDPIZ2dPUQU?=
 =?us-ascii?Q?PToMIM4vDRdKWN2bJ/WmFk4oUdb+knpAgF0n85v8aySOL/faQjoO0cIp8Yqf?=
 =?us-ascii?Q?db2N2Zs5QVaFu6g+aM2RArm6QuoFuS4qUs0rCgXKGcNtn6SLB3+vzPD9wWOX?=
 =?us-ascii?Q?Wa3TOg2aytconjCeEeSEP8FMgDVvHGqb5aZujCarmYWqKIyaL+i1ODObKSUU?=
 =?us-ascii?Q?LpFMiQnsUdFQACZTpMKzt61qD0SjnkVpaexBgbU17tGIeQP5XUKd2ZL255O1?=
 =?us-ascii?Q?XT0UjnJ3TymKSpjl+MLNIPHts9pkaETBVa8P9LF7lztxdlEG1OKkv4hfDerC?=
 =?us-ascii?Q?xplBfTCMaOrw6bDwO/meDSxzF5norYvOVnro6E05hSJW1ycWfwRbIGec+nxx?=
 =?us-ascii?Q?E4kZY6XdcN52nKmkdoe4x0CFTSgTldY1A8r7KTOyzYKI8Jy2IwM9bfdaBwZs?=
 =?us-ascii?Q?UnfbMvtkETVIPnPIVKwxUnFGejj4zbV/F6IYweWNbPUjHr9foi0yX07VBcVF?=
 =?us-ascii?Q?AB/xGll5ZfkBZTtIeTA7RahuBC6ZsGMKSb3kbux7UFKcQv77CU5TcbJE7cjq?=
 =?us-ascii?Q?klPsPMHkrlcNIdptzDVIiiipMNA0IL8lYZZI2hAWyBUR8aDZdbXRL2TH/l8C?=
 =?us-ascii?Q?CKr2SV/wY0vlIXhtMfKOXn/Bb0dtwPT6u9ujyChiPzP1fvxQmw9qTq5TPaBH?=
 =?us-ascii?Q?5ajAfzgC9LvB4ecbGMW5aoFDXE4iNOu58XzRExoXBeeDWUrircdEHwOBAI+2?=
 =?us-ascii?Q?cLkjgJ4F11DJEddS2bejq6MGrVy3Xzo1SIZaml8L+C29ieIsmL3n6hesxfpt?=
 =?us-ascii?Q?zpDP4dYc9VOk5wPXCbWDd02vZNGb4aufhgsGmu01U3cLvkV6gW0aEULnyQ6T?=
 =?us-ascii?Q?+EEItKQf9yZgJsIWd7YWn3zIKFslO5j0oPLQrMPpfuL3A26FAzFYucFjh/lR?=
 =?us-ascii?Q?OYpelsQKXbULef2gJbLSqouhHODMEg6MjgnQpAqZ1K1HdApr01In7W34G4gz?=
 =?us-ascii?Q?kuIq/ziCBg/PcE12u6p/TjHOBt+/Do0SFI8Lcsn2FcpB32DK4ui2dYROj0Rr?=
 =?us-ascii?Q?qbPKtZPI2btbKx2d0IM3TZ8QWLDCogZ2I3zYQjOq1ClHGJSk1ynG68ZyIBAI?=
 =?us-ascii?Q?cU5cV+62kPULBMDtbdZl9PqBaRefbpsBsYkSNaAzmON2BbYgYgBLW3egoCZm?=
 =?us-ascii?Q?4sN6DLDL1vwcZb0O9z4GRRzg6lC7ZZ/r/T2lHs0qX7XqtIfFufT7r9x8wa9e?=
 =?us-ascii?Q?bXih5+h7ssrWiAegu/vvCDS1fkq2ZL4LWRsc9UFM3lNAqLAT3fUnJjyUbbo9?=
 =?us-ascii?Q?uERVpEi4WX1d5+2014x0Kxw+mHzOarUmOicz+F1JF+lmjHb0et7zwwBr7/co?=
 =?us-ascii?Q?Gg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_TYZPR06MB51780E9646E785347BA94BDD86E82TYZPR06MB5178apcp_"
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB5178.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dda38b29-f9e8-48b9-bb3c-08dd41a40bda
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2025 03:04:58.5595
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8L8tryAWczncPsKDKQiXwPQ9aFCYMoTI/nxBk+Z8rZ8Ku5jlIdO4//xNgz1YqOZoeuZhgPQHMWWETAxE/EPkkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB7352
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Jan 2025 03:05:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64688

--_000_TYZPR06MB51780E9646E785347BA94BDD86E82TYZPR06MB5178apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am using tisdk9.1 from Texas instrument. Here what I am facing is the
I have configured the ip address statically but when we do reboot/power cyc=
le we are losing ip address configured.
I have found internally that dhcpcd is overwriting existing static ip assig=
ned to controller.
When I further debug sysctl status this is what I found root@SIEMENS-SEM3T:=
~# systemctl status sem3startup.service is the propritery service which we =
have run using our custom application

* hostname
    State: running
     Jobs: 0 queued
   Failed: 0 units
    Since: Sun 2025-01-26 04:00:38 EST; 6min ago
   CGroup: /
           |-init.scope
           | `- 1 /sbin/init
           |-system.slice
           | |-avahi-daemon.service
           | | |- 231 "avahi-daemon: running [SIEMENS-SEM3T-3.local]"
           | | `- 235 "avahi-daemon: chroot helper"
           | |-busybox-klogd.service
           | | `- 178 /sbin/klogd -n
           | |-busybox-syslog.service
           | | `- 179 /sbin/syslogd -n
           | |-dbus.service
           | | `- 180 /usr/bin/dbus-daemon --system --address=3Dsystemd: --=
nofork --nopidfile --systemd-activation --syslog-only
           | |-dhcpcd.service
           | | |- 181 "dhcpcd: [manager] [ip4] [ip6]"
           | | |- 184 "dhcpcd: [privileged proxy]"
           | | |- 185 "dhcpcd: [network proxy]"
           | | |- 186 "dhcpcd: [control proxy]"
           | | |- 532 "dhcpcd: [BPF BOOTP] eth0"
           | | `- 598 "dhcpcd: [BPF ARP] eth0 169.254.251.26"
           | |-lighttpd.service
           | | `- 410 /usr/sbin/lighttpd -D -f /etc/lighttpd/lighttpd.conf
           | |-lldpd.service
           | | |- 234 "lldpd: monitor. "
           | | `- 279 "lldpd: no neighbor."
           | |-ofono.service
           | | `- 189 /usr/sbin/ofonod -n
           | |-rpcbind.service
           | | `- 109 /usr/sbin/rpcbind -w -f
           | |-sem3startup.service
           | | `- 550 ./core-app
           | |-system-getty.slice
           | | `-getty@tty1.service
           | |   `- 255 /sbin/agetty -o "-p -- \\u<file://u>" --noclear - l=
inux
           | |-systemd-journald.service
           | | `- 110 /lib/systemd/systemd-journald
           | |-systemd-logind.service
           | | `- 193 /lib/systemd/systemd-logind
           | |-systemd-networkd.service
           | | `- 205 /lib/systemd/systemd-networkd
           | |-systemd-resolved.service
           | | `- 221 /lib/systemd/systemd-resolved
           | |-systemd-udevd.service
           | | `- 130 /lib/systemd/systemd-udevd
           | `-systemd-userdbd.service
           |   |- 302 /lib/systemd/systemd-userdbd
           |   |- 309 systemd-userwork
           |   |- 310 systemd-userwork
           |   `- 311 systemd-userwork
           `-user.slice
             `-user-0.slice
               |-session-c1.scope
               | |- 260 /bin/login -p --
               | |- 379 -sh
               | `- 740 systemctl status
               `-user@0.service
                 `-init.scope
                   |- 317 /lib/systemd/systemd --user
                   `- 319 "(sd-pam)"
root@hostnmae:~#

what we have observed is if we run same application (i.e, when we configure=
d ip statically) in tisdk8.2 even after multiple reboot/power cycle static =
ip is persistent.

root@hostname:~# vi 1.txt
    State: degraded
     Jobs: 0 queued
   Failed: 1 units
    Since: Sun 2025-01-26 03:30:42 EST; 13min ago
   CGroup: /
           |-user.slice
           | `-user-0.slice
           |   |-session-c1.scope
           |   | |- 479 /bin/login --
           |   | |-1066 -sh
           |   | `-1765 systemctl status
           |   `-user@0.service ...
           |     `-init.scope
           |       |-1058 /lib/systemd/systemd --user
           |       `-1059 (sd-pam)
           |-init.scope
           | `-1 /sbin/init
           `-system.slice
             |-dbus.service
             | `-200 /usr/bin/dbus-daemon --system --address=3Dsystemd: --n=
ofork --nopidfile --systemd-activation --syslog-only
             |-lldpd.service
             | |-454 lldpd: monitor.
             | `-537 lldpd: 1 neighbor.
             |-avahi-daemon.service
             | |-449 avahi-daemon: running [SIEMENS-SEM3T.local]
             | `-458 avahi-daemon: chroot helper
             |-system-serial\x2dgetty.slice
             | |-serial-getty@ttyS3.service<mailto:|-serial-getty@ttyS3.ser=
vice>
             | | `-1764 /sbin/agetty -8 -L ttyS3 115200 xterm
             | `-serial-getty@ttyS0.service
             |   `-1763 /sbin/agetty -8 -L ttyS0 115200 xterm
             |-system-getty.slice
             | `-getty@tty1.service
             |   `-474 /sbin/agetty -o -p -- \x5cu --noclear tty1 linux
             |-rpcbind.service
             | `-113 /usr/sbin/rpcbind -w -f
             |-systemd-logind.service
             | `-345 /lib/systemd/systemd-logind
             |-systemd-resolved.service
             | `-412 /lib/systemd/systemd-resolved
             |-systemd-udevd.service
             | `-129 /lib/systemd/systemd-udevd
             |-sem3startup.service
             | |-882 /usr/sbin/lighttpd -f /etc/lighttpd/lighttpd.conf
             | `-935 ./core-app
             |-ofono.service
             | `-219 /usr/sbin/ofonod -n
             |-busybox-syslog.service
             | `-199 /sbin/syslogd -n
             |-systemd-journald.service
             | `-114 /lib/systemd/systemd-journald
             |-busybox-klogd.service
             | `-197 /sbin/klogd -n
             `-systemd-networkd.service
               `-278 /lib/systemd/systemd-networkd

I found that in latest tisdk9.1 version there is no support for SysV init s=
cripts only supporting systemd..

Also I am not seeing any init.d scripts/directory



--_000_TYZPR06MB51780E9646E785347BA94BDD86E82TYZPR06MB5178apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div class=3D"WordSection1" dir=3D"ltr">
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">Hi All,</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">I am using tisdk9.1 from Texas instrument. Here what I am fa=
cing is the
</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">I have configured the
<span class=3D"SpellE">ip</span> address statically but when we do reboot/p=
ower cycle we are losing
<span class=3D"SpellE">ip</span> address configured.</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">I have found internally that
<span class=3D"SpellE">dhcpcd</span> is overwriting existing static <span c=
lass=3D"SpellE">
ip</span> assigned to controller.</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">When I further debug
<span class=3D"SpellE">sysctl</span> status this is what I found root@SIEME=
NS-SEM3T:~#
<span class=3D"SpellE">systemctl</span> status <b>sem3startup.</b>service i=
s the <span class=3D"SpellE">
propritery</span> service which we have run using our custom application</s=
pan></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<b><span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&=
quot;,sans-serif">&nbsp;</span></b></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">* <span class=3D"GramE">
hostname</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;
</span>State: running</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;
</span>Jobs: 0 queued</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;
</span>Failed: 0 units</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;
</span>Since: Sun 2025-01-26 04:00:38 EST; 6min ago</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;
</span><span class=3D"SpellE">CGroup</span>: /</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">init.scope</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| `- 1 /<span class=3D"SpellE">sbin</span>/<span class=3D"SpellE">in=
it</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">system.slice</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-avahi-<span class=3D"SpellE">daemon.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | |- 231 &quot;avahi-daemon: running [SIEMENS-SEM3T-3.local]&quot;=
</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 235 &quot;avahi-daemon: chroot helper&quot;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">busybox-klogd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 178 /<span class=3D"SpellE">sbin</span>/<span class=3D"SpellE=
">klogd</span> -n</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">busybox-syslog.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 179 /<span class=3D"SpellE">sbin</span>/<span class=3D"SpellE=
">syslogd</span> -n</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">dbus.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 180 /<span class=3D"SpellE">usr</span>/bin/<span class=3D"Spe=
llE">dbus</span>-daemon --system --address=3D<span class=3D"SpellE">systemd=
</span>: --<span class=3D"SpellE">nofork</span> --<span class=3D"SpellE">no=
pidfile</span> --<span class=3D"SpellE">systemd</span>-activation
 --syslog-only</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">dhcpcd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | |- 181 &quot;<span class=3D"SpellE">dhcpcd</span>: [manager] [ip=
4] [ip6]&quot;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | |- 184 &quot;<span class=3D"SpellE">dhcpcd</span>: [privileged p=
roxy]&quot;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | |- 185 &quot;<span class=3D"SpellE">dhcpcd</span>: [network prox=
y]&quot;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | |- 186 &quot;<span class=3D"SpellE">dhcpcd</span>: [control prox=
y]&quot;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | |- 532 &quot;<span class=3D"SpellE">dhcpcd</span>: [BPF BOOTP] e=
th0&quot;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 598 &quot;<span class=3D"SpellE">dhcpcd</span>: [BPF ARP] eth=
0 169.254.251.26&quot;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">lighttpd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 410 /<span class=3D"SpellE">usr</span>/<span class=3D"SpellE"=
>sbin</span>/<span class=3D"SpellE">lighttpd</span> -D -f /<span class=3D"S=
pellE">etc</span>/<span class=3D"SpellE">lighttpd</span>/<span class=3D"Spe=
llE">lighttpd.conf</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">lldpd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | |- 234 &quot;<span class=3D"SpellE">lldpd</span>: monitor. &quot=
;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 279 &quot;<span class=3D"SpellE">lldpd</span>: no neighbor.&q=
uot;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">ofono.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 189 /<span class=3D"SpellE">usr</span>/<span class=3D"SpellE"=
>sbin</span>/<span class=3D"SpellE">ofonod</span> -n</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">rpcbind.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 109 /<span class=3D"SpellE">usr</span>/<span class=3D"SpellE"=
>sbin</span>/<span class=3D"SpellE">rpcbind</span> -w -f</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-sem3startup.service</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 550 ./core-app</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-system-<span class=3D"SpellE">getty.slice</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span></span><span lang=3D"ES" style=3D"font-size:10.0pt; font-family:&quo=
t;Arial&quot;,sans-serif">| | `-getty@tty1.service</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"ES" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,=
sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;
</span>| |<span style=3D"">&nbsp;&nbsp; </span>`- 255 /<span class=3D"Spell=
E">sbin</span>/<span class=3D"SpellE">agetty</span> -o &quot;-p --
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Ar=
ial&quot;,sans-serif"><a href=3D"file://u" style=3D"text-decoration: underl=
ine; color: rgb(70, 120, 134);"><span lang=3D"ES" style=3D"">\\u</span></a>=
</span><span lang=3D"ES" style=3D"font-size:10.0pt; font-family:&quot;Arial=
&quot;,sans-serif">&quot;
 --<span class=3D"SpellE">noclear</span> - <span class=3D"SpellE">linux</sp=
an></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"ES" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,=
sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">systemd-<span class=3D"GramE">journald.se=
rvice</span></span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"ES" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,=
sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;
</span>| | `- 110 /<span class=3D"SpellE">lib</span>/<span class=3D"SpellE"=
>systemd</span>/<span class=3D"SpellE">systemd-journald</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"ES" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,=
sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">systemd-<span class=3D"GramE">logind.serv=
ice</span></span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"ES" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,=
sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;
</span>| | `- 193 /<span class=3D"SpellE">lib</span>/<span class=3D"SpellE"=
>systemd</span>/<span class=3D"SpellE">systemd-logind</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"ES" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,=
sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">systemd-<span class=3D"GramE">networkd.se=
rvice</span></span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"ES" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,=
sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;
</span></span><span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&=
quot;Arial&quot;,sans-serif">| | `- 205 /lib/<span class=3D"SpellE">systemd=
</span>/<span class=3D"SpellE">systemd-networkd</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">systemd-resolved.service</span></span></p=
>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 221 /lib/<span class=3D"SpellE">systemd</span>/<span class=3D=
"SpellE">systemd</span>-resolved</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| |-<span class=3D"SpellE">systemd-udevd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| | `- 130 /lib/<span class=3D"SpellE">systemd</span>/<span class=3D=
"SpellE">systemd-udevd</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| `-<span class=3D"SpellE">systemd-userdbd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>|- 302 /lib/<span class=3D"Spe=
llE">systemd</span>/<span class=3D"SpellE">systemd-userdbd</span></span></p=
>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>|- 309 <span class=3D"SpellE">=
systemd-userwork</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>|- 310 <span class=3D"SpellE">=
systemd-userwork</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>`- 311 <span class=3D"SpellE">=
systemd-userwork</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>`-<span class=3D"SpellE">user.slice</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>`-user-0.slice</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-session-c1.scope</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| |- 260 /bin/login -p --</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| |- 379 -<span class=3D"SpellE">sh</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `- 740 <span class=3D"SpellE">systemctl</span> status</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>`-user@0.service</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>`-<span class=3D"SpellE">init.scope</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span lang=3D"DE" style=3D"font-size:10.0pt; font-family:&quo=
t;Arial&quot;,sans-serif">|- 317 /<span class=3D"SpellE">lib</span>/<span c=
lass=3D"SpellE">systemd</span>/<span class=3D"SpellE">systemd</span> --<spa=
n class=3D"SpellE">user</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"DE" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,=
sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>`- 319 &quot;(<span class=3D"SpellE">sd-pam</span>)&quot;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span class=3D"SpellE"><span lang=3D"EN-US" style=3D"font-size:10.0pt; font=
-family:&quot;Arial&quot;,sans-serif">root@hostnmae</span></span><span lang=
=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,sans-se=
rif">:~#</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">what we have observed is if we run same application (<span c=
lass=3D"SpellE">i.e</span>, when we configured
<span class=3D"SpellE">ip</span> statically) in tisdk8.2 even after multipl=
e reboot/power cycle static
<span class=3D"SpellE">ip</span> is persistent.</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span class=3D"SpellE"><span lang=3D"EN-US" style=3D"font-size:10.0pt; font=
-family:&quot;Arial&quot;,sans-serif">root@hostname</span></span><span lang=
=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,sans-se=
rif">:~# vi 1.txt</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;
</span>State: degraded</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;
</span>Jobs: 0 queued</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;
</span>Failed: 1 <span class=3D"GramE">units</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;
</span>Since: Sun 2025-01-26 03:30:42 EST; 13min ago</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;
</span><span class=3D"SpellE">CGroup</span>: /</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">user.slice</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| `-user-0.slice</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>|-session-c1.scope</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>| |- 479 /bin/login --</span><=
/p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>| |-1066 -<span class=3D"Spell=
E">sh</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>| `-1765 <span class=3D"SpellE=
">systemctl</span> status</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>`-user@0.service ...</span></p=
>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp; </span>`-<span class=3D"S=
pellE">init.scope</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>|-1058=
 /lib/<span class=3D"SpellE">systemd</span>/<span class=3D"SpellE">systemd<=
/span> --user</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>`-1059=
 (<span class=3D"SpellE">sd</span>-pam)</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">init.scope</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>| `-1 /<span class=3D"SpellE">sbin</span>/<span class=3D"SpellE">ini=
t</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span>`-<span class=3D"SpellE">system.slice</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">dbus.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-200 /<span class=3D"SpellE">usr</span>/bin/<span class=3D"SpellE=
">dbus</span>-daemon --system --address=3D<span class=3D"SpellE">systemd</s=
pan>: --<span class=3D"SpellE">nofork</span> --<span class=3D"SpellE">nopid=
file</span> --<span class=3D"SpellE">systemd</span>-activation
 --syslog-only</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">lldpd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| |-454 <span class=3D"SpellE">lldpd</span>: monitor.</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-537 <span class=3D"SpellE">lldpd</span>: 1 neighbor.</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-avahi-<span class=3D"SpellE">daemon.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| |-449 avahi-daemon: running [SIEMENS-SEM3T.local]</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-458 avahi-daemon: chroot helper</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-system-serial\x2dgetty.slice</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| <a href=3D"mailto:|-serial-getty@ttyS3.service" style=3D"text-deco=
ration: underline; color: rgb(70, 120, 134);">
|-serial-getty@ttyS3.service</a></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| | `-1764 /<span class=3D"SpellE">sbin</span>/<span class=3D"SpellE=
">agetty</span> -8 -L ttyS3 115200
<span class=3D"SpellE">xterm</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-serial-getty@ttyS0.service</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>`-1763 /<span class=3D"SpellE"=
>sbin</span>/<span class=3D"SpellE">agetty</span> -8 -L ttyS0 115200
<span class=3D"SpellE">xterm</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-system-<span class=3D"SpellE">getty.slice</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-getty@tty1.service</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|<span style=3D"">&nbsp;&nbsp; </span>`-474 /<span class=3D"SpellE">=
sbin</span>/<span class=3D"SpellE">agetty</span> -o -p -- \x5cu --<span cla=
ss=3D"SpellE">noclear</span> tty1
<span class=3D"SpellE">linux</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">rpcbind.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-113 /<span class=3D"SpellE">usr</span>/<span class=3D"SpellE">sb=
in</span>/<span class=3D"SpellE">rpcbind</span> -w -f</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">systemd-logind.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-345 /lib/<span class=3D"SpellE">systemd</span>/<span class=3D"Sp=
ellE">systemd-logind</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">systemd-resolved.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-412 /lib/<span class=3D"SpellE">systemd</span>/<span class=3D"Sp=
ellE">systemd</span>-resolved</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">systemd-udevd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-129 /lib/<span class=3D"SpellE">systemd</span>/<span class=3D"Sp=
ellE">systemd-udevd</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-sem3startup.service</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| |-882 /<span class=3D"SpellE">usr</span>/<span class=3D"SpellE">sb=
in</span>/<span class=3D"SpellE">lighttpd</span> -f /<span class=3D"SpellE"=
>etc</span>/<span class=3D"SpellE">lighttpd</span>/<span class=3D"SpellE">l=
ighttpd.conf</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-935 ./core-app</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">ofono.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-219 /<span class=3D"SpellE">usr</span>/<span class=3D"SpellE">sb=
in</span>/<span class=3D"SpellE">ofonod</span> -n</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">busybox-syslog.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-199 /<span class=3D"SpellE">sbin</span>/<span class=3D"SpellE">s=
yslogd</span> -n</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">systemd-journald.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-114 /lib/<span class=3D"SpellE">systemd</span>/<span class=3D"Sp=
ellE">systemd-journald</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>|-<span class=3D"SpellE">busybox-klogd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>| `-197 /<span class=3D"SpellE">sbin</span>/<span class=3D"SpellE">k=
logd</span> -n</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>`-<span class=3D"SpellE">systemd-networkd.service</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif"><span style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>`-278 /lib/<span class=3D"SpellE">systemd</span>/<span class=3D"Spel=
lE">systemd-networkd</span></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">I found that in latest tisdk9.1 version there is no support =
for
<span class=3D"SpellE"><b>SysV</b></span> <span class=3D"SpellE">init</span=
> scripts only supporting
<span class=3D"SpellE"><b>systemd</b></span><b>.. </b></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<b><span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&=
quot;,sans-serif">&nbsp;</span></b></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<b><span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&=
quot;,sans-serif">Also I am not seeing any
<span class=3D"SpellE">init.d</span> scripts/directory </span></b></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 12pt; font-family: =
Aptos, sans-serif;">
<span lang=3D"EN-US" style=3D"font-size:10.0pt; font-family:&quot;Arial&quo=
t;,sans-serif">&nbsp;</span></p>
</div>
</body>
</html>

--_000_TYZPR06MB51780E9646E785347BA94BDD86E82TYZPR06MB5178apcp_--

