Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1425EECAAD8
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 12:21:12 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (NAM12-DM6-obe.outbound.protection.outlook.com [40.92.22.108])
 by mx.groups.io with SMTP id smtpd.web09.5595.1663762869701193031
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:21:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=r2F43S1o;
 spf=pass (domain: hotmail.com, ip: 40.92.22.108,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cw2rX6k86CoIxRLCX2DHaDjta9XaCL86z0Rs9yN7bpJH7xtLubXIhQcjcQ1Wbwn148Wta2zvct/9iaFbc1wiGFvpEgG/YeEV16w7Ag2p1pPf215CdiN+C9HvxIOll3MIAAswUXstJlUwh2i7r7JN7ZY67oEydSq8cnBxFFEp+29TPTO3kIrmvhv8P3210/Z4hHVrxeUfsFs5vx527mdt9JzVqaty7Pl2dolypgpJY1ugTaJZxoOAUzrvf+voDol8ydEgGPbnqUnUSd+J8m5WCQbi2OPp1k/YcSEVp+YSwQdU88t6Y9MvIjBQfktL7ks/XdzA0EGSUL9fu37ayKRgIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qj7gwnv1bZ9gii0z9JNz5rh3+on0VhGT0AQfZ7UWmm8=;
 b=HPkBnkGVwksE1lVJTVyl4IxA6veQEhng0Y2DztPQnIhlqvXHT01EzKrPoCRZj0g5O+TmItRSXvzvTdSZBl0bCybYDYMzYLcBMedD7ejn7Xhug4N/tETjmppx+PSLWvpF/fyRPldSWxxiBzLtjkoL9VO3IZpk6S33JEEsIl+UyzIk1qYE9ob7e3yakR3rfJSbNBoKccssPeNP2diIVjrT5/L1kk2prZUPLoFm6wEJJAVosiYuYM5nK+Julg+dVEok0cnJlSBh+qYr4ZOR9HnJzCkq8P6mURTNaW/XpD0V2MNFPAuuRBb1p4u+iHL29lMz/+A1pOnAhQL87IlJa34TOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qj7gwnv1bZ9gii0z9JNz5rh3+on0VhGT0AQfZ7UWmm8=;
 b=r2F43S1oBt+jwAb6Ln/rxazuF/3e7MIzdxWmfQlMWDtqnkGL/lvumeVezcWdlpMZmIsph6xBWC5SyB9rWPJSiy7QGSrEZ4W8TF9f6ZUL9+WxHYT7Seky3ic9TsctqMNm7dfySsE8Zkh1jQeyNDkUoj50/LqFp+3MYbI96c/YWwPblzG6TSk5d3BjbPVEHp7XijQgaN2y336gwWW5CuBl2HQDQ7scIOpO/s3EBKLjguRl8sJadZLXpm3iuotkfWBQ7Cb6/3nSX4LHfGEtkXP74iwGWXkdM/erFovj78fFxCa85xNNCeVRt1QqUIofYbsNVxT9yDHuNPBY5x25QZkynA==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:152::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Wed, 21 Sep
 2022 12:21:07 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 12:21:07 +0000
Date: Wed, 21 Sep 2022 14:21:00 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Markus Volk <f_l_k@t-online.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj_LvAnPgrVgQsu2WcTa4R-Fyy84TTTSSzXJLseKGDB+KQ@mail.gmail.com>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <P5UGIR.ETKUECS9HZXY1@t-online.de>
 <PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
 <PH0PR84MB183510DD06DC37C976C8ABFEC74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_ESNarHT2TjhUuoU97XbdeQcBGg-s6ki_sRusWcDbOcA@mail.gmail.com>
 <PH0PR84MB1835958E697521CC93766B80C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_LvAnPgrVgQsu2WcTa4R-Fyy84TTTSSzXJLseKGDB+KQ@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835F5FCA18A0C527042E5E6C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----54C3BLT7CP9WN8SOGRC34Z2VIYMYX0
Content-Transfer-Encoding: 7bit
X-TMN: [SXwVWM/5QeDKvfWCOr/XIGeXb62QGsvl]
X-ClientProxiedBy: FR0P281CA0150.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::8) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <36A74342-78D4-4BD0-83E1-C46F446C0A39@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH7PR84MB1679:EE_
X-MS-Office365-Filtering-Correlation-Id: 58427ea4-1eee-4e60-9e7a-08da9bcbc289
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tFDdgtG4iF0+0JYAHGUM7yF/T0lvwRaiXUL0pvJ9roas34lLkzJ6Kwc+5B0kDPi8bTu1r5G2cS5zPU/CNtMhr9LuDktSBR/sAn3VTkxXewwc8n5RMQ1JGgZ5xFW3jdzarFBbOQqAuYnqD/2vVSCg8cOpQrLY/E4xZE8IXZqNQTN0w8qOlQxdj5t/35mR1a8rv3Ay+McxZRfyS3JmxfsR86WzsD3IAFrv7f+RRL2u28w/ohj829nt8AHMfYrLL53yAb7s/dRuhuJR1e9uVp/Pei5NPRElCqX8wMQgkxkiSDy63ZuL2qf5ok0xJOJzl5Lm+Gms6MkOI4Vwt1xTnfwSlH2dty3W94KBI4nDQyPHM70q4Ehy/mcXCIp85byzK37RrijOakaEiJe3YBCya46ajlCKRPxKMZNL2kTLW8OQ+buGJaHRgxw5YDDMgr0jzUxA3bngpGlg55A6LxCxQIA6FS+UJVCn56xfc+8faVMFIudbVeJsxS6ISE2FrZgjN4X37U3NME8V5wAt4Rg9pC20dMs362a2yrS/myyMpfFK2uukK67w5vYLfSthHUK8LpDdiWMw41qy5d9we1zVy4MqpIE349d1nrllKCz0swWSC3FpXrf4ccl6bgmkB1OK7hA8Ii4dLvUTSB0Qk2JCvBxqB6zx0nXOADe6m4XeaGkrow9q15yrdXP3HjnPZu0v/+na0gf+lQ5aOIaU48R36VyJkw==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ajdoQ2E2d3krN3VYZVFuRHlUejNFSXVMekdmZVNvU0Fwc1dWeXRJb1Y3S2dF?=
 =?utf-8?B?QlgzeWNwVmxVdnVpd0NNcFhjbUJnUUNzUmsvRisvM1FWcDg4R25CWXhsbzN4?=
 =?utf-8?B?R2pCUmN4VmJOUmtaUWFmMldNS0NKbi9GcktGS3IvTjZwM0c1U3lJV3dBa2pq?=
 =?utf-8?B?RnhmSndSOXVNNENnKzhGRUFPdndHSDRBUytadlAwcmlUbll2QXpMY3BEcVN4?=
 =?utf-8?B?YlpmNytIcmRQNnZqVmNEY2NKZE9DTDB3R1ZQUFJid3FmTy9PYmdPRHZWV3lL?=
 =?utf-8?B?YXdUWVJqNVp6bzc3b0Zqck12WU5aN1lKRDBpck9KYTBKbzI0L2ZxNVdkUjda?=
 =?utf-8?B?Z1JKbGtBWXoxNEQ3dTZ0dXFtVjdGem4xVG1QVjRyYzFQa251S3hFQ08yYUZq?=
 =?utf-8?B?MDdoYmN5WWxwaWJNM2trR1VwWlpQR25QMERIWFJzdHUxUU9WOGt5ekhDY2RQ?=
 =?utf-8?B?dW9jbHV0aFFOeW5nRFgzR21NL3RrNmNKZzh2VFoyc3FHZTVjM2VxN0dMQmpt?=
 =?utf-8?B?cUc0a0tzSjUvOXlvdHI1WjJyTjZLZXdqT3o3NVJ3UTA0QTZETGtabm9mM3ZB?=
 =?utf-8?B?dzJJaXp0N2VmM1d4MldPZklmUVBYNXNUVlMrU2VoS3BHVFhrVTJwcmU5a1Yx?=
 =?utf-8?B?ZkRVVW14akhzL2h0OGdxTVNKckFIeENwaG0yMXVobnJYMWI3SkovNnF3S3Bn?=
 =?utf-8?B?RTFsajkwQ2g3R3ZsdjRzZHZIVkNXVmJncEgwa2FtajNmVHA5bmJTT05mSkhX?=
 =?utf-8?B?RHJEQkNicFZaZUF0TFN2K0FBSHpiV0tEc0dRSkErV3k4ODZ0WmJJa0NiVzVv?=
 =?utf-8?B?Ujd3MlB1NXFHdGw5aUcyK2JNNjhJTlVvY1lzVnJNbldERWZKcVMxclUrcWhk?=
 =?utf-8?B?dW9Hc1lTVC9RSFY0WlFCV2dtMHNjQmxBYjBLYmIzdWcrYmJsTTJQMFFEZFBy?=
 =?utf-8?B?d3pnbWdOdXZmQmIwd3k3Z2hiWDJEZDRHNzQ4cmdzYW52YzRGdXlEODVQd0Rr?=
 =?utf-8?B?eXIrNzduY0c2WlRMSFZ4MUpFSXE2TnFnNHpnZ3hTSFA5c3VkcW5jSjNCOXpx?=
 =?utf-8?B?b0Y5NFVtWUFJN01ZcHM1ekRKaTkrdDBnclVMVFVwSnBBVGZXYzNRYzJ5RXNr?=
 =?utf-8?B?SXJZNnVTSUcwZFpUZlhseXBwR2hpYzk4RlZ6Vmkvcm9XRy9WVHg0TTZIa2Fu?=
 =?utf-8?B?VkF3aXB3SjBkZVlUL000a1dRbmFWODBld1h0eHpZMG1wb1ZYNHM1WlBOOUZH?=
 =?utf-8?B?UzIzaVljUG45RWgwV1dIMTlQbGExeXYvSC9JZ1YzYjZRcTZTM3B3VkJZVHVw?=
 =?utf-8?B?OVZYNmF2M3RRbGtrMEt4OXNUY1RYZFpmUFdxTkR5c0M5Vk5aRzJCWkRNNC9r?=
 =?utf-8?B?czZpamQyMmYyaG84elpCZ095REVyWXBLRTl3bVJkbitibnFEQytyVmFHZUYr?=
 =?utf-8?B?Z1dZSlo1NytYQmg5NFRwQ2dDVER0U1lSWjAvdDBsMWo0em1qZHlJZXcwUGY2?=
 =?utf-8?B?em5GU0FCSVQ3SHZhbWZSTGNTbmlFQVpaN0t6UTd6c1l1cTJDbW8ranRSK3oy?=
 =?utf-8?B?cTZ5N1ZIWGdVQldYVTloSnBqVUIwMTM4S3VRVGpuYm9jTHQrMTRldjV3ZzVz?=
 =?utf-8?B?NU91alNubGF4cjV2akVzUEdZOWkwQ2lQOXRQYUtwNVlsWStwcHhZNWZtMWNY?=
 =?utf-8?B?Rm1DRXhaS2I4YnZGRm9FS283MkNDYUp6RkJOSk9rQ3h5YUMyM3VySGF3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 58427ea4-1eee-4e60-9e7a-08da9bcbc289
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 12:21:07.4717
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR84MB1679
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 12:21:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58118

