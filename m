Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.1467.1623198456044759497
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 17:27:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=lvlkoMS0;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=17945c44ea=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1590LAM4012645;
	Wed, 9 Jun 2021 00:27:29 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2107.outbound.protection.outlook.com [104.47.55.107])
	by mx0a-0064b401.pphosted.com with ESMTP id 3927fn0k8x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 09 Jun 2021 00:27:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q73piQ0Izjm77pbaLx6DYWz8kjWe80eeQht0G66HGaw+qIhiu8YPhvpOu50YWFkqTmF32Jt5eEwDu90nIqnu4xrZzNpjB9QTmdm1fyDbWZqdi9WGTcVrSfIE3DbkhQsG88PjCQK+xiaf0wiQev6d9/E1YO0PcoHTThAVg6IkXLLYX9WUhHjHJbQzfB3HJFCOq4aPk7/misfQWP70MrOc83LJreO3kV+fArmEc50YV7DVeCyGUak5Zr2ev65JCbs36BUkLr61AEAvV1lpiHOjtTWpILsPLRo3nlDtLP1nlDPCutlqSzuRfbTZGEh/XK2JL0uujBS0WQrFDG/vFvqg+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T2eBahyrezNrDSX+vv8acPI3huyQqjPI8r0uV/DzH/8=;
 b=Cowj6U5y5gDEk69DhHWruo2HCbMbtQL7/eEgEWgn2wHWoNnpixPTK9KRwljhvkGUkLRhtGS/SDxZpNQ8ctJJQyqdj1/e9W+3wHK7xAHMIRpIsSWlJo1fFGIsPoN/Op19+LZ7ARDRdsXmAM5sExhakmseEcWLU9Ps+3VCJAl6InwMLKZC8R5LOF9iWZ/CQed+q8swDPy5uV5WNAg/cAUmWsDDb/8s44w9E1wIGWSPMICMxpdexJp01MiwXyum49qPRb87nzxKwW7GMiGOl6h/FJ+B8sl5xDVyouhMvNTx6U0eAfCjSvfM2WUBsXl8FR4ajkFcYrBF+w2KtnXQH2Mw4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T2eBahyrezNrDSX+vv8acPI3huyQqjPI8r0uV/DzH/8=;
 b=lvlkoMS0ISp311NCfjDaJfwL1iE7A2es9B8knDYB4XwjvNfEIdnTfr69PUkQMwsAGOcdDrrVWsFlAQjYZD2iVYd8TtSovaC7ZDaW3F9nvmXFXq/+3siB7vig40LXQU9yLMqSAtKQrwZjCHVMfqili9CGLBtITMNPxvA+jm3ptuM=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB2602.namprd11.prod.outlook.com (2603:10b6:5:c0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Wed, 9 Jun
 2021 00:27:27 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4195.030; Wed, 9 Jun 2021
 00:27:27 +0000
Subject: Re: [yocto] Bitbake failure
To: Cris Scott <cscott@bird-technologies.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <CY4PR22MB0006916E6957F29F955A1DD5993F9@CY4PR22MB0006.namprd22.prod.outlook.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <4eafebbc-80cb-2d09-b603-f0235d55b215@windriver.com>
Date: Tue, 8 Jun 2021 20:27:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <CY4PR22MB0006916E6957F29F955A1DD5993F9@CY4PR22MB0006.namprd22.prod.outlook.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY3PR04CA0019.namprd04.prod.outlook.com
 (2603:10b6:a03:217::24) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY3PR04CA0019.namprd04.prod.outlook.com (2603:10b6:a03:217::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20 via Frontend Transport; Wed, 9 Jun 2021 00:27:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c73303d-ac13-4085-b3fd-08d92add5c00
X-MS-TrafficTypeDiagnostic: DM6PR11MB2602:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB2602C12E95714E367663B1B1F8369@DM6PR11MB2602.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Fi3t5zylqpzPAYD0agEMs2AFtiLW7gml1OVCbR+Kr61AFmdlBgbgThQvrVF7jpGV2Cx5ZevgMdrGw87ICScLeicghvQpXP5B/x3gpRVnYCF+LpEzXWUuGlzqFpvPBeePIbGtqS2Na5ZDaHWd8THO/RYtaKFf5LYvyGho354G5qexs8aykmASqHMDqOkYJsvhRv8oQKkYFlBd3ppmq42+6P5DMj3JF7Cu8/xI9bEDytuJAC2rLKnqHs5WqqPBRdx8fd0Riu99pORh4ClswfVJiuyntofebXqC4HCxaHuQA8O65l0hyT2yVUCTeOgE0YFklF+fpnkH68xeCCk/sWYOF+PXTLVgTKP7wIFcg/VqtFXBobdY+u2kQTJqh14QxWnx/y2S/glQbsUsWGQSJuECWBfNAQi0Rh9r21dDYrz096uvKKd6+bEhN/CK9/JYS2kuwyLpxEjdgInT3a36cNLuiJgowm/EjJCIfwIlwbO7tLs2SI1kOFW6Oa6Hs1GiSOMRSzfPwh5L66cF07pLDsJv3+Ev1sDJSqRHwSRG5sGbFWAax4QP7UckdL4DAE2Lq5cWo3zy9tR9oMAepKpcPjpJY8W9BterTRlr/pTYcIAc0g9QI7wYIMYCmRIZddUru9vkOs1k2vHN8E2s7u3TOySqRBp2fYPp3sQ2rEP028HdZQYVU8PSdzmgwILAfLb/oiXcwmflFfNT9Cu3OYm9evRrxq4WY7OJ85KX55S4U6IKyweylEHiEwSSLywSxoL+/UxLTv5YwUpAVZ2GcZxJxMg78f5t88vwUf+l4XCLzeprJgpaVzjS6FgCsPUxsY0y2+S+c7puawsQiSuxWdOZRnPtD5JHNjtFEk0rYtFxlbs5VqllOpLv5Zq/2FXCQZ3IIgWd
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(86362001)(36756003)(31696002)(8676002)(31686004)(8936002)(6666004)(5660300002)(53546011)(2616005)(956004)(478600001)(26005)(966005)(2906002)(52116002)(316002)(110136005)(16576012)(166002)(6486002)(66556008)(66476007)(16526019)(66946007)(186003)(83380400001)(38350700002)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?Windows-1252?Q?d1xaFVLWPgPlfRhemZWt3C4I7SoN+yXKAR8P4SVR4C8moH9VuYmZKL6V?=
 =?Windows-1252?Q?CeIc0su1BaKTmYPplztzF6TzSM4DvRO26FlzEiurH4O9cvQuk/YZG8nf?=
 =?Windows-1252?Q?qvmaqJXssZ+jpvVPabelDysFrUS+t+WJ4kSy2zXjHE3Z02bGT/yl+G3L?=
 =?Windows-1252?Q?cVlrhWUJrKivgkNodONOEbs6EfMs8G80sC7zUUnweqaXSxDPON3k2G6l?=
 =?Windows-1252?Q?DoBH4gNnJsQZbCn5kbkAUlXiQtWOA2kKA4pchDSby2cBbSx0puIqIf+C?=
 =?Windows-1252?Q?3JuDnHpeYlztYhJ7lUC7cfuyYIT+5mcPyN2QWsqncF2rNv1CiaQfMrxo?=
 =?Windows-1252?Q?3SuuBYwqVqWU2R+MsilUMfK4bzmJ6lsDuwr3N1CDzWIjGVzUhl5i6msM?=
 =?Windows-1252?Q?v/pgsV3pk6QgC95Pt9vGZx3Pc51kU/u7r1TOLdkgi1/T8itjMvahXLQy?=
 =?Windows-1252?Q?k+24H8zr/1eiHvTEitDw6FOMdLEu2EiZH2EANIRYagB5stXwE4AHcLD2?=
 =?Windows-1252?Q?FAYA2NIrmGeVaIFo6wz2gmQCN9jbbHkA6pY4EGJRNchtNLmr2eDph59A?=
 =?Windows-1252?Q?H2D2mIa6xBrbV2395g1I6hoObmRdcrXVf3OWFaAer7wYOWS2pjWdJXHd?=
 =?Windows-1252?Q?2peii7xcZdZ3F3XELTIj8c5V75SVBW+RBoawp1uLN4fGTCvGg54urvkn?=
 =?Windows-1252?Q?NR0X3XawHCLyddABcF/vl66rqDof7LISFJMLsERpXYvqkmdsjzXKcUk3?=
 =?Windows-1252?Q?GznuZ3BTxzBaazx4Vx5M+6HosloY3ZiXZgxG0i8zN196kT/1mNU+PNIH?=
 =?Windows-1252?Q?lBWPs8LJAvsJbXomcxjjgGSi6Q/sZUBEbsn94TFCzwUUeOJIU5WUQhpj?=
 =?Windows-1252?Q?fBIsNHXMLwk41gZoo6ik5Csq3y11q3vsl63GISUnbmGwYnHthY/BF7t5?=
 =?Windows-1252?Q?NNU5PVvZYNoWhr+Bbe/YfV96XJvZdxarZcC/3xvo4XD0w9SxVUESVfe4?=
 =?Windows-1252?Q?/Ym4hgx7luILURjpvmQKbbndfpv7prN27+xQNscor3xy14ba9qfNPKXA?=
 =?Windows-1252?Q?1yq6vy3KF0ROYhxHnF/SJ7r7/80DF4DsRoCySPiz7W+YIArba/7U2rSb?=
 =?Windows-1252?Q?WMx/co2nTrkDJJqlUFKw1fILvEtIC/UbL5ws9+8P/IpErb3HwV9Lb0GE?=
 =?Windows-1252?Q?w5eOxaXp3v0noND05EZA0mDIGnk4mpp0bfsG6XmFrSix87ZXT8N/iTL5?=
 =?Windows-1252?Q?xBw5IhW+e9cOCZgGoPo2MLLnP3qh2SbD8wPkcmYib+i9kONuUl3iwRnR?=
 =?Windows-1252?Q?2ad1+mS1qx56GsY98capeZcmdqMUwpWg6ehym8u1zjePLMVjPAL/yLza?=
 =?Windows-1252?Q?67waVd74jPf5d2hAfHLwQc4ZECbTCGc6uwfvgnXnexJuBOWsG+/rSVmy?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c73303d-ac13-4085-b3fd-08d92add5c00
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2021 00:27:27.1053
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3KjtEqO/7g/mGCPBp5ZHjnzDgV87YRRdruE8QBbK4hhsubCM5IWsBDOKsJMsaWI13bSKOdYZLT9xs7pocMm3dQA9RHgeatVBra9hs9+Sspk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2602
X-Proofpoint-GUID: yOf7wHMluOpiFcJMLPfN6MsviMXIi-wy
X-Proofpoint-ORIG-GUID: yOf7wHMluOpiFcJMLPfN6MsviMXIi-wy
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-08_17:2021-06-04,2021-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 mlxlogscore=999 lowpriorityscore=0 mlxscore=0 clxscore=1011
 adultscore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106090000
Content-Type: multipart/alternative;
 boundary="------------D38159C95B2ED80DC4550E00"
Content-Language: en-CA

--------------D38159C95B2ED80DC4550E00
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 1590LAM4012645

On 2021-05-31 6:12 p.m., Cris Scott wrote:
>
> Not sure who to ask about this.
>
> Using=20
> https://push.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-exten=
ded/lighttpd/lighttpd_1.4.59.bb=20
> <https://urldefense.com/v3/__https://push.yoctoproject.org/cgit/cgit.cgi=
/poky/tree/meta/recipes-extended/lighttpd/lighttpd_1.4.59.bb__;!!AjveYdw8Ev=
Q!IjX1DyHZJ7dwUtyALOFQVZn8VgQNRX29XBKx6NBRpbApF9vx-j_t8eKwsxzFofu_-99g-Q$>=
=20
> to build lighttpd, bitbake fails, and I receive tons of messages that=20
> look like:
>
> ERROR: lighttpd-1.4.59-r0 do_package_qa: QA Issue:=20
> /usr/lib/mod_staticfile.so=20
> <https://urldefense.com/v3/__http://mod_staticfile.so__;!!AjveYdw8EvQ!Ij=
X1DyHZJ7dwUtyALOFQVZn8VgQNRX29XBKx6NBRpbApF9vx-j_t8eKwsxzFofsRbsK8iQ$>=20
> contained in package lighttpd-module-staticfile requires=20
> libc.so.6(GLIBC_2.4), but no providers found in=20
> RDEPENDS_lighttpd-module-staticfile? [file-rdeps]
>
> Can someone point me in the right direction to resolve this?
>
Hi Cris,

It's been a while is this still a problem for you?
If not, how did you fix it?


Can you reproduce the error with poky? git://git.yoctoproject.org/poky

What release/commit are you using?

Does it happen when you just run: bitbake lighttpd ?

Does it happen if you mv your sstate-cache (tmp*) directories aside
and do a rebuild?

What's in your local.conf?

For completeness, what is your build host distro (I doubt it matters here.=
).


I built poky from:
7f3c996d30 (HEAD -> master, origin/master, origin/HEAD) lttng-tools:=20
upgrade 2.12.3 -> 2.12.4

on an Ubu-18.04.3 builder, and both:
$ bitbake lighttpd and
$ bitbake core-image-minimal

worked fine with:

grep -v "^$" conf/local.conf=A0 | grep -v "^#"
MACHINE ??=3D "qemux86-64"
DISTRO ?=3D "poky"
PACKAGE_CLASSES ?=3D "package_rpm"
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
USER_CLASSES ?=3D "buildstats image-prelink"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS ??=3D "\
 =A0=A0=A0 STOPTASKS,${TMPDIR},1G,100K \
 =A0=A0=A0 STOPTASKS,${DL_DIR},1G,100K \
 =A0=A0=A0 STOPTASKS,${SSTATE_DIR},1G,100K \
 =A0=A0=A0 STOPTASKS,/tmp,100M,100K \
 =A0=A0=A0 ABORT,${TMPDIR},100M,1K \
 =A0=A0=A0 ABORT,${DL_DIR},100M,1K \
 =A0=A0=A0 ABORT,${SSTATE_DIR},100M,1K \
 =A0=A0=A0 ABORT,/tmp,10M,1K"
PACKAGECONFIG_append_pn-qemu-system-native =3D " sdl"
CONF_VERSION =3D "1"
IMAGE_INSTALL_append =3D "lighttpd"

../Randy

> -Bill
>
>
>=20
>

--=20
# Randy MacLeod
# Wind River Linux


--------------D38159C95B2ED80DC4550E00
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-1252">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-05-31 6:12 p.m., Cris Scott
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CY4PR22MB0006916E6957F29F955A1DD5993F9@CY4PR22MB0006.namprd22.prod.outlook.com">
      
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Not sure who to ask about this.<o:p></o:p></p>
        <p class="MsoNormal">Using <a href="https://urldefense.com/v3/__https://push.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-extended/lighttpd/lighttpd_1.4.59.bb__;!!AjveYdw8EvQ!IjX1DyHZJ7dwUtyALOFQVZn8VgQNRX29XBKx6NBRpbApF9vx-j_t8eKwsxzFofu_-99g-Q$" moz-do-not-send="true">
https://push.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-extended/lighttpd/lighttpd_1.4.59.bb</a>
          to build lighttpd, bitbake fails, and I receive tons of
          messages that look like:<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">ERROR: lighttpd-1.4.59-r0 do_package_qa: QA
          Issue: /usr/lib/<a href="https://urldefense.com/v3/__http://mod_staticfile.so__;!!AjveYdw8EvQ!IjX1DyHZJ7dwUtyALOFQVZn8VgQNRX29XBKx6NBRpbApF9vx-j_t8eKwsxzFofsRbsK8iQ$" moz-do-not-send="true">mod_staticfile.so</a> contained in
          package lighttpd-module-staticfile requires
          libc.so.6(GLIBC_2.4), but no providers found in
          RDEPENDS_lighttpd-module-staticfile? [file-rdeps]<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Can someone point me in the right direction
          to resolve this?</p>
      </div>
    </blockquote>
    <p>Hi Cris,</p>
    <p>It's been a while is this still a problem for you?<br>
      If not, how did you fix it?<br>
    </p>
    <p><br>
    </p>
    <p>Can you reproduce the error with poky?
      git://git.yoctoproject.org/poky</p>
    <p>What release/commit are you using?</p>
    <p>Does it happen when you just run: bitbake lighttpd ?</p>
    <p>Does it happen if you mv your sstate-cache (tmp*) directories
      aside<br>
      and do a rebuild?<br>
    </p>
    <p>What's in your local.conf?</p>
    <p>For completeness, what is your build host distro (I doubt it
      matters here.).</p>
    <p><br>
    </p>
    <p>I built poky from:<br>
      7f3c996d30 (HEAD -&gt; master, origin/master, origin/HEAD)
      lttng-tools: upgrade 2.12.3 -&gt; 2.12.4</p>
    <p>on an Ubu-18.04.3 builder, and both:<br>
      $ bitbake lighttpd and<br>
      $ bitbake core-image-minimal</p>
    <p>worked fine with:</p>
    <p>grep -v &quot;^$&quot; conf/local.conf&nbsp; | grep -v &quot;^#&quot;<br>
      MACHINE ??= &quot;qemux86-64&quot;<br>
      DISTRO ?= &quot;poky&quot;<br>
      PACKAGE_CLASSES ?= &quot;package_rpm&quot;<br>
      EXTRA_IMAGE_FEATURES ?= &quot;debug-tweaks&quot;<br>
      USER_CLASSES ?= &quot;buildstats image-prelink&quot;<br>
      PATCHRESOLVE = &quot;noop&quot;<br>
      BB_DISKMON_DIRS ??= &quot;\<br>
      &nbsp;&nbsp;&nbsp; STOPTASKS,${TMPDIR},1G,100K \<br>
      &nbsp;&nbsp;&nbsp; STOPTASKS,${DL_DIR},1G,100K \<br>
      &nbsp;&nbsp;&nbsp; STOPTASKS,${SSTATE_DIR},1G,100K \<br>
      &nbsp;&nbsp;&nbsp; STOPTASKS,/tmp,100M,100K \<br>
      &nbsp;&nbsp;&nbsp; ABORT,${TMPDIR},100M,1K \<br>
      &nbsp;&nbsp;&nbsp; ABORT,${DL_DIR},100M,1K \<br>
      &nbsp;&nbsp;&nbsp; ABORT,${SSTATE_DIR},100M,1K \<br>
      &nbsp;&nbsp;&nbsp; ABORT,/tmp,10M,1K&quot;<br>
      PACKAGECONFIG_append_pn-qemu-system-native = &quot; sdl&quot;<br>
      CONF_VERSION = &quot;1&quot;<br>
      IMAGE_INSTALL_append = &quot;lighttpd&quot;<br>
    </p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:CY4PR22MB0006916E6957F29F955A1DD5993F9@CY4PR22MB0006.namprd22.prod.outlook.com">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">-Bill<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------D38159C95B2ED80DC4550E00--
