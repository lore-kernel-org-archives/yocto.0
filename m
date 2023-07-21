Return-Path: <stephan.wurm@a-eberle.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4EFCEB64DC
	for <webhook@archiver.kernel.org>; Fri, 21 Jul 2023 08:44:18 +0000 (UTC)
Received: from mx-relay94-hz2.antispameurope.com (mx-relay94-hz2.antispameurope.com [94.100.136.194])
 by mx.groups.io with SMTP id smtpd.web10.2994.1689929057481359613
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jul 2023 01:44:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: no key for signature: lookup selector1-aeberlede-onmicrosoft-com._domainkey.aeberlede.onmicrosoft.com on 127.0.0.1:53: no such host" header.i=@aeberlede.onmicrosoft.com header.s=selector1-aeberlede-onmicrosoft-com header.b=dgTgo1jS;
 spf=pass (domain: a-eberle.de, ip: 94.100.136.194, mailfrom: prvs=055912b870=stephan.wurm@a-eberle.de)
Received: from mail-vi1eur05lp2176.outbound.protection.outlook.com ([104.47.17.176]) by mx-relay94-hz2.antispameurope.com;
 Fri, 21 Jul 2023 10:44:14 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zv0hl3efQkzZcZ9Xhc2XqJ/6KfywPNLWDsxvlmWnQ0uVXBcna9CYewzRdlxKhcdtLsAFPXrEfvx+MSgbNA5KHJRRl223CWHYhfMoHREeeEVUeTF0STu/B4+BSYgQ97qsXSke1617RJT894x7s1evAa9P4gcT4KWfaqbfOT1oo4CHoTiIhixKlsjZr4TkhR/9DwEdDVus/XLS7bCM52VGlqoZrfONfOLFvfpELjrILLKpOD6GCE9qnC/sogArrXMtGEOYFEifNcbv+e6OUzHPhuvimVSAv3bHjbMEaHWvgD4PfpLqLrzxmHPX7jZgwesHmjVi1LvqF1g98C9XtqHghQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=04jSZncA9Y8hNXsT8V8D3tuakrIVVHO0EiUDJbWwxuA=;
 b=JmglhkKnmCHvXc/lC+TlZ5veyi92K2g4wOqrkxoIgk5Y6B8GNZLuxbzIxiD7RBjDZoQr9QHA0fx0GuIm5vzGF3PIWGkXgcX/p4UM9hRq+H6+Mlpy92hJgfXFT6za6PIeFmSC96fcWwUMxwR1rthfXfo+h1o92ljGjfcR+mmytDzrqvdeogmjPJ3/YwB6aIngCWoXaNucXlmBT3fI80ApsFRgRzwObDwQI8/PhC4VhXrvsE6g1sDUresrclCVuEA/YM2SzYMhGWnlJXlNbOgwnty1iJbK3s8F7epoeEp9zHRtuk/lKnH97TfDiozy5vlhfy06KEE5DlSnzPRYclGmiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=a-eberle.de; dmarc=pass action=none header.from=a-eberle.de;
 dkim=pass header.d=a-eberle.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aeberlede.onmicrosoft.com; s=selector1-aeberlede-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=04jSZncA9Y8hNXsT8V8D3tuakrIVVHO0EiUDJbWwxuA=;
 b=dgTgo1jSp09HzMSndgkQC+Zu2WUbK/GAPSMRJ54r4I9IvrfMDa+a5uvnHM0H6REOFM6nJa/q39gC4DSd6uxzaiL+zF+iNDOh/tDSIsltBCZDqcoTEPj04gtYwEE7Gmdw9PCcq7yhRdB3ewCDDhuWpFAtAC/M2Lx5cj4U8MUAsYA=
Received: from DU0PR10MB7436.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:424::5)
 by PA4PR10MB5755.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:268::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.28; Fri, 21 Jul
 2023 08:44:05 +0000
Received: from DU0PR10MB7436.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8775:67dc:1840:d08d]) by DU0PR10MB7436.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8775:67dc:1840:d08d%7]) with mapi id 15.20.6609.022; Fri, 21 Jul 2023
 08:44:05 +0000
From: "Wurm, Stephan" <Stephan.Wurm@a-eberle.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: akuster808 <akuster808@gmail.com>, "Wurm, Stephan"
	<Stephan.Wurm@a-eberle.de>
Subject: [meta-security][PATCH] dm-verity-image-initramfs: Allow compressed
 image types
Thread-Topic: [meta-security][PATCH] dm-verity-image-initramfs: Allow
 compressed image types
