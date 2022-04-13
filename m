Return-Path: <Rohithraj.Bhaskara@ril.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ADC5C35278
	for <webhook@archiver.kernel.org>; Wed, 13 Apr 2022 15:48:06 +0000 (UTC)
Received: from gwsmtp011.ril.com (gwsmtp011.ril.com [116.50.78.50])
 by mx.groups.io with SMTP id smtpd.web09.2984.1649829027416811037
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 22:50:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ril.com header.s=ril header.b=XrabUoDr;
 spf=pass (domain: ril.com, ip: 116.50.78.50,
 mailfrom: prvs=095d3e9cc=rohithraj.bhaskara@ril.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=ril.com; i=@ril.com; q=dns/txt; s=ril; t=1649829028;
  x=1681365028;
  h=from:to:subject:date:message-id:mime-version;
  bh=NqXYwkmSp+tDhuT56SajuVuR5RQ61lGC+uQfHyOydPI=;
  b=XrabUoDr5rj0OO+RC6zofv3ExjW9evzH6Ei+AkpmNoQKnv9XEef+oCsZ
   sPwdXrcNMw+DW1Yupa1vRkFCfjkpKiJ5tjDELvcafaFkcdczBQ56Z//Yl
   8t8gQkhGpr5xmV8CQ2nknVRFlskI/rhVJK4TQcMY9uhImqyvnuF/QLsBF
   Y=;
Authentication-Results: gwsmtp011.ril.com;
 dkim=pass (signature verified) header.i=@rilcloud.onmicrosoft.com
IronPort-SDR: 
 Ho2Mf9IWfW+Q2/NhHhw9EXv83Q2XwZbEjEdWxJ6GQfTrotfvNFVit3a7tV7t8JDgsxIaFFfzy7
 IlcGL0KwLwCw==
IronPort-Data: =?us-ascii?q?A9a23=3AE7Xq86iIya+JfJuBUWMrontUX161qRIKZh0uj?=
 =?us-ascii?q?C45NGQN5FlHY01jehtvUDqAOP2JMWv0fd93O4iwoEtTupTQydZkG1BkpCg9Q?=
 =?us-ascii?q?i1H+JHPbTi7Bh6rZHrIdqUvb67HA/3z47AsFehsJpPnjkrrY+CJQUVUj/nSH?=
 =?us-ascii?q?OKgUbWcY0ideCc/IMsfoUM68wIGqt4w6TSJK1vlVeLa+6UzCnf8s9JHGj58B?=
 =?us-ascii?q?5a4lf9alK+aVAUw4wdkPKwX1LPpvyJ94Jo3fcldJpZjK2VeNrbSq+3rlNlV8?=
 =?us-ascii?q?o5FlvuE5w7Mr1r1TqEKaua60QmmsVt6cPGFvyQa+Woo06J9P/0ZAatVo2zR2?=
 =?us-ascii?q?YkrmZMX5NrpE1lB0q7kwYzxVzFiFCF/Ia1c8b2BC3i2qs+a1UTuaXrohf5pC?=
 =?us-ascii?q?SnaOKVCp7osXz4er6RwxDclK0rra/iN6KO8QfVrrsAiN9XwepIYsW1n1SveD?=
 =?us-ascii?q?/stXdbEWaqi2DPy9F/cnegXRbCHPZtfM2spNU6eCyCj82w/UfoWtP2pgnL7d?=
 =?us-ascii?q?CBU7lWToKs8+W/IywJtlrPqNbLolhaiH625Rnqlm18=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AeIg0ha4UEyamKYIzKAPXwUSBI+orL9Y04l?=
 =?us-ascii?q?Q7vn2ZFiY1TiXIra6TdaoguiMc0AxhIk3I6urwRZVoIEmsuKKdhLNwAV7MZn?=
 =?us-ascii?q?ifhILFFvAG0WKA+UytJ8SdzJ8n6U4IScEXY7ecYSkY/KTHCWKDYrEdKay8gd?=
 =?us-ascii?q?mVbJDlvhFQpG9RGsVdxjY8LjzePlx9RQFAC5Z8PoGb/NB7qz2pfmlSRtinB1?=
 =?us-ascii?q?EeNtKz6OHjpdbDW1orFhQn4A6BgXeD87jhCSWV2R8YTndm3aoiy27YiAb0j5?=
 =?us-ascii?q?/T/c1TiyWsllM73a4m2+cJ+eEzRvBkTfJlbwkEvzzYJLiJnYfy+Azd7tvfr2?=
 =?us-ascii?q?rC2+O83yvId/4DlE85OFvF5ycFkjOQoQrH5xLZuCGlqGqmrsrjSD0gDc1dwY?=
 =?us-ascii?q?pfbxvC8kIl+MpxyaRRwguixtJq5D777VLADuLzJlhXf4uP0A8fuP9Wi2YaXZ?=
 =?us-ascii?q?oVabdXo4Ba9ERJEI0YFCa/7Iw8CuFhAMzV+f4TKDqhHjrkl3gqxMbpUmU4Hx?=
 =?us-ascii?q?+ATERHssuJ0yJOlHQ8y0cD3sQQknoJ6Zp4QZhZ4ObPNLhuidh1P4QrRLM4AP?=
 =?us-ascii?q?1ETdq8C2TLTx6JOGWOIU7/HKVCIH7Jo46f2sRD2AhrQu198HIfouWzbLoDjx?=
 =?us-ascii?q?9DR6vHM7z94KF2?=
X-IronPort-AV: E=Sophos;i="5.90,255,1643653800";
   d="scan'208,217";a="254367820"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NMapeQzlcjF9npCSg/1KEQ2HtcmJxvJD+evl/bSrjunRQva27GRXCWA0uq7O61ZJR0+hfn2XFH2uuubmqv7Au24i50emLS1gRwoZ11Ca8t/p5PNiSjc32LGQiMV0incm1lgUWF9n3quwdDE+3kvLdWklurF1ntbo/6m4mQZVVO7OBrwUuG+29rtBKchT7opLC5PFDm68lkvfE0XlbV3m3EuoPlGRTh+uSR5JLjnUZ7cdLIZFqbEhLveqyDyL4B9KiYK4AP6iFLvIIhjf6AsA4X3kC71Fuh3ScXfVJU8DVAiQT6DlM9VriOHDHXEotJfpXPWFMdZLPhcahMjYTGr8Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sw76SBEfL9v3nKxAbFLqRrwzF3lg+dFruIl+xzUKhoU=;
 b=nygZdo9Ww1BoTqJJfPIfZzIR3N2w2u1/yPh5tLUWGCXsbbRZi2fuHg8JGjiCqWxMIKZsu5XyUUXLjMvD0ov1x8bFuOg1Q/VARkcz1Bg6J/m90j1z66Pon9IkFIG2LTm7WTLYORbH/lBTRMEbCajL5tFxCDVdaPkaL7posbT7xPm0u/xMLxGchph1k5zvfzstpQfppreE7za/hnQrQ1cYA9/vS/ZAaYKVh/ABU/d47M6yLd98xM829Otk28+gRPUTL3sY2bPpAgHityOb3WDzjw3p0u7WVyvkpePwWmDd225XpaP272SAvPMBnj9K0dvYkiNCnYVuXqUW+FhpgQpcRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ril.com; dmarc=pass action=none header.from=ril.com; dkim=pass
 header.d=ril.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rilcloud.onmicrosoft.com; s=selector2-rilcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sw76SBEfL9v3nKxAbFLqRrwzF3lg+dFruIl+xzUKhoU=;
 b=iW+N5v+S6rhmN96kOBl5SPeurH5K+oY7jU4lJFRjMtWw/3/3Ys5PwmxVbi6qeIAWqoPgNpfUAYz1y96EJ30LjnlyYDL2Vxf1AhoHOA/M8K5HOJZzivdZCplVmy7qLoyQSKD0w06uXuVoAa8uP5HGZPfwC2FVKlF//6cnNfSn37w=
From: <Rohithraj.Bhaskara@ril.com>
To: <yocto@lists.yoctoproject.org>
Subject: Yocto kernel building
Thread-Topic: Yocto kernel building
Thread-Index: AQHYTvllFBOUB2zrKUWkH8G/2SeVAg==
Date: Wed, 13 Apr 2022 05:45:08 +0000
Message-ID: 
 <BM1PR01MB3203E5DA71E89151F873898E94EC9@BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a2774fa-39d0-459c-d7f2-08da1d10c499
x-ms-traffictypediagnostic: MAXPR01MB3550:EE_
x-microsoft-antispam-prvs: 
 <MAXPR01MB3550377E4C4091FAF2F3D04C94EC9@MAXPR01MB3550.INDPRD01.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dEaBqAyD+To3E1cdjXW8T5rNBmkYu+1MGotwIqVT8iYsCzD7U5LRbIWIDttTOYmRfMJiHkZW2fGfoUai8KoC7Wz/jgU639DUOXkH1/OYraRLWDsyf6LzZkRyYAM+KCktvEeaDCJjFDOIlNCqIWx+Fz87Nq0iEX81g7NUuEEIzZZc55w3LytkFleiX/KcC1XK1LnAYcbAL3sLsAHWM4M+7IX5gq4w1LfVBWGOvfDgDYZauVFi+LU2uWYbvOdzJQoMcx65LkbB8wxR+zd07Ek9ic5iADiHVzhTM3tBP6kiVXky/7PQe6LzWxSSrZGjOQ0Cdp1JG/EQeQAfFzCVeZfv+/UVILEQAEmkZLgYpPHN1J8pATz12tV26jMNDDN1sqmEeEc4vGzxFoOFuKa9IwSAl6L7/otKIqSKI7mi2X4+mueE/gN8QJfJ+wr8XZ05N19y4wrCX0VgTswOsn6pMi0hRhvP4/cVczTnh0QK00w6Uz8rI0kUfyy/sfc6xrVSy7K8NxQ0zcwnU8TWoX12ap5W1UVmpZwm5t+Hpz9eJCvNmh6qDmF/ytootJu7dPvES4rZ43rcu/sCXlPsgAhOryFXqDPmA75Dgwuyuy88d2sVzMwGqpXsreN8eG10j/kpZjehtOwTtOg+ipTCrNFQjjbOrnzPB7wj04DfVlxqmxUtEJubJJ4CCpyO143jEEETBd6zmFRUo2BRch7I15iHwmRuR4Zhro7dyMGhpbAr44SCXcI1Rz7zzrTBaDoTB8PGu7LwRaC67mzHmySVBKTgtr+xf2vXN1D7WDjznKyc+X3Yf0A=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(3480700007)(2906002)(508600001)(8676002)(9686003)(26005)(186003)(122000001)(7696005)(33656002)(38100700002)(6506007)(55016003)(52536014)(82960400001)(66556008)(66946007)(38070700005)(66476007)(64756008)(66446008)(8936002)(7116003)(19627405001)(166002)(316002)(5660300002)(71200400001)(6916009)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?zL1ZIFud8SVE38IF6AZWC6N36E/F4X2Gai3qalAh7C4nQ5GZB00Km4Sb2G?=
 =?iso-8859-1?Q?qnu1pYAdxsQzeJ2Baeu2vDaCJONhlZb446ygeOwRHqnJ6jZ0jehchDgihD?=
 =?iso-8859-1?Q?n5xDXowLZ64IyMbaIifJg+BjIVijv+/zw1nDDeIpFgiHdx3KzlA/bly3Vd?=
 =?iso-8859-1?Q?ISFZD1trqKTBcQO0t22wfGCrqPjzA75F3+t6JM0g0Z8yOZKIypv5UV2Nj2?=
 =?iso-8859-1?Q?sGr2XUXpZIRQj2kAfs3rTCWZKPWcNrENJWu7h5SvZ6xKfe20k6iNY0UGk2?=
 =?iso-8859-1?Q?LADpFwrCBny5ykPCvlJwC/B33zehJXmGM02fh8NGAmotOIQJbOCQyMRhYe?=
 =?iso-8859-1?Q?7Yh53LOontFawnTJPTlLWDE6WR1uvhEiAIRy+/35u4MF1iP0U6/u8L6Ood?=
 =?iso-8859-1?Q?D2O7Hz2j6E3rN65vtiB3ZLwTAiTazu5LRwRujWMcspqbRAqYIMqieBlybZ?=
 =?iso-8859-1?Q?LCYQccdIGi4s0A5Z8hMIISH4YrExyzFVq/1DNrWIX8nzlY5OOUybhRgaho?=
 =?iso-8859-1?Q?ugGuRIPkG1iuuBUU8IbtqGbAtZlJ5VJoASO3HqaHDY1SuAJQzPWN98RSBo?=
 =?iso-8859-1?Q?rfzCJpOng4XxtyaaWJWl+xyCz8Z6chp97ESVM7jNaPlr50hLGhJaeP17lU?=
 =?iso-8859-1?Q?j75c47f56IQl9zsD6DCUrAn03IAoezLWmGPciFDgqBqgImwsXHoz3XOuVq?=
 =?iso-8859-1?Q?+hoqi37Bnt5LOzcXmkW+F8JPT777G3eEOKgQEFgRsL0UEbxNb5kb364zH7?=
 =?iso-8859-1?Q?0ODKFyvBMuE1btiZDEJav3PCdPLWZ78Qo99e/n2WIluoK7ZxwfdbsOxrWg?=
 =?iso-8859-1?Q?SLS3chY4qfhf/qKiVuBR1XAA6z2FBRKEoycJ2ARfHsoox3vjRlSr0zmN7Q?=
 =?iso-8859-1?Q?9O9iqNUjlQsBDfM5/rgtKmqNWY7S6XDoksfdr4fpHmCxX21zJRj3EO6B87?=
 =?iso-8859-1?Q?sQiJcWh78MHnkiGi55d8WYDNNETNVTrvmVRZ8Zl4lR1QWvzW2KshMCtZuu?=
 =?iso-8859-1?Q?lpXOcB6ngtyAD2Z89C3Jg0yd/Dj/L2P4OwAfhL4oCZb/Ogl17/sQ7t6S9n?=
 =?iso-8859-1?Q?wXZr0mcNxuz08SzY0H1LAa1MS9jKI35f/k/kgLr8Kny7f+S9mSH+XTje4Y?=
 =?iso-8859-1?Q?Zc3WY0TqVr+7+d5P+/cqyEuh4EFrpHUJJz5rGQRKvWB9zgzIoECZ5EnKr4?=
 =?iso-8859-1?Q?KCYm2AppA6hKK0x9LNpMr4RatowUEj6/SUQUoZLsw/kX1uFe2kmdaZxUGr?=
 =?iso-8859-1?Q?rhLFWIygdjoZt5U6jFj88B+RynsnHLpO4+YhAKBBlGOrCtQLNgyVl05slq?=
 =?iso-8859-1?Q?QKNBKrhiq6gIP8QNlYJ8Ra3jeakHtFuRxEnFw2d8JR7w9J9KCjZzIkruE4?=
 =?iso-8859-1?Q?BYFYOMQHaqxN4nczFpfNqwqmgo2BxR/wYEE1RI2P5v3BfryVZ156FUukWJ?=
 =?iso-8859-1?Q?o12EtFERQme/8iLhNHVWCqlxrLM/G4tllhgTRufPX3OWOJLTYvPgBqubPi?=
 =?iso-8859-1?Q?UD568zbM5peaFXkbxR1pQogvGe6XHMFu8fS95w62UZttBdKHAggyNHIpTJ?=
 =?iso-8859-1?Q?UFjBGTdgdONgxiWDvlI5i6b1ld8ozWAL5QbN8JPjLbZg8aqTJx7egGLyQk?=
 =?iso-8859-1?Q?uiQEWAk08dPi9MstUT7VUL+wXixf8K9mWD1r/jfbKlLw8ad/ZAveyCdMkj?=
 =?iso-8859-1?Q?k0jqxg62/378THC49aJkFIme42SHHplmGrjs4Rxpad541/ht6xeI/H7Qv0?=
 =?iso-8859-1?Q?bQvJHsty1K+HqlVvNDWKHxQwAEH4JQo3KhVbyw2w11UEi8iGl+msLNomc3?=
 =?iso-8859-1?Q?DOfI7nplVA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB3203E5DA71E89151F873898E94EC9BM1PR01MB3203INDP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6a2774fa-39d0-459c-d7f2-08da1d10c499
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2022 05:45:08.0820
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fe1d95a9-4ce1-41a5-8eab-6dd43aa26d9f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 qoHslZbp2bfRONWvcW0+Rc7vyXsUwq+wGFiqYNrt3gzt8blqI5geBQHmn7lV64ttq2Z24J9yFgYpGnyLfSgupjm7QSuohTR02YPWNxIgP90=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3550
X-OriginatorOrg: ril.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Apr 2022 15:48:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56759

--_000_BM1PR01MB3203E5DA71E89151F873898E94EC9BM1PR01MB3203INDP_
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi,


The default Linux kernel is built by using bitbake fsl-image-networking. He=
re, the kernel is built from meta-freescale/recipes-kernel/linux/linux-qori=
q_5.4.bb path and source code is fetching from "git://source.codeaurora.org=
/external/qoriq/qoriq-components/linux;nobranch=3D1".



So I want to use another version of the kernel that should be fetch from "h=
ttps://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/lin=
ux_4.19-rt/"<https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-=
components/linux_4.19-rt/%22> and the SRC_REV=3D "74700acb31e369495da22b4bb=
fd9e3f4315fc74a"



For that purpose, I have created a .bbappend file and changed the SRC_URI a=
s well as SRC_REV.

While building bitbake is causing errors,

ERROR: An uncaught exception occurred in runqueue################ | ETA: 0:=
00:01
Traceback (most recent call last):
File "/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/poky/bitbake/lib/b=
b/runqueue.py", line 1187, in RunQueueData.prepare_task_hash(tid=3D'/home/r=
ancore/rohit/yocto_mmwave/yocto-sdk/sources/meta-freescale/recipes-kernel/l=
inux/linux-qoriq_5.4.bb:do_fetch'):
def prepare_task_hash(self, tid):
> bb.parse.siggen.prep_taskhash(tid, self.runtaskentries[tid].depends, self=
.dataCaches[mc_from_tid(tid)])
self.runtaskentries[tid].hash =3D bb.parse.siggen.get_taskhash(tid, self.ru=
ntaskentries[tid].depends, self.dataCaches[mc_from_tid(tid)])
File "/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/poky/meta/lib/oe/s=
statesig.py", line 146, in SignatureGeneratorOEEquivHash.prep_taskhash(tid=
=3D'/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/meta-freescale/recip=
es-kernel/linux/linux-qoriq_5.4.bb:do_fetch', deps=3Dset(), dataCache=3D<bb=
.cache.CacheData object at 0x7ff029b3a0b8>):
def prep_taskhash(self, tid, deps, dataCache):
> super().prep_taskhash(tid, deps, dataCache)
if hasattr(self, "extramethod"):
File "/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/poky/bitbake/lib/b=
b/siggen.py", line 248, in SignatureGeneratorOEEquivHash.prep_taskhash(tid=
=3D'/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/meta-freescale/recip=
es-kernel/linux/linux-qoriq_5.4.bb:do_fetch', deps=3Dset(), dataCache=3D<bb=
.cache.CacheData object at 0x7ff029b3a0b8>):
else:
> checksums =3D bb.fetch2.get_file_checksums(dataCache.file_checksums[fn][t=
ask], recipename, self.localdirsexclude)
for (f,cs) in checksums:

