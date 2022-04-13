Return-Path: <Rohithraj.Bhaskara@ril.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C342EC47096
	for <webhook@archiver.kernel.org>; Wed, 13 Apr 2022 15:48:07 +0000 (UTC)
Received: from gwsmtp012.ril.com (gwsmtp012.ril.com [116.50.80.145])
 by mx.groups.io with SMTP id smtpd.web09.4768.1649847447212820540
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Apr 2022 03:57:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@ril.com header.s=ril
 header.b=Nk615gbp;
 spf=pass (domain: ril.com, ip: 116.50.80.145,
 mailfrom: prvs=095d3e9cc=rohithraj.bhaskara@ril.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=ril.com; i=@ril.com; q=dns/txt; s=ril; t=1649847447;
  x=1681383447;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=8Fa1gXL7GskJ6wZyAnwUFfu7AEFoVrGq5r+NhCPB4zc=;
  b=Nk615gbp6lRZUzaOcl50v/scNW/0Sp/2aumB1u3k54FbhO/+TBPHgs7T
   YfgsZJgvu+3rjMuFlqRUv0fGeOh/917HCfk3jqSjWKB+8ZIBGvAJ36w+3
   czxGHaM0wIHYo7oX/E7GYtRoBWIgsfc8CqI8PYgTRR8vqyjz3u83cus2/
   s=;
Authentication-Results: gwsmtp012.ril.com;
 dkim=pass (signature verified) header.i=@rilcloud.onmicrosoft.com
IronPort-SDR: 
 JP2SjriTn1DsAmFS3d47oxDGI3kIdVX19L3rAwduqvaybrB9FWbbF7PgG5IvdPlUHuJSgBoknK
 KPDhunCjnDcg==
X-Scan: Yes
IronPort-Data: =?us-ascii?q?A9a23=3AH3mDaal/Wej7Yn3lFarTOtjo5gzjJ0RdPkR7X?=
 =?us-ascii?q?Q2eYbSJt16W5oEnelBvCyzfZqvlOyG2Pow1B9zgsR9E1seBmo89H20183ppU?=
 =?us-ascii?q?n5H79bVGbx1RW/+ZXjPI5bJRRI/5csXMYCccs5vRHLS9h2jP+S88XB3j6zYG?=
 =?us-ascii?q?LSiU7aVa3EgTlZqFy5+1Bw9wedg0tYz34mwU1KA0T+eT7Uzb3f8hWYobwop1?=
 =?us-ascii?q?k6jlP9OlKX+tToW4VFiaawb5g6CyHccXM0SevnodnLzHNgMQLDnSreYxtlV3?=
 =?us-ascii?q?EuApEx0UIvNfpUX0qEyrze70TGm0hK6YID/xEkazsAO+vxjbqBENR4M02/hc?=
 =?us-ascii?q?+1Zk72hi7ThEG/FAYWcwIzxYzEAe81PFfUuFI3veBBTguTPp6HySEYA9t01Z?=
 =?us-ascii?q?K0AFdBDoL8rXQmiwtRDQNwFRkjra+tbW9tXQME07igoBJGD0I/yJhiMZNwEZ?=
 =?us-ascii?q?MvKT6wvQ42SjTNZ9CwxissXGuvCP5RfcztrKh/HZnWjOH9OUNRnxrbu3Ci5K?=
 =?us-ascii?q?mwAwL6WjfNfD2z79gtx0aTtKtPXPPaKTN5Wl1yRjnjH+yLyBRRy2Nm3mGfZo?=
 =?us-ascii?q?in92L6ncSTTHdh6+KeD3uJthVSI1CoBGR8bSkC4oNHij0KzUZRULEl80jspp?=
 =?us-ascii?q?rQ13EiqVcXmGQy/q2KDpgQbWddbD6s98g7l90Z+y251HUBdFngYMo1g7p5wH?=
 =?us-ascii?q?G1yvmJlVujBXFRHmKeUTXmZ8aqY6zS0PCkeN2gZYiEYCwAC5rHeTEsb102no?=
 =?us-ascii?q?g5fLZOI?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A4GwK7alJEGg4i2V4awXfrabQwB3pDfOUim?=
 =?us-ascii?q?dD5ihNYBxZY6Wkfp+V/cjzhCWbtN9OYh4dcIi7SdW9qADnhOFICOgqTPiftW?=
 =?us-ascii?q?zd2FdAQ7sSlbcKrweQfhEWs9QtqJuIEJIORuEYb2IK9voSiTPQe71LrbX3k9?=
 =?us-ascii?q?HLuQ6d9QYWcegAUdAG0+4NMHfjLqQAfnghOXNWLuv52uN34x6bPVgHZMWyAX?=
 =?us-ascii?q?cIG8LZocfQqZ7gaRkaQzY69Qinl1qTmf/HOind+i1bfyJEwL8k/2SAuRf+/L?=
 =?us-ascii?q?+fv/ayzQKZ/3PP7q5RhMDqxrJ4dYyxY4kuW3bRYzSTFcFcso65zXQISSaUmR?=
 =?us-ascii?q?EXeez30lUd1gJImjXsly+O0ELQMkLboUgTAjfZuC6laD3Y0JTErXsBerl8bY?=
 =?us-ascii?q?41SGqo12Mw+N57y65FxGSfqt5eCg7Bhj3045zSWwhtjVfcmwtprQc/tQ0WbW?=
 =?us-ascii?q?IlUs4bkWXfxjIjLL4QWCbhrIw3GuhnC8/RoP5QbFOBdnjc+m1i2salUHg/Fg?=
 =?us-ascii?q?qPBhFqgL3Y7xFG2HRii0cIzs0WmXkNsJo7Vplf/uzBdqBljqtHQMMaZb90QO?=
 =?us-ascii?q?0BXcy0AGrQRg+kChPeHX33UKUcf37doZ/+57s4oOmsZZwT1ZM33I/MVVtJ3F?=
 =?us-ascii?q?RCMn4Gyff+qqGj3iq9NVlVBw6duP22z6IJzoHBeA=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.90,256,1643653800";
   d="txt'?scan'208,217";a="95483969"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NhqleWMTLT4ZhYVEiutD7F6WrwmldLSIlC3U7FadwbbSa5r8fqPmZe6FdVis3cA3lVtKVXDbtC4MCzEW0gnWT73T0k+RjaSAU6T6NE4Bd4CmVeN+hGYnbhx9AQuXJ76D6yrEv+JKTsoy1Jh0Ir2Lr92FfLXUk/Puy0EYSS7i4FVfdL3AnkLU25p5+OeEL/s1Loi5nJAhRh5KqzChDnXz3kyztVwlK/3txXgN4w7LKffdhqSQuQdXJ9Jg8BZ+l9g7Ykaz+W0IwKVO4rdqtfA51CpjFxda18g9PJwiGRw9iEcxtG/CQJdE2t6IuYXDQmM6U7yJYEq0Q5MGFEt39hg20A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+QaRK6i50KF8AGFbicBfcPqWhq/FH3cRjLuYy6o9is=;
 b=I5tmu/wgvuCEDR/3pft/aeLq9JkDTiCAEmtZ2EErkkYk6cEXzu2GmyMMVDGTPmvhSQG7sLnKJ1J2J61mO5wH7v+BG/P7w4+hVMG7GrFXKakFoyP0gQmNwiVK6WOt3ClL9aLxj09q+YEEmjyYRJg51trrJOeFSM3FA4UJSk0SctOCCsDjgkWDvOarRXee1LQ91ogR96OexsYz7oEGeS5MfFLABwX9UBmBjP6r3V/gnwKEgPDleBCU0fZnDNp8oYFSnOg5UgtR/LVvK4F7LNlumKsrQBJhr4aD62mUXhqDMnjcAhf3ytipxbg/9qEwRF9h55LDmTIuDP5ZSHkYo+YoWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ril.com; dmarc=pass action=none header.from=ril.com; dkim=pass
 header.d=ril.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rilcloud.onmicrosoft.com; s=selector2-rilcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c+QaRK6i50KF8AGFbicBfcPqWhq/FH3cRjLuYy6o9is=;
 b=NJh8m41ZeAdriCB0E8dMYxnfrC80Sm4fa9BjcJoT1biGEY7PlpazZV5scQhQ8PtybJu//jzqTWlP0Q9sGovYuzqxxN6XEkWDL8mxZrHFmp8rW/3vz2cSWoaV8fuqhWZLlIbFCxFX6YTRE7rK78qOxdKOBgyZiRjqhwu/wKMlXiU=
From: <Rohithraj.Bhaskara@ril.com>
To: <tomasz.zyjewski@3mdeb.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [External]Re: [yocto] Yocto Kernel building
Thread-Topic: [External]Re: [yocto] Yocto Kernel building
Thread-Index: AQHYTyK2zL8tL1EhqUGsmGMj9RKCfaztqgpf
Date: Wed, 13 Apr 2022 10:55:31 +0000
Message-ID: 
 <BM1PR01MB32035E9889C574FB564BA0E694EC9@BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM>
References: <6bRo.1649842734627600476.zBxh@lists.yoctoproject.org>
 <22827.1649846174423979427@lists.yoctoproject.org>
In-Reply-To: <22827.1649846174423979427@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85b42e66-bdab-4050-24ae-08da1d3c211d
x-ms-traffictypediagnostic: BM1PR01MB4931:EE_
x-microsoft-antispam-prvs: 
 <BM1PR01MB4931D5696028108B3BD998AD94EC9@BM1PR01MB4931.INDPRD01.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2KKw2P2BzQghQnA/yrrYGOGzQyh2NpikvVa1DyNn9mUKToXhVzKGMXQiK+oxRcCJqC30eU7AYq8RLqaX0ryXg5LHJ1f+6Pcp4v8My97HX5xF0NgHGw0q7L01iteak6YGB6J11sBK9LYw5MXlg2U2hmFtJkw8aQXfg8l7o3DIvm3XYRGiiwvv/lDhob1hXIWPUsqNhY7p3VREoHT0y5E76VGQszpPhuXoMOvgvIi19h+lD3J0q6+2RqGP9q9LMDjYvE5EfKE+5RJ/1AjUN17xZlb26rx+ZQikjUIIFPQt5jtXE3FpdMCkSUCMfRAM2c+ZUsVIg04a7WS1Kv91wLchTnavc2oQqAnjQXDFnu3qHQpbdGRKbyeT8Hb0SpsNuxNVxsVsuCUp5hM7FvecIvNm4P41xyI1dO9o6aNsMb2nqCXbyhjAQwmXie96gtXIXeL6iecQpbgxMtNbELFkUFgOW7l0IVaRmu5xim6sElfVxRD/rlh0lp1KTiukjOfm0TJ2E+iFFQ5W4Ya8XJ/3sv0H+C+b8eqqM2Hf8FC+RLx0rn1mBg0xpgJxTeGFGBqQjsTVrutHIEW6cEk20IiCLiTQYWDKYklgzzee0EShxhqTt6vDGY0lqAaRy+zg07dm9d+hzbsyjfFmZdz20L7Q44jPJ/ROxRUgM5ESUQWPZvjk6NUtKi9LsKcaozZrX3hyJchpRNQctO8V2e831mjU9QK/eBzYLJZNWowaJoy0euvcOtgDImLrDg+WjxCjF8X+iYNIVluFfEETMZQSpiA+hWoaB3BDS0u3Aoudt64zMtuWXfM5kswsU5i1MUkeAgo8XXlpOKgYUX9oTRitCLxAYiQzGg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(71200400001)(66556008)(64756008)(66446008)(66476007)(8676002)(66946007)(26005)(966005)(2906002)(186003)(66574015)(508600001)(19627405001)(6506007)(33656002)(7696005)(8936002)(76116006)(52536014)(55016003)(83380400001)(316002)(9686003)(82960400001)(38100700002)(166002)(99936003)(53546011)(5660300002)(110136005)(122000001)(38070700005)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-2?Q?IObXUAyj33z3Ycvixq72YpxNd5IvOUx0A1FghovTglvI/qcQPrpCic1idz?=
 =?iso-8859-2?Q?8Q2iFKNGTpw1ueeuMS1oXTmHx2nrutYpwY+Ojx0Wo8Dyj6KXiiijg9+ryn?=
 =?iso-8859-2?Q?vk37+VcAwXIJW6gqfxvxBRmoGJ+l8uoON3YJtrvM53zKyjghSurOzPxRwr?=
 =?iso-8859-2?Q?viCxG7Zei5FCAe/BuOJbDEU9PtxwvdCopCKm7Ng1J2htQj1DAMkkWupAT9?=
 =?iso-8859-2?Q?nQbSjwJXti+eR1fmX5zkXySWEyW6hgnFrBbLBGp6gx1i0yyeTn/4Ibg7s7?=
 =?iso-8859-2?Q?/aMKAvMCJpnq5jEjC/AKh4lUaVe+Qjfa3kc55UNEKdX7t2Vu7cjrcHx1He?=
 =?iso-8859-2?Q?CNvHD1PokxEMn6BI7vsfOA1MMpUYesi1v1SVCP08bAKJBGpWp5ZxSgAXgq?=
 =?iso-8859-2?Q?zcnOc62QpmR5hMXdqwF6ad/pbDNZEqQgMggoGU2C6HqbO37yEYhek9dcbg?=
 =?iso-8859-2?Q?ahcdGZV/J+ZetvHwiWmvRmf58Wb35vuZ4Jd8Ns63gNJRAtdpA8Pch1sIih?=
 =?iso-8859-2?Q?1O+A8nCnyBsI1mlFqzYihJ0yRARF0AyfoJL81TYWplPWSdkwGRa3sWMMut?=
 =?iso-8859-2?Q?xpdf+aKLazgvIwyy95cZt2pgow0jLfF6KFOaMQ+Ph/TqsVzmUbYj6JV6Mw?=
 =?iso-8859-2?Q?u/iPfCs8NndwzykYj00VbyEEJscJMMUx4GV/tl9+8p+penGU6Pc8B1r+HB?=
 =?iso-8859-2?Q?DkHb/yoiM6Bis+29Y37ytzVN8IEN2P7FjjXn5cpx76qtPLwDW62ToDd2Up?=
 =?iso-8859-2?Q?ZH4ryR9jDvBkPXA2M1M9sbaYjjhoPyR7VLIWW09ft8kgqhqb3UHcy2fyWU?=
 =?iso-8859-2?Q?gzH+DRc2rwIlFTpjZ8b6j4tlDjtx7A3Ee0us61MtHR8SUfdW2F53dW7467?=
 =?iso-8859-2?Q?gKa0DH6+onVIXzow5zkhi//wlxEtKd7l4DEw4IKuMxvTLKWprLrzSe+zVq?=
 =?iso-8859-2?Q?dtd+Q4PUWEgZ6Mrrv0Pg3W6zFnh6rb7OWDA5HhtqOm5L8w/D0YXQ2AjVgi?=
 =?iso-8859-2?Q?Tm170RmpsIRYKVGT66qG+XGT+idCcUaYEFDlfBc4MzuvKs9ei5lx24wKo8?=
 =?iso-8859-2?Q?UDNAJJWeLt0/apCuJvWIRlIYD92+qyqVU9drklRr86NLAk2/mnWDdMDPnF?=
 =?iso-8859-2?Q?5rouR+mF7DsKy2RSFCONrhI6Mec9ruBJvyr0gYE8H6zVBK2ydfLEdKphqt?=
 =?iso-8859-2?Q?N6YeGUcBnEOlzShoFTPiLy5zZZYqXdwa3i+/FwoDTjl3z7Ue66CjMBJOK0?=
 =?iso-8859-2?Q?b61eYAEguas5iHaG/jBq3D0dVjjQW8VZQvt/oP3znLBdfmWbtz6vu+WLqo?=
 =?iso-8859-2?Q?5xFomaEtv2xFZoWrMAboc1DKYJdQRTd7pZjRMccFqVf54zuB07O7pUdJHA?=
 =?iso-8859-2?Q?tO0ZGfYkXtLOJVG+BozmvhMNIMMa7dvt03UpHnjBMMRk3/Ujmum1e+YSmt?=
 =?iso-8859-2?Q?frSdAMAMKXJXsxNiW73GinAFu1wY64kjhd9apM9YvSLteFtxx+w4TQ2uXp?=
 =?iso-8859-2?Q?DISJNquDPRUAwWI0YSJt1uMN43l0LDHlztIXmIUKy/YnPK+j9rpl/Aa9Fg?=
 =?iso-8859-2?Q?dp41MFdEvE0UW6AyVoFCUKU9yGyI1ehb5imoV0jK8NYMjgmWdR5DMyImgK?=
 =?iso-8859-2?Q?2ZVkqvee84VH41aHNcu95eebHaycJBSx6SMfNjSY7JoLfooDNLqeiGNudk?=
 =?iso-8859-2?Q?0/e+Fo63aeQJTuKs3UeTaj16pGmfDR4ELvIltl5GXNwkPgji8e/kOYaEQy?=
 =?iso-8859-2?Q?B8M0DYnhF3Oxet6MsT4i9o0DalUSREYo2aW8aWyIH9dY1IgzyxDam7kwbo?=
 =?iso-8859-2?Q?QTGkjCFe+A=3D=3D?=
Content-Type: multipart/mixed;
	boundary="_004_BM1PR01MB32035E9889C574FB564BA0E694EC9BM1PR01MB3203INDP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 85b42e66-bdab-4050-24ae-08da1d3c211d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2022 10:55:31.6679
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fe1d95a9-4ce1-41a5-8eab-6dd43aa26d9f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 6dx/MlYAsOaB50EmktJYWu+j5WgpxaWDfbHnENun3BH4YCYJFs2/zDgyt1c9PbQnYpbWUMjpjzgtuIE1+CPM9kl4SSbctd+nvlOGtnKvMn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR01MB4931
X-OriginatorOrg: ril.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Apr 2022 15:48:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56764

--_004_BM1PR01MB32035E9889C574FB564BA0E694EC9BM1PR01MB3203INDP_
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB32035E9889C574FB564BA0E694EC9BM1PR01MB3203INDP_"

--_000_BM1PR01MB32035E9889C574FB564BA0E694EC9BM1PR01MB3203INDP_
Content-Type: text/plain; charset="iso-8859-2"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

I have added the include file and compiled it. But same errors observed wit=
h few more errors.
These errors are observed in the stage of bitbake linux-qoriq-rt -c configu=
re.

Also, found following notes while doing fetch, unpack and patch,
NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item linu=
x-qoriq-rt)
NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item kern=
el-image-image)
NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item kern=
el-base)
NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item kern=
el-image-vmlinux)
NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item kern=
el-image-uimage)
NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}
NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item virt=
ual/kernel)
NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${SRCPV}

