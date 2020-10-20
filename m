Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.45])
 by mx.groups.io with SMTP id smtpd.web10.9927.1603156764935821556
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 18:19:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ZFtZszwt;
 spf=pass (domain: windriver.com, ip: 40.107.244.45, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RtBIj3JLsPnQ5T7W9ROGee97Ewi1FoIt1mJBtL0Sd0icRmlXIj9xEt+lG/KE1Vd+xXIKnlr71d6uHfcaxb2O+dxMR6ZgJqQd3zbQHfvvg1j3oowFTJhlI4tLK2zB0FzYgoVZ7g9aGFivXZAxxWSezbA7q6CD3jdPPf3OeJBoWh+sFlbT0gujXPZtACPA/Xgwcj7ZKAS9goQPSZCSprf4p9V+LlUIcDLaZnDlOvQMna2sSe0hUAps1jKBKEIQHOuPAmZCfZGrm66d2jtnQawmJXmj4DAODaU29kcKM+vwEC/M7wVTTGM1n4XLRkLP+BCp98GtmTcWJSp7gHG0JTHB5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8A6vocFX73gFnC0e/QY+B2NRbGn9JlWGEDzxlutQpcs=;
 b=BPuJPI8p4Z1k3p5A1trp63ZMDrSSD+rXokIXvnVhn0WxUENWXAIirizuyoSCA9+AItO37cxknd9U8bgyUawhWWCnzTRL18I1VNNC/3Vn+GD9Hq6bi19PAkRvbHykgzLqpueQpJ3T/mxwUtnxQ/hTGe/a3VPPaZpFs5P2JsfrSLc4oQIoXRAzwfQbZ3nLEG83hpToiUv4Y5ZgrEvu1P5Oo3tKG7N2K1Gboeks7UKlr+zEmTZEYeuDoUKkWCXsbio6p/oAQNoa4RvP7+n1znPQeiHK5n5R5xL4UWEsJUxTOybNcoxdJqexj4I1Y0BLCLSN5Vu8JEhQ4a6fxP5O2FweGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8A6vocFX73gFnC0e/QY+B2NRbGn9JlWGEDzxlutQpcs=;
 b=ZFtZszwtTFyxSuXg/YJeAj9tDxEG/iyy/ChPYT5oyfqt2CWvbTRXVe5lGkiilRXuL+QLd9++2w8TSEMTJBpTTNkt8gEibjIRqKPtTkU3j/FZLUls0tmktrepOuUha2Oyxu9wzZv2ljyOSUiWJynbx9KWmq1HL3S9o2+iZaSD8bc=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2703.namprd11.prod.outlook.com (2603:10b6:805:59::18)
 by SA2PR11MB5067.namprd11.prod.outlook.com (2603:10b6:806:111::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.25; Tue, 20 Oct
 2020 01:19:23 +0000
Received: from SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35]) by SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35%6]) with mapi id 15.20.3477.028; Tue, 20 Oct 2020
 01:19:23 +0000
Subject: Re: [yocto] dnf error coming while compiling core-image-sato image.
To: NIKHIL PATIL <nikhilvp29@gmail.com>, yocto+help@lists.yoctoproject.org,
 yocto@lists.yoctoproject.org
