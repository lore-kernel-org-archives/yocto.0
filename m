Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.59])
 by mx.groups.io with SMTP id smtpd.web12.235.1625677170701210559
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jul 2021 09:59:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@shotspotter.com header.s=selector1 header.b=kJ6lOVo4;
 spf=pass (domain: shotspotter.com, ip: 40.107.223.59, mailfrom: rcalhoun@shotspotter.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FcZGH2cgjcnBUaFX8Gic0TrUKfMFnpMsxVjGOg9fjEm0mUZmoyFpfLbC4xAHjF4wJR7HoV1NHRfL/qWOX0qosCIw2R1Jl980KVHE1QDQsSy8/E9ARUn43u6kCKpaEPHspffiZ7bDCyamup6tBnUcKBTUsJIRmLaGijWav91S2Sd+NK9SrPs0hE+2PtoLKUA30t3ps+naBI1U/Qj8RH3auhxCNAhKpu04glKH4dAqvwSpcL5Ixss/HzTWqc+PiIC0avZr5YC2XQFX5bsQYvp58pcByb6ptLOhHkW7CXQ959t8Us86UYNZHgiredMfD9+Dx0erXHPiynW4GkoCoYGABQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Gzu79JSqcPFycf/8gJD9RUOzh1sBM8o3hktJIaRetU=;
 b=i4WMD9eRE4r+yZSAdfk1NY1Xk1UPLFfMIJGDgEElvMaAuBGZ+s1IDFI5fHPeXl59hCkSTdWVuWQjvRU3YUGpMBocy76NCP2hNctGoVTF51rxfNgLT7irYp/eneAHsrsgxMVgf/TKEeRluAbwhNuLxQ4Jjoq4KBj7SDjysMbNKQUSEhzYGxq31G01G/xORnldFcjFyvT1euH41pAVkX4ensjfR7CB21LoBQAWjQSXfokxhNhj3CwDrItnUhmeWwv8fvH2WoqvmZVga8Q2HaVlDofdGiiXD+QO2ODwGqEaYaOi33Ff9wasnG/SoRdIXp2K6Yp7gMArSMBzCcIZY8Ru5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=shotspotter.com; dmarc=pass action=none
 header.from=shotspotter.com; dkim=pass header.d=shotspotter.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shotspotter.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Gzu79JSqcPFycf/8gJD9RUOzh1sBM8o3hktJIaRetU=;
 b=kJ6lOVo4l3mmoJS1/s136HnfLjU9vTx+WalemK2b4fwqwo19Z5DCG//8BaQxOjhkr6Xx88e0VwQZudtEdPbmeN/YLK65wjtOE1/q/3a71BExVo+Z8gPmHI1DnYtsx+PFQmUw50K6wKsRo6lVLPhQwisGhrnmU+l4jW+kHrg7eqQ=
Received: from BN6PR16MB3329.namprd16.prod.outlook.com (2603:10b6:405:79::13)
 by BN6PR16MB3091.namprd16.prod.outlook.com (2603:10b6:405:77::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.32; Wed, 7 Jul
 2021 16:59:26 +0000
Received: from BN6PR16MB3329.namprd16.prod.outlook.com
 ([fe80::3c05:965e:802f:f158]) by BN6PR16MB3329.namprd16.prod.outlook.com
 ([fe80::3c05:965e:802f:f158%3]) with mapi id 15.20.4287.033; Wed, 7 Jul 2021
 16:59:26 +0000
From: "Rob Calhoun" <rcalhoun@shotspotter.com>
To: Sohil Shah <sohils@acevin.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Question regarding custom device tree update
Thread-Topic: [yocto] Question regarding custom device tree update
Thread-Index: AQHXbbbB6lSYinTCkEu0rtDry7B6Eqs2smHD
Date: Wed, 7 Jul 2021 16:59:26 +0000
Message-ID: 
 <BN6PR16MB3329DC187A67E738E3A0C26DCE1A9@BN6PR16MB3329.namprd16.prod.outlook.com>
References: 
 <CAOUGpkzEaRMPFUu86F-QLTGe2StVCLkrQP=VLGSG8oq9vxj3KQ@mail.gmail.com>
In-Reply-To: 
 <CAOUGpkzEaRMPFUu86F-QLTGe2StVCLkrQP=VLGSG8oq9vxj3KQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: acevin.com; dkim=none (message not signed)
 header.d=none;acevin.com; dmarc=none action=none header.from=shotspotter.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d83df0f-5e5c-4de9-ab73-08d9416893eb
x-ms-traffictypediagnostic: BN6PR16MB3091:
x-microsoft-antispam-prvs: 
 <BN6PR16MB309106F07B778603A8E4F762CE1A9@BN6PR16MB3091.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mvqiBMrIM75i8mjgwXfsIo+CVUVubIryoTvBwDjm8TS4NzRiG3G3qSbYa66b/pwFdSrT1PxGC6BsPJSY6fnlnS2rsoJ1604RHjM+VurBvr8LIZkMuvzBZk2ui/a8zrDDGdMwXMi6U/TpQQpzRWHClSstOYL8maMqGbupnbs07Wa3/UCn7ccrEDRMGJE6KTvUEQg/jCIMMcFHwfz93sZR29rbWTt0h4EoIxFGF+EG1/qPA77aY6TbOd25VWzgXbfecDKT+MwIKOtN0pZFXMNGYz7R52A+eCHSBZBCW3/uQJUGwICbwJVlLBmp5XIrbBnqDhSZcFURBtWKc8ynhCoYYOqOBtgMQhTefF6R+mH2Y59VBivHMWctmmWHBEACoyNqDsOV20EoN54UAKTaDIkN7NUUQJSoGrcUW/jKXxJ27rwdhAyyNedNxmZnU8A2Tn4SQjWx1bsv3t6u/qvBOkxVQgm29r8uvjI2f0xSRcLg9n/wWAkkxvmpp2Sk2HV6oEpeDSX/SKWBTJJUzjzow+kw5a8oX2QNcLMRvxdXDBDMm3T7vHu/mXD0KjYS8D4NeUJJcOAZyxmss65GOo64AGP/cemkEXiTo0ILn6DwLAVSyn17Sfgqhmhvuft+SI6jvAKhTxtrcY+uqi8Z5AeMKJ6c5M9d22Oy4Tc1wCyT+YVtfN7/liMOvNodYFeNE1B5YhSLAzWUMsX1maj3LLXywNCEldPTl4X7i9N0z7NM1BtQvmM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR16MB3329.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(39840400004)(346002)(136003)(376002)(33656002)(66476007)(478600001)(26005)(15650500001)(110136005)(71200400001)(8676002)(53546011)(316002)(64756008)(91956017)(66446008)(7696005)(76116006)(38100700002)(186003)(83380400001)(6506007)(2906002)(86362001)(8936002)(52536014)(966005)(55016002)(5660300002)(122000001)(9686003)(66556008)(66946007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?r21CwTIpxoRhZn+b2E3r+O+ve4sZWVXShFhDZpOYTm65lpqjrdSxU2/1VN?=
 =?iso-8859-1?Q?qM74XEinB1O096g//lgjrQzD2FaQxvYT8Nas/RHTVAs3Z1nOjhMqLkfEDo?=
 =?iso-8859-1?Q?Q5ILkDLRmgcSq2l0Dd6TQ13K3clgUpsw2VbljnENiYsiztHlPQI++w/QqC?=
 =?iso-8859-1?Q?w0iodtGvkFNbXlQSf1+hRiJWmMOXHEv7X40JVMf6r3qAD+WFp9FcwLTl9b?=
 =?iso-8859-1?Q?JReRA9K679Sum37gRvy0IJ2bBgrjiIqkcNdlYs9qvr8kWNYOK+lodc8fwS?=
 =?iso-8859-1?Q?qgHznd9B3M9A7El1zgjjlBm65+NyEstWvYYLRu0mlAXOP3sP4UJ8TD7foQ?=
 =?iso-8859-1?Q?YSwBDQdUsyihbvYLNLDhNWRv2nf2xcZ55Hc2ntGX4oJSWehRB8s0mqxTXT?=
 =?iso-8859-1?Q?VqPlI8/8uWQH8PnjBN2Dtb/rFqNeA4S0LCWh5YvlPXX1W6AjdI+er59sPc?=
 =?iso-8859-1?Q?1DIvhEYuxJ/GlTUNTijB0xTcdx5wmJSIZ/JT0Hvu/jkiYLXg5syrHh3bPH?=
 =?iso-8859-1?Q?YkVQXcKMKEDOS3MEhFicxIYeZOtwPZ/8LEzetsV4ip6QNkKSHa2quqnHZk?=
 =?iso-8859-1?Q?EYJn8tNfQbaa48fCd1as/I1fVE04RkYHpNmjCUsOc2ysMWc9Zfujj3UIuU?=
 =?iso-8859-1?Q?B9/6Ti8hQFNZkD3DIU7MEw7GH+ByCL5ub4nnjg7awju5pVWJ9y1LEPRY8h?=
 =?iso-8859-1?Q?4eear0oRLhw3DIb/wxJpJ9LHLDCev5R4AqrmRG/x1apF42ilredMRLIRw1?=
 =?iso-8859-1?Q?sUellqLXlv3IWCmESoaD6FEwKO2oth2V9IFQhYuEBfGcAyequvU0JVy2Nd?=
 =?iso-8859-1?Q?+dV/3lgaZD86TBCAmEDgLUyGJeoceM4SgZiTaypkOF1s4/eJam7/avQVKb?=
 =?iso-8859-1?Q?VqK4H5QMuw5ZGDgUmt1mIcuUGmXz6o443QHU1qK4fsD9gXK8uykMB0TS47?=
 =?iso-8859-1?Q?zvS/5YzI50NA43vtbEXnroLAYLVROONpUTSBL5fZQowTjn0Q9SdG5abUs5?=
 =?iso-8859-1?Q?OHMRVM52jhlaOBf2btIfqcT6fRFiLvRUQN71jEPry63Dh1Q6OJY2d+4PmW?=
 =?iso-8859-1?Q?9yr45U8+lvh/9xYBphCaRyZiuVFPPlvzEEanNH4AhXZkT755puZzl3TU8p?=
 =?iso-8859-1?Q?10AJbkKQGEso0KTn85VzmqPoIK0lmCe0BXtHA0mv/4Wc3wF+OIRabJ/VDw?=
 =?iso-8859-1?Q?FBHgJ2DaXEIy003YJx+KW7MvU5WkWI8dmNz60TyMv2NkrG8liwjXv/tkGg?=
 =?iso-8859-1?Q?j99EovnWSh806YNptEYALFrFUYDqJGc1Mq9dI9JrAavM2W/wWyMSmj3ipO?=
 =?iso-8859-1?Q?0/pqcp95Vxcw7aptrJsksPFl4hLvO77F0q4mPp5dfMjZ2sQ=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: shotspotter.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR16MB3329.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d83df0f-5e5c-4de9-ab73-08d9416893eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2021 16:59:26.2316
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 375a7f95-52d1-443a-aa60-167b2aefb8af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qBX1Tqrgj5AYna81AHsOtl8m5UNnwPY8elFE0AY0YWhJZA5gq9cZxvJZswj8Tt9ccrWz2i83lg4CVQC9VBhZn4/oNsp7jSoUWaF9ANgFmVg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR16MB3091
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on beha=
lf of Sohil Shah <sohils@acevin.com>=0A=
> Sent: Wednesday, June 30, 2021 09:46=0A=
> To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>=0A=
> Subject: [yocto] Question regarding custom device tree update =0A=
>=0A=
> (...)=0A=
> I want to build the image using my custom dts file where I enable certain=
 peripherals and disable the ones not required. (A test to update dtb's in =
future).=0A=
>=0A=
> I tried different methods found here=0A=
> https://stackoverflow.com/questions/38917745/quick-rebuild-of-device-tree=
-only-with-yocto-bitbake=0A=
>=0A=
> But, I seem to run into some errors when I try to build the image.=0A=
>=0A=
> Please help and let me know if I missed any required information from my =
side.=0A=
>=0A=
>Thank you and Regards,=0A=
> Sohil=0A=
=0A=
Hi Sohil,=0A=
=0A=
First make a custom layer for you modifications and add it to bblayers.conf=
. Then modify your machine definition of KERNEL_DEVICETREE (in meta-yourlay=
er/conf/machine/machinname.conf) to specify multiple device trees, e.g.=0A=
=0A=
KERNEL_DEVICETREE =3D "at91-sama5d27_wlsom1_ek.dtb at91-sama5d27_wlsom1_ek_=
custom.dtb"=0A=
=0A=
Note this should specify the "dtb" (compiled device tree name), not the "dt=
s" (source.)=0A=
=0A=
Next, make a .bbappend for your linux recipe that will provide the .dts sou=
rce, something like:=0A=
=0A=
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"=0A=
=0A=
SRC_URI +=3D " \=0A=
 file://at91-sama5d27_wlsom1_ek_custom.dts;subdir=3Dgit/arch/arm/boot/dts \=
=0A=
"=0A=
=0A=
Make a subdirectory with package name (e.g. linux-yocto) and put your dts i=
n there. The "subdir" directive tells bitbake to drop the dts into the appr=
opriate directory for the linux build process to find it. The device tree(s=
) will be built along with linux and put in the image's /boot directory. Yo=
u can select which device tree you want to boot with via u-boot, or by mani=
pulating the symbolic links in the /boot directory.=0A=
=0A=
Best wishes,=0A=
=0A=
Rob Calhoun=