Attached log file for your reference.

Thank you
________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of tomzy <tomasz.zyjewski@3mdeb.com>
Sent: Wednesday, April 13, 2022 4:06 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [External]Re: [yocto] Yocto Kernel building


Caution: The e-mail below is from an external source. Please do not open at=
tachments or click links unless this email comes from a known sender and yo=
u know the content is safe.


Hello,I was trying to build a kernel for layerscape ls1046ardb setup.I refe=
rred the meta-freescale/recipes-kernel/linux/linux-qoriq_5.4.bb file from d=
unfell branch.Build configuration:
Yocto branch: dunfell
Required kernel source: https://source.codeaurora.org/quic/femto5G/fsm/exte=
rnal/qoriq-components/linux_4.19-rt/commit/?h=3DAPSS.FSM.6.6-00194-FSM10056=
.0&id=3D74700acb31e369495da22b4bbfd9e3f4315fc74a<https://protect2.fireeye.c=
om/v1/url?k=3Ddee339fd-817806d1-dee2b302-00259087546c-50b83e5df13ccf74&q=3D=
1&e=3D00639fe5-1c6d-496e-8b3d-1566a6955c16&u=3Dhttps%3A%2F%2Fsource.codeaur=
ora.org%2Fquic%2Ffemto5G%2Ffsm%2Fexternal%2Fqoriq-components%2Flinux_4.19-r=
t%2Fcommit%2F%3Fh%3DAPSS.FSM.6.6-00194-FSM10056.0%26id%3D74700acb31e369495d=
a22b4bbfd9e3f4315fc74a>
SRC_rev : 74700acb31e369495da22b4bbfd9e3f4315fc74a<https://protect2.fireeye=
.com/v1/url?k=3D07722aba-58e91596-0773a045-00259087546c-8cbbd13a82d8087b&q=
=3D1&e=3D00639fe5-1c6d-496e-8b3d-1566a6955c16&u=3Dhttps%3A%2F%2Fsource.code=
aurora.org%2Fquic%2Ffemto5G%2Ffsm%2Fexternal%2Fqoriq-components%2Flinux_4.1=
9-rt%2Fcommit%2F%3Fh%3DAPSS.FSM.6.6-00194-FSM10056.0%26id%3D74700acb31e3694=
95da22b4bbfd9e3f4315fc74a>
SRC branch: APSS.FSM.6.6

