Received: from NAM02-CY1-obe.outbound.protection.outlook.com (NAM02-CY1-obe.outbound.protection.outlook.com [40.107.76.89])
 by mx.groups.io with SMTP id smtpd.web09.32404.1610362023762845007
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jan 2021 02:47:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@infinera.com header.s=selector2 header.b=XzUdht45;
 spf=pass (domain: infinera.com, ip: 40.107.76.89, mailfrom: kenth.eriksson@infinera.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYlMu8ZNfvhXfEdANrCS72Mn8Kp2eeiPG0v4Bt1f+VDVWoCYhwWeMPi8VOvws2STmELNUg71Bngc7UZN7btb5B/oXeDl9GgwmrNdCkito0EDx1bSXmGC6+tjYYrvf4lldg3wfBXijkHknw4Oow4GMGEMm4qwQXBOVabTK5+yU3csVVDuyo0s+BhJn8XttnYZ25UocXiDpDaNw2KnaahSlQ2qnHj7xo5dzBecbQ4gH3PKpKngeX2ZgSEkaJdNs/nzwcnkFprjeVD1HR1WIL7kC5HumwYekrOm6TB0Sq4XNNGlSZht9vm+sGYQaqVj8Y97duKMrh0k9V6D1hazWNokXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vgiYL1Q9dxiShQwTnKU7ba4HW75sN10JOdN1uAHdKhU=;
 b=SUqCpiRl69o9l1u2N4Kc2+WazwAJDAuxjyaQIYiStuy4m4Xeee30IfvNgtzayT3XcPTWZUZzcjABiy32klkRpH+Hmgkp5q6btLkQHbOjr1TlOHWdM8P7CkqwS0kTf7IuOO3q3qf+LyiTr342UzzhNMry3lIAPvx3biFC4hO8hc042i4bvGXzF0cKF3+T+FFm293KcldUjxj6XEnXkY85pb7NuFziOuE2v+U7fMmntUSmMXcWEmK5UqEDZ8Bkub9Z6hX6fGyv23OFv04paKavCqp00CJv3MwjolQQ+z4bLPYKy+9LC3VWFhDZwv8KJut3fLpaRbzL2jVJh20J9myZwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=infinera.com; dmarc=pass action=none header.from=infinera.com;
 dkim=pass header.d=infinera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=infinera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vgiYL1Q9dxiShQwTnKU7ba4HW75sN10JOdN1uAHdKhU=;
 b=XzUdht45OxlLdVl9PC8376YH31GDeYv9X7PmQ8sGMshQve3kyNJl7Wfacem649jGfGr4S9VoeYd+K7ygoKOb44bQgd7N20Fby7KVVb6RP+wdVH2tbRXIHHkDojwjGMGMfeCKWbHr77gXsbkkqO3bfrZb+y4FgsGHiCJBMj8UhB8=
Received: from SN6PR10MB3070.namprd10.prod.outlook.com (2603:10b6:805:d3::21)
 by SA2PR10MB4635.namprd10.prod.outlook.com (2603:10b6:806:fb::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Mon, 11 Jan
 2021 10:47:01 +0000
Received: from SN6PR10MB3070.namprd10.prod.outlook.com
 ([fe80::e152:d325:78c7:c1c6]) by SN6PR10MB3070.namprd10.prod.outlook.com
 ([fe80::e152:d325:78c7:c1c6%6]) with mapi id 15.20.3742.012; Mon, 11 Jan 2021
 10:47:01 +0000
From: kenth.eriksson@infinera.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: nativesdk-binutils sysroot bug?
Thread-Topic: nativesdk-binutils sysroot bug?
Thread-Index: AdboAQd4/oEEjq/4SIq+NaKHo+EjAg==
Date: Mon, 11 Jan 2021 10:47:01 +0000
Message-ID: 
 <SN6PR10MB3070740F9AF0A590C15F9A37E3AB0@SN6PR10MB3070.namprd10.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=infinera.com;
x-originating-ip: [217.208.192.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e39bf2fb-099d-4499-9875-08d8b61e3a52
x-ms-traffictypediagnostic: SA2PR10MB4635:
x-microsoft-antispam-prvs: 
 <SA2PR10MB4635038F77383D4514B867ADE3AB0@SA2PR10MB4635.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aDptrWUmetsIE7/yDBiTAsARah3A+SsSsj6aXrL4oTLae6lITubkR9Betp+i29U3U4OBaafazAOD7kz9i53xqzOeLDbNnRN9cxPXzs0FE9ZCb7xumeEto4ouVHaCjkM4XR4cjHYERHLig/qRbHXtBdzHwKzXGyau2piKrPRQE0S0Urx3mDuzG00Ljga5FIrw816AEH1Hcz7TdplsuX/VcW1KD6pbg/esEVWhdHbwznUmkBen4gxaftGnmlZpi5o8rpO1HdPt/sWTh9VZkckICqpAU5ZUl/3qAjjn2AP3/9DUHkccGI0KyGAvx03mG9nSFnq7IbCqJJBZ24clEH4t0IMccu0ys4PuBYUFl6chAWHT9hpLXiNXNzhBvRkFAvieZwuXtSaypgS0vnbvrzTB9g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR10MB3070.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(136003)(396003)(366004)(39850400004)(7696005)(71200400001)(86362001)(3480700007)(8676002)(8936002)(186003)(2906002)(76116006)(66446008)(52536014)(6916009)(66476007)(5660300002)(66556008)(33656002)(9686003)(66946007)(55016002)(64756008)(26005)(6506007)(478600001)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?4vX+u3gNl6Z2aEx+I4DPaKkaWt1vH3MBXpf8nRaNgjEWXo/Ne4FC/x8BbA+b?=
 =?us-ascii?Q?UQmxBq0Shpaj0RkeUhVxC5Iqi5UrGbmHcP6KEBIzzghQCqC2h+sU5GBDrCvJ?=
 =?us-ascii?Q?TTKzfjohc1SWQcSO+iTGZQdR4tLWFUXYkaHCDg8qfUMZWnp5h3shvkUV3MCz?=
 =?us-ascii?Q?HAREl01JJFpqndUZufTigYaVa67cKvn8b/oDE+iMf5d4w4pqAUwW8JLmW1nX?=
 =?us-ascii?Q?nYuLS4A9bM1d3Yqh+indQVUDd47Y+8IMkxXDu5wMR3rQhd1nYOk5D3vlPmsV?=
 =?us-ascii?Q?IrCAtkmAuAUskBbgTs0ntqqHCyWH6bMmWOpIQCLczD+0wBpifDhHnmBWoeyk?=
 =?us-ascii?Q?2RcVgIaL5BMpo6dNT/yEt5T3ayzl5mpAcGEZJnmgfNJRhVab37a6oPMmn49f?=
 =?us-ascii?Q?HCxeCz7D6g2As0LZj6QRLQQq+j/uZzmBaD8t78O+yYNUg3mb8jrBbvJM5drG?=
 =?us-ascii?Q?kKlIoZyK94dOgoRFs9S4SCzGnV9P9dtfREdV414dRHqnxp4efuqOZ9xiiAze?=
 =?us-ascii?Q?FyN+V6U+VlbrJkBOuufdwXqY/lHbzfcn0Z+0InfbKa+5mqTFz64/Zs3dquU7?=
 =?us-ascii?Q?ODPf6Si9a7OXMBsqxehqBsyNObk7lcVQhqrrqYgUsbOONnWVN/0jLzhtoHUG?=
 =?us-ascii?Q?AaoY4PC9tABvTlUebxwEcyvKvAJgE+o8Id8sYV5i24wCm+pm2GgMK1nSDvsn?=
 =?us-ascii?Q?i94d7oYpG/cehPQS+Vt1FNAHiZeE8JSX61diPbIPFipI7SS8vw4pppy4zc1F?=
 =?us-ascii?Q?lpDrMmN0tEFZ63zHzz1hCPr7IXjM9ZdPKubucrZllR4yTzr07gL4hOTRRiHW?=
 =?us-ascii?Q?m31hnKxqmWVS4iSYbk3eBxphdfRj3/UQ6KDfmko8OJykSGGDoCN7VyJav5rT?=
 =?us-ascii?Q?shtVsggkWIFJ3ASF0t1Z+c5tVupjtrigWMM+XWyWiy8fFmxGI+Rp8+kfF4Hs?=
 =?us-ascii?Q?5DR/lI5ca4W5jrRr6jBilPa0WDcu8z/mHXVaqJS4okI=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: infinera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR10MB3070.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e39bf2fb-099d-4499-9875-08d8b61e3a52
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2021 10:47:01.5491
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 285643de-5f5b-4b03-a153-0ae2dc8aaf77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ko4wnIM6N0b1t1u9mu+fOc2vRZEHfo5yqsDNZsnt/FhWaD7JxB7G/xM9E64mgSIK+YmyiIloJyd2RJpnwFtOYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4635
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have added native gcc support to an ARM Yocto SDK. But the native compile=
r does not work when passing the sysroot argument to the compiler.=20

kenth@se-kenth-lx yocto-xr $ x86_64-xr-linux-gcc test.c
kenth@se-kenth-lx yocto-xr $ x86_64-xr-linux-gcc test.c --sysroot=3D/opt/in=
fn-xr/1.0/sysroots/x86_64-xr-linux
/opt/infn-xr/1.0/sysroots/x86_64-xr-linux/usr/lib/gcc/x86_64-xr-linux/9.2.0=
/../../../../x86_64-xr-linux/bin/ld: cannot find /opt/infn-xr/1.0/sysroots/=
x86_64-xr-linux/lib/libc.so.6 inside /opt/infn-xr/1.0/sysroots/x86_64-xr-li=
nux
/opt/infn-xr/1.0/sysroots/x86_64-xr-linux/usr/lib/gcc/x86_64-xr-linux/9.2.0=
/../../../../x86_64-xr-linux/bin/ld: cannot find /opt/infn-xr/1.0/sysroots/=
x86_64-xr-linux/usr/lib/libc_nonshared.a inside /opt/infn-xr/1.0/sysroots/x=
86_64-xr-linux
/opt/infn-xr/1.0/sysroots/x86_64-xr-linux/usr/lib/gcc/x86_64-xr-linux/9.2.0=
/../../../../x86_64-xr-linux/bin/ld: cannot find /opt/infn-xr/1.0/sysroots/=
x86_64-xr-linux/lib/ld-linux-x86-64.so.2 inside /opt/infn-xr/1.0/sysroots/x=
86_64-xr-linux
collect2: error: ld returned 1 exit status

Error trace seems to incorrectly tell that libc is missing on that path

kenth@se-kenth-lx yocto-xr $ ls -l /opt/infn-xr/1.0/sysroots/x86_64-xr-linu=
x/lib/libc.so.6
lrwxrwxrwx 1 root root 12 Jan 11 10:33 /opt/infn-xr/1.0/sysroots/x86_64-xr-=
linux/lib/libc.so.6 -> libc-2.30.so*
kenth@se-kenth-lx yocto-xr $

The sysroot argument works when only compiling the source file (no linking)
kenth@se-kenth-lx yocto-xr $ x86_64-xr-linux-gcc -c test.c -o test.o --sysr=
oot=3D/opt/infn-xr/1.0/sysroots/x86_64-xr-linux

But when gcc invokes binutils with sysroot argument then it fails. Doing a =
strace on the invocation of gcc with sysroot shows that sometimes the sysro=
ot path is concatenated twice;

[pid  4197] openat(AT_FDCWD, "/opt/infn-xr/1.0/sysroots/x86_64-xr-linux//op=
t/infn-xr/1.0/sysroots/x86_64-xr-linux/lib/libc.so.6", O_RDONLY) =3D -1 ENO=
ENT (No such file or directory)
[pid  4197] write(2, "/opt/infn-xr/1.0/sysroots/x86_64"..., 110) =3D 110

The arm compiler has a compiled sysroot (as defined in the bb recipe)
kenth@se-kenth-lx yocto-xr $ aarch64-xr-linux-gcc --print-sysroot
/not/exist
kenth@se-kenth-lx yocto-xr $

whereas the native x86 compiler does not have a compiled sysroot

kenth@se-kenth-lx yocto-xr $ x86_64-xr-linux-gcc --print-sysroot
kenth@se-kenth-lx yocto-xr $

If I symlink the path to mitigate the concatenation effect into binutils th=
en it all works.=20

Known issue? How to resolve?
