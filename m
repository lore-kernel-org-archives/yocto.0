Return-Path: <kamal.kishor@vestel.com.hk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B5DC54EBE
	for <webhook@archiver.kernel.org>; Mon, 16 Jan 2023 06:03:15 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [104.47.11.42])
 by mx.groups.io with SMTP id smtpd.web11.160329.1673848992649422542
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Jan 2023 22:03:13 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: vestel.com.hk, ip: 104.47.11.42, mailfrom: kamal.kishor@vestel.com.hk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CatxshYZ42cIxTawTFT2Y387vrR8WE6+WgN1ezIY3H3d0wP470RtNLcQE30atg4xd4o3QuGvlIKXnOfbkw0G3qdePUjo8zvngyInd9N2SeoniGtGTYQGAERfMalyue1tZAXnsSN/W3mHrdmXkYbfL1TLGT7QdJEV/r0HJf1rQE1GgtwMQYH3cIULH9D8ne3ZL4pnI2D+3LCQwmtquWjO3L78AptFo2kWTDBs5rRt3KCPoJiTN0Cl3fjoM5h9yEbg5U5BL+yqOqGRcp/eEy5vcbKQszLWaKc5f/Mp775ksdBvKm0G17aidnjDuFx1tYREb2+z1nAZFga3yySIO10q7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+VIsx297bCFikHbMEi/986ZhyX3UmbiJd7inWA8Ao74=;
 b=Osc2MF45yjA9gs8TYkwYRTN6hO0YXEd8b/xTTlbSsswdJ7WjO/uPKLmuMq0z/TmfWsCRHr1Ge1gisbMyTa713NAO58cWe4u08cRushYufEetvTW3TdUEQFllXutRcpVu5QXwsylDsbRvxArPjII4T+Og0Kjtgu2GBcbMIRX79aanj6C7yVLcB0wg1JzmbtOiWjD8IEKYyL4V/D5uDNGKx2ba9n1njaYsyX8sk9AeEDNzwR0QaQQtGkGDp1/FDZhrfSm6YyWAv7OD356iwkFomqZTwTod9Bs9+dg3RTvVC3NTM9g7EQ4Y37oJzrC+sjY4/zpoD/2P3PbWI3dSRnQsKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vestel.com.hk; dmarc=pass action=none
 header.from=vestel.com.hk; dkim=pass header.d=vestel.com.hk; arc=none
Received: from AM0P195MB0754.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:16a::14)
 by PAVP195MB2237.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:309::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Mon, 16 Jan
 2023 06:03:08 +0000
Received: from AM0P195MB0754.EURP195.PROD.OUTLOOK.COM
 ([fe80::c244:1829:4ed9:6636]) by AM0P195MB0754.EURP195.PROD.OUTLOOK.COM
 ([fe80::c244:1829:4ed9:6636%9]) with mapi id 15.20.6002.012; Mon, 16 Jan 2023
 06:03:08 +0000
From: Kamal Kishor <kamal.kishor@vestel.com.hk>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-selinux: ERROR: nothing provides coreutils needed by
 packagegroup-core-selinux
Thread-Topic: [yocto] meta-selinux: ERROR: nothing provides coreutils needed
 by packagegroup-core-selinux
Thread-Index: AQHZJ1hX5y1PNcD3b0WcrMfYnKN44K6clJwAgAPnMig=
Date: Mon, 16 Jan 2023 06:03:08 +0000
Message-ID: 
 <AM0P195MB0754803F4C841D407A9A4B7FC5C19@AM0P195MB0754.EURP195.PROD.OUTLOOK.COM>
References: 
 <AM0P195MB07545A4FB9E737CA1BC980CBC5C29@AM0P195MB0754.EURP195.PROD.OUTLOOK.COM>
 <CAMKF1src+p3JmFbsjjZiMt-_B=3vL1S1_E2fMgrnageYmrt-EQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1src+p3JmFbsjjZiMt-_B=3vL1S1_E2fMgrnageYmrt-EQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vestel.com.hk;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0P195MB0754:EE_|PAVP195MB2237:EE_