Here I have created separate layer and added my files under <my_layer_name>=
/recipe-kernel/linux/linux-qoriq-rt_4.19.bb path

It is better to use [include file](https://github.com/Freescale/meta-freesc=
ale/blob/dunfell/recipes-kernel/linux/linux-qoriq.inc<https://protect2.fire=
eye.com/v1/url?k=3D74400664-2bdb3948-74418c9b-00259087546c-b60a3783e1e23d49=
&q=3D1&e=3D00639fe5-1c6d-496e-8b3d-1566a6955c16&u=3Dhttps%3A%2F%2Fgithub.co=
m%2FFreescale%2Fmeta-freescale%2Fblob%2Fdunfell%2Frecipes-kernel%2Flinux%2F=
linux-qoriq.inc>)
in similar way the
[linux-qoriq_5.4.bb](https://github.com/Freescale/meta-freescale/blob/dunfe=
ll/recipes-kernel/linux/linux-qoriq_5.4.bb<https://protect2.fireeye.com/v1/=
url?k=3D346aadc3-6bf192ef-346b273c-00259087546c-6ca3c4bd6579f1d9&q=3D1&e=3D=
00639fe5-1c6d-496e-8b3d-1566a6955c16&u=3Dhttps%3A%2F%2Fgithub.com%2FFreesca=
le%2Fmeta-freescale%2Fblob%2Fdunfell%2Frecipes-kernel%2Flinux%2Flinux-qoriq=
_5.4.bb> ) does it.

So the `linux-qoriq-rt_4.19.bb` should be

```

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b8814"

LINUX_VERSION =3D "4.19.90"

SRC_URI =3D "https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-=
components/linux_4.19-rt;branch=3DAPSS.FSM.6.6<https://protect2.fireeye.com=
/v1/url?k=3Db18e890f-ee15b623-b18f03f0-00259087546c-3ca77f898d53f704&q=3D1&=
e=3D00639fe5-1c6d-496e-8b3d-1566a6955c16&u=3Dhttps%3A%2F%2Fsource.codeauror=
a.org%2Fquic%2Ffemto5G%2Ffsm%2Fexternal%2Fqoriq-components%2Flinux_4.19-rt%=
3Bbranch%3DAPSS.FSM.6.6> \
"
SRCREV =3D "74700acb31e369495da22b4bbfd9e3f4315fc74a"

require recipes-kernel/linux/linux-qoriq.inc

```
LINUX_VERSION can be get from linux_4.19-rt repo. Please let us know it thi=
s helps.



inherit kernel qoriq_build_64bit_kernel siteinfo
inherit fsl-kernel-localversion

SUMMARY =3D "Linux Kernel for NXP QorIQ platforms"
SECTION =3D "kernel"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b8814"

SRC_URI =3D "https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-=
components/linux_4.19-rt;branch=3DAPSS.FSM.6.6<https://protect2.fireeye.com=
/v1/url?k=3Da3b162d2-fc2a5dfe-a3b0e82d-00259087546c-d79ee407f52de227&q=3D1&=
e=3D00639fe5-1c6d-496e-8b3d-1566a6955c16&u=3Dhttps%3A%2F%2Fsource.codeauror=
a.org%2Fquic%2Ffemto5G%2Ffsm%2Fexternal%2Fqoriq-components%2Flinux_4.19-rt%=
3Bbranch%3DAPSS.FSM.6.6> \
"
SRCREV =3D "74700acb31e369495da22b4bbfd9e3f4315fc74a"

SRC_URI[sha256sum] =3D "ddb8e5defcdaec9ce8cbe39d157f58a369decf7c1028cddaa61=
86343b7f09c2b"

S =3D "${WORKDIR}/git"

DEPENDS_append =3D " libgcc"
# not put Images into /boot of rootfs, install kernel-image if needed
RDEPENDS_${KERNEL_PACKAGE_NAME}-base =3D ""

KERNEL_CC_append =3D " ${TOOLCHAIN_OPTIONS}"
KERNEL_LD_append =3D " ${TOOLCHAIN_OPTIONS}"
KERNEL_EXTRA_ARGS +=3D "LOADADDR=3D${UBOOT_ENTRYPOINT}"

ZIMAGE_BASE_NAME =3D "zImage-${PKGE}-${PKGV}-${PKGR}-${MACHINE}-${DATETIME}"
ZIMAGE_BASE_NAME[vardepsexclude] =3D "DATETIME"

SCMVERSION ?=3D "y"
LOCALVERSION =3D ""

FILES_${KERNEL_PACKAGE_NAME}-image +=3D "/boot/zImage*"
COMPATIBLE_MACHINE =3D "(qoriq)"


When I try to build the kernel I am encountered with below errors,
ERROR: linux-qoriq-rt-4.19-r0 do_populate_lic: QA Issue: linux-qoriq-rt: LI=
C_FILES_CHKSUM points to an invalid file: /home/rancore/rohit/git_pull/rgbb=
buildscripts/build
Looks like there is a problem with finding lic file, it may be that S point=
s to incorrect path.
/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibt=
b_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/git/COPYING [license-checksu=
m]
ERROR: linux-qoriq-rt-4.19-r0 do_populate_lic: Fatal QA errors found, faili=
ng task.
ERROR: Logfile of failure stored in: /home/rancore/rohit/git_pull/rgbbbuild=
scripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/w=
ork/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/temp/log.do_pop=
ulate_lic.44895
ERROR: Task (/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_ma=
in_dev_odsc3_ibtb_sku2_board/build/poky/build/../meta-rjio_bsp/recipes-kern=
el/linux/linux-qoriq-rt_4.19.bb:do_populate_lic) failed with exit code '1'
ERROR: linux-qoriq-rt-4.19-r0 do_preconfigure: Execution of '/home/rancore/=
rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_boar=
d/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt=
/4.19-r0/temp/run.do_preconfigure.44894' failed with exit code 1:
/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_=
ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/=
linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894: line 120: /home/ranc=
ore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_=
board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qori=
q-rt/4.19-r0/defconfig: No such file or directory
WARNING: /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_d=
ev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-po=
ky-linux/linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894:1 exit 1 fro=
m 'sed -e "${CONF_SED_SCRIPT}" < '/home/rancore/rohit/git_pull/rgbbbuildscr=
ipts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work=
/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/defconfig' >> '/ho=
me/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibt=
b_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/lin=
ux-qoriq-rt/4.19-r0/build/.config''
Can anyone please guide me to build the kernel successfully?

Thank you
Regards,
Tomasz =AFyjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com<https://protect2.fireeye.com/v1/url?k=3D555e9244-0ac5ad68=
-555f18bb-00259087546c-da813e4203ec050e&q=3D1&e=3D00639fe5-1c6d-496e-8b3d-1=
566a6955c16&u=3Dhttps%3A%2F%2F3mdeb.com%2F> | @3mdeb_com
"Confidentiality Warning: This message and any attachments are intended onl=
y for the use of the intended recipient(s). =

are confidential and may be privileged. If you are not the intended recipie=
nt. you are hereby notified that any =

review. re-transmission. conversion to hard copy. copying. circulation or o=
ther use of this message and any attachments is =

strictly prohibited. If you are not the intended recipient. please notify t=
he sender immediately by return email. =

and delete this message and any attachments from your system.

Virus Warning: Although the company has taken reasonable precautions to ens=
ure no viruses are present in this email. =

The company cannot accept responsibility for any loss or damage arising fro=
m the use of this email or attachment."

--_000_BM1PR01MB32035E9889C574FB564BA0E694EC9BM1PR01MB3203INDP_
Content-Type: text/html; charset="iso-8859-2"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I have added the include file and compiled it. But same errors observed wit=
h few more errors.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
These errors are observed in the stage of <b><i>bitbake linux-qoriq-rt -c c=
onfigure</i></b>.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Also, found following notes while doing fetch, unpack and patch,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<blockquote itemscope=3D"" itemtype=3D"https://schemas.microsoft.com/Quoted=
Text" style=3D"border-left: 3px solid rgb(200, 200, 200); border-top-color:=
 rgb(200, 200, 200); border-right-color: rgb(200, 200, 200); border-bottom-=
