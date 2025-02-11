Return-Path: <kbeal@eclipticenterprises.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542A9C0219B
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 23:49:02 +0000 (UTC)
Received: from USG02-CY1-obe.outbound.protection.office365.us (USG02-CY1-obe.outbound.protection.office365.us [23.103.209.80])
 by mx.groups.io with SMTP id smtpd.web11.3140.1739317741347612579
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 15:49:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@eclipticenterprises.com header.s=selector2 header.b=muvRaJWP;
 spf=pass (domain: eclipticenterprises.com, ip: 23.103.209.80, mailfrom: kbeal@eclipticenterprises.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=JR59qZUM3uI2gXHwb7Hf0/mFRDWG35zJl+6IH/3Ag+KqbywT8hK8gtaDPiLlt3ZsIcmw02dsUg7ODEd6ceyCJ5RHNGHN/eCW7hzvIypkBOj9Q91fC8HfPQaYRbhoM21CPGKzO2nBBltDTNcTgD56WHUOhr1qVvY2HQe1ZGwTpe9WmGqzS+tAFgMPlBQmhxAzxbvmuSll2Y0YrzuwZcr3jOtOybUjJqvpSABrJeKR7hIniV85lLDDxv0YZaitPMkMIEExHU1NesGdw+0iCt7IzIGJrkNTKItBFiBuM0/U7ILFkRP2+YigkjdKG5f+diguciAnzr0SwvUIbj2AcI6w5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V8D+eua2kj5w5ygr+35b16swnNw2/wf9DzYxXsiwOnc=;
 b=Iqe8Tx5xheTg9T+lD/VFeWE60cv70T3XZNjMQ9GEueOdPWI8IyVycgaA/XGBwHblLESZKmMdoMDjnpg56ZB8ztJjfawwAY1IT6t54QLrtjrKmiVi+k+upmCAJGMaZUISeJiyvIPP09PvPcGoHRFU4bUdZ7lh2iW8PovqkjYH8tMDTzq85Mie2RPf5uyT/r9NW13R1/WRJGSuISCbKBXtur/t8lFkM9IqGc/iXcA2X1zyjNJBx2IxmpzTV1ja9MWL+cocerxFDA4BgaBiUOH6+iloEfcF5bFyD5BuEZLPDH8mTqBvRDO5UztkEAmxKDiJOFbuocuAoeovZGOIAAWJuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eclipticenterprises.com; dmarc=pass action=none
 header.from=eclipticenterprises.com; dkim=pass
 header.d=eclipticenterprises.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eclipticenterprises.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V8D+eua2kj5w5ygr+35b16swnNw2/wf9DzYxXsiwOnc=;
 b=muvRaJWP6jI38LlLBI/rSPI5Gas6xwtETo7bpWWJ2LThZwTAC5FQJYiTjyIGNJtfUgFrKGFznLorjoS4HECOt/e1FjyGTSkIVnLbnKrBS3nhqTiyeg4QYJWaI1/JmtERsL7jDaaV5wp+qtBVxq9UJZaH0spdK6XeFhXeNSVyAE3eI9oSxdKZnRqNzKcVX4g65Kqjm5fJIUzbf7OPQJHOhYmsrnaByZgfxBNSimyeV0JdHPOm/yTXXAbD7cHPZ3L51r67v7ElnkUSmjaY78bOLk8FLUEC7u/7Xno5lMICGMwx/eMfdbng0z7Dta+PolfcsbpdrZCAbbM0sj0vEb1S3w==
Received: from BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a2::22)
 by BN0P110MB2227.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:19c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Tue, 11 Feb
 2025 23:48:55 +0000
