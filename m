Return-Path: <joseantonio.cardenas@niko.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55564C433EF
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 14:29:30 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.45])
 by mx.groups.io with SMTP id smtpd.web10.9231.1642084166794594182
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 06:29:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=nRu5R4L+;
 spf=pass (domain: niko.eu, ip: 40.107.5.45,
 mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZwyRr3Vg0n+nhSK8q65QPljj+djNTQuQ1e/OmT8X8Lfy6S/pzm4o5w+3ru9TUeRjhJwnkT4e7RPlDQ41BJ5uQzaH071qSuMQvEErLALoKRsB4Ba9SAmgpGWKdFVsPDie3PJ+ati8u76lRBiWdW253O2nkM6P0Q1W6kVXXwmiz1d5N8AUwDEi9ejFpsrFhY1nuIuyMsy8OJTwmzIyNR1vRTzNFJDpztr6RqdoNyZ2SjqwtZKsbLgIHKuKwdIAUSI1Oc8gMtD9rhjzTa8xcWVDlxSsHPfbI7v1TUn5fjJ9u5/oA1jGhwCBjIy3RrGNdv4a5Uxg718n5KAFxDPNvGy4Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7n7azV4i9A/7B1vuao8c7s2nlPMhqFdN7Lcgmq0mEBU=;
 b=UNdRx4Er3hQGb7zd911/BOuqD+p5hyd5HZ6K3/qxMiO7ZUR5t8Qp+QZWrKIO8iPKy5ZLoxvG+hKl6qKk1VcjQwxYRQS7W1jJa9TmUMCmTYlD/pTngSfadXt5g8RTa//Hyu28OGEpI7TWKSrFUDBJEGTFp7v+vEfaafMEmL3hi0HfQkGGmGv7rjUqlluUWciwBps6JyX96f9QqYdJilrh//ErTA0KLfvZyu4xFyrprNrikyEeDaN70cT2rgNGG7q83PQdepOO+tv4EMWJ6t2da4fAK0rhJzXN9mm30gYsEg3ePNn+J6BW4r42BXdMnjgGVpfjJGktqz3QzlL24yg3Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7n7azV4i9A/7B1vuao8c7s2nlPMhqFdN7Lcgmq0mEBU=;
 b=nRu5R4L+MxCzj56ltVqVNI/+/8bFVFRxFWYNgOjgxx7sbs+gML9NTMyM1OukNnhEuKz4yeiaowQPe18ncdorWZtvfxq6t4C0dX0p2P713C3BZMj54VAhS+J1QxMQUrkO7xaw1T0csO1fuA5ZdOwRGJ7RpPuAc7a/3ekKEUHxcs8=
Received: from DBAPR08MB5653.eurprd08.prod.outlook.com (2603:10a6:10:1a9::5)
 by HE1PR0802MB2427.eurprd08.prod.outlook.com (2603:10a6:3:d4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Thu, 13 Jan
 2022 14:29:22 +0000
Received: from DBAPR08MB5653.eurprd08.prod.outlook.com
 ([fe80::354c:c80a:9381:dddd]) by DBAPR08MB5653.eurprd08.prod.outlook.com
 ([fe80::354c:c80a:9381:dddd%4]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 14:29:21 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <JoseAntonio.Cardenas@niko.eu>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: perf compilation fails
Thread-Topic: perf compilation fails
Thread-Index: AdgIiYHeiKwPwazzQMmfoi64CvFyxQ==
Date: Thu, 13 Jan 2022 14:29:21 +0000
Message-ID: 
 <DBAPR08MB56530E09A8937590E092F4F08B539@DBAPR08MB5653.eurprd08.prod.outlook.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=niko.eu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77337eb0-aa12-419b-2530-08d9d6a1174f
x-ms-traffictypediagnostic: HE1PR0802MB2427:EE_
x-microsoft-antispam-prvs: 
 <HE1PR0802MB24275A344CA404CDB0F21B1F8B539@HE1PR0802MB2427.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RPEfYDGiJOoNtA7u7Hh3gQ1t5AvPX8UgczR6h15/rZuFrDjOPKVvf3Ll2cjJ5zDbpi7NqdQQB1zlPVsE/m7gz7LvKB2froNTLFoCUnkjeLv0P6U3qLrJ9z4yH4Y2/WEfCkjocvaZG78Cwie5Q9HKsXKl0tq++V57wHVqYUtBWQzrRRiZk5XFzi8deaoKyps4NyrGzL3zkCS41s90IlbtAJSYMesPjqFqC/lb4PCQbbnwAUZ9j7CzygdSUJfKoCUHNRw+aYb7GAGQ7KJtoFSjZmql7dF4kIIqPY7Ej/SqFYgmXy1M8c2RcvINZkLP7oB4cOGWdDU9em6XTRxe/95Y6wUf5tvc3eNK5e1dagWRkkXovVCxcd+HxmbQ7UG4I0QcvkuBh4wTuVGmePslBXwkSMdKCxpe6zYAVALiX7HFLgVgvII4bSxXcv+VOC3h+WVCs4Hf484nzcRWKPFJBbtNo3tDI0RQOYjTw6spNfwyxssPkfDT8Upq5p6/I+AR74+kWsDni5QmcWQ/Hr6LcR+nDRloh7x/HMh+9B3Y84tsTXPulRNvJXORdQQrbUkK26bMPozKz4ONP7m8wq3LJFMTzVf9CsqgBIFawNteWFGa4xy0olAeVzo/BaHNK7l9Z4maptZSjUPCFKuUfA1huX5zPEQT3m5TYlb3JuaCfz6al2ugbOQ5HQzmRCpYNTHiHP5Y84Bc4gMzmKVIejmHnG3AInpa0I4HrEtsUROoCfv9YRQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBAPR08MB5653.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(33656002)(122000001)(38070700005)(6916009)(38100700002)(55016003)(9686003)(8936002)(2906002)(7116003)(8676002)(3480700007)(508600001)(66946007)(186003)(7696005)(26005)(71200400001)(83380400001)(5660300002)(316002)(52536014)(66556008)(86362001)(76116006)(6506007)(64756008)(66476007)(19627235002)(30864003)(66446008)(133083001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Y5W+NwdzGtbY5RdL1HEIzFDS0xH5KkhorI2G43vSORVtc0WigGWT4T+3A0Qz?=
 =?us-ascii?Q?qvp4hG8sfovioeXKISigZE6voUUSXcwBmIAzpO4ZoX0lRT9bbUEG5nP/Tw82?=
 =?us-ascii?Q?DwM3iErRfxeAJndYUk9vzu2gRtfzCzQ/P8Jp6joXN7LFwCju2OCHG8Hfaw/c?=
 =?us-ascii?Q?fMeU8qx8WtK1s5Vn+SWzwwDMNkUaNNqjwr8AIVEcu2GDbzIGyaXk5EQQfY4j?=
 =?us-ascii?Q?yujoBOaRKZUzThKCvG9mo1FR0V3/B/c2D5fEo71Orb6ka0MSIVUGDttDGBSz?=
 =?us-ascii?Q?e5jGutQXLuxmyRkbjlEr3Rr/mhdU6L/Y0ZLED3v1bETwVgYwUT94Jr2sf5UE?=
 =?us-ascii?Q?yzNchsZQ4CSvazbtz51mlrQTncU1CUJWWHnDfVSwd3lc0pqFxsrm/DG/AeOQ?=
 =?us-ascii?Q?dR9RIwzxSbWL+ucuU8V5rQV+Q6TuhetPOD0rzfnn9pPba2t9CSrwc5ZCu342?=
 =?us-ascii?Q?ndgesA76iFhrlipGwKFSlEYf1A4b8EWRN7z+TA94oAnQ8N0Fw9S6wZKwGhKx?=
 =?us-ascii?Q?HEGK4eXzr4KWta/wn5mb/aMwuvwxfwETEUShaBGYzG+zRtOB3bjq8mWNubr5?=
 =?us-ascii?Q?1JeQ2Cd+Xh06nbtwAvWoYnNI/eejSQmQpKEugMmXcpycAOv8klAhc1YhYZWK?=
 =?us-ascii?Q?np1EA+5RxZkuLcxWcnL+kkZK1YUDZnaJ+6r+pmoV5jYCDohbw3hzyt/JStWQ?=
 =?us-ascii?Q?82wXDxSSS4tLbBYRORxkMnITwPk0ztPmn4uzQAcZNEDPz/xKHoHuiIyhn09B?=
 =?us-ascii?Q?wafHYTMcjB8pGjbrpWfVfgaEI3KA/lg5CeKi2C20og9QqYIH0VqoNn6pbDIn?=
 =?us-ascii?Q?RPIVokItfgQ8CqPeXjG4568sGvxHukTi/92WIjfsePUkTjEh38fZall7fyJY?=
 =?us-ascii?Q?GLVi0YLNkqpV1ik9ddAYmcIfnxk412y6Qf3Muz0Pzg2/aTts0G/di+VMZhvA?=
 =?us-ascii?Q?eTyW1xlkWeBnoH7r1wSn+400oHQF8mLo/1716Zd1hAYvwYJR29JTugRj2lY7?=
 =?us-ascii?Q?HtLdfUF2lA4MAaz0T9vb8FgAEKBQPRmBpXLfbXDtmxp8YE6VkMW/YEStmo1J?=
 =?us-ascii?Q?TVexxSW2OFp0DZFYfENWB/U9N+958q/0dJZwbV9Ck3qaQQS9xK1dx6F7mEjd?=
 =?us-ascii?Q?N6GEi7ZuGdyyN7ggB9iw9VskMpmNz42EKc6Ua3t3iFHQTEG+gAeEE3jnisT1?=
 =?us-ascii?Q?CQcKZN2o5YotOijKNQCLQp02tzaL/M8qrwKYzZSte28Kgo0rg3dz1W0tgvxH?=
 =?us-ascii?Q?I0yPwwIWyZyN2mDPd+ByvL2Xdv7JN6hx6lXqawW9xveQ0RvTBnU9/zbGN+dh?=
 =?us-ascii?Q?+g54qx1EeaR8DDtS2CG+Hx9EVf1dKUMhUdaLhXO5nwE7FbVlQn2cZ+LchsnH?=
 =?us-ascii?Q?9D6/4SlPJV4jY5P5LNhhYzpVdoyObfCKyJtFo+QiP6tOWrPwHRjKG1RQLwlY?=
 =?us-ascii?Q?t4HwptkvzSPvFXZQpRPD/nDvwevN4VkMQ9pIhA47JXRJLMRPmf/sLOGHQ2A5?=
 =?us-ascii?Q?GhHKFe4lArUXtGVGDZC/HyhnHbA+0T70XlIBFNxr5/J23vvQLcarERlqY/QU?=
 =?us-ascii?Q?EcO8R7ydfAKH+eRn3lH2Vd57oEs9zDeCKf6cL8D4zONYGfCL52EIYCkQayEs?=
 =?us-ascii?Q?+MhSlzLHzCV7Yd5LWCQOKqYi8XY4PWrBjKChrPWTY3kZb/rTFHPkYMUbURjT?=
 =?us-ascii?Q?5rF2Hw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DBAPR08MB56530E09A8937590E092F4F08B539DBAPR08MB5653eurp_"
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBAPR08MB5653.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 77337eb0-aa12-419b-2530-08d9d6a1174f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2022 14:29:21.7215
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 xGDO2KfoAcIaBG8lU6IMjNa0kPuR9OVkcd3gg/uYpwzi8aOSTwPGVf17XvMf+aVooH04aP5fBc8944VkZsvkvHvlNFQfOUbJSuFUdrCZ9UA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2427
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 14:29:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55835

--_000_DBAPR08MB56530E09A8937590E092F4F08B539DBAPR08MB5653eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys

I'm no table to build correctly perf package.

It looks like some sources have no been compiled because I'm getting an "un=
defined reference to" error.

This problem has appeared since we have upgraded the version of yocto zeus.

I'm getting this error

   arm-poky-linux-gnueabi-ld --sysroot=3D/home/bob/develop/yocto/build/tmp/=
work/emperor-poky-linux-gnueabi/perf/1.0-r9/recipe-sysroot    -r -o /home/b=
ob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf=
-1.0/perf-in.o  /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-g=
nueabi/perf/1.0-r9/perf-1.0/builtin-bench.o /home/bob/develop/yocto/build/t=
mp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-annotate.o =
/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-=
r9/perf-1.0/builtin-config.o /home/bob/develop/yocto/build/tmp/work/emperor=
-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-diff.o /home/bob/develop/y=
octo/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin=
-evlist.o /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi=
/perf/1.0-r9/perf-1.0/builtin-ftrace.o /home/bob/develop/yocto/build/tmp/wo=
rk/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-help.o /home/bob=
/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1=
.0/builtin-sched.o /home/bob/develop/yocto/build/tmp/work/emperor-poky-linu=
x-gnueabi/perf/1.0-r9/perf-1.0/builtin-buildid-list.o /home/bob/develop/yoc=
to/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-b=
uildid-cache.o /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gn=
ueabi/perf/1.0-r9/perf-1.0/builtin-kallsyms.o /home/bob/develop/yocto/build=
/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-list.o /h=
ome/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9=
/perf-1.0/builtin-record.o /home/bob/develop/yocto/build/tmp/work/emperor-p=
oky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-report.o /home/bob/develop/y=
octo/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin=
-stat.o /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/p=
erf/1.0-r9/perf-1.0/builtin-timechart.o /home/bob/develop/yocto/build/tmp/w=
ork/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-top.o /home/bob=
/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1=
.0/builtin-script.o /home/bob/develop/yocto/build/tmp/work/emperor-poky-lin=
ux-gnueabi/perf/1.0-r9/perf-1.0/builtin-kmem.o /home/bob/develop/yocto/buil=
d/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-lock.o /=
home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r=
9/perf-1.0/builtin-kvm.o /home/bob/develop/yocto/build/tmp/work/emperor-pok=
y-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-inject.o /home/bob/develop/yoc=
to/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-m=
em.o /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf=
/1.0-r9/perf-1.0/builtin-data.o /home/bob/develop/yocto/build/tmp/work/empe=
ror-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-version.o /home/bob/dev=
elop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/b=
uiltin-c2c.o /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnue=
abi/perf/1.0-r9/perf-1.0/builtin-probe.o /home/bob/develop/yocto/build/tmp/=
work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/bench/perf-in.o /home/=
bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/per=
f-1.0/tests/perf-in.o /home/bob/develop/yocto/build/tmp/work/emperor-poky-l=
inux-gnueabi/perf/1.0-r9/perf-1.0/perf.o /home/bob/develop/yocto/build/tmp/=
work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/util/perf-in.o /home/b=
ob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf=
-1.0/arch/perf-in.o /home/bob/develop/yocto/build/tmp/work/emperor-poky-lin=
ux-gnueabi/perf/1.0-r9/perf-1.0/ui/perf-in.o /home/bob/develop/yocto/build/=
tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/scripts/perf-in.o
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mfpu=3Dneon -mfloat-abi=3Dhar=
d -fstack-protector-strong  -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-securit=
y -Werror=3Dformat-security -Os -pipe -g -feliminate-unused-debug-types -fm=
acro-prefix-map=3D/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux=
-gnueabi/perf/1.0-r9=3D/usr/src/debug/perf/1.0-r9                      -fde=
bug-prefix-map=3D/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-=
gnueabi/perf/1.0-r9=3D/usr/src/debug/perf/1.0-r9                      -fdeb=
ug-prefix-map=3D/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-g=
nueabi/perf/1.0-r9/recipe-sysroot=3D                      -fdebug-prefix-ma=
p=3D/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/=
1.0-r9/recipe-sysroot-native=3D  --sysroot=3D/home/bob/develop/yocto/build/=
tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/recipe-sysroot -ldw -Wbad-f=
unction-cast -Wdeclaration-after-statement -Wformat-security -Wformat-y2k -=
Winit-self -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wn=
o-system-headers -Wold-style-definition -Wpacked -Wredundant-decls -Wstrict=
-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwrite-strings -Wformat=
 -Wstrict-aliasing=3D3 -Wshadow -DHAVE_PERF_REGS_SUPPORT -O6 -fno-omit-fram=
e-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=3Dgnu99 -fstack-protect=
or-all -D_FORTIFY_SOURCE=3D2 -I/home/bob/develop/yocto/build/tmp/work/emper=
or-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/perf/util/include -I/home/=
bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/per=
f-1.0/tools/perf/arch/arm/include -I/home/bob/develop/yocto/build/tmp/work/=
emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/include/uapi -I/home/=
bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/per=
f-1.0/tools/include/ -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-=
linux-gnueabi/perf/1.0-r9/perf-1.0/tools/arch/arm/include/uapi -I/home/bob/=
develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.=
0/tools/arch/arm/include/ -I/home/bob/develop/yocto/build/tmp/work/emperor-=
poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/arch/arm/ -I/home/bob/develop=
/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0//util=
 -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1=
.0-r9/perf-1.0/ -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux=
-gnueabi/perf/1.0-r9/perf-1.0/tools/perf/util -I/home/bob/develop/yocto/bui=
ld/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/perf -I/h=
ome/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9=
/perf-1.0/tools/lib/ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=3D64 -D_GNU_=
SOURCE -DHAVE_SYNC_COMPARE_AND_SWAP_SUPPORT -DHAVE_PTHREAD_ATTR_SETAFFINITY=
_NP -DHAVE_PTHREAD_BARRIER -DHAVE_EVENTFD -DHAVE_GET_CURRENT_DIR_NAME -DHAV=
E_GETTID -DHAVE_DWARF_GETLOCATIONS_SUPPORT -DHAVE_GLIBC_SUPPORT -DHAVE_AIO_=
SUPPORT -DHAVE_SCHED_GETCPU_SUPPORT -DHAVE_SETNS_SUPPORT -DHAVE_LIBELF_SUPP=
ORT -DHAVE_LIBELF_MMAP_SUPPORT -DHAVE_ELF_GETPHDRNUM_SUPPORT -DHAVE_GELF_GE=
TNOTE_SUPPORT -DHAVE_ELF_GETSHDRSTRNDX_SUPPORT -DHAVE_LIBBPF_SUPPORT -DHAVE=
_JITDUMP -DHAVE_DWARF_UNWIND_SUPPORT -DHAVE_LIBUNWIND_SUPPORT -I/home/bob/d=
evelop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/recipe-s=
ysroot/usr/include -DHAVE_LIBCRYPTO_SUPPORT -DHAVE_SLANG_SUPPORT -DNO_LIBPE=
RL -DHAVE_TIMERFD_SUPPORT -DNO_LIBPYTHON -DHAVE_CPLUS_DEMANGLE_SUPPORT -DHA=
VE_LIBBFD_SUPPORT -DHAVE_ZLIB_SUPPORT -DHAVE_LZMA_SUPPORT -DHAVE_BACKTRACE_=
SUPPORT -DDISASM_FOUR_ARGS_SIGNATURE -DHAVE_AUXTRACE_SUPPORT -I/home/bob/de=
velop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/=
 -ldl -lutil -Wl,-z,noexecstack -lunwind -lunwind-arm -L/home/bob/develop/y=
octo/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/recipe-sysroot/u=
sr/lib -Xlinker --dynamic-list=3D/home/bob/develop/yocto/build/tmp/work/emp=
eror-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/libtraceevent-dynamic-list \
               /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gn=
ueabi/perf/1.0-r9/perf-1.0/perf-in.o /home/bob/develop/yocto/build/tmp/work=
/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/pmu-events/pmu-events-in.o=
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/libperf-in.o -Wl,--whole-archive /home/bob/develop/yocto/build=
/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/libapi.a /home/bo=
b/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-=
1.0/libtraceevent.a /home/bob/develop/yocto/build/tmp/work/emperor-poky-lin=
ux-gnueabi/perf/1.0-r9/perf-1.0/libsubcmd.a /home/bob/develop/yocto/build/t=
mp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/libbpf.a  -Wl,--no-=
whole-archive -Wl,--start-group -lpthread -lrt -lm -ldl -lelf -lunwind -lun=
wind-arm -lcrypto -lslang -lbfd -lopcodes -liberty -lz -llzma -Wl,--end-gro=
up -o /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/per=
f/1.0-r9/perf-1.0/perf
/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-=
r9/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: /home/bob/develop/yo=
cto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/perf-in.=
o: in function `find_address_in_section':
/usr/src/debug/perf/1.0-r9/perf-1.0/tools/perf/util/srcline.c:200: undefine=
d reference to `bfd_get_section_flags'
/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-=
r9/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: /usr/src/debug/perf/=
1.0-r9/perf-1.0/tools/perf/util/srcline.c:204: undefined reference to `bfd_=
get_section_vma'
/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-=
r9/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: /usr/src/debug/perf/=
1.0-r9/perf-1.0/tools/perf/util/srcline.c:205: undefined reference to `bfd_=
get_section_size'
collect2: error: ld returned 1 exit status
make[2]: *** [Makefile.perf:608: /home/bob/develop/yocto/build/tmp/work/emp=
eror-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/perf] Error 1
make[1]: *** [Makefile.perf:219: sub-make] Error 2
make: *** [Makefile:70: all] Error 2
make: Leaving directory '/home/bob/develop/yocto/build/tmp/work/emperor-pok=
y-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/perf'
ERROR: oe_runmake failed
WARNING: /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/=
perf/1.0-r9/temp/run.do_compile.146045:1 exit 1 from 'exit 1'
ERROR: Execution of '/home/bob/develop/yocto/build/tmp/work/emperor-poky-li=
nux-gnueabi/perf/1.0-r9/temp/run.do_compile.146045' failed with exit code 1

Any clue about how I could fix it?

Regards.



--_000_DBAPR08MB56530E09A8937590E092F4F08B539DBAPR08MB5653eurp_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi guys<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m no table to build cor=
rectly perf package.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It looks like some sources have=
 no been compiled because I&#8217;m getting an &#8220;undefined reference t=
o&#8221; error.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This problem has appeared since=
 we have upgraded the version of yocto zeus.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m getting this error <o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp; arm-poky-linux-gnu=
eabi-ld --sysroot=3D/home/bob/develop/yocto/build/tmp/work/emperor-poky-lin=
ux-gnueabi/perf/1.0-r9/recipe-sysroot&nbsp;&nbsp;&nbsp; -r -o /home/bob/dev=
elop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/p=
erf-in.o&nbsp;
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/builtin-bench.o /home/bob/develop/yocto/build/tmp/work/emperor=
-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-annotate.o /home/bob/devel=
op/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/bui=
ltin-config.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/builtin-diff.o /home/bob/develop/yocto/build/tmp/work/emperor-=
poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-evlist.o /home/bob/develop/=
yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builti=
n-ftrace.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/builtin-help.o /home/bob/develop/yocto/build/tmp/work/emperor-=
poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-sched.o /home/bob/develop/y=
octo/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin=
-buildid-list.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/builtin-buildid-cache.o /home/bob/develop/yocto/build/tmp/work=
/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-kallsyms.o /home/b=
ob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf=
-1.0/builtin-list.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/builtin-record.o /home/bob/develop/yocto/build/tmp/work/empero=
r-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-report.o /home/bob/develo=
p/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/buil=
tin-stat.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/builtin-timechart.o /home/bob/develop/yocto/build/tmp/work/emp=
eror-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-top.o /home/bob/develo=
p/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/buil=
tin-script.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/builtin-kmem.o /home/bob/develop/yocto/build/tmp/work/emperor-=
poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-lock.o /home/bob/develop/yo=
cto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-=
kvm.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/builtin-inject.o /home/bob/develop/yocto/build/tmp/work/empero=
r-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-mem.o /home/bob/develop/y=
octo/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin=
-data.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/builtin-version.o /home/bob/develop/yocto/build/tmp/work/emper=
or-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builtin-c2c.o /home/bob/develop/=
yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/builti=
n-probe.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/bench/perf-in.o /home/bob/develop/yocto/build/tmp/work/emperor=
-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tests/perf-in.o /home/bob/develop/=
yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/perf.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/util/perf-in.o /home/bob/develop/yocto/build/tmp/work/emperor-=
poky-linux-gnueabi/perf/1.0-r9/perf-1.0/arch/perf-in.o /home/bob/develop/yo=
cto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/ui/perf-=
in.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/scripts/perf-in.o<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">arm-poky-linux-gnueabi-gcc&nbsp=
; -march=3Darmv7-a -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong=
&nbsp; -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-se=
curity -Os -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/ho=
me/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9=
=3D/usr/src/debug/perf/1.0-r9&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
 -fdebug-prefix-map=3D/home/bob/develop/yocto/build/tmp/work/emperor-poky-l=
inux-gnueabi/perf/1.0-r9=3D/usr/src/debug/perf/1.0-r9&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/bob/develop/yocto/=
build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/recipe-sysroot=3D&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 -fdebug-prefix-map=3D/home/bob/develop/yocto/build/tmp/work/emperor-poky-l=
inux-gnueabi/perf/1.0-r9/recipe-sysroot-native=3D&nbsp; --sysroot=3D/home/b=
ob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/reci=
pe-sysroot -ldw -Wbad-function-cast -Wdeclaration-after-statement
 -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissin=
g-prototypes -Wnested-externs -Wno-system-headers -Wold-style-definition -W=
packed -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum=
 -Wundef -Wwrite-strings -Wformat
 -Wstrict-aliasing=3D3 -Wshadow -DHAVE_PERF_REGS_SUPPORT -O6 -fno-omit-fram=
e-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=3Dgnu99 -fstack-protect=
or-all -D_FORTIFY_SOURCE=3D2 -I/home/bob/develop/yocto/build/tmp/work/emper=
or-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/perf/util/include
 -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1=
.0-r9/perf-1.0/tools/perf/arch/arm/include -I/home/bob/develop/yocto/build/=
tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/include/uapi=
 -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1=
.0-r9/perf-1.0/tools/include/
 -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1=
.0-r9/perf-1.0/tools/arch/arm/include/uapi -I/home/bob/develop/yocto/build/=
tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/arch/arm/inc=
lude/ -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/p=
erf/1.0-r9/perf-1.0/tools/arch/arm/
 -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1=
.0-r9/perf-1.0//util -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-=
linux-gnueabi/perf/1.0-r9/perf-1.0/ -I/home/bob/develop/yocto/build/tmp/wor=
k/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/perf/util
 -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1=
.0-r9/perf-1.0/tools/perf -I/home/bob/develop/yocto/build/tmp/work/emperor-=
poky-linux-gnueabi/perf/1.0-r9/perf-1.0/tools/lib/ -D_LARGEFILE64_SOURCE -D=
_FILE_OFFSET_BITS=3D64 -D_GNU_SOURCE
 -DHAVE_SYNC_COMPARE_AND_SWAP_SUPPORT -DHAVE_PTHREAD_ATTR_SETAFFINITY_NP -D=
HAVE_PTHREAD_BARRIER -DHAVE_EVENTFD -DHAVE_GET_CURRENT_DIR_NAME -DHAVE_GETT=
ID -DHAVE_DWARF_GETLOCATIONS_SUPPORT -DHAVE_GLIBC_SUPPORT -DHAVE_AIO_SUPPOR=
T -DHAVE_SCHED_GETCPU_SUPPORT -DHAVE_SETNS_SUPPORT
 -DHAVE_LIBELF_SUPPORT -DHAVE_LIBELF_MMAP_SUPPORT -DHAVE_ELF_GETPHDRNUM_SUP=
PORT -DHAVE_GELF_GETNOTE_SUPPORT -DHAVE_ELF_GETSHDRSTRNDX_SUPPORT -DHAVE_LI=
BBPF_SUPPORT -DHAVE_JITDUMP -DHAVE_DWARF_UNWIND_SUPPORT -DHAVE_LIBUNWIND_SU=
PPORT -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/p=
erf/1.0-r9/recipe-sysroot/usr/include
 -DHAVE_LIBCRYPTO_SUPPORT -DHAVE_SLANG_SUPPORT -DNO_LIBPERL -DHAVE_TIMERFD_=
SUPPORT -DNO_LIBPYTHON -DHAVE_CPLUS_DEMANGLE_SUPPORT -DHAVE_LIBBFD_SUPPORT =
-DHAVE_ZLIB_SUPPORT -DHAVE_LZMA_SUPPORT -DHAVE_BACKTRACE_SUPPORT -DDISASM_F=
OUR_ARGS_SIGNATURE -DHAVE_AUXTRACE_SUPPORT
 -I/home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1=
.0-r9/perf-1.0/ -ldl -lutil -Wl,-z,noexecstack -lunwind -lunwind-arm -L/hom=
e/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/r=
ecipe-sysroot/usr/lib -Xlinker --dynamic-list=3D/home/bob/develop/yocto/bui=
ld/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/libtraceevent-d=
ynamic-list
 \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /home/bob/develop/yoc=
to/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/perf-in.o=
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/pmu-events/pmu-events-in.o
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/libperf-in.o -Wl,--whole-archive /home/bob/develop/yocto/build=
/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/libapi.a /home/bo=
b/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/perf-=
1.0/libtraceevent.a
 /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0=
-r9/perf-1.0/libsubcmd.a /home/bob/develop/yocto/build/tmp/work/emperor-pok=
y-linux-gnueabi/perf/1.0-r9/perf-1.0/libbpf.a&nbsp; -Wl,--no-whole-archive =
-Wl,--start-group -lpthread -lrt -lm
 -ldl -lelf -lunwind -lunwind-arm -lcrypto -lslang -lbfd -lopcodes -liberty=
 -lz -llzma -Wl,--end-group -o /home/bob/develop/yocto/build/tmp/work/emper=
or-poky-linux-gnueabi/perf/1.0-r9/perf-1.0/perf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/home/bob/develop/yocto/build/t=
mp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/recipe-sysroot-native/usr/bi=
n/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-=
linux-gnueabi/9.3.0/ld: /home/bob/develop/yocto/build/tmp/work/emperor-poky=
-linux-gnueabi/perf/1.0-r9/perf-1.0/perf-in.o:
 in function `find_address_in_section':<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/usr/src/debug/perf/1.0-r9/perf=
-1.0/tools/perf/util/srcline.c:200: undefined reference to `bfd_get_section=
_flags'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/home/bob/develop/yocto/build/t=
mp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/recipe-sysroot-native/usr/bi=
n/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-=
linux-gnueabi/9.3.0/ld: /usr/src/debug/perf/1.0-r9/perf-1.0/tools/perf/util=
/srcline.c:204:
 undefined reference to `bfd_get_section_vma'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/home/bob/develop/yocto/build/t=
mp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/recipe-sysroot-native/usr/bi=
n/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-=
linux-gnueabi/9.3.0/ld: /usr/src/debug/perf/1.0-r9/perf-1.0/tools/perf/util=
/srcline.c:205:
 undefined reference to `bfd_get_section_size'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">collect2: error: ld returned 1 =
exit status<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[2]: *** [Makefile.perf:608=
: /home/bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.=
0-r9/perf-1.0/perf] Error 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** [Makefile.perf:219=
: sub-make] Error 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make: *** [Makefile:70: all] Er=
ror 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make: Leaving directory '/home/=
bob/develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/per=
f-1.0/tools/perf'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: oe_runmake failed<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">WARNING: /home/bob/develop/yoct=
o/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/temp/run.do_compile=
.146045:1 exit 1 from 'exit 1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Execution of '/home/bob/=
develop/yocto/build/tmp/work/emperor-poky-linux-gnueabi/perf/1.0-r9/temp/ru=
n.do_compile.146045' failed with exit code 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any clue about how I could fix =
it?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DBAPR08MB56530E09A8937590E092F4F08B539DBAPR08MB5653eurp_--