color: rgb(200, 200, 200); padding-left: 1ex; margin-left: 0.8ex; color: rg=
b(102, 102, 102);">
<i>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for item l=
inux-qoriq-rt)</i>
<div><i>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${S=
RCPV}</i></div>
<div><i>NOTE: Resolving any missing task queue dependencies</i></div>
<div><i>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for i=
tem kernel-image-image)</i></div>
<div><i>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${S=
RCPV}</i></div>
<div><i>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for i=
tem kernel-base)</i></div>
<div><i>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${S=
RCPV}</i></div>
<div><i>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for i=
tem kernel-image-vmlinux)</i></div>
<div><i>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${S=
RCPV}</i></div>
<div><i>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for i=
tem kernel-image-uimage)</i></div>
<div><i>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${S=
RCPV}</i></div>
<div><i>NOTE: preferred version 4.19 of linux-qoriq-rt not available (for i=
tem virtual/kernel)</i></div>
<span><i>NOTE: versions of linux-qoriq-rt available: ${LINUX_VERSION}+git${=
SRCPV}</i></span><br>
</blockquote>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Attached log file for your reference.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you&nbsp;</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of tomzy &lt;tomasz.=
zyjewski@3mdeb.com&gt;<br>
<b>Sent:</b> Wednesday, April 13, 2022 4:06 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> [External]Re: [yocto] Yocto Kernel building</font>
<div>&nbsp;</div>
</div>
<div>
<table class=3D"x_MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpaddin=
g=3D"0" width=3D"100%" style=3D"width:100.0%; background:#FDF2F4">
<tbody>
<tr>
<td style=3D"border:none; border-left:solid #910A19 10.5pt; padding:.75pt .=
75pt .75pt 3.75pt">
<p class=3D"x_MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;=
Segoe UI&quot;,sans-serif"><strong>Caution:</strong> The e-mail below is fr=
om an external source. Please do not open attachments or click links unless=
 this email comes from a known sender and you
 know the content is safe.<span style=3D"text-decoration:underline"></span>=
</span></p>
</td>
</tr>
</tbody>
</table>
<br>
<span>&nbsp;</span> <span style=3D"text-decoration:underline"><var id=3D"x_=
yui-br"></var></span>
<blockquote>Hello,I was trying to build a kernel for layerscape ls1046ardb =
setup.I referred the&nbsp;meta-freescale/recipes-kernel/linux/linux-qoriq_5=
.4.bb file from dunfell branch.Build configuration:
<div style=3D"font-size:12pt; font-family:Calibri,Arial,Helvetica,sans-seri=
f; color:black">
<em>Yocto branch</em>: dunfell<br>
<em>Required kernel source</em>:&nbsp;<a id=3D"LPlnk430261" href=3D"https:/=
/protect2.fireeye.com/v1/url?k=3Ddee339fd-817806d1-dee2b302-00259087546c-50=
b83e5df13ccf74&amp;q=3D1&amp;e=3D00639fe5-1c6d-496e-8b3d-1566a6955c16&amp;u=
=3Dhttps%3A%2F%2Fsource.codeaurora.org%2Fquic%2Ffemto5G%2Ffsm%2Fexternal%2F=
qoriq-components%2Flinux_4.19-rt%2Fcommit%2F%3Fh%3DAPSS.FSM.6.6-00194-FSM10=
056.0%26id%3D74700acb31e369495da22b4bbfd9e3f4315fc74a" target=3D"_blank" re=
l=3D"nofollow noopener">https://source.codeaurora.org/quic/femto5G/fsm/exte=
rnal/qoriq-components/linux_4.19-rt/commit/?h=3DAPSS.FSM.6.6-00194-FSM10056=
.0&amp;id=3D74700acb31e369495da22b4bbfd9e3f4315fc74a</a><br>
<div style=3D"font-size:12pt"><em>SRC_rev :&nbsp;</em><a href=3D"https://pr=
otect2.fireeye.com/v1/url?k=3D07722aba-58e91596-0773a045-00259087546c-8cbbd=
13a82d8087b&amp;q=3D1&amp;e=3D00639fe5-1c6d-496e-8b3d-1566a6955c16&amp;u=3D=
https%3A%2F%2Fsource.codeaurora.org%2Fquic%2Ffemto5G%2Ffsm%2Fexternal%2Fqor=
iq-components%2Flinux_4.19-rt%2Fcommit%2F%3Fh%3DAPSS.FSM.6.6-00194-FSM10056=
.0%26id%3D74700acb31e369495da22b4bbfd9e3f4315fc74a" target=3D"_blank" rel=
=3D"nofollow noopener">74700acb31e369495da22b4bbfd9e3f4315fc74a</a><br>
<em>SRC branch:</em>&nbsp;APSS.FSM.6.6<br>
<br>
Here I have created separate layer and added my files under&nbsp;<strong><e=
m>&lt;my_layer_name&gt;/recipe-kernel/linux/linux-qoriq-rt_4.19.bb</em></st=
rong>&nbsp;path&nbsp;</div>
</div>
</blockquote>
<p>It is better to use [include file](<a href=3D"https://protect2.fireeye.c=
om/v1/url?k=3D74400664-2bdb3948-74418c9b-00259087546c-b60a3783e1e23d49&amp;=
q=3D1&amp;e=3D00639fe5-1c6d-496e-8b3d-1566a6955c16&amp;u=3Dhttps%3A%2F%2Fgi=
thub.com%2FFreescale%2Fmeta-freescale%2Fblob%2Fdunfell%2Frecipes-kernel%2Fl=
inux%2Flinux-qoriq.inc" target=3D"_blank" rel=3D"noopener">https://github.c=
om/Freescale/meta-freescale/blob/dunfell/recipes-kernel/linux/linux-qoriq.i=
nc</a>)<br>
in similar way the<br>
[linux-qoriq_5.4.bb](<a href=3D"https://protect2.fireeye.com/v1/url?k=3D346=
aadc3-6bf192ef-346b273c-00259087546c-6ca3c4bd6579f1d9&amp;q=3D1&amp;e=3D006=
39fe5-1c6d-496e-8b3d-1566a6955c16&amp;u=3Dhttps%3A%2F%2Fgithub.com%2FFreesc=
ale%2Fmeta-freescale%2Fblob%2Fdunfell%2Frecipes-kernel%2Flinux%2Flinux-qori=
q_5.4.bb" target=3D"_blank" rel=3D"noopener">https://github.com/Freescale/m=
eta-freescale/blob/dunfell/recipes-kernel/linux/linux-qoriq_5.4.bb</a>
 ) does it.<br>
<br>
So the `<strong><em>linux-qoriq-rt_4.19.bb`&nbsp;</em></strong>should be</p>
<p>```</p>
<p>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dbbea815ee2795b2f4230826c=
0c6b8814&quot;<br>
<br>
LINUX_VERSION =3D &quot;4.19.90&quot;<br>
<br>
SRC_URI =3D &quot;<a href=3D"https://protect2.fireeye.com/v1/url?k=3Db18e89=
0f-ee15b623-b18f03f0-00259087546c-3ca77f898d53f704&amp;q=3D1&amp;e=3D00639f=
e5-1c6d-496e-8b3d-1566a6955c16&amp;u=3Dhttps%3A%2F%2Fsource.codeaurora.org%=
2Fquic%2Ffemto5G%2Ffsm%2Fexternal%2Fqoriq-components%2Flinux_4.19-rt%3Bbran=
ch%3DAPSS.FSM.6.6">https://source.codeaurora.org/quic/femto5G/fsm/external/=
qoriq-components/linux_4.19-rt;branch=3DAPSS.FSM.6.6</a>
 \<br>
&quot;<br>
SRCREV =3D &quot;74700acb31e369495da22b4bbfd9e3f4315fc74a&quot;<br>
<br>
require recipes-kernel/linux/linux-qoriq.inc</p>
<p>```<br>
LINUX_VERSION can be get from linux_4.19-rt repo. Please let us know it thi=
s helps.</p>
<blockquote>
<div style=3D"font-size:12pt; font-family:Calibri,Arial,Helvetica,sans-seri=
f; color:black">
<div style=3D"font-size:12pt"><br>
<br>
</div>
<div style=3D"font-size:12pt">
<div style=3D"font-size:12pt"><span style=3D"font:inherit; color:inherit">&=
nbsp;</span></div>
<div style=3D"font-size:12pt"><span style=3D"font:inherit; color:inherit"><=
span style=3D"font:inherit; color:inherit">i<em>nherit kernel qoriq_build_6=
4bit_kernel siteinfo</em></span></span>
<div style=3D"font:inherit; color:inherit"><em>inherit fsl-kernel-localvers=
ion</em></div>
<div style=3D"font:inherit; color:inherit"><em>&nbsp;</em></div>
<div style=3D"font:inherit; color:inherit"><em>SUMMARY =3D &quot;Linux Kern=
el for NXP QorIQ platforms&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>SECTION =3D &quot;kernel&quo=
t;</em></div>
<div style=3D"font:inherit; color:inherit"><em>LICENSE =3D &quot;GPLv2&quot=
;</em></div>
<div style=3D"font:inherit; color:inherit"><em>LIC_FILES_CHKSUM =3D &quot;f=
ile://COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b8814&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>&nbsp;</em></div>
<div style=3D"font:inherit; color:inherit"><em>SRC_URI =3D &quot;<a href=3D=
"https://protect2.fireeye.com/v1/url?k=3Da3b162d2-fc2a5dfe-a3b0e82d-0025908=
7546c-d79ee407f52de227&amp;q=3D1&amp;e=3D00639fe5-1c6d-496e-8b3d-1566a6955c=
16&amp;u=3Dhttps%3A%2F%2Fsource.codeaurora.org%2Fquic%2Ffemto5G%2Ffsm%2Fext=
ernal%2Fqoriq-components%2Flinux_4.19-rt%3Bbranch%3DAPSS.FSM.6.6">https://s=
ource.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19-=
rt;branch=3DAPSS.FSM.6.6</a>
 \</em></div>