x-ms-office365-filtering-correlation-id: 697aed34-7b0b-450c-b730-08daf787577e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 DTvE1Tz/tS1WknHa06iG/XhYMvrH3T+Lb8kHqqK4rlEBlhtMv+NMpbHvUsOde0rvYDm6YIIv1i2DyC6UZp/KJIAcPlnJyyfI9JgjWYvXBYssWE0cDnj/peuSUhBhoS1FcZWyC0yAH+/DzbWv3lZam3aKoDFt+2Hdo8lPQQwQ6z020YAvHOTymxeufynJ4aJyzZhTtmPTZje8smw/kZxGBlHwKw0tsOUH+O/PyX0xNopLfhCkLQVXzb2FqEOLYVPtUB/ogLjCu8QxVg0qoYO1JvWoYmHmqd4kTo4lRC+JC5eAL8xUXjXr6/Z6Uos+1pJARnvcXVvyvn+Wos+we5fhDYI0963RQW94qKHUvuHVO0l1Ah9tDtsNcWTOgw9PwywOHxJH1+ZyFV+73ox+CQBgJ1uTBs9LVKPtDI44NlyaFfQj6wiyezLkOUS7aF/cOhmTbqBXrFvR3yZakFSbZSgzVOYlT+4CpQ0cENrNe7p1cd9+iJpuR9Ed1J05CsUsy3PcFdpV4pxi7M7CmnAj5CsHY0r7mS/n+s6qf/YvXlV7Zx8aD6ETF9rxJViSd3SyPr4XGKViRbWhlSDPOHTQq8TL57+4g0bbJLpgwmgWMJUXMSxSXqUD3rjoWBj/F2Ed/n4zxeLdHVFVwgBhmXyWlnp32cEb/exRMX9Z3654Iy0htbIevQ4yV/PXk4HoiUyxuvN6kqwAlsszRV8bY9JRgysjlZYSYCVYzg3RLhbNCGjbP+w=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0P195MB0754.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(366004)(396003)(136003)(39860400002)(376002)(451199015)(86362001)(53546011)(33656002)(186003)(91956017)(9686003)(26005)(6916009)(4326008)(64756008)(8676002)(66556008)(66946007)(66476007)(66446008)(76116006)(41300700001)(316002)(71200400001)(6506007)(55016003)(7696005)(478600001)(966005)(44832011)(122000001)(38100700002)(38070700005)(2906002)(166002)(52536014)(83380400001)(5660300002)(8936002)(66899015)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?TxNY5+/zIkk0qo10Iytpb6sSorn+7j1fNP6y+H57FUnlhpRfpXW/JVpaW6?=
 =?iso-8859-1?Q?EJvA7qMY6KToJSBDfF0tEcb7DfK8FHJgy1eFJRCFqdvnPCRjEZhpeI5HR4?=
 =?iso-8859-1?Q?7fS599lLGMvDTCXQRX0V7qX+CsHksee6v1Qa2dyGFbGany1pfUFJAmTs3J?=
 =?iso-8859-1?Q?p5SsOzDeo9KolBZqkRY2QtOqXPnH6iE0P+kmewTp1hgxZdBaHWvJO3JGf9?=
 =?iso-8859-1?Q?B506Htjbdcv+zjYwJzdP1LykzvJR6bERPhjdwi4Qo8I65b4aBtGBYYoeAb?=
 =?iso-8859-1?Q?hXwILmyQzZbhfxTZYXce9pARyQlbQw6rU3QfNHlIfMImGlYlr87rQpySL+?=
 =?iso-8859-1?Q?oslk1UwmP5ikmLbhC555tn9uGVYBCcLTriUnbax3GtkD/zIK+JPosZW3W+?=
 =?iso-8859-1?Q?rDneyntOQUqdqg1E4uxtIX/JhjO2aDMvDafuYqg3AGLtZeulCxyo1RObGc?=
 =?iso-8859-1?Q?MIB9OPV1lC41X9XsLpyV3hHdF2qXL3pKgd1qTaOrpVNCAo6eNegYp1uSDV?=
 =?iso-8859-1?Q?iVheErhtVmC/m4K/p5+HOllSTudQQ9SBPhXrWSt2zL/gz7a5L7aBkVuQYi?=
 =?iso-8859-1?Q?HZ85cooiBPL6f92CZMHjnsxOZppa6u9U1rQGwT5SVqTOCxgr6OVLTpt9Af?=
 =?iso-8859-1?Q?uxACUVCHmypwzN/qglFumfRvYc3FzmIWkIGBf7S6POz5DkgAkuOcRrvBXL?=
 =?iso-8859-1?Q?MZ4zPhNOAELK6tLNxK3vDP0Mvc1dDiKJQ10hkKXtSQ9yrG3SVyFYCr7PK4?=
 =?iso-8859-1?Q?ikCPwpmWEDuSihDatSq3wUZ9PT2Cn1GpKFR+Q5GqCHj1KqkXbrXgMVQjF1?=
 =?iso-8859-1?Q?rAozaDiQg2qWQz6wRb/l58baviLJZaFeSj/KRojcEK1TQDwsj5xjf8ZNZg?=
 =?iso-8859-1?Q?mcefX6VvL4hntzP8E1z/wrTRiFRbcnMvHnTH6NkkvKiCdZG1s67efkhegs?=
 =?iso-8859-1?Q?cHZ9GnJpxo1xziZ3YgHzpLpZtxSEHFWyljyLfOe7vyXe04t5SqHMrmcDSs?=
 =?iso-8859-1?Q?mkIdF4qXya/ocgnOqb8BmOgvuOUXoR7YlF7bfxhjYNYv2WdL8+m38MIJLx?=
 =?iso-8859-1?Q?ONuF8/jnMnxJXQqdoeZBaVNHBFk+dFn5wub6dysZ55QR2iO0UHgsmDX0sB?=
 =?iso-8859-1?Q?ZO3C1oVY74VrFMO1vH6lJylTDwGBFVmDtUx4Nxx2bOK8EKSffY3bNue4rP?=
 =?iso-8859-1?Q?7ZSjDUedPA4EsBSah91ezUXgLx8BkDM27cdt7QxnXCI0DsUnM/2VXAwr5b?=
 =?iso-8859-1?Q?BKJgpAosHLg/Gd8xa9pkaKNqeFUkJvCO8ybXBzERcR1WHNxNWY2rbvP5+F?=
 =?iso-8859-1?Q?Oo3mE5fbmu3f4jz///KOsADwgwPyROmCfrlCgBt1Xr9gbDqoJbB/qz34+q?=
 =?iso-8859-1?Q?1/rqyfbgzJqcSsrlliX41PT0m+MvLLoFCYsJ29B0a4tWwXJ65WViim9wI4?=
 =?iso-8859-1?Q?NHcDMks3uWdHP7aMBml4aP9eLUsPkrvVkRajk4J3t1LDIRA3mbqCV/NWO2?=
 =?iso-8859-1?Q?BGQgzkxgA1V1phomvvlhAUp0KpOSqjcjgzO6aJZrWt/blQf3G/ADmd8F8/?=
 =?iso-8859-1?Q?vt1jiC1jamJuBDTEXCmLqxkUUQnhyHX58S+bBnYFh9kpglllr7yKU0EI3U?=
 =?iso-8859-1?Q?kw7kp9uTr2dT+EYma41mzBLQtgY2pbUeipEmNW6PgiYkOvFVxPp77t4Q?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0P195MB0754803F4C841D407A9A4B7FC5C19AM0P195MB0754EURP_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Pqqzi8eRzCT/JCCi5RJmISrOqk4H7y2y2G0lcBmBPIqaB3S0tRB7RBpsl95mZYxRkaWyjVOAULesNpSO/jfk8q3cPOeBTLeQWswe7VC/y041Dl5ECxo0wEjUsoLJFgKbe7I5IPBzbXmQ2d33T7gL6LJ5xAMkrcV+COULC/ZY5PEuhPGRgXr1vXxBen11ZVRhAx7ced6DFgAKHea/LGjPx1IGvYCkIU6D1Yry5Uc6tccH8O4Iz7CnpB/710yX1dBOpMQ1tw1t7zlN34BOAQv8yAcWwqDM15hFVFmkMJR4XC0pJvGo7Kd7MKDQQSAAG8QoNZYzmebSyIORb4sf11SoWGe2Litlqkwf6mtvzdmsiAGm6m7YXu/BgPu61XS/HlHh0VbYqJT26OxPkn4H1Oh7Hj+qm0ma+5ubsX3X5+gcDaYc/l8LxC7SvWXPzo6VKSVZ/NUdZA6KXVEo74/FB2N30RkBm4OaRjEF2VRI+zjCGXmhBeRdwxPND6AnKgBtcam0gYcNypNQyhDGrvc86TUcsU3RwhLCCX0YmU5rC+pjGTg2LmDbO/Bb+7AWw/D4VSQNCy+LH1xeGhX7GWCoB3hJacIQZ/D0O/vSb0EFg5uxTRmJLkAqhaI9BadDMueHFUsltkSxc1CjboKAmNc7+++eTBvf5HAsErxHuu5imQh3+jBcV+Mtp1UtIy8ZjMTbJ/Pj7Ftozm2LBUsKHn7iYLoJ8/eifWyGbf6il5HPmP1ZGH5QneabVEWp7g2Vj4MXHWZIc/E/4QcQUmBMmVPC32Sger3fTJwglNdsX1IigXBW5Qg=