Received: from BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
 ([fe80::68f:3f99:c7fd:88ac]) by BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
 ([fe80::68f:3f99:c7fd:88ac%5]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 23:48:55 +0000
From: "Keith Beal [US]" <kbeal@eclipticenterprises.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>, "Keith Beal [US]"
	<kbeal@eclipticenterprises.com>
CC: "skandigraun@gmail.com" <skandigraun@gmail.com>, "r@cmss.com" <r@cmss.com>
Subject: Re: [yocto] Installing pre-built DEB files
Thread-Topic: [yocto] Installing pre-built DEB files
Thread-Index: 
 AQHbfJ+oxNGF4EpkyUqbW6Grw/LpGrNCVQ8AgAAG3QCAABSFT4AAAcQAgAAq2eyAACfRWQ==
Date: Tue, 11 Feb 2025 23:48:54 +0000
Message-ID: 
 <BN0P110MB1915DADB5511579F063D9DA2BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
References: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org>
 <3a8c9af1-8b3c-426d-8ddb-038981c5e561@gmail.com>
 <CANNYZj8VvtKSDnCn0SVAj7LZeVzeOeKqh4y_2hcKti+TegnfSg@mail.gmail.com>
 <BN0P110MB1915274A58DA1480641F1059BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
 <CANNYZj_Wpqc=DTEOa=3930F=Rn5fqUR4WWpgjpW_EkMfhyCkgQ@mail.gmail.com>
 <1823446B2C0840A9.9264@lists.yoctoproject.org>
In-Reply-To: <1823446B2C0840A9.9264@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eclipticenterprises.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1915:EE_|BN0P110MB2227:EE_
x-ms-office365-filtering-correlation-id: 8229ea0b-1793-43ab-d4eb-08dd4af6a527
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?le+Mcth+RorOI0dQ1vbyZmUJr4wlObX8A/MQR3u54nxOTHVABdBdQ0U6?=
 =?Windows-1252?Q?SK04ODaxRTeYOXaA9WDgXK4oIQse+U0UMZYuETRT1uqmSrFkIb67Eqb6?=
 =?Windows-1252?Q?k8qbF733yL+fxICVd2C6zQ1VWcFtHwPMYSDHmo1g4JB7aToBdlC3PpZR?=
 =?Windows-1252?Q?B+W3Kwkrqo52ertKks0rKm+ANiGqSG0TADOLVScYZnfcCFgcbjez4e9Y?=
 =?Windows-1252?Q?m2TryLK6UauzhaX2jgN3J+R/oQqUBYNrAYFOcPpnnNyAZsiL5jNfHxXz?=
 =?Windows-1252?Q?3YFlwuDkWsMLzyw7j/tPefrEbKrF6ZbPpGTNhCvs0ZLR2ZTlyhYKI19R?=
 =?Windows-1252?Q?lwSAHQ8hHFTltagpnIRCdjTD0t43ch+fs+q4EQrXVxHx4+m0zup8rjoW?=
 =?Windows-1252?Q?vrEp/GC/j2GLj/AsbheJ5JcSwBqd0nwopZDPprdG/2eQwKfVRfDh1XzJ?=
 =?Windows-1252?Q?YxLX9ihzWFgdUCR10ytHcnpMEN+gjldNc9iMNN8xfHAO82B3194IHKIY?=
 =?Windows-1252?Q?MsZvpcyXHrj0+0Dk6dRaVWz9Naw5JVQ1z2DHL16g7FGclKQ+7VSltsz1?=
 =?Windows-1252?Q?OLvZ996TOYE+vFwc7TWcTDfBKSSBBhGA4SMLq+YuKWmQffkRTabxxUg/?=
 =?Windows-1252?Q?rDUSJ3VFRk5cl41iyMwaYw1R9zFhjWZHO2gdurxCn+dAw+TDTuA+gijO?=
 =?Windows-1252?Q?GsZRpW2QNwBtAHcTW0I/mh6A7sYvBOZDWBcdIZoembV4AuEUogcX/Ut7?=
 =?Windows-1252?Q?fmY+yPtWqFH19359PrYW/Csldvcmiui0q4CxLi0u76R8rtD2BgGROdiI?=
 =?Windows-1252?Q?bQtUYno+WrsomhcY/lny1D0IY70xlMz/wHbkH78JkngH2murwAUl37eJ?=
 =?Windows-1252?Q?ZKvfinH1Jiy88ToFR1/bisHWjVcB8CW9gG8NV6IZINEshO9Szj9PjEr3?=
 =?Windows-1252?Q?p8jtYJtbOv4LifTrDPzBIlnFzkp9SUTyTC+URnF5Aux149Ba7C6818Wh?=
 =?Windows-1252?Q?aKRFvMSW5Ya6fvPBdIySC2k3nQNg946y8ljSS2eNdTJ0gjlb2xIyOcvP?=
 =?Windows-1252?Q?eAvYKu6QtGBsarFXvNtbYO+nWP4L39wTzxqvTX9dVSOGF3nmOtnmAgIW?=
 =?Windows-1252?Q?J8ShzcF1dhZ01jXVu465sglecFMux0HVLcw/UOSXUlk9nCujIw7MWCQ0?=
 =?Windows-1252?Q?tfxb1Lji/eC8y3M5dyuNXpF4p1zeiqJKMeKvl4jUa3KCjc7CplSMHJT+?=
 =?Windows-1252?Q?i7V/THx/T+l/zGO/zDmxfW6t2bEDz0iy3LJE4a0DS+zp/HTy2WMIe5R4?=
 =?Windows-1252?Q?KqTNBEgQP7eaBrdVSUSb/gSvtgcQ86ggy/5cupk0nI4+W8VLcIvFmTXx?=
 =?Windows-1252?Q?iYfLsLuNFUKV5wZs+GfJ2yysaxZhlaDu5mcCOiIJJzjNGL9OCb+g632k?=
 =?Windows-1252?Q?vLzVwLPbEP9SZC1KH/Tt9qCYgcO1PvnE9wbEVYJf6/UX97hj3Eb47DH9?=
 =?Windows-1252?Q?AxSjW2n1?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?DNGewY+C63Os1I2j2x11d5NQ6J0X7UBHWFgVSwtyEpgyjoifeGS7wy8Y?=
 =?Windows-1252?Q?aOKsHMlLwNCik3+mcqH/ugC/4WA4mSmhPeqsr2I4DqIa8zi9tnbgIeXr?=
 =?Windows-1252?Q?FBJ0/WcqgvcBA2TnKwTvocb8N9QnkwQbzYt9su47SgCxeRax4W2PByhn?=
 =?Windows-1252?Q?nMYnJBKDWZ9/DQLYmtVAtFmMjvmTlu/8EF1i9EtYANzlH/m/y9H/bYRu?=
 =?Windows-1252?Q?nNbM2ZssrnselQw89/zz/CDsLokHMXK1Z7LGqDbqqdO/aU4CSUNVJEiO?=
 =?Windows-1252?Q?jensWiNCQaJKHeGQ1XI/c4Z0PFvJQHzC/ODCcpBDhAUFCugtKJ+gxhHk?=
 =?Windows-1252?Q?XBi1+7AFvMA45VrF+2W8ruCkXzjElE0g2SIvtm2jdyL8pd0PnVVZH9gT?=
 =?Windows-1252?Q?qLEF3YB/wywjnx0MNNfLINhGVRL/Air80RoMVu2f4+uLr8jeZWgc/MTv?=
 =?Windows-1252?Q?l32CIQ5hlfnOe/b+PuLxoPVF9FWtYNrfqlSrnZ9w22IpJCrKigUUj1ow?=
 =?Windows-1252?Q?IivoFG/wKj0+L3sZKaHbeicZvUh67NpYmDG1c2ywnPBgBEVa2F5MIYsP?=
 =?Windows-1252?Q?n31k+x1Vl+99TxvI8oomkclfOZGilfgqYcI0AE2ZEIMcbhw/J3vi5xwC?=
 =?Windows-1252?Q?MrpyaFsEvW1CDDnOHYwuVG/DklGDJkqTiCEaLIcPubZ9TQkRebQzycag?=
 =?Windows-1252?Q?mvJu6BsOkSvPMhiiAuioc9vByTdBtUm8Lac0ELmIhmftTJBNDEnoR2te?=
 =?Windows-1252?Q?aRUCR83uKorc+lDBRxV8NYb0dE6aMela9/rgjUZOm0/VDaDw5MvQ93QN?=
 =?Windows-1252?Q?afBbAgSWXedNeWB+UxWsrzdRgMsf9o7coeOJXK8vmC0SBXF+n7udO0sI?=
 =?Windows-1252?Q?DdEmxXMoq9jSxX8R9cIQreyjgeM7pQhGlNqylkbgw7o8FNCSJ+AKiRz3?=
 =?Windows-1252?Q?hf57/SYFevaSpzUi+BHrDedNjEBbtF3HFXOMuabQANyjDZS1sX6SWfzo?=
 =?Windows-1252?Q?WQ3jxrpFKLKrjkqtxUTdjhP1jhwQn2HPQkqkYlvA/k7BlSUxyXrIDqPF?=
 =?Windows-1252?Q?Bn5VRV7B46pZ3/SXVrpSym5JzBxnWo0IsUfSC4OpASYmbm2er+3+6MZR?=
 =?Windows-1252?Q?iDm1jzf8yMlenrjWNR1C/IfjKGwGogK31byC+xBtq7dFp2FBD7aR6c33?=
 =?Windows-1252?Q?GfRx0SirxD0TzpKiYDLz8Z+klLDljqPA45xFxh7mxvai3vgju+rqeq1S?=
 =?Windows-1252?Q?HjXT83CeRYvZrTBhHVKnWUN+AC7IhHyj3zL+617wGRbiqu3gGYe6ZKYs?=
 =?Windows-1252?Q?A+ZF111CWtaVObWjRXOj1/LLjpPv4QrHdyrZbE7xd3zOrgGqXWlGlGlu?=
 =?Windows-1252?Q?xQyEYMX8NtPIai4+kVgQOZs+1am5AHCsKhSMwmFBf7LFdenjjUHd9loY?=
 =?Windows-1252?Q?sNSeFREK1PlDmggUXwYwDBGJFOPTsojJLJ+//OVztAF7xzTX0/QXdXL/?=
 =?Windows-1252?Q?6jGfPzMcQwkb+u9BPthzfHLN9rF76EdU0Sno53t0bGURkl3hjB5wI+0m?=
 =?Windows-1252?Q?yFcLb5pPN5SOhKun2k4WXe9vuNlDl35bm34+xV5KQiaxt5soy9v0JNjL?=
 =?Windows-1252?Q?uZY5CZZUkH39OXE5qnMMJm3j?=
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB1915DADB5511579F063D9DA2BFFDABN0P110MB1915NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: eclipticenterprises.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8229ea0b-1793-43ab-d4eb-08dd4af6a527
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 23:48:54.9491
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b4f66761-c9e2-4856-9874-b1c6d40ccfea
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB2227
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 23:49:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64776

--_000_BN0P110MB1915DADB5511579F063D9DA2BFFDABN0P110MB1915NAMP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Alex,

These are the headers I am talking about...

$ dpkg -c libparted-dev_3.6-4+b1_arm64.deb
drwxr-xr-x root/root         0 2024-11-01 19:02 ./
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/include/
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/include/parted/
-rw-r--r-- root/root      2774 2024-11-01 19:02 ./usr/include/parted/constr=
aint.h
-rw-r--r-- root/root      2478 2024-11-01 19:02 ./usr/include/parted/debug.=
h
-rw-r--r-- root/root      6241 2024-11-01 19:02 ./usr/include/parted/device=
.h
-rw-r--r-- root/root     18288 2024-11-01 19:02 ./usr/include/parted/disk.h
-rw-r--r-- root/root      4177 2024-11-01 19:02 ./usr/include/parted/except=
ion.h
-rw-r--r-- root/root      3466 2024-11-01 19:02 ./usr/include/parted/filesy=
s.h
-rw-r--r-- root/root      3588 2024-11-01 19:02 ./usr/include/parted/geom.h
-rw-r--r-- root/root      4196 2024-11-01 19:02 ./usr/include/parted/natmat=
h.h
-rw-r--r-- root/root      1705 2024-11-01 19:02 ./usr/include/parted/parted=
.h
-rw-r--r-- root/root      2167 2024-11-01 19:02 ./usr/include/parted/timer.=
h
-rw-r--r-- root/root      2927 2024-11-01 19:02 ./usr/include/parted/unit.h
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/lib/
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/
-rw-r--r-- root/root    202576 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/libparted-fs-resize.a
-rw-r--r-- root/root    807836 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/libparted.a
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/pkgconfig/
-rw-r--r-- root/root       264 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/pkgconfig/libparted-fs-resize.pc
-rw-r--r-- root/root       244 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/pkgconfig/libparted.pc
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/share/
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/share/doc/
lrwxrwxrwx root/root         0 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/libparted-fs-resize.so -> libparted-fs-resize.so.0
lrwxrwxrwx root/root         0 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/libparted.so -> libparted.so.2
lrwxrwxrwx root/root         0 2024-11-01 19:02 ./usr/share/doc/libparted-d=
ev -> libparted2t64

Keith
________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Keith Beal [US] via lists.yoctoproject.org <kbeal=3Declipticenterprises=
.com@lists.yoctoproject.org>
Sent: Tuesday, February 11, 2025 1:25 PM
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; skandigrau=
n@gmail.com <skandigraun@gmail.com>; r@cmss.com <r@cmss.com>
Subject: Re: [yocto] Installing pre-built DEB files

You don't often get email from kbeal=3Declipticenterprises.com@lists.yoctop=
roject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIden=
tification>

[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recognize the=
 sender and know the content is safe.

Alex,

Thank you very much.
I should have figured I wasn't the only one who needs those in Yocto.
The Debian libparted-dev package has header files, how do I get those insta=
lled?

Keith
________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Tuesday, February 11, 2025 10:49 AM
To: Keith Beal [US] <kbeal@eclipticenterprises.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; skandigrau=
n@gmail.com <skandigraun@gmail.com>; r@cmss.com <r@cmss.com>
Subject: Re: [yocto] Installing pre-built DEB files

[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recognize the=
 sender and know the content is safe.

On Tue, 11 Feb 2025 at 19:44, Keith Beal [US]
<kbeal@eclipticenterprises.com> wrote:
>
> I know there is a parted recipe.
> I need the equivalent of the Ubuntu package libprated-dev.
> This is the library and header files for using the functions used by part=
ed.

The parted recipe builds and packages libparted as well, it's just all
placed together into one package with the executables (also called
parted). Headers and pkgconfig files are in parted-dev package.

So you can simply use those packages and ignore that they also come
with executables.

Alex


Ecliptic Enterprises Corporation
Space Avionics and Sensor Systems -- Home of RocketCam=99
398 W. Washington Blvd, Suite 100
Pasadena, CA 91103
Main number: (626) 798-2436
www.EclipticEnterprises.com

Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent responsible for delivering the message=
 to the intended recipient, you are hereby notified that any dissemination,=
 distribution or copying of this communication is strictly prohibited. This=
 communication may also contain data subject to U.S. export laws. If so, th=
at data is subject to the International Traffic in Arms Regulation (ITAR) a=
nd cannot be disseminated, distributed or copied to foreign nationals, resi=
ding in the U.S. or abroad, absent the express prior approval of the U.S. D=
epartment of State. If you have received this communication in error, pleas=
e notify the sender by reply e-mail and destroy the e-mail message and any =
physical copies made of the communication. Thank you


Ecliptic Enterprises Corporation
Space Avionics and Sensor Systems -- Home of RocketCam=99
398 W. Washington Blvd, Suite 100
Pasadena, CA 91103
Main number: (626) 798-2436
www.EclipticEnterprises.com

Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent responsible for delivering the message=
 to the intended recipient, you are hereby notified that any dissemination,=
 distribution or copying of this communication is strictly prohibited. This=
 communication may also contain data subject to U.S. export laws. If so, th=
at data is subject to the International Traffic in Arms Regulation (ITAR) a=
nd cannot be disseminated, distributed or copied to foreign nationals, resi=
ding in the U.S. or abroad, absent the express prior approval of the U.S. D=
epartment of State. If you have received this communication in error, pleas=
e notify the sender by reply e-mail and destroy the e-mail message and any =
physical copies made of the communication. Thank you

--_000_BN0P110MB1915DADB5511579F063D9DA2BFFDABN0P110MB1915NAMP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Alex,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
These are the headers I am talking about...<br>
<br>
<span style=3D"font-family: Consolas, Courier, monospace;">$ dpkg -c libpar=
ted-dev_3.6-4+b1_arm64.deb</span></div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./</div=
>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/<=
/div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/i=
nclude/</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/i=
nclude/parted/</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;2774 2024-11-01 19:02 ./usr/include/parted/constraint.h</=
span></div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;2478 2024-11-01 19:02 ./usr/include/parted/debug.h</span>=
</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;6241 2024-11-01 19:02 ./usr/include/parted/device.h</span=
></div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; 18288 2024-11-01 19:02 ./usr/include/parted/disk.h</span></div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;4177 2024-11-01 19:02 ./usr/include/parted/exception.h</s=
pan></div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;3466 2024-11-01 19:02 ./usr/include/parted/filesys.h</spa=
n></div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;3588 2024-11-01 19:02 ./usr/include/parted/geom.h</span><=
/div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;4196 2024-11-01 19:02 ./usr/include/parted/natmath.h</spa=
n></div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;1705 2024-11-01 19:02 ./usr/include/parted/parted.h</span=
></div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;2167 2024-11-01 19:02 ./usr/include/parted/timer.h</span>=
</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<span style=3D"background-color: rgb(255, 255, 0);">-rw-r--r-- root/root &n=
bsp; &nbsp; &nbsp;2927 2024-11-01 19:02 ./usr/include/parted/unit.h</span><=
/div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-rw-r--r-- root/root &nbsp; &nbsp;202576 2024-11-01 19:02 ./usr/lib/aarch64=
-linux-gnu/libparted-fs-resize.a</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-rw-r--r-- root/root &nbsp; &nbsp;807836 2024-11-01 19:02 ./usr/lib/aarch64=
-linux-gnu/libparted.a</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/pkgconfig/</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-rw-r--r-- root/root &nbsp; &nbsp; &nbsp; 264 2024-11-01 19:02 ./usr/lib/aa=
rch64-linux-gnu/pkgconfig/libparted-fs-resize.pc</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-rw-r--r-- root/root &nbsp; &nbsp; &nbsp; 244 2024-11-01 19:02 ./usr/lib/aa=
rch64-linux-gnu/pkgconfig/libparted.pc</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/s=
hare/</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/s=
hare/doc/</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
lrwxrwxrwx root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/libparted-fs-resize.so -&gt; libparted-fs-resize.so.0<=
/div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
lrwxrwxrwx root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/libparted.so -&gt; libparted.so.2</div>
<div style=3D"font-family: Consolas, Courier, monospace; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
lrwxrwxrwx root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/s=
hare/doc/libparted-dev -&gt; libparted2t64</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Keith</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Keith Beal [US] v=
ia lists.yoctoproject.org &lt;kbeal=3Declipticenterprises.com@lists.yoctopr=
oject.org&gt;<br>
<b>Sent:</b> Tuesday, February 11, 2025 1:25 PM<br>
<b>To:</b> Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; skandigraun@gmail.com &lt;skandigraun@gmail.com&gt;; r@cmss.com &lt;r@cm=
ss.com&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"background:revert!important; border:revert!important; b=
ottom:revert!important; color:revert!important; direction:revert!important;=
 display:revert!important; font-size:revert!important; height:revert!import=
ant; letter-spacing:revert!important; line-height:revert!important; margin:=
revert!important; opacity:revert!important; order:revert!important; outline=
:revert!important; overflow:revert!important; padding:revert!important; pos=
ition:revert!important; tab-size:revert!important; table-layout:revert!impo=
rtant; text-align:revert!important; text-indent:revert!important; text-orie=
ntation:revert!important; text-overflow:revert!important; text-transform:re=
vert!important; top:revert!important; vertical-align:revert!important; visi=
bility:revert!important; white-space:revert!important; width:revert!importa=
nt; word-break:revert!important; word-spacing:revert!important; writing-mod=
e:revert!important; zoom:revert!important; border:0!important; display:tabl=
e!important; width:100%!important; table-layout:fixed!important; border-col=
lapse:seperate!important; float:none!important; border-spacing:0px 0px!impo=
rtant">
<tbody style=3D"background:revert!important; border:revert!important; botto=
m:revert!important; color:revert!important; direction:revert!important; dis=
play:revert!important; font-size:revert!important; height:revert!important;=
 letter-spacing:revert!important; line-height:revert!important; margin:reve=
rt!important; opacity:revert!important; order:revert!important; outline:rev=
ert!important; overflow:revert!important; padding:revert!important; positio=
n:revert!important; tab-size:revert!important; table-layout:revert!importan=
t; text-align:revert!important; text-indent:revert!important; text-orientat=
ion:revert!important; text-overflow:revert!important; text-transform:revert=
!important; top:revert!important; vertical-align:revert!important; visibili=
ty:revert!important; white-space:revert!important; width:revert!important; =
word-break:revert!important; word-spacing:revert!important; writing-mode:re=
vert!important; zoom:revert!important; display:block!important">
<tr style=3D"background:revert!important; border:revert!important; bottom:r=
evert!important; color:revert!important; direction:revert!important; displa=
y:revert!important; font-size:revert!important; height:revert!important; le=
tter-spacing:revert!important; line-height:revert!important; margin:revert!=
important; opacity:revert!important; order:revert!important; outline:revert=
!important; overflow:revert!important; padding:revert!important; position:r=
evert!important; tab-size:revert!important; table-layout:revert!important; =
text-align:revert!important; text-indent:revert!important; text-orientation=
:revert!important; text-overflow:revert!important; text-transform:revert!im=
portant; top:revert!important; vertical-align:revert!important; visibility:=
revert!important; white-space:revert!important; width:revert!important; wor=
d-break:revert!important; word-spacing:revert!important; writing-mode:rever=
t!important; zoom:revert!important">
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"background:revert!important; border:revert!important;=
 bottom:revert!important; color:revert!important; direction:revert!importan=
t; display:revert!important; font-size:revert!important; height:revert!impo=
rtant; letter-spacing:revert!important; line-height:revert!important; margi=
n:revert!important; opacity:revert!important; order:revert!important; outli=
ne:revert!important; overflow:revert!important; padding:revert!important; p=
osition:revert!important; tab-size:revert!important; table-layout:revert!im=
portant; text-align:revert!important; text-indent:revert!important; text-or=
ientation:revert!important; text-overflow:revert!important; text-transform:=
revert!important; top:revert!important; vertical-align:revert!important; vi=
sibility:revert!important; white-space:revert!important; width:revert!impor=
tant; word-break:revert!important; word-spacing:revert!important; writing-m=
ode:revert!important; zoom:revert!important; padding:7px 2px 7px 2px!import=
ant; background-color:#A6A6A6!important; width:0px!important">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"background:revert!important; bord=
er:revert!important; bottom:revert!important; color:revert!important; direc=
tion:revert!important; display:revert!important; font-size:revert!important=
; height:revert!important; letter-spacing:revert!important; line-height:rev=
ert!important; margin:revert!important; opacity:revert!important; order:rev=
ert!important; outline:revert!important; overflow:revert!important; padding=
:revert!important; position:revert!important; tab-size:revert!important; ta=
ble-layout:revert!important; text-align:revert!important; text-indent:rever=
t!important; text-orientation:revert!important; text-overflow:revert!import=
ant; text-transform:revert!important; top:revert!important; vertical-align:=
revert!important; visibility:revert!important; white-space:revert!important=
; width:revert!important; word-break:revert!important; word-spacing:revert!=
important; writing-mode:revert!important; zoom:revert!important; width:100%=
!important; background-color:#EAEAEA!important; padding:7px 5px 7px 15px!im=
portant; font-family:wf_segoe-ui_normal,Segoe UI,Segoe WP,Tahoma,Arial,sans=
-serif!important; font-size:12px!important; font-weight:normal!important; c=
olor:#212121!important; text-align:left!important; word-wrap:break-word!imp=
ortant">
<div style=3D"background:revert!important; border:revert!important; bottom:=
revert!important; color:revert!important; direction:revert!important; displ=
ay:revert!important; font-size:revert!important; height:revert!important; l=
etter-spacing:revert!important; line-height:revert!important; margin:revert=
!important; opacity:revert!important; order:revert!important; outline:rever=
t!important; overflow:revert!important; padding:revert!important; position:=
revert!important; tab-size:revert!important; table-layout:revert!important;=
 text-align:revert!important; text-indent:revert!important; text-orientatio=
n:revert!important; text-overflow:revert!important; text-transform:revert!i=
mportant; top:revert!important; vertical-align:revert!important; visibility=
:revert!important; white-space:revert!important; width:revert!important; wo=
rd-break:revert!important; word-spacing:revert!important; writing-mode:reve=
rt!important; zoom:revert!important">
You don't often get email from kbeal=3Declipticenterprises.com@lists.yoctop=
roject.org.
<a href=3D"https://aka.ms/LearnAboutSenderIdentification" style=3D"backgrou=
nd:revert!important; color:revert!important; direction:revert!important; di=
splay:revert!important; font-size:revert!important; opacity:revert!importan=
t; visibility:revert!important">
Learn why this is important</a> </div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"background:revert!i=
mportant; border:revert!important; bottom:revert!important; color:revert!im=
portant; direction:revert!important; display:revert!important; font-size:re=
vert!important; height:revert!important; letter-spacing:revert!important; l=
ine-height:revert!important; margin:revert!important; opacity:revert!import=
ant; order:revert!important; outline:revert!important; overflow:revert!impo=
rtant; padding:revert!important; position:revert!important; tab-size:revert=
!important; table-layout:revert!important; text-align:revert!important; tex=
t-indent:revert!important; text-orientation:revert!important; text-overflow=
:revert!important; text-transform:revert!important; top:revert!important; v=
ertical-align:revert!important; visibility:revert!important; white-space:re=
vert!important; width:revert!important; word-break:revert!important; word-s=
pacing:revert!important; writing-mode:revert!important; zoom:revert!importa=
nt; width:75px!important; background-color:#EAEAEA!important; padding:7px 5=
px 7px 5px!important; font-family:wf_segoe-ui_normal,Segoe UI,Segoe WP,Taho=
ma,Arial,sans-serif!important; font-size:12px!important; font-weight:normal=
!important; color:#212121!important; text-align:left!important; word-wrap:b=
reak-word!important">
</td>
</tr>
</tbody>
</table>
<div>
<p style=3D"border:1px; border-style:solid; border-color:#FFCACA; backgroun=
d-color:#FFCACA; padding:1em">
<span style=3D"font-size:12.0pt; color:black"><b>[EXTERNAL EMAIL]</span></b=
> <span style=3D"font-size:10.0pt; color:black">
DO NOT CLICK links or attachments unless you recognize the sender and know =
the content is safe.</span></p>
<div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:11pt; color:=
rgb(0,0,0)">
Alex,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:11pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:11pt; color:=
rgb(0,0,0)">
Thank you very much.<br>
I should have figured I wasn't the only one who needs those in Yocto.<br>
The Debian libparted-dev package has header files, how do I get those insta=
lled?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:11pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:11pt; color:=
rgb(0,0,0)">
Keith</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Alexander Kanavin &=
lt;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, February 11, 2025 10:49 AM<br>
<b>To:</b> Keith Beal [US] &lt;kbeal@eclipticenterprises.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; skandigraun@gmail.com &lt;skandigraun@gmail.com&gt;; r@cmss.com &lt;r@cm=
ss.com&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">[EXTERNAL EMAIL] DO NOT CLICK links or attachmen=
ts unless you recognize the sender and know the content is safe.<br>
<br>
On Tue, 11 Feb 2025 at 19:44, Keith Beal [US]<br>
&lt;kbeal@eclipticenterprises.com&gt; wrote:<br>
&gt;<br>
&gt; I know there is a parted recipe.<br>
&gt; I need the equivalent of the Ubuntu package libprated-dev.<br>
&gt; This is the library and header files for using the functions used by p=
arted.<br>
<br>
The parted recipe builds and packages libparted as well, it's just all<br>
placed together into one package with the executables (also called<br>
parted). Headers and pkgconfig files are in parted-dev package.<br>
<br>
So you can simply use those packages and ignore that they also come<br>
with executables.<br>
<br>
Alex<br>
</div>
</span></font></div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam=99 <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
www.EclipticEnterprises.com <br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</div>
</div>
</div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam=99 <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
www.EclipticEnterprises.com <br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</body>
</html>

--_000_BN0P110MB1915DADB5511579F063D9DA2BFFDABN0P110MB1915NAMP_--

