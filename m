Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6838.1583887153136361284
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 17:39:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@msn.com header.s=selector1 header.b=ccRwiloh;
 spf=softfail (domain: msn.com, ip: 140.211.169.56, mailfrom: cashtrevor@msn.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEBAEE0181A; Tue, 10 Mar 2020 17:39:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (cashtrevor[at]msn.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.92.20.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11olkn2073.outbound.protection.outlook.com [40.92.20.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 680FCE01818
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2020 17:39:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRPvxlFTePtLEZXexu+bNALmKdoLTc7BF1bkimMFRNu/CsPmJa5n4qN7we1Xf7gnnqGrUPST/6Zzto8FQ2Hdo+8bi2Jjuq+X9lPQ2BWxnxi7ZN3YdxtLj70sOLwWpXvqU7oNI8yHSSmnJ7Vlw0wd6JC8mNYFs0UtrbMOSazhStwk818JmWfIIdJRXno0ZDfrYplXZvF/V8uXUj1n991LNN1OJrXXtn0D5WUl1gMoLYdiDrH6NKU7JVUVGI0b8teFNsLgbI13s+UYpC2HNBn0k8GifCxW1+/Homnbh0wWRYHTa4VYR8P/d1d4JTtwjKHZYAqGln3gV9fnMgLDbdzfNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=42+/XkLqn8PTZ4TKL7pAQE3bJJ2Ga97lvQtDu6QhslI=;
 b=UoagRpR3ycrcwivhkl5Uf7jCK8WDBbFT8kxa7q8ll1jgS02+cN9SZ5lKDRy0rHg7PtXu8iNxtiAgO4Qc6iRn0sYsoZUnSPXM8WV7jbHY/C9HWmWHVsG+yJUQgAnz/AQU5go+K0iFkNJ748YQi2wJUw167vbLf6KFmsXKCbfNC2dU/k+m8vPVj9nnFDgYFmVGiwkFL1z5kywqYa1Ht9JiUCrQu3dqRA0BDZoxlMfA2co3Qa8jIEKTwS578bz19TYDcFIUbrilMfNVdQFBRn1gC8AMVKAD3MiiQpuiNvQCLP6MRtVJUJEcu8Ei+IxYjUyijhYO0mOCpKpxVk4ZRZMLEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=42+/XkLqn8PTZ4TKL7pAQE3bJJ2Ga97lvQtDu6QhslI=;
 b=ccRwilohb+6imZSptluLC42nEu6xrnzwOHvJtayjY0vTVic9OASx+iEiCOOUASBbGHG2iwIzyKYgV8Y4cN2g+eLnSMy+QrNhKcMVEstDNfOVqiqBRbXdy9JL8lcSLIi9L/jt+ckgjDGZzIcuLOvpL6lbv9yn84wTQKXcHFyUi79D30Wz2W+HwYfQSHWoAtrH9EQdMlWvWYpD+ca3qiJCgzPdTeFXylVc76uavdRTguVptWGVRKH3Gcd38VkjWhP/neU9GDRwm4hDJ4QMg33BXti0YRbtWuv1k+i2gYg82r52KkynreSU/Yh44andd8gK81//q0lLTBVud6CkDbLY2g==
Received: from CO1NAM11FT008.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::38) by
 CO1NAM11HT227.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::179)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.11; Wed, 11 Mar
 2020 00:39:09 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (10.13.174.59) by
 CO1NAM11FT008.mail.protection.outlook.com (10.13.175.191) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Wed, 11 Mar 2020 00:39:09 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8%5]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 00:39:09 +0000
From: "Trevor" <cashtrevor@msn.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Uboot NetBoot IMX8
Thread-Topic: Uboot NetBoot IMX8
Thread-Index: AQHV9zw24cLkj+4cIUa9Ywzcshfwgg==
Date: Wed, 11 Mar 2020 00:39:09 +0000
Message-ID: 
 <CH2PR13MB33689C78CFAB378C4CB7011CD4FC0@CH2PR13MB3368.namprd13.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:0891A0C90C02817ABCA12FAF12145D97AF3EB2C9CC0621B8981E3230FC82B690;UpperCasedChecksum:C5A1D478760FBD83D9E7584E53D0E8C5A8D28B9DBF9861742F414DB1F76595CF;SizeAsReceived:6791;Count:42