X-OriginatorOrg: vestel.com.hk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0P195MB0754.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 697aed34-7b0b-450c-b730-08daf787577e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2023 06:03:08.6601
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bb921106-c510-4198-a2d7-c4509b08ed00
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uRdoJMnq9Et0reBcYOXaeJzvJ9zFkTljVxavK06skMdTmaMV5u57XiaBo7EjzFU3ArY8tbKpHQZo8t7aVhe/QzjHQWiKMsPJb9zWyb3Gur8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVP195MB2237
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Jan 2023 06:03:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58995

--_000_AM0P195MB0754803F4C841D407A9A4B7FC5C19AM0P195MB0754EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I checked for INCOMPATIBLE_LICENSE FLAG in distro configuration of my image=
 recipe but could not find it. The only place where INCOMPATIBLE_LICENSE is=
 used is in gnutls recipe. I tried using IMAGE_ALLOW_PACKAGES_pn-custom-bas=
e-image =3D "coreutils" but found no luck.
Can it be the case that coreutils is already present in rootfs and selinux =
recipe is trying to install it again. I cannot figure out how to build core=
utils with selinux enabled.
What should be the correct way for building coreutils with selinux enabled =
and adding it to the image if LICENSE is not an issue.

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Friday, January 13, 2023 10:38 PM
To: Kamal Kishor <kamal.kishor@vestel.com.hk>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-selinux: ERROR: nothing provides coreutils needed=
 by packagegroup-core-selinux

