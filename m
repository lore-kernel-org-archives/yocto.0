Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A367CC433F5
	for <webhook@archiver.kernel.org>; Mon, 21 Feb 2022 08:01:07 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.8405.1645430465936527698
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 00:01:06 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=ALKmpVmK;
 spf=pass (domain: intel.com, ip: 192.55.52.120,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645430466; x=1676966466;
  h=from:to:subject:date:message-id:mime-version;
  bh=atTwsHRD760xhBxZ5cAXAguW9sD0kFKW5dv8sLaBX/E=;
  b=ALKmpVmKShDoadPWxJu03y9lkhlNuxhL6KsGelSLnqqzZI/6Wh6Nxd+f
   8IM4zdsKb4HCx+RaRnMoFG780ZZ2cCyPoHPjnv4kgTeADRN7N9sc+ZuM8
   5Gf5t2Nt1+lKn96cT+7WfzuCUiIj404wbCPALgSZMv0YxTP4iAFJlA/p6
   pwc3aaVOOM43tRfHb2L5sCqWC+DtNhlSJV5OtmYelqiE6AtmoL1QLajCv
   akgTgkktdl964UI0gcRaPT9Hev+ReA9oYbstq5Dg//qeHAB88ru33hM7c
   5+UEKdCsRivW6cAyLBsTeUr3ou4x2VoPAx/vjKAtZTD2hww+mykuUBWvX
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="250276884"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600";
   d="scan'208,217";a="250276884"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 00:00:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600";
   d="scan'208,217";a="547234106"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga008.jf.intel.com with ESMTP; 21 Feb 2022 00:00:34 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 21 Feb 2022 00:00:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 21 Feb 2022 00:00:34 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 21 Feb 2022 00:00:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5cvx3FMHDPnm5xmHfJcA4Nzlv7VMjeWvwMUluVyTLDIasLYqIXUbeTe4Ce6vYT9Y/DgHZuEdx0yllN4cExMuhKFvIwY/Az6lARkalk80PmvEtO93JRrAoLiiNrGO6kU7ferU2QhtKEiAd3+D/+ChNJrAtdIlLkdXcQIuoi/E0f4f/oPc8JnqF2A+SLVfS+XU1uKxBOYnD6l8USWD3UPhDXQ821MMWolOmgzksYA/7wZJvpuWFBZV48Rx9klO7KDJeoaa4lGd6tVP3Ftc4Nt8K5eY1+68BdK1uGLOl3bpK//6pajSwiGZeiKRaugXjFmLEkQZT/2KjAWiRsfsQXiVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SUjxs2+lps83RzsDbcrUe40X+U6Ycd1eUeTRmS89QQw=;
 b=iAkhnn9/AYTjWQSLhi8j2G81JLknzsEPuIhhHlkhIJu+ujT92zlpbKYxQhiNWP1TEOb77mSrrB70dAg9+vDt5dx5NSs283ir/V1AzYsOQpIxNA7VlUjvSSyGU5cbZrIqpPNHudmb8zV0F3Tszhl4s0N/FBxR2SXwM2LJ4IBuFOJPyj8W1KCImTJmWxzAALZdIHFlVHF5W7Rt5F5Kf+sbQJvqEsAXF0GtXrYw5NeYVr8viAFsal2Li/K8zrZOcARFWccn0EhLEfhRyeAvn77P3KW2zv7G28Zz4iQv5H+PlcPV7FIkG0LHTO8ywBMFbAmdpPhWYQ9z4xtRH2OJH/4Z+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by DM5PR1101MB2252.namprd11.prod.outlook.com (2603:10b6:4:52::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.26; Mon, 21 Feb
 2022 08:00:28 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::3c1d:7a5d:6944:fa38]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::3c1d:7a5d:6944:fa38%10]) with mapi id 15.20.4995.027; Mon, 21 Feb
 2022 08:00:28 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 3.4.2 (honister) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.4.2 (honister) is Released
Thread-Index: Adgm9VbyzLiUSjCqRR+9YR+eHeexiw==
Date: Mon, 21 Feb 2022 08:00:28 +0000
Message-ID: 
 <DM5PR1101MB2361390FC2C5B07E86D79ED6B93A9@DM5PR1101MB2361.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c4fdf6e-8572-44b4-c2c1-08d9f51039e2
