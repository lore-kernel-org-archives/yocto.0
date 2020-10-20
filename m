Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.63])
 by mx.groups.io with SMTP id smtpd.web11.7338.1603203608877550350
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 07:20:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=WkxejeUr;
 spf=pass (domain: windriver.com, ip: 40.107.243.63, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SpJpaWHkTdZJPkz/WEh3RqYTnSiPUuT9e7veg8rvQ/dEnkzcHQ9da0+1iPnZ7SPDV+iTGA+sXsEWWo2X/GA1irpDP9zdZsLhI0Up7dJG5yVmp0WnHbKmYz+g18Fz9sD/dYPJhhEnlGdrBycZzx/QrxVWkusld+/jR2EGAwlSdYLWdioyac2O8Yde0EEkK81691mJWFDr5sWsGW4vjEc4LStNw51l0hbeo5NxwkqU7EfNZ7AkQocalo7rxPs/glHH6YUp1UN1k0vA0okh40fb0AJrzKDmqmJi0ZGk7R/itLMhF9c7TViSYQezXjzDWDq7AGPipKqODKO3iOogrtzPjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pWXj7Y94bMcXjv5BVzfIrgmcFgncFnURGGmuAj11+WI=;
 b=fzB37xQg6TIhwqEoG22lyWxBTzxYg4fgIJlNA5PoDdNbiZi6sCO2JX6heFXPqApYL7OOWrHI4gDdbXxfeRwf0UXMrKy5vqKPBKNcbPCm8LCOuVQd/fumCtza9bjaZ5ZnKD5kVJjttFl+shbk5Z+wmPMSN/VZwWQwqpHViLMMMf+H4PnED7J4+zqh3mlMKw3JglJ3HkCxlmXzeHuYEPBpIyft62tDnpdAKqy07PCOo7OvHKutcntj7E7DDr9lzmyt72XEt8e+wuGfGqsoAPuu7K0dFOjUfMNWK+rodwO/Oxgj93JjkNKyfvbhvtncfrOIpbSyM1YBJTqSkBram6Wyqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pWXj7Y94bMcXjv5BVzfIrgmcFgncFnURGGmuAj11+WI=;
 b=WkxejeUrggu8aWfbh7B0wjQYUsa1rfiy7R3GaLsuoIA66PZqgg4mbN0TMLEXix9lDXZaj4Y6FDCITNLYh0IZCHxEKpZe/2trocYqzO+2CiOZIteNBjtGTrPGrC71gDrMkjvavCT5I6xVvhZ2kPc39sK20QHbv+RFySrJ/y/tDco=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2703.namprd11.prod.outlook.com (2603:10b6:805:59::18)
 by SN6PR11MB3182.namprd11.prod.outlook.com (2603:10b6:805:bf::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Tue, 20 Oct
 2020 14:20:06 +0000
Received: from SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35]) by SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35%6]) with mapi id 15.20.3499.018; Tue, 20 Oct 2020
 14:20:06 +0000
Subject: Re: [yocto] dnf error coming while compiling core-image-sato image.
To: NIKHIL PATIL <nikhilvp29@gmail.com>
CC: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org
References: <CAJw=dJ8rCUx1SOe4ai-cVs3BPaS8MePVw+Uh967ZOeaDoWXm5g@mail.gmail.com>
 <b1644126-1fe8-764b-6ff9-51e25bde59ec@windriver.com>
 <CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <85b4cc10-5a6f-ead8-1052-88bb70dfb999@windriver.com>