On Fri, Jan 13, 2023 at 6:32 AM Kamal Kishor <kamal.kishor@vestel.com.hk> w=
rote:
>
> Hi,
> I was trying to integrate meta-selinux layer with thud branch on our exis=
ting yocto build. I followed all the steps which are mentioned in README an=
d SElinux-FAQ but I am facing an error in do_rootfs step.
> The error is shown below:
>
> ERROR: custom-base-image-1.0-r0 do_rootfs: Unable to install packages. Co=
mmand '/mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchai=
n/work/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0-r0/recipe-sysroot-=
native/usr/bin/opkg --volatile-cache -f /mnt/EVC-TI-06.03.00.106/tisdk/buil=
d/arago-tmp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-=
base-image/1.0-r0/opkg.conf -t /mnt/EVC-TI-06.03.00.106/tisdk/build/arago-t=
mp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-base-imag=
e/1.0-r0/temp/ipktemp/ -o /mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-ex=
ternal-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0=
-r0/rootfs  --force_postinstall    install agentv3-evc10 base-passwd czmq d=
ropbear e2fsprogs-resize2fs eichrecht gattlib gosuncn-cm ifmetric kernel-mo=
dule-mt7663 kernel-module-mt7668 kernel-module-mt7668-bt libmodbus5 libtcti=
-device-dev libtcti-device-staticdev libtcti-device0 libtcti-socket-dev lib=
tcti-socket-staticdev libtcti-socket0 libtss2 libtss2-dev libtss2-staticdev=
 libwebsockets19 midmeter modbustcp ocpp-evc10 openssh-sftp-server opkg ost=