x-tmn: [AXnCXuQmWSnu/NyRJ3+QAr8hictCkBuCwQwyfZKSAOHvSy/cSC9kGzNvs/nBu57t]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 68e91225-aa93-4ab1-2f42-08d7c5549cea
x-ms-traffictypediagnostic: CO1NAM11HT227:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QlVUrIfe9gnW7AJCRq6OfZU/pXWnHj6n9UdUdy8axOAvIPaZ3OXXBqk+8qE+ENFjYBzzlG7J9c8qwdTscYKULlZjlxdDu7szk2hbkh81hiPnjYFRZO1SKVvwpEYkY+FJtLm6pv+n5t2OGamSgmrZtR0s9iMW8kS4aBjGHaNdOOFKI5UY7BqaX7ThhL8xeYuXuTIZOiFVJG5AxxIF4JqhNmuhkox/efSgq4WKZxn2vFk=
x-ms-exchange-antispam-messagedata: 
 sYzypsqnDVYkMHqiJNNs9F+8Qsz1GYtF5TeeYnVAbJww/O4ax0+coQ7i+jS4hw2Ut2hoaKNUScHcTgfAN0TmCFJJ61KPjzB0Gr5AhMYPjMOwmkaTmFBdnH5890+JFKBHxzb1OZnqmji3QvYsB+xX9w0/+xNVYkKqxqO+u1jUw1ZWn8ugL7Z82lNzdKIWxHKoTJxWAYoLl4YPaYE+YwpNLQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 68e91225-aa93-4ab1-2f42-08d7c5549cea
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 00:39:09.5852
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT227
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH2PR13MB33689C78CFAB378C4CB7011CD4FC0CH2PR13MB3368namp_"

--_000_CH2PR13MB33689C78CFAB378C4CB7011CD4FC0CH2PR13MB3368namp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Community,


I am trying to get an IMX8 board from TechNexion to boot using the netboot =
command from within uboot.  (IE mounting the filesystem remotely)


I have configured tftp and the NFS server and initially things seem to be w=
orking: the board boots, starts the kernel that was grabbed using tftp, and=
 then starts using the remote filesystem.


Then the following kernel error messages are produced:




...
.....
[  OK  ] Started udev Wait for Complete Device Initialization.
[  OK  ] Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
         Mounting Kernel Debug File System...
         Mounting FUSE Control File System...
         Mounting Kernel Configuration File System...
         Starting Remount Root and Kernel File Systems...
         Mounting Temporary Directory (/tmp)...
         Mounting POSIX Message Queue File System...
         Mounting Huge Pages File System...
[  OK  ] Created slice system-systemd\x2dbacklight.slice.
[FAILED] Failed to mount Kernel Debug File System.
See 'systemctl status sys-kernel-debug.mount' for details.
[FAILED] Failed to mount FUSE Control File System.
See 'systemctl status sys-fs-fuse-connections.mount' for details.
[FAILED] Failed to mount Kernel Configuration File System.
See 'systemctl status sys-kernel-config.mount' for details.
[FAILED] Failed to start Remount Root and Kernel File Systems.
See 'systemctl status systemd-remount-fs.service' for details.
[FAILED] Failed to mount Temporary Directory (/tmp).
.....
...


systemctl status sys-kernel-debug.mount gives:




