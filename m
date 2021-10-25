Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B52CC433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 06:50:41 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.68])
 by mx.groups.io with SMTP id smtpd.web12.28721.1635144638957135675
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Oct 2021 23:50:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=BsLAobuB;
 spf=pass (domain: optimeas.de, ip: 40.107.21.68,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QeIas3fTqtUWgUMdwTq73lpM3QdAO9T60G6xnnOCw7pFnUcagcZLjzisi+5RBIaVUer5XjTHNIuGDU/hAp8gXWO2f2vLRxfEAeYZxFgnXHo5v2xSBkAmuW4Ilmawi3nTvCGNn4a7fsA8zyMUESgkkEK/iNswdhUyhZwPT8FIwwFgOBXJwZb7yRs3FLxNLpEbJ6JBCTPchbGpT9mMNkzgHatBXBSkvK2auK87BVnTpp/2d8GDv63By8Yepi2n63jo8pWB0bpZbf8eBaU0z/hWV8E/Wrbx9Eudes7AHJKbHwSobEIPouhAzxO+HCjmdKLMBe3eIUGYf7mKfpIxPLxBvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e7/2s97bIpwmS9P8e2kd2W3Q4+arBTBQxavS+jR9Iy4=;
 b=aBVFr8/MkLVK7LKvhvR3aMOVj2oEse93iJQQArUkJuOzq2dsd2Hl3xivIcgFHOKoGsGMgLNqwp9MnW8sCvh1pzS740fCFmg+9WYF4kzEYm3SNN+BXY5JZt/SncwbyaeoaPoc7DjbdZl/2f2fjNQmKT0WF3yZpFXv6SyVlJ1sZm2+LPE/2uapspirIzH5DJXP1G2w0JuWTq4dOOTCEOEIYSZlqwe/IPfnhTqvKeLRUSrpkMKOAoHYS/eXlPceEhjKtgnyCch3zeR2u5Jt0UdsZxbkwdPAqPiczX/ZtvmolCPmUfdpegb8AMWcRlszKpzcm7JW8/hXM2p3CEru5NJs1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e7/2s97bIpwmS9P8e2kd2W3Q4+arBTBQxavS+jR9Iy4=;
 b=BsLAobuBIK8D67xW1K3sDbBy1SdEf+zZnvYOattD/fq7ByPNHrwQc4VnYB3CEzZ1d96jWXjweRupKsZuRzBfger5veFMlMAH1jERADzptJP89INk2L3NUKty/8p6EFKr2+u7nQLZEgaKqhH89fOmbHIliPTsfJSamXCSdlvZBu8=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM0PR10MB3427.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:159::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Mon, 25 Oct
 2021 06:50:33 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::ac42:ccb3:50a5:6754]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::ac42:ccb3:50a5:6754%3]) with mapi id 15.20.4628.020; Mon, 25 Oct 2021
 06:50:33 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: dunfell: pkgconfig-native build fails in existing Yocto BSP
Thread-Topic: dunfell: pkgconfig-native build fails in existing Yocto BSP
Thread-Index: AdfJbBnE+NnvoeajQOedRbHeST7ytQ==
Date: Mon, 25 Oct 2021 06:50:33 +0000
Message-ID: 
 <AM0PR10MB31073A9D434C38BC2EF8A48B99839@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9dccd2ce-4074-4760-a5c6-08d99783be1b
