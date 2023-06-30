Return-Path: <benjamin.baratte@st.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1611EB64DA
	for <webhook@archiver.kernel.org>; Fri, 30 Jun 2023 15:12:38 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
 by mx.groups.io with SMTP id smtpd.web10.14913.1688137954669381438
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jun 2023 08:12:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@st.com header.s=stmicroelectronics header.b=c3qIii5I;
 spf=pass (domain: st.com, ip: 185.132.182.106, mailfrom: prvs=55455f6a29=benjamin.baratte@st.com)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35UEvwCg032096
	for <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 17:12:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=STMicroelectronics;
 bh=p7OW24gdpZlK6+Y4e/4bV1R9RLZLURB7e5opBbZ6lw8=;
 b=c3qIii5Iv03iOkB6ylOf709FCxXX2GKfnr/C0NPV99o6XwBqOZP0+HpE9ienrMjbSPKB
 GrXYmZRLk9GlSS8yBGD0aN1vaWjuTOJtoYNVPlPeZed8DzurBBMOMhZTrcmPCMQXZZ0A
 mhZNw0S7O8xK8DD227mEVgjR3/EpXE+MsPqGLPc4CI40BcTUZqxKIHj3FAFtizVncXoK
 DoFKvDztmz2j75QBkGrUSep2j6skLlzCo271TqQ/sw+mP4t2ExkBpm5VdYxVYQsKIPAm
 l2Cg9PtQbrtI6d69VRpF5ENYlNqXX1vzE9C8o9wHp+VeS0Hy/rJcGluiEbrlAM041dtw bQ== 
Received: from eur01-he1-obe.outbound.protection.outlook.com (mail-he1eur01lp2058.outbound.protection.outlook.com [104.47.0.58])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3rhw4e1pbt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 17:12:32 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dij28R+1At3T8MrVCGDYGJbJnOfC7kyvImIKOU3Mcgo2x/1ZdIqwXkWW7mwFCpItFRHVtavlO2GcWrBr4b6nqolVFdzAggvbM+xWJcSadQ06bkYb9j4V0Au0ITaIbn9pBzfGMsPEAi/TDGhjIHpylvStgAUcTjz8nY3cB6dnzRFcT0Pnb+r7XXp5p6yvqDlCZHoskASRgigczw05IZ/sk2FCiHTTrptAnTxTdVp+GHlcbNS+XgJY77SRydd/15vudSOUPf2tsnieoIwVitNPBCerZiSjdoC4+uKvna1VYWYJOI7bM06Y0EMmblq1FUc8sYxef4URvF1PU8QK9pFF2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p7OW24gdpZlK6+Y4e/4bV1R9RLZLURB7e5opBbZ6lw8=;
 b=aI0i+Aq5BVAgdc2+q++jFFqtD7ITMPgGWQW0ASp0HSSX3jmS2y1GbXfYp9GGU9o9KlC1ifh806U4x8R/1MLupyqmdIYZFhfwudQgOmUdwhIQDYV9oym3IEjZLCdjUfvg0WBKwPdvro8Z/y9sW1mi7kSlGqYLASGltvJxhbQm4HiWxvCTXubRGnBxXRd3BoqUhmfna70sVqo8cObHuT6wfXJVTgIuNi6wP3IoMlBz5dmRYE1p2bFntjK3os/fHiVoGiiRBAuyKNxV6BNZRcSOpv+bESMIj6v6b2WwmaHHX5je+vfezpipj9xOtTRxomTRRLIjSm0sh4MvK32sU5Oehw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=st.com; dmarc=pass action=none header.from=st.com; dkim=pass
 header.d=st.com; arc=none
Received: from DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:34c::22)
 by AS8PR10MB7643.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:633::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.19; Fri, 30 Jun
 2023 15:12:30 +0000
Received: from DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::163a:93da:d465:cbae]) by DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::163a:93da:d465:cbae%4]) with mapi id 15.20.6544.019; Fri, 30 Jun 2023
 15:12:30 +0000
From: Benjamin BARATTE <benjamin.baratte@st.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [QUESTION] [meta-security/meta-tpm/recipes-tpm2] Kirkstone release
Thread-Topic: [QUESTION] [meta-security/meta-tpm/recipes-tpm2] Kirkstone
 release