x-ms-traffictypediagnostic: DM5PR1101MB2252:EE_
x-microsoft-antispam-prvs: 
 <DM5PR1101MB2252FD3B4B8DCC404E3D9CCCB93A9@DM5PR1101MB2252.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 C1+byyxWldt+Icc7VDyJdU7X9UKTyISMiIJcSx057C/lpx5hFiLwg5yoKi0Q1JMekzA0rnTBjAktHIzfHivJJDSiCz9mFBjrpwKYSFSm6G/19GYlyla2oOYw7my9V3GFfZKXrxiCFDZOFkkqPNPBgpiug8oVja1e9Aq4eMHnwco1537BQ+u9Y+G9XZC5egPoCnPNbF0+N6rTBNIcoOSxlZ2U2DefQkBnj+BeNgpCwZUiHZuibLv7MaCX10m/P86CW9it5JkR8GE7KUJkuK1WiWNNMJ2uVCKEO+pzYCfkCAsy88ne8BBMdfJmyVCFFwk4ooh3nVDu/tQTvaxwQbCWjhp7Z8mqPQsP58XEvGqomQRXwVsk74mhcpYJ8V8yCRJcsxsug9IY3CCBH1xRxk8gt+jMwfcuXJVhm4DiU0D2FZdFtTEwM0OArSD+bwiXy+xrAvqb/RmAuBVqQlLrHS7MkDYflHQCjE3u1Zcd0Sv55yitg2gy+aPiuC6vBLuzJpARcOp66tYr0VnhjlRfe/mR046cinRqKOC59yYED3YcL4xV256ocXuyTfJJpbYV7Fi5hAlP1d3ZG9P9cpgmLajl6qB4UsYK8+a5cETJR8tJ7u1OH4+IgngJ/URXTMUUUzcOMNqqK9IRUq3sZCYpBb1d5SfnPHBQHj4A76dqoJMFp4c695vGfDLAI3v5bQFyU68bswC6VW3M8sAmNhWkTvxXvu7keykgOczFXjPZ/u6gMIHtpD3eF9enILPQhRPOsfiQ673SZihsQq7T5ONN7cw+C3vOV5HL8PrnrEBsReX6jgWno0mf0hBHUSBym5rxOcy46UqEqiEsoQdKdToOQcJpkeVcqFrO3c96smA4nfnj1BM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(38070700005)(76116006)(450100002)(66556008)(66946007)(64756008)(66446008)(66476007)(8676002)(508600001)(186003)(966005)(122000001)(9686003)(33656002)(71200400001)(38100700002)(316002)(82960400001)(86362001)(52536014)(110136005)(6506007)(55016003)(7696005)(2906002)(83380400001)(8936002)(9326002)(5660300002)(166002)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?96AxI7/6G/LX9Gc/zdAyLO+VDC3DGiHSzC5+8E5It7dyyaaL5Hd5Woj20qVE?=
 =?us-ascii?Q?ChrFwBzx1nu+mPYqqMqqAN2+eiogUfRHH3aAdkFSG6W0AKywp9ZwLOnUPMl1?=
 =?us-ascii?Q?wPuaW7Cm7mNbT7TalU7WLzsUjOpMMxHEKoS946Nam+qstcw2WZD7YgtLx9q3?=
 =?us-ascii?Q?3faCBPC3xqCTPkvVWumFV3Y56xN071+AK2EltrdXfqoQvbiZciwt14vIDNRI?=
 =?us-ascii?Q?AEzc7OXtlCePPfGAK1tY3UXMJvcD96DDwR4KJGKluoad00jj96WMBo74HnL3?=
 =?us-ascii?Q?gsry69risSQfTIKnA76BPr0Bhg4KiOP5Q3M1k7Mq9KXUn3SJLdGj1Qe7lmaz?=
 =?us-ascii?Q?8n8n3gEBt7G9zHoPZvgsMj8oY4d0QHY8n3D/ed71hgI+uGn1xVkuMeqfQLD2?=
 =?us-ascii?Q?vtdB/cySRHtCp6avRMuhRR1VPHUmlr3slfKDSxlcQaXTBj85ZuLzY3RZUgLm?=
 =?us-ascii?Q?Ypfe5QNtHbS006wUpYWRTaHHMzDn+g3+qiLWJVuHvMYna8rsk3tX7x5f1/bn?=
 =?us-ascii?Q?zUNi9zbCkVTexf33+dHofDHE6Gkl3Ua4xFuw+36PdsdWIbYsxNd8Not9cGl2?=
 =?us-ascii?Q?N2Uncjnibv6QnentUJpCl0FZ8hEVC9l7WtWL7j59+mJCd4eCj3TWrQb97olf?=
 =?us-ascii?Q?sQv4NdD/Y8m5vtHQCUketpMTorSvfoNiqgGsG2ycmDNrfvWPsflJ0UJKvxHi?=
 =?us-ascii?Q?v5ROQOY4mh/mmI1Gv8EE8qy3YQPs5DleiuFV+utJse4hqes7k5T1IHIwDhk+?=
 =?us-ascii?Q?Z62FJbsqaKsdxFH2my+8VkiZqVGGN9UJA9DgsaTaef1VYKkHm6y2vq+Rrf9+?=
 =?us-ascii?Q?x10WXKGZvaXHpaDSxDq38mPMHLrxj5uxI08Lye/O3LnSyaX7DRSZyDWtJ/FI?=
 =?us-ascii?Q?SC8xzhZTtnbOZJFpDcjiuFsmvZd/kXi0FsH3JkBVZIXdvmdjIm4T0nKKJNYW?=
 =?us-ascii?Q?H0wm1oE/xYtu96oGVm7pp5h+JWSgmX8/kmPsbu06o5EwGvpXfj6La3aAaglf?=
 =?us-ascii?Q?AlnyjMPvyjZ1jT5H/KgnwDY5bPu3Vj71bl4y//xAxdvAxPOMzKa+FV5bnO94?=
 =?us-ascii?Q?HZhg8YaL8qYvsjYoULRTkcyHfFpYOpCzt/wlBRIPvqbpuqlTykX4yPQ5l2bt?=
 =?us-ascii?Q?Oc4NjEhD3Mn8vizQjMSVdhirU7b+gMnoUCWGkf0ZkGSmspYjnbvJ8EWUyvv0?=
 =?us-ascii?Q?hMqfFqB8qm+9SnTGvKt6sChQGaZJAW5moTaJ3rt3XL9E0UHpO2x5D/GG0agA?=
 =?us-ascii?Q?RZjWu02m9IdwQ0bDsoAmIg19v4ZDA6wvJIlM4y2fEYAlwXZpLYUgvpX8o/pk?=
 =?us-ascii?Q?dpQMRzkz+AJzFdk4HlenNldW5qed1z78KVnM4WnTE0oQZDO2qk1SroxKtucY?=
 =?us-ascii?Q?9s/fkBJu9OAzWEmmSzIxu3T92oe2w0/tFRSrsuNoFZt7o2uMRohr2a1/h6Dp?=
 =?us-ascii?Q?HTt0OxHzLWegzXf2A+WP+ROzo+N9BBX/ceKDO7pdI+aQ/o2s6jCJqQeHxAL8?=
 =?us-ascii?Q?yBrnoa+AFGK4vER0JXHY+1wUQCY5wWDkUCdoTPalCbWSG3uDfc+0QwRuc48Y?=
 =?us-ascii?Q?02j4Y4PqMni8KQDl3rTFdrrF6B4/E0/py1O1+n87liOiZdvdVeaXfrlRmI/T?=
 =?us-ascii?Q?m7d2OLvWKYo+3DhAsuVNeOFJxrLqvkbtxknCnUhiWdjtrX6jkOTqxK/o5w0V?=
 =?us-ascii?Q?yuZFUolAaRxsZcqJYL/SY1haqnU=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR1101MB2361390FC2C5B07E86D79ED6B93A9DM5PR1101MB2361_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6c4fdf6e-8572-44b4-c2c1-08d9f51039e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2022 08:00:28.8030
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 JqXg3DT72lBZ4Gkbq9ccSIlVEF+HV13dHxQTyKHzFD6orV+0XYrJZaMP2k40jWh4eMWvTtRKnzS6JwOSDss7bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2252
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Feb 2022 08:01:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56219

