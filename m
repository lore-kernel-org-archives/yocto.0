Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B37D743CC
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 19:40:16 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.127])
 by mx.groups.io with SMTP id smtpd.web11.23950.1732131608129663325
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 11:40:09 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=ZOjcqVPg;
 spf=pass (domain: navimatix.de, ip: 40.107.105.127, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OLQkM3WBJy9EsceP2gYRiDHehXDI4OuI/h2dEemS0Ii6DuvJwB140SDn24tBXROs+swZb9g5jOJt0ULbvW/TgHAvZ8fVeBBPSW2CZbT8qyaBobtCiz4EIeLbszB6Aa3VqUrOMm3T99kqo7KI6K0z1aUedLSX/Glx08zvYUH/uWvzbWl2HvDZk77Fh7ON0FZ4QvAHKz/NEqmGpW80HpwrLgY0LXJzqjU7Em+TV87HXnkrHoquMUNOhXdDo28U4DtuiGQvSYoCWvTPD8+TAQxfUmSf6mYTr2HDKj56JFYGejRh1Mq/jiF+V2o/Db6YVy+JlrXfyxg3serWtwuQFZ41gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tz91nYWeZheg46qeIhzdaeBGcOTK0xCuvKiDsQOe22Q=;
 b=dNr6ozm5rCT9ldiScZTXTBfqVrgxZPrUCRG6WWyW1OWgApvyDH/yiFLBnRqd+YR8uYh28myBCtO69LV15wPi3EyiWFuRtiEK94HTQzNH2Xz5C2qZdWkxb57Qdgnm6eTNl9lgBqOPouBmFhZsNrdbXCDTs4vziqVCGRnTUwaEQz17gi7L9JFXRlRjXilWR8o3lYfeOcH4Gzv2689Q6ZqTdBi/1etAZd5um/oEqiNk47Ai4zZ3l3DEH6UzSjZrashcq12PMyGi7T4HvGgaCVKwBBnVlurzCAEZXduK3ezzxo58kZ7wOvN9qLWa8WixUStzLblUQV4it7P3Ixyq1Fu3wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tz91nYWeZheg46qeIhzdaeBGcOTK0xCuvKiDsQOe22Q=;
 b=ZOjcqVPgBdPTeTN9azRpUqxKyh/Lmsx/g+mGDh9rR3MV/7N7p4p9gfdOPmzxClh4/8nradoeCcQUXLrIN07gqbLytBR5V2oAYA9jFmacE0CjoZA8KO241zHXFOTUr+TgiPVH12i0I5cyE8/gK5Yv0njZY+xT8L1A0uBMqqtKB8A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by AM7PR01MB6642.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:1a5::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Wed, 20 Nov
 2024 19:40:04 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%6]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 19:40:02 +0000
Date: Wed, 20 Nov 2024 20:40:00 +0100
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: Gyorgy Sarvari <skandigraun@gmail.com>
CC: yocto@lists.yoctoproject.org
Subject: Re: [yocto] python3-ctypes pulls in ldconfig when no DISTRO_FEATURE
Message-ID: <hhw25qp3deomynq3r2viiwczszug4p4c7zghqcy7mqyewmporz@ea2ysnf6w5b5>
References: <binf5wyli6frlazzgmotontazgt3isp4jmkbsdgr2yeoaxhkqj@nxde6f7dfkuj>
 <b01e51f4-9abd-49b5-8889-2f036f5e7eec@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <b01e51f4-9abd-49b5-8889-2f036f5e7eec@gmail.com>
