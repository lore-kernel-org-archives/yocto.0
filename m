Received: from EUR03-DB5-obe.outbound.protection.outlook.com (EUR03-DB5-obe.outbound.protection.outlook.com [40.107.4.133])
 by mx.groups.io with SMTP id smtpd.web08.6112.1632410165928686471
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 08:16:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@prevas.dk header.s=selector1 header.b=Lx1jUird;
 spf=pass (domain: prevas.dk, ip: 40.107.4.133, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjrMHY8mdcXxpYr6g8rFMIfC0n9XTpibRdwlRHqiaVbLTRY9haP2qWJPNMFDKnppA5RWwwx7PbaPwwlT47wU6Th7xhMYZ1oGMFitcE72igoEQQcuurOcgZJVYPhj7rlm4XloZfxHRQDjQvO+65sX3kkMYsSLdQr8nJgGISKICV+ykRj0NAjDcAEvl/31KD227fFUqG1bDVfaYLqgtHKvx436KYtJtemI9IzJfWaLHI18xIvwaEXOv+byZEb5jxE1VR5PZZyosQf8QAreDgL/q9JnHLsvBdJ/lqwusInLSkCoSAG9U3+7uj2giDg54LcTcyHO+qYHDkXc7FxFdW/7CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=rnYQhhPacRyeS4blcBDQMhY9XLY16iCJsv+kQomE6GQ=;
 b=Bc6fkpKnOvxfIoY7AtNTCcIoO2QBr3EPxXw8FIBxk9L9FDsgqwpXhKAEhhJOKu9/WqFS6cksBlSGS9Axu5dSg9VxP+FQxPaKLvPxsvhL5Xvy5UgPjKbEZWHIJ4PqhSwdw5StFpIrm0NRoyW/kw8noVu1kIoDpz1zxUMnQktroLvm2kZjW0/H4edGon9DCKMOSB4e3ZqqKxakLTmWHv0cSqWl7pm87ofMw00LPGkEOenjmTEBRumEg4O7M+4rlvnT4crmtCfVH/5mUeEAqSnEHR4BL9oSZx/eyJLvBu1gzcIMcxWaG4AYu/CpVk1291JPZFmR157P34m2uhUwqBZaFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rnYQhhPacRyeS4blcBDQMhY9XLY16iCJsv+kQomE6GQ=;
 b=Lx1jUirdX2lsuiLVC392YOLl2SJLEzYSmmmkCjHAZ3oe7yoz2/D8hHbQosGHhv6Q47LJGDM80bppnzfwyy/7E7QKa5aNMbEdLepD79ePqXOdEDYxWp/s9JxFci6g9vAtbdEgP8QyNEQXNodpUnE9J4iy3Jqbs1AYBAmioBvwLcE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=prevas.dk;
Received: from AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:3f::10)
 by AM0PR10MB3444.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:156::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Thu, 23 Sep
 2021 15:16:03 +0000
Received: from AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d9cd:f635:6e73:9bd3]) by AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d9cd:f635:6e73:9bd3%3]) with mapi id 15.20.4544.013; Thu, 23 Sep 2021
 15:16:03 +0000
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Rasmus Villemoes" <rasmus.villemoes@prevas.dk>
Subject: "stack smashing detected" when building aarch64 kernel
Message-ID: <c81729e7-0bc2-7f7c-84ce-25d92ec09148@prevas.dk>
Date: Thu, 23 Sep 2021 17:16:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
X-ClientProxiedBy: HE1PR06CA0145.eurprd06.prod.outlook.com
 (2603:10a6:7:16::32) To AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:3f::10)