References: <CAJw=dJ8rCUx1SOe4ai-cVs3BPaS8MePVw+Uh967ZOeaDoWXm5g@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <b1644126-1fe8-764b-6ff9-51e25bde59ec@windriver.com>
Date: Mon, 19 Oct 2020 21:19:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAJw=dJ8rCUx1SOe4ai-cVs3BPaS8MePVw+Uh967ZOeaDoWXm5g@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR08CA0012.namprd08.prod.outlook.com
 (2603:10b6:a03:100::25) To SN6PR11MB2703.namprd11.prod.outlook.com
 (2603:10b6:805:59::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR08CA0012.namprd08.prod.outlook.com (2603:10b6:a03:100::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.24 via Frontend Transport; Tue, 20 Oct 2020 01:19:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c6e4d21b-8194-474c-daf3-08d874962d86
X-MS-TrafficTypeDiagnostic: SA2PR11MB5067:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB50673D4D0D45A5FEA54990E8F81F0@SA2PR11MB5067.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kzxg549p4udGENdkvgQHhDM3/3oZlJV4VezCCzN1sx+7OqzbcyxjtrXcEYapJ+Cf03mk30RGKF8Ztxqj/Ay8gANR8meN67Pnfim3frusAKyXEazI+qqaQkwSHer4Lb5OXnrxVuoWRr9UMl79SacD46CuvGCinerVOPdVDe8/8gzA1k8iiNejsJ3T9hw2/X6fs3XZLtUpYY8eo5j16+4W8vgavbqo1MPW6qowONDphgKBEri+rTUMKDkZ+vkixQWsAPRdOwUpvH1hjXCjguSOJe9c14JNWAFMeDR8TkVF9WhfCdTDh/0jhk1P0rlHIt6RwWZaFiRxYTDUoLqayaBmYbDjwJTW3M09LwdR2DJKChr8rJ5fYk1FAH0BP7NP5zE80LXiH4ajBPa1Se+jZp1AWfBsm4da5pP7//OYmqdxuJXklUqCauxIUHN02oM7R8xAOAf9e3jwwGydySnSQlkuIA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2703.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(376002)(396003)(366004)(39850400004)(31696002)(316002)(53546011)(6486002)(2906002)(966005)(5660300002)(86362001)(8936002)(52116002)(956004)(36756003)(16526019)(26005)(2616005)(186003)(16576012)(66556008)(66946007)(83380400001)(66476007)(478600001)(8676002)(4001150100001)(31686004)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	5ar3lfN9IHaT8NQE97ZS8ECdtpQqZNh/SdidYoLMu3QNaTMBVqWQ7WSlOZDrYEd24bmc8Gb0Y6epKHznwNUF1h2wUGZXZ8PFM0Mn6MtTyWvCxqqffwrJYZSwxnFdjEgWYF7j9dvUJH5e2noVxn58d8gu/PgigvJfi9VZqumztBNd1BSpQ5MZMxDEyDNrKpVPRaI/gQzboTOqryc1PKQogmu/kBHdV7pXJgcm7pr+4YgfbS8d2t21T2YKmw4kNlIzqe6tLZUepFPTukbDG7Zo2greYPOAP1N0BxdI0+wrnBM+3OJkn5ENdu7od1WN638x8W5x0VeTC6F6fGM6sYPtpdkp1OBRluD3MFQA2rqZH0Kc4KNAtnXMCgb8IZc4zw46iL9GbIJPUKukFa5nW5Bwyxubn1qks3M8yxXSu+W3LxIACS9PSIExUr1inNrBOTWOrjKm1gGLUK/LlfuUU1skrMJTZBX4lhJJwA7WGh724soJNqQGGi3pYj4LDAocN9ZUiC6JsPbeioiiSgn3VXca20ZFWErsksnfbEd5Z9o92hajVnCOR9eu3vmz2fde4PAS+EOuEuvyqa5Qn4zpqFRv1qiC3RmAeqpxPFV/pmFhHrEtNdxkc4wvR9uH109CAPSPmJniUfYbqzJdBLYc6ll5ug==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6e4d21b-8194-474c-daf3-08d874962d86
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2703.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2020 01:19:23.1923
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CpMif9bt+01w0KJEu6660je0gLrw7+az1iekSys64vNCUTbx/lOEfBUUiOllT/bAw1IeiEJkHkQnBce618uJRW5OSJQMirQDaDqQByp6IQo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5067
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-10-18 6:41 a.m., NIKHIL PATIL wrote:
> Hi team ,
>  =C2=A0 =C2=A0 =C2=A0 I am getting continuously=C2=A0dnf error, How we c=
an resolve=C2=A0these .

Hi Nikhil,

What exact steps did you take before getting this error and
what build host are you using?

Are you able to build core-image-minimal using oe-core/master
and the default local.conf for qemux86-64?

../Randy

>=20
> core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf. Command=20
> '/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky=
-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf=20
> -y -c=20
> /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-=
linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf=20
> --setopt=3Dreposdir=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/work=
/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d=
=20
> --repofrompath=3Doe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tmp/w=
ork/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo=20
> --installroot=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel=
_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs=20
> --setopt=3Dlogdir=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/i=
ntel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp=20
> -x packagegroup-core-apl-extra --nogpgcheck install autoconf-archive dnf=
=
=20
> gstreamer1.0-vaapi iqvlinux jhi kernel-modules libtcti-device0=20
> libtcti-device-dev libtcti-device-staticdev libtcti-socket0=20
> libtcti-socket-dev libtcti-socket-staticdev libsapi0 libsapi-dev=20
> libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs=20
> packagegroup-base-extended packagegroup-core-audio-essential=20
> packagegroup-core-boot packagegroup-core-buildessential-extended=20
> packagegroup-core-graphics-essential packagegroup-core-ssh-dropbear=20
> packagegroup-core-tools-testapps packagegroup-core-x11-base=20
> packagegroup-core-x11-sato psplash rpm run-postinsts swig tpm2-abrmd=20
> usb-modeswitch usb-modeswitch-data va-intel wayland weston=20
> weston-examples xinit-env xserver-xorg locale-base-en-us=20
> locale-base-en-gb' returned 1:
> Added oe-repo repo from=20
> /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-=
linux/core-image-sato/1.0-r0/oe-rootfs-repo
>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