Thread-Index: AdmrZT1YNBx41yO/TmSJ4eFvVgDOUg==
Date: Fri, 30 Jun 2023 15:12:30 +0000
Message-ID: 
 <DU0PR10MB52441934DB7DE4BC76AF8804E12AA@DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_Enabled=true;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_SetDate=2023-06-30T15:12:29Z;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_Method=Standard;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_Name=23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_SiteId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_ActionId=4f814034-fb8a-42b3-9a35-1c129ea134b1;
 MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_ContentBits=2
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5244:EE_|AS8PR10MB7643:EE_
x-ms-office365-filtering-correlation-id: abd028a8-329b-41f5-91bc-08db797c6c98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QDS46WN8ShgiGCSQVdxnilLOttotNBcaff/6q1kyinpNfyGGOseeUjUDCjKsqM7sxTrA4AisOY0RTl3ZxTqkCM1+LNuBMYkHAMksyDiyG+97bppvQZ7xjXu7xY1+wBbGhs6jjMCIqVQZV2wqEzE2UhEWlKyC7FwsvfA0z5LemfFZUYoV/hO/tqb8ObcuFAvjLq0YJof8s0rnjwIU3rU+4tqtVakhtQqv9ZgBpnPlFbCyg+XYLrUlm8vMc0gSnjZKF6g43sU2HgHxNXlamF3PXbcNAz23YGI/ouKr5KkfH1wAIolAstiSsxuu4sW/VmccftiOPeEq3aI2P1j/yjhs72EP4JGDr+A5aB1oRUdX9aCMipMQS6w+uhlZxZilBjsmX9hSrXYNCUBwxwhtRsFg7i97Sd/nVbRxpVFnOPUkBiI/WPF0r46bGbydZjcuqi0oIAF2H0N3gjW4Pq25ViarfqS8oyK59dS0reKC7fjyJxoHqMRUh5qs85F9dLbrZtPYMTlxz0kl3sFkzr21HB0ofwSY+saIV3ckB2gdcNWRNHB2fKapA3D5taaQu8DW1yIE+JHLh5uwf/Q485eNoEpyHxRWKzi0+SPX4YxElgkDu2Y=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(346002)(376002)(39860400002)(136003)(366004)(451199021)(7696005)(478600001)(71200400001)(76116006)(6506007)(26005)(186003)(4744005)(15650500001)(2906002)(8936002)(38100700002)(8676002)(66946007)(66556008)(66476007)(66446008)(316002)(41300700001)(5660300002)(64756008)(52536014)(6916009)(122000001)(9686003)(55016003)(86362001)(33656002)(38070700005)(166002)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?JsWLHZctHHvZzHjkb1V3ivo6X1rlvURlpRsVhM/sx99YuHAkkXG+jPf67OsO?=
 =?us-ascii?Q?QpHeJc2DNHLJvSHbvOczFAEu7Ja7WnIlDf3wtT/7h+udKPVhJk2NHdgD9cRa?=
 =?us-ascii?Q?cy1+iWYrXjl97x0Ybug+8yqmp5IQH1Em18wGLbxwEY4XHxiwXYVB6gPMhiB3?=
 =?us-ascii?Q?Ty+Mlkun+dBpMX9Z9fkY/7+EOxXs+RrcipMJJgxCfEHIkleYWmvBYljwz71U?=
 =?us-ascii?Q?qLSNRubBeYO8tkdXQudy5LMr3kAvq6zPqv/+aVx2g9jtvypUzjv9vweFhSLF?=
 =?us-ascii?Q?hibmK7vvC7yjd2Urtmw86j3pQWCrjVFzQA9Hq+nJyPoECZDumDnXaEyq/7NG?=
 =?us-ascii?Q?7NzFjENPpzjk4TVd6PARKJ2YeGX8vXGRlqMf/qfTryWs4CZFZo8TzHM3eNmN?=
 =?us-ascii?Q?/JxZ825v8RqXyJ8T5JmEH/hLheGPGSCDUlwo+DIojmHYyAPSPwlw5ouy4e0W?=
 =?us-ascii?Q?Z0DKJfwqs6uTxk6Op4bLHx5bx63XY3e5qz/CrpyJx7POpjAJ8ou2GggL86zP?=
 =?us-ascii?Q?fh8CT3XHTrcmREXZ1gu7evuaFa2J6a1+08ORU7+bfDzue+BsCsweoWO5xSkC?=
 =?us-ascii?Q?Be39HXDSBgtnXxupLr3nNOmVegWEyM3YNDanhUwxjZn2cRp95MKVUwvCFRc/?=
 =?us-ascii?Q?wFpiyDEEjpyIULB+T7pp8Q1uoXFy0rFAtj32UlHpDpV8ENhMx0NI8xOedKiL?=
 =?us-ascii?Q?iK2U+BnFUgL7I17+QBpEwoaJ1KpLXNLUaV3vnpyxTuvzPvBSaPfYsoYu90PI?=
 =?us-ascii?Q?8E/0RKtG/r1/UAhsZV87u5nqgrRyrBvBVn6VcR9RsM3vMqFafZqgRdskdm73?=
 =?us-ascii?Q?7vHi5JrymBNUs3ixSK0Bm89V3WqnYJ1AgpFJ1friz4jcP4Jt0LI6IzZTOEPn?=
 =?us-ascii?Q?3jHIGADX2Bt2H1SpoMeHT8Q//jLKFSmVmBXH9L7bbkSG9dhQP0h+mjjkVqxb?=
 =?us-ascii?Q?FciKEWRNosmAYgi63ps/gUUaJLOyiMlevET0GiuM+voQ9unaBXLJNu7XWgOe?=
 =?us-ascii?Q?jA2GN1v3aJJHKHbTFdawAAaV8JH3Ee2Ty4PKSayNoyTsNLDVwenDFARx7YxM?=
 =?us-ascii?Q?8fq6f+FlSxHeD/Qh2tKug/UcKpFFZx8+w5kKXBtCUYxXIziJuoTDxgaSxluK?=
 =?us-ascii?Q?XhbcqxkdocN4QlERIR/h/E301muq4KauvIhmcqK4Ht3M2fLCQHcL9nvGNtDC?=
 =?us-ascii?Q?g2GCJkmbVXz3E9gQ1wJAfT1fLu09yq263qxE9rYol3F989KzU4l2CgKki8p2?=
 =?us-ascii?Q?yijcai0Bi6kkqRbJxxZwjvUhVDS9LGLu7P/m/mgZgmEgajxwt8ZDKDiLw8jr?=
 =?us-ascii?Q?Xaxvc3BqNb/R6n/1Prxk5UQBZvZGn18HnTaiqrihAfh0TD2KyqdAIHIrvkrj?=
 =?us-ascii?Q?RXkrTeANcUGhYA2x60YkKuEF+ApkKQKrUz7VK+PF0kK74miUnT0pWEKxZL5I?=
 =?us-ascii?Q?gd7cl+C/qX/UqhMYO7S6uiPmqIleixVYHHEoiaYVQ+MmxHtNiHLbGXOjZIGg?=
 =?us-ascii?Q?Vra1/C893fTb7dDDrlNy+xNaSVv0HfDba9Xpe1Kobxz6aBtxhX6AsbY6HBDY?=
 =?us-ascii?Q?lapiC2PtD+AWA5SfeZgX+SUQ/TEJVi8BVF+N0K69?=
