Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.92.73.39])
 by mx.groups.io with SMTP id smtpd.web10.25.1598290199297213229
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 10:29:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=Tn6nLa+G;
 spf=pass (domain: outlook.com, ip: 40.92.73.39, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=es946SrDUwlQ8OB0F9pwADW5F/arupzGjXfis6rkhP6ondhJrrQCa+e1K8qurGQM0dq5LK/bb+jnfgpB4D3Fy+PV5n7dkqypLv0OjXHBwvHjX2KOrqFx4dnmRaGx2mSebfOIom57rl45ErveUOQvsvFh1L0Smi+iNS1tFMBDkiRCnCDAP0un3Y0o8zdzoXzCubHAMI/3SpIW96UlJB9Uzrqo5p0b3gh/JItuISBvEBIbPiM7La/0dNxQjbOQ5FcEWcGn1/hMSaOcSjxVw+TLnn4y+PU7mOuT4TwPUndWm3HhMq7Fb1CDMLjg3PGnJZCLvuHxaZpkUNwqDz3Blsaw1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gGhS9oGbvX7vGbi1kwJei8mVOIXNw+Jr8phFkh72tbQ=;
 b=Yok96pSsypDRWrStcJFaJPMH8ZBTmDsj7MRTL4BwQfAJNKJJL/BnSR514AwPo/E4YWZPanok8F3IBf48IDZVVQlfmmtFKBSrN4aQYiTQQEXMGhuXD14CIGUSrQGkDDntOKgCltH5+eqPE5e4fHqMrflPf0o+AhJ/IRpxxvEfaOfJTVAhuhMtzqen32u0qg8ii/KW49tszli+1WThO1FsVpBJgHw86dyZgz64KfW7m3Oc/F1Vnu7CL/O7b/DwMkxv08GeuJw6bKQ4PhKtptCG6gbz+qrBN/qpggkNsCrsc85vrc5G/heSqaGqAJSippJUvSAIcuLlYqwNcj/RkFP2WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gGhS9oGbvX7vGbi1kwJei8mVOIXNw+Jr8phFkh72tbQ=;
 b=Tn6nLa+GAovFZQ7foZfLr6O6J0BEhikSYWTDVCdza6WkESmKFPGHmZuoP4GFb60wzUckVxzLQOcDMgqDJXxU7U9NxWFvCs+lFZ2ma79f3SlDgBCXz7gUOaaqC1+0a5QQBkMpHU+OmZWCPrNjzrECk1aZUodq3K6lE53jYoONdMNN9sou2VBRLU+fTTnS9ialiXF1B0w91GwEa/NG+T21VbLoASzyrPDmqsUsZMukPQbRAmku9pWWJOiu2p7+AxKqRMF2gYAU4C8KcdYVY3afYLPPeVPCz2de4soOzFSrVzpyL/sv+H5Nh9KXQBBOePmMUjl8KlK4n5/sJm5dKT4J7A==
Received: from HE1EUR04FT060.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0d::47) by
 HE1EUR04HT139.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0d::67)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24; Mon, 24 Aug
 2020 17:29:56 +0000
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 (2a01:111:e400:7e0d::4b) by HE1EUR04FT060.mail.protection.outlook.com
 (2a01:111:e400:7e0d::305) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24 via Frontend
 Transport; Mon, 24 Aug 2020 17:29:56 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:046E938CBCA4ABE5D9CB0AC9B2100AB3F9D9F7F6F19494B6A42A2D475D504537;UpperCasedChecksum:D4DB8E20EA467967A83CFD04DF850BF22B39964817A144D57EB0E2E26363280C;SizeAsReceived:9083;Count:48
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e]) by AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e%7]) with mapi id 15.20.3305.026; Mon, 24 Aug 2020
 17:29:56 +0000
Subject: Re: [yocto] Additional log handler
To: Joshua Watt <jpewhacker@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM7PR05MB6881DD773BB8FDC78B4470E1A8590@AM7PR05MB6881.eurprd05.prod.outlook.com>
 <e83e206763f44e2b5fd4622e8a336355df3bf655.camel@linuxfoundation.org>
 <5e250483-1277-7e3e-8422-a245e3978e15@gmail.com>
 <f5fefdf3d0e61080c8f36a76aec419274f0f3d2d.camel@linuxfoundation.org>
 <f312f1cd-c57a-fdc5-10a3-cc451947978b@gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <AM7PR05MB68814199019FD40821DA648FA8560@AM7PR05MB6881.eurprd05.prod.outlook.com>