Thread-Index: Adm7r4HsO3Js4UWJHESIH+2Uep85ZA==
Date: Fri, 21 Jul 2023 08:44:05 +0000
Message-ID: <20230721084347.276724-1-stephan.wurm@a-eberle.de>
References: <20230619065728.189934-1-stephan.wurm@a-eberle.de>
In-Reply-To: <20230619065728.189934-1-stephan.wurm@a-eberle.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: FR3P281CA0076.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::14) To DU0PR10MB7436.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:424::5)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=a-eberle.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB7436:EE_|PA4PR10MB5755:EE_
x-ms-office365-filtering-correlation-id: 9d48c909-893b-4df9-8dc0-08db89c6a467
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TWRDUH1kwlK66CuR4wo9YeOs5AnQLtvbO5vTdCsGUrUVwTbQXqulQfKkdtxNwPo6ZsJeMyvyN0lYP2lDn3WgMsgzCYTYOCnhnr+wbn1XWbVnCWb+4nb41AAso6tJwrD51snlmru5AemlV9L9IQkkUz6FBR2jxg/F7UCyELmkGIS6QIMiq8IlyfBFmdtU5Iyow9BANthO7Ynhlz5qwvrkqQG9XHUVSNoUdSh1l5zQmOjBq8eCtkLdf3fxERHKUad+tu5beL6bOJoqeY0shSfy6gwdagInN/s8TeAwdGYMH7ENYoh8MSWd+0ouT9btwDASWmtn8WMlQKVP9OVKKMFWNq6Oo3wgshr8lsgEPUXzW9cOAOrMK5Y6Zk2Wlux43VTZKDzsaQ1UXJcUyiha5Q6J/Tr+V6BElBch3jE+xoaGvgiHViEdu3FXXTWXLEdA/PIoZW3TWKUiQJLoI91yxbWLxRTMdbibNi9dbCdH37mxzPaJX66WQf2hsDUn9FhALn+v5O1ap4u8lxsSamXpgklXp1OwNonrNFDjNWTikZAreTUZcyhGG3xWzbWN0kzk3EXO
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR10MB7436.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(376002)(39840400004)(346002)(136003)(366004)(396003)(451199021)(1076003)(6486002)(478600001)(36756003)(54906003)(2616005)(83380400001)(6512007)(15650500001)(86362001)(71200400001)(2906002)(6506007)(38100700002)(26005)(107886003)(186003)(316002)(122000001)(66556008)(66946007)(8676002)(4326008)(64756008)(66476007)(66446008)(5660300002)(41300700001)(6916009)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?zn6ZhwlERoAvOcDwwq0eZpQgIGLAe2kiJzoJ3Rg1KNqzCwmRx76+gW46Wh?=
 =?iso-8859-1?Q?ctwUBlQYQiJx3tfzn19c4DqIV1erlQ6ALVhdkSUwi+s4F7sokgCXQ/nLYc?=
 =?iso-8859-1?Q?UUpmN5nst/4yRUNhyyt9cXUCBBSVIdynX644xgbPP/mvIJ/7QkpJ5lm7GM?=
 =?iso-8859-1?Q?kDZ+dRAnZqSn6FyZLt7NtrQEYxlnblCZmJpb4Tdir/7XD2BbV58zvr0Fry?=
 =?iso-8859-1?Q?xaswVyzaM3OPTTywGIlyFZAnFNx6v3Yr8tsrxI1Yhz/wV6tOgeDoj9yaSx?=
 =?iso-8859-1?Q?Jc2FptxGRLp6dacaKtBHJ8NtJM8aXo9TFnPl+FESIsFNW2lFKIhsDDHoFi?=
 =?iso-8859-1?Q?97yUfnPB01rmrCEtfPP9XO3325Rm+F2U94xi9r8RKBiG2ggKa6dfKSLTmQ?=
 =?iso-8859-1?Q?mNGf6JrKa7uT6Z64/26M/CD2ilAdiI4XtxYjqMuqiWh7grmBxo/CyZfd1+?=
 =?iso-8859-1?Q?5c8iWTIR7/bl+oU90qUjmhIRAxv9mCqr6H5WsHkgsdpp/i3HzG7pRrfdK+?=
 =?iso-8859-1?Q?g1AWfcFc6XuWCPdIeU3DbxIN5jTt9szDo1JRMA5ijvw/wrPbD2+HkhOfdD?=
 =?iso-8859-1?Q?FljbLUau46ofu54M/QcV3HjWiif583vvmvPuLxUPZZYilcWCkRuxuPJvOP?=
 =?iso-8859-1?Q?/BDryg1vPrUP/eUkhmJarOtC27zvsjEsVoYAFYMZlEKltLdZEhuTNuNsj5?=
 =?iso-8859-1?Q?ODqm0gRUL2HFV3RKAyWi1QJAHrZuVhATC6+g0VTe7VmoVO0iKevLOfDstd?=
 =?iso-8859-1?Q?3vZXFv/lw1+4Wn5ERbXgNTrlbJOJXN7VgdvW0cmfs1zQjMzcYtyTWjrNB3?=
 =?iso-8859-1?Q?i8cGDF/Um8yd1k2eI7TkEgm1aRuYuERQrACMPs1Pu6M3hfqm63Usuun5oH?=
 =?iso-8859-1?Q?9wY8DNPkguEt2xunzPbH2L25ArFPqnSo53oxiCpuvvE/Ddktcx7QmQ+jra?=
 =?iso-8859-1?Q?1lPeUS4y5CYwjkQ+8A1aNKYTvk2XlqnK0WOMUrmQXw9nZ6csCbqdeGhGvs?=
 =?iso-8859-1?Q?2SggOUM7w2dzA+FzyL68sRqqjEz1feCERcU+mw1DWVaftreyQYTRa1fduG?=
 =?iso-8859-1?Q?okVvYM2F0o54XyFSkNOP4URYXRDodvqLs0ccjzxOjyco69IAs7yBJ5shNs?=
 =?iso-8859-1?Q?X3kQWGEadIPOFrn4njV9msGUsQDOuBT6eTyLMPGl2LVhgzYhP11NkDz2Wv?=
 =?iso-8859-1?Q?b1uii8DyuK7MvA9s9/X9CvZ3FbkU0klBD7omCW26bt6N0Neab1FSWjEhsZ?=
 =?iso-8859-1?Q?ZQAWMrxe9X12vfjD4UqlmUuzurxtsJMRfLJJlBPdnpSRDwLUG7ukMCVz6Z?=
 =?iso-8859-1?Q?EOcXvK3lZqIqWoON+5HIG3Naf/jZ1dUIk0rjS/6a2P+cu0OLD1ubVCfbAK?=
 =?iso-8859-1?Q?PeTl2Zo9DhMGExXYUQcP05zOJ4uHA2QjvxhlOIX/WtJhfjeQBt8pD+3HPq?=
 =?iso-8859-1?Q?sxqy7OjBCJuA2z9YHd5wofzz/R9AfJzs1IXGWN1ULqiA+jDkKqSgKOJ2pz?=
 =?iso-8859-1?Q?PxJzthkDMRUGHzl3xFnJ5LSofZrZoYDcC7TGWYz/wR5YC4JKJAT7k/jomx?=
 =?iso-8859-1?Q?gYcYhL6RrMYgjavyWerXbmC68yTCK8G1HDwVNWDI+3we/SRW8wJY/n6YZy?=
 =?iso-8859-1?Q?tnsAOZOJnWx78JPJgtblakipPJwwb0VPB9F4JsaoKOdpf2GhcVogMdVw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: a-eberle.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB7436.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d48c909-893b-4df9-8dc0-08db89c6a467
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 08:44:05.7685
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2996bb3-18ea-41df-986b-e80d19297774
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i6ewN9FIgMC2uN910tu7J5V3mFcrMj+BC5budKb6wT0WdeBPRzyb9gUKbdtfr5HKbck8eiTkyqVA3rNzzD6voqMESI0AeUJviUUxmFch6qw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR10MB5755
X-cloud-security-sender: stephan.wurm@a-eberle.de
X-cloud-security-recipient: yocto@lists.yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: stephan.wurm@a-eberle.de
X-cloud-security-Mailarchivtype: outbound
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay94-hz2.antispameurope.com with B96B0178F0AF
X-cloud-security-connect: mail-vi1eur05lp2176.outbound.protection.outlook.com[104.47.17.176], TLS=1, IP=104.47.17.176
X-cloud-security-Digest: d73c8d72fbea3f91c3f6c69bdd39b8fb
X-cloud-security: scantime:2.321
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jul 2023 08:44:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60627