Can you please help me to resolve the issues?

Thank you
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

--_000_BM1PR01MB3203E5DA71E89151F873898E94EC9BM1PR01MB3203INDP_
Content-Type: text/html; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(51, 63, 72)=
;font-family:Arial, sans-serif;font-weight:300;text-align:left;background-c=
olor:rgb(255, 255, 255)">
The default Linux kernel is built by using&nbsp;<em style=3D"box-sizing:bor=
der-box"><strong style=3D"box-sizing:border-box;font-weight:bold">bitbake f=
sl-image-networking.<span>&nbsp;</span></strong></em>Here, the kernel is bu=
ilt from&nbsp;<em style=3D"box-sizing:border-box"><strong style=3D"box-sizi=
ng:border-box;font-weight:bold">meta-freescale/recipes-kernel/linux/linux-q=
oriq_5.4.bb</strong></em><span>&nbsp;</span>path
 and source code is fetching from<span>&nbsp;</span><em style=3D"box-sizing=
:border-box"><strong style=3D"box-sizing:border-box;font-weight:bold">&quot=
;git://source.codeaurora.org/external/qoriq/qoriq-components/linux;nobranch=
=3D1&quot;</strong></em>.</p>
<p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(51, 63, 72)=
;font-family:Arial, sans-serif;font-weight:300;text-align:left;background-c=
olor:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(51, 63, 72)=
;font-family:Arial, sans-serif;font-weight:300;text-align:left;background-c=
olor:rgb(255, 255, 255)">
So I want to use another version of the kernel that should be fetch from<sp=
an>&nbsp;</span><em style=3D"box-sizing:border-box"><strong style=3D"box-si=
zing:border-box;font-weight:bold">&quot;<a href=3D"https://source.codeauror=
a.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19-rt/%22" target=
=3D"_blank" rel=3D"nofollow noopener noreferrer" style=3D"box-sizing:border=
-box;color:rgb(33, 91, 214);text-decoration:underline">https://source.codea=
urora.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19-rt/&quot;</=
a></strong></em>&nbsp;and
 the SRC_REV=3D &quot;<em style=3D"box-sizing:border-box"><strong style=3D"=