ree packagegroup-arago-base packagegroup-arago-base-tisdk packagegroup-arag=
o-console packagegroup-arago-qte packagegroup-arago-tisdk-connectivity pack=
agegroup-arago-tisdk-crypto packagegroup-arago-tisdk-graphics packagegroup-=
core-boot packagegroup-core-selinux parted procps psplash pybluez python3-a=
ws-iot-device-sdk-python python3-bcrypt python3-flask python3-flask-login p=
ython3-flask-restful python3-flask-sqlalchemy python3-marshmallow python3-m=
odbus-tk python3-pycryptodome python3-pyjwt python3-pyserial python3-pyzmq =
python3-requests python3-sqlalchemy quectel-cm resourcemgr rest-webasto res=
tv2 run-postinsts shadow smartcharge tpm2.0-tools tzdata ui-evc10 uidreader=
 webconfigv3 wpa zeromq' returned 1:
> Collected errors:
>  * Solver encountered 1 problem(s):
>  * Problem 1/1:
>  *   - nothing provides coreutils needed by packagegroup-core-selinux-1.0=
-r0.armv7at2hf-neon

Does your distro policy inhibit GPL-3.0 ? if so then the error is right.

>  *
>  * Solution 1:
>  *   - do not ask to install a package providing packagegroup-core-selinu=
x
>
>
>
> ERROR: custom-base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /mnt/EVC-TI-06.03.00.106/tisdk/build=
/arago-tmp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-b=
ase-image/1.0-r0/temp/log.do_rootfs.21704
> ERROR: Task (/mnt/EVC-TI-06.03.00.106/tisdk/sources/meta-custom/recipes-c=
ore/images/custom-base-image.bb:do_rootfs) failed with exit code '1'
>
>
> To avoid the error, I added RDEPENDS_packagegroup-core-selinux_remove =3D=
 "coreutils" to local.conf. After that the build is successfull.
> But I am not sure if this will break selinux functionality. Please provid=
e me with some insights on this.

If your distro does not want coreutils then you may have to look
through other options to get selinux working. I am not sure if
upstream meta-security tests this option
by default.

>
> Attached here is the log file for your reference. Please let me know if y=
ou need any information from me.
>
> Thanks & Regards
> Kamal Pandey
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58975): https://lists.yoctoproject.org/g/yocto/messag=
e/58975
> Mute This Topic: https://lists.yoctoproject.org/mt/96246573/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_AM0P195MB0754803F4C841D407A9A4B7FC5C19AM0P195MB0754EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); backgr=
ound-color: rgb(255, 255, 255);">
I checked for INCOMPATIBLE_LICENSE FLAG in distro configuration of my image=
 recipe but could not find it. The only place where INCOMPATIBLE_LICENSE is=
 used is in gnutls recipe. I tried using&nbsp;IMAGE_ALLOW_PACKAGES_pn-custo=
m-base-image =3D &quot;coreutils&quot; but found
 no luck.</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); backgr=
ound-color: rgb(255, 255, 255);">
Can it be the case that coreutils is already present in rootfs and selinux =
recipe is trying to install it again. I cannot figure out how to build core=
utils with selinux enabled.</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); backgr=
ound-color: rgb(255, 255, 255);">
What should be the correct way for building coreutils with selinux enabled =
and adding it to the image if LICENSE is not an issue.&nbsp;</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); backgr=
ound-color: rgb(255, 255, 255);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr" class=3D"elementToProof"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b> Khem Raj &lt;raj.khem@gmail.com&gt;<br>
</font></div>
<div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=
=3D"font-size:11pt"><b>Sent:</b> Friday, January 13, 2023 10:38 PM<br>
<b>To:</b> Kamal Kishor &lt;kamal.kishor@vestel.com.hk&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] meta-selinux: ERROR: nothing provides coreutils=
 needed by packagegroup-core-selinux</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On Fri, Jan 13, 2023 at 6:32 AM Kamal Kishor &lt;k=
amal.kishor@vestel.com.hk&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt; I was trying to integrate meta-selinux layer with thud branch on our e=
xisting yocto build. I followed all the steps which are mentioned in README=
 and SElinux-FAQ but I am facing an error in do_rootfs step.<br>
&gt; The error is shown below:<br>
&gt;<br>
&gt; ERROR: custom-base-image-1.0-r0 do_rootfs: Unable to install packages.=
 Command '/mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolc=
