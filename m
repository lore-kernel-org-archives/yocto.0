Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.59])
 by mx.groups.io with SMTP id smtpd.web11.8167.1607194469876855217
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Dec 2020 10:54:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=p7NdH4H6;
 spf=pass (domain: windriver.com, ip: 40.107.237.59, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PF+lVMLgdwwU0Pi34LDkViyrqtuLVgfah07R2zYBMPaHubf0jkdOty5nDrAZzHOehi0Z27Xon/BBTVAHXs/7cHnSj0GO9mI7k2jMkQPaIk5Hx6ZMrfeOjn0m7D4tahHn8TRcpz6zkD8Lwip5vdH0BDYczz7PEEJl1D7gXYGdGhiO8oRYkpEU39L6E8sheCyaEhxjQx1PzQ9M6S6DwVkOfnysYP45hBXOSIljX7JEDk+nedC4ZHA8/57E2YYjdHmBpElLaALKU1kJ7VWW8Igt1v5Fi0kJAf2+8n0TzddUBZM7IQkzRmUyp5RC3KZT1IPdChzWvw4RBo1LnhdSJrropA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZH62DU+N6zW5C3LuGTgKZ3PWDt5c36SAa3lxDd6E7zg=;
 b=EjvClpFBZ2i1gpzbaGzwiP2wGpjY+FodhfLIXgtA5pFdomXadC/a+UjMT50K4nTWCVUBMrM9jMjP+yIwHUW/dTSRPViO0ueA8JNE3DtLV1uWkRkMUsAMYuTpTxZJZcPZ7hY29yct5TBiTEJSNCfplMnNrvDbaiklD7v1AbNSUTui3FlgcB3dOHILY0SZK/Xfc3lXa1TJ+9XJncTS2kac90dlvccaFbloxuv9Jbpbp3hhCxtAGJzvaKKhAZq7PgjEJgAfuXcK/jl2wy0SaGrMMA5nAVZeO1OWnD9TTGbnkSY3SFypNqod3tZQoQx1dan78szphfrBYX6yb86+2xSuKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZH62DU+N6zW5C3LuGTgKZ3PWDt5c36SAa3lxDd6E7zg=;
 b=p7NdH4H6VL7VpawY19FdBoY3E8WkTJipEf3onu7bAdTD71sw84hBUi3jleaItQ5LPlGPHNF1NLS3fYkeLEoWqtFWpSUyaD2UqY8VBRl95vTSNXK3rDDm5ptNUMyX+jasz2wimKcKBgL1abUn3ZZwFWsHzgSLQGvr8cy+rIXefZc=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4073.namprd11.prod.outlook.com (2603:10b6:5:19f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Sat, 5 Dec
 2020 18:54:27 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588%6]) with mapi id 15.20.3632.017; Sat, 5 Dec 2020
 18:54:27 +0000