Date: Tue, 20 Oct 2020 10:20:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR05CA0038.namprd05.prod.outlook.com
 (2603:10b6:a03:74::15) To SN6PR11MB2703.namprd11.prod.outlook.com
 (2603:10b6:805:59::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR05CA0038.namprd05.prod.outlook.com (2603:10b6:a03:74::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.4 via Frontend Transport; Tue, 20 Oct 2020 14:20:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18dd2e64-fc36-4106-ec23-08d875033e47
X-MS-TrafficTypeDiagnostic: SN6PR11MB3182:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB3182E10D90839FC53147A5CEF81F0@SN6PR11MB3182.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	J5RCjxF6NEuefGAHhHNL9mB5ikyyhhCnrxQFkhuUIc1GmtPjlcWwnt3TFTqHSdBCUCLpxdhaa5XSFtYjgYGiRgGf/LsOX+WAQO609PbZv7QjVhDGlTWcAwH+RcNw8HaPUNq1jguTED7ITsdGCvhifeDfUGBMiHMo67A71JIetEz0STd4+F8cKvwk8Ehi5yVaOduZOTy7NBdRWcEBp32CBkMf8G/70vlVUYEbec46Z/2xbF/pFXRRQSdD55XHUCGkGdnUFUO12UvqKfdEZqvQXpuqUpIPX/0jbAjPL7nihAm6Yl4xx8b1Ycu5CfZvTZrn87PxLYHZBIGVf7KLiYKdjOxeMdlDG5E789x5JzKNCLK9uEuHqBMZP2Zvpll8o3BiFFmRlW2R+QIWnBQXflji5OB05yhMDTTdY5T0mjDA5pCGVICzCbYnhQUHEsQlTSofDLXVLZGGyoH3DuaAtR/xsQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2703.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(366004)(39850400004)(136003)(376002)(2906002)(2616005)(4326008)(66556008)(956004)(53546011)(31696002)(36756003)(52116002)(66946007)(86362001)(66476007)(6666004)(5660300002)(31686004)(316002)(83380400001)(6916009)(16576012)(478600001)(966005)(26005)(16526019)(8676002)(8936002)(6486002)(4001150100001)(186003)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	1bHvlTf374KNQG8Ls0dTa+gNiDRBNFxdu8R62lAFZtugN29YvIGrvcbhzZ6IaLCHKLrYyOP1nmZlX9fz6OaJ5cFKv/JtPW8ixf3mQQS4mOc3Dg2dWvD559niURe0VRYdqs7lCDtiN8gDpdwArKmY6EGkckLK8VSl3HioLO6LS7OCdzmS9tL+ZQWU+hxfnBnUfgMWEEqKTggTtNr6+nusEobmsmI4e11mR8TlTt2tvn02pzDL3ztZHkff3wQFYzN0JM7EqkmWtYb4dpB1euFe5eBxfmWG8ztpfV4Znfo0QLZLnAbMMKrh6rHHn+QxHKJNZsUf9ZgTRx1lQrN2sx390gFKdCtv7aOUODEcTOhvS0iD6sLOj9GDW/GP+/dCMkXdiTjS0Epzz+cfpS1NR2SIcfnoHEOXdAX3YiMszlICg3hLhkR4XYEAKqwaIKElIK1ZoLQmcvYab117wutdOUOVmV07JcmIIhCX0po0IkKtrTUgUGu7YTCGi7HI8agZ0dj9rK0hqfacn652q+kNOWdELXOzLHS5XkA+F2pwA4pZ0JDCv5DzElj7p2IKIRdQJlv+LeSlh2IGM/kHao0nFoxiFQC19yq5W8+f4otElA8RwF9QZr7/8Mk8R98GF+2wbmX6MOx5nqma8vxKi5NdAeTtbg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18dd2e64-fc36-4106-ec23-08d875033e47
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2703.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2020 14:20:06.5046
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wZ5xRwBa9iNIs4Qu8ej1N3D5sDX0BPsWe8kJ16dtbGyph/FNkUUklNQ2Nyxa/+9dl9whxjAAVxPEnzcrg+C91HKjyCti+0N8aFhcnyQZvLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3182
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-10-20 9:06 a.m., NIKHIL PATIL wrote:
> I changed in local.conf (ostree related stuffs ), and put it for=20
> compilation , that time i got these error

Hi Nikhil,

We encourage people to avoid top-posting so that discussions are
easier to read:
=20
https://wiki.yoctoproject.org/wiki/Community_Guidelines#Mailing_List_Guide=
lines

Your description doesn't enable anyone else to reproduce what you are
doing. What git repos (oe-core/poky/bitbake/...) are you using and
what commit is at the HEAD of each?

You have no doubt sourced the oe-init-build-env file, otherwise bitbake
wouldn't work. Can you do that again and send either your full
conf/local.conf file or the lines that you added.


You might read:
  https://wiki.yoctoproject.org/wiki/Bug_reporting_and_Information_levels
It's aimed at people opening bugs in the YP Bugzilla but the same rules
apply to email asking for help.

>=20
> On Tue, Oct 20, 2020 at 6:49 AM Randy MacLeod=20
> <randy.macleod@windriver.com <mailto:randy.macleod@windriver.com>> wrote=
:
>=20
>     On 2020-10-18 6:41 a.m., NIKHIL PATIL wrote:
>      > Hi team ,
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am getting continuously=C2=A0dnf err=
or, How we can
>     resolve=C2=A0these .
>=20
>     Hi Nikhil,
>=20
>     What exact steps did you take before getting this error and
>     what build host are you using?
>=20
>     Are you able to build core-image-minimal using oe-core/master
>     and the default local.conf for qemux86-64?

Please confirm that you are able to build core-image-minimal so
that people understand your level of experience when trying to help you.

../Randy

>=20
>     ../Randy
>=20
>      >
>      > core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf. Command
>      >
>     '/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-=
poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf
>=20
>      > -y -c
>      >
>     /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-p=
oky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf
>=20
>      >
>     --setopt=3Dreposdir=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/=
work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos=
.d
>=20
>      >
>     --repofrompath=3Doe-repo,/data/pradeep/inti_dmsv/yocto_build/build/t=
mp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
>=20
>      >
>     --installroot=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/i=
ntel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs
>=20
>      >
>     --setopt=3Dlogdir=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/wo=
rk/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp
>=20
>      > -x packagegroup-core-apl-extra --nogpgcheck install
>     autoconf-archive dnf
>      > gstreamer1.0-vaapi iqvlinux jhi kernel-modules libtcti-device0
>      > libtcti-device-dev libtcti-device-staticdev libtcti-socket0
>      > libtcti-socket-dev libtcti-socket-staticdev libsapi0 libsapi-dev
>      > libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs
>      > packagegroup-base-extended packagegroup-core-audio-essential
>      > packagegroup-core-boot packagegroup-core-buildessential-extended
>      > packagegroup-core-graphics-essential packagegroup-core-ssh-dropbe=
ar
>      > packagegroup-core-tools-testapps packagegroup-core-x11-base
>      > packagegroup-core-x11-sato psplash rpm run-postinsts swig tpm2-ab=
rmd
>      > usb-modeswitch usb-modeswitch-data va-intel wayland weston
>      > weston-examples xinit-env xserver-xorg locale-base-en-us
>      > locale-base-en-gb' returned 1:
>      > Added oe-repo repo from
>      >
>     /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-p=
oky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
>      >
>      >
>      >
>      >=20
>      >
>=20
>=20
>     --=20
>     # Randy MacLeod
>     # Wind River Linux
>=20


--=20
# Randy MacLeod
# Wind River Linux