--_000_DM5PR1101MB2361390FC2C5B07E86D79ED6B93A9DM5PR1101MB2361_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 3.4.2 Release is now available=
 for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.2/poky-e0ab08bb6=
a32916b457d221021e7f402ffa36b1a.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/poky-e0ab08bb6a32916b457d=
221021e7f402ffa36b1a.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.2/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.2/testreport.txt

Thank you for everyone's contributions to this release.

Chee Yang Lee
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


- --------------------------
yocto-3.4.2 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: honister
Tag: yocto-3.4.2
Git Revision: e0ab08bb6a32916b457d221021e7f402ffa36b1a
Release Artefact: poky-e0ab08bb6a32916b457d221021e7f402ffa36b1a
sha: 8580dc5067ee426fe347a0d0f7a74c29ba539120bbe8438332339a9c8bce00fd
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.2/poky-e0ab08bb6=
a32916b457d221021e7f402ffa36b1a.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/poky-e0ab08bb6a32916b457d=
221021e7f402ffa36b1a.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: honister
Tag: yocto-3.4.2
Git Revision: 418a9c4c31615a9e3e011fc2b21fb7154bc6c93a
Release Artefact: oecore-418a9c4c31615a9e3e011fc2b21fb7154bc6c93a
sha: f2ca94a5a7ec669d4c208d1729930dfc1b917846dbb2393d01d6d5856fcbc6de
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.2/oecore-418a9c4=
c31615a9e3e011fc2b21fb7154bc6c93a.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/oecore-418a9c4c31615a9e3e=
011fc2b21fb7154bc6c93a.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: honister
Tag: yocto-3.4.2
Git Revision: f5d761cbd5c957e4405c5d40b0c236d263c916a8
Release Artefact: meta-mingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8
sha: d4305d638ef80948584526c8ca386a8cf77933dffb8a3b8da98d26a5c40fcc11
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.2/meta-mingw-f5d=
761cbd5c957e4405c5d40b0c236d263c916a8.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/meta-mingw-f5d761cbd5c957=
e4405c5d40b0c236d263c916a8.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: honister
Tag: yocto-3.4.2
Git Revision: f04e4369bf9dd3385165281b9fa2ed1043b0e400
Release Artefact: meta-gplv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400
sha: ef8e2b1ec1fb43dbee4ff6990ac736315c7bc2d8c8e79249e1d337558657d3fe
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.2/meta-gplv2-f04=
e4369bf9dd3385165281b9fa2ed1043b0e400.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/meta-gplv2-f04e4369bf9dd3=
385165281b9fa2ed1043b0e400.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: honister
Tag: yocto-3.4.2
Git Revision: c039182c79e2ccc54fff5d7f4f266340014ca6e0
Release Artefact: bitbake-c039182c79e2ccc54fff5d7f4f266340014ca6e0
sha: bd80297f8d8aa40cbcc8a3d4e23a5223454b305350adf34cd29b5fb65c1b4c52
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.2/bitbake-c03918=
2c79e2ccc54fff5d7f4f266340014ca6e0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/bitbake-c039182c79e2ccc54=
fff5d7f4f266340014ca6e0.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: honister
Tag: yocto-3.4.2
Git Revision: 3061d3d62054a5c3b9e16bfce4bcd186fa7a23d2


