Return-Path: <holger.sebert.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682DEC47DDB
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 21:58:54 +0000 (UTC)
Received: from mx07-0040c702.pphosted.com (mx07-0040c702.pphosted.com [205.220.184.135])
 by mx.groups.io with SMTP id smtpd.web10.7480.1706047127519564618
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 13:58:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@karlstorz.com header.s=S-DKIM-20210427 header.b=NBa7Utak;
 spf=pass (domain: karlstorz.com, ip: 205.220.184.135, mailfrom: holger.sebert.ext@karlstorz.com)
Received: from pps.filterd (m0267679.ppops.net [127.0.0.1])
	by mx07-0040c702.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40NKPiKs030604;
	Tue, 23 Jan 2024 21:58:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=karlstorz.com;
	 h=from:to:date:message-id:references:in-reply-to:content-type
	:content-transfer-encoding:mime-version:subject; s=
	S-DKIM-20210427; bh=flJ6IPERhevpwTkJb2IgoU4BdexnWPB9mrntn3nW4YA=; b=
	NBa7UtakfMWp/cX2anoirHkOy5vJshC8/4uxoiAwnuhO6uAxuQVTuRBGHDsxK+mg
	zX0QMPJkNWsvua10nRSubkNpeXrE5K73YyQUD49nrum9xDpvJ9YJl+6Ly61U8XL0
	zIMSyyRatMG6glsvhFlZMHr233nWgV29Kad/XHrD3GsR3/BxPtTPz/8HUH4T8BYv
	8wJEGQ4TMjmgg4rxRFKd3tAITcGf3O3kim6giDV+35vFwtyKOcZgBfiFSjatwiuS
	bGRw/LWHmrMCNv1WcC2CKU0IbhdE965ECJeTn4ZRqWfoJk7ig1Ka/CM7+utabJkj
	CuclgM0o4nVES3LCg+uMlg==
Received: from eur05-vi1-obe.outbound.protection.outlook.com (mail-vi1eur05lp2168.outbound.protection.outlook.com [104.47.17.168])
	by mx07-0040c702.pphosted.com (PPS) with ESMTPS id 3vtmfpg9yx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Jan 2024 21:58:44 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XPlgHwienN3cfLno2fUJa+9QONtA9Q9anX5kI4lUNw0q1f+u029/spv0MuXITQsPrcLTs0N4cHYg9ejm5s0iISoXXQk4e8gcrUHdcUDlE/PkybzDmByGvckButNmoWbhg72LnjUvoRCGyNWMYr/gFlKaATosU5tlhn0YY10W5wqe5ZIdqdwi/KzLUVe2I8oAiWEit/wkKBFxs41oErnf1V/I3u/hxXtkPI3R5r9OX5j5djyGGcc19GzfTrCYuaOam8thgv+HuQACok0RaKkLp77Eho+j+gRSWH3ZrTTuVyNpJyFIdWy/drrg77GTp19Qx0wNDKzBlIQYGftRifz6MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=flJ6IPERhevpwTkJb2IgoU4BdexnWPB9mrntn3nW4YA=;
 b=Dwmc3Lnq4diOzc1JoSq47uZXyH7hJz4ITOI5CBAKnm7IwHTH0344Rn1SCWUhcqxkBLdAUjuAyhjzi4juvxQ8YZ9XiWWNedke+5E4PkLNdDAVh939aASf+24WXLSEBNeBjm5wMH3XciNkL44jeoIrhITQGSYCitityghCg2AQoIqWzKShOcDCm+tu4lEOxGp0JdIvpC8Gt8+4FQMtTLNKLfHBdsJLtAwduHoxwPiCi/gCs9AbGpp+2fOkH2hCVW2TwWcwVaaa5HAB6H3ox0goTGQx3R4HPtLmh5TGnMPJgldddYg1JjxX2JXTwXspqVQ2U3DO5SNCzfogwDL2dK4p7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=karlstorz.com; dmarc=pass action=none
 header.from=karlstorz.com; dkim=pass header.d=karlstorz.com; arc=none
Received: from DU2PR01MB8717.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2f8::19) by AS8PR01MB8054.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:375::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Tue, 23 Jan
 2024 21:58:39 +0000
