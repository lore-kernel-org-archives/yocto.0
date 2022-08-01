Return-Path: <ssarmadi@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9ADAC00144
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 13:29:58 +0000 (UTC)
Received: from alln-iport-5.cisco.com (alln-iport-5.cisco.com [173.37.142.92])
 by mx.groups.io with SMTP id smtpd.web10.24722.1659360590584025535
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 06:29:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cisco.com header.s=iport header.b=kc804j8F;
 spf=pass (domain: cisco.com, ip: 173.37.142.92, mailfrom: ssarmadi@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=14353; q=dns/txt;
  s=iport; t=1659360590; x=1660570190;
  h=from:to:subject:date:message-id:mime-version;
  bh=P8g+4/4CFO9kfzpEnF/d2FWCsuN3Bau9PKYfvDPAs4U=;
  b=kc804j8FpNRk08BpFtlxDw0KpTDQ3mxc8tqRj9ormYRWRnp4LSr74VCN
   CYrjRVFz+5OqFM3slwqTQhyCSlOB4QYd5JT6o28PdURieTa7R542U8+Aw
   PNQptP1e6jvioh1xV7yoFJAwGf6IuwPeWK4eKCIpRUHdeyvqIVNdG5JQo
   Y=;
X-IPAS-Result: =?us-ascii?q?A0DvAQCC1OdimI0NJK1agQmBT4EhMVJ/Alo6RYgaA4Uvh?=
 =?us-ascii?q?QtdgiWWOIUYgSwUgREDVAsBAQENAQEzDwQBAYISgnQChHUCJTUIDgECBAEBA?=
 =?us-ascii?q?QEDAgMBAQEBAQEDAQEFAQEBAgEHBBQBAQEBAQEBAQkUBwYMBQ4QJ4VoAQyGW?=
 =?us-ascii?q?y4BATgRAUM9JwQbGoJbAYIOVwMyAwGYbAGBPwKKH3iBM4EBgggBAQYEBIUQG?=
 =?us-ascii?q?II4CYE9gxqESYMZhCQnHIFJRIEVQ4dQG4QLggwil0kHNwNFHkIDC1YICRcSE?=
 =?us-ascii?q?BACBBEaCwYDFj4JAgQOA0AIDQMRBAMPGAkSCBAEBgMxDCULAwUPDAEGAwYFA?=
 =?us-ascii?q?wEDGwMUAwUkBwMcDyMNDQQfHQMDBSUDAgIbBwICAwIGFQYCAk45CAQIBCsjD?=
 =?us-ascii?q?wUCBy8FBC8CHgQFBhEIAhYCBgQEBAQWAhAIAggnFwcTMxkBBVkQCSEcKBAFB?=
 =?us-ascii?q?hMDIG8FRQ8oMzU8EBsfGwqBEiorFQMEBAMCBhgDAyICEC4xAxUGKRMSLQkrd?=
 =?us-ascii?q?QkCAyJtAwMEKi4DCSAEHAcJlxSDBxMBMHaBCjY8n3+hHgqDUYsilRIVhUajI?=
 =?us-ascii?q?ZZ8IKcLAgQCBAUCDgEBBoFjAoIRcBWDIwlIGQ+OOR6CXV6FZYR5dTsCBgsBA?=
 =?us-ascii?q?QMJjwYBAQ?=
IronPort-PHdr: A9a23:z+oZiB2C0Nh2/HCBsmDPr1BlVkEcU/3cMg0U788hjLRDOuSm8o/5N
 UPSrfNqkBfSXIrd5v4F7oies63pVWEap5rUtncEfc9AUhYfgpAQmAotSMeOFUz8KqvsaCo3V
 MRPXVNo5Te1K09QTc3/fFbV5Ha16G16Jw==
IronPort-Data: A9a23:Sfq7NKvmJkOtuUiCgbTLJyp6u+fnVENeMUV32f8akzHdYApBsoF/q
 tZmKWvXbq7YYGbwKYsiOongp0kAv8OEx4c2QAdq+ysxEysWgMeUXt7xwmUckM+xwmwvaGo9s
 q3yv/GZdJhcokf0/0vrav67xZVF/fngqoDUUIYoAQgsA14/IMsdoUg7wbRh0tYx2YHR7z6l4
 LseneWOYDdJ5BYsWo4kw/rrRMRH5amaVJsw5zTSVNgT1LPsvyB94KE3ecldG0DFrrx8RYZWc
 QpsIIaRpQs19z91Yj+sfy2SnkciGtY+NiDW4pZatjTLbhVq/kQPPqgH2PU0ZUoMrBWznIlL1
 tRchKWAZlwuNbHVh7FIO/VYO3kW0axu8bvDJz20ttaeih2AeHr3yPIoB0YzVWEa0r8oWicVq
 7pBc3ZUMknra+GemNpXTsF3nc05KcDnPasUu2prynfSCvNOrZXrEvybvIIHjG1r7ixINa39f
 JdFMGpwVg/ZfkVeBH0dLb0ZmOj90xETdBUB+A7K+sLb+VP73Qt6zL/FNNvOZsfMVMJegkGAv
 GXE8m/lRBYAO7SiJSGt+3aogKrEmjn2HdJUH7yj/fksi1qWroAONPEIfVe2+t6ZsE3nYcxeO
 n0tygV1qqMu7VP+G7ERQCaEiHKDuxcdXf9ZHOs79ByBx8LoD+CxWzJsotlpNYJOiSMmedA5/
 gTSxoq2W1SDpJXQGCzDqebNxd+nEXJNRVLucxPoWufsDzPLiYU3gxSnoj1LT/Pt14ad9d0dP
 1m3QMUWjrEXi4sA0L+2uACBiDO3rZ+PRQkwjuk2Yo5Hxl0hDGJGT9X1gbQ+0RqmBNzIJrVml
 CNf8/VyFMhUUfmweNWlGY3h5o2B6fefKyH7ilVyBZQn/DnF0yf9INEKsWskfx8wY5tsldrVj
 Kn75F05CHh7YSvCUEOLS9nZ5zkClPK5To21Cpg4kPIXOscoHON4wM2eTRfAgz+y+KTduao+I
 pycOd29FmoXDL8P8dZFb7l17FPf/QhnnTm7bcmil3yPiOPCDFbIGeZtGAbfNYgRsfLbyC2Lq
 Iw3H5XRlH1ivBjWP3O/HXg7dw5adBDWxPne9qRqSwJ0ClM9Qz14VKaOm+hJlk4Mt/09q9okN
 0qVAidwoGcTT1WdQelWQhiPsI/SYKs=
IronPort-HdrOrdr: A9a23:WdgdxK6BeVFPjDATVwPXwUOBI+orL9Y04lQ7vn2ZFiY6TiXIra
 +TdaoguSMc0AxhI03I6urwQpVoIEmsvaKdhLNxAV7MZniehILFFvAB0WKA+UyqJ8SdzJ8k6U
 4IScEXY7ecbSkYsS+Q2njdLz9U+qjgzEnev5a4854Cd3AOV4hQqyNCTiqLGEx/QwdLQbAjEo
 CH28ZBrz28PVwKc8WSHBA+LqL+juyOsKijTQ8NBhYh5gXLpyiv8qTGHx+R2Qpbey9TwI0l7X
 POn2XCl+ieWrCAu1PhPl3ontprcejau5p+7Qu3+4gowwDX+0mVjUJaKv6/VX4O0aOSAR0R4a
 TxSl8bTrhOAjXqDySISd+H4Xim7N7ogEWSjWNwyEGT3vDRVXY0DdFMipledQac4008vMtk2K
 YOxG6BsYFLZCmw6xgVyuK4Ii2CrHDE1UYKgKoWlThSQIEeYLheocgW+15UCo4JGGb/5Jo8GO
 djAcnA7LIOGGnqJkzxry1q2pihT34zFhCJTgwLvdGUySFfmDR8w1EDzMISk38c/NY2SoVC5e
 7DLqN0/Ys+OPM+fOZ4HqMMUMG3AmvCTVbFN3+TO03uEOUdN3fEu/fMkccIDSGRCe81JbcJ6e
 X8uQljxBAPkmrVeL2z4KE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,208,1654560000";
   d="scan'208,217";a="919157823"
Received: from alln-core-8.cisco.com ([173.36.13.141])
  by alln-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 01 Aug 2022 13:29:49 +0000
Received: from mail.cisco.com (xfe-rtp-002.cisco.com [64.101.210.232])
	by alln-core-8.cisco.com (8.15.2/8.15.2) with ESMTPS id 271DTnU6017775
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Mon, 1 Aug 2022 13:29:49 GMT
Received: from xfe-rtp-003.cisco.com (64.101.210.233) by xfe-rtp-002.cisco.com
 (64.101.210.232) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Mon, 1 Aug 2022
 09:29:48 -0400
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (64.101.32.56) by
 xfe-rtp-003.cisco.com (64.101.210.233) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14
 via Frontend Transport; Mon, 1 Aug 2022 09:29:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QaZp8O5xOx7SBFAPt7A/7p8tUDYsskiFGaNntC8G+2AgW3tjzfrIz/0nbLWRRM4DpO0t1x8TjPwkFYXTadnavpaFBchXFVcgnPxTnk5WEeEMbQrTndRbXvjPFOb9lGC70GTyeMsvSQiX7mtERgPFdQHqADfqg6v4plXbi6FK3X/yqL7ldujkcuXGY9kO5eHEh99FXwLnHS+p7wJRkWb+GKlcGoNeuk46wkGLTMG456RZiSMLeKxBdUwXK7n/JsLjoU46xOznIfyCljNkIIxQRBnEdy3cgGmewN7EYABiehTjEhSKhYg12LmSh5KTS23umBFBwvJKe96aT1d4ucD+Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x7tGMyAX8yBpqCJpHZ1hi5PN+ZT416xdUAxkCdVEkoc=;
 b=VvnSimvvE/5wKqrv7YokYlYypGvo0y/KD3Q3zYF6dr/3sYg3GxAOEMnJYpvQZ86F8XBcQwM+s4S1IIFCA245pcIT7/UZHLlPniv6tA7GEz9Jn2qj7DL1XCwI7HOdEaXGj9p0ztdhRBODd0h5pBiu3J+IHiR8lVG5mxy/N520sSCt8YTIuRJAiYz5ZRxRxuz1aOiZ1r2d7HarCVuMog/d8DjT9vCgAD2YJR6V0GnggzIXyP8Vjh9uB6bmds0HRXON+HnO6BxSgND01PhDylg9hukAy4lmrYlGL/gy/CqLr+zY5ARflAHP0eFqpKHuelUbn0Fr6Pf1hS3CxEhAoryteQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com;
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x7tGMyAX8yBpqCJpHZ1hi5PN+ZT416xdUAxkCdVEkoc=;
 b=z/WzmWtBviTauY8tAw3OfY91DfbieAJG4mou1Wr+zJIw+blWCcha+Rl6wWbHKO7SWNoFlq9RzXIgBHGHFZz9wB/Qjk0N4F6O4rtGkHkelsL39FXf4OwZt+uUdc6a6YcSD//n+Su3ootRDyhdW6bb0S60FeCQAPBdxbsbjjowdiU=
Received: from CO1PR11MB4851.namprd11.prod.outlook.com (2603:10b6:303:9b::13)
 by DM6PR11MB3818.namprd11.prod.outlook.com (2603:10b6:5:145::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.12; Mon, 1 Aug
 2022 13:29:46 +0000
Received: from CO1PR11MB4851.namprd11.prod.outlook.com
 ([fe80::ed53:1881:4266:2b2d]) by CO1PR11MB4851.namprd11.prod.outlook.com
 ([fe80::ed53:1881:4266:2b2d%5]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 13:29:46 +0000
From: "Sona Sarmadi (ssarmadi)" <ssarmadi@cisco.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: error building core-image-full-cmdline image on kirkstone for powerpc
 64 (meta-freescale, t1024rdb-64b machine)
Thread-Topic: error building core-image-full-cmdline image on kirkstone for
 powerpc 64 (meta-freescale, t1024rdb-64b machine)
Thread-Index: AQHYpaq+YWXVh4hojkun0Cp0pu1xCw==
Date: Mon, 1 Aug 2022 13:29:46 +0000
Message-ID: 
 <CO1PR11MB485158C31DB3B7F65C27C442D29A9@CO1PR11MB4851.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cisco.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f847a94-eb77-4649-b009-08da73c1e6d7
x-ms-traffictypediagnostic: DM6PR11MB3818:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UmRfv6ZgHivCNxv8HR91ZlJqRdFGY/VCDWvKvSH6g6pk7fiteKRN4RUoLpj6l/XMqxdskvfi9LhamJsW6wDQ4EPtQZ4MKR55fSUQ1/3hOVP4+LJBiWS1CKWifkLx+U9xcQjH4ryHLBvYGMmWaE5+wsJqVgePTRvNF8ih6fdqVnIoouqmcpaDZZdHhow+CIEmzUtvoBtZETU6d7oKsmfCx/lXBenATuZeUFdcEEOIc3vfMc24YtWk35ntJLhsL0BiNY7mgsVb6fgvQAd22FsU3fN3GNzdBjPDbHVIDQbiMvJmRofL4ccqs6xeQm6kxitxybdmXYBcgAZY0+t6CdMR5a+4fdT2KkfNB6ChTwJBZyuKMMNmiZdl0uhKAcVrfkpYOcaeLNj8y8Dv9O8qp/89h/U2tDhFxXjWaR1Gkb5G7UeKB+5x50u6nYJ6WcfI2RE2QMJnVXxv3635TVgexsOvgXxt38p7AEWcHXA3eBJzAmlK5hKBscWvTUXcoTrzXBR1RGzUK7KBkdt9bKHjLcGLaRGs2v+mDeMUCRNz3/C/JeodQuBm2f1c2tU0W+IWcHLuRgLOHMUELMNM2LpyuPvcf+WRHqQ+5LE09oY6KD+JqGCYdxcnVjHYQWT3T5AHdkQn1pyOOTLojagJTfIQcWbt4I1NsEnJ0nLT0PLbrSaL0N8q5cXTwQ2S/lYfNfBbKaV5qtqQNRrESBErpI/grErkKw6ieljB2db4/m4dsMKTnmuvvTRYZQIVzZ/XUjnjqBRAPODg/L7rdXJ0I6u5A74rMNO4ii9p97LNwaW5DpArmOeoItSyYTEskGphJcTm58VB
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4851.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(136003)(366004)(346002)(39860400002)(396003)(66446008)(66476007)(66946007)(71200400001)(66556008)(8676002)(5660300002)(91956017)(76116006)(41300700001)(6916009)(64756008)(52536014)(478600001)(8936002)(316002)(2906002)(9686003)(186003)(33656002)(6506007)(7696005)(55016003)(38070700005)(38100700002)(86362001)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?CDIbJaBYM2ZxqS8YyvOHQKH1Ihim1neB8U2SnpQpre/98IKwcxJeAOdI?=
 =?Windows-1252?Q?E9N5ydG8uF903d1+7kpmGIs4blrT8H+U9JmE5yKTIz+w5TZTwLvTFHx5?=
 =?Windows-1252?Q?5Bcni4ohkhJx0kzeGC84fLNZNrB9zw1jsSy9xk/J5/bRKj4XrItpBKk3?=
 =?Windows-1252?Q?c8lwTudozvQouYEKYq0hDvtCf4sQoo3kdV6110m2qyJ3VzBByv5JXzlt?=
 =?Windows-1252?Q?MUl/424QstzIoAjUnaUh0cn1WzS+BhSnNgtsXjPxO98XBVvbFSa67pbX?=
 =?Windows-1252?Q?rPLLNwTPkGeSO4zlIuRTv9MaRGOebVoL0XJooXQrBXsrU/DlYrflh9cO?=
 =?Windows-1252?Q?SuGwt+2ci5Uq8v7oCM+iT4V2gH40Pe/EUQA15C0RbB5ZiG7BBD7G/I8R?=
 =?Windows-1252?Q?E/SLCN2GLzz5AiZnJ7Bb0ptIYQADUpCzLAurxV2oGxv6qQSzLtIbjS/2?=
 =?Windows-1252?Q?iUzLtyNggxZnPhCAARgPmjdNgqy/wx5P1d0TObIy41Zs+XCQHK98EYGP?=
 =?Windows-1252?Q?hyd5JNSuQ5SRw06eoWJA5fAnrPgFGbEmTq8lvJXeB+h2F8B0U7fppP5b?=
 =?Windows-1252?Q?p9tM8vntdB4T/mQqrJbabBGWRm1ldEa/jtSdS9u7bD8X7BFep21IUFPA?=
 =?Windows-1252?Q?YtyX6/uBAMNzrbMr6909HEuHHmObIfCX0k+W3VHG21YWzLRXk3DJernP?=
 =?Windows-1252?Q?0TB8XhdYBLeOG4glcO6PDHI95czJUK3WSu937v+tkN3bP5Cii25DbcGq?=
 =?Windows-1252?Q?qiwc9ianaAvXve5eFWYBpuR4++eqd/IEK75GfvZdTpk0ACgZomIFfmfZ?=
 =?Windows-1252?Q?9jmvzH/1NomJFfq51e5xecE9ZX1hECZXeijO7elqYTNzl/WsfnF+Av0K?=
 =?Windows-1252?Q?ylthhGoKhnntZu5qtgQa8/J7sU03ySf4p+DsANc1JGtyfW/JzkeyG9fR?=
 =?Windows-1252?Q?7xSZ+Gl2qMjkAUcLXSR0qNkcIZotmXt40tNNKsvHTYnRV/imu4j188vZ?=
 =?Windows-1252?Q?bRWrIlF0669goY2sd3LfDC38O5UqjXYcD3266nZzEfvGgXVqcHubY8h6?=
 =?Windows-1252?Q?6hQYO7I7x9Q443tICunutd4L2LqriC6ZWmr36mqgE92Yc98UA5vIVtqy?=
 =?Windows-1252?Q?KZCCUNDIX3ifVef8YaGc5znHOyNYlF0T9RHaocE+paDOgQAKI2kK6uq9?=
 =?Windows-1252?Q?p4RxBgovV0XIQ8/EJjq4KKQOtwBACVU+BbJY7YarCZ0wa9lWWj+Ts1vr?=
 =?Windows-1252?Q?e29m3Wa4x/qryuWQK7PAE4mhN6UxxDxrWGDUttbP98oCBH8kWvn2rRka?=
 =?Windows-1252?Q?6ObzT5xA5p/1AYDEI/OmnxYr2W+r8vo3Yeod2lj39naw4DSVOpzl2o6u?=
 =?Windows-1252?Q?YUOclgA4TZxMUrwyGw4XsBTIhZmN9y3BuHCBiNCz0mMEwbhroUjVXQsX?=
 =?Windows-1252?Q?NwjWbkjF0S65oPORweN1qA5BRCOqiqTOcNNfTnuFLSUgUcrIisSFAozn?=
 =?Windows-1252?Q?UUnY9R0e5axPM3Go/35VwMp+m4a0QoGuTHlbGZTyTZ+qEvQkLUWecqIy?=
 =?Windows-1252?Q?EoyLaChefeidp6M1SP3pqFq4pNKNDJZ3c+1XsvxIDtg/aSqyk/0/2CD0?=
 =?Windows-1252?Q?hEtxYlQo7XKtiyIMkzPBYjIaB6Uqjh3nlj+XKbltMhHPSNOFWAjK1i2c?=
 =?Windows-1252?Q?iNWTfjgzsNOsOaay3eEMWxPHPKLrh1Em1PPXC+zX8hjUb3snrXdOnYxK?=
 =?Windows-1252?Q?wXweMaL7Qh6ulrYdqBs1/6xErdOrrMv7IkXc6QcfE7BKTrLm9RShDqX/?=
 =?Windows-1252?Q?M1/UQQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CO1PR11MB485158C31DB3B7F65C27C442D29A9CO1PR11MB4851namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4851.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9f847a94-eb77-4649-b009-08da73c1e6d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2022 13:29:46.4968
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 5hKl0WGSI20Kbrvk+RzZeu0pVX6Kp4yJQq+uQRyNdZrsX+ObJo6kYyHpMnnDBorYaZ2tKEcCTMl4gHiRJ8vaEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3818
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 64.101.210.232, xfe-rtp-002.cisco.com
X-Outbound-Node: alln-core-8.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 13:29:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57714

--_000_CO1PR11MB485158C31DB3B7F65C27C442D29A9CO1PR11MB4851namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I get some errors when I build =93core-image-full-cmdline=94 for t1024rdb-6=
4b machine. I fix the error then I get another one, so I wonder if anybody =
has seen these errors or if meta-freescale (kirkstone) has been tested/used=
 by someone?


This is what I do:

  1.  clone poky kirkstone
  2.  clone meta-freescale kirskstone
  3.  edit conf/local.conf and add: MACHINE ??=3D "t4240rdb-64b"
  4.  edit conf/bblayer.conf and add meta-freescale layer
  5.  bitbake core-image-full-cmdline
Here are the errors I get:
#error 1:

| make -f /home/sona/shared/yocto-kirkstone/builds/ppc64/tmp/work/t1024rdb_=
64b-poky-linux/u-boot-qoriq/2021.04+fslgit-r0/git/scripts/Makefile.build ob=
j=3Ddrivers
| powerpc-pokymllib32-linux-ld: board/freescale/t102xrdb/cpld.o:/home/sona/=
shared/yocto-kirkstone/builds/ppc64/tmp/work/t1024rdb_64b-poky-linux/u-boot=
-qoriq/2021.04+fslgit-r0/git/board/freescale/t102xrdb/cpld.h:24: multiple d=
efinition of `cpld_data_t'; board/freescale/t102xrdb/t102xrdb.o:

/home/sona/shared/yocto-kirkstone/builds/ppc64/tmp/work/t1024rdb_64b-poky-l=
inux/u-boot-qoriq/2021.04+fslgit-r0/git/board/freescale/t102xrdb/cpld.h:24:=
 first defined here


Vim cpld.h +24
struct cpld_data {
        u8 cpld_ver;            /* 0x00 - CPLD Major Revision Register */
        u8 cpld_ver_sub;        /* 0x01 - CPLD Minor Revision Register */
        u8 hw_ver;              /* 0x02 - Hardware Revision Register */
        u8 sw_ver;              /* 0x03 - Software Revision register */
        u8 res0[12];            /* 0x04 - 0x0F - not used */
        u8 reset_ctl1;          /* 0x10 - Reset control Register1 */
        u8 reset_ctl2;          /* 0x11 - Reset control Register2 */
        u8 int_status;          /* 0x12 - Interrupt status Register */
        u8 flash_csr;           /* 0x13 - Flash control and status register=
 */
        u8 fan_ctl_status;      /* 0x14 - Fan control and status register  =
*/
        u8 led_ctl_status;      /* 0x15 - LED control and status register *=
/
        u8 sfp_ctl_status;      /* 0x16 - SFP control and status register  =
*/
        u8 misc_ctl_status;     /* 0x17 - Miscellanies ctrl & status regist=
er*/
        u8 boot_override;       /* 0x18 - Boot override register */
        u8 boot_config1;        /* 0x19 - Boot config override register*/
        u8 boot_config2;        /* 0x1A - Boot config override register*/
} cpld_data_t;
Is =93cpld_data_t=94 supposed to be a type definition (as the =93_t=94 suff=
ix indicates) or a variable declaration? Variable declarations in header fi=
les need =93extern=94 and an accompanying variable definition in some C fil=
e.


#error 2:

   File "../yocto- kirkstone/builds/ppc64/tmp/work/t1024rdb_64b-poky-linux/=
u-boot-qoriq/2021.04+fslgit-r0/git/tools/binman/../binman/control.py", line=
 11, in <module>
|     import pkg_resources
| ModuleNotFoundError: No module named 'pkg_resources'

meta-freescale/recipes-bsp/u-boot/u-boot-qoriq_2021.04.bb

#error 3:

 ..yocto-kirkstone/builds/ppc64/tmp/work/t1024rdb_64b-poky-linux/lttng-modu=
les/2.13.3-r0/lttng-modules-2.13.3/src/wrapper/kallsyms.c:20:3: error: #err=
or "LTTng-modules requires CONFIG_KPROBES on kernels >=3D 5.7.0"
|    20 | # error "LTTng-modules requires CONFIG_KPROBES on kernels >=3D 5.=
7.0"


Thanks --Sona


--_000_CO1PR11MB485158C31DB3B7F65C27C442D29A9CO1PR11MB4851namp_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
p.auto-cursor-target, li.auto-cursor-target, div.auto-cursor-target
	{mso-style-name:auto-cursor-target;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:279724303;
	mso-list-template-ids:708232072;}
@list l1
	{mso-list-id:1794402626;
	mso-list-type:hybrid;
	mso-list-template-ids:-2001419238 134807567 134807577 134807579 134807567 =
134807577 134807579 134807567 134807577 134807579;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style>
</head>
<body lang=3D"en-SE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"SV">Hi everyone,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I get some errors when I build =
=93core-image-full-cmdline=94 for
</span><span style=3D"mso-fareast-language:EN-GB">t1024rdb-64b</span><span =
style=3D"mso-fareast-language:EN-GB">
<span lang=3D"EN-US">machine. I fix the error then I get another one, so I =
wonder if anybody has seen these errors or if meta-freescale (kirkstone) ha=
s been tested/used by someone?
<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"auto-cursor-target"><span lang=3D"EN-US">This is what I do: </s=
pan><o:p></o:p></p>
<ol start=3D"1" type=3D"1">
<li class=3D"auto-cursor-target" style=3D"mso-list:l1 level1 lfo2">clone po=
ky kirkstone<o:p></o:p></li><li class=3D"auto-cursor-target" style=3D"mso-l=
ist:l1 level1 lfo2">clone meta-freescale kirskstone<o:p></o:p></li><li clas=
s=3D"auto-cursor-target" style=3D"mso-list:l1 level1 lfo2"><span lang=3D"EN=
-US">edit conf/local.conf and add: MACHINE ??=3D &quot;t4240rdb-64b&quot;</=
span><o:p></o:p></li><li class=3D"auto-cursor-target" style=3D"mso-list:l1 =
level1 lfo2"><span lang=3D"EN-US">edit conf/bblayer.conf and add meta-frees=
cale layer</span><o:p></o:p></li><li class=3D"auto-cursor-target" style=3D"=
mso-list:l1 level1 lfo2"><span lang=3D"EN-US">bitbake core-image-full-cmdli=
ne</span><o:p></o:p></li></ol>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Here are the errors I get:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#error 1:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black;mso-fareast-language:EN-G=
B">| make -f /home/sona/shared/yocto-kirkstone/builds/ppc64/tmp/work/t1024r=
db_64b-poky-linux/u-boot-qoriq/2021.04+fslgit-r0/git/scripts/Makefile.build=
 obj=3Ddrivers<br>
| powerpc-pokymllib32-linux-ld: board/freescale/t102xrdb/cpld.o:/home/sona/=
shared/yocto-kirkstone/builds/ppc64/tmp/work/t1024rdb_64b-poky-linux/u-boot=
-qoriq/2021.04+fslgit-r0/git/board/freescale/t102xrdb/</span><span style=3D=
"color:red;mso-fareast-language:EN-GB">cpld.h:24:
 multiple definition of `cpld_data_t'; </span><span style=3D"color:black;ms=
o-fareast-language:EN-GB">board/freescale/t102xrdb/t102xrdb.o:<br>
<br>
/home/sona/shared/yocto-kirkstone/builds/ppc64/tmp/work/t1024rdb_64b-poky-l=
inux/u-boot-qoriq/2021.04+fslgit-r0/git/board/freescale/t102xrdb/cpld.h:24:=
 first defined here<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"SV">Vim </span><span style=3D"color:bl=
ack;mso-fareast-language:EN-GB">cpld.h</span><span lang=3D"SV" style=3D"col=
or:black;mso-fareast-language:EN-GB"> +</span><span style=3D"color:black;ms=
o-fareast-language:EN-GB">24<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"mso-fareast-language:EN-GB">struct cpld_data {<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 cpld_ver; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;/* 0x00 - CPLD Major Revision Register */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 cpld_ver_sub; &nbsp; &nbsp; &nbsp; &nbsp;/* =
0x01 - CPLD Minor Revision Register */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 hw_ver; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;/* 0x02 - Hardware Revision Register */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 sw_ver; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;/* 0x03 - Software Revision register */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 res0[12]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;/* 0x04 - 0x0F - not used */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 reset_ctl1; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;/* 0x10 - Reset control Register1 */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 reset_ctl2; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;/* 0x11 - Reset control Register2 */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 int_status; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;/* 0x12 - Interrupt status Register */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 flash_csr; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; /* 0x13 - Flash control and status register */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 fan_ctl_status; &nbsp; &nbsp; &nbsp;/* 0x14 =
- Fan control and status register &nbsp;*/<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 led_ctl_status; &nbsp; &nbsp; &nbsp;/* 0x15 =
- LED control and status register */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 sfp_ctl_status; &nbsp; &nbsp; &nbsp;/* 0x16 =
- SFP control and status register &nbsp;*/<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 misc_ctl_status; &nbsp; &nbsp; /* 0x17 - Mis=
cellanies ctrl &amp; status register*/<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 boot_override; &nbsp; &nbsp; &nbsp; /* 0x18 =
- Boot override register */<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 boot_config1; &nbsp; &nbsp; &nbsp; &nbsp;/* =
0x19 - Boot config override register*/<br>
&nbsp; &nbsp; &nbsp; &nbsp; u8 boot_config2; &nbsp; &nbsp; &nbsp; &nbsp;/* =
0x1A - Boot config override register*/<br>
} cpld_data_t;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is =93</span><span style=3D"mso=
-fareast-language:EN-GB">cpld_data_t</span><span lang=3D"EN-US" style=3D"ms=
o-fareast-language:EN-GB">=94 supposed to be a type definition (as the =93_=
t=94 suffix indicates) or a variable declaration?
 Variable declarations in header files need =93extern=94 and an accompanyin=
g variable definition in some C file.</span><span lang=3D"EN-US"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#error 2:<o:p></o:p></span></p>
<p>&nbsp; &nbsp;File &quot;<span lang=3D"EN-US">../yocto-</span><span lang=
=3D"EN-US"> </span>kirkstone/builds/ppc64/tmp/work/t1024rdb_64b-poky-linux/=
u-boot-qoriq/2021.04+fslgit-r0/git/tools/binman/../binman/control.py&quot;,=
 line 11, in &lt;module&gt;<br>
| &nbsp; &nbsp;<span style=3D"color:red"> import pkg_resources</span><br>
<span style=3D"color:red">| ModuleNotFoundError: No module named 'pkg_resou=
rces'</span><o:p></o:p></p>
<p>meta-freescale/recipes-bsp/u-boot/u-boot-qoriq_2021.04.bb<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"SV">#error 3:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">&nbsp;..y=
octo-kirkstone/builds/ppc64/tmp/work/t1024rdb_64b-poky-linux/lttng-modules/=
2.13.3-r0/<span style=3D"color:red">lttng-modules-</span>2.13.3/src/wrapper=
/kallsyms.c:20:3: error: #error &quot;LTTng-modules
 requires CONFIG_KPROBES on kernels &gt;=3D 5.7.0&quot;<br>
<span style=3D"color:red">| &nbsp; &nbsp;20 | # error &quot;LTTng-modules r=
equires CONFIG_KPROBES on kernels &gt;=3D 5.7.0&quot;<o:p></o:p></span></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:red;mso-fareast-language:EN-GB"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black;mso-fareast-language:EN-G=
B"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV" style=3D"color:black;mso-fareast-l=
anguage:EN-GB">Thanks --Sona<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CO1PR11MB485158C31DB3B7F65C27C442D29A9CO1PR11MB4851namp_--