- ---------------
Contributors
- ---------------
Alexander Kanavin
Alexandre Belloni
Anton Mikanovich
Anuj Mittal
Bruce Ashfield
Carlos Rafael Giani
Chaitanya Vadrevu
Changqing Li
Dhruva Gole
Florian Amstutz
Joshua Watt
Kai Kang
Khairul Rohaizzat Jamaluddin
Khem Raj
Konrad Weihmann
Kory Maincent
Li Wang
Marek Vasut
Markus Volk
Martin Jansa
Max Krummenacher
Michael Opdenacker
Mingli Yu
Oleksiy Obitotskyy
Pavel Zhukov
Peter Kjellerstedt
Pgowda
Quentin Schulz
Richard Purdie
Robert Yang
Ross Burton
Rudolf J Streif
Sakib Sajal
Samuli Piippo
Schmidt, Adriaan
Stefan Herbrechtsmeier
Steve Sakoman
Sundeep KOKKONDA
Teoh Jay Shen
Thomas Perrot
Tim Orling
Vyacheslav Yurkov
Yongxin Liu
pgowda
wangmy

- ---------------
Known Issues
- ---------------
N/A

- ---------------
Security Fixes
- ---------------
tiff: backport fix for CVE-2022-22844
glibc : Fix CVE-2021-3999
glibc : Fix CVE-2021-3998
glibc : Fix CVE-2022-23219
glibc : Fix CVE-2022-23218
lighttpd: backport a fix for CVE-2022-22707
speex: fix CVE-2020-23903
linux-yocto/5.10: amdgpu: updates for CVE-2021-42327
libsndfile1: fix CVE-2021-4156
xserver-xorg: whitelist two CVEs
grub2: fix CVE-2021-3981
xserver-xorg: update CVE_PRODUCT
binutils: CVE-2021-42574
gcc: Fix CVE-2021-42574
gcc: Fix CVE-2021-35465
cve-extra-exclusions: add db CVEs to exclusion list
gcc: Add CVE-2021-37322 to the list of CVEs to ignore
bind: fix CVE-2021-25219
openssh: fix CVE-2021-41617
ncurses: fix CVE-2021-39537
vim: fix CVE-2021-3968 and CVE-2021-3973
vim: fix CVE-2021-3927 and CVE-2021-3928
gmp: fix CVE-2021-43618