Using <DM_VERITY_IMAGE_TYPE> in the depends variable does not work for
compressed image types like squashfs-zst, as the resulting task
dependency still contains the incompatible dash. Replacing the dash by
an underscore resolves this issue.

Signed-off-by: Stephan Wurm <stephan.wurm@a-eberle.de>
---
 recipes-core/images/dm-verity-image-initramfs.bb | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-cor=
e/images/dm-verity-image-initramfs.bb
index 187aeae..78f7b49 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -19,7 +19,14 @@ IMAGE_FEATURES =3D ""
 IMAGE_LINGUAS =3D ""
=20
 # Can we somehow inspect reverse dependencies to avoid these variables?
-do_image[depends] +=3D "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE=
}"
+python __anonymous() {
+    verity_image =3D d.getVar('DM_VERITY_IMAGE')
+    verity_type =3D d.getVar('DM_VERITY_IMAGE_TYPE')
+
+    if verity_image and verity_type:
+        dep =3D ' %s:do_image_%s' % (verity_image, verity_type.replace('-'=
, '_'))
+        d.appendVarFlag('do_image', 'depends', dep)
+}
=20
 # Ensure dm-verity.env is updated also when rebuilding DM_VERITY_IMAGE
 do_image[nostamp] =3D "1"
--=20
2.34.1


