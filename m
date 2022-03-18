Return-Path: <dwatkins@sierrawireless.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2407AC433F5
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 19:28:45 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.49])
 by mx.groups.io with SMTP id smtpd.web11.14186.1647631724151780656
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 12:28:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=h+ONPBJt;
 spf=pass (domain: sierrawireless.com, ip: 40.107.220.49,
 mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RGPEpcwgZewHJDjNFm+wtFQb3hIBmAbaBXiSSQD1YaR0mcDY8rxNWfyg94yoEBjUawJ4eQmE1ZI0v6Iz7KALTOCuUsgjjHdZO9zY1aWTSE1Wx7wzZDPL+13qKnWVnLpKxas0ogsp9X2EkMXbd9VLepgQr1RD7lltWEP10CWB1P/CdufnACGbyAXKRD7E6WuD+Jgyv9PIpedChvX5+sJGQ9F1CrAnheBDBH7FxbbvD5qyLtGm1yvQjnpyTcMm7sdkCxU6V4wAqkciwW5o+bzs0Nl63UlTjDHxUZSXGYHu/2JI9XQBMoVmqoX14zOzjxkRfa6ZX8MbiPoJe1u0gPnONw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8xyyfWY2hu8zBpSYEdjTYtcogo7+Ee5TtJRXdL1JFnA=;
 b=dD1NJbcVLSCiWfmt2u2H1+J8LjlMcXFx4ZXBu5RCPHRYHnB+z+o8u5YeDQhrohSGOFt201rkaY3ynsnaPHDjo8q9OhPwSb5M8lj/lVroUncwLcoHyrcuyJu9XK+8KGYf2dGR+win0DfVtYIolDOLcMvBJgpuDLHnZ0voKzdvsQMcqTx54TzQugqITTJR1XSkXvP7XhqImL5ZvScRwwu/UbhnlYfQdkpn5SLrL8Z17pKz6fWIXz7DeM8JW0oYH9TnlQSHJ/UFwPk3Fhj+QIrkkMXuVjr0a7Hpwf5qvkNxRds+rtG/5W+tiiqmqiSKPTHqeM7sQKIikdVm+pfZ3NjwJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8xyyfWY2hu8zBpSYEdjTYtcogo7+Ee5TtJRXdL1JFnA=;
 b=h+ONPBJtxFPShmf+C46DCGehGUyKiDNMPyXzDCqzF7JyscxIvFsI1Xyt0w7biVj6FCv3z3Lq9/cH1RD6RE8x69AsOSsah1DUvmit3IvDqsLeWeUxI64oV/jUuvYN1/eZZ+FbLVMnSxCYYsy+x6TMBFn9ZU9YGMKLKcu9DfvQwx0=
Received: from CO6PR02MB8740.namprd02.prod.outlook.com (2603:10b6:303:137::20)
 by BYAPR02MB5989.namprd02.prod.outlook.com (2603:10b6:a03:121::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Fri, 18 Mar
 2022 19:28:39 +0000
Received: from CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::d476:8d6f:d74b:d2ad]) by CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::d476:8d6f:d74b:d2ad%5]) with mapi id 15.20.5081.014; Fri, 18 Mar 2022
 19:28:39 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: meta-java: classpath recipe needs inherit from pkgconfig in kirkstone
Thread-Topic: meta-java: classpath recipe needs inherit from pkgconfig in
 kirkstone
Thread-Index: AQHYOvUFSqr2uydZu02rIu30HpNFog==
Date: Fri, 18 Mar 2022 19:28:39 +0000
Message-ID: 
 <CO6PR02MB8740E3965F1CA9124D3AE84AB2139@CO6PR02MB8740.namprd02.prod.outlook.com>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63935e0b-e0fe-44c3-561a-08da0915815b