<div style=3D"font:inherit; color:inherit"><em>&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>SRCREV =3D &quot;74700acb31e=
369495da22b4bbfd9e3f4315fc74a&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>&nbsp;</em></div>
<div style=3D"font:inherit; color:inherit"><em>SRC_URI[sha256sum] =3D &quot=
;ddb8e5defcdaec9ce8cbe39d157f58a369decf7c1028cddaa6186343b7f09c2b&quot;</em=
></div>
<div style=3D"font:inherit; color:inherit"><em>&nbsp;</em></div>
<div style=3D"font:inherit; color:inherit"><em>S =3D &quot;${WORKDIR}/git&q=
uot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>&nbsp;</em></div>
<div style=3D"font:inherit; color:inherit"><em>DEPENDS_append =3D &quot; li=
bgcc&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em># not put Images into /boot =
of rootfs, install kernel-image if needed</em></div>
<div style=3D"font:inherit; color:inherit"><em>RDEPENDS_${KERNEL_PACKAGE_NA=
ME}-base =3D &quot;&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>&nbsp;</em></div>
<div style=3D"font:inherit; color:inherit"><em>KERNEL_CC_append =3D &quot; =
${TOOLCHAIN_OPTIONS}&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>KERNEL_LD_append =3D &quot; =
${TOOLCHAIN_OPTIONS}&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>KERNEL_EXTRA_ARGS +=3D &quot=
;LOADADDR=3D${UBOOT_ENTRYPOINT}&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>&nbsp;</em></div>
<div style=3D"font:inherit; color:inherit"><em>ZIMAGE_BASE_NAME =3D &quot;z=
Image-${PKGE}-${PKGV}-${PKGR}-${MACHINE}-${DATETIME}&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>ZIMAGE_BASE_NAME[vardepsexcl=
ude] =3D &quot;DATETIME&quot;</em></div>
<div style=3D"font:inherit; color:inherit"><em>&nbsp;</em></div>
<div style=3D"font:inherit; color:inherit"><em>SCMVERSION ?=3D &quot;y&quot=
;</em></div>
<div style=3D"font:inherit; color:inherit"><em>LOCALVERSION =3D &quot;&quot=
;</em></div>
<div style=3D"font:inherit; color:inherit"><em>&nbsp;</em></div>
<div style=3D"font:inherit; color:inherit"><em>FILES_${KERNEL_PACKAGE_NAME}=
-image +=3D &quot;/boot/zImage*&quot;</em></div>
<span style=3D"font:inherit; color:inherit"><em>COMPATIBLE_MACHINE =3D &quo=
t;(qoriq)&quot;</em></span></div>
<br>
<br>
</div>
When I try to build the kernel I am encountered with below errors,<br>
<blockquote>
<div style=3D"font-size:12pt"><em>ERROR: linux-qoriq-rt-4.19-r0 do_populate=
_lic: QA Issue: linux-qoriq-rt: LIC_FILES_CHKSUM points to an invalid file:=
 /home/rancore/rohit/git_pull/rgbbbuildscripts/build<br>
</em></div>
</blockquote>
</div>
</blockquote>
Looks like there is a problem with finding lic file, it may be that S point=
s to incorrect path.<br>
<blockquote>
<div style=3D"font-size:12pt; font-family:Calibri,Arial,Helvetica,sans-seri=
f; color:black">
<blockquote>
<div style=3D"font-size:12pt"><em>/rjio/fw_main_dev_odsc3_ibtb_sku2_board/b=
uild/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.=
19-r0/git/COPYING [license-checksum]</em></div>
<div style=3D"font-size:12pt"><em>ERROR: linux-qoriq-rt-4.19-r0 do_populate=
_lic: Fatal QA errors found, failing task.</em></div>
<div style=3D"font-size:12pt"><em>ERROR: Logfile of failure stored in: /hom=
e/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb=
_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linu=
x-qoriq-rt/4.19-r0/temp/log.do_populate_lic.44895</em></div>
<div style=3D"font-size:12pt"><em>ERROR: Task (/home/rancore/rohit/git_pull=
/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/b=
uild/../meta-rjio_bsp/recipes-kernel/linux/linux-qoriq-rt_4.19.bb:do_popula=
te_lic) failed with exit code '1'</em></div>
<div style=3D"font-size:12pt"><em>ERROR: linux-qoriq-rt-4.19-r0 do_preconfi=
gure: Execution of '/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rji=
o/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sk=
u2_board-poky-linux/linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894'
 failed with exit code 1:</em></div>
<div style=3D"font-size:12pt"><em>/home/rancore/rohit/git_pull/rgbbbuildscr=
ipts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work=
/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/temp/run.do_precon=
figure.44894: line 120: /home/rancore/rohit/git_pull/rgbbbuildscripts/build=
/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibt=
b_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/defconfig:
 No such file or directory</em></div>
<div style=3D"font-size:12pt"><em>WARNING: /home/rancore/rohit/git_pull/rgb=
bbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build=
/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/temp/run.=
do_preconfigure.44894:1 exit 1 from
 'sed -e &quot;${CONF_SED_SCRIPT}&quot; &lt; '/home/rancore/rohit/git_pull/=
rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/bu=
ild/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/defcon=
fig' &gt;&gt; '/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_=
main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_bo=
ard-poky-linux/linux-qoriq-rt/4.19-r0/build/.config''</em></div>
</blockquote>
Can anyone please guide me to build the kernel successfully?<br>
<br>
Thank you</div>
</blockquote>
Regards,<br>
Tomasz =AFyjewski<br>
Embedded Systems Engineer<br>
GPG: 5C495EA3EBEECA59<br>
<a href=3D"https://protect2.fireeye.com/v1/url?k=3D555e9244-0ac5ad68-555f18=
bb-00259087546c-da813e4203ec050e&amp;q=3D1&amp;e=3D00639fe5-1c6d-496e-8b3d-=
1566a6955c16&amp;u=3Dhttps%3A%2F%2F3mdeb.com%2F">https://3mdeb.com</a> | @3=
mdeb_com
</div>
<P><br><span style=3D"text-decoration: none">"<strong><span style=3D"text-d=
ecoration: underline">Confidentiality Warning</span></strong></span>: This =
message and any attachments are intended only for the use of the intended r=
ecipient(s), are confidential and may be privileged. If you are not the int=
ended recipient, you are hereby notified that any review, re-transmission, =
conversion to hard copy, copying, circulation or other use of this message =
and any attachments is strictly prohibited. If you are not the intended rec=
ipient, please notify the sender immediately by return email and delete thi=
s message and any attachments from your system.</P>
<P><strong><span style=3D"text-decoration: underline">Virus Warning:</span>=
</strong> Although the company has taken reasonable precautions to ensure n=
o viruses are present in this email. The company cannot accept responsibili=
ty for any loss or damage arising from the use of this email or attachment.=
"</P></body>
</html>

--_000_BM1PR01MB32035E9889C574FB564BA0E694EC9BM1PR01MB3203INDP_--

--_004_BM1PR01MB32035E9889C574FB564BA0E694EC9BM1PR01MB3203INDP_
Content-Type: text/plain; name="build_issues_after_adding_include.txt"
Content-Description: build_issues_after_adding_include.txt
Content-Disposition: attachment;
	filename="build_issues_after_adding_include.txt"; size=16045;
	creation-date="Wed, 13 Apr 2022 10:51:12 GMT";
	modification-date="Wed, 13 Apr 2022 10:53:30 GMT"
Content-Transfer-Encoding: base64

