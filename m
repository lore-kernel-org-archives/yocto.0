Return-Path: <martin.leduc@luminator.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAEC38145
	for <webhook@archiver.kernel.org>; Thu,  8 Sep 2022 14:40:21 +0000 (UTC)
Received: from mx1.luminator.com (mx1.luminator.com [178.15.153.4])
 by mx.groups.io with SMTP id smtpd.web10.6417.1662648005635997099
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Sep 2022 07:40:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@luminator.com header.s=luminator header.b=FE5bg5LK;
 spf=pass (domain: luminator.com, ip: 178.15.153.4,
 mailfrom: prvs=025037213a=martin.leduc@luminator.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luminator.com; s=luminator; h=MIME-Version:Content-Type:Message-ID:Date:
	Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ScUW3wJDF5YAc0mjWyXCHB0nQrUEaOPKPKBuO63yMWA=; b=FE5bg5LKlCwOH+XIYJgeikaShm
	znXIGvODVn5QeJXlhIizYpvlLrWRiPiBi24EoELOYmeAuihxITZYBBuo15QJwc3IrNd3BPuePOw2w
	W6gnN6DgD2u31klc6/H4Cz5/zsUrF9ldcMtAkFRxRe7mD/GuP87N4QYGa8ng0WP3U1Og5WOPeGYFi
	2xXUfv88x7sXV/FAvw450XNsakjIQCrZYLwZKD0M0USx2teSkJLz4pI+txhMtaCARNf/mex0A2+Ot
	v4JJaAlQMQjfB22jQQXLa3pDhdCRqBFy69r5ajdnKPprJLRuQp/2j0rWk22D2+Fim+bPYsQwEq9GV
	KIxfTaYg==;
X-SASI-Hits: BODYTEXTH_SIZE_10000_LESS 0.000000,
	BODYTEXTH_SIZE_3000_MORE 0.000000, BODYTEXTP_SIZE_3000_LESS 0.000000,
	BODY_SIZE_10000_PLUS 0.000000, HTML_50_70 0.100000, NO_FUR_HEADER 0.000000,
	NO_URI_HTTPS 0.000000, OUTBOUND 0.000000, OUTBOUND_SOPHOS 0.000000,
	SUPERLONG_LINE 0.050000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
	__ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
	__ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
	__BODY_TEXT_X4 0.000000, __BULK_NEGATE 0.000000,
	__BUSINESS_SIGNATURE 0.000000, __COURIER_PHRASE 0.000000,
	__CP_URI_IN_BODY 0.000000, __CT 0.000000, __CTYPE_HAS_BOUNDARY 0.000000,
	__CTYPE_MULTIPART 0.000000, __CTYPE_MULTIPART_ALT 0.000000,
	__DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
	__FUR_RDNS_SOPHOS 0.000000, __HAS_FROM 0.000000, __HAS_HTML 0.000000,
	__HAS_MSGID 0.000000, __HAS_X_FF_ASR 0.000000, __HAS_X_FF_ASR_CAT 0.000000,
	__HAS_X_FF_ASR_SFV 0.000000, __HTML_BAD_END 0.000000,
	__HTML_ENTITIES_X4 0.000000, __HTML_TAG_DIV 0.000000,
	__INVOICE_MULTILINGUAL 0.000000, __MIME_HTML 0.000000,
	__MIME_TEXT_H 0.000000, __MIME_TEXT_H1 0.000000, __MIME_TEXT_H2 0.000000,
	__MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_TEXT_P2 0.000000,
	__MIME_VERSION 0.000000, __MULTIPLE_URI_TEXT 0.000000,
	__OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
	__OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __PHISH_SPEAR_TEAM 0.000000,
	__SANE_MSGID 0.000000, __STYLE_RATWARE_NEG 0.000000, __STYLE_TAG 0.000000,
	__SUBJ_ALPHA_START 0.000000, __TAG_EXISTS_HTML 0.000000,
	__TO_MALFORMED_2 0.000000, __TO_NAME 0.000000, __TO_NO_NAME 0.000000,
	__URI_ENDS_IN_SLASH 0.000000, __URI_IN_BODY 0.000000, __URI_MAILTO 0.000000,
	__URI_NOT_IMG 0.000000, __URI_NO_PATH 0.000000, __URI_NS 0.000000,
	__URI_NS_NXDOMAIN 0.000000, __URI_WITHOUT_PATH 0.000000,
	__X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-SASI-Probability: 8%
X-SASI-RCODE: 200
X-SASI-Version: Antispam-Engine: 4.1.4, AntispamData: 2022.9.8.135718
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Erf8BzLL4FU7wbEMXdwGaEdZ0kwAg7hGmh+UozrjboYUT57BEn+VxrQyZeeGTV8qvIF8AA+DzDA1hicuj/yei6ciaRiZE25oQxGlsRA+ymuiEYOXqIVNd4ae4JOXrzlWSkTiWPEzfwjhAYOhh4a+w4OT3+2lJjlNKO89odD0kaanZADuEau22es5/h4XU3BcU0MkXqlzrSZw6wk8BX1FQnudrgS9+oNvyG7N72piAptv/LwvmgQhRJXDg85jbtOClz4tWqceXxhf7rgo3OhwJ6OBwp7zLwZ0fPFLwrxXD1GwAJk0cFcE9xqJUGrAaU+cEbgaXB6IFL7En+rpEypC3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ScUW3wJDF5YAc0mjWyXCHB0nQrUEaOPKPKBuO63yMWA=;
 b=Wh7q1BluS7Vkp7m4vnlr7eG10eE3GWyIKucG+lpeYRCyf4iJW9/h2DcLJUxvctJUwSmwICNprQf37o+Y48qrGIly9Ogm85HjvT2iXwmQrBMO7p9wT9NKKBFPh/SNdD6oVifuIPCcnr1uUkW1/RdCbauvH8N62cPNLsl/3XhfglBOPUW8q9zmetc41OFpIxmPq07jiKtVdW1F0ntDGzMwDlV+jAHvwHULC5dFdI9eY7RZgN5OetehqJ/0aD6juHttk1mKBQ+F46tir9U68ZoI66BU5bt1BhmbfA6YfWV8AAeOqZbgc86bOBQiSBeM83G5oRh8ogu0GgRVz+wVrENS2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=luminator.com; dmarc=pass action=none
 header.from=luminator.com; dkim=pass header.d=luminator.com; arc=none
From: Martin Leduc <martin.leduc@luminator.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: meta-spdxscanner 
Thread-Topic: meta-spdxscanner 
Thread-Index: AdjDkApYzxHc3YO9SVOzQkaNTkr0Qw==
Date: Thu, 8 Sep 2022 14:39:53 +0000
Message-ID: 
 <PA4P189MB1183671D8AA8D2859685348C96409@PA4P189MB1183.EURP189.PROD.OUTLOOK.COM>
Accept-Language: fr-CA, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=luminator.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4P189MB1183:EE_|PR3P189MB1017:EE_
x-ms-office365-filtering-correlation-id: 0f11a32e-9c45-4e36-e899-08da91a7fe60
x-onpremisesmanualforward: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oNZv7SHrdLlUlOexNtNk2uBOKCXHw3YdCzRvwZU3ZVsiyFttNvuqGH8PT3bZb2JzfO5FPjxKVt1zxfturrufXZ0GJVggE4fzzDRgegl6Vz8MblAEPP9CwFsE0giLxcm/+duQXnrP3p9RTo1b9mJNoZj3nYJumX5XTO4UzhyRw7ANr68y3ovh2CTs0iCpceJ/W7KafSVacCfdTValt+cHH4un+Vco1oslSGdjBFc30K7NwrEj6ctD93DAWyHNY4g6QclKsX1Y5oFdP8BxL+LmoZ20mpm6IXOVuO/ccPn+dBIrtc9Y9PFqdI8OU3maTySVqJbuAW0fb62SB7Rff/uB2bCBIi2+/0QbXHKlqNcmD95ED7V427pOTEBO3Uqr9L+TjWuM7GDkL77s2qnbOh9RJ8ZOTAVrCWxw1PoMcDw+uWHmXB2uJnGIdCqyfnBYZHqn4Y960cInXQajuTBuHVwXleLr7IwxuEN3E12IQPwLVsXcLwAtm7wAgUg+sy2PEwOq/l3q0ncopycZxwzWr6VdjfynQmqCNoU3ZiiYVZmp39HjKo9ptUoDc2XtQZ1nQL2A89yelNow3/k/DGItFo5OrrBK1pQ+FGipMDBgrj6IFX4o8Nw15zHwxAehoMnTzuE6nMFfCKR0FyQT0FAzhvNQFmSch8S5OXypEa5BY1iGpjrGyXJt4jw+KWokCx7j1oV6XT0dZL0IYbBcJAorkJluBAQhCeTsZKQO57Vubxk/LOI6nc1iDjBCuce+rRLIYwxRD5vrU9t0JdkIsGnP+Ou8Gy5pCPPUoG6QjtvkuJQkhaE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4P189MB1183.EURP189.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(366004)(39850400004)(346002)(136003)(376002)(76116006)(66556008)(66446008)(478600001)(66476007)(6916009)(2906002)(66946007)(122000001)(38070700005)(33656002)(166002)(40140700001)(86362001)(38100700002)(316002)(8676002)(6506007)(7696005)(3480700007)(41300700001)(9686003)(71200400001)(4743002)(26005)(186003)(52536014)(64756008)(5660300002)(83380400001)(55016003)(44832011)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?t2BPrMk6C6wKJda+Cf0Gzj6AleAK4fqOZe2AX6bgfLyluS9unp7ssZO+eWOI?=
 =?us-ascii?Q?RyebLOGk0Oc+EE6WAhxolwdbWxQWH03SN7yEonZqbeM2hjdyJZO70xevDAdb?=
 =?us-ascii?Q?Jo676JGH8xv3smCYClVkL4tgxzAQ7ZXksYNhYuO457/Ap6NH7OPuG33wIYZP?=
 =?us-ascii?Q?G6hL4d3Rp5WMd2QahKTLLcVhyZ0aNkMGCcjxLNF6GAfQr5QOIVxMMwNbHsZ6?=
 =?us-ascii?Q?T7wulT613Ro+pBHrJPSqfFjkXZBrztf1bUS6+d0r3lHZs9HvpKWxePgceuia?=
 =?us-ascii?Q?Ugd03FWX53VpRsb0cKzdegukxoSWRjL1x3WKJOyGO+ONQ/7WFOJlSznFG42T?=
 =?us-ascii?Q?bK/E85zN0zoceEys4m2v+iQ6HbvGWiBCXEvUK4FBAb6Grmsvb2UtLH78ZMww?=
 =?us-ascii?Q?5XKJUngi8P36dBVuRR6FIdyX6dOMr/R30HZOE1OjPh0A7lnoMbSeSauzKP+8?=
 =?us-ascii?Q?E9XNqqUGb6u+M3Z4zTN8QlAqSMCAqhkNpVN5qf7W/dv9l4V6mAaOHFiXHa0Z?=
 =?us-ascii?Q?sBKrvdUYU7S0FEw1RV+TpsFBPNkuEn5AAfeHRO1s/jHJGzZefpq56LUWiSHZ?=
 =?us-ascii?Q?O7sd+HfkSyzUT7xdHFOGiXy1mmI9IRQAoQv/GpBCBeENxFFom92GJ1ReL6db?=
 =?us-ascii?Q?PNztnHDc4mYqeQkMvZ5F9rOcA34nRG4GcKqA6eObRqpY3pVi0LZvThLkxbAd?=
 =?us-ascii?Q?cc0cFxt/9SfCiWgftDbvDjxuiw+cM3Nn2IPweVWtBMwqgl/x5Q2ltQREb2rP?=
 =?us-ascii?Q?c4aJy3oSgNtzeyzlDf9wp+wEMGACvyNPX0Jhg07BM6RjdYu4uX0iGFlnH+sB?=
 =?us-ascii?Q?bgpK/fUXaAX0MdJMYuDVVr1rpyAsuNkukBmqpL8rj1BAYwDRJgQeeEDzXFE3?=
 =?us-ascii?Q?QRO0lUTnwS7PLPrpG8y/nv9l0wpBB0OMczhg5eEAnVmkXeioor5UIlZyeB+/?=
 =?us-ascii?Q?678U8XzH0e5HY+MLtInLYKnwhCK8P+ZcZvzV2T4BKq4I8P+oftGi23xyCe7U?=
 =?us-ascii?Q?sikRmT73CL7Wni0Y24wTZugIus1Bx90sk/RPGoBuW9lJnTBKFXKmg/51/5Md?=
 =?us-ascii?Q?WZ6btnLjRSTHwanjkhd7XgNWxc7uV10MSOasXDJQTVwX49K/1cIMejNVARrB?=
 =?us-ascii?Q?kTFo73GsgwLGYZhjSycPu+zc6LK8Sy2h3xhWFElROPF/NJfKhAfhBMCfEqkG?=
 =?us-ascii?Q?ST3SNNmZvheiQnZH/ITYL4NOHVyVUKJ19FWyv73BJFQJ538HgZ4fGe9NesgY?=
 =?us-ascii?Q?1NxAPw7ImXJIAkn1MUjCxMSHprQBm3yoEaeOYtkz956G09chiEy2JUYC9eCC?=
 =?us-ascii?Q?mrYZqbURqCOj6Ofvg56cvDVdc0o9imfMoGMfShBUFueOoRKKLxBQ1VFQw9Z6?=
 =?us-ascii?Q?/GURVtjADc/mPo2tUqFMzR9674WFZeQsTxXdBhx9jExSYynwqx7b/gOwAUJ5?=
 =?us-ascii?Q?lRq1O6pq8Owzv5jJtSA86Ez3+gPgCbSQduQ4kW5tpVGa5i+0sxc90AdR6lCr?=
 =?us-ascii?Q?8amcDibqywgQKh9yhWctPk1vAAQCabSBqVQGQdwUAUN9AuFgAaCVIZ0UBIJH?=
 =?us-ascii?Q?58rOXJ7ayCStq/nTrscZigt2pm8MLbr0Fd+ktNsHXIV0l7YvYQFDNgCgaOXe?=
 =?us-ascii?Q?Ug=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PA4P189MB1183671D8AA8D2859685348C96409PA4P189MB1183EURP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4P189MB1183.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0f11a32e-9c45-4e36-e899-08da91a7fe60
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2022 14:39:53.9050
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 41cde0b0-5383-4af5-89ba-5c7361af3a57
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 i5a9bF/6KKS93mlJZspBg/ZZ+ZLfH38zQOHZJFT/1OtXCOivnU+JewXtY/UJwHNsrY1Baw9E24di0dVlhVXmupBLa+SKppAET9S4bWN21Sk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P189MB1017
X-C2ProcessedOrg: 0aa505bc-c280-44a3-bf0b-cfdbed55e239
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Sep 2022 14:40:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58007

--_000_PA4P189MB1183671D8AA8D2859685348C96409PA4P189MB1183EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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


--_000_PA4P189MB1183671D8AA8D2859685348C96409PA4P189MB1183EURP_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
ailto:martin.leduc@axiontech.ca"><span style=3D"color:#0563C1">martin.leduc=
@luminator.com</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA"><a href=3D"h=
ttp://www.luminator.com/"><span style=3D"color:#0563C1">www.luminator.com</=
span></a><b><o:p></o:p></b></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PA4P189MB1183671D8AA8D2859685348C96409PA4P189MB1183EURP_--