Date: Mon, 24 Aug 2020 19:29:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <f312f1cd-c57a-fdc5-10a3-cc451947978b@gmail.com>
X-ClientProxiedBy: AM6PR04CA0039.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::16) To AM7PR05MB6881.eurprd05.prod.outlook.com
 (2603:10a6:20b:1a9::19)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <5a74321a-f316-524d-c7f0-05e5a4e66fef@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.87.123) by AM6PR04CA0039.eurprd04.prod.outlook.com (2603:10a6:20b:f0::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24 via Frontend Transport; Mon, 24 Aug 2020 17:29:56 +0000
X-Microsoft-Original-Message-ID: <5a74321a-f316-524d-c7f0-05e5a4e66fef@outlook.com>
X-TMN: [P6nuyJCb7m3T7bC969qSsleR0yn3wYNf]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 93dc9536-a493-4f84-1f4f-08d8485351c3
X-MS-TrafficTypeDiagnostic: HE1EUR04HT139:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Emox+rwUGbr5gxtgPm4Mt7p/ikH6V7u4Yxeyl2ArP9tFtAQBJ8qcHGbN02nNY89NdLq6/6M84DxmYz2gCvVPlsoM7Waznl78k/5kIoDEPeGkIgvrxU+7+myGadEHlL7m1hcmghXeDGcOIG74UNgCsMbh3S6VA2D01jbL5KYgNQxl2ppk4/bQ21TZwR+DuTy+sZqIQYUlvOaRHM5UW/Jt5Q==
X-MS-Exchange-AntiSpam-MessageData: 
	q3e/xPjnqNYETdZ7B5Ux9y+aqlN2Yt5gVVA9C57hKe+TUwI5iLt8h3bBsP/jeWdkwiEWfNXo7oCArHO8epMfx2wST0jcEbbVUYcPXzb1FT5HjPyN4Q+vV25BBLpBiFNJVVwCwPEeG2MvOg7i0PTVXQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93dc9536-a493-4f84-1f4f-08d8485351c3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2020 17:29:56.7069
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR04FT060.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR04HT139
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Thanks to both of you - seems like I missed out on BB_LOGCONFIG, but=20
it's exactly what I was looking for.
Regards
Konrad

On 24.08.20 15:59, Joshua Watt wrote:
>=20
> On 8/24/20 8:26 AM, Richard Purdie wrote:
>> On Mon, 2020-08-24 at 08:10 -0500, Joshua Watt wrote:
>>> The newer log handling uses Python's structure logging configuration
>>> [1], so you should be able to use whatever capabilities it has
>>> (including logging different domains/levels to a separate file). In
>>> fact, this is the only way logging is handled by core bitbake now;
>>> all of the other logging mechanisms used by the UI are additional
>>> configuration specified on top of the user's BB_LOGCONFIG file. If
>>> you are interested, you can see this in bitbake/lib/bb/ui/knotty.py.
>>> In that file is an additional tool that might be helpful. Around line
>>> 553, there are two commented lines of code:
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0 #import logging_tree
>>> =C2=A0=C2=A0=C2=A0=C2=A0 #logging_tree.printout()
>>>
>>> uncommenting them and installing the logging_tree python package will
>>> make bitbake dump the entire structured logging configuration to
>>> stdout on startup so you can look at it.
>> On a slightly different but related note, could we remove the
>> debug_domains code now? I assume that can all be handled by
>> BB_LOGCONFIG?
>=20
> Ah, right; you jogged my memory :) Structured logging still co-exists=20
> with the debug_domains, so it's not the *only* way the core speicfies=20
> logging messages. The main reason for this is that we still need to pass=
=20
> the set of active logging domains to the bitbake workers that they only=20
> send back requested logging levels over IPC instead of all log levels=20
> (per some code I believe you wrote Richard). It should the theoretically=
=20
> possible to send over the entire structured log config (which isn't very=
=20
> large) to the worker and add in worker side handlers to send back logs=20
> over IPC instead of the simplified list of logging domains (as a bonus,=20
> this should allow you to log anything on the worker, not just things in=20
> the "BitBake" domain). IIRC I tried to get this working in the original=20
> change, but it ended up being more complicated and not strictly=20
> necessary for the feature at hand (extra logging hashequiv on the AB) so=
=20
> I left in the debug_domain method of filtering in the workers. Since I=20
> had to leave that in, I also left in the UI code to directly deal with=20
> the debug domains. The log handling itself still all goes through Python=
=20
> logging, and it correctly merges the structured logging and user domains=
=20
> so that the actual logging domain level filter level passed to the=20
> workers is the lower of the user specified logging domain and whatever=20
> is specified for that domain in the structured config. The UI code could=
=20
> fairly easily be converted to instead map the command line arguments to=20
> structured logging configuration, which would remove any knowledge of=20
> them on the UI side.
>=20
>=20
> TL;DR No, we can't remove it yet, but we could with some work.
>=20
>=20
>>
>> Cheers,
>>
>> Richard
>>
