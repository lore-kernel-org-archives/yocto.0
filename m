Return-Path: <phelge@semtech.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B71CCD185
	for <webhook@archiver.kernel.org>; Mon, 13 Oct 2025 18:19:21 +0000 (UTC)
Received: from usb-smtp-delivery-126.mimecast.com (usb-smtp-delivery-126.mimecast.com [170.10.153.126])
 by mx.groups.io with SMTP id smtpd.web11.52135.1760379558314646571
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Oct 2025 11:19:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@semtech.com header.s=mimecast20250905 header.b=hxUJ5Lf5;
 spf=pass (domain: semtech.com, ip: 170.10.153.126, mailfrom: phelge@semtech.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=semtech.com;
	s=mimecast20250905; t=1760379557;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Iewx8TkgcIIGlAwZoHc4j4LG1lZSqYUnD+/MuVN8lrc=;
	b=hxUJ5Lf5S4x4DuwxAEAHSWhncjyztvP2Lg4HKVnsMh17aK08bnp6wRCzi8mwQ2G3TstcT9
	WHK2k0PYyveSk23032GGM/cO7/Elwz/8wNf2ZWlcEzVhFan9Wagfpw9px2XHjM6B16+57K
	qvloGbChCMm1s2OlOZpxS65JgI6Qs1c=
Received: from DM1PR04CU001.outbound.protection.outlook.com
 (mail-centralusazon11020081.outbound.protection.outlook.com [52.101.61.81])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id usb-mta-22-3DCZsycYOUSUNWvE79pfbA-1; Mon,
 13 Oct 2025 11:19:15 -0700
X-MC-Unique: 3DCZsycYOUSUNWvE79pfbA-1
X-Mimecast-MFC-AGG-ID: 3DCZsycYOUSUNWvE79pfbA_1760379554
Received: from CY8PR20MB5618.namprd20.prod.outlook.com (2603:10b6:930:95::6)
 by IA0PPF4C7D5C53F.namprd20.prod.outlook.com (2603:10b6:20f:fc02::1b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Mon, 13 Oct
 2025 18:19:11 +0000
Received: from CY8PR20MB5618.namprd20.prod.outlook.com
 ([fe80::d4a1:ed46:2f15:220]) by CY8PR20MB5618.namprd20.prod.outlook.com
 ([fe80::d4a1:ed46:2f15:220%5]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 18:19:10 +0000
From: Pushkar Helge <phelge@semtech.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [kirkstone 4.0.30] libpam-1.5.2 do_compile fails due to missing
 headers in pam_namespace.c
Thread-Topic: [kirkstone 4.0.30] libpam-1.5.2 do_compile fails due to missing
 headers in pam_namespace.c
Thread-Index: AQHcPG3JS9PBGCPXgkSITjH0ouHGIw==
Date: Mon, 13 Oct 2025 18:19:10 +0000
Message-ID: <CY8PR20MB5618082EADE97E0FA4EDE9F5C7EAA@CY8PR20MB5618.namprd20.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR20MB5618:EE_|IA0PPF4C7D5C53F:EE_
x-ms-office365-filtering-correlation-id: 28770c58-20d7-49fe-fa1d-08de0a8501b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|8096899003|38070700021
x-microsoft-antispam-message-info: =?iso-8859-1?Q?qp1ipyFvIPxwyrfXraPzrFiNj257JNwFV9aUwdFc8sTz43CD+aHIc8DP2F?=
 =?iso-8859-1?Q?rllLS+dKIVnYreSgrOzhK+uLWwDcJRVLZG0bq4MBABDL2Tx6aFlT2fkECZ?=
 =?iso-8859-1?Q?00EJErsiR0lqXJt9UumHDpoZiKyCESAinM4LxcbLIJ87HK3bf7J4/iyiBR?=
 =?iso-8859-1?Q?ZmneT38v5dufBJnKi+U2z1Va8Cdwj2207Qb5JgoVu6J4LeeE6grKWGcutG?=
 =?iso-8859-1?Q?tSBVyyr9oyTFP5/i/wxQzpJaGiFLW2yQK+Jnne1A/VOhZZVA+stBMzAZFo?=
 =?iso-8859-1?Q?Cqq7LbOQyqKCV6eCBX/VBdeF2kxxnjSTI3ftxbPFqXDqlUwpvvtM2rF+7Z?=
 =?iso-8859-1?Q?jPfjog/0ECr63xt0EqjoqzbsfqlC8ctJlcvaOHpRKIK0rInggnyy+2NQQm?=
 =?iso-8859-1?Q?Q5/RqwY11ZLyTeDlHCauGlWmuQdRgju5bnnflDaAz9bTpzOMqGP7z+IYIq?=
 =?iso-8859-1?Q?m39OpjCci1Dg/FHqfktNibDj6T9wwniQAC2yxFz/JFFJid+0Qj11Zj3ufl?=
 =?iso-8859-1?Q?1FLM7XZeLzyZ6kM1py5yvUjT+oMz+OPzHgIU+Ku0Msys5tkn/GdehoHvzS?=
 =?iso-8859-1?Q?AdlLzB5G+TAcnfntQR0QW4AODiVpf6QOOMiNd4o+XlkP2Xs++q8uQ1WQRF?=
 =?iso-8859-1?Q?jErgc1ZFclt+Ju88icMGPth3JaVNtR9lF7iOmoEirLtHu++Eji8MwuC6Qn?=
 =?iso-8859-1?Q?4GSDkZ6dNiHVTVwlTkAbOgGkNlZ3T0DwfymC2cTT7GHxbsPMXgCrgBu4wP?=
 =?iso-8859-1?Q?vd1M6iPyZhADq/+V+UJhznfoNk9Ou5uafOtA77a/hoxlsZ8wz5nz+9ZWmi?=
 =?iso-8859-1?Q?fgSWu5nF/aClPw58lTKug1/avo6qQsP/7mYttN0LeuxEVThKCjnrqc+VMl?=
 =?iso-8859-1?Q?L0vpfiEPc5szylzKeMXy7/Pn31xByCBZQRWayHwRzK5j9qsZgMcFBrBl+N?=
 =?iso-8859-1?Q?FY0gCKx/HOdVY3SG9tn/QUEIOyAKvWxj0cYBWgOhHDODWpmEvqmir0sepp?=
 =?iso-8859-1?Q?o0MMiHUVviyQ5FiUtySZ+AUscetyeyOgQMlRnsvbtfffc9sNl5DsRA/iKK?=
 =?iso-8859-1?Q?jqnQjyZpW9Z/gR4NEiw4CgoRGdUsD4JuQZlUpl1nhHD7qujkuLrHKZycSs?=
 =?iso-8859-1?Q?yFLyncP7HiTRReTl/sYy/nBy49d9CIlKOuVuI4FF5wYB8/Y7GhbzzXAwjk?=
 =?iso-8859-1?Q?7KHfwpG3JXQhtxo7MI6/d8+/xAn7YdOZtCoI26zrki6/rWub5IfriSgtdw?=
 =?iso-8859-1?Q?NUfRve/4tgqT+erJRfQj5bdv8UMyQcVRRPXpc+XWGp8FKhImRAQE38hkZm?=
 =?iso-8859-1?Q?RNaFBE0L5Av4bkRLXAm4OTDXReHO14UvKF1U+irXxHfoUD43S9gZAEhLJU?=
 =?iso-8859-1?Q?n+f69ngdT/UWNfgCiy6UzuiX0CTJtzWXXIYLZq4DFlijTm8l2EKHBmWc4J?=
 =?iso-8859-1?Q?3+RR6hpJJe4FijCO1eJspqdOkA53uhoY240nv6ozGIOoNhP6jtFKjreyvh?=
 =?iso-8859-1?Q?jCfC+NH8EH7zBTYH0To+hyMgj4mHt8ZTXtwqxgW9dAZjkDME5x808BBXJa?=
 =?iso-8859-1?Q?KfvpzT+0W0Ml/SVl7FK23Q3NdPja?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR20MB5618.namprd20.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(8096899003)(38070700021);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ApJdBFf4TVY4nJ/t48bzZtLmEEXyWbI/wEG8HJ6mvenZWt6IICey54K2Yo?=
 =?iso-8859-1?Q?9RPXdE9nNbMgdTP9gmCb1gEnFrzOZhY9iGrNOR5Lcd0aIRKzcsb+PZLZ5Y?=
 =?iso-8859-1?Q?JErypflhce6KjVvXMONA9CQHD9jV2nadOE1mzKBy5oSUmZwRyWpjC/0Qp5?=
 =?iso-8859-1?Q?GWQ4hTcaL2I7WiccSaMOUqU3kQB8lxVCKr6K2sMg8lvyUM0JWwt7eMuAhF?=
 =?iso-8859-1?Q?Hhk5DMbL97OKFRdc4w9QVCSZPoaeWnjOwde4Mpwz9LewDfYRpu++4Gog/x?=
 =?iso-8859-1?Q?y/OrGEp20j2QuGD04pjJwjgpjbssfXMiJ6ZDZ0kSyDgfpDj2SjZagXR0ej?=
 =?iso-8859-1?Q?B0goaWwoKWO8Jw+lK3ovfZxNdUJr6UTFiALDRZTCReFfI9HPoSOVJxS6U2?=
 =?iso-8859-1?Q?NcMv2hl5yO9omq11zNj8qtLivybJ3D+7DXhBb5oQn5k1iRVCSFrL4DjcRW?=
 =?iso-8859-1?Q?05nzyK8xDmQ8Vl/vRhQZ9AcZYmc666xHZ2MqWRwD2xaOH3xGpvckWn2OXH?=
 =?iso-8859-1?Q?hnFN0C0+F4iG3KtxjzY2Gtxl8HWY25z38785wOHutqSYukF+6TQiPM6AIR?=
 =?iso-8859-1?Q?YEUX5/vRq4b3mJV+W57ChFTWqfg4IA8x6cY9msaaUZSwsvZt6JjK2cYhi1?=
 =?iso-8859-1?Q?UySv1yePyRS89sYxmMdC++IW1bBh2wCalHGZjryJQRZ9abej/rmSygXjTF?=
 =?iso-8859-1?Q?XshAGLRbh5pWBE0oG9O5HiSVAQIr0yRtYJfv8Dw6kYFh6OwqRQrOl3QrdR?=
 =?iso-8859-1?Q?7BB8r4OBw5pwcDveLKO0JBVBCZ8V+4Q26arKxa6xFEN9yPJ1KMJsbHKRKD?=
 =?iso-8859-1?Q?BmLwsapeLdwY4w5+dV/st31yuV0sgMLgJD/DhjILtZg8xINaX9js2BK01Q?=
 =?iso-8859-1?Q?BL5mLa92gDWVFkpWJS0I55WkPg8WkGluAP0LHFWuXqMtGXSrD/FU1o2H3o?=
 =?iso-8859-1?Q?KuVFO5tq9DoP5Vmr3Lx5rs2Uicy3t8p9egUThSHQ8QkJSsytUvfRirZWG4?=
 =?iso-8859-1?Q?1/N7xMwODwvQdN4HfX9ybvD6UUKZlxOdG6wbfbTXlBCqc4TCOEvrxrN5Qj?=
 =?iso-8859-1?Q?/h3kcgGcooqgS90VHhs6aqOpwuxP/HuMjXekDZNFpK4qqb9zL9oVeml/TA?=
 =?iso-8859-1?Q?G3vdfmeltXQabIIQVKEWe7FYHw2C1pAir+0FffjFcqlDWw6gPBmxrudvBB?=
 =?iso-8859-1?Q?nA64KD+4grVq6uDd4G2sad7jv/wNAWvzOHwmjLLU1e1XdDofX74c0RMnAy?=
 =?iso-8859-1?Q?Tt4/vM5nIA1Tw6NwdfEPifkRkg/lfwBo+kLk1yXzuSAfrgts4gy2oXdTry?=
 =?iso-8859-1?Q?UV+P5b/fxBE1+aXmUk3UYc+FvSukiIDDZBRlM5LbkSVmAJ62HTsIIVMDj6?=
 =?iso-8859-1?Q?9zVoESFzsnjp9lqIUDXXw7L983RSSS1w3PtGp6LjkmCAvbZyI3ePqQGyfQ?=
 =?iso-8859-1?Q?4lCl3eg3Vqu2FEG0WB0xplH3Xxy2dAsSklJVF3Tw/clMhtvUvO8mLKwnl8?=
 =?iso-8859-1?Q?LCXZQ0c9a3AYm1TZJUJyMPJokqJEw2POM2sBbkqEbTIz3JqEMKJJj4kjMu?=
 =?iso-8859-1?Q?8oq5YM4hV0faLX7q2C4d58CU77NQFb6vOsXAoW4gK/NTA9RQPvo/1DZpB1?=
 =?iso-8859-1?Q?kTR/vB3RmAAyo=3D?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: F2kZxoECE0GpykdSeXQiWTM65BBJZqBeDLZQmUMlYCB9pGZiNlHayzlf2tzhZFhOv5H59FzDdFTAQTeBcZXhv9i26Nx2wLz+UatqA4n14WkEfOOnL87lfcROc7/EyOzfb44m+ZcDYnnCFva94R0zLBNr82W/1kSl++WYpoB6Gja5vI6lMAYhGbme3Py66EwCEa5FOYzZnHCCNIT3HKcGFsEiq1tly3Sksrg0+aDpNRdfmpyyK4zqwyTqZgc0stI9gpKG03tW451wBNiz0KqoWXow7WByA8d71nGmeP5IcTR677+bTONkf/w1C0yjaKy3qoyg81Of2b2Qd52F0871Kg+JUIReVfkr2inoT0scAfV9UWUg5GCBKdeHYS5ylDBlDvVdaEczv4ptWH2AnqoWzv3v7IM56r1CtLX6mXZMejXk/iKbtezQMN4etE1aZCA1u74bL38xlGCnjArgdk5mB6z1FyEthLdMwucc9Kf7XSsuMGSRt6We+QM29Z1tN/8oeE5BX1hIVIaei+ATU+33turyaxBU+FFqc3bu7X6ylWIOLAs7NZT7KvQL1P6pYC2nZo1BTlAZ0N3MWoOKc6QwkodQsLvQKWMDwGIqfxN/S3o6TcXzQL9t28FF4Oq+a+29cN8y/oUnvaRv8XH9OWEL2w==
X-OriginatorOrg: semtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR20MB5618.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28770c58-20d7-49fe-fa1d-08de0a8501b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 18:19:10.8785
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b105310d-dc1a-4d6e-bf0d-b11c10c47b0f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h8DpNrws8JDXCeEEXhUFvpHZtCq0DDquuHzA98b7FZ6LNf/YrC3QijrMcpHszqaQxuGV4wDqHEc9HBFayjIV1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PPF4C7D5C53F
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: mtodWI1H5PHuztKccfMq5Jk32UaB6e1EpKawdothvY4_1760379554
X-Mimecast-Originator: semtech.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY8PR20MB5618082EADE97E0FA4EDE9F5C7EAACY8PR20MB5618namp_"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Oct 2025 18:19:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65920

--_000_CY8PR20MB5618082EADE97E0FA4EDE9F5C7EAACY8PR20MB5618namp_
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Yocto team,

I encountered a compilation failure with libpam-1.5.2-r0 when building an i=
mage with Yocto kirkstone 4.0.30 on aarch64 target architecture. The issue =
appears to be introduced by the CVE-2025-6020 patches backported in the 4.0=
.29 release.

=3D=3D=3D ENVIRONMENT =3D=3D=3D
- Yocto Version: 4.0.30 kirkstone
- Target Architecture: aarch64-poky-linux
- Host System: Linux 5.15.0-139-generic
- Package: libpam-1.5.2-r0
- Recipe: /poky/meta/recipes-extended/pam/libpam_1.5.2.bb

=3D=3D=3D ERROR LOG =3D=3D=3D

ERROR: libpam-1.5.2-r0 do_compile: oe_runmake failed


The compilation fails in modules/pam_namespace/pam_namespace.c with:


../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c: In function=
 'secure_try_rmdir':

../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c:326:18: warn=
ing: implicit declaration of function 'dirname' [-Wimplicit-function-declar=
ation]

  326 |         parent =3D dirname(buf);

      |                  ^~~~~~~

../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c:326:16: warn=
ing: assignment to 'char *' from 'int' makes pointer from integer without a=
 cast [-Wint-conversion]

  326 |         parent =3D dirname(buf);

      |                ^

../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c: In function=
 'parse_config_file':

../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c:944:17: warn=
ing: implicit declaration of function 'setlocale' [-Wimplicit-function-decl=
aration]

  944 |     oldlocale =3D setlocale(LC_COLLATE, "C");

      |                 ^~~~~~~~~

../../../Linux-PAM-1.5.2/modules/pam_namespace/pam_namespace.c:944:27: erro=
r: 'LC_COLLATE' undeclared (first use in this function)

  944 |     oldlocale =3D setlocale(LC_COLLATE, "C");

      |                           ^~~~~~~~~~


make[3]: *** [Makefile:795: pam_namespace.lo] Error 1

=3D=3D=3D ROOT CAUSE =3D=3D=3D
The CVE-2025-6020-01.patch (added in 4.0.29) removes <libgen.h> and <locale=
.h> from modules/pam_namespace/pam_namespace.h as part of header cleanup:

diff --git a/modules/pam_namespace/pam_namespace.h b/modules/pam_namespace/=
pam_namespace.h
...
-#include <libgen.h>
...
-#include <locale.h>

However, modules/pam_namespace/pam_namespace.c still uses:

  *
dirname() function (requires <libgen.h>)
  *
setlocale() function and LC_COLLATE constant (requires <locale.h>)
These functions are called but the headers are no longer included anywhere,=
 causing the compilation to fail.

=3D=3D=3D PROPOSED FIX =3D=3D=3D
The fix is to add the missing header includes directly to pam_namespace.c. =
I've attached a patch that resolves this issue.
This patch should be added to the libpam_1.5.2.bb recipe SRC_URI after the =
CVE-2025-6020 patches.

=3D=3D=3D PATCH =3D=3D=3D

From: Pushkar

Date: Mon, 13 Oct 2025

Subject: [PATCH] libpam: fix missing headers in pam_namespace.c after CVE-2=
025-6020 patches


The CVE-2025-6020-01 patch removed libgen.h and locale.h from

pam_namespace.h, but pam_namespace.c still uses dirname(), setlocale(),

and LC_COLLATE from these headers. Add them back to the C file.


This fixes compilation errors on aarch64 and potentially other architecture=
s.


Signed-off-by:


---

 modules/pam_namespace/pam_namespace.c | 2 ++

 1 file changed, 2 insertions(+)


diff --git a/modules/pam_namespace/pam_namespace.c b/modules/pam_namespace/=
pam_namespace.c

index 22d8445..1234567 100644

--- a/modules/pam_namespace/pam_namespace.c

+++ b/modules/pam_namespace/pam_namespace.c

@@ -38,6 +38,8 @@

 #include "config.h"

 #include <stdint.h>

 #include "pam_cc_compat.h"

+#include <libgen.h>

+#include <locale.h>

 #include "pam_inline.h"

 #include "pam_namespace.h"

 #include "argv_parse.h"

--

2.25.1

Please let me know if this is a valid issue and or if need any additional i=
nformation or testing results.

Regards,
Pushkar

To view our privacy policy, including the types of personal information we =
collect, process and share, and the rights and options you have in this res=
pect, see www.semtech.com/legal.

--_000_CY8PR20MB5618082EADE97E0FA4EDE9F5C7EAACY8PR20MB5618namp_
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
<style type=3D"text/css">.style1 {font-family: "Times New Roman";}</style><=
/head><body dir=3D"ltr">
<div style=3D"background-color: rgb(245, 245, 245); margin: 0px;" class=3D"=
elementToProof">
<div style=3D"background-color: rgb(255, 255, 255); margin: 2px; padding: 6=
px 12px 12px; border-width: 1px; border-style: solid; border-color: transpa=
rent; border-radius: 4px;" class=3D"elementToProof" id=3D"focused">
<div style=3D"margin: 12px 16px 0px 52px; padding-bottom: 2px;" class=3D"el=
ementToProof" id=3D"UniqueMessageBody_8">
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
Hi Yocto team,</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
<br>
</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
I encountered a compilation failure with libpam-1.5.2-r0 when building an i=
mage with Yocto kirkstone 4.0.30 on aarch64 target architecture. The issue =
appears to be introduced by the CVE-2025-6020 patches backported in the 4.0=
.29 release.</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
<br>
</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
=3D=3D=3D ENVIRONMENT =3D=3D=3D</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
- Yocto Version: 4.0.30 kirkstone</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
- Target Architecture: aarch64-poky-linux</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
- Host System: Linux 5.15.0-139-generic</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
- Package: libpam-1.5.2-r0</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
- Recipe: /poky/meta/recipes-extended/pam/libpam_1.5.2.bb</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
<br>
</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
=3D=3D=3D ERROR LOG =3D=3D=3D</div>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">ERROR: libpam-1.5.2-r0 do_compile: =
oe_runmake failed</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);"><br>
</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">The compilation fails in modules/pa=
m_namespace/pam_namespace.c with:</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);"><br>
</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">../../../Linux-PAM-1.5.2/modules/pa=
m_namespace/pam_namespace.c: In function 'secure_try_rmdir':</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">../../../Linux-PAM-1.5.2/modules/pa=
m_namespace/pam_namespace.c:326:18: warning: implicit declaration of functi=
on 'dirname' [-Wimplicit-function-declaration]</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">&nbsp; 326 | &nbsp; &nbsp; &nbsp; &=
nbsp; parent =3D dirname(buf);</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">&nbsp; &nbsp; &nbsp; | &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">../../../Linux-PAM-1.5.2/modules/pa=
m_namespace/pam_namespace.c:326:16: warning: assignment to 'char *' from 'i=
nt' makes pointer from integer without a cast [-Wint-conversion]</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">&nbsp; 326 | &nbsp; &nbsp; &nbsp; &=
nbsp; parent =3D dirname(buf);</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">&nbsp; &nbsp; &nbsp; | &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">../../../Linux-PAM-1.5.2/modules/pa=
m_namespace/pam_namespace.c: In function 'parse_config_file':</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">../../../Linux-PAM-1.5.2/modules/pa=
m_namespace/pam_namespace.c:944:17: warning: implicit declaration of functi=
on 'setlocale' [-Wimplicit-function-declaration]</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">&nbsp; 944 | &nbsp; &nbsp; oldlocal=
e =3D setlocale(LC_COLLATE, &quot;C&quot;);</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">&nbsp; &nbsp; &nbsp; | &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">../../../Linux-PAM-1.5.2/modules/pa=
m_namespace/pam_namespace.c:944:27: error: 'LC_COLLATE' undeclared (first u=
se in this function)</span></p>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">&nbsp; 944 | &nbsp; &nbsp; oldlocal=
e =3D setlocale(LC_COLLATE, &quot;C&quot;);</span></p>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px 0px 0px 80px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: black;" class=
=3D"elementToProof">
&nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px 0px 0px 80px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: black;" class=
=3D"elementToProof">
<br>
</div>
<p style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin: =
0px 0px 0px 80px; font-family: Aptos; font-size: 11pt;" class=3D"elementToP=
roof">
<span style=3D"color: rgb(36, 36, 36);">make[3]: *** [Makefile:795: pam_nam=
espace.lo] Error 1</span></p>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
<br>
</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
=3D=3D=3D ROOT CAUSE =3D=3D=3D</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
The CVE-2025-6020-01.patch (added in 4.0.29) removes &lt;libgen.h&gt; and &=
lt;locale.h&gt; from modules/pam_namespace/pam_namespace.h as part of heade=
r cleanup:</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
<br>
</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
diff --git a/modules/pam_namespace/pam_namespace.h b/modules/pam_namespace/=
pam_namespace.h</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
...</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
-#include &lt;libgen.h&gt;</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
...</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
-#include &lt;locale.h&gt;</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
<br>
</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
However, modules/pam_namespace/pam_namespace.c still uses:</div>
<ul style=3D"direction: ltr; margin-top: 0px; margin-bottom: 0px; list-styl=
e-position: initial; list-style-type: disc;" data-editing-info=3D"{&quot;ap=
plyListStyleFromLevel&quot;:true}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: black;">
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px;" role=3D"presentation" class=3D"elementToProof">
dirname() function (requires &lt;libgen.h&gt;)</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: black;">
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px;" role=3D"presentation" class=3D"elementToProof">
setlocale() function and LC_COLLATE constant (requires &lt;locale.h&gt;)</d=
iv>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px;" role=3D"presentation" class=3D"elementToProof">
These functions are called but the headers are no longer included anywhere,=
 causing the compilation to fail.</div>
</li></ul>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
<br>
</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
=3D=3D=3D PROPOSED FIX =3D=3D=3D</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
The fix is to add the missing header includes directly to pam_namespace.c. =
I've attached a patch that resolves this issue.<br>
This patch should be added to the libpam_1.5.2.bb recipe SRC_URI after the =
CVE-2025-6020 patches.</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
<br>
</div>
<div style=3D"direction: ltr; text-indent: 0px; line-height: normal; margin=
: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementTo=
Proof">
=3D=3D=3D PATCH =3D=3D=3D</div>
</div>
</div>
</div>
<div style=3D"background-color: rgb(245, 245, 245); margin: 0px;" class=3D"=
elementToProof">
<div style=3D"background-color: rgb(255, 255, 255); margin: -9px 2px 0px; p=
adding-left: 31px; border-right: 1px solid transparent; border-bottom: 1px =
solid transparent; border-left: 1px solid transparent; border-radius: 4px;"=
 class=3D"elementToProof">
<div style=3D"margin: 0px; padding-right: 16px; padding-left: 16px; border-=
left: 0.833333px solid rgb(224, 224, 224);" class=3D"elementToProof">
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">From: Pushkar</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">Date: Mon, 13 Oct 2025</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">Subject: [PATCH] libpam: fix missin=
g headers in pam_namespace.c after CVE-2025-6020 patches</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);"><br>
</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">The CVE-2025-6020-01 patch removed =
libgen.h and locale.h from</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">pam_namespace.h, but pam_namespace.=
c still uses dirname(), setlocale(),</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">and LC_COLLATE&nbsp;from these head=
ers. Add them back to the C file.</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);"><br>
</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">This fixes compilation errors on aa=
rch64 and potentially other architectures.</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);"><br>
</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">Signed-off-by:</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);"><br>
</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">---</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">&nbsp;modules/pam_namespace/pam_nam=
espace.c | 2 ++</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">&nbsp;1 file changed, 2 insertions(=
+)</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);"><br>
</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">diff --git a/modules/pam_namespace/=
pam_namespace.c b/modules/pam_namespace/pam_namespace.c</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">index 22d8445..1234567 100644</span=
></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">--- a/modules/pam_namespace/pam_nam=
espace.c</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">+++&nbsp;b/modules/pam_namespace/pa=
m_namespace.c</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">@@ -38,6 +38,8 @@</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">&nbsp;#include &quot;config.h&quot;=
</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">&nbsp;#include &lt;stdint.h&gt;</sp=
an></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">&nbsp;#include &quot;pam_cc_compat.=
h&quot;</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">+#include &lt;libgen.h&gt;</span></=
p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">+#include &lt;locale.h&gt;</span></=
p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">&nbsp;#include &quot;pam_inline.h&q=
uot;</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">&nbsp;#include&nbsp;&quot;pam_names=
pace.h&quot;</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">&nbsp;#include &quot;argv_parse.h&q=
uot;</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">--</span></p>
<p style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0px=
 0px 0px 40px; font-family: Aptos; font-size: 11pt;" class=3D"elementToProo=
f">
<span style=3D"color: rgb(36, 36, 36);">2.25.1</span></p>
<div style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0=
px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, H=
elvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementToPro=
of">
<br>
</div>
<div style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0=
px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, H=
elvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementToPro=
of">
Please let me know if this is a valid issue and or if need any additional i=
nformation or testing results.</div>
<div style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0=
px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, H=
elvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementToPro=
of">
<br>
</div>
<div style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0=
px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, H=
elvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementToPro=
of">
Regards,</div>
<div style=3D"direction: ltr; text-align: left; text-indent: 0px; margin: 0=
px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, H=
elvetica, sans-serif; font-size: 12pt; color: black;" class=3D"elementToPro=
of">
Pushkar</div>
</div>
</div>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>


<br><br><p style=3D"font-family: Verdana; font-size:8pt; color:#666666;">To=
 view our privacy policy, including the types of personal information we co=
llect, process and share, and the rights and options you have in this respe=
ct, see <a href=3D"https://www.semtech.com/legal" target=3D"_blank">www.sem=
tech.com/legal</a></p></body></html>

--_000_CY8PR20MB5618082EADE97E0FA4EDE9F5C7EAACY8PR20MB5618namp_--