X-ClientProxiedBy: BE1P281CA0437.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:81::15) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|AM7PR01MB6642:EE_
X-MS-Office365-Filtering-Correlation-Id: 36b8eb64-1b44-43ee-25d0-08dd099b208e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?/FZqWCmQwnmvK2RRYhvx31xLI7OTMC75vigcrEzC5aJ5M5aBiYv4zH75Y79J?=
 =?us-ascii?Q?9eQLmj/UZhFo+6vfKPPXESn6+m4VhBJPsLmQfDX4qLzFzf6GhMBM9DCj8NpQ?=
 =?us-ascii?Q?i6bd3G0jiTFMhB/4ZWKExI6rM5hLqc3LE9ztdhrBAZNw8qaOgfxvBVWWbvDW?=
 =?us-ascii?Q?u+IYwTTk8ksehCUzWNd0wTSe8eod660O53AzDX25quqI0P/2eP5gyd7elI8r?=
 =?us-ascii?Q?qdTS3xMhj1YIOw7FGvFNCdKnQCEFEtTyR3BoGKoHAj9Sm84qi9AiAQ80wX7s?=
 =?us-ascii?Q?3coYf6inkZ3yjAAglES9fvycl1jIOo7HSe00ewL2GoXzL80zN3VYHOLDT4u8?=
 =?us-ascii?Q?XZ7pVwmrsLGk2UET8ul7CYd+6XaWUhL2IOuj14jysR6dsaqha6jMarQnohfQ?=
 =?us-ascii?Q?cvYlkukyBIm/IC8sQxIGMz/vwfOsvZiz1vylE/ZhddsxfdXlGyXxPkRCQqa+?=
 =?us-ascii?Q?7MY8xZ7KM54xt264jqaxOgnY7Zn2Z1Ms+uZ7KlXXcPSl8kZCyks3FN6rfanB?=
 =?us-ascii?Q?a+XUO5z+i4kFMS4PiQyBGS3IhDCj+BJ9u6i7bvsEmyh4zg88BKGP79UrgiyV?=
 =?us-ascii?Q?ZN2UErNvcqa8mSidbIywTKkszE1vEyUmjQiVPBLe0Dy0L9LBaWcwyCZwSY9Q?=
 =?us-ascii?Q?OXCWZgjCMjic4w4GG5M92pEqoU7Yl7tiaDq9HUp7HFuiZA95lAXKPPJgE/AX?=
 =?us-ascii?Q?J8ofPoUugVOQ99Qtc7qVmb2rc2AHfbkbbV4yM6UfMuFIJHKXwRq+ovklAQem?=
 =?us-ascii?Q?B9iJv6wT6MHZL6I5xrB+mHjd7xUO1lnBjXcdsoo7jztv5jf5cCmRW7GUIuxp?=
 =?us-ascii?Q?SAIJKTp0siBS2MMP5bCB130VGadMg2Hg0TRZb0+31dVEwsVF7ADH56+caWGt?=
 =?us-ascii?Q?sGL79TykWbnYT4vbi3bR8nT6S4mtXtLtxZUD/VFZlMNurgnGhEQVm9PVX3Td?=
 =?us-ascii?Q?ieKLsxrGiYsQQH3P5UmTEGz3F5NmB0QJGaQ9+YuLlBbv3KxZpxitQNiN+DR1?=
 =?us-ascii?Q?t/0blDSGzKPZKjcxqeT2hcLPo+dxM7e5VqUouTFG9Rjk5z0sfRUl+r0Ce556?=
 =?us-ascii?Q?0ES9uCk7CpqxJ/yd6hy5rzA3cUvqxvT7jHI9eDWv+NQG+xSXeUs/0H0L+tfH?=
 =?us-ascii?Q?64YkrYBfH8ak+C1lUL2ba2561+Cup9ZTikMwHA9TlKkoRfuOOalWC/62ySUd?=
 =?us-ascii?Q?qYEUsEW5zjFg7G3RhwhBVD30fW7+kzao2I41Npl4hjYmdbaGLM31zslafNUp?=
 =?us-ascii?Q?Js6JbaaVxqc8AlQkaozg?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?dW1xHZROvttcduCFKpOp4Ya9r5oTFNLf2MVkZ3dkTbckdwJNY/+EgeGn2765?=
 =?us-ascii?Q?y1pCyF9he9CXuaMRAYxts/luBTku+tqDeRil0wN0lpGdEeGcLJ0KCrSUMTus?=
 =?us-ascii?Q?mCHk0dWE5lPpGXVU0D+gXDvj8Cg1JRrmwYHt2RcngdPlDUR9qOycImqIE8jg?=
 =?us-ascii?Q?zLLdbb2xbE9MZmaUvuwgs9vTW+xcMUKt+PGVJhVDX/SjRRfzW2b4b2FsrL8w?=
 =?us-ascii?Q?jCruKMWlzofRHCCkiUjQya6lBWXXZPc8ygVS/Dx/VakP2wQ3Wsmketoa6Bbf?=
 =?us-ascii?Q?RPF8olSzPqeQVvBgzt6O1NfcPgY1z95pEbmidtucOtYOInOvheHGvIbzWd6/?=
 =?us-ascii?Q?xrkOwc+YX6NiJ64York8U9NntNf4yULGbek4uqtzlAEuf3D4XuiO5m2MokUc?=
 =?us-ascii?Q?gSfK+3mCjx2kljoh7h7Sns/rtlVGRDqwxWReoWdYDnNqiZo/cCFyG25sHibZ?=
 =?us-ascii?Q?GKSkq8RkGpbQ5PKpSiQ+SpA6hvt9shLcD8IagR3aniMaOG/yk+5ZYAXIT+8J?=
 =?us-ascii?Q?3S4/lA5Whc9G4v7H7xesn0uX9LUSt6Wo5EODS0+Jhy5dAB2b4omABPriV1DB?=
 =?us-ascii?Q?f/tUogrxnlCUhwIgE1d6ta8sPNTFmzQ0AEcA09oBquRA6YHy9P+0sXcYXtQc?=
 =?us-ascii?Q?oZoSFYLCO9OitidKccU1l63SwAcGs3c8Dee+YhPAT9Tftj8qevAQjR7TM1Iy?=
 =?us-ascii?Q?6+W1gsGPsswMFkTQzSWRT+T5S+nuHlMNWSeXdOdlgBNTsoIQpldZ8V3YrdqI?=
 =?us-ascii?Q?HJlCTLWZUeQfNVIHDHx+U1Qp89qKaruKX26NNv51Apximn9J9DD2YO4QzTyX?=
 =?us-ascii?Q?zmutWdemywwixSNcKaOxCHOTwqAOBy0cWCxyZMrUzRpLyniMPudLfOHsg3FN?=
 =?us-ascii?Q?JiAz4MtwVvYFwKJuccwyQNigexASzkAV5Gs8sJLP3l01ZJXGNDf6Y1WXccE5?=
 =?us-ascii?Q?HQe/r0S8VOudhC9cook3nLYk0K7IpU8T7nnAinZEKH1KCnUvtjHOtD+6XbpR?=
 =?us-ascii?Q?A85ajyMjkM1P3rOJuZO+jAvMzeBkXvzjau+RcjtkF5dyJj8jEylUrNCcB/iV?=
 =?us-ascii?Q?bU4SwnTmQVz1hCBYJ/ibyXggrihbzbKaN5r6JNk6eeAoKuFgvf23H0xlMYO1?=
 =?us-ascii?Q?HrqEgqU/fvFeVbnASOc2XWNZmRxQ8K04UkzyIvg/jGUUDA0fUtx2vptiR6kM?=
 =?us-ascii?Q?KJg0XRzoRz0e03GBll0ZuedfEMxvB8/VK/kC7J54qn11esqDcaBMlZWWb9dT?=
 =?us-ascii?Q?vNNTPX1Pqnk4k4S9PlcH9BqNL3jhofXaBfVcsmklOqBUmMOsLsj+pH6teVTY?=
 =?us-ascii?Q?7fMakauQuF0DK8a2th+ER8BOaEgsziGqWS06SyUYyCy7tQtOTGPDqwjAKz7E?=
 =?us-ascii?Q?sNA98HMIg8RHEIdEKc2hkbABumOvMVkv0tPOUF24ROCU6fMDUPB7in/bCjKw?=
 =?us-ascii?Q?GRG2vzKiGF49etJiggMEMNJdBHCHYIkEDrhkPKnWGUi8TO6tKBQmvZ4sQgxy?=
 =?us-ascii?Q?EaaKCbQFz0TCbKyoHyOiIuaxXbiDu5MHffeAq/zSg5XJwqeF0Mga5V7kIzl5?=
 =?us-ascii?Q?N1vIvHv9j4eIAQkOS1HB/wuWw2MWlC4aHGdRiJbPtelEZZ9gl+bOM17zbuwX?=
 =?us-ascii?Q?/g=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 36b8eb64-1b44-43ee-25d0-08dd099b208e
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 19:40:02.9017
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iwwWmgz2Lbtj8kjdLf2eoyXrxQe21GCV4o5QGpJLY5K/Wt53JN1W5Ci+Z2wfp9A4Ckec8tYuOGsXv5E0o/fkqUuoXXFuFrnFJ8XuzvfTV34=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR01MB6642
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 19:40:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64319