------54C3BLT7CP9WN8SOGRC34Z2VIYMYX0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Another logfile has this

ERROR: /media/user/SSD1TB/yoctoqemu/poky/meta/recipes-graphics/mesa/mesa-g=
l_22=2E0=2E0=2Ebb: Error during parse shell code, the last 5 lines are:
=C2=A0=C2=A0=C2=A0 bbnote Executing meson=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -D=
shared-glapi=3Denabled=C2=A0=C2=A0=C2=A0=C2=A0 -Dglx-read-only-text=3Dtrue=
=C2=A0=C2=A0=C2=A0=C2=A0 -Dplatforms=3D'x11'=C2=A0=C2=A0=C2=A0 -Ddri3=3Ddis=
abled=C2=A0 -Degl=3Ddisabled=C2=A0 -Delf-tls=3Dfalse=C2=A0 -Dgallium-driver=
s=3D''=C2=A0 -Dllvm=3Ddisabled -Dgbm=3Ddisabled=C2=A0 -Dgles1=3Ddisabled -D=
gles2=3Ddisabled -Dlmsensors=3Ddisabled -Dgallium-opencl=3Ddisabled -Dopenc=
l-spirv=3Dfalse -Dopengl=3Dtrue -Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -Dg=
allium-va=3Ddisabled -Dgallium-vdpau=3Ddisabled=C2=A0 -Dvulkan-drivers=3D's=
wrast=C2=A0 -Dgallium-xa=3Ddisabled -Dgallium-xvmc=3Ddisabled=2E=2E=2E
=C2=A0=C2=A0=C2=A0 if ! meson=C2=A0 --prefix /usr=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --buildtype pl=
ain=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --bindir bin=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sbindir sbin=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --datadir shar=
e=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --libdir lib=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --libexecdir libexec=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --includ=
edir include=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 --mandir share/man=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --infodir share/info=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --sysconfdir /etc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --localstatedir /var=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sharedsta=
tedir /com=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 --wrap-mode nodownload=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --native-file /media=
/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-=
gl/2_22=2E0=2E0-r0/meson=2Enative "/media/user/SSD1TB/yoctoqemu/poky/build-=
virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/mesa-22=2E0=2E0=
" "/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-li=
nux/mesa-gl/2_22=2E0=2E0-r0/build" --cross-file /media/user/SSD1TB/yoctoqem=
u/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/me=
son=2Ecross=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Dshared-glapi=3Denabled=C2=A0=C2=
=A0=C2=A0=C2=A0 -Dglx-read-only-text=3Dtrue=C2=A0=C2=A0=C2=A0=C2=A0 -Dplatf=
orms=3D'x11'=C2=A0=C2=A0=C2=A0 -Ddri3=3Ddisabled=C2=A0 -Degl=3Ddisabled=C2=
=A0 -Delf-tls=3Dfalse=C2=A0 -Dgallium-drivers=3D''=C2=A0 -Dllvm=3Ddisabled =
-Dgbm=3Ddisabled=C2=A0 -Dgles1=3Ddisabled -Dgles2=3Ddisabled -Dlmsensors=3D=
disabled -Dgallium-opencl=3Ddisabled -Dopencl-spirv=3Dfalse -Dopengl=3Dtrue=
 -Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -Dgallium-va=3Ddisabled -Dgallium-=
vdpau=3Ddisabled=C2=A0 -Dvulkan-drivers=3D'swrast=C2=A0 -Dgallium-xa=3Ddisa=
bled -Dgallium-xvmc=3Ddisabled; then
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bbfatal_log meson failed
=C2=A0=C2=A0=C2=A0 fi

