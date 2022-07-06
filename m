Return-Path: <agn@trackman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92590CCA473
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 06:50:41 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.107])
 by mx.groups.io with SMTP id smtpd.web12.3254.1657090231796352257
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 23:50:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@trackman.com header.s=selector1 header.b=XnW6TZJ2;
 spf=permerror,
 err=parse error for token &{10 18 spf.protection.outlook.com}: limit exceeded
 (domain: trackman.com, ip: 40.107.21.107, mailfrom: agn@trackman.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JgJ2YfLzGukRUBU+27Vi0wnobVRCvZSvrMBADR0sNZ0NzUBhzlMhunfPQ4QUNYiJjepV6O6qWD/S8cB7eF0VcV/0M/3RC3M5KGeIxAFo4LX/oUoZDxJEtNm+BKU0/gwuAtt5dcvTZnDOFtyXxcD/DRg79Mn9PRdtbUszzOyHF46xJSaamjnUn7KdeuB854N+pGIs6dOOrpLoqvqHoFQ2DrQrPOOE689J4VsQhBhrZOLLFW4DsK/234/fRatnpi+8gFe5f0gnGUgd8NtDUZM+jPy0hJrwtmHs0He7FOzTGXImbdIknDDe+4AjavHxtEOmFw1N8lOr2sspV8NLZMQypg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1HXxETsleNAKNgyusSo3YQ9RxzpxNqUFWW70M9pm87U=;
 b=nx9dNIOmGboJH7W5UM4oqHLlAjmX8YnpTJu6m1c4ETjPgrM1Vo0GLOZutukMI9rsKoaLQzb6krO5sn8ss7OhXpOfLzDbjUD4NBS1kKRvnMimwYYJtBkYQrAzOXWENfpa5Gciy6H1aovFPJ22jTIg13TyPx+fdphx1b8vfPl5ljy1v2MejCKCpUWK15J/GZdbwjqBrGyenzYiBflLwkNarPV/KQi5QCiWjo9Yqe/f3bg9lGNMp9zRkekue/eapCjiglXB1dBJO4a6rD32RyjY1OEjDJRrta4m/8Yac9ydVNNB+JjKTGFB0bmwKNIfxlF65M/UqbJxUNj43PYPX06X6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=trackman.com; dmarc=pass action=none header.from=trackman.com;
 dkim=pass header.d=trackman.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trackman.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1HXxETsleNAKNgyusSo3YQ9RxzpxNqUFWW70M9pm87U=;
 b=XnW6TZJ2SpiPobGhvPF0qjyg8IsS+jpj+hqkccpkTzMIQ0eAS2JWRYaqxNTVfM5swFpTE6IMVsQezNBEvEtkbQfxfJd6iLnnglUBoTgp0gL54wdmwLpR2ZuzrXTJVzrMJxeL2uBp/2QUUEzBnhMOLTZhs6OlSdEJj61fn6PVrek=
Received: from VI1PR07MB4464.eurprd07.prod.outlook.com (2603:10a6:803:73::18)
 by AM9PR07MB7154.eurprd07.prod.outlook.com (2603:10a6:20b:2cd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.6; Wed, 6 Jul
 2022 06:50:28 +0000
Received: from VI1PR07MB4464.eurprd07.prod.outlook.com
 ([fe80::dc5a:193f:e704:e46a]) by VI1PR07MB4464.eurprd07.prod.outlook.com
 ([fe80::dc5a:193f:e704:e46a%7]) with mapi id 15.20.5417.016; Wed, 6 Jul 2022
 06:50:28 +0000
From: Anders Gnistrup <agn@trackman.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Recommended boot method for system using rauc, intel and efi.
Thread-Topic: Recommended boot method for system using rauc, intel and efi.
Thread-Index: AQHYkPglFwh21AxJfEKb+qLcT8CN2g==
Date: Wed, 6 Jul 2022 06:50:28 +0000
Message-ID: 
 <VI1PR07MB4464F6A235514CAA187613DFD0809@VI1PR07MB4464.eurprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=trackman.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d9869c9-4d19-44a5-fd69-08da5f1bcfec
x-ms-traffictypediagnostic: AM9PR07MB7154:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xgMfYMtJYNk2Ic89ddEoH5pBxJiUL5s1VHh2HJFP3vGGIIdWeYh/Byz9WhzUfbrUj5HqK6teb3fYcrkElfZwsASrZ6JVjxG0hNJ2/imBUBlbBn4C8E/MDNYBhsPBwOGDjmoKCGf0QOkGIfqTxsBOXLPwQrhpngqPN+E+cm9cRPtSOwLFflKMoGNazLhBaaC7y2foy1QwTEFmhic7Wot7Y6o8VY8Jj8cbQ4yOg6B4ZSxP0zkyd4AwDAUyAk39jd7t4G6hLZcP1gMd58BfOpjaVXWiz5LCeQb8P0umTXhoWOYretjXl5OJqnZrMoPw2T2ds2YmV7Sy0MBuvyunkH48DlwNOSjTt2zNIo/gtgc9Vw11me6QM+qfIdvPDY98wGEJNJlLeF1EoJ98kbklV0/30TRntNtKUORGEIrFyuePQ5zxZuku8WmM7+aRQciCeen5CyS568r4nsBG8CN7ndgJhEu1xEAoevf5ZclfUuIZg6jBI730z2ClLMSCrEiYExBqk/tYWKY3nTALXwyb6aiWYxcwnZOtZkmT/nFtLpjtbh7tq+aSDtkosd/OV/oiwqIfWCDXa8oqUX31ps5dN/vUaSc3yaZYV7V2OLqqKguX+Z6QCbfm1v//JGCeCxltCo2GSWbiYOpnydy1a9JYeXeYIvUFJ7lQt+tfoG0ADd8/sY6FsNuZlWfjXnAVPBGhC73uGmo7bu0C9zOcf9cL4NrKgCjKZWtTaOsRYnOVUU7zpQOo6qOzQ6N/I1V4WI48zT3AphmCYousYMoEAiCknf+DdqMzprnTNJ5a8tMTlhBJhKgx97XuK8sCaLbQL7CPW6/plybRzzZDOiBCp10Wkx3jCnHCfDs3q7P3lToHflXLctiJ4pESkbjebhX5SG5VXHTs
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR07MB4464.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39850400004)(366004)(136003)(396003)(376002)(346002)(186003)(55016003)(38070700005)(38100700002)(122000001)(316002)(19627405001)(6916009)(91956017)(8676002)(64756008)(66446008)(71200400001)(66946007)(76116006)(66556008)(66476007)(5660300002)(8936002)(33656002)(7696005)(86362001)(6506007)(9686003)(966005)(478600001)(52536014)(26005)(166002)(41300700001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?SPVS+uZ2v6Kt8a/n9OmQ5UHXRAfE3DmArdPdK64pksctZzQ0JVRVBk1+MH?=
 =?iso-8859-1?Q?seOjPlJdFDk7UTDoS1lf4V4gnZFmhc/BsKgL7pt0gGRDbWPHRXLZq81sKU?=
 =?iso-8859-1?Q?yY+iB0i77H1VGvpwBpQDAX9RcXqk2NNyi5kLMZw4+g6QEKn573M3pOML1/?=
 =?iso-8859-1?Q?dTv+VUslNGgQoba89F/VbjdXFyuI8+urAWE+e5BiHSs+3VvbblNMGtQ+cN?=
 =?iso-8859-1?Q?64mXJrsM006cg1YGUyt38HtcRXi/BkfLCUgn0wh8xCZ+FFW3e5ZbXuDUnl?=
 =?iso-8859-1?Q?vLqL+O48UYOPVNOiPOTV5e5oxNSWZsZUIt+pADq3D4Rufgy4+7tgxh7BNN?=
 =?iso-8859-1?Q?AHFXCXN7aqgxgxfDBAt0psaR4r3Y0Hg0OJwljp3/DZ/x3wYbQGlwsWhsNX?=
 =?iso-8859-1?Q?rMbE6OOSdpUxsTqFeeMZUFjVnwjaZmcIahq24tf70ZPtnJpl6Cy0CttLFw?=
 =?iso-8859-1?Q?n44qndhllj+QLcNe+xD//VyLqAAayiP9Xodmu1i1HRYpEHftV5sdINygc2?=
 =?iso-8859-1?Q?4jpEjl7uK0F8Gvu0qv0XlRBMI4CnHRkl/HpYaXgcyhrHi+gkNvOs8JOrpF?=
 =?iso-8859-1?Q?gyj8tgZnYRc852sEFKG3yaTZVqeIKDgE24wIhQA9+0aYKQ36lqdnfaGJra?=
 =?iso-8859-1?Q?1WeKPOe5gO87f+mMXlBqEDk7Orw7+tlBebD2R9FO3/eULvJcf6oisbdIuI?=
 =?iso-8859-1?Q?nO9t1oMGIxHIlz8XfBLHolljFqTHuYIVvJCPSQCNv1MnZeeLXElw+m5Lpi?=
 =?iso-8859-1?Q?Vhy1W/xd0tUmn9NiXZNplXTEBUYnMYjSS2oNUQ6lVKNipT6a6ZKGtSlu+G?=
 =?iso-8859-1?Q?XODRu6RZeLh3hOTa1wT5RYIcg1T++mxRQSxI2rMMbgNIBiVuPfJy27oQZt?=
 =?iso-8859-1?Q?bf1eez8pignmtFB/+oZJl4N/oacH575FYJrOxW8hF57b1CjN9ySIhj63BG?=
 =?iso-8859-1?Q?+Fb6IE727sqcPGAd4hlFYkfm2V+anEVVwr20EIXU20URh6F+HDyi7AgBcS?=
 =?iso-8859-1?Q?SvvMf0GAd9elihbig086olUxQQ0cvDpISIJdOU1ZLrIb1wtTsfzf8DiJao?=
 =?iso-8859-1?Q?N/PDu1Jv+pf1qGk0mOFzYwJ+Zm5Q8VRNf/OqL3EnWE9I3OMqWyEv1t7d9a?=
 =?iso-8859-1?Q?BeshnahAP9c9Pt5Uuf+ef9+14UlOhCfbYReZl09SXEJwGNBxgCGgrNa7Oy?=
 =?iso-8859-1?Q?ohp7gyl7dhpeqNwSJ2FPbLS1LyLV6IfZqmlfPEbWURelMUl/jX/jpPzPwj?=
 =?iso-8859-1?Q?2bpb1t6MGkyrgxxptq0+LirGQyJNp5sZkhoHCJ+F3crDZj901Bq66dBjij?=
 =?iso-8859-1?Q?jbqQqkmkAka6yWc1s0haCw62GnsvexqL22xXk4uKrpKpIjdeml1z4PghVg?=
 =?iso-8859-1?Q?XtOb0JOFzIP98EQe5bzd06xGI3X1Di0JR4MRsEZxjyEZgAfGp0chlp+sFd?=
 =?iso-8859-1?Q?1bA/KrUk4fwJSDXr+O9Ep75A+w2FiZLa8l89ZQeldVEd4adNxT7bAI5Sep?=
 =?iso-8859-1?Q?eti61NdNOVXFp5a7lU/n41aZToq20+PIjtk/LvrFP4fLd8oofGeXXI7HnN?=
 =?iso-8859-1?Q?7E8kbvpGyKLMhbb14TdUAUu0xVZ+dC3IEhw5Lak/PPj53NpeqnvzeAEnEt?=
 =?iso-8859-1?Q?/uia4KLUyYOhE=3D?=
Content-Type: multipart/alternative;
	boundary="_000_VI1PR07MB4464F6A235514CAA187613DFD0809VI1PR07MB4464eurp_"
MIME-Version: 1.0
X-OriginatorOrg: trackman.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR07MB4464.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6d9869c9-4d19-44a5-fd69-08da5f1bcfec
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2022 06:50:28.3048
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb272a1e-e767-4041-9363-f8736579f898
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 tggZtBva1HSQn1wm6ZLlQZRX8qxN6umcRysR7S++l9ZtlwZZYSi/pn96vegkdvRSLyQ1H2Gi0BnmFHx85D/2HA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR07MB7154
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 06:50:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57458

--_000_VI1PR07MB4464F6A235514CAA187613DFD0809VI1PR07MB4464eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all

I am building a yocto BSP for an Intel system. The system is using rauc for=
 updating and contains three sections, rescue, A and B, where A/B is the ac=
tual SW running. Since the system is Intel based a decision how to organise=
 the partitions layout is needed. Currently I am making a skeleton for the =
BSP.

This is the current layout

  *   boot
  *   rescue
  *   A
  *   B

In arm systems boot selection is handling via scripting/rauc/uboot in boot =
section. But in intel there are at least three options.
1) Legacy boot
This will create the layout above, but it will depend on legacy bios boot. =
This will require writing the MBR and pointing to the boot where grub scrip=
ting handles the rauc stuff. It seems like a bad solution to add MBR is the=
 loop.

2) EFI entry always points to boot partition.
grub + scripting in the boot partition will do a similar operation like in =
the arm system. This solution gives quite a lot of flexibility, but will de=
pend on SW.