- ---------------
Fixes
- ---------------
build-appliance-image: Update to honister head revision
poky.conf: bump version for 3.4.2 release
libxml2: Backport python3-lxml workaround patch
core-image-sato-sdk: allocate more memory when in qemu
vim: upgrade to patch 4269
vim: update to include latest CVE fixes
expat: upgrade to 2.4.4
libusb1: correct SRC_URI
yocto-check-layer: add debug output for the layers that were found
linux-firmware: Add CLM blob to linux-firmware-bcm4373 package
linux-yocto/5.10: update to v5.10.93
icu: fix make_icudata dependencies
sstate: Improve failure to obtain archive message/handling
insane.bbclass: Correct package_qa_check_empty_dirs()
sstate: A third fix for for touching files inside pseudo
kernel: introduce python3-dtschema-wrapper
vim: upgrade to 8.2 patch 3752
bootchart2: Add missing python3-math dependency
socat: update SRC_URI
pigz: fix one failure of command "unpigz -l"
linux-yocto/5.14: update genericx86* machines to v5.14.21
linux-yocto/5.10: update genericx86* machines to v5.10.87
go: upgrade 1.16.10 -> 1.16.13
linux-yocto/5.10/cfg: add kcov feature fragment
linux-yocto/5.14: fix arm 32bit -rt warnings
oeqa/sstate: Fix allarch samesigs test
rootfs-postcommands.bbclass: Make two comments use the new variable syntax
cve-check: add lockfile to task
lib/oe/reproducible: correctly set .git location when recursively looking f=
or git repos
epiphany: Update 40.3 -> 40.6
scripts/buildhistory-diff: drop use of distutils
scripts: Update to use exec_module() instead of load_module()
vulkan-loader: inherit pkgconfig
webkitgtk: Add reproducibility fix
openssl: Add reproducibility fix
rpm: remove tmp folder created during install
package_manager: ipk: Fix host manifest generation
bitbake: utils: Update to use exec_module() instead of load_module()
linux-yocto: add libmpc-native to DEPENDS
ref-manual: fix patch documentation
bitbake: tests/fetch: Drop gnu urls from wget connectivity test
bitbake: fetch: npm: Use temporary file for empty user config
bitbake: fetch: npm: Quote destdir in run chmod command
bitbake: process: Do not mix stderr with stdout
xserver-xorg: upgrade 1.20.13 -> 1.20.14
python3-pyelftools: Depend on debugger, pprint
linux-firmware: upgrade 20211027 -> 20211216
oeqa/selftest/bbtests: Use YP sources mirror instead of GNU
systemd: Fix systemd-journal-gateway user/groups
license.bbclass: implement ast.NodeVisitor.visit_Constant
oe/license: implement ast.NodeVisitor.visit_Constant
packagedata.py: silence a DeprecationWarning
uboot-sign: fix the concatenation when multiple U-BOOT configurations are s=
pecified
runqemu: check the qemu PID has been set before kill()ing it
selftest/devtool: Check branch in git fetch
recipetool: Set master branch only as fallback
kern-tools: bug fixes and kgit-gconfig
linux-yocto-rt/5.10: update to -rt56
linux-yocto/5.14: update to v5.14.21
python3: upgrade 3.9.7 -> 3.9.9
bitbake: lib/pyinotify.py: Remove deprecated module asyncore
updates for recent releases
libdrm: upgrade 2.4.108 -> 2.4.109
patch.py: Initialize git repo before patching
boost: Fix build on arches with no atomics
boost: allow searching for python310
recipetool: extend curl detection when creating recipes
recipetool: handle GitLab URLs like we do GitHub
README.OE-Core.md: update URLs
libtool: change the default AR_FLAGS from "cru" to "cr"
libtool: Update patchset to match those submitted upstream
scripts/checklayer/common.py: Fixed a minor grammatical error
oeqa/parselogs: Fix quoting
oeqa/utils/dump: Fix typo
systemd: update 249.6 -> 249.7
glibc: Fix i586/c3 support
wic: support rootdev identified by partition label
buildhistory: Fix srcrevs output
classes/crate-fetch: Ensure crate fetcher is available
rootfs-postcommands: update systemd_create_users
classes/meson: Add optional rust definitions
rust-cross: Replace TARGET_ARCH with TUNE_PKGARCH
maintainers.inc: fix up rust-cross entry
rust-cross: Fix directory not deleted for race glibc vs. musl
wic: use shutil.which
bitbake: data_smart.py: Skip old override syntax checking for anonymous fun=
ctions
documentation: conf.py: fix version of bitbake objects.inv
updates for release 3.3.4