ERROR: /media/user/SSD1TB/yoctoqemu/poky/meta/recipes-graphics/mesa/mesa_2=
2=2E0=2E0=2Ebb: Error during parse shell code, the last 5 lines are:
=C2=A0=C2=A0=C2=A0 bbnote Executing meson=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -D=
shared-glapi=3Denabled=C2=A0=C2=A0=C2=A0=C2=A0 -Dglx-read-only-text=3Dtrue=
=C2=A0=C2=A0=C2=A0=C2=A0 -Dplatforms=3D'wayland,x11'=C2=A0=C2=A0 -Ddri3=3De=
nabled -Degl=3Denabled -Delf-tls=3Dtrue -Dgallium-drivers=3Dswrast,virgl=C2=
=A0 -Dllvm=3Ddisabled -Dgbm=3Denabled -Dgles1=3Denabled -Dgles2=3Denabled -=
Dlmsensors=3Ddisabled -Dgallium-opencl=3Ddisabled -Dopencl-spirv=3Dfalse -D=
opengl=3Dtrue -Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -Dgallium-va=3Ddisabl=
ed -Dgallium-vdpau=3Ddisabled=C2=A0 -Dvulkan-drivers=3D'swrast=C2=A0 -Dgall=
ium-xa=3Ddisabled -Dgallium-xvmc=3Ddisabled=2E=2E=2E
=C2=A0=C2=A0=C2=A0 if ! meson=C2=A0 --prefix /media/user/SSD1TB/yoctoqemu/=
poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22=2E0=2E0-r0/recipe-s=
ysroot-native/usr=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 --buildtype plain=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --bindir bin=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --sbindir sbin=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 --datadir share=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --libdir lib=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --libexecdir libexec=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --includedir include=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --mandir sh=
are/man=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 --infodir share/info=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sysconfdir /media/user/S=
SD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22=2E0=
=2E0-r0/recipe-sysroot-native/etc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --localstatedir /media/user/SSD1=
TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22=2E0=2E=
0-r0/recipe-sysroot-native/var=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sharedstatedir /media/user/SSD1TB=
/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22=2E0=2E0-=
r0/recipe-sysroot-native/com=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --wrap-mode nodownload=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --=
native-file /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-l=
inux/mesa-native/2_22=2E0=2E0-r0/meson=2Enative "/media/user/SSD1TB/yoctoqe=
mu/poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22=2E0=2E0-r0/mesa-=
22=2E0=2E0" "/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-=
linux/mesa-native/2_22=2E0=2E0-r0/build"=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 -Dshared-glapi=3Denabled=C2=A0=C2=A0=C2=A0=C2=A0 -Dglx-read-only-text=
=3Dtrue=C2=A0=C2=A0=C2=A0=C2=A0 -Dplatforms=3D'wayland,x11'=C2=A0=C2=A0 -Dd=
ri3=3Denabled -Degl=3Denabled -Delf-tls=3Dtrue -Dgallium-drivers=3Dswrast,v=
irgl=C2=A0 -Dllvm=3Ddisabled -Dgbm=3Denabled -Dgles1=3Denabled -Dgles2=3Den=
abled -Dlmsensors=3Ddisabled -Dgallium-opencl=3Ddisabled -Dopencl-spirv=3Df=
alse -Dopengl=3Dtrue -Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -Dgallium-va=
=3Ddisabled -Dgallium-vdpau=3Ddisabled=C2=A0 -Dvulkan-drivers=3D'swrast=C2=
=A0 -Dgallium-xa=3Ddisabled -Dgallium-xvmc=3Ddisabled; then
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bbfatal_log meson failed
=C2=A0=C2=A0=C2=A0 fi

ERROR: Unable to parse /media/user/SSD1TB/yoctoqemu/poky/meta/recipes-grap=
hics/mesa/mesa-gl_22=2E0=2E0=2Ebb
Traceback (most recent call last):
=C2=A0 File "/media/user/SSD1TB/yoctoqemu/poky/bitbake/lib/bb/codeparser=
=2Epy", line 368, in ShellParser=2E_parse_shell(value=3D'=C2=A0=C2=A0=C2=A0=
 # Meson requires this to be \'bfd, \'lld\' or \'gold\' from 0=2E53 onwards=