Gyorgy Sarvari schrieb am Mi 20. Nov, 19:56 (+0100):
> Isn't ldconfig a must for python3-ctypes? It[0] seems to call the ldconfi=
g
> binary directly. I'd expect the package to break (at least for some
> usecases) without ldconfig.
>=20
> [0]: https://github.com/python/cpython/blob/6c1a4fb6d400827155fd70e48d682=
e35397731a1/Lib/ctypes/util.py#L224

This code in line 224 should not be used on Yocto Linux, because of the
condition in line 205

    if sys.platform.startswith(("freebsd", "openbsd", "dragonfly")):

In line 282 the Linux function starts:

        def _findSoname_ldconfig(name):
=E2=80=A6
            try:
                with subprocess.Popen(['/sbin/ldconfig', '-p'],
                                      stdin=3Dsubprocess.DEVNULL,
                                      stderr=3Dsubprocess.DEVNULL,
                                      stdout=3Dsubprocess.PIPE,
                                      env=3D{'LC_ALL': 'C', 'LANG': 'C'}) a=
s p:
                    res =3D re.search(regex, p.stdout.read())
                    if res:
                        return os.fsdecode(res.group(1))
            except OSError:
                pass

According to GitHub's code search this is the only usage that provides a
proper fallback:

        def find_library(name):
            # See issue #9998
            return _findSoname_ldconfig(name) or \
                   _get_soname(_findLib_gcc(name)) or _get_soname(_findLib_=
ld(name))


I would say, the Python code support the non-ldconfig case.

From you other post:

> Actually looking at it a bit more, it seems to recover from missing
> ldconfig, and it tries other ways. Sorry for the spam, please ignore.

No, I think you provided valuable information they help to clarify the
requirements for ldconfig. Thanks.


But I'm not a Python expert. At least, I can tell our system works without
ldconfig, but maybe we never trigger the interesting code paths.