--_000_DM5PR1101MB2361390FC2C5B07E86D79ED6B93A9DM5PR1101MB2361_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Hi<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.4.2 R=
elease is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4.2/poky-e0ab08bb6a32916b457d221021e7f402ffa36b1a.tar.bz2">=
http://downloads.yoctoproject.org/releases/yocto/yocto-3.4.2/poky-e0ab08bb6=
a32916b457d221021e7f402ffa36b1a.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.4.2/poky-e0ab08bb6a32916b457d221021e7f402ffa36b1a.tar.bz2">http://mirr=
ors.kernel.org/yocto/yocto/yocto-3.4.2/poky-e0ab08bb6a32916b457d221021e7f40=
2ffa36b1a.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4.2/RELEASENOTES">http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4.2/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.4.2/testreport.txt">http://downloads.yoctoproject.org/relea=
ses/yocto/yocto-3.4.2/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chee Yang Lee<br>
<a href=3D"mailto:chee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal">Yocto Project Build and Release<br>
<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.4.2 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/poky<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: e0ab08bb6a32916b457d221021e7f402ffa36b=
1a<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-e0ab08bb6a32916b457d221021e7f=
402ffa36b1a<o:p></o:p></p>
<p class=3D"MsoNormal">sha: 8580dc5067ee426fe347a0d0f7a74c29ba539120bbe8438=
332339a9c8bce00fd<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.4.2/poky-e0ab08bb6a32916b457d221021e7f402ffa36b1a.tar.bz2<o:p></o:p></=
p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/po=
ky-e0ab08bb6a32916b457d221021e7f402ffa36b1a.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 418a9c4c31615a9e3e011fc2b21fb7154bc6c9=
3a<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-418a9c4c31615a9e3e011fc2b21=
fb7154bc6c93a<o:p></o:p></p>
<p class=3D"MsoNormal">sha: f2ca94a5a7ec669d4c208d1729930dfc1b917846dbb2393=
d01d6d5856fcbc6de<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.4.2/oecore-418a9c4c31615a9e3e011fc2b21fb7154bc6c93a.tar.bz2<o:p></o:p>=
</p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/oe=
core-418a9c4c31615a9e3e011fc2b21fb7154bc6c93a.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: f5d761cbd5c957e4405c5d40b0c236d263c916=
a8<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-f5d761cbd5c957e4405c5d4=
0b0c236d263c916a8<o:p></o:p></p>
<p class=3D"MsoNormal">sha: d4305d638ef80948584526c8ca386a8cf77933dffb8a3b8=
da98d26a5c40fcc11<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.4.2/meta-mingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8.tar.bz2<o:p></=
o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/me=
ta-mingw-f5d761cbd5c957e4405c5d40b0c236d263c916a8.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: f04e4369bf9dd3385165281b9fa2ed1043b0e4=
00<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-f04e4369bf9dd3385165281=
b9fa2ed1043b0e400<o:p></o:p></p>
<p class=3D"MsoNormal">sha: ef8e2b1ec1fb43dbee4ff6990ac736315c7bc2d8c8e7924=
9e1d337558657d3fe<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.4.2/meta-gplv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400.tar.bz2<o:p></=
o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/me=
ta-gplv2-f04e4369bf9dd3385165281b9fa2ed1043b0e400.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: c039182c79e2ccc54fff5d7f4f266340014ca6=
e0<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-c039182c79e2ccc54fff5d7f4f=
266340014ca6e0<o:p></o:p></p>
<p class=3D"MsoNormal">sha: bd80297f8d8aa40cbcc8a3d4e23a5223454b305350adf34=
cd29b5fb65c1b4c52<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.4.2/bitbake-c039182c79e2ccc54fff5d7f4f266340014ca6e0.tar.bz2<o:p></o:p=
></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.4.2/bi=
tbake-c039182c79e2ccc54fff5d7f4f266340014ca6e0.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: honister<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.4.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 3061d3d62054a5c3b9e16bfce4bcd186fa7a23=
d2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Alexandre Belloni<o:p></o:p></p>
<p class=3D"MsoNormal">Anton Mikanovich<o:p></o:p></p>
<p class=3D"MsoNormal">Anuj Mittal<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Carlos Rafael Giani<o:p></o:p></p>
<p class=3D"MsoNormal">Chaitanya Vadrevu<o:p></o:p></p>
<p class=3D"MsoNormal">Changqing Li<o:p></o:p></p>
<p class=3D"MsoNormal">Dhruva Gole<o:p></o:p></p>
<p class=3D"MsoNormal">Florian Amstutz<o:p></o:p></p>
<p class=3D"MsoNormal">Joshua Watt<o:p></o:p></p>
<p class=3D"MsoNormal">Kai Kang<o:p></o:p></p>
<p class=3D"MsoNormal">Khairul Rohaizzat Jamaluddin<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Konrad Weihmann<o:p></o:p></p>
<p class=3D"MsoNormal">Kory Maincent<o:p></o:p></p>
<p class=3D"MsoNormal">Li Wang<o:p></o:p></p>
<p class=3D"MsoNormal">Marek Vasut<o:p></o:p></p>
<p class=3D"MsoNormal">Markus Volk<o:p></o:p></p>
<p class=3D"MsoNormal">Martin Jansa<o:p></o:p></p>
<p class=3D"MsoNormal">Max Krummenacher<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Opdenacker<o:p></o:p></p>
<p class=3D"MsoNormal">Mingli Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Oleksiy Obitotskyy<o:p></o:p></p>
<p class=3D"MsoNormal">Pavel Zhukov<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Kjellerstedt<o:p></o:p></p>
<p class=3D"MsoNormal">Pgowda<o:p></o:p></p>
<p class=3D"MsoNormal">Quentin Schulz<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Robert Yang<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Rudolf J Streif<o:p></o:p></p>
<p class=3D"MsoNormal">Sakib Sajal<o:p></o:p></p>
<p class=3D"MsoNormal">Samuli Piippo<o:p></o:p></p>
<p class=3D"MsoNormal">Schmidt, Adriaan<o:p></o:p></p>
<p class=3D"MsoNormal">Stefan Herbrechtsmeier<o:p></o:p></p>
<p class=3D"MsoNormal">Steve Sakoman<o:p></o:p></p>
<p class=3D"MsoNormal">Sundeep KOKKONDA<o:p></o:p></p>
<p class=3D"MsoNormal">Teoh Jay Shen<o:p></o:p></p>
<p class=3D"MsoNormal">Thomas Perrot<o:p></o:p></p>
<p class=3D"MsoNormal">Tim Orling<o:p></o:p></p>
<p class=3D"MsoNormal">Vyacheslav Yurkov<o:p></o:p></p>
<p class=3D"MsoNormal">Yongxin Liu<o:p></o:p></p>
<p class=3D"MsoNormal">pgowda<o:p></o:p></p>
<p class=3D"MsoNormal">wangmy<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">N/A<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">tiff: backport fix for CVE-2022-22844<o:p></o:p></p>
<p class=3D"MsoNormal">glibc : Fix CVE-2021-3999<o:p></o:p></p>
<p class=3D"MsoNormal">glibc : Fix CVE-2021-3998<o:p></o:p></p>
<p class=3D"MsoNormal">glibc : Fix CVE-2022-23219<o:p></o:p></p>
<p class=3D"MsoNormal">glibc : Fix CVE-2022-23218<o:p></o:p></p>
<p class=3D"MsoNormal">lighttpd: backport a fix for CVE-2022-22707<o:p></o:=
p></p>
<p class=3D"MsoNormal">speex: fix CVE-2020-23903<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: amdgpu: updates for CVE-2021-42327=
<o:p></o:p></p>
<p class=3D"MsoNormal">libsndfile1: fix CVE-2021-4156<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: whitelist two CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">grub2: fix CVE-2021-3981<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: update CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: CVE-2021-42574<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: Fix CVE-2021-42574<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: Fix CVE-2021-35465<o:p></o:p></p>
<p class=3D"MsoNormal">cve-extra-exclusions: add db CVEs to exclusion list<=
o:p></o:p></p>
<p class=3D"MsoNormal">gcc: Add CVE-2021-37322 to the list of CVEs to ignor=
e<o:p></o:p></p>
<p class=3D"MsoNormal">bind: fix CVE-2021-25219<o:p></o:p></p>
<p class=3D"MsoNormal">openssh: fix CVE-2021-41617<o:p></o:p></p>
<p class=3D"MsoNormal">ncurses: fix CVE-2021-39537<o:p></o:p></p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3968 and CVE-2021-3973<o:p></o:p><=
/p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3927 and CVE-2021-3928<o:p></o:p><=
/p>
<p class=3D"MsoNormal">gmp: fix CVE-2021-43618<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to honister head revis=
ion<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: bump version for 3.4.2 release<o:p></o:p>=
</p>
<p class=3D"MsoNormal">libxml2: Backport python3-lxml workaround patch<o:p>=
</o:p></p>
<p class=3D"MsoNormal">core-image-sato-sdk: allocate more memory when in qe=
mu<o:p></o:p></p>
<p class=3D"MsoNormal">vim: upgrade to patch 4269<o:p></o:p></p>
<p class=3D"MsoNormal">vim: update to include latest CVE fixes<o:p></o:p></=
p>
<p class=3D"MsoNormal">expat: upgrade to 2.4.4<o:p></o:p></p>
<p class=3D"MsoNormal">libusb1: correct SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-check-layer: add debug output for the layers t=
hat were found<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: Add CLM blob to linux-firmware-bcm43=
73 package<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.93<o:p></o:p></p>
<p class=3D"MsoNormal">icu: fix make_icudata dependencies<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: Improve failure to obtain archive message/ha=
ndling<o:p></o:p></p>
<p class=3D"MsoNormal">insane.bbclass: Correct package_qa_check_empty_dirs(=
)<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: A third fix for for touching files inside ps=
eudo<o:p></o:p></p>
<p class=3D"MsoNormal">kernel: introduce python3-dtschema-wrapper<o:p></o:p=
></p>
<p class=3D"MsoNormal">vim: upgrade to 8.2 patch 3752<o:p></o:p></p>
<p class=3D"MsoNormal">bootchart2: Add missing python3-math dependency<o:p>=
</o:p></p>
<p class=3D"MsoNormal">socat: update SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">pigz: fix one failure of command &quot;unpigz -l&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.14: update genericx86* machines to v5.=
14.21<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update genericx86* machines to v5.=
10.87<o:p></o:p></p>
<p class=3D"MsoNormal">go: upgrade 1.16.10 -&gt; 1.16.13<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10/cfg: add kcov feature fragment<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.14: fix arm 32bit -rt warnings<o:p></o=
:p></p>
<p class=3D"MsoNormal">oeqa/sstate: Fix allarch samesigs test<o:p></o:p></p=
>
<p class=3D"MsoNormal">rootfs-postcommands.bbclass: Make two comments use t=
he new variable syntax<o:p></o:p></p>
<p class=3D"MsoNormal">cve-check: add lockfile to task<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/reproducible: correctly set .git location whe=
n recursively looking for git repos<o:p></o:p></p>
<p class=3D"MsoNormal">epiphany: Update 40.3 -&gt; 40.6<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/buildhistory-diff: drop use of distutils<o:p=
></o:p></p>
<p class=3D"MsoNormal">scripts: Update to use exec_module() instead of load=
_module()<o:p></o:p></p>
<p class=3D"MsoNormal">vulkan-loader: inherit pkgconfig<o:p></o:p></p>
<p class=3D"MsoNormal">webkitgtk: Add reproducibility fix<o:p></o:p></p>
<p class=3D"MsoNormal">openssl: Add reproducibility fix<o:p></o:p></p>
<p class=3D"MsoNormal">rpm: remove tmp folder created during install<o:p></=
o:p></p>
<p class=3D"MsoNormal">package_manager: ipk: Fix host manifest generation<o=
:p></o:p></p>
<p class=3D"MsoNormal">bitbake: utils: Update to use exec_module() instead =
of load_module()<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto: add libmpc-native to DEPENDS<o:p></o:p>=
</p>
<p class=3D"MsoNormal">ref-manual: fix patch documentation<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch: Drop gnu urls from wget connec=
tivity test<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch: npm: Use temporary file for empty us=
er config<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch: npm: Quote destdir in run chmod comm=
and<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: process: Do not mix stderr with stdout<o:p>=
</o:p></p>
<p class=3D"MsoNormal">xserver-xorg: upgrade 1.20.13 -&gt; 1.20.14<o:p></o:=
p></p>
<p class=3D"MsoNormal">python3-pyelftools: Depend on debugger, pprint<o:p><=
/o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20211027 -&gt; 20211216<o:p>=
</o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/bbtests: Use YP sources mirror instead=
 of GNU<o:p></o:p></p>