..
[[0;1;31m=1B$B!|=1B(B[[0m sys-kernel-debug.mount - Kernel Debug File System
   Loaded: loaded (/lib/systemd/system/sys-kernel-debug.mount; static; vend=
or pr
eset: enabled)
   Active: [[0;1;31mfailed[[0m (Result: exit-code) since Wed 2020-03-11 00:=
21:16
 UTC; 12min ago
    Where: /sys/kernel/debug
     What: debugfs
     Docs: https://www.kernel.org/doc/Documentation/filesystems/debugfs.txt
           https://www.freedesktop.org/wiki/Software/systemd/APIFileSystems
  Process: 2611 ExecMount=3D/bin/mount debugfs /sys/kernel/debug -t debugfs=
 [[0;1;
31m(code=3Dexited, status=3D1/FAILURE)[[0m

Mar 11 00:21:16 b2qt-b9-imx8mq systemd[1]: Mounting Kernel Debug File Syste=
m...
Mar 11 00:21:16 b2qt-b9-imx8mq mount[2611]: mount: only root can use "--typ=
es" o
ption (effective UID is 1000)
Mar 11 00:21:16 b2qt-b9-imx8mq systemd[1]: [[0;1;39m[[0;1;31m[[0;1;39msys-k=
ernel
-debug.mount: Mount process exited, code=3Dexited status=3D1[[0m
Mar 11 00:21:16 b2qt-b9-imx8mq systemd[1]: [[0;1;39m[[0;1;31m[[0;1;39msys-k=
ernel
-debug.mount: Failed with result 'exit-code'.[[0m
Mar 11 00:21:16 b2qt-b9-imx8mq systemd[1]: [[0;1;31m[[0;1;39m[[0;1;31mFaile=
d to
mount Kernel Debug File System.
..




The mount error seems prevalent across all the errors.  somehow UID is 1000=
 when it should be 0 during boot?



On the Host side, here are the /etc/exports options for NFS:
 *(rw,sync,insecure,no_subtree_check,no_root_squash)




Any help would be greatly appreciated,


Thanks,

Trevor

[X]

--_000_CH2PR13MB33689C78CFAB378C4CB7011CD4FC0CH2PR13MB3368namp_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hello Yocto Community,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I am trying to get an IMX8 board from TechNexion to boot using the netboot =
command from within uboot.&nbsp; (IE mounting the filesystem remotely)</div=
>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I have configured tftp and the NFS server and initially things seem to be w=
orking: the board boots, starts the kernel that was grabbed using tftp, and=
 then starts using the remote filesystem.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Then the following kernel error messages are produced:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
...</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
.....</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>[ &nbsp;OK &nbsp;] Started udev Wait for Complete Device Initializati=
on.</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>[ &nbsp;OK &nbsp;] Listening on Load/Save RF Kill Switch Status /dev/r=
fkill Watch.</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting Kernel Debug File System...=
</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting FUSE Control File System...=
</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting Kernel Configuration File S=
ystem...</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starting Remount Root and Kernel Fil=
e Systems...</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting Temporary Directory (/tmp).=
..</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting POSIX Message Queue File Sy=
stem...</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mounting Huge Pages File System...</=
div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>[ &nbsp;OK &nbsp;] Created slice system-systemd\x2dbacklight.slice.</d=
iv>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>[FAILED] Failed to mount Kernel Debug File System.</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>See 'systemctl status sys-kernel-debug.mount' for details.</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>[FAILED] Failed to mount FUSE Control File System.</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>See 'systemctl status sys-fs-fuse-connections.mount' for details.</div=
>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>[FAILED] Failed to mount Kernel Configuration File System.</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>See 'systemctl status sys-kernel-config.mount' for details.</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>[FAILED] Failed to start Remount Root and Kernel File Systems.</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>See 'systemctl status systemd-remount-fs.service' for details.</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>[FAILED] Failed to mount Temporary Directory (/tmp).</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
.....</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
...</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span></span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important">systemctl status sys-ker=
nel-debug.mount gives:</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important">..</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>[[0;1;31m=1B$B!|=1B(B[[0m sys-kernel-debug.mount - Kernel Debug File =
System</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp;Loaded: loaded (/lib/systemd/system/sys-kernel-debug.moun=
t; static; vendor pr</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>eset: enabled)</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp;Active: [[0;1;31mfailed[[0m (Result: exit-code) since Wed=
 2020-03-11 00:21:16</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp;UTC; 12min ago</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; Where: /sys/kernel/debug</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp;What: debugfs</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp;Docs: https://www.kernel.org/doc/Documentation/fil=
esystems/debugfs.txt</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;https://www.freedesktop.org/w=
iki/Software/systemd/APIFileSystems</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>&nbsp; Process: 2611 ExecMount=3D/bin/mount debugfs /sys/kernel/debug =
-t debugfs [[0;1;</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>31m(code=3Dexited, status=3D1/FAILURE)[[0m</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div><br>
</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>Mar 11 00:21:16 b2qt-b9-imx8mq systemd[1]: Mounting Kernel Debug File =
System...</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div><b>Mar 11 00:21:16 b2qt-b9-imx8mq mount[2611]: mount: only root can us=
e &quot;--types&quot; o</b></div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div><b>ption (effective UID is 1000)</b></div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>Mar 11 00:21:16 b2qt-b9-imx8mq systemd[1]: [[0;1;39m[[0;1;31m[[0;1;39m=
sys-kernel</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>-debug.mount: Mount process exited, code=3Dexited status=3D1[[0m</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>Mar 11 00:21:16 b2qt-b9-imx8mq systemd[1]: [[0;1;39m[[0;1;31m[[0;1;39m=
sys-kernel</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>-debug.mount: Failed with result 'exit-code'.[[0m</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>Mar 11 00:21:16 b2qt-b9-imx8mq systemd[1]: [[0;1;31m[[0;1;39m[[0;1;31m=
Failed to</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>mount Kernel Debug File System.</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
..</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
The mount error seems prevalent across all the errors.&nbsp; somehow UID is=
 1000 when it should be 0 during boot?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
On the Host side, here are the /etc/exports options for NFS:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
&nbsp;*(rw,sync,insecure,no_subtree_check,no_root_squash)<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Any help would be greatly appreciated,&nbsp;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,</div>
<div id=3D"Signature">
<div></div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple=
 Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI=
 Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0px; margin-bottom:0px">Trevor</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><img><br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_CH2PR13MB33689C78CFAB378C4CB7011CD4FC0CH2PR13MB3368namp_--