\n=C2=A0=C2=A0=C2=A0 # https://github=2Ecom/mesonbuild/meson/commit/ef9aeb1=
88ea2bc7353e59916c18901cde90fa2b3\n=C2=A0=C2=A0=C2=A0 unset LD\n\n=C2=A0=C2=
=A0=C2=A0 # sstate=2Ebbclass no longer removes empty directories to avoid a=
 race (see\n=C2=A0=C2=A0=C2=A0 # commit 4f94d929 "sstate/staging: Handle di=
rectory creation race issue")=2E\n=C2=A0=C2=A0=C2=A0 # Unfortunately Python=
 apparently treats an empty egg-info directory as if\n=C2=A0=C2=A0=C2=A0 # =
the version it previously contained still exists and fails if a newer\n=C2=
=A0=C2=A0=C2=A0 # version is required, which Meson does=2E To avoid this, m=
ake sure there are\n=C2=A0=C2=A0=C2=A0 # no empty egg-info directories from=
 previous versions left behind=2E Ignore\n=C2=A0=C2=A0=C2=A0 # all errors f=
rom rmdir since the egg-info may be a file rather than a\n=C2=A0=C2=A0=C2=
=A0 # directory=2E\n=C2=A0=C2=A0=C2=A0 rmdir /media/user/SSD1TB/yoctoqemu/p=
oky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/recip=
e-sysroot-native/usr/lib/python3=2E10/site-packages/*=2Eegg-info 2>/dev/nul=
l || :\n\n=C2=A0=C2=A0=C2=A0 # Work around "Meson fails if /tmp is mounted =
with noexec #2972"\n=C2=A0=C2=A0=C2=A0 mkdir -p "/media/user/SSD1TB/yoctoqe=
mu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/b=
uild/meson-private/tmp"\n=C2=A0=C2=A0=C2=A0 export TMPDIR=3D"/media/user/SS=
D1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=
=2E0=2E0-r0/build/meson-private/tmp"\n=C2=A0=C2=A0=C2=A0 bbnote Executing m=
eson=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Dshared-glapi=3Denabled=C2=A0=C2=A0=C2=
=A0=C2=A0 -Dglx-read-only-text=3Dtrue=C2=A0=C2=A0=C2=A0=C2=A0 -Dplatforms=
=3D\'x11\'=C2=A0=C2=A0=C2=A0 -Ddri3=3Ddisabled=C2=A0 -Degl=3Ddisabled=C2=A0=
 -Delf-tls=3Dfalse=C2=A0 -Dgallium-drivers=3D\'\'=C2=A0 -Dllvm=3Ddisabled -=
Dgbm=3Ddisabled=C2=A0 -Dgles1=3Ddisabled -Dgles2=3Ddisabled -Dlmsensors=3Dd=
isabled -Dgallium-opencl=3Ddisabled -Dopencl-spirv=3Dfalse -Dopengl=3Dtrue =
-Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -Dgallium-va=3Ddisabled -Dgallium-v=
dpau=3Ddisabled=C2=A0 -Dvulkan-drivers=3D\'swrast=C2=A0 -Dgallium-xa=3Ddisa=
bled -Dgallium-xvmc=3Ddisabled=2E=2E=2E\n=C2=A0=C2=A0=C2=A0 if ! meson=C2=
=A0 --prefix /usr=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 --buildtype plain=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --bindir bin=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --sbindir sbin=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 --datadir share=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --libdir lib=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --libexecdir libexec=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --includedir include=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --mandir sh=
are/man=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 --infodir share/info=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sysconfdir /etc=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --localstatedir /var=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sharedstatedir /com=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --wrap-mode=
 nodownload=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 --native-file /media/user/SSD1TB/yoctoqemu/poky/build=
-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/meson=2Enative=
 "/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-lin=
ux/mesa-gl/2_22=2E0=2E0-r0/mesa-22=2E0=2E0" "/media/user/SSD1TB/yoctoqemu/p=
oky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/build=
" --cross-file /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/corte=
xa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/meson=2Ecross=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 -Dshared-glapi=3Denabled=C2=A0=C2=A0=C2=A0=C2=A0 -Dglx-read-only-=
text=3Dtrue=C2=A0=C2=A0=C2=A0=C2=A0 -Dplatforms=3D\'x11\'=C2=A0=C2=A0=C2=A0=
 -Ddri3=3Ddisabled=C2=A0 -Degl=3Ddisabled=C2=A0 -Delf-tls=3Dfalse=C2=A0 -Dg=
allium-drivers=3D\'\'=C2=A0 -Dllvm=3Ddisabled -Dgbm=3Ddisabled=C2=A0 -Dgles=
1=3Ddisabled -Dgles2=3Ddisabled -Dlmsensors=3Ddisabled -Dgallium-opencl=3Dd=
isabled -Dopencl-spirv=3Dfalse -Dopengl=3Dtrue -Dosmesa=3Dfalse -Dlibunwind=
=3Ddisabled -Dgallium-va=3Ddisabled -Dgallium-vdpau=3Ddisabled=C2=A0 -Dvulk=
an-drivers=3D\'swrast=C2=A0 -Dgallium-xa=3Ddisabled -Dgallium-xvmc=3Ddisabl=
ed; then\n=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bbfatal_log meson fail=
ed\n=C2=A0=C2=A0=C2=A0 fi\n'):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 t=
ry:
=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 tokens, _ =3D pyshyacc=2Eparse(value, eof=3DTrue, debug=3DFals=
e)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 e=
xcept Exception:
=C2=A0 File "/media/user/SSD1TB/yoctoqemu/poky/bitbake/lib/bb/pysh/pyshyac=
c=2Epy", line 677, in parse(input=3D'=C2=A0=C2=A0=C2=A0 # Meson requires th=
is to be \'bfd, \'lld\' or \'gold\' from 0=2E53 onwards\n=C2=A0=C2=A0=C2=A0=
 # https://github=2Ecom/mesonbuild/meson/commit/ef9aeb188ea2bc7353e59916c18=
901cde90fa2b3\n=C2=A0=C2=A0=C2=A0 unset LD\n\n=C2=A0=C2=A0=C2=A0 # sstate=
=2Ebbclass no longer removes empty directories to avoid a race (see\n=C2=A0=
=C2=A0=C2=A0 # commit 4f94d929 "sstate/staging: Handle directory creation r=
ace issue")=2E\n=C2=A0=C2=A0=C2=A0 # Unfortunately Python apparently treats=
 an empty egg-info directory as if\n=C2=A0=C2=A0=C2=A0 # the version it pre=
viously contained still exists and fails if a newer\n=C2=A0=C2=A0=C2=A0 # v=
ersion is required, which Meson does=2E To avoid this, make sure there are\=
n=C2=A0=C2=A0=C2=A0 # no empty egg-info directories from previous versions =
left behind=2E Ignore\n=C2=A0=C2=A0=C2=A0 # all errors from rmdir since the=
 egg-info may be a file rather than a\n=C2=A0=C2=A0=C2=A0 # directory=2E\n=
=C2=A0=C2=A0=C2=A0 rmdir /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/=
work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/recipe-sysroot-native/usr=
/lib/python3=2E10/site-packages/*=2Eegg-info 2>/dev/null || :\n\n=C2=A0=C2=
=A0=C2=A0 # Work around "Meson fails if /tmp is mounted with noexec #2972"\=
n=C2=A0=C2=A0=C2=A0 mkdir -p "/media/user/SSD1TB/yoctoqemu/poky/build-virgl=
/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/build/meson-private/=
tmp"\n=C2=A0=C2=A0=C2=A0 export TMPDIR=3D"/media/user/SSD1TB/yoctoqemu/poky=
/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/build/me=
son-private/tmp"\n=C2=A0=C2=A0=C2=A0 bbnote Executing meson=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 -Dshared-glapi=3Denabled=C2=A0=C2=A0=C2=A0=C2=A0 -Dglx-read=
-only-text=3Dtrue=C2=A0=C2=A0=C2=A0=C2=A0 -Dplatforms=3D\'x11\'=C2=A0=C2=A0=
=C2=A0 -Ddri3=3Ddisabled=C2=A0 -Degl=3Ddisabled=C2=A0 -Delf-tls=3Dfalse=C2=
=A0 -Dgallium-drivers=3D\'\'=C2=A0 -Dllvm=3Ddisabled -Dgbm=3Ddisabled=C2=A0=
 -Dgles1=3Ddisabled -Dgles2=3Ddisabled -Dlmsensors=3Ddisabled -Dgallium-ope=
ncl=3Ddisabled -Dopencl-spirv=3Dfalse -Dopengl=3Dtrue -Dosmesa=3Dfalse -Dli=
bunwind=3Ddisabled -Dgallium-va=3Ddisabled -Dgallium-vdpau=3Ddisabled=C2=A0=
 -Dvulkan-drivers=3D\'swrast=C2=A0 -Dgallium-xa=3Ddisabled -Dgallium-xvmc=
=3Ddisabled=2E=2E=2E\n=C2=A0=C2=A0=C2=A0 if ! meson=C2=A0 --prefix /usr=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --buildtype plain=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --bindir bin=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sbindir sbin=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --datadir share=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --libdir lib=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --libexecdir libe=
xec=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --includedir include=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --mandir share/man=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --=
infodir share/info=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 --sysconfdir /etc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --localstatedir /var=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 --sharedstatedir /com=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --wrap-mode nodownload=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --native-file /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/corte=
xa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/meson=2Enative "/media/user/SSD1TB/=
yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=
=2E0-r0/mesa-22=2E0=2E0" "/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp=
/work/cortexa57-poky-linux/mesa-gl/2_22=2E0=2E0-r0/build" --cross-file /med=
ia/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mes=
a-gl/2_22=2E0=2E0-r0/meson=2Ecross=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Dshared-g=
lapi=3Denabled=C2=A0=C2=A0=C2=A0=C2=A0 -Dglx-read-only-text=3Dtrue=C2=A0=C2=
=A0=C2=A0=C2=A0 -Dplatforms=3D\'x11\'=C2=A0=C2=A0=C2=A0 -Ddri3=3Ddisabled=
=C2=A0 -Degl=3Ddisabled=C2=A0 -Delf-tls=3Dfalse=C2=A0 -Dgallium-drivers=3D\=
'\'=C2=A0 -Dllvm=3Ddisabled -Dgbm=3Ddisabled=C2=A0 -Dgles1=3Ddisabled -Dgle=
s2=3Ddisabled -Dlmsensors=3Ddisabled -Dgallium-opencl=3Ddisabled -Dopencl-s=
pirv=3Dfalse -Dopengl=3Dtrue -Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -Dgall=
ium-va=3Ddisabled -Dgallium-vdpau=3Ddisabled=C2=A0 -Dvulkan-drivers=3D\'swr=
ast=C2=A0 -Dgallium-xa=3Ddisabled -Dgallium-xvmc=3Ddisabled; then\n=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bbfatal_log meson failed\n=C2=A0=C2=A0=
=C2=A0 fi\n', eof=3DTrue, debug=3DFalse):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 d=
ebug =3D 2
=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0 return yacc=2Eparse(lexer=3Dlexer, =
debug=3Ddebug), remaining
=C2=A0=C2=A0=C2=A0 =C2=A0
=C2=A0 File "/media/user/SSD1TB/yoctoqemu/poky/bitbake/lib/ply/yacc=2Epy",=
 line 267, in LRParser=2Eparse(input=3DNone, lexer=3D<bb=2Epysh=2Epyshlex=
=2EPLYLexer object at 0x7ff73b1ac0b8>, debug=3DFalse, tracking=3D0, tokenfu=
nc=3DNone):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 e=
lse:
=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return self=2Eparseopt_notrack(input,lexer,debug,tracking,toke=
nfunc)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0
=C2=A0 File "/media/user/SSD1TB/yoctoqemu/poky/bitbake/lib/ply/yacc=2Epy",=
 line 1049, in LRParser=2Eparseopt_notrack(input=3DNone, lexer=3D<bb=2Epysh=
=2Epyshlex=2EPLYLexer object at 0x7ff73b1ac0b8>, debug=3DFalse, tracking=3D=
0, tokenfunc=3DNone):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 errtoken=2Elexer =3D lexer
=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 tok =3D self=2Eerrorfunc(errtoken)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 del errok, token, restart=C2=A0=C2=A0 # Delete specia=
l functions
=C2=A0 File "/media/user/SSD1TB/yoctoqemu/poky/bitbake/lib/bb/pysh/pyshyac=
c=2Epy", line 650, in p_error(p=3DLexToken(Then,'then',0,0)):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 w=
('Unexpected EOF')
=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0 raise sherrors=2EShellSyntaxError('=
'=2Ejoin(msg))
=C2=A0=C2=A0=C2=A0 =C2=A0
bb=2Epysh=2Esherrors=2EShellSyntaxError: LexToken(Then,'then',0,0)
followed by:
=C2=A0 LexToken(NEWLINE,'\n',0,0)
=C2=A0 LexToken(TOKEN,'bbfatal_log',0,0)
=C2=A0 LexToken(TOKEN,'meson',0,0)
=C2=A0 LexToken(TOKEN,'failed',0,0)
=C2=A0 LexToken(NEWLINE,'\n',0,0)


ERROR: Parsing halted due to errors, see error messages above





Am 21=2E September 2022 14:14:10 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>This is not logs from mesa, this is logs from your image recipe=2E You
>need to start with mesa=2E
>
>Alex
>
>On Wed, 21 Sept 2022 at 14:12, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> One of the logs has this
>>
>>
>>
>> Error:
>>  Problem: package packagegroup-base-extended-1=2E0-r83=2Eqemuarm64 requ=
ires packagegroup-base, but none of the providers can be installed
>>   - package packagegroup-base-1=2E0-r83=2Eqemuarm64 requires packagegro=
up-distro-base, but none of the providers can be installed
>>   - conflicting requests
>>   - nothing provides mesa-vulkan-drivers needed by packagegroup-distro-=
base-1=2E0-r83=2Eqemuarm64
>> (try to add '--skip-broken' to skip uninstallable packages)
>>
>> Am 21=2E September 2022 13:57:17 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> You need to go to mesa's build directlory and inspect what is getting
>>> built, with which options, and how it is installed and packaged=2E All
>>> the needed bits are there, but it does take a bit of 'yocto skill' to
>>> find your way around there=2E Start by looking at temp/log=2Edo_config=
ure
>>> (and then do_compile and do_install)=2E
>>>
>>> Alex
>>>
>>> On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>>
>>>>  If I read the mesa-vulkan-drivers recipe right it should install lib=
vulkan_*=2Eso but it didnt I had to use vulkan-loader=2E Any idea in how to=
 debug that?
>>>>
>>>>  Am 20=2E September 2022 15:26:45 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>>>>
>>>>>
>>>>>  What often works is running it under strace - you might be able to =
see the one key syscall that causes the failure=2E Otherwise you might have=
 to go through the heavier gdb step through=2E
>>>>>
>>>>>  Alex
>>>>>
>>>>>  On Tue 20=2E Sep 2022 at 10=2E25, PHIL <heideggm@hotmail=2Ecom> wro=
te:
>>>>>>
>>>>>>
>>>>>>  Ok it seems to use Software now given how slow weston-simple-egl h=
as become=2E But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER=2E
>>>>>>  --
>>>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail g=
esendet=2E
>>>>
>>>>
>>>>  --
>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet=2E
>>
>> --
>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et=2E

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------54C3BLT7CP9WN8SOGRC34Z2VIYMYX0
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Another logfile has this<br><br>ERROR: /media/user/SSD1TB/yoctoq=
emu/poky/meta/recipes-graphics/mesa/mesa-gl_22.0.0.bb: Error during parse s=
hell code, the last 5 lines are:<br>&nbsp;&nbsp;&nbsp; bbnote Executing mes=
on&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Dshared-glapi=3Denabled&nbsp;&nbsp;&nbsp;=
&nbsp; -Dglx-read-only-text=3Dtrue&nbsp;&nbsp;&nbsp;&nbsp; -Dplatforms=3D'x=
11'&nbsp;&nbsp;&nbsp; -Ddri3=3Ddisabled&nbsp; -Degl=3Ddisabled&nbsp; -Delf-=
tls=3Dfalse&nbsp; -Dgallium-drivers=3D''&nbsp; -Dllvm=3Ddisabled -Dgbm=3Ddi=
sabled&nbsp; -Dgles1=3Ddisabled -Dgles2=3Ddisabled -Dlmsensors=3Ddisabled -=
Dgallium-opencl=3Ddisabled -Dopencl-spirv=3Dfalse -Dopengl=3Dtrue -Dosmesa=
=3Dfalse -Dlibunwind=3Ddisabled -Dgallium-va=3Ddisabled -Dgallium-vdpau=3Dd=
isabled&nbsp; -Dvulkan-drivers=3D'swrast&nbsp; -Dgallium-xa=3Ddisabled -Dga=
llium-xvmc=3Ddisabled...<br>&nbsp;&nbsp;&nbsp; if ! meson&nbsp; --prefix /u=
sr&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; --buildtype plain&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --bindir bin&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --sbindir sbin=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; --datadir share&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --libdir lib&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --libexecdir libex=
ec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; --includedir include&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --mandir share/man&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --inf=
odir share/info&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; --sysconfdir /etc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --localstatedir /var&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; --sharedstatedir /com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --wrap-mode nodownload&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --nat=
ive-file /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-p=
oky-linux/mesa-gl/2_22.0.0-r0/meson.native &quot;/media/user/SSD1TB/yoctoqe=
mu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22.0.0-r0/mesa-=
22.0.0&quot; &quot;/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/c=
ortexa57-poky-linux/mesa-gl/2_22.0.0-r0/build&quot; --cross-file /media/use=
r/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2=
_22.0.0-r0/meson.cross&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Dshared-glapi=3Denabl=
ed&nbsp;&nbsp;&nbsp;&nbsp; -Dglx-read-only-text=3Dtrue&nbsp;&nbsp;&nbsp;&nb=
sp; -Dplatforms=3D'x11'&nbsp;&nbsp;&nbsp; -Ddri3=3Ddisabled&nbsp; -Degl=3Dd=
isabled&nbsp; -Delf-tls=3Dfalse&nbsp; -Dgallium-drivers=3D''&nbsp; -Dllvm=
=3Ddisabled -Dgbm=3Ddisabled&nbsp; -Dgles1=3Ddisabled -Dgles2=3Ddisabled -D=
lmsensors=3Ddisabled -Dgallium-opencl=3Ddisabled -Dopencl-spirv=3Dfalse -Do=
pengl=3Dtrue -Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -Dgallium-va=3Ddisable=
d -Dgallium-vdpau=3Ddisabled&nbsp; -Dvulkan-drivers=3D'swrast&nbsp; -Dgalli=
um-xa=3Ddisabled -Dgallium-xvmc=3Ddisabled; then<br>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; bbfatal_log meson failed<br>&nbsp;&nbsp;&nbsp; fi<br><b=
r>ERROR: /media/user/SSD1TB/yoctoqemu/poky/meta/recipes-graphics/mesa/mesa_=
22.0.0.bb: Error during parse shell code, the last 5 lines are:<br>&nbsp;&n=
bsp;&nbsp; bbnote Executing meson&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Dshared-gl=
api=3Denabled&nbsp;&nbsp;&nbsp;&nbsp; -Dglx-read-only-text=3Dtrue&nbsp;&nbs=
p;&nbsp;&nbsp; -Dplatforms=3D'wayland,x11'&nbsp;&nbsp; -Ddri3=3Denabled -De=
gl=3Denabled -Delf-tls=3Dtrue -Dgallium-drivers=3Dswrast,virgl&nbsp; -Dllvm=
=3Ddisabled -Dgbm=3Denabled -Dgles1=3Denabled -Dgles2=3Denabled -Dlmsensors=
=3Ddisabled -Dgallium-opencl=3Ddisabled -Dopencl-spirv=3Dfalse -Dopengl=3Dt=
rue -Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -Dgallium-va=3Ddisabled -Dgalli=
um-vdpau=3Ddisabled&nbsp; -Dvulkan-drivers=3D'swrast&nbsp; -Dgallium-xa=3Dd=
isabled -Dgallium-xvmc=3Ddisabled...<br>&nbsp;&nbsp;&nbsp; if ! meson&nbsp;=
 --prefix /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-lin=
ux/mesa-native/2_22.0.0-r0/recipe-sysroot-native/usr&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --buildtype p=
lain&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; --bindir bin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --sbindir sbin&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --datadir share=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; --libdir lib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --libexecdir libexec&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --includedir =
include&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; --mandir share/man&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --infodir share/info&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
--sysconfdir /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-=
linux/mesa-native/2_22.0.0-r0/recipe-sysroot-native/etc&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --localsta=
tedir /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/m=
esa-native/2_22.0.0-r0/recipe-sysroot-native/var&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --sharedstatedir =
/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa-na=
tive/2_22.0.0-r0/recipe-sysroot-native/com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --wrap-mode nodownload&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; --native-file /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/wo=
rk/x86_64-linux/mesa-native/2_22.0.0-r0/meson.native &quot;/media/user/SSD1=
TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22.0.0-r0=
/mesa-22.0.0&quot; &quot;/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/=
work/x86_64-linux/mesa-native/2_22.0.0-r0/build&quot;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; -Dshared-glapi=3Denabled&nbsp;&nbsp;&nbsp;&nbsp; -Dglx-read-=
only-text=3Dtrue&nbsp;&nbsp;&nbsp;&nbsp; -Dplatforms=3D'wayland,x11'&nbsp;&=
nbsp; -Ddri3=3Denabled -Degl=3Denabled -Delf-tls=3Dtrue -Dgallium-drivers=
=3Dswrast,virgl&nbsp; -Dllvm=3Ddisabled -Dgbm=3Denabled -Dgles1=3Denabled -=
Dgles2=3Denabled -Dlmsensors=3Ddisabled -Dgallium-opencl=3Ddisabled -Dopenc=
l-spirv=3Dfalse -Dopengl=3Dtrue -Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -Dg=
allium-va=3Ddisabled -Dgallium-vdpau=3Ddisabled&nbsp; -Dvulkan-drivers=3D's=
wrast&nbsp; -Dgallium-xa=3Ddisabled -Dgallium-xvmc=3Ddisabled; then<br>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bbfatal_log meson failed<br>&nbsp;&n=
bsp;&nbsp; fi<br><br>ERROR: Unable to parse /media/user/SSD1TB/yoctoqemu/po=
ky/meta/recipes-graphics/mesa/mesa-gl_22.0.0.bb<br>Traceback (most recent c=
all last):<br>&nbsp; File &quot;/media/user/SSD1TB/yoctoqemu/poky/bitbake/l=
ib/bb/codeparser.py&quot;, line 368, in ShellParser._parse_shell(value=3D'&=
nbsp;&nbsp;&nbsp; # Meson requires this to be \'bfd, \'lld\' or \'gold\' fr=
om 0.53 onwards\n&nbsp;&nbsp;&nbsp; # <a href=3D"https://github.com/mesonbu=
ild/meson/commit/ef9aeb188ea2bc7353e59916c18901cde90fa2b3">https://github.c=
om/mesonbuild/meson/commit/ef9aeb188ea2bc7353e59916c18901cde90fa2b3</a>\n&n=
bsp;&nbsp;&nbsp; unset LD\n\n&nbsp;&nbsp;&nbsp; # sstate.bbclass no longer =
removes empty directories to avoid a race (see\n&nbsp;&nbsp;&nbsp; # commit=
 4f94d929 &quot;sstate/staging: Handle directory creation race issue&quot;)=
.\n&nbsp;&nbsp;&nbsp; # Unfortunately Python apparently treats an empty egg=
-info directory as if\n&nbsp;&nbsp;&nbsp; # the version it previously conta=
ined still exists and fails if a newer\n&nbsp;&nbsp;&nbsp; # version is req=
uired, which Meson does. To avoid this, make sure there are\n&nbsp;&nbsp;&n=
bsp; # no empty egg-info directories from previous versions left behind. Ig=
nore\n&nbsp;&nbsp;&nbsp; # all errors from rmdir since the egg-info may be =
a file rather than a\n&nbsp;&nbsp;&nbsp; # directory.\n&nbsp;&nbsp;&nbsp; r=
mdir /media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-=
linux/mesa-gl/2_22.0.0-r0/recipe-sysroot-native/usr/lib/python3.10/site-pac=
kages/*.egg-info 2&gt;/dev/null || :\n\n&nbsp;&nbsp;&nbsp; # Work around &q=
uot;Meson fails if /tmp is mounted with noexec #2972&quot;\n&nbsp;&nbsp;&nb=
sp; mkdir -p &quot;/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/c=
ortexa57-poky-linux/mesa-gl/2_22.0.0-r0/build/meson-private/tmp&quot;\n&nbs=
p;&nbsp;&nbsp; export TMPDIR=3D&quot;/media/user/SSD1TB/yoctoqemu/poky/buil=
d-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22.0.0-r0/build/meson-priva=
te/tmp&quot;\n&nbsp;&nbsp;&nbsp; bbnote Executing meson&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; -Dshared-glapi=3Denabled&nbsp;&nbsp;&nbsp;&nbsp; -Dglx-read-only=
-text=3Dtrue&nbsp;&nbsp;&nbsp;&nbsp; -Dplatforms=3D\'x11\'&nbsp;&nbsp;&nbsp=
; -Ddri3=3Ddisabled&nbsp; -Degl=3Ddisabled&nbsp; -Delf-tls=3Dfalse&nbsp; -D=
gallium-drivers=3D\'\'&nbsp; -Dllvm=3Ddisabled -Dgbm=3Ddisabled&nbsp; -Dgle=
s1=3Ddisabled -Dgles2=3Ddisabled -Dlmsensors=3Ddisabled -Dgallium-opencl=3D=
disabled -Dopencl-spirv=3Dfalse -Dopengl=3Dtrue -Dosmesa=3Dfalse -Dlibunwin=
d=3Ddisabled -Dgallium-va=3Ddisabled -Dgallium-vdpau=3Ddisabled&nbsp; -Dvul=
kan-drivers=3D\'swrast&nbsp; -Dgallium-xa=3Ddisabled -Dgallium-xvmc=3Ddisab=
led...\n&nbsp;&nbsp;&nbsp; if ! meson&nbsp; --prefix /usr&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --buildt=
ype plain&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; --bindir bin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --sbindir sbin&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --datadir =
share&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; --libdir lib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --libexecdir libexec&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --includ=
edir include&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; --mandir share/man&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --infodir share/info&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; --sysconfdir /etc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --localstatedir /var&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --sharedstate=
dir /com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; --wrap-mode nodownload&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --native-file /media/user=
/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_=
22.0.0-r0/meson.native &quot;/media/user/SSD1TB/yoctoqemu/poky/build-virgl/=
tmp/work/cortexa57-poky-linux/mesa-gl/2_22.0.0-r0/mesa-22.0.0&quot; &quot;/=
media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-linux/=
mesa-gl/2_22.0.0-r0/build&quot; --cross-file /media/user/SSD1TB/yoctoqemu/p=
oky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22.0.0-r0/meson.cro=
ss&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Dshared-glapi=3Denabled&nbsp;&nbsp;&nbsp;=
&nbsp; -Dglx-read-only-text=3Dtrue&nbsp;&nbsp;&nbsp;&nbsp; -Dplatforms=3D\'=
x11\'&nbsp;&nbsp;&nbsp; -Ddri3=3Ddisabled&nbsp; -Degl=3Ddisabled&nbsp; -Del=
f-tls=3Dfalse&nbsp; -Dgallium-drivers=3D\'\'&nbsp; -Dllvm=3Ddisabled -Dgbm=
=3Ddisabled&nbsp; -Dgles1=3Ddisabled -Dgles2=3Ddisabled -Dlmsensors=3Ddisab=
led -Dgallium-opencl=3Ddisabled -Dopencl-spirv=3Dfalse -Dopengl=3Dtrue -Dos=
mesa=3Dfalse -Dlibunwind=3Ddisabled -Dgallium-va=3Ddisabled -Dgallium-vdpau=
=3Ddisabled&nbsp; -Dvulkan-drivers=3D\'swrast&nbsp; -Dgallium-xa=3Ddisabled=
 -Dgallium-xvmc=3Ddisabled; then\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; bbfatal_log meson failed\n&nbsp;&nbsp;&nbsp; fi\n'):<br>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br>&nbsp;&nbsp=
;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; tokens, _ =3D pyshyacc.parse(value, eof=3DTrue, debug=3DFalse)<br>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except =
Exception:<br>&nbsp; File &quot;/media/user/SSD1TB/yoctoqemu/poky/bitbake/l=
ib/bb/pysh/pyshyacc.py&quot;, line 677, in parse(input=3D'&nbsp;&nbsp;&nbsp=
; # Meson requires this to be \'bfd, \'lld\' or \'gold\' from 0.53 onwards\=
n&nbsp;&nbsp;&nbsp; # <a href=3D"https://github.com/mesonbuild/meson/commit=
/ef9aeb188ea2bc7353e59916c18901cde90fa2b3">https://github.com/mesonbuild/me=
son/commit/ef9aeb188ea2bc7353e59916c18901cde90fa2b3</a>\n&nbsp;&nbsp;&nbsp;=
 unset LD\n\n&nbsp;&nbsp;&nbsp; # sstate.bbclass no longer removes empty di=
rectories to avoid a race (see\n&nbsp;&nbsp;&nbsp; # commit 4f94d929 &quot;=
sstate/staging: Handle directory creation race issue&quot;).\n&nbsp;&nbsp;&=
nbsp; # Unfortunately Python apparently treats an empty egg-info directory =
as if\n&nbsp;&nbsp;&nbsp; # the version it previously contained still exist=
s and fails if a newer\n&nbsp;&nbsp;&nbsp; # version is required, which Mes=
on does. To avoid this, make sure there are\n&nbsp;&nbsp;&nbsp; # no empty =
egg-info directories from previous versions left behind. Ignore\n&nbsp;&nbs=
p;&nbsp; # all errors from rmdir since the egg-info may be a file rather th=
an a\n&nbsp;&nbsp;&nbsp; # directory.\n&nbsp;&nbsp;&nbsp; rmdir /media/user=
/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_=
22.0.0-r0/recipe-sysroot-native/usr/lib/python3.10/site-packages/*.egg-info=
 2&gt;/dev/null || :\n\n&nbsp;&nbsp;&nbsp; # Work around &quot;Meson fails =
if /tmp is mounted with noexec #2972&quot;\n&nbsp;&nbsp;&nbsp; mkdir -p &qu=
ot;/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-li=
nux/mesa-gl/2_22.0.0-r0/build/meson-private/tmp&quot;\n&nbsp;&nbsp;&nbsp; e=
xport TMPDIR=3D&quot;/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work=
/cortexa57-poky-linux/mesa-gl/2_22.0.0-r0/build/meson-private/tmp&quot;\n&n=
bsp;&nbsp;&nbsp; bbnote Executing meson&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Dsha=
red-glapi=3Denabled&nbsp;&nbsp;&nbsp;&nbsp; -Dglx-read-only-text=3Dtrue&nbs=
p;&nbsp;&nbsp;&nbsp; -Dplatforms=3D\'x11\'&nbsp;&nbsp;&nbsp; -Ddri3=3Ddisab=
led&nbsp; -Degl=3Ddisabled&nbsp; -Delf-tls=3Dfalse&nbsp; -Dgallium-drivers=
=3D\'\'&nbsp; -Dllvm=3Ddisabled -Dgbm=3Ddisabled&nbsp; -Dgles1=3Ddisabled -=
Dgles2=3Ddisabled -Dlmsensors=3Ddisabled -Dgallium-opencl=3Ddisabled -Dopen=
cl-spirv=3Dfalse -Dopengl=3Dtrue -Dosmesa=3Dfalse -Dlibunwind=3Ddisabled -D=
gallium-va=3Ddisabled -Dgallium-vdpau=3Ddisabled&nbsp; -Dvulkan-drivers=3D\=
'swrast&nbsp; -Dgallium-xa=3Ddisabled -Dgallium-xvmc=3Ddisabled...\n&nbsp;&=
nbsp;&nbsp; if ! meson&nbsp; --prefix /usr&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --buildtype plain&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; --bindir bin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; --sbindir sbin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --datadir share&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
--libdir lib&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; --libexecdir libexec&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --includedir include&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; --mandir share/man&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --infodir share/info&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --sysconfd=
ir /etc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; --localstatedir /var&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --sharedstatedir /com&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; --wrap-mode nodownload&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --native-file /media/user/SSD1TB/yoctoqe=
mu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22.0.0-r0/meson=
.native &quot;/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/cortex=
a57-poky-linux/mesa-gl/2_22.0.0-r0/mesa-22.0.0&quot; &quot;/media/user/SSD1=
TB/yoctoqemu/poky/build-virgl/tmp/work/cortexa57-poky-linux/mesa-gl/2_22.0.=
0-r0/build&quot; --cross-file /media/user/SSD1TB/yoctoqemu/poky/build-virgl=
/tmp/work/cortexa57-poky-linux/mesa-gl/2_22.0.0-r0/meson.cross&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -Dshared-glapi=3Denabled&nbsp;&nbsp;&nbsp;&nbsp; -Dglx-re=
ad-only-text=3Dtrue&nbsp;&nbsp;&nbsp;&nbsp; -Dplatforms=3D\'x11\'&nbsp;&nbs=
p;&nbsp; -Ddri3=3Ddisabled&nbsp; -Degl=3Ddisabled&nbsp; -Delf-tls=3Dfalse&n=
bsp; -Dgallium-drivers=3D\'\'&nbsp; -Dllvm=3Ddisabled -Dgbm=3Ddisabled&nbsp=
; -Dgles1=3Ddisabled -Dgles2=3Ddisabled -Dlmsensors=3Ddisabled -Dgallium-op=
encl=3Ddisabled -Dopencl-spirv=3Dfalse -Dopengl=3Dtrue -Dosmesa=3Dfalse -Dl=
ibunwind=3Ddisabled -Dgallium-va=3Ddisabled -Dgallium-vdpau=3Ddisabled&nbsp=
; -Dvulkan-drivers=3D\'swrast&nbsp; -Dgallium-xa=3Ddisabled -Dgallium-xvmc=
=3Ddisabled; then\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bbfatal_log m=
eson failed\n&nbsp;&nbsp;&nbsp; fi\n', eof=3DTrue, debug=3DFalse):<br>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; debug =
=3D 2<br>&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp; return yacc.parse(lexer=
=3Dlexer, debug=3Ddebug), remaining<br>&nbsp;&nbsp;&nbsp; &nbsp;<br>&nbsp; =
File &quot;/media/user/SSD1TB/yoctoqemu/poky/bitbake/lib/ply/yacc.py&quot;,=
 line 267, in LRParser.parse(input=3DNone, lexer=3D&lt;bb.pysh.pyshlex.PLYL=
exer object at 0x7ff73b1ac0b8&gt;, debug=3DFalse, tracking=3D0, tokenfunc=
=3DNone):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; else:<br>&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return self.parseopt_notrack(input,lexer=
,debug,tracking,tokenfunc)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; &nbsp;<br>&nbsp; File &quot;/media/user/SSD1TB/yoctoq=
emu/poky/bitbake/lib/ply/yacc.py&quot;, line 1049, in LRParser.parseopt_not=
rack(input=3DNone, lexer=3D&lt;bb.pysh.pyshlex.PLYLexer object at 0x7ff73b1=
ac0b8&gt;, debug=3DFalse, tracking=3D0, tokenfunc=3DNone):<br>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; errtoken.lexer =3D lexer<br>&nbsp;&nbsp;&nbsp=
; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tok =
=3D self.errorfunc(errtoken)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; del errok, token, restar=
t&nbsp;&nbsp; # Delete special functions<br>&nbsp; File &quot;/media/user/S=
SD1TB/yoctoqemu/poky/bitbake/lib/bb/pysh/pyshyacc.py&quot;, line 650, in p_=
error(p=3DLexToken(Then,'then',0,0)):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; w('Unexpected EOF')<br>&nbsp;&nbsp;&=
nbsp; &gt;&nbsp;&nbsp;&nbsp; raise sherrors.ShellSyntaxError(''.join(msg))<=
br>&nbsp;&nbsp;&nbsp; &nbsp;<br>bb.pysh.sherrors.ShellSyntaxError: LexToken=
(Then,'then',0,0)<br>followed by:<br>&nbsp; LexToken(NEWLINE,'\n',0,0)<br>&=
nbsp; LexToken(TOKEN,'bbfatal_log',0,0)<br>&nbsp; LexToken(TOKEN,'meson',0,=
0)<br>&nbsp; LexToken(TOKEN,'failed',0,0)<br>&nbsp; LexToken(NEWLINE,'\n',0=
,0)<br><br><br>ERROR: Parsing halted due to errors, see error messages abov=
e<br><br><br><br><br><br><div class=3D"gmail_quote">Am 21. September 2022 1=
4:14:10 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<bloc=
kquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-lef=
t: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">This is not logs from mesa, this is logs=
 from your image recipe. You<br>need to start with mesa.<br><br>Alex<br><br=
>On Wed, 21 Sept 2022 at 14:12, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; bord=
er-left: 1px solid #729fcf; padding-left: 1ex;"><br> One of the logs has th=
is<br><br><br><br> Error:<br>  Problem: package packagegroup-base-extended-=
1.0-r83.qemuarm64 requires packagegroup-base, but none of the providers can=
 be installed<br>   - package packagegroup-base-1.0-r83.qemuarm64 requires =
packagegroup-distro-base, but none of the providers can be installed<br>   =
- conflicting requests<br>   - nothing provides mesa-vulkan-drivers needed =
by packagegroup-distro-base-1.0-r83.qemuarm64<br> (try to add '--skip-broke=
n' to skip uninstallable packages)<br><br> Am 21. September 2022 13:57:17 M=
ESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1p=
x solid #ad7fa8; padding-left: 1ex;"><br> You need to go to mesa's build di=
rectlory and inspect what is getting<br> built, with which options, and how=
 it is installed and packaged. All<br> the needed bits are there, but it do=
es take a bit of 'yocto skill' to<br> find your way around there. Start by =
looking at temp/log.do_configure<br> (and then do_compile and do_install).<=
br><br> Alex<br><br> On Wed, 21 Sept 2022 at 13:38, PHIL &lt;heideggm@hotma=
il.com&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt=
 0pt 1ex 0.8ex; border-left: 1px solid #8ae234; padding-left: 1ex;"><br><br=
>  If I read the mesa-vulkan-drivers recipe right it should install libvulk=
an_*.so but it didnt I had to use vulkan-loader. Any idea in how to debug t=
hat?<br><br>  Am 20. September 2022 15:26:45 MESZ schrieb Alexander Kanavin=
 &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #fcaf3e; padding-left=
: 1ex;"><br><br>  What often works is running it under strace - you might b=
e able to see the one key syscall that causes the failure. Otherwise you mi=
ght have to go through the heavier gdb step through.<br><br>  Alex<br><br> =
 On Tue 20. Sep 2022 at 10.25, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; borde=
r-left: 1px solid #e9b96e; padding-left: 1ex;"><br><br>  Ok it seems to use=
 Software now given how slow weston-simple-egl has become. But vulkaninfo s=
till fails with ERROR_INCOMPATIBLE_DRIVER.<br>  --<br>  Diese Nachricht wur=
de von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></b=
lockquote><br><br>  --<br>  Diese Nachricht wurde von meinem Android-Ger=C3=
=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote><br> --<br> Diese =
Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></b=
lockquote></pre></blockquote></div><div style=3D"white-space: pre-wrap"><di=
v class=3D"k9mail-signature">-- <br>Diese Nachricht wurde von meinem Androi=
d-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></body></html>=

------54C3BLT7CP9WN8SOGRC34Z2VIYMYX0--