3) pure EFI+efibootmgr. This will eliminate the boot partition and grub scr=
ipting but since EFI file format must be VFAT (EFI standard) the rescue, A =
and B partition needs a split. That is:

  *   Boot rescue
  *   rescue
  *   Boot A
  *   A
  *   Boot B
  *   B

rescue/factury default needs to write the boot entries to EFI-nvram. During=
 runtime efibootmgr+rauc selects the next boot, rescue, A or B.
The grub scripting is replaced by efibootmgr and EFI entries in NVRAM.

And now my questions
Q1
My yocto builder is using the wks plugin to define the partition layout, ht=
tps://docs.yoctoproject.org/singleindex.html#command-bootloader.
When setting the bootloader command it seems that the --configfile argument=
 shall be used since there is no info in the EFI-nvram. WKS seems to work O=
K without the --configfile argument when building an installer image. Build=
ing a fixed disk containing an installer rescue image seems to be a bit too=
 much for the logic.

Q2
I can't decide between 2 or 3 and I need some guidelines/idea.
2 is SW based while 3 is using the EFI system. Basically, the grub scriptin=
g is partly replacing the EFI system but will introduce a more complex part=
itions layout, a more complex rauc bundle and a more complex installation/r=
escue. The rescue partition shall be able to reset the system to factory de=
fault i.e. either reset entries in EFI-nvram or reset grub environment. Cur=
rently I am most up for grub scripting, solution 2, since all info is on th=
e sata disk and not a combination of EFI-nvram and sata disk. Further it se=
ems that the yocto support for efibootmgr, EFI-nvram and rauc is a bit blee=
ding edge.