Subject: Re: [yocto] #uboot Problem compiling u-boot with bitbake
To: ajellisuk@yahoo.co.uk, yocto@lists.yoctoproject.org
References: <9sNV.1607126926460437364.UjE6@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <c8629755-2fb3-2567-4daa-bac16faa074e@windriver.com>
Date: Sat, 5 Dec 2020 13:54:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <9sNV.1607126926460437364.UjE6@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR05CA0077.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::18) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR05CA0077.namprd05.prod.outlook.com (2603:10b6:a03:e0::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.5 via Frontend Transport; Sat, 5 Dec 2020 18:54:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 23abc7bd-7297-4981-2158-08d8994f3111
X-MS-TrafficTypeDiagnostic: DM6PR11MB4073:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB40734044A5D49A649C770184F8F00@DM6PR11MB4073.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wf/jGYYGqrKA8fPS8IcvW1EFlbNpfJ3K0DWPhT9xQg1fAIhNP6CNeN+VrX2I7OYmEHuG9mEYic3yvytk23davAvLZistiMmNIAmsX5gi75B8gtumkuwlfOfb0Dk10XmzNdnJHjC79vodc4lKUkiVH4smthiuVoYiQATk/jqahwKxvrsD3TFrOJlPjCnjvN4Rwr/WhJ0hlxpIrttfb2XtFFnXIEn0Ho7DJOhKQectvONZWfLjrGj7ED+H8VCFZQVta6z6cga53ZlOXrKtCp3f5ZuqwVMhHmSoCYPFYR8/SbBG1mBScTyj6Nj/FCY3GT1YdRT8Qsu4jYbYHNaHutR/z1o92RcdXhPQqNU5t8OC3RWv71MkbCNLm3rSbf1a7z2NLMtNjOVyfDTYwvE+l2Xxma+nF118LhNGZICKMDWwMdUOmfeMO+OXOcqRcnjYUlecqcHgtftrc7cJVoGFze8lePD5qAHjpRcv7cUfRZyxwfus1Mf8GEElkqTZuP2be12u
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39840400004)(376002)(136003)(346002)(396003)(366004)(478600001)(316002)(31686004)(26005)(8676002)(966005)(8936002)(5660300002)(16526019)(16576012)(6486002)(186003)(2616005)(86362001)(36756003)(83380400001)(956004)(66946007)(66476007)(66556008)(6666004)(53546011)(31696002)(52116002)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?9x9IqRIFOHdNtMk8SXyadfmjqzkRI2ABLZqxFTe5yxG0i8wyKVuRdGAfzd29?=
 =?us-ascii?Q?U4nDLC1EREfe1li1wvkN3iwTJFT3rNIoP5taNlC42jIV530SYM2Y7UzYeurl?=
 =?us-ascii?Q?KvyoB7zFpCvYOmhReq0MqILELY/yzwWByIs3e4OM0yy5ZpUCOqU7T/yBVuLs?=
 =?us-ascii?Q?6DGgREGcu2nf5mNJAP09j7ExmpuA0oPS3T182VZZo9dBzJeiqm0vo+/ZDbhm?=
 =?us-ascii?Q?ejQKxBJYIDy5YpB1viPlRhcD3wj0jQCR9G2Wog7Kyb1P4UIW/QZ43auNJ9fT?=
 =?us-ascii?Q?O0lO+FW+FcA1Y9pkWcS1cViEyq/YZ1rirG2SVEs1pdanLnj1mUtiyVkv0zGN?=
 =?us-ascii?Q?QEB+Yk9fSvInqfhUjsdJDTSCqDsXSyQLR8zczJJPnfiejS9z8CktFbdLZLfX?=
 =?us-ascii?Q?QbxJo/+E3RBO5yrTYl5DHOe+3dCBlQcouxFoFqw93oSlC2l3cCsLuznM6xRy?=
 =?us-ascii?Q?f8lUApmzsfI4zGgxs/ZNWp/zbFvWDTfcIkWjgTnFTexwcwVGmYLC/tMjtgOg?=
 =?us-ascii?Q?AFsEvnO9kyVHTMmIihkoEQC0cG3LeXvAqRhP0+gB+zPaPUsanqy2c9fr7yQI?=
 =?us-ascii?Q?CO7lrB2Qhn3xD5hv9DsUjxD9xjw2CfYy77YR9IouBHllbFS4cYZhp6292bju?=
 =?us-ascii?Q?kjwgtD19g+HEAFhOJUTCr4Hh8EWGYiOUKmL+ryYZZJaqKza/x9Qa4Y+tlMgU?=
 =?us-ascii?Q?ZqHiXMOfGduYXH3IbsonqQ4frsOKQ4MjBgA0EaBiEaUDyIAAXxxe1Gv5KV0U?=
 =?us-ascii?Q?NvdlnFupMkXQNrMrAJHXnkZMV1f3jEbPaso5Ycy0NeFBPdp23swm2myJVbGV?=
 =?us-ascii?Q?5TbmVvY0OZhSlFL7VytFvQklNSDefkYaSao3GPEqbECL7vySFE5rtxlrSkWQ?=
 =?us-ascii?Q?l6LSCaltxG82qwW0QjDzfNVSrf74ULqg2CvSiep+KzyKVK/QBdth2lRbKpcv?=
 =?us-ascii?Q?RntmM8HoxJVfXmxf8j6y9rAdXaqS++5ErXn2Qywl5uvBXXcxCRlkhBHI46+o?=
 =?us-ascii?Q?Q2aM?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2020 18:54:27.6268
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 23abc7bd-7297-4981-2158-08d8994f3111
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aPE7ZKeb81aZmiAPpQBeMziz1CNr64m1VnhIC1o1cDrUBzJXChGNa09BAdFhqmupUoI/33TNFswX2MwfkOk8fzby6DEsdZwbAhUqZORveXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4073
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-12-04 7:08 p.m., ajellisuk via lists.yoctoproject.org wrote:
> Hi
>=20
> I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus from MSC=20
> technologies), but the compile process fails with the following output:
>=20
>     ERROR: Unable to start bitbake server
>     ERROR: Last 10 lines of server log for this session
>     (/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.lo=
g):
>      =C2=A0=C2=A0=C2=A0 self.cooker =3D bb.cooker.BBCooker(self.configur=
ation,
>     self.featureset)
>      =C2=A0 File
>     "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/c=
ooker.py",
>     line 197, in __init__
>      =C2=A0=C2=A0=C2=A0 self.initConfigurationData()
>      =C2=A0 File
>     "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/c=
ooker.py",
>     line 356, in initConfigurationData
>      =C2=A0=C2=A0=C2=A0 self.databuilder.parseBaseConfiguration()
>      =C2=A0 File
>     "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/c=
ookerdata.py",
>     line 317, in parseBaseConfiguration
>      =C2=A0=C2=A0=C2=A0 raise bb.BBHandledException
>     bb.BBHandledException
>     ERROR: The following required tools (as specified by HOSTTOOLS)
>     appear to be unavailable in PATH, please install them in order to
>     proceed:
>      =C2=A0 test
>=20
>     ERROR: bitbake u-boot-imx -c compile =E2=80=93f
>=20
> I have had errors like this before, and have been to resolve by=20
> installing the missing tools indicated. The problem that I've got here=
=20
> is that I'm not sure what "test" is referring to. using, "sudo apt-get=
=20
> install test", doesn't work.
>=20
> Can someone please give me a hint as to what the problem is here.

Hi Andrew,

It seems odd that you don't have coreutils/test already...
Test is part of coreutils on Ubuntu-20.04:

$ which test
/usr/bin/test
$ dpkg -S /usr/bin/test
coreutils: /usr/bin/test

What distro are you using for your build machine and
have you installed the suggested packages?
See the quick start guide and links therein:

https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.ht=
ml

https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supp=
orted-linux-distributions

Also, if you could mention the layers and version of YP code
that you are using that could be helpful in general although
for this issue it shouldn't matter.


../Randy


>=20
> Thanks in advance
>=20
> Andrew
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