x-ms-traffictypediagnostic: AM0PR10MB3427:
x-microsoft-antispam-prvs: 
 <AM0PR10MB3427C6CE49D6B1BB98FE8A4D99839@AM0PR10MB3427.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 K4mWQV84XoTgd0fkG4Y3OmVSA2fPLY3A6WowO8RzN4tdZt7kRgexivCNDwFqtSbRH6Idsu/915xg2eIChPQTOUirlido7p6yZJGEoVk+UhzrbYvnPElcW7KVRmpAoPQ9tolY931YALMpBqyxmTR33XXqPCIOjO/oOvI++sLCy7sJ6e+maLPmPLqsVPEiz4pyfMX/q+pK1qvpM9sI7oFzMFkvq4GRPhExx+sOGlJpKRB/uUBvNhvI8ZNgVAgXqyvXNNPwO+2oFt2WyZ+A5aPocVyvCsM5OCc1cP/oRwzT7OjQ7hstM9FBGmFVEXFoikRILatZo+MJJLtszoHw5d78LZd6zuuIJQGfA81EQK4BeN5ZqOuzOwv3kMHEXUieIiAmBm1saItWR4f/Z2M4NY4nbsDnzwRDxluGCoxfuO4/NYTw++7SIF7FWkE9GjGi27Tl/721hRsIWmGdfznSijT+pFkjhMWk4vZvoTYQNVpHiA7KBdKDilLnYdoOiKbQq7XGPiC7yLZBrXSBx6HtqR7yWby+kmLTJFEW79DfqWzWzVo2d+fIx1ob8//pe4DxGy51SN+G+/CArTdotQNiMN1We5nd3yXXChRa4zrkDfJ37tNQv5aTld9LSDoFMq9AZSXk1p7EzwjRYT4h1dUO5Ur34A/PTGe0e16b1QbKEKNOsX5cFeQAz0FgIsiixBHNEa5Cp9CT0ClGLuob3uc649K5rA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(366004)(346002)(39830400003)(396003)(376002)(66556008)(186003)(38070700005)(66476007)(66446008)(64756008)(76116006)(8936002)(2906002)(122000001)(83380400001)(316002)(6916009)(66946007)(33656002)(5660300002)(7696005)(508600001)(9686003)(55016002)(71200400001)(38100700002)(52536014)(86362001)(6506007)(8676002)(44832011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?igPort18aB1dlN2HSI6Ixm1zW7IpXxJ1BSQFgoFsX1lk/8ydRjsvNrCP12H8?=
 =?us-ascii?Q?zDQgfc1N5o+Wm97ceY24yN7jG0U9vevrxBJn+1Q6YkVA5DINQyVXLqHKJB8v?=
 =?us-ascii?Q?p28aXHLOK8/ODeTvSO8GJwFiLTpQtKaDIfQnhpurVs9CZmSJ6ialDkIPT840?=
 =?us-ascii?Q?3hizvIUzcbcTDMp9zeb/kvbOnTXqa1AGpa+dXfTyLYm4XH7H9z2pvK9MpwnF?=
 =?us-ascii?Q?oLhvc3i8ujizh5gzX70Ovxw39cjxjsUCS4g65kJd4MQz4m44UIYrYVbzRf3L?=
 =?us-ascii?Q?y2ELWeGnCcyJMwmSNUZV7fE+W2716J43RffkLx3cFvmZ4gcYctAsJp5MtteD?=
 =?us-ascii?Q?keWQIWgzI0e9SDnTXxLFLcUJeADmBA3x2J1IQtAr5mnXvpevcTcvH7FrnYeT?=
 =?us-ascii?Q?4hwEa05tqVIx74/ld864biMvV6cvTpLU3rDVGZWo+sGCE50pOJXARk4S6CtZ?=
 =?us-ascii?Q?yMCFQB+ZN5J0cdiuwjnx7xq/MfKuzm6Gz4KaPbNsBKAi8NenUAkii56p4XQ+?=
 =?us-ascii?Q?YxoIIpl9zKt4vS47mkHkpOZQ5bRklfrOa48chAYZvuWU3aj3IsP0RdtxXyQ3?=
 =?us-ascii?Q?S18wU+/cNKQZR1Xvr0KGtK4ODoZ7jOmwVeGI7DKubSibrJrYFILzgJ96zm9a?=
 =?us-ascii?Q?ob5vXxKsy9+L8l6McHh051pIJdcRWYNnlz8Wp8ucnkox1nabKXdnJ6Kaq3Xp?=
 =?us-ascii?Q?4xQXIouL3IgIsBLSlpkO5PVAU8RwwN97o1GO3udPY3bt6Dzf8yIAyIapKTc1?=
 =?us-ascii?Q?Y1lILBIh++YnGTZWY10YTGL65B+ADKWwOvqzSblvhlKLniMhl4vzOXm4m9W/?=
 =?us-ascii?Q?/WC0gwfWEElxSxJFBh1CreHr/3l31Sohd2xZTJ3v+OyiieXMQuFz/j4hOvtw?=
 =?us-ascii?Q?M6JZo66abSSm6YjvszFNOYVJ+tRaTl91rLmPa44oq9afW/xV1Jhrxk5iNAL4?=
 =?us-ascii?Q?/6JAvSh6I4+JLI2YmL5I9pl2E8dGbEggOVtFH/HJPjIiPRRzKAV/biLEWIPX?=
 =?us-ascii?Q?DdDt+5dDCoZc5+8P7xDqhd8BbPcjGwJsJA8ocSQ8YnoeoPt2T3MGBQqaUZa4?=
 =?us-ascii?Q?VJECjpFlXtxH1L23hSRIw+DDB6J6iR9oAbaTZBPsbdrE9DjXgQZJpZ5LrpK0?=
 =?us-ascii?Q?VenQPYefJZ1/LxoW2L36kVoT/6ohd8uTTzZM6fdmGYXkKQb16TnpeQNAg4TF?=
 =?us-ascii?Q?fIwgPYM1adtVJI1EDvkdPOxx9hhQA9/pq1YjFVDuMsbgk95kdxNdANVHyFWT?=
 =?us-ascii?Q?AjuUMA6INuJ3+tTmck+WPAuwCET8GxjPdKsVovh40sA5ld9VvPVXR06l1VgZ?=
 =?us-ascii?Q?7AG5l3m1Pj0cY48isVDWXAjLZFcG3joenO1ZNygWJdJGZbhnCb4OxThbjLJy?=
 =?us-ascii?Q?4AMp8vzUxiyW9roMaAB3Rj+/XooEZwe10JT4pL4HHYSEKgGxppYmMa2t/Srb?=
 =?us-ascii?Q?NNpIs4L0aIJFfVQ6w+x+4eaYx1NI22nYnvn5wWzIle18rDgoMPesgTtWah6n?=
 =?us-ascii?Q?3taKXZYSo0Jj75ybS9JO0SzUJiEIiF2GP7PrPvQCn/7Gou53uV2yhcT0ZPb3?=
 =?us-ascii?Q?Fa5jLfrBCDyg0dUOFYbRaRIE8hc/ewTrXxgoAt3br2OzduExxuBtJRQUr8ii?=
 =?us-ascii?Q?ScjVeR4Ofiuhu0whrYOjd/EfsRNn5Mohz8eyccFkXEqlZ/H9R/0jx0QQ2MIW?=
 =?us-ascii?Q?Y/xLAQmoCQiapwiiUb0CgfVn7PWWz7MNrT+NmWAH4eRmGg9HsoZcZ+nZ3qvg?=
 =?us-ascii?Q?iPNxtD6q7g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9dccd2ce-4074-4760-a5c6-08d99783be1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2021 06:50:33.3999
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 9jnKDyhBJhDEhY4sZkmasRc4NQLXflystLJmXDAj0w6xHjPJAAs1tpau7u5JXB6NjtU6efFCYlVClPizybXNvRFtF0MUihEVmnC3xuFzn7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3427
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 06:50:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55129

