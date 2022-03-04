Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EF3C433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 00:58:39 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.2130.1646355517922777075
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 16:58:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=i7zDvJ7Q;
 spf=pass (domain: intel.com, ip: 192.55.52.88,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646355518; x=1677891518;
  h=from:to:subject:date:message-id:mime-version;
  bh=8KMkV+/Rh+YgtxUDM4XVlR8o4DXOsgvJX9IDh5RJ26o=;
  b=i7zDvJ7QPeIvaju4zdrVBGD6iwIY2UD8Oc2e6qVJe0hgqHVSmrdntK06
   m2tRly7d4MPRI4EW9HGY5cMJzYvbS4HD/MidV0/tTYEtTEWpZp3mRxi8t
   msStgH01Lsm5vZxy8Okr5UZwxdRGXfYRp17LLWHGnRZDy79qPfqA6+l9m
   r02tf79NaYw3sGItBzlz0ZoaPYID/7HX771Vp4AzdEY3N4Mwqr+v/gFqY
   30TMipMqGwxFqS9LcQO3Zu+6E/zb5/h4C5tosNfxjxzGjTjzxX38BgoHv
   0ipvqsk8YbTytNnlzYO1fuBeAii5N0gC8VGy6/L56mTC1HT0z7/owe36w
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="278547580"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400";
   d="scan'208,217";a="278547580"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 16:58:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400";
   d="scan'208,217";a="536085471"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga007.jf.intel.com with ESMTP; 03 Mar 2022 16:58:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 16:58:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 16:58:35 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 3 Mar 2022 16:58:35 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 3 Mar 2022 16:58:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BX+Q7x8FkHO4nt8la2FWHsHawjxbfEsgZdOvTXJVvtdZtVFuIX9hVAAh5+L5sosRWa9hZ2S4bgIlCaK7WYT2aycbZmA3fVC6pJJcVVnsUZNW8xcdvdZgjjNhvZFbtYPz7y99kWQ6DsbVyu+6kHbETWnWXBlk7+33V4mBn6AMvss60WONO6Q941IXnWHMJp9PnQxj2YcmkwDunhrN8UwAStuBY40+wVFfJdedPwfT49bHZw5rCkwuIpOKTymUQFUYfSxJ9nBEWDYwQIn/zd3RTZJ6UUQmlKTxLuJtuFdP0QvF7oGqYKQfNBQygXOnMLYyPk7Sx7tWTLFfP6/UPWBcjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ulh2fO/qQW7AUgdjU2tUAZ5truQx71fC059l7Fe6k4=;
 b=ePTmX9pzNuomBogsBhQpkwuv2tIBXsrRSj90UZAS0tWO7vSu1COoPJgoXUpcNILxvkvLnuh+DhtxWbxKFzlDP1ni4Wf8GZ9G17o5/mlVDdYQYBQjgG13d5uCV5yZL8/d2CoZxs3TUgkBDoTuzIo5IIgUJSz447JNuqkyC6tj8dK3+y03jwClWyyt978Oh5S3v4eRIEA6Z1RuB1BzLosute2Xqe4Utdgmm7gSO4CygztVbnYvz+YYv9m4wL6pBJH7+7Yp7fJO1H58wBfldeWVlyC6cX7FhnLmTqLk9EA6IwA8OWLwb61CTRX70xZgBBCQ18YbU/p9zI0AyLMVFmsAcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR1101MB2354.namprd11.prod.outlook.com (2603:10b6:404:9b::7)
 by MWHPR11MB2048.namprd11.prod.outlook.com (2603:10b6:300:27::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Fri, 4 Mar
 2022 00:58:29 +0000
Received: from BN6PR1101MB2354.namprd11.prod.outlook.com
 ([fe80::e8bf:780a:4974:982d]) by BN6PR1101MB2354.namprd11.prod.outlook.com
 ([fe80::e8bf:780a:4974:982d%10]) with mapi id 15.20.5038.015; Fri, 4 Mar 2022
 00:58:29 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 3.3.5 (hardknott-25.0.5) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.3.5 (hardknott-25.0.5) is
 Released
Thread-Index: AdgvYW6pHmRz5ct+QGeENHF4fu+pzg==
Date: Fri, 4 Mar 2022 00:58:28 +0000
Message-ID: 
 <BN6PR1101MB23549981C05D012A3DF6672AB9059@BN6PR1101MB2354.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99b6ef26-7d34-4424-19d0-08d9fd7a18a3
x-ms-traffictypediagnostic: MWHPR11MB2048:EE_
x-microsoft-antispam-prvs: 
 <MWHPR11MB204886BF257A4FC4BB33CF77B9059@MWHPR11MB2048.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 r8p5H8jeAea+OmcefszDH+BXCOrbftpR4PYJL4pwX0yEcVisoNr9Pv8ruzSrt+uYB7RIVoWdkjctVPquhKj05oDIBcWne5k/MoQ98QKDRTAPQVklEgo46zXsR5tl8dHOd+8aYi17F7yq3Ai8dblDXTrEur7oEPyf2PSTdfs3n9zcy+1EmNd3+gj1Ikpz0GZsSIiyt4v7IyjvZeGK4dlm2pzegdXX92uZEHehksKDVrUlU2QNA/o9/DM1+gUIJ/dWPQ1vj0pmaF9FF+OTCQR9Y/ZoFtOzMMjLBRNmSZeYNWxP9U5l88oQbbdNHMFMEcpVqM86K/s0jG7ycVvugp9v/CxPiFtnkhO7vmioyyJ69O60FrgW1OdDwtWH6SCvQcr8nMk7gWc/lN99P2AYqtHGd3pCopeu+kOe4Yzpzv6llDwQh17VtNTIzg2sSGip9Gmqtw3bpQx14SHuWd2KDD8v/PUnQP8fSxY9yT0qy2qSNW/3hMKeQ1yLHwzi4fLK0NE1kt5hMPxMTVCY/o2h484g1r9v9Q/TYGRga44HG+1A53cNMN61VyHyutE6/wuS+V7YKk2ulKWTzazeLP/ypoD6X8hmh5urphIvwiMzFsnk8w/cHsrgAMUHnVPIIKko4nxdATV10xS+i4SGO1NQc50c1O0d+y+xU5Ju4O/3IrCDcTUH9l9JFFkfLyXqy6rQU3UWt86j+jYjCTUODjDD6F2dIX/Fs4azyY3TpZLA1QN9iZu/DFo/zgXncCcm5qDbKJJNoFVgmBoHk8ZIopy0ERmiTgSvxMYp5velSUGexIg6MSDtIevXbfC4UZwHgs2kiT0y/r8JcfJqU/URKde7hCMXhQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2354.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(508600001)(9326002)(55016003)(52536014)(8936002)(83380400001)(122000001)(2906002)(5660300002)(82960400001)(7696005)(6506007)(316002)(9686003)(38100700002)(166002)(71200400001)(38070700005)(66574015)(110136005)(186003)(86362001)(26005)(33656002)(450100002)(8676002)(66946007)(64756008)(66446008)(66476007)(66556008)(30864003)(966005)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?KA3B4bAd6NkY0NEh2JOyw6tW2y85pgOY/0tFSmYpR556kHjQlgHx0smxRClJ?=
 =?us-ascii?Q?QkWml3dmcBjVWpAkI+ofmvrVKYnB3jIkBXO/XhYr285Dh6bcP888WdEA2X0/?=
 =?us-ascii?Q?s/GiVhAWQSBiUcod7FsMdkBRcn9OeM1yolz+9Kqk+tl8or6l8PEhmS38UbpM?=
 =?us-ascii?Q?AuwFnIM/gjWrlfpInJ08MapGwhWm4E37/h9Tpe9t96I1T0iSEx+ZBI6tLvAh?=
 =?us-ascii?Q?vcYnj+UOpkhOgiv4ibxMoiGBQ3a6tZVwgrpbZ2bhDHim7iRxXtvZgFXKqQ4X?=
 =?us-ascii?Q?1RLIaRfXa6cib8/SFUsh6C3C1JHT2P816RqjeWJUa5TvskV7tJpD8rqstPyX?=
 =?us-ascii?Q?k5b/zCJ50VDtZbnedrH5FcX275qM/DQVrIeyLJSLfx1a0zVXO7/ceGMHWs7P?=
 =?us-ascii?Q?HMHZy1GCtvZbBYYOOWlyLb5mOP+PVy05xEMS//M9/g4eG2EpU+CUdIrm/5dr?=
 =?us-ascii?Q?BxKG0UUozQeH3iyk6sw9yWlJ6dRWFbvv5UY74XsihOH+A7XqbcqaJmwaQdIX?=
 =?us-ascii?Q?lx1MWgfTBm51pjyfmvh92hSUDd8lFNSuFaTJbveJfINWyG7Gxn2ReL/cWy2X?=
 =?us-ascii?Q?fPmHGWtCsDQRizxtTId3NjTi9OxyJySOEhoJsym3sRpPjIM7CnB3fuzelAR1?=
 =?us-ascii?Q?6sfvlMgt/c8yoC9JqP7BJfkGABBmBCHiIgZPgcKT3hNJMFkNJVTr8R7rG4Nw?=
 =?us-ascii?Q?jFZRlLw2IIf2Hzu/3iNfoY5MSrPO3sXD8pXa76IK16N0cfdXbjUHBHfvZ5EV?=
 =?us-ascii?Q?q+BkVq1XpieKxf65YZEG22Lu+hJuivzjW6/PH1aA2xue24uNtCbSjm0O2vAs?=
 =?us-ascii?Q?saquHeEZbEyj5ALynm7DJQW8tjMtVH+OLAMLn/9yeh0qw7OAHCCKqtD0T1iU?=
 =?us-ascii?Q?vNew3c5uDbvsUZ/Fu6G5TmlCS5Z4V/CyWgYXvpO66w9XCWSWKS0AcGNjEKBY?=
 =?us-ascii?Q?EXJczeUvMVofkOGA0ONWPuX3HJDv+EStduqgEuFBEfE61SQEJnOTZ2TTHGgG?=
 =?us-ascii?Q?H9pyaFB9HK8C3TIoCrq5X6ApgCSvOA4UAfYj8F5/cUkSBorvgWSwH6KTOg+o?=
 =?us-ascii?Q?se0aBmfgfx1Gx7O/rWfMc7+QvOU6vw9CpeeiDRoOrZLTDqCkLPv2YAyv88li?=
 =?us-ascii?Q?Gl5P6soInclOIK9ZVmg2j3ySI+/A7FI6wfGl9GgbDKtrcyCpSSycfWdTRSrg?=
 =?us-ascii?Q?hksijJvdoCQhFw4nmtakAvo+hMK7Oa25bmfi8LRrdSe+WgoKbxC/LCESzQRJ?=
 =?us-ascii?Q?qfzIMo/hpyDiPljc2KKBhmLL24MzbMe3w9DQ/FVSuTH8eew8qstLAGIvHrYW?=
 =?us-ascii?Q?RLLZqb93kNJEYrYF/2YCCUoVH3EYf+Dh/HUlrnF4qyfN5yDPkVJtJJFgqwom?=
 =?us-ascii?Q?AJgkN6Y8JG2qB9TwKD1crlMl5WvoG81HXJuGKtwa5QzwvWlpI1LtcFPXph8Q?=
 =?us-ascii?Q?ia+xwXWsGuv10vn7EnxybohlBO4vFYE3YLy6qeqDP7NCt0VFzupuFTOJ328s?=
 =?us-ascii?Q?mmP31/X9pU06jghPm+HtAvZcFnw0FgsFgoAWFGfb7NJME1Ea2YDIQQLPJEqJ?=
 =?us-ascii?Q?btU1hn8HxbWmmhAsvY3YWVLyC2TYvWH7v94bsWtPToc/eHU2OWl71UuvtWGW?=
 =?us-ascii?Q?kw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BN6PR1101MB23549981C05D012A3DF6672AB9059BN6PR1101MB2354_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 BN6PR1101MB2354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 99b6ef26-7d34-4424-19d0-08d9fd7a18a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2022 00:58:28.9721
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ws4xYUtMCV5k9ih0tM5OPmokC0zUOqC9crHVkT8tVC+bWMimKzOQFVEkHEGv33Xb8I75OfB4KbTcCUbz7+8ImA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2048
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 00:58:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56361

--_000_BN6PR1101MB23549981C05D012A3DF6672AB9059BN6PR1101MB2354_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.3.5 (hardknott-25.0.5) Relea=
se is now available for download.
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.5/poky-hardknott=
-25.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.5/poky-hardknott-25.0.5.tar=
.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.5/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.5/testreport.txt

Thank you for everyone's contributions to this release.


Chee Yang Lee chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-3.3.5 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: hardknott
Tag: yocto-3.3.5
Git Revision: 8d3e054f6d432b5ca0fcd613e0c767fab3c85f24
Release Artefact: poky-hardknott-25.0.5
sha: f8c0248ea25e7b90a0cf68450835403ca41f386672b9ec2d6f019750b1a185a6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.5/poky-hardknott=
-25.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.5/poky-hardknott-25.0.5.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: hardknott
Tag: yocto-3.3.5
Git Revision: 29cd1d796057ef5599fe17c39b42aa099f7b1c29
Release Artefact: oecore-hardknott-25.0.5
sha: f892b4e412ebd780e814abcdf676600ed13de167970f8711ea226066fd4624e6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.5/oecore-hardkno=
tt-25.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.5/oecore-hardknott-25.0.5.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: hardknott
Tag: yocto-3.3.5
Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d1219e
Release Artefact: meta-mingw-hardknott-25.0.5
sha: 8bdf3d62c0974af8bab66a6cbbf70ef5e431c0d4e9eef3acb8da8fef116ca70c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.5/meta-mingw-har=
dknott-25.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.5/meta-mingw-hardknott-25.0=
.5.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: hardknott
Tag: yocto-3.3.5
Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
Release Artefact: meta-gplv2-hardknott-25.0.5
sha: ee8c5f3ec99177d9a0b8c041f92fc512b4a25bde99750772b119739a4750ccc1
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.5/meta-gplv2-har=
dknott-25.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.5/meta-gplv2-hardknott-25.0=
.5.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: hardknott
Tag: yocto-3.3.5
Git Revision: aaa7f7af23d5f89fe4a5ed48c57ea3dfca07c79d
Release Artefact: bitbake-hardknott-25.0.5
sha: f96a82a79a80cc3581c16ce9dad59f83370801427f9e1b798df02d07c6ac8bb3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.5/bitbake-hardkn=
ott-25.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.5/bitbake-hardknott-25.0.5.=
tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: hardknott
Tag: yocto-3.3.5
Git Revision: cba66e3a284b852b0da9a3b53f5f2540244d1072


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
vim: update to include latest CVE fixes
expat: fix CVE-2022-23852
qemu: fix CVE-2021-20196
qemu: fix CVE-2021-3930
qemu: fix CVE-2021-3748
qemu: fix CVE-2021-3713
lighttpd: backport a fix for CVE-2022-22707
speex: fix CVE-2020-23903
expat: fix CVE-2021-46143
expat: fix CVE-2021-45960
expat fix CVE-2022-22822 through CVE-2022-22827
linux-yocto/5.10: amdgpu: updates for CVE-2021-42327
xserver-xorg: whitelist two CVEs
curl: Backport CVE fixes
libsndfile1: fix CVE-2021-4156
glibc: Backport fix for CVE-2021-43396
busybox: backport patches to fix CVEs
gcc: Fix CVE-2021-42574
grub2: fix CVE-2021-3981
webkitgtk: fix fix CVE-2021-42762
xserver-xorg: update CVE_PRODUCT
binutils: Fix CVE-2021-45078
xserver-xorg: fix CVE-2021-4011
xserver-xorg: fix CVE-2021-4010
xserver-xorg: fix CVE-2021-4009
xserver-xorg: fix CVE-2021-4008
binutils: CVE-2021-42574
gcc: Add CVE-2021-37322 to the list of CVEs to ignore
gmp: fix CVE-2021-43618
squashfs-tools: fix CVE-2021-41072
vim: fix CVE-2021-3927 and CVE-2021-3928
bind: fix CVE-2021-25219
vim: fix CVE-2021-3875
vim: fix CVE-2021-3872 and CVE-2021-3903
rpm: fix CVE-2021-3521
gcc: Fix CVE-2021-35465
inetutils: fix CVE-2021-40491
avahi: update CVE id fixed by local-ping.patch

---------------
Fixes
---------------
README.OE-Core.md: update URLs
arch-armv8-5a.inc: Add tune include for armv8.5a
armv9a/tune: Add the support for the Neoverse N2 core
binutils: upgrade binutils-2.36 to latest version
bitbake: bitbake: adjust parser error check for python 3.10 compatibility
bitbake: bitbake: correct deprecation warning in process.py
bitbake: bitbake: correct the collections vs collections.abc deprecation
bitbake: bitbake:toaster:test: Update SSTATE URL
bitbake: cooker: Fix task-depends.dot for multiconfig targets
bitbake: cooker: Handle parse threads disappearing to avoid hangs
bitbake: cooker: Handle parsing results queue race
bitbake: cooker: Remove debug code, oops :(
bitbake: cooker: check if upstream hash equivalence server is available
bitbake: fetch/wget: Add timeout for checkstatus calls (30s)
bitbake: fetch2/perforce: Fix typo
bitbake: fetch: Handle mirror user/password replacements correctly
bitbake: hashserv: let asyncio discover the running loop
bitbake: process: Do not mix stderr with stdout
bitbake: runqueue: Fix runall option handling
bitbake: runqueue: Fix runall option task deletion ordering issue
bitbake: tests/fetch: Drop gnu urls from wget connectivity test
bitbake: tests/fetch: Update github urls
bitbake: tests/fetch: Update pcre.org address after github changes
bitbake: utils: Handle lockfile filenames that are too long for filesystems
bitbake: utils: Update to use exec_module() instead of load_module()
build-appliance-image: Update to hardknott head revision
buildhistory: Fix srcrevs output
busybox: upgrade 1.33.1 -> 1.33.2
convert-srcuri.py: use regex to check space in SRC_URI
cross-canadian: correct the location of pkg-config files
cups: Fix missing installation of cups sysv init scripts
cve-check: add lockfile to task
cve-check: create directory of CVE_CHECK_MANIFEST before copy
cve-extra-exclusions: add db CVEs to exclusion list
default-distrovars.inc: Switch connectivity check to a yoctoproject.org pag=
e
documentation: conf.py: fix version of bitbake objects.inv
gcc: add aarch64 support for Arm's Neoverse N2 CPU
gcc: add support for Neoverse N2 CPU
gcc: upgrade to gcc-10.3 version
glibc: Fix i586/c3 support
glibc: upgrade glibc-2.33 to latest version
go: upgrade to 1.16.13
lib/oe/reproducible: correctly set .git location when recursively looking f=
or git repos
libpcre/libpcre2: correct SRC_URI
libusb1: correct SRC_URI
linunistring: Add missing gperf-native dependency
linux-firmware: Add CLM blob to linux-firmware-bcm4373 package
linux-firmware: upgrade 20211027 -> 20211216
linux-yocto-rt/5.10: update to -rt56
linux-yocto/5.10/cfg: add kcov feature fragment
linux-yocto/5.10: update genericx86* machines to v5.10.82
linux-yocto/5.10: update to v5.10.99
linux-yocto/5.4: update genericx86* machines to v5.4.158
linux-yocto/5.4: update to v5.4.178
linux-yocto: add libmpc-native to DEPENDS
llvm: bump HASHEQUIV_HASH_VERSION
manuals: releases.rst: move gatesgarth to outdated releases section
meta/scripts: Manual git url branch additions
meta: add explicit branch and protocol to SRC_URI
mirrors: Add kernel.org sources mirror for downloads.yoctoproject.org
mirrors: Add uninative mirror on kernel.org
mklibs-native: drop deprecated cpp17 exceptions
oeqa/parselogs: Fix quoting
oeqa/selftest/bbtests: Use YP sources mirror instead of GNU
openssl: Add reproducibility fix
os-release: Add DISTRO_CODENAME as vardeps for do_compile
patch.py: Initialize git repo before patching
patchelf: fix PT_PHDR program header corruption
pigz: fix one failure of command "unpigz -l"
poky.conf: add debian11 to supported distros
poky.conf: add fedora 34 to supported distros
poky.conf: bump version for 3.3.5 release
populate_sdk_base: remove unneeded dirs such as /dev
pseudo: Add fcntl64 wrapper
pseudo: Add in ability to flush database with shutdown request
python3-pyelftools: Depend on debugger, pprint
python3-pyelftools: fix the override syntax
python3: upgrade to 3.9.9
recipetool: Fix circular reference in SRC_URI
recipetool: Set master branch only as fallback
recipetool: extend curl detection when creating recipes
recipetool: handle GitLab URLs like we do GitHub
ref-manual: fix patch documentation
rootfs-postcommands: update systemd_create_users
runqemu: check the qemu PID has been set before kill()ing it
runtime_test: skip virgl test on fedora 34
scripts/checklayer/common.py: Fixed a minor grammatical error
scripts/convert-srcuri: Backport SRC_URI conversion script from master bran=
ch
scripts/lib/wic/help.py: Update Fedora Kickstart URLs
scripts/oe-package-browser: Handle no packages being built
scripts/runqemu-ifdown: Don't treat the last iptables command as special
scripts: Update to use exec_module() instead of load_module()
sdk: fix search for dynamic loader
selftest/devtool: Check branch in git fetch
selftest: reproducible: Set maximum report size
selftest: skip virgl test on centos 8 entirely
selftest: skip virgl test on fedora 34 entirely
socat: update SRC_URI
sstate: A third fix for for touching files inside pseudo
sstate: Account for reserved characters when shortening sstate filenames
sstate: another fix for touching files inside pseudo
tune-cortexa72: Drop the redundant cortexa72-crc tune
tune-cortexa72: Enable the crc extension by default for cortexa72
tune-cortexa72: remove crypto for the default cortex-a72
uboot-sign: fix the concatenation when multiple U-BOOT configurations are s=
pecified
uninative: Add version to uninative tarball name
updates for recent releases
vim: upgrade to patch 4269
webkitgtk: Add reproducibility fix
wic: support rootdev identified by partition label
wic: use shutil.which
yocto-check-layer: add debug output for the layers that were found



--_000_BN6PR1101MB23549981C05D012A3DF6672AB9059BN6PR1101MB2354_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-MY" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.3.5 (=
hardknott-25.0.5) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.5/poky-hardknott-25.0.5.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.3.5/poky-hardknott-25.0.5.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.5/poky-hardknott-25.0.5.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.3.5/poky-hardknott-25.0.5.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.5/RELEASENOTES">http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.5/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.5/testreport.txt">http://downloads.yoctoproject.org/relea=
ses/yocto/yocto-3.3.5/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chee Yang Lee <a href=3D"mailto:chee.yang.lee@intel.=
com">chee.yang.lee@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.3.5 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/poky">
https://git.yoctoproject.org/git/poky</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.5<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 8d3e054f6d432b5ca0fcd613e0c767fab3c85f=
24<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-hardknott-25.0.5<o:p></o:p></=
p>
<p class=3D"MsoNormal">sha: f8c0248ea25e7b90a0cf68450835403ca41f386672b9ec2=
d6f019750b1a185a6<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.5/poky-hardknott-25.0.5.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.3.5/poky-hardknott-25.0.5.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.5/poky-hardknott-25.0.5.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.3.5/poky-hardknott-25.0.5.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/openembedded-core">
https://git.openembedded.org/openembedded-core</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.5<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 29cd1d796057ef5599fe17c39b42aa099f7b1c=
29<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-hardknott-25.0.5<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sha: f892b4e412ebd780e814abcdf676600ed13de167970f871=
1ea226066fd4624e6<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.5/oecore-hardknott-25.0.5.tar.bz2">http://downloads.yocto=
project.org/releases/yocto/yocto-3.3.5/oecore-hardknott-25.0.5.tar.bz2</a><=
o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.5/oecore-hardknott-25.0.5.tar.bz2">http://mirrors.kernel.org/yocto/y=
octo/yocto-3.3.5/oecore-hardknott-25.0.5.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-mingw">
https://git.yoctoproject.org/git/meta-mingw</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.5<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d121=
9e<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-hardknott-25.0.5<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: 8bdf3d62c0974af8bab66a6cbbf70ef5e431c0d4e9eef3a=
cb8da8fef116ca70c<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.5/meta-mingw-hardknott-25.0.5.tar.bz2">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.3.5/meta-mingw-hardknott-25.0.5.tar.=
bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.5/meta-mingw-hardknott-25.0.5.tar.bz2">http://mirrors.kernel.org/yoc=
to/yocto/yocto-3.3.5/meta-mingw-hardknott-25.0.5.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-gplv2">
https://git.yoctoproject.org/git/meta-gplv2</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.5<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db=
0f<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-hardknott-25.0.5<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: ee8c5f3ec99177d9a0b8c041f92fc512b4a25bde9975077=
2b119739a4750ccc1<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.5/meta-gplv2-hardknott-25.0.5.tar.bz2">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.3.5/meta-gplv2-hardknott-25.0.5.tar.=
bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.5/meta-gplv2-hardknott-25.0.5.tar.bz2">http://mirrors.kernel.org/yoc=
to/yocto/yocto-3.3.5/meta-gplv2-hardknott-25.0.5.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/bitbake">
https://git.openembedded.org/bitbake</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.5<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: aaa7f7af23d5f89fe4a5ed48c57ea3dfca07c7=
9d<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-hardknott-25.0.5<o:p></o:p=
></p>
<p class=3D"MsoNormal">sha: f96a82a79a80cc3581c16ce9dad59f83370801427f9e1b7=
98df02d07c6ac8bb3<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.5/bitbake-hardknott-25.0.5.tar.bz2">http://downloads.yoct=
oproject.org/releases/yocto/yocto-3.3.5/bitbake-hardknott-25.0.5.tar.bz2</a=
><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.5/bitbake-hardknott-25.0.5.tar.bz2">http://mirrors.kernel.org/yocto/=
yocto/yocto-3.3.5/bitbake-hardknott-25.0.5.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/yocto-docs">
https://git.yoctoproject.org/git/yocto-docs</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.5<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: cba66e3a284b852b0da9a3b53f5f2540244d10=
72<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">N/A<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">vim: update to include latest CVE fixes<o:p></o:p></=
p>
<p class=3D"MsoNormal">expat: fix CVE-2022-23852<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-20196<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3930<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3748<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3713<o:p></o:p></p>
<p class=3D"MsoNormal">lighttpd: backport a fix for CVE-2022-22707<o:p></o:=
p></p>
<p class=3D"MsoNormal">speex: fix CVE-2020-23903<o:p></o:p></p>
<p class=3D"MsoNormal">expat: fix CVE-2021-46143<o:p></o:p></p>
<p class=3D"MsoNormal">expat: fix CVE-2021-45960<o:p></o:p></p>
<p class=3D"MsoNormal">expat fix CVE-2022-22822 through CVE-2022-22827<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: amdgpu: updates for CVE-2021-42327=
<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: whitelist two CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">curl: Backport CVE fixes<o:p></o:p></p>
<p class=3D"MsoNormal">libsndfile1: fix CVE-2021-4156<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Backport fix for CVE-2021-43396<o:p></o:p></p=
>
<p class=3D"MsoNormal">busybox: backport patches to fix CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: Fix CVE-2021-42574<o:p></o:p></p>
<p class=3D"MsoNormal">grub2: fix CVE-2021-3981<o:p></o:p></p>
<p class=3D"MsoNormal">webkitgtk: fix fix CVE-2021-42762<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: update CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: Fix CVE-2021-45078<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: fix CVE-2021-4011<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: fix CVE-2021-4010<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: fix CVE-2021-4009<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: fix CVE-2021-4008<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: CVE-2021-42574<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: Add CVE-2021-37322 to the list of CVEs to ignor=
e<o:p></o:p></p>
<p class=3D"MsoNormal">gmp: fix CVE-2021-43618<o:p></o:p></p>
<p class=3D"MsoNormal">squashfs-tools: fix CVE-2021-41072<o:p></o:p></p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3927 and CVE-2021-3928<o:p></o:p><=
/p>
<p class=3D"MsoNormal">bind: fix CVE-2021-25219<o:p></o:p></p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3875<o:p></o:p></p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3872 and CVE-2021-3903<o:p></o:p><=
/p>
<p class=3D"MsoNormal">rpm: fix CVE-2021-3521<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: Fix CVE-2021-35465<o:p></o:p></p>
<p class=3D"MsoNormal">inetutils: fix CVE-2021-40491<o:p></o:p></p>
<p class=3D"MsoNormal">avahi: update CVE id fixed by local-ping.patch<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">README.OE-Core.md: update URLs<o:p></o:p></p>
<p class=3D"MsoNormal">arch-armv8-5a.inc: Add tune include for armv8.5a<o:p=
></o:p></p>
<p class=3D"MsoNormal">armv9a/tune: Add the support for the Neoverse N2 cor=
e<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: upgrade binutils-2.36 to latest version<o:=
p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: adjust parser error check for pyth=
on 3.10 compatibility<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: correct deprecation warning in pro=
cess.py<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: correct the collections vs collect=
ions.abc deprecation<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake:toaster:test: Update SSTATE URL<o:p=
></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Fix task-depends.dot for multiconfi=
g targets<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Handle parse threads disappearing t=
o avoid hangs<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Handle parsing results queue race<o=
:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Remove debug code, oops :(<o:p></o:=
p></p>
<p class=3D"MsoNormal">bitbake: cooker: check if upstream hash equivalence =
server is available<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch/wget: Add timeout for checkstatus cal=
ls (30s)<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch2/perforce: Fix typo<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch: Handle mirror user/password replacem=
ents correctly<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: hashserv: let asyncio discover the running =
loop<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: process: Do not mix stderr with stdout<o:p>=
</o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Fix runall option handling<o:p></=
o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Fix runall option task deletion o=
rdering issue<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch: Drop gnu urls from wget connec=
tivity test<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch: Update github urls<o:p></o:p><=
/p>
<p class=3D"MsoNormal">bitbake: tests/fetch: Update pcre.org address after =
github changes<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: utils: Handle lockfile filenames that are t=
oo long for filesystems<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: utils: Update to use exec_module() instead =
of load_module()<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to hardknott head revi=
sion<o:p></o:p></p>
<p class=3D"MsoNormal">buildhistory: Fix srcrevs output<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: upgrade 1.33.1 -&gt; 1.33.2<o:p></o:p></p>
<p class=3D"MsoNormal">convert-srcuri.py: use regex to check space in SRC_U=
RI<o:p></o:p></p>
<p class=3D"MsoNormal">cross-canadian: correct the location of pkg-config f=
iles<o:p></o:p></p>
<p class=3D"MsoNormal">cups: Fix missing installation of cups sysv init scr=
ipts<o:p></o:p></p>
<p class=3D"MsoNormal">cve-check: add lockfile to task<o:p></o:p></p>
<p class=3D"MsoNormal">cve-check: create directory of CVE_CHECK_MANIFEST be=
fore copy<o:p></o:p></p>
<p class=3D"MsoNormal">cve-extra-exclusions: add db CVEs to exclusion list<=
o:p></o:p></p>
<p class=3D"MsoNormal">default-distrovars.inc: Switch connectivity check to=
 a yoctoproject.org page<o:p></o:p></p>
<p class=3D"MsoNormal">documentation: conf.py: fix version of bitbake objec=
ts.inv<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: add aarch64 support for Arm's Neoverse N2 CPU<o=
:p></o:p></p>
<p class=3D"MsoNormal">gcc: add support for Neoverse N2 CPU<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: upgrade to gcc-10.3 version<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Fix i586/c3 support<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: upgrade glibc-2.33 to latest version<o:p></o:=
p></p>
<p class=3D"MsoNormal">go: upgrade to 1.16.13<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/reproducible: correctly set .git location whe=
n recursively looking for git repos<o:p></o:p></p>
<p class=3D"MsoNormal">libpcre/libpcre2: correct SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">libusb1: correct SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">linunistring: Add missing gperf-native dependency<o:=
p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: Add CLM blob to linux-firmware-bcm43=
73 package<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20211027 -&gt; 20211216<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-yocto-rt/5.10: update to -rt56<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10/cfg: add kcov feature fragment<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update genericx86* machines to v5.=
10.82<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.99<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update genericx86* machines to v5.4=
.158<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.178<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto: add libmpc-native to DEPENDS<o:p></o:p>=
</p>
<p class=3D"MsoNormal">llvm: bump HASHEQUIV_HASH_VERSION<o:p></o:p></p>
<p class=3D"MsoNormal">manuals: releases.rst: move gatesgarth to outdated r=
eleases section<o:p></o:p></p>
<p class=3D"MsoNormal">meta/scripts: Manual git url branch additions<o:p></=
o:p></p>
<p class=3D"MsoNormal">meta: add explicit branch and protocol to SRC_URI<o:=
p></o:p></p>
<p class=3D"MsoNormal">mirrors: Add kernel.org sources mirror for downloads=
.yoctoproject.org<o:p></o:p></p>
<p class=3D"MsoNormal">mirrors: Add uninative mirror on kernel.org<o:p></o:=
p></p>
<p class=3D"MsoNormal">mklibs-native: drop deprecated cpp17 exceptions<o:p>=
</o:p></p>
<p class=3D"MsoNormal">oeqa/parselogs: Fix quoting<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/bbtests: Use YP sources mirror instead=
 of GNU<o:p></o:p></p>
<p class=3D"MsoNormal">openssl: Add reproducibility fix<o:p></o:p></p>
<p class=3D"MsoNormal">os-release: Add DISTRO_CODENAME as vardeps for do_co=
mpile<o:p></o:p></p>
<p class=3D"MsoNormal">patch.py: Initialize git repo before patching<o:p></=
o:p></p>
<p class=3D"MsoNormal">patchelf: fix PT_PHDR program header corruption<o:p>=
</o:p></p>
<p class=3D"MsoNormal">pigz: fix one failure of command &quot;unpigz -l&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: add debian11 to supported distros<o:p></o=
:p></p>
<p class=3D"MsoNormal">poky.conf: add fedora 34 to supported distros<o:p></=
o:p></p>
<p class=3D"MsoNormal">poky.conf: bump version for 3.3.5 release<o:p></o:p>=
</p>
<p class=3D"MsoNormal">populate_sdk_base: remove unneeded dirs such as /dev=
<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Add fcntl64 wrapper<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Add in ability to flush database with shutdo=
wn request<o:p></o:p></p>
<p class=3D"MsoNormal">python3-pyelftools: Depend on debugger, pprint<o:p><=
/o:p></p>
<p class=3D"MsoNormal">python3-pyelftools: fix the override syntax<o:p></o:=
p></p>
<p class=3D"MsoNormal">python3: upgrade to 3.9.9<o:p></o:p></p>
<p class=3D"MsoNormal">recipetool: Fix circular reference in SRC_URI<o:p></=
o:p></p>
<p class=3D"MsoNormal">recipetool: Set master branch only as fallback<o:p><=
/o:p></p>
<p class=3D"MsoNormal">recipetool: extend curl detection when creating reci=
pes<o:p></o:p></p>
<p class=3D"MsoNormal">recipetool: handle GitLab URLs like we do GitHub<o:p=
></o:p></p>
<p class=3D"MsoNormal">ref-manual: fix patch documentation<o:p></o:p></p>
<p class=3D"MsoNormal">rootfs-postcommands: update systemd_create_users<o:p=
></o:p></p>
<p class=3D"MsoNormal">runqemu: check the qemu PID has been set before kill=
()ing it<o:p></o:p></p>
<p class=3D"MsoNormal">runtime_test: skip virgl test on fedora 34<o:p></o:p=
></p>
<p class=3D"MsoNormal">scripts/checklayer/common.py: Fixed a minor grammati=
cal error<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/convert-srcuri: Backport SRC_URI conversion =
script from master branch<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/lib/wic/help.py: Update Fedora Kickstart URL=
s<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/oe-package-browser: Handle no packages being=
 built<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/runqemu-ifdown: Don't treat the last iptable=
s command as special<o:p></o:p></p>
<p class=3D"MsoNormal">scripts: Update to use exec_module() instead of load=
_module()<o:p></o:p></p>
<p class=3D"MsoNormal">sdk: fix search for dynamic loader<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/devtool: Check branch in git fetch<o:p></o:=
p></p>
<p class=3D"MsoNormal">selftest: reproducible: Set maximum report size<o:p>=
</o:p></p>
<p class=3D"MsoNormal">selftest: skip virgl test on centos 8 entirely<o:p><=
/o:p></p>
<p class=3D"MsoNormal">selftest: skip virgl test on fedora 34 entirely<o:p>=
</o:p></p>
<p class=3D"MsoNormal">socat: update SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: A third fix for for touching files inside ps=
eudo<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: Account for reserved characters when shorten=
ing sstate filenames<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: another fix for touching files inside pseudo=
<o:p></o:p></p>
<p class=3D"MsoNormal">tune-cortexa72: Drop the redundant cortexa72-crc tun=
e<o:p></o:p></p>
<p class=3D"MsoNormal">tune-cortexa72: Enable the crc extension by default =
for cortexa72<o:p></o:p></p>
<p class=3D"MsoNormal">tune-cortexa72: remove crypto for the default cortex=
-a72<o:p></o:p></p>
<p class=3D"MsoNormal">uboot-sign: fix the concatenation when multiple U-BO=
OT configurations are specified<o:p></o:p></p>
<p class=3D"MsoNormal">uninative: Add version to uninative tarball name<o:p=
></o:p></p>
<p class=3D"MsoNormal">updates for recent releases<o:p></o:p></p>
<p class=3D"MsoNormal">vim: upgrade to patch 4269<o:p></o:p></p>
<p class=3D"MsoNormal">webkitgtk: Add reproducibility fix<o:p></o:p></p>
<p class=3D"MsoNormal">wic: support rootdev identified by partition label<o=
:p></o:p></p>
<p class=3D"MsoNormal">wic: use shutil.which<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-check-layer: add debug output for the layers t=
hat were found<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN6PR1101MB23549981C05D012A3DF6672AB9059BN6PR1101MB2354_--