x-ms-traffictypediagnostic: BYAPR02MB5989:EE_
x-microsoft-antispam-prvs: 
 <BYAPR02MB5989FE6D038F4B7C0F763403B2139@BYAPR02MB5989.namprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 sWoO6xqNqMm9S1qQ2a3CWlFNAsdBeCop9Vq4jFWKz2VnXx7J3BzsQ1AiTfm32CvPx9e4Mz5sg31yR+mIcQELSvDiRbQtQbnHVXFO+E4+LhnGgJ6baSgUbxMULU+Svw/9O2sgPTPrm1QQrICAtTNsradNiA5uCfkD4c3alMsH7xdG6qnmLTVjm9/nFguBUQXaHkX/0M2CvHFDG/yl+FKYpxo/wUUtt3vQlAeVa5tKYFkQO4ma4ogHZt/CVjBAS6U+qrGI0ZapquOr20TnjTOsncy1K0ep4JEbzBfpgTKFXVdUxxUazOzfZjeI6V6NtIe432zA56eL2KODj5Ewt2qHjlFUTL06XuZdAsqO6dDY2irO1ZarcSYQojBClNOasxR2WBaeqmknHY2d01IMbQD6rOs4mOhaaPqLmLTIIz0IDG/GoJBdP8p2L3u9F/ePhe4jBRCVWnOAlKDAVigEJ9Cha3UC6E+5g1BEZS6ZwMb5BN3A+hRVl1YUm0szHkzrAqSallShLXfceUnGofmhh3wyn4tU2ee05qsLp6RPEP41fH8BhM8fGCQrdJfqryT6vefnx/SpbEsol2yzSLh3gPgvFItrEN859QEQDBZKzODNYRZMdOsTg5+Dqc0Z859+bOenr1RfWE5VY7/8CWJrPWrj8160hSgV+410CDPdUf3wQSIzUofBtz7UneQ8Dnb/BGNiz4sE5zvjop2jrGzRRrt9vdZO4bL8ugE9KY167QLS0RCh4EofiaSzE+AqrP3Nj0sHTnvSdGQGX0CZkSZVMuxhQSRaN76trfL4GiwstGYbO2xGfc4AwQkFXtofmFK7RoC1
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR02MB8740.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(8676002)(5660300002)(38100700002)(40140700001)(166002)(38070700005)(66556008)(9686003)(66946007)(6916009)(76116006)(316002)(2906002)(19273905006)(64756008)(83380400001)(508600001)(66446008)(8936002)(7696005)(9326002)(186003)(71200400001)(52536014)(966005)(6506007)(55016003)(122000001)(33656002)(66476007)(563064011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?jw5VbXFFcj9W5Wre1C/Rw7TIpV5BQI1YFatOBy7khZB0qWPQeCTHCloX?=
 =?Windows-1252?Q?66zU1UTVl7WCBVlLslaTdYcV3CT/Y1UfCCMTPnKgNWyynpnFbR8HfpDq?=
 =?Windows-1252?Q?oRK+NdfWhenkdaFRJ0LONWKBnYecw28pywK48mqBEvoAbeqSV0XZPiKz?=
 =?Windows-1252?Q?4dLo/m9dlotAQ7PxKd58Ef4De9vcHq2BOjuoQdqwG7A14gY4vC0qzicu?=
 =?Windows-1252?Q?HHLhJvMBsUv/nIx64CbHuQuWqtvItTLjyx4V0a4YFX0InXWS1+Z1lI3o?=
 =?Windows-1252?Q?oLmzVxvcs/hu26Yrht5iQXR8+KEiaQ8wAO5DjRpb46fz5lqK65BSYzVS?=
 =?Windows-1252?Q?O/6wUahnBvnwtIpoCHnQ1kM3xhL5qxf56UasrIlp+0v1KlErpajz8m9z?=
 =?Windows-1252?Q?iSjzhwIzC3sewpG+cX705L1HmjXgbim7Ok5NKg0Gt5TpAutUN5nYknAL?=
 =?Windows-1252?Q?agJbOv8wKspiqKP8OX/1WWNAtVG3k7T7tM6+ySRQ6+2WAZaNvIRGpMVw?=
 =?Windows-1252?Q?jP0tbhEM1hdvatHKmgjFNmVMpU/zT7hp7O1MSYKLqVcYMUnKJeNQ75ZE?=
 =?Windows-1252?Q?EJOwcCesKQHk4jtAnlv66Z1ngXFLB1/3Ss9+a2R+xknqB+Y6rzn51sL/?=
 =?Windows-1252?Q?2H3qOJY+Ijl0TIAo/3nESs4mldPSC/r+Kic6w8+0n9VnFgtY/K/gNw8z?=
 =?Windows-1252?Q?ouyGe44eRMf0NqAlq9QAEw6wFF6BKfWonTooSlgApw4C92xQm3sWRaUW?=
 =?Windows-1252?Q?V2WpnY95kSiPE0kQ7Hqm1fOscZLNn7uQ8rIk+PEIeXNaKsamiOPF3jtU?=
 =?Windows-1252?Q?taKtM6vC2Kr7knqE7iDzLW22tPsknCYDI67QoVm+apTEMucvY4HPqiyY?=
 =?Windows-1252?Q?ZWvGl5+QyXedJtrPCc7BIsI9Arj2liV/lgvLpHABk65Kh2Tt+F8hnycm?=
 =?Windows-1252?Q?wgM4qPqhCigxakLe/mMiOt6HgaW6nQKhOolxVeLeuACYNFz3fNHuViw4?=
 =?Windows-1252?Q?iI1Wrv7KUNG1QHHhRO5hzW0IInHA0ikQGCANk/0Xs3G7rcV6W5kCCGPH?=
 =?Windows-1252?Q?xHJLeUgpg+HgsJtnMU5CWxwGYAiVn7xH52p4sBetqUbU3bwoVsxCQ8Q0?=
 =?Windows-1252?Q?OalCbtZq28XZJe84Udpk6OrO7Z9wq/fFV3F9sw/CzwZFEdbnPdRzfB7P?=
 =?Windows-1252?Q?Spg35KAbudVob3WsQweTwCTrbc6/Dpp08gGOTyjUlWpAv6caZaWqXuue?=
 =?Windows-1252?Q?QiHOEJtRi36OurhDg3IQfhB3VKbepo4CAdK3Fjr4VQ3mmS+0YBYLRTWP?=
 =?Windows-1252?Q?9FF6tzCVL2Fyu+fJoqCx6R9cKLoJqysATPocSHr3vvnu19OruLfM4uQ9?=
 =?Windows-1252?Q?6K4IUjTkOLgN1N1xj6SaxIyU53s1LLLqXGobS14S7vMInMO4mEx2AT0P?=
 =?Windows-1252?Q?cxsoyDhERwYMtxc/AbE7WJqve/g/kMG3+pWl8hoicZ37pmHMAZEuvPRI?=
 =?Windows-1252?Q?498JCSZrx7p1D1LftYYJ1oQ1RXDQ1Y7siQsyXRi2vJgkas8KI5K2RbWR?=
 =?Windows-1252?Q?Wpehngrb8pFihgsdyng1aH2297/SAHN4GxHQm7Eikv7iItxPRq6N3ptW?=
 =?Windows-1252?Q?jZN0yXKjVN3ZGxruFpcQkQMRC36cYCTCZWdUlqDsQ+nV+H4FqeZ2SVUF?=
 =?Windows-1252?Q?ABAYBpWTVko=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CO6PR02MB8740E3965F1CA9124D3AE84AB2139CO6PR02MB8740namp_"
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR02MB8740.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 63935e0b-e0fe-44c3-561a-08da0915815b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2022 19:28:39.4931
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 rQDfeRNWwdVbBsfluWTe+2HUdGch5QZ+rOOBua+HZOCQdvJX+hgRMRw1tijRXJWiUDRlkCAfF4L/ez8xugOFKZjJWOVDh3szRCOoPch7m+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5989
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 19:28:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56496

--_000_CO6PR02MB8740E3965F1CA9124D3AE84AB2139CO6PR02MB8740namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying out a build that uses kirkstone branch for meta-java and master=
 branch (as proxy for kirkstone) for everything else.



| configure: error: Library requirements (gtk+-2.0 >=3D 2.8 gthread-2.0 >=
=3D 2.2 gdk-pixbuf-2.0) not met; consider adjusting the PKG_CONFIG_PATH env=
ironment variable if your libraries are in a nonstandard prefix so pkg-conf=
ig can find them.

dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64bit build $ ls tmp/work=
/cortexa7hf-neon-poky-linux-gnueabi/gtk+3/
3.24.31-r0
dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64bit build $ ls tmp/work=
/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/
1_2.70.4-r0
dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64bit build $ ls tmp/work=
/cortexa7hf-neon-poky-linux-gnueabi/gdk-pixbuf/
2.42.6-r0
dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64bit build $ ls tmp/work=
/cortexa7hf-neon-poky-linux-gnueabi/gtk+
2.24.33-r0
dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64bit build $ find tmp/wo=
rk/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/ | grep gt=
hread
tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/usr/=
include/glib-2.0/gio/gthreadedsocketservice.h
tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/usr/=
include/glib-2.0/glib/gthreadpool.h
tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/usr/=
include/glib-2.0/glib/deprecated/gthread.h
tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/usr/=
include/glib-2.0/glib/gthread.h
tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/usr/=
lib/pkgconfig/gthread-2.0.pc
tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/usr/=
lib/libgthread-2.0.so
tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/usr/=
lib/libgthread-2.0.so.0
tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/usr/=
lib/libgthread-2.0.so.0.7000.4

All the prerequisites appear met.  Have some of the variables used to setup=
 sysroots, etc. changed in kirkstone but not been updated in meta-java yet?



ERROR: classpath-0.99-r3 do_configure: configure failed

ERROR: classpath-0.99-r3 do_configure: ExecutionError('/home/dwatkins/works=
pace/mgos/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/classp=
ath/0.99-r3/temp/run.do_configure.29702', 1, None, None)

ERROR: Logfile of failure stored in: /home/dwatkins/workspace/mgos/voyager1=
/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/l=
og.do_configure.29702

Log data follows:

| DEBUG: Executing python function extend_recipe_sysroot

| NOTE: Direct dependencies are ['/home/dwatkins/workspace/mgos/voyager1/up=
stream/yocto/meta-java/recipes-core/ecj/ecj-bootstrap-native.bb:do_populate=
_sysroot', 'virtual:native:/home/dwatkins/workspace/mgos/voyager1/upstream/=
yocto/poky/meta/recipes-extended/zip/zip_3.0.bb:do_populate_sysroot', '/hom=
e/dwatkins/workspace/mgos/voyager1/upstream/yocto/poky/meta/recipes-devtool=
s/file/file_5.41.bb:do_populate_sysroot', '/home/dwatkins/workspace/mgos/vo=
yager1/upstream/yocto/poky/meta/recipes-devtools/quilt/quilt-native_0.67.bb=
:do_populate_sysroot', 'virtual:native:/home/dwatkins/workspace/mgos/voyage=
r1/upstream/yocto/poky/meta/recipes-devtools/autoconf/autoconf_2.71.bb:do_p=
opulate_sysroot',



---snip!---



| checking for remove... yes

| checking for shmat... yes

| checking for IceConnectionNumber in -lICE... yes

| checking for XTestQueryExtension in -lXtst... yes

| checking for pkg-config... no

| *** The pkg-config script could not be found. Make sure it is

| *** in your path, or set the PKG_CONFIG environment variable

| *** to the full path to pkg-config.

| *** Or see http://www.freedesktop.org/software/pkgconfig to get pkg-confi=
g.

| configure: error: Library requirements (gtk+-2.0 >=3D 2.8 gthread-2.0 >=
=3D 2.2 gdk-pixbuf-2.0) not met; consider adjusting the PKG_CONFIG_PATH env=
ironment variable if your libraries are in a nonstandard prefix so pkg-conf=
ig can find them.

| NOTE: The following config.log files may provide further information.

| NOTE: /home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-ne=
on-poky-linux-gnueabi/classpath/0.99-r3/build/config.log

| ERROR: configure failed

| WARNING: /home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf=
-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/run.do_configure.29702:291 =
exit 1 from 'exit 1'

| WARNING: Backtrace (BB generated script):

|      #1: bbfatal_log, /home/dwatkins/workspace/mgos/voyager1/build/tmp/wo=
rk/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/run.do_configu=
re.29702, line 291

|      #2: oe_runconf, /home/dwatkins/workspace/mgos/voyager1/build/tmp/wor=
k/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/run.do_configur=
e.29702, line 267

|      #3: autotools_do_configure, /home/dwatkins/workspace/mgos/voyager1/b=
uild/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/run=
.do_configure.29702, line 237

|      #4: do_configure, /home/dwatkins/workspace/mgos/voyager1/build/tmp/w=
ork/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/run.do_config=
ure.29702, line 157

|      #5: main, /home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cort=
exa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/run.do_configure.2970=
2, line 295

ERROR: Task (/home/dwatkins/workspace/mgos/voyager1/upstream/yocto/meta-jav=
a/recipes-core/classpath/classpath_0.99.bb:do_configure) failed with exit c=
ode '1'

NOTE: Tasks Summary: Attempted 2426 tasks of which 2418 didn't need to be r=
erun and 1 failed.



Summary: 1 task failed:

  /home/dwatkins/workspace/mgos/voyager1/upstream/yocto/meta-java/recipes-c=
ore/classpath/classpath_0.99.bb:do_configure

Summary: There were 8 WARNING messages.

Summary: There were 2 ERROR messages, returning a non-zero exit code.


The following appears to fix it=85.

dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64bit meta-java $ git dif=
f
diff --git a/recipes-core/classpath/classpath.inc b/recipes-core/classpath/=
classpath.inc
index 42c5daf..5bf1cf6 100644
--- a/recipes-core/classpath/classpath.inc
+++ b/recipes-core/classpath/classpath.inc
@@ -7,7 +7,7 @@ LICENSE =3D "GPL-2.0 & SAX-PD"

 PBN =3D "classpath"

-inherit autotools java gettext
+inherit autotools java gettext pkgconfig

 DEPENDS =3D "virtual/javac-native fastjar-native zip-native gmp antlr-nati=
ve gtk+ gconf libxtst file"




All I am doing is adding =91pkgconfig=92 to its inheritance list because th=
e error message suggested =93consider adjusting the PKG_CONFIG_PATH environ=
ment variable=94.


Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[M4]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<http://www.sierrawireless.com/>

--_000_CO6PR02MB8740E3965F1CA9124D3AE84AB2139CO6PR02MB8740namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Menlo;
	panose-1:2 11 6 9 3 8 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.p1, li.p1, div.p1
	{mso-style-name:p1;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:#CA3323;}
p.p2, li.p2, div.p2
	{mso-style-name:p2;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}
p.p3, li.p3, div.p3
	{mso-style-name:p3;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}
span.s2
	{mso-style-name:s2;
	color:black;}
span.apple-tab-span
	{mso-style-name:apple-tab-span;}
span.s1
	{mso-style-name:s1;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying out a build that uses kirkstone branch f=
or meta-java and master branch (as proxy for kirkstone) for everything else=
.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"p2"><span class=3D"s1">| configure: error: Library requirements=
 (gtk+-2.0 &gt;=3D 2.8 gthread-2.0 &gt;=3D 2.2 gdk-pixbuf-2.0) not met; con=
sider adjusting the PKG_CONFIG_PATH environment variable if your libraries =
are in a nonstandard prefix so pkg-config can
 find them.</span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:</span><span st=
yle=3D"font-size:8.5pt;font-family:Menlo;color:#AAAB25">64bit</span><span s=
tyle=3D"font-size:8.5pt;font-family:Menlo;color:black">
</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:#38B9C7">buil=
d</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:black"> $ ls=
 tmp/work/cortexa7hf-neon-poky-linux-gnueabi/gtk+3/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">3.24.31-r0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:</span><span st=
yle=3D"font-size:8.5pt;font-family:Menlo;color:#AAAB25">64bit</span><span s=
tyle=3D"font-size:8.5pt;font-family:Menlo;color:black">
</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:#38B9C7">buil=
d</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:black"> $ ls=
 tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">1_2.70.4-r0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:</span><span st=
yle=3D"font-size:8.5pt;font-family:Menlo;color:#AAAB25">64bit</span><span s=
tyle=3D"font-size:8.5pt;font-family:Menlo;color:black">
</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:#38B9C7">buil=
d</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:black"> $ ls=
 tmp/work/cortexa7hf-neon-poky-linux-gnueabi/gdk-pixbuf/<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">2.42.6-r0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:</span><span st=
yle=3D"font-size:8.5pt;font-family:Menlo;color:#AAAB25">64bit</span><span s=
tyle=3D"font-size:8.5pt;font-family:Menlo;color:black">
</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:#38B9C7">buil=
d</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:black"> $ ls=
 tmp/work/cortexa7hf-neon-poky-linux-gnueabi/gtk+<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">2.24.33-r0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:</span><span st=
yle=3D"font-size:8.5pt;font-family:Menlo;color:#AAAB25">64bit</span><span s=
tyle=3D"font-size:8.5pt;font-family:Menlo;color:black">
</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:#38B9C7">buil=
d</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:black"> $ fi=
nd tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/image/ =
| grep gthread<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/=
image/usr/include/glib-2.0/gio/gthreadedsocketservice.h<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/=
image/usr/include/glib-2.0/glib/gthreadpool.h<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/=
image/usr/include/glib-2.0/glib/deprecated/gthread.h<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/=
image/usr/include/glib-2.0/glib/gthread.h<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/=
image/usr/lib/pkgconfig/gthread-2.0.pc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/=
image/usr/lib/libgthread-2.0.so<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/=
image/usr/lib/libgthread-2.0.so.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">tmp/work/cortexa7hf-neon-poky-linux-gnueabi/glib-2.0/1_2.70.4-r0/=
image/usr/lib/libgthread-2.0.so.0.7000.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">All the prerequisites appear met.&nbsp; Have some of=
 the variables used to setup sysroots, etc. changed in kirkstone but not be=
en updated in meta-java yet?</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"p1"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s2">: =
</span><span class=3D"s1">classpath-0.99-r3 do_configure: configure failed<=
/span></p>
<p class=3D"p1"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s2">: =
</span><span class=3D"s1">classpath-0.99-r3 do_configure: ExecutionError('/=
home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-neon-poky-l=
inux-gnueabi/classpath/0.99-r3/temp/run.do_configure.29702',
 1, None, None)</span></p>
<p class=3D"p1"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s2">: =
</span><span class=3D"s1">Logfile of failure stored in: /home/dwatkins/work=
space/mgos/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/class=
path/0.99-r3/temp/log.do_configure.29702</span></p>
<p class=3D"p2"><span class=3D"s1">Log data follows:</span></p>
<p class=3D"p2"><span class=3D"s1">| DEBUG: Executing python function exten=
d_recipe_sysroot</span></p>
<p class=3D"p2"><span class=3D"s1">| NOTE: Direct dependencies are ['/home/=
dwatkins/workspace/mgos/voyager1/upstream/yocto/meta-java/recipes-core/ecj/=
ecj-bootstrap-native.bb:do_populate_sysroot', 'virtual:native:/home/dwatkin=
s/workspace/mgos/voyager1/upstream/yocto/poky/meta/recipes-extended/zip/zip=
_3.0.bb:do_populate_sysroot',
 '/home/dwatkins/workspace/mgos/voyager1/upstream/yocto/poky/meta/recipes-d=
evtools/file/file_5.41.bb:do_populate_sysroot', '/home/dwatkins/workspace/m=
gos/voyager1/upstream/yocto/poky/meta/recipes-devtools/quilt/quilt-native_0=
.67.bb:do_populate_sysroot', 'virtual:native:/home/dwatkins/workspace/mgos/=
voyager1/upstream/yocto/poky/meta/recipes-devtools/autoconf/autoconf_2.71.b=
b:do_populate_sysroot',
<o:p></o:p></span></p>
<p class=3D"p2"><span class=3D"s1"><o:p>&nbsp;</o:p></span></p>
<p class=3D"p2"><span class=3D"s1">---snip!---<o:p></o:p></span></p>
<p class=3D"p2"><span class=3D"s1"><o:p>&nbsp;</o:p></span></p>
<p class=3D"p2"><span class=3D"s1">| checking for remove... yes</span></p>
<p class=3D"p2"><span class=3D"s1">| checking for shmat... yes</span></p>
<p class=3D"p2"><span class=3D"s1">| checking for IceConnectionNumber in -l=
ICE... yes</span></p>
<p class=3D"p2"><span class=3D"s1">| checking for XTestQueryExtension in -l=
Xtst... yes</span></p>
<p class=3D"p2"><span class=3D"s1">| checking for pkg-config... no</span></=
p>
<p class=3D"p2"><span class=3D"s1">| *** The pkg-config script could not be=
 found. Make sure it is</span></p>
<p class=3D"p2"><span class=3D"s1">| *** in your path, or set the PKG_CONFI=
G environment variable</span></p>
<p class=3D"p2"><span class=3D"s1">| *** to the full path to pkg-config.</s=
pan></p>
<p class=3D"p2"><span class=3D"s1">| *** Or see http://www.freedesktop.org/=
software/pkgconfig to get pkg-config.</span></p>
<p class=3D"p2"><span class=3D"s1">| configure: error: Library requirements=
 (gtk+-2.0 &gt;=3D 2.8 gthread-2.0 &gt;=3D 2.2 gdk-pixbuf-2.0) not met; con=
sider adjusting the PKG_CONFIG_PATH environment variable if your libraries =
are in a nonstandard prefix so pkg-config can
 find them.</span></p>
<p class=3D"p2"><span class=3D"s1">| NOTE: The following config.log files m=
ay provide further information.</span></p>
<p class=3D"p2"><span class=3D"s1">| NOTE: /home/dwatkins/workspace/mgos/vo=
yager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/=
build/config.log</span></p>
<p class=3D"p2"><span class=3D"s1">| ERROR: configure failed</span></p>
<p class=3D"p2"><span class=3D"s1">| WARNING: /home/dwatkins/workspace/mgos=
/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-=
r3/temp/run.do_configure.29702:291 exit 1 from 'exit 1'</span></p>
<p class=3D"p2"><span class=3D"s1">| WARNING: Backtrace (BB generated scrip=
t):</span></p>
<p class=3D"p2"><span class=3D"s1">| </span><span class=3D"apple-tab-span">=
&nbsp;&nbsp;&nbsp;&nbsp; </span>
<span class=3D"s1">#1: bbfatal_log, /home/dwatkins/workspace/mgos/voyager1/=
build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/ru=
n.do_configure.29702, line 291</span></p>
<p class=3D"p2"><span class=3D"s1">| </span><span class=3D"apple-tab-span">=
&nbsp;&nbsp;&nbsp;&nbsp; </span>
<span class=3D"s1">#2: oe_runconf, /home/dwatkins/workspace/mgos/voyager1/b=
uild/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/run=
.do_configure.29702, line 267</span></p>
<p class=3D"p2"><span class=3D"s1">| </span><span class=3D"apple-tab-span">=
&nbsp;&nbsp;&nbsp;&nbsp; </span>
<span class=3D"s1">#3: autotools_do_configure, /home/dwatkins/workspace/mgo=
s/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99=
-r3/temp/run.do_configure.29702, line 237</span></p>
<p class=3D"p2"><span class=3D"s1">| </span><span class=3D"apple-tab-span">=
&nbsp;&nbsp;&nbsp;&nbsp; </span>
<span class=3D"s1">#4: do_configure, /home/dwatkins/workspace/mgos/voyager1=
/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/r=
un.do_configure.29702, line 157</span></p>
<p class=3D"p2"><span class=3D"s1">| </span><span class=3D"apple-tab-span">=
&nbsp;&nbsp;&nbsp;&nbsp; </span>
<span class=3D"s1">#5: main, /home/dwatkins/workspace/mgos/voyager1/build/t=
mp/work/cortexa7hf-neon-poky-linux-gnueabi/classpath/0.99-r3/temp/run.do_co=
nfigure.29702, line 295</span></p>
<p class=3D"p1"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s2">: =
</span><span class=3D"s1">Task (/home/dwatkins/workspace/mgos/voyager1/upst=
ream/yocto/meta-java/recipes-core/classpath/classpath_0.99.bb:do_configure)=
 failed with exit code '1'</span></p>
<p class=3D"p2"><span class=3D"s1"><b>NOTE</b>: Tasks Summary: Attempted 24=
26 tasks of which 2418 didn't need to be rerun and 1 failed.</span></p>
<p class=3D"p3"><o:p>&nbsp;</o:p></p>
<p class=3D"p2"><span class=3D"s1">Summary: 1 task failed:</span></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp; </span><span c=
lass=3D"s1">/home/dwatkins/workspace/mgos/voyager1/upstream/yocto/meta-java=
/recipes-core/classpath/classpath_0.99.bb:do_configure</span></p>
<p class=3D"p2"><span class=3D"s1">Summary: There were 8 WARNING messages.<=
/span></p>
<p class=3D"p2"><span class=3D"s1">Summary: There were 2 ERROR messages, re=
turning a non-zero exit code.</span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The following appears to fix it=85.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:</span><span st=
yle=3D"font-size:8.5pt;font-family:Menlo;color:#AAAB25">64bit</span><span s=
tyle=3D"font-size:8.5pt;font-family:Menlo;color:black">
</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:#38B9C7">meta=
-java</span><span style=3D"font-size:8.5pt;font-family:Menlo;color:black"> =
$ git diff<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.5pt;font-family:Menlo;=
color:black">diff --git a/recipes-core/classpath/classpath.inc b/recipes-co=
re/classpath/classpath.inc</span></b><span style=3D"font-size:8.5pt;font-fa=
mily:Menlo;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.5pt;font-family:Menlo;=
color:black">index 42c5daf..5bf1cf6 100644</span></b><span style=3D"font-si=
ze:8.5pt;font-family:Menlo;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.5pt;font-family:Menlo;=
color:black">--- a/recipes-core/classpath/classpath.inc</span></b><span sty=
le=3D"font-size:8.5pt;font-family:Menlo;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.5pt;font-family:Menlo;=
color:black">+++ b/recipes-core/classpath/classpath.inc</span></b><span sty=
le=3D"font-size:8.5pt;font-family:Menlo;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:#38B9C7">@@ -7,7 +7,7 @@</span><span style=3D"font-size:8.5pt;font-famil=
y:Menlo;color:black"> LICENSE =3D &quot;GPL-2.0 &amp; SAX-PD&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp;PBN =3D &quot;classpath&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:#CA3323">-inherit autotools java gettext<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:#39C026">+inherit autotools java gettext pkgconfig<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp;DEPENDS =3D &quot;virtual/javac-native fastjar-native zip-n=
ative gmp antlr-native gtk+ gconf libxtst file&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">All I am doing is adding =91pkgconfig=92 to its inhe=
ritance list because the error message suggested =93consider adjusting the =
PKG_CONFIG_PATH environment variable=94.</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Regards,</span></b><span lan=
g=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy Watkins ::&nbsp;&nbsp;=
Senior Staff Engineer, Firmware</span></b><span lang=3D"EN-US"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:red">SIERRA W=
IRELESS</span></b><span lang=3D"EN-US" style=3D"color:red"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Direct&nbsp; +1 604 233 7989&nb=
sp; &nbsp;::&nbsp;&nbsp;Fax&nbsp;&nbsp;+1 604 231 1109&nbsp; ::&nbsp;&nbsp;=
Main&nbsp;&nbsp;+1 604 231 1100<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">13811 Wireless Way&nbsp; ::&nbs=
p;Richmond, BC Canada V6V 3A4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[M4]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"mailto:dwatkins@sierrawireless.com"><span=
 lang=3D"EN-US">dwatkins@sierrawireless.com</span></a><span lang=3D"EN-US">=
&nbsp;::&nbsp;</span><a href=3D"http://www.sierrawireless.com/"><span lang=
=3D"EN-US">www.sierrawireless.com</span></a>
</p>
</div>
</body>
</html>

--_000_CO6PR02MB8740E3965F1CA9124D3AE84AB2139CO6PR02MB8740namp_--