hain/work/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0-r0/recipe-sysro=
ot-native/usr/bin/opkg --volatile-cache
 -f /mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchain/w=
ork/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0-r0/opkg.conf -t /mnt/=
EVC-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchain/work/am437=
x_hs_evm-linux-gnueabi/custom-base-image/1.0-r0/temp/ipktemp/
 -o /mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchain/w=
ork/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0-r0/rootfs&nbsp; --for=
ce_postinstall&nbsp;&nbsp;&nbsp; install agentv3-evc10 base-passwd czmq dro=
pbear e2fsprogs-resize2fs eichrecht gattlib gosuncn-cm
 ifmetric kernel-module-mt7663 kernel-module-mt7668 kernel-module-mt7668-bt=
 libmodbus5 libtcti-device-dev libtcti-device-staticdev libtcti-device0 lib=
tcti-socket-dev libtcti-socket-staticdev libtcti-socket0 libtss2 libtss2-de=
v libtss2-staticdev libwebsockets19
 midmeter modbustcp ocpp-evc10 openssh-sftp-server opkg ostree packagegroup=
-arago-base packagegroup-arago-base-tisdk packagegroup-arago-console packag=
egroup-arago-qte packagegroup-arago-tisdk-connectivity packagegroup-arago-t=
isdk-crypto packagegroup-arago-tisdk-graphics
 packagegroup-core-boot packagegroup-core-selinux parted procps psplash pyb=
luez python3-aws-iot-device-sdk-python python3-bcrypt python3-flask python3=
-flask-login python3-flask-restful python3-flask-sqlalchemy python3-marshma=
llow python3-modbus-tk python3-pycryptodome
 python3-pyjwt python3-pyserial python3-pyzmq python3-requests python3-sqla=
lchemy quectel-cm resourcemgr rest-webasto restv2 run-postinsts shadow smar=
tcharge tpm2.0-tools tzdata ui-evc10 uidreader webconfigv3 wpa zeromq' retu=
rned 1:<br>
&gt; Collected errors:<br>
&gt;&nbsp; * Solver encountered 1 problem(s):<br>
&gt;&nbsp; * Problem 1/1:<br>
&gt;&nbsp; *&nbsp;&nbsp; - nothing provides coreutils needed by packagegrou=
p-core-selinux-1.0-r0.armv7at2hf-neon<br>
<br>
Does your distro policy inhibit GPL-3.0 ? if so then the error is right.<br=
>
<br>
&gt;&nbsp; *<br>
&gt;&nbsp; * Solution 1:<br>
&gt;&nbsp; *&nbsp;&nbsp; - do not ask to install a package providing packag=
egroup-core-selinux<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ERROR: custom-base-image-1.0-r0 do_rootfs: Function failed: do_rootfs<=
br>
&gt; ERROR: Logfile of failure stored in: /mnt/EVC-TI-06.03.00.106/tisdk/bu=
ild/arago-tmp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custo=
m-base-image/1.0-r0/temp/log.do_rootfs.21704<br>
&gt; ERROR: Task (/mnt/EVC-TI-06.03.00.106/tisdk/sources/meta-custom/recipe=
s-core/images/custom-base-image.bb:do_rootfs) failed with exit code '1'<br>
&gt;<br>
&gt;<br>
&gt; To avoid the error, I added RDEPENDS_packagegroup-core-selinux_remove =
=3D &quot;coreutils&quot; to local.conf. After that the build is successful=
l.<br>
&gt; But I am not sure if this will break selinux functionality. Please pro=
vide me with some insights on this.<br>
<br>
If your distro does not want coreutils then you may have to look<br>
through other options to get selinux working. I am not sure if<br>
upstream meta-security tests this option<br>
by default.<br>
<br>
&gt;<br>
&gt; Attached here is the log file for your reference. Please let me know i=
f you need any information from me.<br>
&gt;<br>
&gt; Thanks &amp; Regards<br>
&gt; Kamal Pandey<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#58975): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/58975" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/message/58975</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96246573=
/1997914" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/mt/96246573/1997914</a><br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/unsub</a> [raj.khem@gmail.com]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font></div>
</body>
</html>

--_000_AM0P195MB0754803F4C841D407A9A4B7FC5C19AM0P195MB0754EURP_--

