Return-Path: <martin.leduc@luminator.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 834BEC32771
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 13:39:38 +0000 (UTC)
Received: from mx1.luminator.com (mx1.luminator.com [178.15.153.4])
 by mx.groups.io with SMTP id smtpd.web11.28593.1664199575099444901
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 06:39:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@luminator.com header.s=luminator header.b=WLASDWQM;
 spf=pass (domain: luminator.com, ip: 178.15.153.4,
 mailfrom: prvs=026810c6b0=martin.leduc@luminator.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luminator.com; s=luminator; h=MIME-Version:Content-Type:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yEoj0316fug4aCZ/nPwzvbhkIJj0H8/9KEPkO16jAOY=; b=WLASDWQMyJ4T6rzU8jBayZ0zA/
	8oeMaTvQJ2beNg/uz19LbdRCLEPX5os4mWheGnZXR43lTqNwfcyVYUhYvKdxSm5TDpbBr3G5Sn81O
	kOAl9iJe02900lJaCXOVmiOh1XNCYxvXAhOFoALqNfIcCQymHe6Uz+yPiEnsm4xhlHR2hmDjezS+T
	N5y8CC9kDbBUgtat9vzZJqofOiKHjScCSi1XIVXFT3HLRvTHoyAvwE+XIYPOjzajnEq5mzJgsdSxt
	mUV/gcj/WfAZBgiCrT/SD8vquMyIdZ32G72fz4CFjRqQKJg+omN/OZJXLbHAwBou86hTtfzdIpKqu
	fGsPCX6A==;
X-SASI-Hits: BODYTEXTH_SIZE_3000_MORE 0.000000, BODY_SIZE_10000_PLUS 0.000000,
	BODY_SIZE_25K_PLUS 0.000000, HREF_LABEL_TEXT_ONLY 0.000000,
	HTML_90_100 0.100000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
	MSG_THREAD 0.000000, NO_FUR_HEADER 0.000000, OUTBOUND 0.000000,
	OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000,
	SINGLE_HREF_URI_IN_BODY 0.000000, SUPERLONG_LINE 0.050000,
	TO_IN_SUBJECT 0.500000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
	__ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
	__ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
	__BODY_TEXT_X4 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
	__BOUNCE_NDR_SUBJ_EXEMPT 0.000000, __BULK_NEGATE 0.000000,
	__BUSINESS_SIGNATURE 0.000000, __COURIER_PHRASE 0.000000,
	__CP_URI_IN_BODY 0.000000, __CT 0.000000, __CTYPE_HAS_BOUNDARY 0.000000,
	__CTYPE_MULTIPART 0.000000, __CTYPE_MULTIPART_ALT 0.000000,
	__DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
	__FUR_RDNS_SOPHOS 0.000000, __HAS_FROM 0.000000, __HAS_HTML 0.000000,
	__HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
	__HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
	__HREF_LABEL_TEXT 0.000000, __HREF_LABEL_URI 0.000000,
	__HTML_AHREF_TAG 0.000000, __HTML_BAD_END 0.000000, __HTML_TAG_DIV 0.000000,
	__HTTPS_URI 0.000000, __INVOICE_MULTILINGUAL 0.000000, __IN_REP_TO 0.000000,
	__MAIL_CHAIN 0.000000, __MIME_HTML 0.000000, __MIME_TEXT_H 0.000000,
	__MIME_TEXT_H1 0.000000, __MIME_TEXT_H2 0.000000, __MIME_TEXT_P 0.000000,
	__MIME_TEXT_P1 0.000000, __MIME_TEXT_P2 0.000000, __MIME_VERSION 0.000000,
	__MULTIPLE_RCPTS_TO_X2 0.000000, __MULTIPLE_URI_TEXT 0.000000,
	__OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
	__OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __PHISH_PHRASE10_D 0.000000,
	__REFERENCES 0.000000, __SANE_MSGID 0.000000, __STYLE_RATWARE_NEG 0.000000,
	__STYLE_TAG 0.000000, __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000,
	__TAG_EXISTS_HTML 0.000000, __TO_IN_SUBJECT2 0.000000,
	__TO_MALFORMED_2 0.000000, __TO_NAME 0.000000, __URI_ENDS_IN_SLASH 0.000000,
	__URI_IN_BODY 0.000000, __URI_MAILTO 0.000000, __URI_NOT_IMG 0.000000,
	__URI_NS 0.000000, __URI_WITHOUT_PATH 0.000000, __URI_WITH_PATH 0.000000,
	__X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-SASI-Probability: 10%
X-SASI-RCODE: 200
X-SASI-Version: Antispam-Engine: 4.1.4, AntispamData: 2022.9.26.131218
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jvgRF18lMLKSaCbd14YSL5mxcUatiyATsiXeHGfCXbReFpzgIF9dboGWvgX+OFF1BxZ8LL4rtnkk9uC+kmKJYQneG2qRg7+WkDnDKTBouRPjLqlBAHtjqElbpVA8fXkKkbYpFBtZ7XAFLsC3Wr3YzPcVgn6n8nQquWg81UoJFFjypgqkqcauz6CkF6byIpx90dhHal5xFiT1JQsrBvUR0zQv3g4ZBJn4U71UbfcBmYlP5bAqlg+qX4lRA7tlxKSMc5vdvM3GBBW0wO2X3HFhlKY+EEnHT6XEQMRuHffyYf1UtkhF1kpNgEP51A7vd7WH9zcsl+N64psmzKJvCLPh8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yEoj0316fug4aCZ/nPwzvbhkIJj0H8/9KEPkO16jAOY=;
 b=FZHbvAAUakYa3Ml8NTgeshN+JhBPHDeCVcZO/fAUOSSzFn1aeO77/GfGAKvG8TW2q46iMAUmsTlH209H+JBaxpbx8YwvOz/f5MEMRZ552FSE/X8QpNRujuggtPmxdDydD6cBuw0unXdF0nRI11hC5fM9UKFZCXc9OHB8b1OAxHzwqQn6bmu5b/p4oZUOCjaMd2zgOOKGaTvcA3s3iRTfWHgusbeIXWDxit2+t6Cfhu7uJ70aJ0M0chw6VlRM4woReb05uDgRfrO8AEvCXivmx8Px77DzNn2u+GZM+B2MIxpm9KQ/MmlKC4OYIjf2B5/z/91BsOyTxtQe1WGV6+Ec7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=luminator.com; dmarc=pass action=none
 header.from=luminator.com; dkim=pass header.d=luminator.com; arc=none
From: Martin Leduc <martin.leduc@luminator.com>
To: leimaohui <leimaohui@fujitsu.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [EXTERNAL] Re: [yocto] meta-spdxscanner
Thread-Topic: [EXTERNAL] Re: [yocto] meta-spdxscanner
Thread-Index: AdjDkApYzxHc3YO9SVOzQkaNTkr0QwN83yiQAAGfMeA=
Date: Mon, 26 Sep 2022 13:39:26 +0000
Message-ID: 
 <PA4P189MB11836AC9C442A1C40CE6538096529@PA4P189MB1183.EURP189.PROD.OUTLOOK.COM>
References: 
 <PA4P189MB1183671D8AA8D2859685348C96409@PA4P189MB1183.EURP189.PROD.OUTLOOK.COM>
 <OS0PR01MB6178419EDFEA4DD466F767AEA0529@OS0PR01MB6178.jpnprd01.prod.outlook.com>
In-Reply-To: 
 <OS0PR01MB6178419EDFEA4DD466F767AEA0529@OS0PR01MB6178.jpnprd01.prod.outlook.com>
Accept-Language: fr-CA, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_ActionId=21562af5-8238-45b3-a4e2-0ca6de4f1b93;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_ContentBits=0;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Enabled=true;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Method=Standard;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Name=FUJITSU-RESTRICTED???;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_SetDate=2022-09-26T08:39:44Z;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_SiteId=a19f121d-81e1-4858-a9d8-736e267fd4c7;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=luminator.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4P189MB1183:EE_|DB4P189MB2437:EE_
x-ms-office365-filtering-correlation-id: 86048ee6-3ff9-4b29-f457-08da9fc4877c
x-onpremisesmanualforward: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /69UueCB8Pns+6UXw4oEpMK4zOAu1a4/TW9gofKbGb+LJk9WUUXavtGf04F1aoFiPic7cl2lSqYDtAof9KwvldiZP0C6/Q9fBQGi0mnPK4lXVzaFNKoD7YOHBBjFimf1KMuDleCVEmHd3vvqf+SfbEXkv8VEsVYCeflbh2zANY28Ngict+ovb7z3QEeKy4xZtkgXoheWHQljk9te9tS56reZjNcvw22DNca27vIm3TcxsuLQF0BlrIXJBALoEflEVp0MyQiU10R9x2ZCucbG0EqVAaPEEe6IJlSoYAknFl87YEp98vQZIt5Y9WBA/TCbW2pAZlpLlVnDSn3Wh/Z8i9PpwuM3SHvt3mpDpdWFdUjO89FE3QNyK6wfldpDBXg2c0nHOgS+w0W0Fu4AoaXcMcsPlmILndWmpR31tjjvVyKwy8BheIKLx/L5qtmo3zM1nTU9ym75YSKXWbETCrz0wQ7S4OottRkfyg8XPPDMWkuoOtkPU8Y6CyH9Hw/xL+W28EvTCPEilfd3XYkiuD4FtvcYvOSSK6XwVZm5Rqx+abhDRCz99405tQKQKLK4GpoqdPZKLvgh0zxQ92yLi29626GAPxWE7bgmhrx/QJH446xv2K0nr6ejFY0E03ErDXjjreyT1MywmZCPoGPIkCWPQ31KDwV5BH82Td+THr0n3yhqUw9apiwcutfY3I+DTKGVP9Hf4l1lx4Q7SZGsMXTzyh58Vhu5tpoMnQXqf/nZzkJ9i3jjxdMCfrai0Zd1vzXtcNUs1QJoGyro83bEHKDC8xj27fSIYMAAgeQ+bL1elyI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4P189MB1183.EURP189.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(39850400004)(376002)(346002)(396003)(451199015)(55016003)(110136005)(66946007)(66476007)(66446008)(64756008)(71200400001)(966005)(478600001)(66556008)(8676002)(316002)(76116006)(86362001)(33656002)(122000001)(41300700001)(83380400001)(26005)(9686003)(5660300002)(44832011)(52536014)(8936002)(6506007)(53546011)(7696005)(2906002)(38100700002)(40140700001)(166002)(38070700005)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?gI1fdQAig4bQc2bo2AST+KZboBC8LhwEI6TEPwnC8YxSN4p8Q41vQLk7s7?=
 =?iso-8859-1?Q?Vnvek5O+8yIYng0DXe+finwD6iPA2h2EiXzhXymIqnfkMF6TjPBg6RvVMt?=
 =?iso-8859-1?Q?hFD/Cu2f/BCo76JviaIwyQXIecd93MP/qMog9zYanv4bDmWNKJIqw7tTlC?=
 =?iso-8859-1?Q?Zhkwn+mMAmYx/XbZZc6wpPlnzI1Mgn1s1n1NDp6k97iJHyj5/HRXCzeWDD?=
 =?iso-8859-1?Q?o3ukEJQW+waVVW+FGF/nLrWDSTDUTDXv30dsZ7imiBGYILIHcXovuNkP9U?=
 =?iso-8859-1?Q?rGp4UnTYjgaIVhQ3ucUCmG2SQJMIZ+4LGIYM5LHrElfHXHQ9+8tsAZxNxp?=
 =?iso-8859-1?Q?pbcD3OAHplD7eygKF0zCycKuWhGmyMv74JyhmivDvpwEeM+cbEmniiXrYi?=
 =?iso-8859-1?Q?+FnYructnUApAh5STCrBrseREUKgZkmbQC7fkSzK0MavY9WMUuW6nOA96E?=
 =?iso-8859-1?Q?GzKgd7Z/vopZMMeNunP2KYqqR5YV1kiwrPWteBcrGJ5kdnksCiR4KQUUgF?=
 =?iso-8859-1?Q?7wrDz1DHhgA/QqkrS78KY8g5UmFrR6FOAr2Wl+r9Ec+rlLczOqB06C/IZm?=
 =?iso-8859-1?Q?Z4Jid/lP7DnJf6ukt4UnzsI9D1fjgCLTUBYgg1ACW0aFv+UTZNXfszMlpy?=
 =?iso-8859-1?Q?ad9rmOKaC1CppgAmij11F2DocrOVENyOsZRZiTPNl9N0KKkljuWafHJvR8?=
 =?iso-8859-1?Q?tfdHf7+XRDhhhiD4kom2di2fHhGQx4p0VhJgle+8rpGnmae+3ENMQIjAQu?=
 =?iso-8859-1?Q?/1y7N/JYsG9tQ33V9RZnaswM59Mx9P5NDmsalrGRRQ0rhUqEB/jIFCk0/M?=
 =?iso-8859-1?Q?zRV+y8FwSSYU6+6HZ9qnAre91XiGw7fgtmKSPo5pijhCVzAvx9UTHU5ErN?=
 =?iso-8859-1?Q?uyQY6eMWUKYfnWVoNLrBp/oTMAr9bHeMeLwcUqb+gqO51RIX8LXR39fDFe?=
 =?iso-8859-1?Q?s+vsoPEsIT5yYJj488/12znnjaHuNdZzm0bAxgbherQGQN+93CdoCkj6db?=
 =?iso-8859-1?Q?IHSIz+fyJR3qPezuteDO93ki8b+hb+RwaZYqaX/LbmTpvjWU2d5pd8Dsjh?=
 =?iso-8859-1?Q?6/QF5ekiSysO7aE65uNOWfSZ2CWkDh07537E5CMD9XN7GfhTCSIM6XMo6l?=
 =?iso-8859-1?Q?ccCxBTQ9vbn8NIqTfuJT1RGt2AAjf/WBRSrsrutTlonZ43GscKsN9oQGEC?=
 =?iso-8859-1?Q?qEfSVnIVm8jjfYfQRpHOR2erVHJLEbvRxBBmY0HNsEgD2nmlAlZ/mzNLn7?=
 =?iso-8859-1?Q?seshW2n3u4MZqUfcEL5bLolqcFp0KqlNZhjqSeSfGWqQYR8HXuwmbm7rOx?=
 =?iso-8859-1?Q?ERmHKqgCLQnnl2VsRRqIdz2pyQF5Syl1xF9RuNlSdLPhpWb1Vp/+SfldOy?=
 =?iso-8859-1?Q?KByN1rwyv5KHOebVx8zzPFNLWw8w9Bbm7WKK/3E+BRbYg4eODb6yvEaHo9?=
 =?iso-8859-1?Q?cSLtgw9ZjJyqG1sDdtQ6nKBkUJ66nyp2bqobSDUUiA9evz858WX2Ic2Qye?=
 =?iso-8859-1?Q?iXO2DnvTxrwNLUeyqQK9P4U5HL1wv0p2D7lEDFp0GQ1AO8o1wYPIUHBDSQ?=
 =?iso-8859-1?Q?7P+jODuenPHt81vZbho2NFwLpHvUmDYIEmBxbO49LjV1nBmgI9pxbGsL1x?=
 =?iso-8859-1?Q?MXgNZtrwgFeIZ/HEYXum3UlYO0Bcmt0SgXzTwZIPGx3eiEtYw2EMT4+g?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PA4P189MB11836AC9C442A1C40CE6538096529PA4P189MB1183EURP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4P189MB1183.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 86048ee6-3ff9-4b29-f457-08da9fc4877c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2022 13:39:26.1397
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 41cde0b0-5383-4af5-89ba-5c7361af3a57
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 qsFMlyyi5ZSx56FGwbPS9PPcUsUTQt+PXfVvVLqNRyMZhQvUlSHki/zIxQLcrmzzi7wl0Muz8XLoRUlzPdCcRxZBKZK/F6C3SEjQgYd8Kw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4P189MB2437
X-C2ProcessedOrg: 0aa505bc-c280-44a3-bf0b-cfdbed55e239
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 13:39:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58163

--_000_PA4P189MB11836AC9C442A1C40CE6538096529PA4P189MB1183EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Lei,

Yes, the issue is fixed by doing the actions defined into https://stackover=
flow.com/questions/69858963/how-can-one-fully-replace-distutils-which-is-de=
precated-in-3-10 :

Replace
from distutils.core import setup
with
from setuptools import setup

into ../tmp/work/x86_64-linux/python3-patch-native/1.16-r0/patch-1.16/setup=
.py

The output is not really useful at the moment because it crash after hours =
of computing for the kernel and some other packages.

Actually, I've made a workaround to my problems by making a PHP script pars=
ing the Yocto SPDX output but it's not enough.
INHERIT +=3D "create-spdx"

My idea is: I do not use the scancode-tk as expected.

I've also built one Fossology server but it run hours and hours and hours w=
ithout finishing the produce the report and the reports are not, for my nee=
ds, complete.

If you have any input else than it's defined in the README, it will be real=
ly interesting.

Thank you for your help.


Martin Leduc
T : (418) 856-6896
martin.leduc@luminator.com<mailto:martin.leduc@axiontech.ca>


De : yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> De la part=
 de leimaohui
Envoy=E9 : 26 septembre 2022 04:45
=C0 : Martin Leduc <martin.leduc@luminator.com>; yocto@lists.yoctoproject.o=
rg
Objet : [EXTERNAL] Re: [yocto] meta-spdxscanner

CAUTION: This email originated from outside of Luminator Technology Group. =
Do not click links or open attachments unless you recognize the sender and =
know the content is safe.
Hi,

I'm sorry for late reply.

Is this issue resolved? If not, can you tell me which class you are using? =
I can't get enough information from your log.
It will be better if you supply the setting about enable meta-spdxscanner i=
n local.conf.

Best regards
Lei


From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf =
Of Martin Leduc via lists.yoctoproject.org
Sent: Thursday, September 8, 2022 10:40 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: [yocto] meta-spdxscanner

Hi Community,

I'm facing to an issue with meta-spdxscanner.bbclass.  A Python Warning fai=
l the build.  This is the error:

ERROR: python3-patch-native-1.16-r0 do_compile: 'python3 setup.py bdist_whe=
el ' execution failed.
ERROR: python3-patch-native-1.16-r0 do_compile: ExecutionError('/home/mledu=
c/1087/1087-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r=
0/temp/run.do_compile.3058985', 1, None, None)
ERROR: Logfile of failure stored in: /home/mleduc/1087/1087-NIM/build-sdk/t=
mp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/log.do_compile.30589=
85
Log data follows:
| DEBUG: Executing shell function do_compile
| /home/mleduc/1087/1087-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-=
native/1.16-r0/patch-1.16/setup.py:1: DeprecationWarning: The distutils pac=
kage is deprecated and slated for removal in Python 3.12. Use setuptools or=
 check PEP 632 for potential alternatives
|   from distutils.core import setup
| usage: setup.py [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
|    or: setup.py --help [cmd1 cmd2 ...]
|    or: setup.py --help-commands
|    or: setup.py cmd --help
|
| error: invalid command 'bdist_wheel'
| ERROR: 'python3 setup.py bdist_wheel ' execution failed.
| WARNING: /home/mleduc/1087/1087-NIM/build-sdk/tmp/work/x86_64-linux/pytho=
n3-patch-native/1.16-r0/temp/run.do_compile.3058985:177 exit 1 from 'exit 1=
'
| WARNING: Backtrace (BB generated script):
|             #1: bbfatal_log, /home/mleduc/1087/1087-NIM/build-sdk/tmp/wor=
k/x86_64-linux/python3-patch-native/1.16-r0/temp/run.do_compile.3058985, li=
ne 177
|             #2: setuptools3_do_compile, /home/mleduc/1087/1087-NIM/build-=
sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/run.do_compile.=
3058985, line 167
|             #3: do_compile, /home/mleduc/1087/1087-NIM/build-sdk/tmp/work=
/x86_64-linux/python3-patch-native/1.16-r0/temp/run.do_compile.3058985, lin=
e 156
|             #4: main, /home/mleduc/1087/1087-NIM/build-sdk/tmp/work/x86_6=
4-linux/python3-patch-native/1.16-r0/temp/run.do_compile.3058985, line 181
ERROR: Task (virtual:native:/home/mleduc/1087/1087-NIM/sources/meta-spdxsca=
nner/recipes-devtools/python/python3-patch_1.16.bb:do_compile) failed with =
exit code '1'

Any patch or approach to fix this?

I'm using Yocto Kirkstone

Any help will be appreciated

Martin Leduc
Superviseur logiciel platforme, Rail
Luminator Technology Group
T : 1 418 856-6896
martin.leduc@luminator.com<mailto:martin.leduc@axiontech.ca>
www.luminator.com<http://www.luminator.com/>


--_000_PA4P189MB11836AC9C442A1C40CE6538096529PA4P189MB1183EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cascadia Code";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:DengXian;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.cm-keyword
	{mso-style-name:cm-keyword;}
span.cm-variable
	{mso-style-name:cm-variable;}
span.cm-property
	{mso-style-name:cm-property;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR-CA" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-CA">Hi Lei,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">Yes, the issue is fixed by doin=
g the actions defined into
<a href=3D"https://stackoverflow.com/questions/69858963/how-can-one-fully-r=
eplace-distutils-which-is-deprecated-in-3-10">
https://stackoverflow.com/questions/69858963/how-can-one-fully-replace-dist=
utils-which-is-deprecated-in-3-10</a> :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:18.0pt"><span lang=3D"EN-US">Re=
place<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:54.0pt"><span class=3D"cm-keywo=
rd"><b><span lang=3D"EN-CA" style=3D"font-size:10.5pt;font-family:&quot;Cas=
cadia Code&quot;;color:#7F0055;background:white">from</span></b></span><spa=
n lang=3D"EN-CA" style=3D"font-size:10.5pt;font-family:&quot;Cascadia Code&=
quot;;color:#242424;background:white">
</span><span class=3D"cm-variable"><span lang=3D"EN-CA" style=3D"font-size:=
10.5pt;font-family:&quot;Cascadia Code&quot;;color:black;background:white">=
distutils</span></span><span lang=3D"EN-CA" style=3D"font-size:10.5pt;font-=
family:&quot;Cascadia Code&quot;;color:#242424;background:white">.</span><s=
pan class=3D"cm-property"><span lang=3D"EN-CA" style=3D"font-size:10.5pt;fo=
nt-family:&quot;Cascadia Code&quot;;color:black;background:white">core</spa=
n></span><span lang=3D"EN-CA" style=3D"font-size:10.5pt;font-family:&quot;C=
ascadia Code&quot;;color:#242424;background:white">
</span><span class=3D"cm-keyword"><b><span lang=3D"EN-CA" style=3D"font-siz=
e:10.5pt;font-family:&quot;Cascadia Code&quot;;color:#7F0055;background:whi=
te">import</span></b></span><span lang=3D"EN-CA" style=3D"font-size:10.5pt;=
font-family:&quot;Cascadia Code&quot;;color:#242424;background:white">
</span><span class=3D"cm-variable"><span lang=3D"EN-CA" style=3D"font-size:=
10.5pt;font-family:&quot;Cascadia Code&quot;;color:black;background:white">=
setup<o:p></o:p></span></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:18.0pt"><span lang=3D"EN-CA">wi=
th</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:54.0pt"><span class=3D"cm-keywo=
rd"><b><span lang=3D"EN-CA" style=3D"font-size:10.5pt;font-family:&quot;Cas=
cadia Code&quot;;color:#7F0055;background:white">from</span></b></span><spa=
n lang=3D"EN-CA" style=3D"font-size:10.5pt;font-family:&quot;Cascadia Code&=
quot;;color:#242424;background:white">
</span><span class=3D"cm-variable"><span lang=3D"EN-US" style=3D"font-size:=
10.5pt;font-family:&quot;Cascadia Code&quot;;color:black;background:white">=
setuptools</span></span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font=
-family:&quot;Cascadia Code&quot;;color:#242424;background:white">
</span><span class=3D"cm-keyword"><b><span lang=3D"EN-CA" style=3D"font-siz=
e:10.5pt;font-family:&quot;Cascadia Code&quot;;color:#7F0055;background:whi=
te">import</span></b></span><span lang=3D"EN-CA" style=3D"font-size:10.5pt;=
font-family:&quot;Cascadia Code&quot;;color:#242424;background:white">
</span><span class=3D"cm-variable"><span lang=3D"EN-CA" style=3D"font-size:=
10.5pt;font-family:&quot;Cascadia Code&quot;;color:black;background:white">=
setup<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">into ../</span><span lang=3D"EN=
-CA" style=3D"background:yellow;mso-highlight:yellow">tmp/work/x86_64-linux=
/python3-patch-native/1.16-r0/patch-1.16/setup.py</span><span lang=3D"EN-CA=
"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">The output is not really useful=
 at the moment because it crash after hours of computing for the kernel and=
 some other packages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">Actually, I&#8217;ve made a wor=
karound to my problems by making a PHP script parsing the Yocto SPDX output=
 but it&#8217;s not enough.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:#1E1E1E"><sp=
an style=3D"font-size:10.5pt;font-family:Consolas;color:#9CDCFE;mso-fareast=
-language:FR-CA">INHERIT</span><span style=3D"font-size:10.5pt;font-family:=
Consolas;color:#D4D4D4;mso-fareast-language:FR-CA">
 +=3D </span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#CE=
9178;mso-fareast-language:FR-CA">&quot;create-spdx&quot;</span><span style=
=3D"font-size:10.5pt;font-family:Consolas;color:#D4D4D4;mso-fareast-languag=
e:FR-CA"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">My idea is: I do not use the sc=
ancode-tk as expected.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">I&#8217;ve also built one Fosso=
logy server but it run hours and hours and hours without finishing the prod=
uce the report and the reports are not, for my needs, complete.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">If you have any input else than=
 it&#8217;s defined in the README, it will be really interesting.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">Thank you for your help.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA">Martin Le=
duc<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA">T&nbsp;: (41=
8) 856-6896<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA"><a href=3D"m=
ailto:martin.leduc@axiontech.ca">martin.leduc@luminator.com</a><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:FR-CA"><o:p>&nbs=
p;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"FR" style=3D"mso-fareast-language:F=
R-CA">De&nbsp;:</span></b><span lang=3D"FR" style=3D"mso-fareast-language:F=
R-CA"> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;
<b>De la part de</b> leimaohui<br>
<b>Envoy=E9&nbsp;:</b> 26 septembre 2022 04:45<br>
<b>=C0&nbsp;:</b> Martin Leduc &lt;martin.leduc@luminator.com&gt;; yocto@li=
sts.yoctoproject.org<br>
<b>Objet&nbsp;:</b> [EXTERNAL] Re: [yocto] meta-spdxscanner<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:solid #9C6500 1.0pt;padding:2.0pt 2.0pt 2.0pt 2.0pt" i=
d=3D"footer">
<p class=3D"MsoNormal" style=3D"background:#FFEB9C"><span style=3D"color:bl=
ack;mso-fareast-language:ZH-CN">CAUTION: This email originated from outside=
 of Luminator Technology Group. Do not click links or open attachments unle=
ss you recognize the sender and know the
 content is safe.</span><span style=3D"mso-fareast-language:ZH-CN"><o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA">I</span><span lang=3D"JA" style=3D=
"font-size:10.5pt;font-family:DengXian;mso-fareast-language:JA">&#8217;</sp=
an><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:DengXian;mso-=
fareast-language:JA">m
 sorry for late reply.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA">Is this issue resolved? If not, ca=
n you tell me which class you are using? I can</span><span lang=3D"JA" styl=
e=3D"font-size:10.5pt;font-family:DengXian;mso-fareast-language:JA">&#8217;=
</span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:DengXian;=
mso-fareast-language:JA">t
 get enough information from your log.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA">It will be better if you supply th=
e setting about enable meta-spdxscanner in local.conf</span><span lang=3D"E=
N-US" style=3D"font-size:10.5pt;font-family:DengXian;mso-fareast-language:Z=
H-CN">.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:ZH-CN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:ZH-CN">Best regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:ZH-CN">Lei<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:ZH-CN">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:ZH-CN">
<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.or=
g</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yocto=
project.org</a>&gt;
<b>On Behalf Of </b>Martin Leduc via lists.yoctoproject.org<br>
<b>Sent:</b> Thursday, September 8, 2022 10:40 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> [yocto] meta-spdxscanner<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Hi Community,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">I&#8217;m facing to an issue wi=
th meta-spdxscanner.bbclass.&nbsp; A Python Warning fail the build.&nbsp; T=
his is the error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">ERROR: python3-patch-native-1.1=
6-r0 do_compile: 'python3 setup.py bdist_wheel ' execution failed.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">ERROR: python3-patch-native-1.1=
6-r0 do_compile: ExecutionError('/home/mleduc/1087/1087-NIM/build-sdk/tmp/w=
ork/x86_64-linux/python3-patch-native/1.16-r0/temp/run.do_compile.3058985',=
 1, None, None)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">ERROR: Logfile of failure store=
d in: /home/mleduc/1087/1087-NIM/build-sdk/tmp/work/x86_64-linux/python3-pa=
tch-native/1.16-r0/temp/log.do_compile.3058985<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">Log data follows:<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| DEBUG: Executing shell functi=
on do_compile<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| /<span style=3D"background:ye=
llow;mso-highlight:yellow">home/mleduc/1087/1087-NIM/build-sdk/tmp/work/x86=
_64-linux/python3-patch-native/1.16-r0/patch-1.16/setup.py:1: DeprecationWa=
rning: The distutils package is deprecated
 and slated for removal in Python 3.12. Use setuptools or check PEP 632 for=
 potential alternatives<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|&nbsp;&nbsp; from distutils.core import setup<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">| usage: setup.py [global_opts] cmd1 [cmd1_opts] [cmd2 [c=
md2_opts] ...]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|&nbsp;&nbsp;&nbsp; or: setup.py --help [cmd1 cmd2 ...]<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|&nbsp;&nbsp;&nbsp; or: setup.py --help-commands<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|&nbsp;&nbsp;&nbsp; or: setup.py cmd --help<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">| error: invalid command 'bdist_wheel'<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">| ERROR: 'python3 setup.py bdist_wheel ' execution failed=
.</span><span lang=3D"EN-CA"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| WARNING: /home/mleduc/1087/10=
87-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/ru=
n.do_compile.3058985:177 exit 1 from 'exit 1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| WARNING: Backtrace (BB genera=
ted script):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #1: bbfatal_log, /home/mleduc/1087/10=
87-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/ru=
n.do_compile.3058985, line 177<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #2: setuptools3_do_compile, /home/mle=
duc/1087/1087-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16=
-r0/temp/run.do_compile.3058985, line 167<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #3: do_compile, /home/mleduc/1087/108=
7-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/run=
.do_compile.3058985, line 156<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #4: main, /home/mleduc/1087/1087-NIM/=
build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/run.do_co=
mpile.3058985, line 181<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">ERROR: Task (virtual:native:/ho=
me/mleduc/1087/1087-NIM/sources/meta-spdxscanner/recipes-devtools/python/py=
thon3-patch_1.16.bb:do_compile) failed with exit code '1'<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA">Any patch or approach to fix this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA">I&#8217;m using Yocto Kirkstone<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA">Any help will be appreciated<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA">Martin Le=
duc<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA">Superviseur =
logiciel platforme, Rail<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA">Luminator=
 Technology Group<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA">T&nbsp;: 1&n=
bsp;418 856-6896<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA"><a href=3D"m=
ailto:martin.leduc@axiontech.ca">martin.leduc@luminator.com</a><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA"><a href=3D"h=
ttp://www.luminator.com/">www.luminator.com</a><b><o:p></o:p></b></span></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_PA4P189MB11836AC9C442A1C40CE6538096529PA4P189MB1183EURP_--