Return-Path: rasmus.villemoes@prevas.dk
MIME-Version: 1.0
Received: from [192.168.1.149] (80.208.69.72) by HE1PR06CA0145.eurprd06.prod.outlook.com (2603:10a6:7:16::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13 via Frontend Transport; Thu, 23 Sep 2021 15:16:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f1ae061f-1fbc-403e-880c-08d97ea50e6e
X-MS-TrafficTypeDiagnostic: AM0PR10MB3444:
X-Microsoft-Antispam-PRVS: 
	<AM0PR10MB34446F7D7B7E6783171DA1A693A39@AM0PR10MB3444.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	22eQ2YCh4AfLR5nev/2uffaZcWSA/8L7dTlaZGTefw2PnNX0byAou8u5btx4NULCEBsSz7T5mGc3jc2/dnNf5JhtdYAPTEtvvk7Cv4NDXQTNh/RsvFUBgIPNtd0yoFb2q/NGvCOfWfOK9AfUIK5iGbMfoiRR1EntQDIjB2DEfLmUJmgCUggL1W7yseqtsAN7uHetN/Y5ecSb62hDpgVkJFSHdw4NJBs5N1SNJAnatCTRAleEnUBoU4vuitXDAtVsOCDNWt1zPBGsMFrp9U3L69wsPKbdVa+QnIiMLfdQH9B29A50xmnE6JoehJlPqURPJP58n7WwME4ztghL84GJimS5BpMnMPOErHKWnoaN/BY/t37rkO0sdR6hqXdl0yp71KjzDkdrA6oym2PTKtCXqtNBqYyqvX/jSJeGllc05OlUNZbbYoMA+oNYLndbxfOQn+9bWfFaBtAfjbihf+0i2bSAlBI/m70jK/R78IsZeKJFSAFiNdcXRnTNS9HU81F+nFLBF2LopA9pPmV7yTq93WtMlLUZdHGmmsgS1Vlj/DROAZHRHvduAbudwPoltoV1EYH/EQ0BykHFCpUbqSpSaywfwNLrwfGMrOV6uAJKNqL1wl0LKlLoFShr3nbZuWLz02jie4Hj9V3eRJVrkV5J9u/94vonegctE4IeWizBk+gaL3jgSfgmRN0+ELkwHH/EZrH/dQwNFz3yS608fg1Ks2lJeIJysJyaF/YmHv2el6/5jjxfpizbIzz9qFYGBSY6HsW+QqjhezkCQSXwSEunAptRvTxRIGdhxZBuYJfycyHmiYaCTXhih53dUTEZiUlA8Y+sZ3SqtHmImDo3egiJngdyxu2ltsEzxLpVzmtBAnA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(366004)(66476007)(6916009)(8976002)(8676002)(316002)(8936002)(5660300002)(44832011)(16576012)(86362001)(52116002)(2616005)(956004)(83380400001)(2906002)(31696002)(38350700002)(66556008)(38100700002)(31686004)(186003)(66946007)(26005)(36756003)(6486002)(508600001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?Windows-1252?Q?d7sOaTQ/Q1XxCl4h2/wGzmAW3vtN5+cPGiwl8CT3lvie29IkSYxbnnyp?=
 =?Windows-1252?Q?xDT9taqFIQ7YV8syT/NSbhX1gb3U7P8rIdNFQ1UJtirrew7Y18qNTfGu?=
 =?Windows-1252?Q?oUaAVMEuEUG6AgeS0azlAKjEM88RWLMRSNlHyBjvvYYqtAgNhUZTIGS2?=
 =?Windows-1252?Q?7biussQAKgQW+i7qHuyTBXwxPJuzAYE+euRS48yKgmY5O16snTnliDb/?=
 =?Windows-1252?Q?ljmH7kxESf4hHi89YJDj/gFeDIkr2z9Qn/APSBXwCXZIOQpMjCrPVTTJ?=
 =?Windows-1252?Q?I+tVn1WT9HJTc4WlR+WIRdIE+D+mhQyNyA0hBIMR6+wZakRI27uClUv3?=
 =?Windows-1252?Q?CrgFUlc7TfGsmeKz/Nktz8y5gkeOA9BColPMwrlwwnB0yzVTqBDwzmCU?=
 =?Windows-1252?Q?FT6oIthuuphGJT/OufIIeFmlXklt8gmVFA+TxvlYvEA56r/U97OWcDrf?=
 =?Windows-1252?Q?WMcG6J3WuCn1nuU5DONExaJhyAYqT4pbxWS/eYrZcP+jRk7x/OO2JUBQ?=
 =?Windows-1252?Q?tWHszNOlDF2Mc8AolliWvbZHfntbKtsZC64x/pewzwWYfCeGoRSA87cO?=
 =?Windows-1252?Q?+MaSm7ul88ssJKRD+hS4bMqMzOn70p960UIqFFNGPzGp2UjwTg988Y04?=
 =?Windows-1252?Q?oNeMX2C8Nl2yZEOwILGxGEpaWfI2j2emqZtNUCMqzeYbCRA/jb9GslsF?=
 =?Windows-1252?Q?WQpL6vGq45MHoQWD1Le2CwohRmpQ574LqFArrLxEAYK5a5TjO5UqEkJB?=
 =?Windows-1252?Q?G1vKtZdLSOg98biRFJndB/IJESOw2VhI69iUtKTGfV0s11ebHNKkgjIG?=
 =?Windows-1252?Q?zgGDmIA6ET1Mch3tTud7YJwWSqOBqK9V8caQeD2rJSXVnwvnUG0YXb9j?=
 =?Windows-1252?Q?icBwQtz5yoZzk7365DpY5yPgkAKtgrifUEBzI5QSW0eOUm/JDiz4N3zr?=
 =?Windows-1252?Q?Kbrgm9PS3RD9mxJp0ipZ8WWjgNZxBSrdTXzH9eev/oPtkBXFLwar4X1y?=
 =?Windows-1252?Q?TH0tfp9A32/YPRQrmNhuiPaXek41Tqgktnz/WFWIQHQQVulXLp29rSvY?=
 =?Windows-1252?Q?h+wQl0GubgPlcCdv0ZlIFuND8+5klYvsVpRH79qfL5NTSNvZ7EmD9ADn?=
 =?Windows-1252?Q?5rNcQ0Wl6avLdppY/5lWpwPOsiX4HF+ibBCZIZ6IN7aYtdUcol49PJ6J?=
 =?Windows-1252?Q?nkUpGqJoeQJ6OyMily5OFdHCtrmvgYLaCleygM4pJubvw5KZ6+NDbXJ9?=
 =?Windows-1252?Q?gHKETfHeBOjxDTJbbzxc6kp7boYys5SKtEEl12MmLQHpatNy9Efaijs0?=
 =?Windows-1252?Q?Zqbnm+k1l1+AA7Wi3zg1QS1K3Bv02uUUvXhuSsNPsWXml1XFRuBc6y5j?=
 =?Windows-1252?Q?u+fj1TE6cAgVi1ehJlCYZkGcvHR8wbXRpS612rgHJhSJbgWtB6GEu47Y?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: f1ae061f-1fbc-403e-880c-08d97ea50e6e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2021 15:16:03.0791
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DNMG0wXvBdOArFY9G/x1ZXM+PX+p50FFw+3gPbqR36cZOFtLSxdPVIpuHpEMfk4A+ek5QC4chp7hueTzAU+Tv33YnfOiSc/2TJxgm2yuIbw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3444
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I've recently started getting an internal compiler error when building
an aarch64 kernel. It only happens once in a while, and re-running the
task usually just succeeds, so I don't know how to reproduce or trigger
this at will.

Two examples:

===
  CC [M]  drivers/gpu/drm/nouveau/nvkm/subdev/fb/gm20b.o
  CC [M]  drivers/net/ethernet/mellanox/mlx5/core/rl.o
  CC [M]  drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp100.o
*** stack smashing detected ***: <unknown> terminated
In file included from .../kernel-source/arch/arm64/include/asm/atomic.h:15,
                 from .../kernel-source/include/linux/atomic.h:7,
                 from
.../kernel-source/include/asm-generic/bitops/atomic.h:5,
                 from .../kernel-source/arch/arm64/include/asm/bitops.h:26,
                 from .../kernel-source/include/linux/bitops.h:29,
                 from .../kernel-source/include/linux/kernel.h:12,
                 from .../kernel-source/include/linux/uio.h:8,
                 from .../kernel-source/include/linux/socket.h:8,
                 from .../kernel-source/include/uapi/linux/if.h:25,
                 from .../kernel-source/net/mac80211/led.c:7:
.../kernel-source/include/net/inet_sock.h: In function 'inet_sk_state_load':
.../kernel-source/arch/arm64/include/asm/barrier.h:114:8: internal
compiler error: Aborted
  114 |  union { __unqual_scalar_typeof(*p) __val; char __c[1]; } __u; \
      |        ^
.../kernel-source/include/asm-generic/barrier.h:142:29: note: in
expansion of macro '__smp_load_acquire'
  142 | #define smp_load_acquire(p) __smp_load_acquire(p)
      |                             ^~~~~~~~~~~~~~~~~~
.../kernel-source/include/net/inet_sock.h:312:9: note: in expansion of
macro 'smp_load_acquire'
  312 |  return smp_load_acquire(&sk->sk_state);
      |         ^~~~~~~~~~~~~~~~
Please submit a full bug report,
with preprocessed source if appropriate.
See <https://gcc.gnu.org/bugs/> for instructions.
.../kernel-source/scripts/Makefile.build:279: recipe for target
'net/mac80211/led.o' failed
make[3]: *** [net/mac80211/led.o] Error 1
make[3]: *** Waiting for unfinished jobs....
  CC [M]  drivers/net/ethernet/mellanox/mlx5/core/lag.o
===
  CC [M]  drivers/gpu/drm/nouveau/nvkm/nvfw/ls.o
  CC [M]  drivers/gpu/drm/drm_modeset_helper.o
  CC [M]  drivers/gpu/drm/drm_scdc_helper.o
*** stack smashing detected ***: <unknown> terminated
In file included from
.../kernel-source/include/linux/regulator/consumer.h:35,
                 from
.../kernel-source/drivers/gpu/drm/nouveau/include/nvif/os.h:27,
                 from
.../kernel-source/drivers/gpu/drm/nouveau/include/nvkm/core/os.h:4,
                 from
.../kernel-source/drivers/gpu/drm/nouveau/include/nvkm/core/oclass.h:3,
                 from
.../kernel-source/drivers/gpu/drm/nouveau/include/nvkm/core/device.h:4,
                 from
.../kernel-source/drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:4,
                 from
.../kernel-source/drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c:22:
.../kernel-source/include/linux/suspend.h:364:36: internal compiler
error: Aborted
  364 | extern void mark_free_pages(struct zone *zone);
      |                                    ^~~~
Please submit a full bug report,
with preprocessed source if appropriate.
See <https://gcc.gnu.org/bugs/> for instructions.
.../kernel-source/scripts/Makefile.build:280: recipe for target
'drivers/gpu/drm/nouveau/nvkm/nvfw/ls.o' failed
make[5]: *** [drivers/gpu/drm/nouveau/nvkm/nvfw/ls.o] Error 1
make[5]: *** Waiting for unfinished jobs....
  CC [M]  drivers/gpu/drm/drm_gem_framebuffer_helper.o
===

This is with hardknott, aarch64-oe-linux-gcc (GCC) 10.2.0, building
5.10.* kernels (5.10.45 and 5.10.65 in the cases above IIRC). The build
is visiting drivers/gpu/drm/ in both cases, but in the former case it's
not actually a TU in there that fails, but one in net/, so I'm not even
sure it it has to do with something peculiar to the drivers/gpu/drm/
modules.

Has anyone seem something like this, or any ideas for figuring out
what's going on?

Rasmus
