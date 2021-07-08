Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web11.7517.1625717446174025406
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jul 2021 21:10:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=RMoPDJK5;
 spf=pass (domain: intel.com, ip: 192.55.52.151, mailfrom: rebecca.swee.fun.chang@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="189816983"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; 
   d="scan'208,217";a="189816983"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2021 21:10:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; 
   d="scan'208,217";a="560500651"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orsmga004.jf.intel.com with ESMTP; 07 Jul 2021 21:10:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 7 Jul 2021 21:10:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 7 Jul 2021 21:10:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 7 Jul 2021 21:10:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h6apQXiWr3Eu9pFhx0zKeKlz6IWbmnMKnvQJ1yg0ursIQYWwkzAqHIIL9YiHqHLl9qC7D4CPrzz2cTiD8gHRU0pK6Ilt0rb4UfATRSumQ6nhzwecDWPe0SUfa2kPwQQfKmfwQePnokbH9MiUKT9cVDE5TF5UD6marsKsZXZDj6i7uheyJVR8nv3cUc/g0JWSwSlrXULt8oLcrjrt05G+OoYEsCVJQqeXAtOEem+9b/GmbXJP83NndF5iqls84vFrnPXGAuSG5aTV5wkFzQ1y2x1LFjNoUqfvNA4giMjgObnMVrzjXQ0Tj++C6R4fwVGDXY7E/1o6udGtMgnZhvWZRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pP5wm6NBVPzhIZiTOpIqWYicgRvaLff+Z9R4S/cXAHY=;
 b=N3fv4awlqpALqNjgyodonCaV5XkmXjq5aHUk+nmVqrkHBdpRpFU9TtIpt+OVnAAhPyK1rhIuj4PrMbdlsmv1h1pE/55CyD7R7xeg/F6fjG6wMKjFYHLCsp8E49uDulMY83mmpMFfujJdaqHYgj+m/HXoo6u/xqHclz1D5DaKz+Isub05Vzkbva2pa19oeED9XtkdOvuLlyHp7/Z94KfWzuU2PNHigAAkFuCIGd1e21kHOBnLAI04DAxeDWfrngazBtI3HwrO5aWGHH5IEQNHgz1ErGB1EgbXvFETjc1XYIygj47VGGnQFpH52f/8qlvekeMQ9Jmsp8g5maDGHDBaaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pP5wm6NBVPzhIZiTOpIqWYicgRvaLff+Z9R4S/cXAHY=;
 b=RMoPDJK5OI4a8PMtnSHD31bMhM+VTH06aeq4L9EqNlN2reEW/xP83uowOOB5xr4anfPxtfYklppHikYs4Vb2vs1IYi70hIO20ohRr3Ip23lT/EUpVovi9wQmOeGWh3pAwhHuCMRpGYk4sxrOAmVN0wrkyZc5hp5WdTYPbbgbcmg=
Received: from DM8PR11MB5576.namprd11.prod.outlook.com (2603:10b6:8:37::13) by
 DM8PR11MB5575.namprd11.prod.outlook.com (2603:10b6:8:38::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.22; Thu, 8 Jul 2021 04:10:32 +0000
Received: from DM8PR11MB5576.namprd11.prod.outlook.com
 ([fe80::e522:cd29:d862:9561]) by DM8PR11MB5576.namprd11.prod.outlook.com
 ([fe80::e522:cd29:d862:9561%3]) with mapi id 15.20.4308.022; Thu, 8 Jul 2021
 04:10:32 +0000
From: "Rebecca Chang Swee Fun" <rebecca.swee.fun.chang@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto] binman support in u-boot
Thread-Topic: [yocto] binman support in u-boot
Thread-Index: AddzrzC5NN7AIrPsTqOZ88CEjqFJDA==
Date: Thu, 8 Jul 2021 04:10:32 +0000
Message-ID: <DM8PR11MB557610453677EA7EFDE372EB8A199@DM8PR11MB5576.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.100.41
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61ecb4ae-e92a-4419-0e2e-08d941c654a8
x-ms-traffictypediagnostic: DM8PR11MB5575:
x-microsoft-antispam-prvs: <DM8PR11MB5575B73F60911F58FFDC28CA8A199@DM8PR11MB5575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bRPY/Fqmgfi5QHGmrYosfbLz0FCQq3MmmbXaqeGNos3t4R44WwauDtmwwSuc7C+/dAFksPz2pKmCouRLDh7NWXqQC9lUkTgEj9FY6qN5C5IZtvNiXI27bNZORxSd5wmjHw58FxctgUOQjeRg7so4ukWozZU7D74CEdC2HFADwMSgX+lUikGy46VPj1ywJDx9Vdh8HTLcefuOObLCh48mSKO2x02WbdB21OyM2LpOlAVjHzU9Rur8bwZBkxbCp3DeS2OOzps4WLRjAIXaKXRAYxHSGKqYI4CEQmJ7bdRLeLOspmcv5oA9EPavPC677qCe44alVAzANe6yAmufJW44knhblJ4GNghpCiX9p9O7nGg3GdDM7ntyKdNQ99VxwDI7bOOn35pYGdvruLrShuxMaVvYYRXQxroSIWoU7JSqd96srZoJquaNk93Y06zLT2XYQG/+gvHBLUsNBd6NF2/nRDxV7ypuOZAIPCWbq2I/cD40QQc9x8GviX4kKQmw6kvtkwEVgNV6DGgQsA+zawk85OmZ1CJp1qF3qs14Tp8TiaagszwcRJm5jvkuPbg79e9OCtc61Nran7Uv3slHhJ0qqxWDZiTkwkuwQhIUEiuyba+tDL7nC9ugIaCv79r9VSiMZpcNWobaM8usx58qlWNo/Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR11MB5576.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(376002)(366004)(396003)(136003)(346002)(83380400001)(71200400001)(8936002)(186003)(9686003)(38100700002)(6506007)(8676002)(9326002)(52536014)(6916009)(478600001)(5660300002)(316002)(76116006)(2906002)(55016002)(7696005)(86362001)(66556008)(64756008)(66446008)(66946007)(66476007)(33656002)(26005)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UybgeT0PLTYsvIrwQmKbPJye5cQ0Wfw1Lh1cGUjJGKSfScg2TZiwvYJum0Ib?=
 =?us-ascii?Q?cFVSWGJBzRTl3lmFf8dJRdNHKQrWByQjP/22aQPE0vwVBvODND7yQhENYe1I?=
 =?us-ascii?Q?CAv3c1IcdBcn+DzvQljd1ZRBOp+DyY189feKP1cP3L/4tUBM7AOcYmpyt9mP?=
 =?us-ascii?Q?ebiqoMFfhSPJfVGRkkauH6OCilc/Tw3NSk3mx0v4wMMzbUevEcPuIaxB8ZJp?=
 =?us-ascii?Q?S61IBGBb8kWEEEetvqZBJHBZ3d0H2ii8iiOdmXLqS1H/IILv09PrVK7AVXWw?=
 =?us-ascii?Q?TQ/WGk/IfoZSl8zFU/W0VBfCwHvL6El+G6+euNu0Io7LRSnWfCBIxeEz4MYe?=
 =?us-ascii?Q?sZho9NR4N7+lhNnSqL2Go9/vCjn5QCMiEfRD0LBc/2sPDSdohLDaDiVA+sao?=
 =?us-ascii?Q?vPGe50Qf61qU6g7hlM+CTxaV9B9n8q5MuRihan5I0oW0sC22mvHj8xvn4UVP?=
 =?us-ascii?Q?cpvjGUh6YrdSWrAqD1gUhetti5/uXjMI4BUwYH/ylv7SV5G1y0qzIY2X7/3Q?=
 =?us-ascii?Q?/9kQ+M3YFf1oXEhppKwkVomb5yAvLfHUOOifedC1oLiUeod6NhFmERcsoNGI?=
 =?us-ascii?Q?LwRDrBuP85PB5Iy3qkd+HkVR45umfRk4ajZpcnQZP0qwj7WMAW8Fkzz+Zqkd?=
 =?us-ascii?Q?dpWKHQKRru/NfXQbM9by9VV6Ln9LdU8kVVhzWNXWzfrweXrUoJdl/dVCLQ/h?=
 =?us-ascii?Q?amaJRIcjnqqYR5PIQuB0XjEmEv3tGWbZKM8Vj89qcScMvVB676Cb2TApu226?=
 =?us-ascii?Q?3ZsEgxgw8h8UhvVNeBdGkQeQJiQvo8VTJxo11ks9iFyHJ811X2yW8QM5FJs6?=
 =?us-ascii?Q?Pyt/GxlTLRV+JYd36gAc/6O6rBeAnmjXAacNduNS/yty/QDnTcSKiC4+zQTJ?=
 =?us-ascii?Q?qkmcK9KM0BHCqaCYcOY7Kgn7E//ct6mihcpVcWorV2qjE0aN5KLSWdBjnJMw?=
 =?us-ascii?Q?YaQmzgk4CqXHPQKbMR1egRkNSMVFatYDnNm4AnXUuzW9SSEMtt2x0k2DPiJJ?=
 =?us-ascii?Q?sWbDwlAlqOXYKGDZPuPfI2QD9+nN+aTMsvPQ51DtghAct50tqzK/CDqU++SD?=
 =?us-ascii?Q?aEkcroJJ/jNNdrdDCEZmALoHXOyq47qQF9mnOObJDUWo0HzUpHi1KrX500aD?=
 =?us-ascii?Q?F8PSuQLnNZw/gTUsK9DqqQ9F/vayOzij2KdSgyQM4c2wRetDivXeLYDbMjVv?=
 =?us-ascii?Q?3Rx0Yrw4ZyC529JVlen7PraAhJu6Ye1bLAEhIpIxMl+SiDUh72Rq2SCW/xn5?=
 =?us-ascii?Q?R/sy7azMuzfWcDqJECf4Wj9nmjuK5uR2/KJr4E2Ik3NTLgzHD+5fG7rtvjVN?=
 =?us-ascii?Q?ASg+yDNpSfJ8gru5R4FMYLsM?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61ecb4ae-e92a-4419-0e2e-08d941c654a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2021 04:10:32.8359
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rPbRz9MmNNMgCMk4KY9ZX4ss2KFyWvkfTYRauI8LSRRofv3dYfURwk9jnuc38Kc71/wL9lqNlodrI0wYYw/Y8KbFalXZtEW0ryHa2dgYABh0MTVus3fJIA55bnm7ch1s
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5575
Return-Path: rebecca.swee.fun.chang@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM8PR11MB557610453677EA7EFDE372EB8A199DM8PR11MB5576namp_"

--_000_DM8PR11MB557610453677EA7EFDE372EB8A199DM8PR11MB5576namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I was having a bbappend for uboot v2021.04 that calls binman command from u=
-boot source tree but it doesn't seems to work with bitbake with an error o=
f unknown location of libfdt.
I have added dependency to dtc-native or did I missed anything? Is there an=
y plan to enable binman support within u-boot-tools recipe?

| running build
| running build_py
| package init file '__init__.py' not found (or not a regular file)
| package init file 'etype/__init__.py' not found (or not a regular file)
| package init file '__init__.py' not found (or not a regular file)
| package init file 'etype/__init__.py' not found (or not a regular file)
| running build_scripts
| binman: cannot import name 'QUIET_NOTFOUND' from 'libfdt' (unknown locati=
on)
| WARNING: /build/yocto-stable/agilex-gsrd-rootfs/tmp/work/agilex-poky-linu=
x/u-boot-socfpga/1_v2021.04+gitAUTOINC+396ee271f2-r0/temp/run.do_compile.85=
79:158 exit 1 from './tools/binman/binman build -u -d /build/yocto-stable/a=
gilex-gsrd-rootfs/tmp/work/agilex-poky-linux/u-boot-socfpga/1_v2021.04+gitA=
UTOINC+396ee271f2-r0/build/${config}/u-boot.dtb -O . -i u-boot'
| WARNING: Backtrace (BB generated script):
|       #1: do_compile, /build/yocto-stable/agilex-gsrd-rootfs/tmp/work/agi=
lex-poky-linux/u-boot-socfpga/1_v2021.04+gitAUTOINC+396ee271f2-r0/temp/run.=
do_compile.8579, line 158
|       #2: main, /build/yocto-stable/agilex-gsrd-rootfs/tmp/work/agilex-po=
ky-linux/u-boot-socfpga/1_v2021.04+gitAUTOINC+396ee271f2-r0/temp/run.do_com=
pile.8579, line 184
|
| Backtrace (metadata-relative locations):
|       #1: do_compile, autogenerated, line 7
ERROR: Task (/build/yocto-stable/agilex-gsrd-rootfs/../meta-intel-fpga/reci=
pes-bsp/u-boot/u-boot-socfpga_v2021.04.bb:do_compile) failed with exit code=
 '1'
NOTE: Tasks Summary: Attempted 2114 tasks of which 2111 didn't need to be r=
erun and 1 failed.

bbappend:
DEPENDS +=3D "bc-native dtc-native python3-setuptools-native swig-native"

# This is require so that tools/binman/setup.py is discoverable during the =
build
DISTUTILS_SETUP_PATH =3D "${S}/tools/binman"
distutils3_do_compile() {
        cd ${DISTUTILS_SETUP_PATH}
        NO_FETCH_BUILD=3D1 \
        STAGING_INCDIR=3D${STAGING_INCDIR} \
        STAGING_LIBDIR=3D${STAGING_LIBDIR} \
        ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-native/${PYTHON_PN} setup.py =
\
        build --build-base=3D${B} ${DISTUTILS_BUILD_ARGS} || \
        bbfatal_log "'${PYTHON_PN} setup.py build ${DISTUTILS_BUILD_ARGS}' =
execution failed."
}

do_compile_append() {
                cp ${DEPLOY_DIR_IMAGE}/bl31.bin ${B}/${config}/bl31.bin
                cd ${S}
                ./tools/binman/binman build -u -d ${B}/${config}/u-boot.dtb=
 -O . -i u-boot
}

--_000_DM8PR11MB557610453677EA7EFDE372EB8A199DM8PR11MB5576namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Intel Clear";
	panose-1:2 11 6 4 2 2 3 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Intel Clear",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-MY" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">I was having a bbappend for uboo=
t v2021.04 that calls binman command from u-boot source tree but it doesn&#=
8217;t seems to work with bitbake with an error of unknown
 location of libfdt.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">I have added dependency to dtc-n=
ative or did I missed anything? Is there any plan to enable binman support =
within u-boot-tools recipe?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| running build<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| running build_py<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| package init file '__init__.py=
' not found (or not a regular file)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| package init file 'etype/__ini=
t__.py' not found (or not a regular file)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| package init file '__init__.py=
' not found (or not a regular file)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| package init file 'etype/__ini=
t__.py' not found (or not a regular file)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| running build_scripts<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| binman: cannot import name 'QU=
IET_NOTFOUND' from 'libfdt' (unknown location)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| WARNING: /build/yocto-stable/a=
gilex-gsrd-rootfs/tmp/work/agilex-poky-linux/u-boot-socfpga/1_v2021.04+gitA=
UTOINC+396ee271f2-r0/temp/run.do_compile.8579:158
 exit 1 from './tools/binman/binman build -u -d /build/yocto-stable/agilex-=
gsrd-rootfs/tmp/work/agilex-poky-linux/u-boot-socfpga/1_v2021.04+gitAUTOINC=
+396ee271f2-r0/build/${config}/u-boot.dtb -O . -i u-boot'<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| WARNING: Backtrace (BB generat=
ed script):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; #1: do_compile, /build/yocto-stable/agilex-gsrd-rootfs/tmp/work/agile=
x-poky-linux/u-boot-socfpga/1_v2021.04+gitAUTOINC+396ee271f2-r0/temp/run.do=
_compile.8579,
 line 158<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; #2: main, /build/yocto-stable/agilex-gsrd-rootfs/tmp/work/agilex-poky=