Hello,

our dunfell based yocto no longer builds in the pkgconfig-native section. I=
 tried it in an Ubuntu 18.04 and Debian 10 Docker container.
The build always aborts as follows:

checking thread related cflags... -D_REENTRANT
| checking for pthread_create/pthread_join... no
| checking for pthread_create/pthread_join in -lpthread... no
| checking for pthread_create/pthread_join in -lpthread32... no
| checking for pthread_create/pthread_join in -lpthreads... no
| checking for pthread_create/pthread_join in -lthread... no
| configure: error: I can't find the libraries for the thread implementatio=
n
|                  posix. Please choose another thread implementation or
|                   provide information on your thread implementation.
| configure: error: ../../git/glib/configure failed for glib
| NOTE: The following config.log files may provide further information.
| NOTE: /work/yocto-optimeas/build/tmp/work/x86_64-linux/pkgconfig-native/0=
.29.2+gitAUTOINC+edf8e6f0ea-r0/build/glib/config.log /work/yocto-optimeas/b=
uild/tmp/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0=
/build/config.log
| ERROR: configure failed
| WARNING: /work/yocto-optimeas/build/tmp/work/x86_64-linux/pkgconfig-nativ=
e/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.243679:1 exit 1 fro=
m 'exit 1'
| ERROR: Execution of '/work/yocto-optimeas/build/tmp/work/x86_64-linux/pkg=
config-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.243679'=
 failed with exit code 1
ERROR: Task (virtual:native:/work/yocto-optimeas/yocto/poky/meta/recipes-de=
vtools/pkgconfig/pkgconfig_git.bb:do_configure) failed with exit code '1'
ERROR: ninja-native-1.10.0-r0 do_compile: Execution of '/work/yocto-optimea=
s/build/tmp/work/x86_64-linux/ninja-native/1.10.0-r0/temp/run.do_compile.31=
9277' failed with exit code 1
ERROR: Logfile of failure stored in: /work/yocto-optimeas/build/tmp/work/x8=
6_64-linux/ninja-native/1.10.0-r0/temp/log.do_compile.319277
Log data follows:
| DEBUG: Executing shell function do_compile
| ninja: fatal: posix_spawn: Operation not permitted
| bootstrapping ninja...
| wrote build.ninja.
| bootstrap complete.  rebuilding...
| Traceback (most recent call last):
|   File "./configure.py", line 709, in <module>
|     subprocess.check_call(rebuild_args)
|   File "/usr/lib/python3.7/subprocess.py", line 347, in check_call
|     raise CalledProcessError(retcode, cmd)
| subprocess.CalledProcessError: Command '['./ninja']' returned non-zero ex=
it status 1.
| WARNING: /work/yocto-optimeas/build/tmp/work/x86_64-linux/ninja-native/1.=
10.0-r0/temp/run.do_compile.319277:1 exit 1 from 'python3 ./configure.py --=
bootstrap'
| ERROR: Execution of '/work/yocto-optimeas/build/tmp/work/x86_64-linux/nin=
ja-native/1.10.0-r0/temp/run.do_compile.319277' failed with exit code 1
ERROR: Task (virtual:native:/work/yocto-optimeas/yocto/poky/meta/recipes-de=
vtools/ninja/ninja_1.10.0.bb:do_compile) failed with exit code '1'


I also tried using the commits from dunfell-next in the poky repo as a test=
. But then the build doesn't even start and I get the following error:

ERROR: ParseError at /work/yocto-optimeas/yocto/meta-openembedded/meta-oe/r=
ecipes-extended/libimobiledevice/libplist_2.1.0.bb:9: Could not inherit fil=
e classes/python3targetconfig.bbclass                                      =
                                         | ETA:  --:--:--


Does anyone have any idea what is causing this? does anyone have the same b=
ehavior?

Many greetings,
Matthias