Received: from DU2PR01MB8717.eurprd01.prod.exchangelabs.com
 ([fe80::c1b4:fc12:b79:3081]) by DU2PR01MB8717.eurprd01.prod.exchangelabs.com
 ([fe80::c1b4:fc12:b79:3081%3]) with mapi id 15.20.7228.022; Tue, 23 Jan 2024
 21:58:39 +0000
From: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        Richard Purdie
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [Ext] Re: [yocto] Remove Python dependency from target package
 only
Thread-Index: AQHaTTecl1bCseQXP0KzwQqhlRFQarDl1piAgAIc02s=
Date: Tue, 23 Jan 2024 21:58:39 +0000
Message-ID: 
 <DU2PR01MB87177C601B1943557B44F8F4A4742@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
References: 
 <DU2PR01MB871782D4F3B6384568F20F99A4762@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
 <07856f5e06ff5c9fc1ffa903b682426de2a32a65.camel@linuxfoundation.org>
 <DU2PR01MB87178F9BB04E6D84F03AFE1CA4752@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
 <f854dec6-5968-4b79-b8d5-6abfd8d75135@theobroma-systems.com>
In-Reply-To: <f854dec6-5968-4b79-b8d5-6abfd8d75135@theobroma-systems.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU2PR01MB8717:EE_|AS8PR01MB8054:EE_
x-ms-office365-filtering-correlation-id: 06fe32c3-cd95-4823-1432-08dc1c5e750e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 I7m7+7GR7T1Xi/Z4xYtUrDgdBguMliK5H1c20FNeDoERorkYzAahBFXQYw1BNBovZuiDl2gHinqYQ9vKlAoQprFqjx5fx/JuC+mIc+Jdyu9JYGruYR/V05Cq4O1oVjlOurmF0uetRPx1FqfEPmRWfvdu/js8+mL2JvGlbQFN3tBvBQsC1qrwJoh3BDEAET6zH8DXPJ1qRRglPG1uwJuBWDeJYKZtrSalkU+Kx7ZyLhetxYhhDZpCGNe5/PBf4MqYmO49egVziP/CGaqnIlXp+RNSl5DML041t26fqN9hDuBp+10EWDqnZsNcRtxx/NwA5QP3LXQvRPoPldVtLkOgyWIA/MJfwMaAsjmr77efwSoX+vSBtwT+D48czVjKPd15ubtQKlFvr2ngTS4JPLeW3dBR5Hf0nfmDUT1qibrZgrPCFXn1iXIrCy7vNHbVDY44f/towxxSN/TQAMuXd09iojygFUcwzLx0NOXraPM5D5kqk+Y434Ai7vuufifHQ4ahsMUZUmDSuojp6WmFRhzwCx27zWsVFSHWWXic+cr+iK/9yfYjkY4dOi/+ff/RIHCpoOk6FiQ8usLrBo6504lmcQKa2JtJFZqDzMlmq2xFaAvg1/1V3FY0U9Ykby4qcNXA
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8717.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(396003)(346002)(39860400002)(366004)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(66946007)(91956017)(66476007)(64756008)(66556008)(66446008)(76116006)(110136005)(41300700001)(316002)(5660300002)(38070700009)(52536014)(8936002)(8676002)(55016003)(26005)(83380400001)(122000001)(9686003)(71200400001)(7696005)(6506007)(86362001)(33656002)(38100700002)(2906002)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?nq0Q2aXY8xO73Ay6ZxL2ZTWJxZEhvlOhX292u41vvSp22vUXo6wx4DVfrg?=
 =?iso-8859-1?Q?wRCvSBtShh/oSuu/EwlgDfe/RvETqdtQ86iv8kAg5LC5uxNhOn5uALbqlS?=
 =?iso-8859-1?Q?6sC4rqpnKEI7jLgeSPHIjZlC+PW85NMdvdM+WYD9D0c3JfssxLDvIa/k2j?=
 =?iso-8859-1?Q?cis2uHlD3KJbQKPIizzYiVGjOwl141Yt0DBYt+5gNJIGBnZkdghHybBR6z?=
 =?iso-8859-1?Q?ahgHtL6g7389hTmDWmrkpzXrhvDowmcVw/cOR/l6xelWfxQydX4r14iE08?=
 =?iso-8859-1?Q?KePjrvYDY4dL1ReD7fxGiANfJpGqDKnbmSoZb4JVAGxM51V5B942qpofDm?=
 =?iso-8859-1?Q?EUiuVzu3e8EGtrZ59fMfaFRA2YBlKwylUWpLQUGtdFZlgXIipYSEgh5aaw?=
 =?iso-8859-1?Q?R/DU+tQH0kt1gse8BV1BBDQ/UOocMAK5AMUC+cIWzE/0ccdyFjgEWqVRlR?=
 =?iso-8859-1?Q?wSrY6Db6FGnOcheLZF8c0/AvMWBDn1fhjDnQZrFrEE/bCTz8wRFjMc9tQ2?=
 =?iso-8859-1?Q?bDRkrnSzNi+qPzGOoJZ9OVAKVbFbjWr+7HJ15Dbu8hrejel2nqG3MjpsCt?=
 =?iso-8859-1?Q?mzg2BexmrDa2dxjJ9CnKRgqWMTgYPUIt+/693vIk6+tfx+KjtjvdzlUO/u?=
 =?iso-8859-1?Q?zp2/VIjFaoRpLbUtXSA9cLi0LprZJp3HHH/cTcan4kGHPlk8J8QSu0YpPo?=
 =?iso-8859-1?Q?QTEFnVUd1phvDEgBe2uPAewXckbDOVw1papK9Ay5BsRIc6EoWtAnS4amoM?=
 =?iso-8859-1?Q?qs8wc4U1IjL2/mnYIS4QrqYsNbqKZZ2z1Cc+sm93fY4YQGvqLIAghYS4+G?=
 =?iso-8859-1?Q?veL8t8Hs6VEwsdXIW3BI1iEv+qCCUNAmmUX1ErcBIF8Qf/kx9bftDQUo7Z?=
 =?iso-8859-1?Q?z+aCtHvrkyXoXmTHurrgo4lcVS2l1UoX4bhU3dK+D4aPffAHmkyjYE7Gm+?=
 =?iso-8859-1?Q?HSHu1NVstoJLu9SVmlNgzCmT6t4nr9y4Yyi4yFFsAATY7he+bdGI5u10JW?=
 =?iso-8859-1?Q?5xJ1sCcrzH3NmOooAOyjNpYspUFUjYdae94hm1j0jIkd9QMVSJcREtQknb?=
 =?iso-8859-1?Q?6IhLGyrCoABKY1VQB6e22kVHgdDt9rJ9fKqOdFYQTTpJ2TqoBgGemJpRtH?=
 =?iso-8859-1?Q?y7NSkze+irI+zS2QEMgYEXwR6LNQmPbqvaO2fK0y68XIeMl2TuGBWtp/9u?=
 =?iso-8859-1?Q?cQ5GuNCUhrX5Zr7gY5MIY3rVGfFh+4CM+YnUEijFefrqBMB0QePXteBQ3j?=
 =?iso-8859-1?Q?oB+77tm2tIlKuQgvwRyoM5wmG0GhyFD/j15Ne/e17eRUgKnekHRfnh9ARo?=
 =?iso-8859-1?Q?55LsYWbxvvnjlrDJn9yUvptcunZ8Dcdc2yn8dSt0UN44gTApEM8Vw8f4Ob?=
 =?iso-8859-1?Q?V8ebYyh1es/mKihpy8GjMSQZMutslyifRsEvLaEdjUeeYQp1X/SGG+jx4s?=
 =?iso-8859-1?Q?7X3n+zx0PjUdBSarRM+6GFkYkkjOLn5rQ81uOoS68fTee5HzKu8JiUAJQI?=
 =?iso-8859-1?Q?vCbLDVEotOmIOboprguiLsG7CEtI+OEfe1EtizJ2tvU5fP+tlSyWt0t4qt?=
 =?iso-8859-1?Q?47EK1u50nMGpIPxa7twEsybuAJBRgkMYG7aD1El1bUNv2yBp8gSiOCERoI?=
 =?iso-8859-1?Q?OqMqc3iL+NGl6jmHc5CcofximnXNRUboc6sg7fHNORgOgyg7NrnNuzow?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: karlstorz.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8717.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06fe32c3-cd95-4823-1432-08dc1c5e750e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2024 21:58:39.6032
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4a0b6f21-e6e1-4ed6-9dcf-e60e7190f648
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fF3ivs1Q0eTX4wwL8U/3oYVYACAsMMbNk4e+7ZYNmwpG9FFNKK+SkdkKnRtFjDCbSKZ+Fs3sA6aJNmF7pIrvmMD7fwF+81gIYOY3GTNK0uU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR01MB8054
X-Proofpoint-ORIG-GUID: BivJ-JZ0xppT5u622bfVHL4Vu0uwEwEw
X-Proofpoint-GUID: BivJ-JZ0xppT5u622bfVHL4Vu0uwEwEw
Subject: AW:  Re: [yocto] Remove Python dependency from target package only
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-23_13,2024-01-23_02,2023-05-22_02
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 21:58:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62248