<p class=3D"MsoNormal">systemd: Fix systemd-journal-gateway user/groups<o:p=
></o:p></p>
<p class=3D"MsoNormal">license.bbclass: implement ast.NodeVisitor.visit_Con=
stant<o:p></o:p></p>
<p class=3D"MsoNormal">oe/license: implement ast.NodeVisitor.visit_Constant=
<o:p></o:p></p>
<p class=3D"MsoNormal">packagedata.py: silence a DeprecationWarning<o:p></o=
:p></p>
<p class=3D"MsoNormal">uboot-sign: fix the concatenation when multiple U-BO=
OT configurations are specified<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu: check the qemu PID has been set before kill=
()ing it<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/devtool: Check branch in git fetch<o:p></o:=
p></p>
<p class=3D"MsoNormal">recipetool: Set master branch only as fallback<o:p><=
/o:p></p>
<p class=3D"MsoNormal">kern-tools: bug fixes and kgit-gconfig<o:p></o:p></p=
>
<p class=3D"MsoNormal">linux-yocto-rt/5.10: update to -rt56<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.14: update to v5.14.21<o:p></o:p></p>
<p class=3D"MsoNormal">python3: upgrade 3.9.7 -&gt; 3.9.9<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: lib/pyinotify.py: Remove deprecated module =
asyncore<o:p></o:p></p>
<p class=3D"MsoNormal">updates for recent releases<o:p></o:p></p>
<p class=3D"MsoNormal">libdrm: upgrade 2.4.108 -&gt; 2.4.109<o:p></o:p></p>
<p class=3D"MsoNormal">patch.py: Initialize git repo before patching<o:p></=
o:p></p>
<p class=3D"MsoNormal">boost: Fix build on arches with no atomics<o:p></o:p=
></p>
<p class=3D"MsoNormal">boost: allow searching for python310<o:p></o:p></p>
<p class=3D"MsoNormal">recipetool: extend curl detection when creating reci=
pes<o:p></o:p></p>
<p class=3D"MsoNormal">recipetool: handle GitLab URLs like we do GitHub<o:p=
></o:p></p>
<p class=3D"MsoNormal">README.OE-Core.md: update URLs<o:p></o:p></p>
<p class=3D"MsoNormal">libtool: change the default AR_FLAGS from &quot;cru&=
quot; to &quot;cr&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">libtool: Update patchset to match those submitted up=
stream<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/checklayer/common.py: Fixed a minor grammati=
cal error<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/parselogs: Fix quoting<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/utils/dump: Fix typo<o:p></o:p></p>
<p class=3D"MsoNormal">systemd: update 249.6 -&gt; 249.7<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Fix i586/c3 support<o:p></o:p></p>
<p class=3D"MsoNormal">wic: support rootdev identified by partition label<o=
:p></o:p></p>
<p class=3D"MsoNormal">buildhistory: Fix srcrevs output<o:p></o:p></p>
<p class=3D"MsoNormal">classes/crate-fetch: Ensure crate fetcher is availab=
le<o:p></o:p></p>
<p class=3D"MsoNormal">rootfs-postcommands: update systemd_create_users<o:p=
></o:p></p>
<p class=3D"MsoNormal">classes/meson: Add optional rust definitions<o:p></o=
:p></p>
<p class=3D"MsoNormal">rust-cross: Replace TARGET_ARCH with TUNE_PKGARCH<o:=
p></o:p></p>
<p class=3D"MsoNormal">maintainers.inc: fix up rust-cross entry<o:p></o:p><=
/p>
<p class=3D"MsoNormal">rust-cross: Fix directory not deleted for race glibc=
 vs. musl<o:p></o:p></p>
<p class=3D"MsoNormal">wic: use shutil.which<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart.py: Skip old override syntax che=
cking for anonymous functions<o:p></o:p></p>
<p class=3D"MsoNormal">documentation: conf.py: fix version of bitbake objec=
ts.inv<o:p></o:p></p>
<p class=3D"MsoNormal">updates for release 3.3.4<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM5PR1101MB2361390FC2C5B07E86D79ED6B93A9DM5PR1101MB2361_--