box-sizing:border-box;font-weight:bold">74700acb31e369495da22b4bbfd9e3f4315=
fc74a</strong></em>&quot;</p>
<p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(51, 63, 72)=
;font-family:Arial, sans-serif;font-weight:300;text-align:left;background-c=
olor:rgb(255, 255, 255)">
&nbsp;</p>
<p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(51, 63, 72)=
;font-family:Arial, sans-serif;font-weight:300;text-align:left;background-c=
olor:rgb(255, 255, 255)">
For that purpose, I have created a .bbappend file and changed the SRC_URI a=
s well as SRC_REV.</p>
<p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(51, 63, 72)=
;font-family:Arial, sans-serif;font-weight:300;text-align:left;background-c=
olor:rgb(255, 255, 255)">
While building bitbake is causing errors,</p>
<p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(51, 63, 72)=
;font-family:Arial, sans-serif;font-weight:300;text-align:left;background-c=
olor:rgb(255, 255, 255)">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">ERROR: An uncaught exception occurred in runqueue########=
######## | ETA: 0:00:01</em></strong><br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">Traceback (most recent call last):</em></strong><br style=
=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">File &quot;/home/rancore/rohit/yocto_mmwave/yocto-sdk/sou=
rces/poky/bitbake/lib/bb/runqueue.py&quot;, line 1187, in RunQueueData.prep=
are_task_hash(tid=3D'/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/met=
a-freescale/recipes-kernel/linux/linux-qoriq_5.4.bb:do_fetch'):</em></stron=
g><br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">def prepare_task_hash(self, tid):</em></strong><br style=
=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">&gt; bb.parse.siggen.prep_taskhash(tid, self.runtaskentri=
es[tid].depends, self.dataCaches[mc_from_tid(tid)])</em></strong><br style=
=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">self.runtaskentries[tid].hash =3D bb.parse.siggen.get_tas=
khash(tid, self.runtaskentries[tid].depends, self.dataCaches[mc_from_tid(ti=
d)])</em></strong><br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">File &quot;/home/rancore/rohit/yocto_mmwave/yocto-sdk/sou=
rces/poky/meta/lib/oe/sstatesig.py&quot;, line 146, in SignatureGeneratorOE=
EquivHash.prep_taskhash(tid=3D'/home/rancore/rohit/yocto_mmwave/yocto-sdk/s=
ources/meta-freescale/recipes-kernel/linux/linux-qoriq_5.4.bb:do_fetch',
 deps=3Dset(), dataCache=3D&lt;bb.cache.CacheData object at 0x7ff029b3a0b8&=
gt;):</em></strong><br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">def prep_taskhash(self, tid, deps, dataCache):</em></stro=
ng><br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">&gt; super().prep_taskhash(tid, deps, dataCache)</em></st=
rong><br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">if hasattr(self, &quot;extramethod&quot;):</em></strong><=
br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">File &quot;/home/rancore/rohit/yocto_mmwave/yocto-sdk/sou=
rces/poky/bitbake/lib/bb/siggen.py&quot;, line 248, in SignatureGeneratorOE=
EquivHash.prep_taskhash(tid=3D'/home/rancore/rohit/yocto_mmwave/yocto-sdk/s=
ources/meta-freescale/recipes-kernel/linux/linux-qoriq_5.4.bb:do_fetch',
 deps=3Dset(), dataCache=3D&lt;bb.cache.CacheData object at 0x7ff029b3a0b8&=
gt;):</em></strong><br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">else:</em></strong><br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">&gt; checksums =3D bb.fetch2.get_file_checksums(dataCache=
.file_checksums[fn][task], recipename, self.localdirsexclude)</em></strong>=
<br style=3D"box-sizing:border-box">
<strong style=3D"box-sizing:border-box;font-weight:bold"><em style=3D"box-s=
izing:border-box">for (f,cs) in checksums:</em></strong></p>
<p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(51, 63, 72)=
;font-family:Arial, sans-serif;font-weight:300;text-align:left;background-c=
olor:rgb(255, 255, 255)">
Can you please help me to resolve the issues?</p>
Thank you</div>
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

--_000_BM1PR01MB3203E5DA71E89151F873898E94EC9BM1PR01MB3203INDP_--