Hi Quentin,=0A=
=0A=
________________________________________=0A=
Von: Quentin Schulz <quentin.schulz@theobroma-systems.com>=0A=
=0A=
> What does=0A=
> bitbake-getvar -r libxml2-native PACKAGECONFIG=0A=
> and=0A=
> bitbake-getvar -r libxml2 PACKAGECONFIG=0A=
> =0A=
> return?=0A=
=0A=
Here is the output of the respective commands:=0A=
=0A=
$ bitbake-getvar -r libxml2-native PACKAGECONFIG=0A=
#=0A=
# $PACKAGECONFIG [6 operations]=0A=
#   :append[pn-qemu-system-native] /home/hosebert.ext/data/poky-python-getv=
ar/build/conf/local.conf:251=0A=
#     " sdl"=0A=
#   :remove[class-target:pn-libxml2] /home/hosebert.ext/data/poky-python-ge=
tvar/build/conf/local.conf:292=0A=
#     "python"=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/conf/documentation.=
conf:320=0A=
#     [doc] "This variable provides a means of enabling or disabling featur=
es of a recipe on a per-recipe basis."=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libxml=
/libxml2_2.11.5.bb:32=0A=
#     [_defaultval] "python     ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6=
', d)} "=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libxml=
/libxml2_2.11.5.bb:33=0A=
#     [python] "--with-python=3D${PYTHON},--without-python,python3"=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libxml=
/libxml2_2.11.5.bb:34=0A=
#     [ipv6] "--enable-ipv6,--disable-ipv6,"=0A=
# pre-expansion value:=0A=
#   "python     ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} "=0A=
PACKAGECONFIG=3D"python     ipv6 "=0A=
=0A=
$ bitbake-getvar -r libxml2 PACKAGECONFIG=0A=
#=0A=
# $PACKAGECONFIG [6 operations]=0A=
#   :append[pn-qemu-system-native] /home/hosebert.ext/data/poky-python-getv=
ar/build/conf/local.conf:251=0A=
#     " sdl"=0A=
#   :remove[class-target:pn-libxml2] /home/hosebert.ext/data/poky-python-ge=
tvar/build/conf/local.conf:292=0A=
#     "python"=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/conf/documentation.=
conf:320=0A=
#     [doc] "This variable provides a means of enabling or disabling featur=
es of a recipe on a per-recipe basis."=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libxml=
/libxml2_2.11.5.bb:32=0A=
#     [_defaultval] "python     ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6=
', d)} "=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libxml=
/libxml2_2.11.5.bb:33=0A=
#     [python] "--with-python=3D${PYTHON},--without-python,python3"=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/recipes-core/libxml=
/libxml2_2.11.5.bb:34=0A=
#     [ipv6] "--enable-ipv6,--disable-ipv6,"=0A=
# pre-expansion value:=0A=
#   "python     ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} "=0A=
PACKAGECONFIG=3D"     ipv6 "=0A=
=0A=
So ... PACKAGECONFIG seems o.k. Notice, however, that the value of the PYTH=
ON variable is incorrect:=0A=
=0A=
$ bitbake-getvar -r libxml2-native PYTHON=0A=
#=0A=
# $PYTHON=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/conf/bitbake.conf:5=
75=0A=
#     "${@sys.executable}"=0A=
PYTHON=3D"/usr/bin/python3"=0A=
=0A=
It points to the host's Python installation and not the one in Yocto!=0A=
=0A=
Best,=0A=
Holger=