Regards
Anders Gnistrup


--_000_VI1PR07MB4464F6A235514CAA187613DFD0809VI1PR07MB4464eurp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi all</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am building a yocto BSP for an Intel system. The system is using rauc for=
 updating and contains three sections, rescue, A and B, where A/B is the ac=
tual SW running. Since the system is Intel based a decision how to organise=
 the partitions layout is needed.
 Currently I am making a skeleton for the BSP.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
This is the current layout</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<ul>
<li><span>boot</span></li><li>rescue</li><li>A</li><li>B</li></ul>
<div>In arm systems boot selection is handling via scripting/rauc/uboot in =
boot section. But in intel there are at least three options.</div>
<div>
<div><span>1)&nbsp;Legacy boot</span></div>
<div><span>This will create the layout above, but it will depend on legacy =
bios boot. This will require writing the MBR and pointing to the boot where=
 grub scripting handles the rauc stuff. It seems like a bad solution to add=
 MBR is the loop.<br>
</span></div>
<div><span><br>
</span></div>
<div><span>2) EFI entry always points to boot partition.<br>
</span></div>
<div><span>grub + scripting in the boot partition will do a similar operati=
on like in the arm system. This solution gives quite a lot of flexibility, =
but will depend on SW.<br>
</span></div>
<div><span><br>
</span></div>
<div><span>3) pure EFI+efibootmgr. This will eliminate the boot partition a=
nd grub scripting but since EFI file format must be VFAT (EFI standard) the=
 rescue, A and B partition needs a split. That is:</span></div>