Content-Type: multipart/alternative;
	boundary="_000_DU0PR10MB52441934DB7DE4BC76AF8804E12AADU0PR10MB5244EURP_"
MIME-Version: 1.0
X-OriginatorOrg: ST.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: abd028a8-329b-41f5-91bc-08db797c6c98
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2023 15:12:30.7508
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o2YeVgOwb2Q/nFXy2Nm1esHJVIgsV2oHWa23d2pr0nhm+Pbvhl2hUsglhMsQ81/JjpvaBc/uF8P5Fx/98euoRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB7643
X-Proofpoint-ORIG-GUID: YJ3JnCA6K3aJPdKi0n0xT5ZQeddUWXWK
X-Proofpoint-GUID: YJ3JnCA6K3aJPdKi0n0xT5ZQeddUWXWK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-30_05,2023-06-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=894
 clxscore=1015 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2306300129
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 15:12:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60487

--_000_DU0PR10MB52441934DB7DE4BC76AF8804E12AADU0PR10MB5244EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear Maintainers,

I'm using the meta-security with Kirkstone version to use discrete TPM with=
 STM32MP1.

I'm facing 3 issues :

  *   The packagegroup does not include libtss2-tcti-device library =3D=3D>=
 mandatory to use discrete TPM.
  *   The packagegroup does not include tpm2-openssl =3D=3D> support of TPM=
 provides for openssl v3.x
  *   Tpm2-tools is on release 5.2 which has an issue with tpm2_nvread (htt=
ps://bugzilla.redhat.com/show_bug.cgi?id=3D2158598) =3D=3D> could it be pos=
sible to update it at least to release 5.4
Thanks,

Best Regards,

Benjamin



ST Restricted

--_000_DU0PR10MB52441934DB7DE4BC76AF8804E12AADU0PR10MB5244EURP_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
p.msipfooter64eda7a5, li.msipfooter64eda7a5, div.msipfooter64eda7a5
	{mso-style-name:msipfooter64eda7a5;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-compose;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:229274960;
	mso-list-type:hybrid;
	mso-list-template-ids:-287413972 -1885540112 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:750739640;
	mso-list-template-ids:1547333420;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear Maintainers,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using the meta-security with Kirkstone ver=
sion to use discrete TPM with STM32MP1.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m facing 3 issues :<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo3">The packagegroup does not include libtss2-tcti-device library
<span style=3D"font-family:Wingdings">&egrave;</span> mandatory to use disc=
rete TPM.<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-lef=
t:0in;mso-list:l0 level1 lfo3">The packagegroup does not include tpm2-opens=
sl
<span style=3D"font-family:Wingdings">&egrave;</span> support of TPM provid=
es for openssl v3.x<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"=
margin-left:0in;mso-list:l0 level1 lfo3">Tpm2-tools is on release 5.2 which=
 has an issue with tpm2_nvread (<a href=3D"https://bugzilla.redhat.com/show=
_bug.cgi?id=3D2158598">https://bugzilla.redhat.com/show_bug.cgi?id=3D215859=
8</a>)
<span style=3D"font-family:Wingdings">&egrave;</span> could it be possible =
to update it at least to release 5.4<o:p></o:p></li></ul>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Benjamin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-ligatures:none"><o:p>&nbsp;</o:p>=
</span></p>
<p class=3D"msipfooter64eda7a5" align=3D"right" style=3D"margin:0in;text-al=
ign:right"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:red">ST Restricted</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_DU0PR10MB52441934DB7DE4BC76AF8804E12AADU0PR10MB5244EURP_--