-linux/u-boot-socfpga/1_v2021.04+gitAUTOINC+396ee271f2-r0/temp/run.do_compi=
le.8579,
 line 184<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">|<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">| Backtrace (metadata-relative l=
ocations):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; #1: do_compile, autogenerated, line 7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">ERROR: Task (/build/yocto-stable=
/agilex-gsrd-rootfs/../meta-intel-fpga/recipes-bsp/u-boot/u-boot-socfpga_v2=
021.04.bb:do_compile) failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">NOTE: Tasks Summary: Attempted 2=
114 tasks of which 2111 didn't need to be rerun and 1 failed.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">bbappend:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">DEPENDS +=3D &quot;bc-native dtc=
-native python3-setuptools-native swig-native&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif"># This is require so that tools/=
binman/setup.py is discoverable during the build<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">DISTUTILS_SETUP_PATH =3D &quot;$=
{S}/tools/binman&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">distutils3_do_compile() {<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; cd ${DISTUTILS_SETUP_PATH}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; NO_FETCH_BUILD=3D1 \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; STAGING_INCDIR=3D${STAGING_INCDIR} \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; STAGING_LIBDIR=3D${STAGING_LIBDIR} \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-native/${PYTHON_PN} setup.=
py \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; build --build-base=3D${B} ${DISTUTILS_BUILD_ARGS} || \<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; bbfatal_log &quot;'${PYTHON_PN} setup.py build ${DISTUTILS_BUILD=
_ARGS}' execution failed.&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">do_compile_append() {<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cp ${DEPLOY_DIR_=
IMAGE}/bl31.bin ${B}/${config}/bl31.bin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cd ${S}<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ./tools/binman/b=
inman build -u -d ${B}/${config}/u-boot.dtb -O . -i u-boot<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Intel Clear&quot;,sans-serif">}<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_DM8PR11MB557610453677EA7EFDE372EB8A199DM8PR11MB5576namp_--