SW5pdGlhbGlzaW5nIHRhc2tzOiAxMDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyN8IFRpbWU6IDA6MDA6MDANClNzdGF0ZSBzdW1tYXJ5OiBXYW50ZWQgMjggRm91bmQgMTkgTWlz
c2VkIDkgQ3VycmVudCAxMTggKDY3JSBtYXRjaCwgOTMlIGNvbXBsZXRlKQ0KTk9URTogRXhlY3V0
aW5nIFRhc2tzDQpXQVJOSU5HOiBsaW51eC1xb3JpcS1ydC0ke0xJTlVYX1ZFUlNJT059K2dpdCR7
U1JDUFZ9LXIwIGRvX3BvcHVsYXRlX2xpYzogQ291bGQgbm90IGNvcHkgbGljZW5zZSBmaWxlIC9o
b21lL3JhbmNvcmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3
X21haW5fZGV2X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWlsZC9wb2t5L2J1aWxkL3RtcC93b3Jr
L29kc2MzX2lidGJfc2t1Ml9ib2FyZC1wb2t5LWxpbnV4L2xpbnV4LXFvcmlxLXJ0LyR7TElOVVhf
VkVSU0lPTn0rZ2l0JHtTUkNQVn0tcjAvZ2l0L0NPUFlJTkcgdG8gL2hvbWUvcmFuY29yZS9yb2hp
dC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNf
aWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3Uy
X2JvYXJkLXBva3ktbGludXgvbGludXgtcW9yaXEtcnQvJHtMSU5VWF9WRVJTSU9OfStnaXQke1NS
Q1BWfS1yMC9saWNlbnNlLWRlc3RkaXIvbGludXgtcW9yaXEtcnQvQ09QWUlORzogW0Vycm5vIDJd
IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3Rvcnk6ICcvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxs
L3JnYmJidWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJf
Ym9hcmQvYnVpbGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9r
eS1saW51eC9saW51eC1xb3JpcS1ydC8ke0xJTlVYX1ZFUlNJT059K2dpdCR7U1JDUFZ9LXIwL2dp
dC9DT1BZSU5HJw0KRVJST1I6IGxpbnV4LXFvcmlxLXJ0LSR7TElOVVhfVkVSU0lPTn0rZ2l0JHtT
UkNQVn0tcjAgZG9fcG9wdWxhdGVfbGljOiBRQSBJc3N1ZTogbGludXgtcW9yaXEtcnQ6IExJQ19G
SUxFU19DSEtTVU0gcG9pbnRzIHRvIGFuIGludmFsaWQgZmlsZTogL2hvbWUvcmFuY29yZS9yb2hp
dC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNf
aWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3Uy
X2JvYXJkLXBva3ktbGludXgvbGludXgtcW9yaXEtcnQvJHtMSU5VWF9WRVJTSU9OfStnaXQke1NS
Q1BWfS1yMC9naXQvQ09QWUlORyBbbGljZW5zZS1jaGVja3N1bV0NCkVSUk9SOiBsaW51eC1xb3Jp
cS1ydC0ke0xJTlVYX1ZFUlNJT059K2dpdCR7U1JDUFZ9LXIwIGRvX3BvcHVsYXRlX2xpYzogRmF0
YWwgUUEgZXJyb3JzIGZvdW5kLCBmYWlsaW5nIHRhc2suDQpFUlJPUjogTG9nZmlsZSBvZiBmYWls
dXJlIHN0b3JlZCBpbjogL2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3Jp
cHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bv
a3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgvbGludXgt
cW9yaXEtcnQvJHtMSU5VWF9WRVJTSU9OfStnaXQke1NSQ1BWfS1yMC90ZW1wL2xvZy5kb19wb3B1
bGF0ZV9saWMuNDg2MjcNCkVSUk9SOiBUYXNrICgvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxs
L3JnYmJidWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJf
Ym9hcmQvYnVpbGQvcG9reS9idWlsZC8uLi9tZXRhLXJqaW9fYnNwL3JlY2lwZXMta2VybmVsL2xp
bnV4L2xpbnV4LXFvcmlxLXJ0XzQuMTkuYmI6ZG9fcG9wdWxhdGVfbGljKSBmYWlsZWQgd2l0aCBl
eGl0IGNvZGUgJzEnDQpFUlJPUjogbGludXgtcW9yaXEtcnQtJHtMSU5VWF9WRVJTSU9OfStnaXQk
e1NSQ1BWfS1yMCBkb19tZXJnZV9kZWx0YV9jb25maWc6IEV4ZWN1dGlvbiBvZiAnL2hvbWUvcmFu
Y29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9k
ZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNf
aWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgvbGludXgtcW9yaXEtcnQvJHtMSU5VWF9WRVJTSU9O
fStnaXQke1NSQ1BWfS1yMC90ZW1wL3J1bi5kb19tZXJnZV9kZWx0YV9jb25maWcuNDg2MjUnIGZh
aWxlZCB3aXRoIGV4aXQgY29kZSAxOg0KTk9URTogbWFrZSBIT1NUQ0M9Z2NjICAtaXN5c3RlbS9o
b21lL3JhbmNvcmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3
X21haW5fZGV2X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWlsZC9wb2t5L2J1aWxkL3RtcC93b3Jr
L29kc2MzX2lidGJfc2t1Ml9ib2FyZC1wb2t5LWxpbnV4L2xpbnV4LXFvcmlxLXJ0LytnaXQtcjAv
cmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9pbmNsdWRlIC1PZyAtZyAtZmVsaW1pbmF0ZS11bnVz
ZWQtZGVidWctdHlwZXMgLXBpcGUgLUwvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJi
dWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQv
YnVpbGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51
eC9saW51eC1xb3JpcS1ydC8rZ2l0LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvbGliICAg
ICAgICAgICAgICAgICAgICAgICAgIC1ML2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2Ji
YnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJk
L2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3UyX2JvYXJkLXBva3ktbGlu
dXgvbGludXgtcW9yaXEtcnQvK2dpdC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvbGliICAgICAg
ICAgICAgICAgICAgICAgICAgIC1XbCwtLWVuYWJsZS1uZXctZHRhZ3MgICAgICAgICAgICAgICAg
ICAgICAgICAgLVdsLC1ycGF0aC1saW5rLC9ob21lL3JhbmNvcmUvcm9oaXQvZ2l0X3B1bGwvcmdi
YmJ1aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2X29kc2MzX2lidGJfc2t1Ml9ib2Fy
ZC9idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL29kc2MzX2lidGJfc2t1Ml9ib2FyZC1wb2t5LWxp
bnV4L2xpbnV4LXFvcmlxLXJ0LytnaXQtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9saWIg
ICAgICAgICAgICAgICAgICAgICAgICAgLVdsLC1ycGF0aC1saW5rLC9ob21lL3JhbmNvcmUvcm9o
aXQvZ2l0X3B1bGwvcmdiYmJ1aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2X29kc2Mz
X2lidGJfc2t1Ml9ib2FyZC9idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL29kc2MzX2lidGJfc2t1
Ml9ib2FyZC1wb2t5LWxpbnV4L2xpbnV4LXFvcmlxLXJ0LytnaXQtcjAvcmVjaXBlLXN5c3Jvb3Qt
bmF0aXZlL2xpYiAgICAgICAgICAgICAgICAgICAgICAgICAtV2wsLXJwYXRoLC9ob21lL3JhbmNv
cmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2
X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL29kc2MzX2li
dGJfc2t1Ml9ib2FyZC1wb2t5LWxpbnV4L2xpbnV4LXFvcmlxLXJ0LytnaXQtcjAvcmVjaXBlLXN5
c3Jvb3QtbmF0aXZlL3Vzci9saWIgICAgICAgICAgICAgICAgICAgICAgICAgLVdsLC1ycGF0aCwv
aG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMvYnVpbGQvcmppby9m
d19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9idWlsZC90bXAvd29y
ay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3JpcS1ydC8rZ2l0LXIw
L3JlY2lwZS1zeXNyb290LW5hdGl2ZS9saWIgICAgICAgICAgICAgICAgICAgICAgICAgLVdsLC1P
MSAtV2wsLS1hbGxvdy1zaGxpYi11bmRlZmluZWQgLVdsLC0tZHluYW1pYy1saW5rZXI9L2hvbWUv
cmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFp
bl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3Rz
LXVuaW5hdGl2ZS94ODZfNjQtbGludXgvbGliL2xkLWxpbnV4LXg4Ni02NC5zby4yIEhPU1RDUFA9
Z2NjICAtRSAtQyAvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMv
YnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9i
dWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3Jp
cS1ydC8rZ2l0LXIwL2dpdCBPPS9ob21lL3JhbmNvcmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxk
c2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWls
ZC9wb2t5L2J1aWxkL3RtcC93b3JrL29kc2MzX2lidGJfc2t1Ml9ib2FyZC1wb2t5LWxpbnV4L2xp
bnV4LXFvcmlxLXJ0LytnaXQtcjAvYnVpbGQgZGVmY29uZmlnDQptYWtlOiAqKiogL2hvbWUvcmFu
Y29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9k
ZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNf
aWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgvbGludXgtcW9yaXEtcnQvK2dpdC1yMC9naXQ6IE5v
IHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkuICBTdG9wLg0KRVJST1I6IG9lX3J1bm1ha2UgZmFpbGVk
DQpXQVJOSU5HOiAvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMv
YnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9i
dWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3Jp
cS1ydC8ke0xJTlVYX1ZFUlNJT059K2dpdCR7U1JDUFZ9LXIwL3RlbXAvcnVuLmRvX21lcmdlX2Rl
bHRhX2NvbmZpZy40ODYyNToxIGV4aXQgMSBmcm9tICdleGl0IDEnDQoNCkVSUk9SOiBMb2dmaWxl
IG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJi
dWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQv
YnVpbGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51
eC9saW51eC1xb3JpcS1ydC8ke0xJTlVYX1ZFUlNJT059K2dpdCR7U1JDUFZ9LXIwL3RlbXAvbG9n
LmRvX21lcmdlX2RlbHRhX2NvbmZpZy40ODYyNQ0KTG9nIGRhdGEgZm9sbG93czoNCnwgREVCVUc6
IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290DQp8IE5PVEU6
IERpcmVjdCBkZXBlbmRlbmNpZXMgYXJlIFsnL2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9y
Z2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2Jv
YXJkL2J1aWxkL3Bva3kvYnVpbGQvLi4vbWV0YS9yZWNpcGVzLWRldnRvb2xzL2djYy9nY2MtY3Jv
c3NfOS4zLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvcmFuY29yZS9yb2hpdC9naXRf
cHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9z
a3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvLi4vbWV0YS9yZWNpcGVzLWRldnRvb2xzL3F1aWx0
L3F1aWx0LW5hdGl2ZV8wLjY2LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRp
dmU6L2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3Jq
aW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvLi4v
bWV0YS9yZWNpcGVzLWRldnRvb2xzL2Jpc29uL2Jpc29uXzMuNS4zLmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2Ji
YnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJk
L2J1aWxkL3Bva3kvYnVpbGQvLi4vbWV0YS9yZWNpcGVzLWRldnRvb2xzL3BhdGNoL3BhdGNoXzIu
Ny42LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnXQ0KfCBOT1RFOiBJbnN0YWxsZWQgaW50byBzeXNy
b290OiBbXQ0KfCBOT1RFOiBTa2lwcGluZyBhcyBhbHJlYWR5IGV4aXN0cyBpbiBzeXNyb290OiBb
J2djYy1jcm9zcy1hYXJjaDY0JywgJ3F1aWx0LW5hdGl2ZScsICdiaXNvbi1uYXRpdmUnLCAncGF0
Y2gtbmF0aXZlJywgJ21wZnItbmF0aXZlJywgJ2dtcC1uYXRpdmUnLCAneHotbmF0aXZlJywgJ3Rl
eGluZm8tZHVtbXktbmF0aXZlJywgJ2JpbnV0aWxzLWNyb3NzLWFhcmNoNjQnLCAnZ251LWNvbmZp
Zy1uYXRpdmUnLCAnYXV0b21ha2UtbmF0aXZlJywgJ3psaWItbmF0aXZlJywgJ2xpbnV4LWxpYmMt
aGVhZGVycycsICdsaWJtcGMtbmF0aXZlJywgJ2xpYnRvb2wtbmF0aXZlJywgJ2F1dG9jb25mLW5h
dGl2ZScsICdmbGV4LW5hdGl2ZScsICdhdHRyLW5hdGl2ZScsICdnZXR0ZXh0LW1pbmltYWwtbmF0
aXZlJywgJ200LW5hdGl2ZSddDQp8IERFQlVHOiBQeXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lw
ZV9zeXNyb290IGZpbmlzaGVkDQp8IERFQlVHOiBFeGVjdXRpbmcgc2hlbGwgZnVuY3Rpb24gZG9f
bWVyZ2VfZGVsdGFfY29uZmlnDQp8IE5PVEU6IG1ha2UgSE9TVENDPWdjYyAgLWlzeXN0ZW0vaG9t
ZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19t
YWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9idWlsZC90bXAvd29yay9v
ZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3JpcS1ydC8rZ2l0LXIwL3Jl
Y2lwZS1zeXNyb290LW5hdGl2ZS91c3IvaW5jbHVkZSAtT2cgLWcgLWZlbGltaW5hdGUtdW51c2Vk
LWRlYnVnLXR5cGVzIC1waXBlIC1ML2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVp
bGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1
aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgv
bGludXgtcW9yaXEtcnQvK2dpdC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2xpYiAgICAg
ICAgICAgICAgICAgICAgICAgICAtTC9ob21lL3JhbmNvcmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1
aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9i
dWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL29kc2MzX2lidGJfc2t1Ml9ib2FyZC1wb2t5LWxpbnV4
L2xpbnV4LXFvcmlxLXJ0LytnaXQtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2xpYiAgICAgICAg
ICAgICAgICAgICAgICAgICAtV2wsLS1lbmFibGUtbmV3LWR0YWdzICAgICAgICAgICAgICAgICAg
ICAgICAgIC1XbCwtcnBhdGgtbGluaywvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJi
dWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQv
YnVpbGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51
eC9saW51eC1xb3JpcS1ydC8rZ2l0LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvbGliICAg
ICAgICAgICAgICAgICAgICAgICAgIC1XbCwtcnBhdGgtbGluaywvaG9tZS9yYW5jb3JlL3JvaGl0
L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19p
YnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJf
Ym9hcmQtcG9reS1saW51eC9saW51eC1xb3JpcS1ydC8rZ2l0LXIwL3JlY2lwZS1zeXNyb290LW5h
dGl2ZS9saWIgICAgICAgICAgICAgICAgICAgICAgICAgLVdsLC1ycGF0aCwvaG9tZS9yYW5jb3Jl
L3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9v
ZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRi
X3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3JpcS1ydC8rZ2l0LXIwL3JlY2lwZS1zeXNy
b290LW5hdGl2ZS91c3IvbGliICAgICAgICAgICAgICAgICAgICAgICAgIC1XbCwtcnBhdGgsL2hv
bWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndf
bWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsv
b2RzYzNfaWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgvbGludXgtcW9yaXEtcnQvK2dpdC1yMC9y
ZWNpcGUtc3lzcm9vdC1uYXRpdmUvbGliICAgICAgICAgICAgICAgICAgICAgICAgIC1XbCwtTzEg
LVdsLC0tYWxsb3ctc2hsaWItdW5kZWZpbmVkIC1XbCwtLWR5bmFtaWMtbGlua2VyPS9ob21lL3Jh
bmNvcmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5f
ZGV2X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWlsZC9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy11
bmluYXRpdmUveDg2XzY0LWxpbnV4L2xpYi9sZC1saW51eC14ODYtNjQuc28uMiBIT1NUQ1BQPWdj
YyAgLUUgLUMgL2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1
aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVp
bGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgvbGludXgtcW9yaXEt
cnQvK2dpdC1yMC9naXQgTz0vaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNj
cmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQv
cG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51
eC1xb3JpcS1ydC8rZ2l0LXIwL2J1aWxkIGRlZmNvbmZpZw0KfCBtYWtlOiAqKiogL2hvbWUvcmFu
Y29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9k
ZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNf
aWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgvbGludXgtcW9yaXEtcnQvK2dpdC1yMC9naXQ6IE5v
IHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkuICBTdG9wLg0KfCBFUlJPUjogb2VfcnVubWFrZSBmYWls
ZWQNCnwgV0FSTklORzogL2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3Jp
cHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bv
a3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgvbGludXgt
cW9yaXEtcnQvJHtMSU5VWF9WRVJTSU9OfStnaXQke1NSQ1BWfS1yMC90ZW1wL3J1bi5kb19tZXJn
ZV9kZWx0YV9jb25maWcuNDg2MjU6MSBleGl0IDEgZnJvbSAnZXhpdCAxJw0KfCBFUlJPUjogRXhl
Y3V0aW9uIG9mICcvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMv
YnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9i
dWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3Jp
cS1ydC8ke0xJTlVYX1ZFUlNJT059K2dpdCR7U1JDUFZ9LXIwL3RlbXAvcnVuLmRvX21lcmdlX2Rl
bHRhX2NvbmZpZy40ODYyNScgZmFpbGVkIHdpdGggZXhpdCBjb2RlIDE6DQp8IE5PVEU6IG1ha2Ug
SE9TVENDPWdjYyAgLWlzeXN0ZW0vaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWls
ZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVp
bGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9s
aW51eC1xb3JpcS1ydC8rZ2l0LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvaW5jbHVkZSAt
T2cgLWcgLWZlbGltaW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzIC1waXBlIC1ML2hvbWUvcmFuY29y
ZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZf
b2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0
Yl9za3UyX2JvYXJkLXBva3ktbGludXgvbGludXgtcW9yaXEtcnQvK2dpdC1yMC9yZWNpcGUtc3lz
cm9vdC1uYXRpdmUvdXNyL2xpYiAgICAgICAgICAgICAgICAgICAgICAgICAtTC9ob21lL3JhbmNv
cmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2
X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL29kc2MzX2li
dGJfc2t1Ml9ib2FyZC1wb2t5LWxpbnV4L2xpbnV4LXFvcmlxLXJ0LytnaXQtcjAvcmVjaXBlLXN5
c3Jvb3QtbmF0aXZlL2xpYiAgICAgICAgICAgICAgICAgICAgICAgICAtV2wsLS1lbmFibGUtbmV3
LWR0YWdzICAgICAgICAgICAgICAgICAgICAgICAgIC1XbCwtcnBhdGgtbGluaywvaG9tZS9yYW5j
b3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rl
dl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19p
YnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3JpcS1ydC8rZ2l0LXIwL3JlY2lwZS1z
eXNyb290LW5hdGl2ZS91c3IvbGliICAgICAgICAgICAgICAgICAgICAgICAgIC1XbCwtcnBhdGgt
bGluaywvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMvYnVpbGQv
cmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9idWlsZC90
bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3JpcS1ydC8r
Z2l0LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS9saWIgICAgICAgICAgICAgICAgICAgICAgICAg
LVdsLC1ycGF0aCwvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMv
YnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9i
dWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3Jp
cS1ydC8rZ2l0LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvbGliICAgICAgICAgICAgICAg
ICAgICAgICAgIC1XbCwtcnBhdGgsL2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVp
bGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1
aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgv
bGludXgtcW9yaXEtcnQvK2dpdC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvbGliICAgICAgICAg
ICAgICAgICAgICAgICAgIC1XbCwtTzEgLVdsLC0tYWxsb3ctc2hsaWItdW5kZWZpbmVkIC1XbCwt
LWR5bmFtaWMtbGlua2VyPS9ob21lL3JhbmNvcmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxkc2Ny
aXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWlsZC9w
b2t5L2J1aWxkL3RtcC9zeXNyb290cy11bmluYXRpdmUveDg2XzY0LWxpbnV4L2xpYi9sZC1saW51
eC14ODYtNjQuc28uMiBIT1NUQ1BQPWdjYyAgLUUgLUMgL2hvbWUvcmFuY29yZS9yb2hpdC9naXRf
cHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9z
a3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3UyX2JvYXJk
LXBva3ktbGludXgvbGludXgtcW9yaXEtcnQvK2dpdC1yMC9naXQgTz0vaG9tZS9yYW5jb3JlL3Jv
aGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNj
M19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRiX3Nr
dTJfYm9hcmQtcG9reS1saW51eC9saW51eC1xb3JpcS1ydC8rZ2l0LXIwL2J1aWxkIGRlZmNvbmZp
Zw0KfCBtYWtlOiAqKiogL2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3Jp
cHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bv
a3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3UyX2JvYXJkLXBva3ktbGludXgvbGludXgt
cW9yaXEtcnQvK2dpdC1yMC9naXQ6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkuICBTdG9wLg0K
fCBFUlJPUjogb2VfcnVubWFrZSBmYWlsZWQNCnwgV0FSTklORzogL2hvbWUvcmFuY29yZS9yb2hp
dC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNf
aWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsvb2RzYzNfaWJ0Yl9za3Uy
X2JvYXJkLXBva3ktbGludXgvbGludXgtcW9yaXEtcnQvJHtMSU5VWF9WRVJTSU9OfStnaXQke1NS
Q1BWfS1yMC90ZW1wL3J1bi5kb19tZXJnZV9kZWx0YV9jb25maWcuNDg2MjU6MSBleGl0IDEgZnJv
bSAnZXhpdCAxJw0KfA0KRVJST1I6IFRhc2sgKC9ob21lL3JhbmNvcmUvcm9oaXQvZ2l0X3B1bGwv
cmdiYmJ1aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2X29kc2MzX2lidGJfc2t1Ml9i
b2FyZC9idWlsZC9wb2t5L2J1aWxkLy4uL21ldGEtcmppb19ic3AvcmVjaXBlcy1rZXJuZWwvbGlu
dXgvbGludXgtcW9yaXEtcnRfNC4xOS5iYjpkb19tZXJnZV9kZWx0YV9jb25maWcpIGZhaWxlZCB3
aXRoIGV4aXQgY29kZSAnMScNCkVSUk9SOiBsaW51eC1xb3JpcS1ydC0ke0xJTlVYX1ZFUlNJT059
K2dpdCR7U1JDUFZ9LXIwIGRvX2RlcGxveV9zb3VyY2VfZGF0ZV9lcG9jaDogRXJyb3IgZXhlY3V0
aW5nIGEgcHl0aG9uIGZ1bmN0aW9uIGluIGV4ZWNfcHl0aG9uX2Z1bmMoKSBhdXRvZ2VuZXJhdGVk
Og0KDQpUaGUgc3RhY2sgdHJhY2Ugb2YgcHl0aG9uIGNhbGxzIHRoYXQgcmVzdWx0ZWQgaW4gdGhp
cyBleGNlcHRpb24vZmFpbHVyZSB3YXM6DQpGaWxlOiAnZXhlY19weXRob25fZnVuYygpIGF1dG9n
ZW5lcmF0ZWQnLCBsaW5lbm86IDIsIGZ1bmN0aW9uOiA8bW9kdWxlPg0KICAgICAwMDAxOg0KICoq
KiAwMDAyOnNzdGF0ZV9oYXJkY29kZV9wYXRoKGQpDQogICAgIDAwMDM6DQpGaWxlOiAnL2hvbWUv
cmFuY29yZS9yb2hpdC9naXRfcHVsbC9yZ2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFp
bl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2JvYXJkL2J1aWxkL3Bva3kvYnVpbGQvLi4vbWV0YS9jbGFz
c2VzL3NzdGF0ZS5iYmNsYXNzJywgbGluZW5vOiA2MjgsIGZ1bmN0aW9uOiBzc3RhdGVfaGFyZGNv
ZGVfcGF0aA0KICAgICAwNjI0OiAgICBiYi5ub3RlKCJSZW1vdmluZyBoYXJkY29kZWQgcGF0aHMg
ZnJvbSBzc3RhdGUgcGFja2FnZTogJyVzJyIgJSAoc3N0YXRlX2hhcmRjb2RlX2NtZCkpDQogICAg
IDA2MjU6ICAgIHN1YnByb2Nlc3MuY2hlY2tfb3V0cHV0KHNzdGF0ZV9oYXJkY29kZV9jbWQsIHNo
ZWxsPVRydWUsIGN3ZD1zc3RhdGVfYnVpbGRkaXIpDQogICAgIDA2MjY6DQogICAgIDA2Mjc6ICAg
ICAgICAjIElmIHRoZSBmaXhtZWZuIGlzIGVtcHR5LCByZW1vdmUgaXQuLg0KICoqKiAwNjI4OiAg
ICBpZiBvcy5zdGF0KGZpeG1lZm4pLnN0X3NpemUgPT0gMDoNCiAgICAgMDYyOTogICAgICAgIG9z
LnJlbW92ZShmaXhtZWZuKQ0KICAgICAwNjMwOiAgICBlbHNlOg0KICAgICAwNjMxOiAgICAgICAg
YmIubm90ZSgiUmVwbGFjaW5nIGFic29sdXRlIHBhdGhzIGluIGZpeG1lcGF0aCBmaWxlOiAnJXMn
IiAlIChzc3RhdGVfZmlsZWxpc3RfcmVsYXRpdmVfY21kKSkNCiAgICAgMDYzMjogICAgICAgIHN1
YnByb2Nlc3MuY2hlY2tfb3V0cHV0KHNzdGF0ZV9maWxlbGlzdF9yZWxhdGl2ZV9jbWQsIHNoZWxs
PVRydWUpDQpFeGNlcHRpb246IEZpbGVOb3RGb3VuZEVycm9yOiBbRXJybm8gMl0gTm8gc3VjaCBm
aWxlIG9yIGRpcmVjdG9yeTogJy9ob21lL3JhbmNvcmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxk
c2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWls
ZC9wb2t5L2J1aWxkL3RtcC93b3JrL29kc2MzX2lidGJfc2t1Ml9ib2FyZC1wb2t5LWxpbnV4L2xp
bnV4LXFvcmlxLXJ0LyR7TElOVVhfVkVSU0lPTn0rZ2l0JHtTUkNQVn0tcjAvc3N0YXRlLWJ1aWxk
LWRlcGxveV9zb3VyY2VfZGF0ZV9lcG9jaC9maXhtZXBhdGgnDQoNCkVSUk9SOiBMb2dmaWxlIG9m
IGZhaWx1cmUgc3RvcmVkIGluOiAvaG9tZS9yYW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWls
ZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWluX2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVp
bGQvcG9reS9idWlsZC90bXAvd29yay9vZHNjM19pYnRiX3NrdTJfYm9hcmQtcG9reS1saW51eC9s
aW51eC1xb3JpcS1ydC8ke0xJTlVYX1ZFUlNJT059K2dpdCR7U1JDUFZ9LXIwL3RlbXAvbG9nLmRv
X2RlcGxveV9zb3VyY2VfZGF0ZV9lcG9jaC40ODYyNg0KRVJST1I6IFRhc2sgKC9ob21lL3JhbmNv
cmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxkc2NyaXB0cy9idWlsZC9yamlvL2Z3X21haW5fZGV2
X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWlsZC9wb2t5L2J1aWxkLy4uL21ldGEtcmppb19ic3Av
cmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgtcW9yaXEtcnRfNC4xOS5iYjpkb19kZXBsb3lfc291
cmNlX2RhdGVfZXBvY2gpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCk5PVEU6IFRhc2tzIFN1
bW1hcnk6IEF0dGVtcHRlZCA1ODggdGFza3Mgb2Ygd2hpY2ggNTgwIGRpZG4ndCBuZWVkIHRvIGJl
IHJlcnVuIGFuZCAzIGZhaWxlZC4NCk5PVEU6IFdyaXRpbmcgYnVpbGRoaXN0b3J5DQpOT1RFOiBX
cml0aW5nIGJ1aWxkaGlzdG9yeSB0b29rOiAxIHNlY29uZHMNCg0KU3VtbWFyeTogMyB0YXNrcyBm
YWlsZWQ6DQogIC9ob21lL3JhbmNvcmUvcm9oaXQvZ2l0X3B1bGwvcmdiYmJ1aWxkc2NyaXB0cy9i
dWlsZC9yamlvL2Z3X21haW5fZGV2X29kc2MzX2lidGJfc2t1Ml9ib2FyZC9idWlsZC9wb2t5L2J1
aWxkLy4uL21ldGEtcmppb19ic3AvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgtcW9yaXEtcnRf
NC4xOS5iYjpkb19wb3B1bGF0ZV9saWMNCiAgL2hvbWUvcmFuY29yZS9yb2hpdC9naXRfcHVsbC9y
Z2JiYnVpbGRzY3JpcHRzL2J1aWxkL3JqaW8vZndfbWFpbl9kZXZfb2RzYzNfaWJ0Yl9za3UyX2Jv
YXJkL2J1aWxkL3Bva3kvYnVpbGQvLi4vbWV0YS1yamlvX2JzcC9yZWNpcGVzLWtlcm5lbC9saW51
eC9saW51eC1xb3JpcS1ydF80LjE5LmJiOmRvX21lcmdlX2RlbHRhX2NvbmZpZw0KICAvaG9tZS9y
YW5jb3JlL3JvaGl0L2dpdF9wdWxsL3JnYmJidWlsZHNjcmlwdHMvYnVpbGQvcmppby9md19tYWlu
X2Rldl9vZHNjM19pYnRiX3NrdTJfYm9hcmQvYnVpbGQvcG9reS9idWlsZC8uLi9tZXRhLXJqaW9f
YnNwL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXFvcmlxLXJ0XzQuMTkuYmI6ZG9fZGVwbG95
X3NvdXJjZV9kYXRlX2Vwb2NoDQpTdW1tYXJ5OiBUaGVyZSB3YXMgMSBXQVJOSU5HIG1lc3NhZ2Ug
c2hvd24uDQpTdW1tYXJ5OiBUaGVyZSB3ZXJlIDQgRVJST1IgbWVzc2FnZXMgc2hvd24sIHJldHVy
bmluZyBhIG5vbi16ZXJvIGV4aXQgY29kZS4NCg==

--_004_BM1PR01MB32035E9889C574FB564BA0E694EC9BM1PR01MB3203INDP_--