<div><span>
<ul>
<li>Boot rescue</li><li>rescue<br>
</li><li>Boot A<br>
</li><li>A</li><li>Boot B<br>
</li><li>B</li></ul>
rescue/factury default needs to write the boot entries to EFI-nvram. During=
 runtime efibootmgr+rauc selects the next boot, rescue, A or B.</span></div=
>
<div><span>The grub scripting is replaced by efibootmgr and EFI entries in =
NVRAM.<br>
</span></div>
<div><span><br>
</span></div>
<div><span>And now my questions</span></div>
<div><span><span><span>Q1<br>
</span></span></span></div>
<div><span>
<div><span>My yocto builder is using the wks plugin to define the partition=
 layout,
<a href=3D"https://docs.yoctoproject.org/singleindex.html#command-bootloade=
r">https://docs.yoctoproject.org/singleindex.html#command-bootloader</a>.<b=
r>
</span></div>
<div><span>When setting the bootloader command it seems that the <span>--co=
nfigfile argument</span> shall be used since there is no info in the EFI-nv=
ram. WKS seems to work OK without the
<span><span><span>--configfile</span></span></span> argument when building =
an installer image. Building a fixed disk containing an installer rescue im=
age seems to be a bit too much for the logic.<br>
</span></div>
</span></div>
<div><span><span><span><br>
</span></span></span></div>
<div><span>Q2<br>
</span></div>
<div><span>I can't decide between 2 or 3 and I need some guidelines/idea.</=
span></div>
<div><span>2 is SW based while 3 is using the EFI system. Basically, the gr=
ub scripting is partly replacing the EFI system but will introduce a more c=
omplex partitions layout, a more complex rauc bundle and a more complex ins=
tallation/rescue. T<span>he rescue
 partition shall be able to reset the system to factory default i.e. either=
 reset entries in EFI-nvram or reset grub environment.</span> Currently I a=
m most up for grub scripting, solution 2, since all info is on the sata dis=
k and not a combination of EFI-nvram
 and sata disk. Further it seems that the yocto support for efibootmgr, EFI=
-nvram and rauc is a bit bleeding edge.<br>
</span></div>
<br>
Regards</div>
<div>Anders Gnistrup<br>
</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_VI1PR07MB4464F6A235514CAA187613DFD0809VI1PR07MB4464eurp_--

