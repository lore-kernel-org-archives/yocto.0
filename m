Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B282D116E2
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 03:11:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by mx.groups.io with SMTP id smtpd.web11.3927.1729825908394218584
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 20:11:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=fLQHyrPh;
 spf=pass (domain: intel.com, ip: 192.198.163.15, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1729825909; x=1761361909;
  h=from:to:subject:date:message-id:mime-version;
  bh=pZWQBZX03N5CFtkuQXi0Ua1uF2c6b8SOXQrrzd7ttsw=;
  b=fLQHyrPhQ7McGmvLLjbpHGWXuXn4rB7NRWideNqjHfOfHfmbjj7OdATk
   AGsc44tOLdBbbudON9L39OHbI1nx02BSsthe+lp0DsbpwXEAp+i1Rqjsn
   XU0QCwt+lpQmRo1YmYIUO4s53z2KdtDHCzITAlIB/2I9HcqJwFqBdidQO
   0RyvHFQeCeYq4wx7WFSktEim6VC5DXs3b39EG1IlCghQQM81bcBS190+J
   UDLqO+hyB54uesntpAcdPqQOHdIE4pOu3zAacBiRq5ihtPx58ixJqkUC7
   IXXwXXpYxfAMGg3WQbDIb/JFn+uyhb90bbvXC60YeF0/2vU4h+oNlvMsn
   Q==;
X-CSE-ConnectionGUID: mx0hKdl9Tdy/Ei274wrBDw==
X-CSE-MsgGUID: qfN2I/VHQ8WtR1Ke2SW3IQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29604451"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; 
   d="scan'208,217";a="29604451"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2024 20:11:48 -0700
X-CSE-ConnectionGUID: DXQ0SX3oT6K7TSNFD6v8Ow==
X-CSE-MsgGUID: MA/JOlRyTeu36RoiqOEHSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; 
   d="scan'208,217";a="111629242"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 24 Oct 2024 20:11:48 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 20:11:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 20:11:46 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 20:11:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QUHwTq9Wkx7o12Ew68KvKL77qfU6nQJx7t+cgmL4DzDC7aCC5Gn5B7JIVALpoSbOSwYeviPDchbpOyVyBYpuZo/m80FLzldtZjjx7eOTKx3cfsi84WcSjd7Wh1schbukxDJI199YZifDu2qymiUd8zKG0PpSrCCNkzAz/27IF9soxgmAiWhd3T9uOirSa38RTSMBXVvXAFB7pTbYf0BscSRrUtkXdTwthwsew8qm+kaKnJv99qmx5paMhYJk7Va7/uK+ttHFfpzBKe6e1Riqh6Ng74tULHC79tJxRH0c/l6fkden8yupFk5xQTcWy8S5SkYLc5FhduiQXBjKfddDaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5xet0xW3dCtDMXPgNwQ9n13wLf5BU/NjL76lFYlrsoo=;
 b=rtb7egLqOROMdJogMBn7KiG1RL8/xnbVoCczXUp83ePTlJQW0Fg3Rdfgte6DbLwD323jnX4v4sJfG+XlqQ+MVXTAHK0uyWzHzGTGAGRkdWCSMUURwbjTnXoqqcqh0l2OBw2EdsnCjKu+qCVtHAW54x1HMMYWq07ziuQ/V2SFkLJN1tI7O0ZlGumTPLtmqpksiXfFULtzomvfVqATlYWzjCAKIgwgG6vID85lzgrlLZ5YWGhINBHnKHmux//Uo7CoBxDLP2BwsZqQJa5DaOVeRNldlWIimFzgzf/qTX4y8oA9fs78mXhh0LGOshX/cUfAG3Qv0+s3zvqlAranuCsOvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by SJ1PR11MB6275.namprd11.prod.outlook.com (2603:10b6:a03:456::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 03:11:44 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::fd3f:dc5d:e481:43d4]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::fd3f:dc5d:e481:43d4%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 03:11:43 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.22 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.22 is Released
Thread-Index: AdsmhhmX0We3gapaSyKHuK0yvzJf+A==
Date: Fri, 25 Oct 2024 03:11:43 +0000
Message-ID: <CH3PR11MB80937CCE1A5D889D00FB9695B94F2@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|SJ1PR11MB6275:EE_
x-ms-office365-filtering-correlation-id: 6c2df711-2ce1-48b2-ad43-08dcf4a2c0fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|8096899003|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?qRavtNU8JGFEqqb934PvrXOHaWXLWkU51mbXAXC6/NyZb4VjarCLBLAJSP?=
 =?iso-8859-1?Q?8Wv5O1dwzvikhM5arQr8DF9Fz3YaAmDV/abn8Y/F8C5+Kgk0pHgABMh+lU?=
 =?iso-8859-1?Q?AcRwnO81CFklUPiAbmv7exo+Hfuz4IzmlYkIrmae8JXUkbjcqlKIec3LwS?=
 =?iso-8859-1?Q?BUfcDTn4PspqEepnOk+3AEM2Tp3j+f6I/hxrUvAmijci0d8+cawyeLndI8?=
 =?iso-8859-1?Q?je9Pmqx51bpVke7vGNurlWgVrGuCsWFdwwXtjepgEIxUPDJEu6T0osUZGl?=
 =?iso-8859-1?Q?fJh7NPNK1h5ErUAgMH6KsxExSREzS4W7qqy7Zz2u0TwONUXwKfPRvgKvaL?=
 =?iso-8859-1?Q?TeVIAO8XlAcD9D5F5r13bE2wRu8mryhg86FbDpzQw8NlJKMaMc3/JESKKA?=
 =?iso-8859-1?Q?oQT2TR766iIijS50OPtj+4iWr6pGd/+VjrdhktlT9zP/xMZc2F0CvAFwv8?=
 =?iso-8859-1?Q?UEcWVpLtnzmYOk4Mv7NRfRsdLM+FICb8xafR1C6AByzViH+396UPCpHGmn?=
 =?iso-8859-1?Q?cvpu7BFOzfDPMVlermcULYujboZ9s92MbouMuOS8q1xReV2txCzyBY68HZ?=
 =?iso-8859-1?Q?6N9YEOBCguk2f+JnAK6kqfNipzTEVm2h3yCynSWMmfahn0cNbER8gvGsNV?=
 =?iso-8859-1?Q?FHjHakIUL+NcaKHi/AcTZBN4Fyt7873w5EgqpfgGAO3sSfusqpJIY8v8G7?=
 =?iso-8859-1?Q?4BE6GoAXhW/tEEmkTOrjiVuqpLk2ScCed4nFZbcVI+9yS86IXyZlRK64tB?=
 =?iso-8859-1?Q?S1HCtIigUxfTohA4EbdIwbDcQG+wHES1qhA7f/tq50XOuWvVPjlGQui0SH?=
 =?iso-8859-1?Q?LSbePTk6L6jjgl/BgStIGjhRRPDF8+ftdX8eHMgwVtl5/Iol1lrwKA1bNV?=
 =?iso-8859-1?Q?JXg8stzDfM7h5ftyfDuJP49jAWzGFOtO/fg4z7AT1nO9tD9IB/CXjceZdj?=
 =?iso-8859-1?Q?8nvI4bjChQUY6ZYpjRVvSi+L35WkHrtPG4aqRQOjxPu6e7FBOvJ6D/0KNS?=
 =?iso-8859-1?Q?YUEdiz/djRJ8HFzuaJFntf08dqx4n60So/nPC5H9u1+AEmqFszKXiV5q1m?=
 =?iso-8859-1?Q?75Kn67ZdmfYRrkm55xw0LqRgyulMM6fqhe0kJaifq3il+e+RjCIGUEaNSC?=
 =?iso-8859-1?Q?22KJA39zfYmNdyPqHkjaseF6ItjGj/Ozfw3TueKH2PHKtNtt0MwiozCZ1J?=
 =?iso-8859-1?Q?cXAiVDs+SZZpX5hBkhc/5tEWDLvdZ2VmnLO6XAmOQBd4gK5r7iQ5/yv1w+?=
 =?iso-8859-1?Q?bYp905Cm6Eaoz2uuBlfCYIfunirz2Uenbdchuj8EG38u0iue6oh4yW82de?=
 =?iso-8859-1?Q?idEyhm9TXJdqsdCY8O1hANd+6wIaF1PvYMyG1BIWdBw75luulZ+I6S5l4Y?=
 =?iso-8859-1?Q?q1zc5dsreC?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?g8p97+MJgYKTchXpn1PxSnvMFl/oK8HWxPdNx2QBessjEmzbg9y/OVkK2Y?=
 =?iso-8859-1?Q?LoGuIkaUO9pSX0Nzi/vLJf6CiIkjiDwzViA9rOdFiqBbK/fBZV+qvmmGKa?=
 =?iso-8859-1?Q?BrYAiMQH/B/dsGgxaydaztQrBaxfirWPh0x05R/YSPYSLdrAewzcvmyMCU?=
 =?iso-8859-1?Q?nJTtBaCNR6fPBaTB2y0Bj91Zkly6eigjCM0WUHnFmojx+cjnaaxSgGX/tB?=
 =?iso-8859-1?Q?HnLsho8iGSqJWeTU++rwSm/De4XwGBN1aSrJLITYG0rh8fkvOFErpO3Ve6?=
 =?iso-8859-1?Q?3xGxIuwihmoeCIvGayXNpSo/3VjRI02wFw3XFwToQXy5DX1NuYMTwQz5Fh?=
 =?iso-8859-1?Q?y9udPKyDJwSEkHfmtAjI9Ez2uKHizxylITPifixPL+qHiYhwxK99UA42BL?=
 =?iso-8859-1?Q?OkhhawmOedIJ9DBfQ96sxvEMonHUc2SvTAcw7tUYjTHUu8dUjjpAveT4C1?=
 =?iso-8859-1?Q?lOU95t/+58QAGJgHcD608JvE70wC8xpdtODLRKu74AqPZ4klaQINmwrEAh?=
 =?iso-8859-1?Q?vVn9ac2v2DhjxPVligkRhjZoOPX3DN0ZVuvHwkGj2/q7v6IwfhpasoGyBb?=
 =?iso-8859-1?Q?/mbaUANAUXw+YUxS8ugFT8MAjz3SeIxlIcYJ3UMsrSAzWrbxAyfxDUEr5S?=
 =?iso-8859-1?Q?pgxPTB9FLKoZyI3qb8Q62f/AIr423AgfaygQzfciFz2dcBBlWzCrPgEkCv?=
 =?iso-8859-1?Q?NsJ9iCfowHYPJkvD0TKKd28ZuHKRG9MOGg08U0o/3bhs9jch/cziO59rCB?=
 =?iso-8859-1?Q?l7NPQotnoDUppcL19QTSz4/0BuiMnUvdkwBYl0Lb5Ehkgcd/yKZwpQ74hO?=
 =?iso-8859-1?Q?+WkOaLrMpvV45Jf3ZRzgS90lOKV45dkurzOEqBFCwlK3XuWnzE2a1kvQxU?=
 =?iso-8859-1?Q?EUUtLlw2kbU0crvK82qPxpnh6DUqOgXpU9tPPSsaEYPs53wWIupjZ+ekE1?=
 =?iso-8859-1?Q?RArhUDI1fKZ5gFFDA6+xw3m1oZo0fQ5mJHmVfzefpFF6bBWz5Lb6TVDnwr?=
 =?iso-8859-1?Q?RaXAweffA/3WP8xqa6FMXgnAJfvRICYmQ9LDYxfBDzRGIgROlue05uYIN+?=
 =?iso-8859-1?Q?UaHN2YbMiDoK75zfQANzJzOIsXtXewuFV7hIWSMYfZgSiABV6SYwcPmPCE?=
 =?iso-8859-1?Q?196Yvpkho3+8+R4xMJ8t4XTJmj+CLoJKuJmxFxmWducki6S3i4JF/ynb43?=
 =?iso-8859-1?Q?g+HUhPZcqZ8bjJSD7xQD6bnXiyPE4WcxFp275jbP3yHL0M8AH6pfnHFu/M?=
 =?iso-8859-1?Q?o6MstZ3mV12KoV6LshAGWOA0SaLTbo5Z3I5K+7nw0mrIGBkTgl3gv/vkwg?=
 =?iso-8859-1?Q?V9a89tU1vZ/Vpb3OBmR3eqSt4Y31UECK4bPubq0h/JN96efZ7FcFTZI9nJ?=
 =?iso-8859-1?Q?pAlmp6O0vVsBUbEYMeNlK4FWFtGgkc7FumTGg3vFB/EbVLoh/R0yWsnmJt?=
 =?iso-8859-1?Q?pygf9rdDNXuhiJ9Ca3eWqmqammNExzi/qNjNqPBCLp28w68bXrf6sv/zU6?=
 =?iso-8859-1?Q?3W+//y4uaQK+XPJD0XoaPv7D+iPQsjquh/ygaQ+JQr6WQSdqnvmHmuFzXp?=
 =?iso-8859-1?Q?wxB1WboNs3ytDp98CLhpoRv6gVw+7Eoaco4UISXD3Wz2Bav7ihOKZ9T+8w?=
 =?iso-8859-1?Q?zFJv2HUYWfFwf6wsk599fru8H08xtiYNTC?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB80937CCE1A5D889D00FB9695B94F2CH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c2df711-2ce1-48b2-ad43-08dcf4a2c0fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2024 03:11:43.9284
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zQR4RM7ES8ux70W3uM3OFJUrziKAKgSTEcLtrwYzKwk8lXC130JLZkfwvQ8ynFg6LC3k/wiMeexouaOGAJnDng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6275
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 03:11:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64117

--_000_CH3PR11MB80937CCE1A5D889D00FB9695B94F2CH3PR11MB8093namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.22 Release is now availabl=
e for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/poky-7e87dc42=
2d972e0dc98372318fcdc63a76347d16.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.22/poky-7e87dc422d972e0dc98=
372318fcdc63a76347d16.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


- --------------------------
yocto-4.0.22 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.22
Git Revision: 7e87dc422d972e0dc98372318fcdc63a76347d16
Release Artefact: poky-7e87dc422d972e0dc98372318fcdc63a76347d16
sha: 5058e7b2474f8cb73c19e776ef58d9784321ef42109d5982747c8c432531239f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/poky-7e87dc42=
2d972e0dc98372318fcdc63a76347d16.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.22/poky-7e87dc422d972e0dc98=
372318fcdc63a76347d16.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.22
Git Revision: f09fca692f96c9c428e89c5ef53fbcb92ac0c9bf
Release Artefact: oecore-f09fca692f96c9c428e89c5ef53fbcb92ac0c9bf
sha: 378bcc840ba9fbf06a15fea1b5dacdd446f3ad4d85115d708e7bbb20629cdeb4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/oecore-f09fca=
692f96c9c428e89c5ef53fbcb92ac0c9bf.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.22/oecore-f09fca692f96c9c42=
8e89c5ef53fbcb92ac0c9bf.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.22
Git Revision: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
Release Artefact: meta-mingw-f6b38ce3c90e1600d41c2ebb41e152936a0357d7
sha: 7d57167c19077f4ab95623d55a24c2267a3a3fb5ed83688659b4c03586373b25
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/meta-mingw-f6=
b38ce3c90e1600d41c2ebb41e152936a0357d7.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.22/meta-mingw-f6b38ce3c90e1=
600d41c2ebb41e152936a0357d7.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.22
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/meta-gplv2-d2=
f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.22/meta-gplv2-d2f8b5cdb285b=
72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.22
Git Revision: eb5c1ce6b1b8f33535ff7b9263ec7648044163ea
Release Artefact: bitbake-eb5c1ce6b1b8f33535ff7b9263ec7648044163ea
sha: 473d3e9539160633f3de9d88cce69123f6c623e4c8ab35beb7875868564593cf
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/bitbake-eb5c1=
ce6b1b8f33535ff7b9263ec7648044163ea.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.22/bitbake-eb5c1ce6b1b8f335=
35ff7b9263ec7648044163ea.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.22
Git Revision: 2169a52a24ebd1906039c42632bae6c4285a3aca


- ---------------
Contributors
- ---------------
Aleksandar Nikolic
Alexandre Belloni
Archana Polampalli
Bruce Ashfield
Colin McAllister
Deepthi Hemraj
Divya Chellam
Hitendra Prajapati
Hugo SIMELIERE
Jinfeng Wang
Joshua Watt
J=F6rg Sommer
Konrad Weihmann
Lee Chee Yang
Martin Jansa
Massimiliano Minella
Michael Halstead
Mingli Yu
Niko Mauno
Paul Eggleton
Pedro Ferreira
Peter Marko
Purushottam Choudhary
Richard Purdie
Rob Woolley
Rohini Sangam
Ross Burton
Rudolf J Streif
Siddharth Doshi
Steve Sakoman
Vijay Anusuri
Vivek Kumbhar


- ---------------
Known Issues
- ---------------
oeqa/runtime: the "beaglebone-yocto" target fails the "parselogs" runtime t=
est due to unexpected kernel error messages in the log. See bug 15624 for m=
ore information.


- ---------------
Security Fixes
- ---------------
cups: Fix CVE-2024-35235 CVE-2024-47175
curl: Fix CVE-2024-8096
expat: Fix CVE-2024-45490 CVE-2024-45491 CVE-2024-45492
gnupg: Ignore CVE-2022-3219
libpcap: Fix CVE-2023-7256 CVE-2024-8006
linux-yocto/5.10: Fix CVE-2022-48772 CVE-2023-52434 CVE-2023-52447 CVE-2023=
-52458 CVE-2024-0841 CVE-2024-26601 CVE-2024-26882 CVE-2024-26883 CVE-2024-=
26884 CVE-2024-26885 CVE-2024-26898 CVE-2024-26901 CVE-2024-26903 CVE-2024-=
26907 CVE-2024-26934 CVE-2024-26978 CVE-2024-27013 CVE-2024-27020 CVE-2024-=
35972 CVE-2024-35978 CVE-2024-35982 CVE-2024-35984 CVE-2024-35990 CVE-2024-=
35997 CVE-2024-36008 CVE-2024-36270 CVE-2024-36489 CVE-2024-36902 CVE-2024-=
36971 CVE-2024-36978 CVE-2024-38546 CVE-2024-38547 CVE-2024-38549 CVE-2024-=
38552 CVE-2024-38555 CVE-2024-38583 CVE-2024-38590 CVE-2024-38597 CVE-2024-=
38598 CVE-2024-38627 CVE-2024-38633 CVE-2024-38661 CVE-2024-38662 CVE-2024-=
38780 CVE-2024-39292 CVE-2024-39301 CVE-2024-39468 CVE-2024-39471 CVE-2024-=
39475 CVE-2024-39476 CVE-2024-39480 CVE-2024-39482 CVE-2024-39484 CVE-2024-=
39487 CVE-2024-39489 CVE-2024-39495 CVE-2024-39506 CVE-2024-40902 CVE-2024-=
40904 CVE-2024-40905 CVE-2024-40912 CVE-2024-40932 CVE-2024-40934 CVE-2024-=
40958 CVE-2024-40959 CVE-2024-40960 CVE-2024-40961 CVE-2024-40980 CVE-2024-=
40981 CVE-2024-40995 CVE-2024-41000 CVE-2024-41006 CVE-2024-41007 CVE-2024-=
41012 CVE-2024-41040 CVE-2024-41046 CVE-2024-41049 CVE-2024-41059 CVE-2024-=
41063 CVE-2024-41064 CVE-2024-41070 CVE-2024-41087 CVE-2024-41089 CVE-2024-=
41092 CVE-2024-41095 CVE-2024-41097 CVE-2024-42070 CVE-2024-42076 CVE-2024-=
42077 CVE-2024-42082 CVE-2024-42090 CVE-2024-42093 CVE-2024-42094 CVE-2024-=
42101 CVE-2024-42102 CVE-2024-42104 CVE-2024-42131 CVE-2024-42137 CVE-2024-=
42148 CVE-2024-42152 CVE-2024-42153 CVE-2024-42154 CVE-2024-42157 CVE-2024-=
42161 CVE-2024-42223 CVE-2024-42224 CVE-2024-42229 CVE-2024-42232 CVE-2024-=
42236 CVE-2024-42244 CVE-2024-42247
linux-yocto/5.15: Fix CVE-2023-52889 CVE-2024-41011 CVE-2024-42114 CVE-2024=
-42259 CVE-2024-42271 CVE-2024-42272 CVE-2024-42277 CVE-2024-42280 CVE-2024=
-42283 CVE-2024-42284 CVE-2024-42285 CVE-2024-42286 CVE-2024-42287 CVE-2024=
-42288 CVE-2024-42289 CVE-2024-42301 CVE-2024-42302 CVE-2024-42309 CVE-2024=
-42310 CVE-2024-42311 CVE-2024-42313 CVE-2024-43817 CVE-2024-43828 CVE-2024=
-43854 CVE-2024-43856 CVE-2024-43858 CVE-2024-43860 CVE-2024-43861 CVE-2024=
-43863 CVE-2024-43871 CVE-2024-43873 CVE-2024-43882 CVE-2024-43889 CVE-2024=
-43890 CVE-2024-43893 CVE-2024-43894 CVE-2024-43902 CVE-2024-43907 CVE-2024=
-43908 CVE-2024-43909 CVE-2024-43914 CVE-2024-44934 CVE-2024-44935 CVE-2024=
-44944 CVE-2024-44947 CVE-2024-44952 CVE-2024-44954 CVE-2024-44958 CVE-2024=
-44960 CVE-2024-44965 CVE-2024-44966 CVE-2024-44969 CVE-2024-44971 CVE-2024=
-44982 CVE-2024-44983 CVE-2024-44985 CVE-2024-44986 CVE-2024-44987 CVE-2024=
-44988 CVE-2024-44989 CVE-2024-44990 CVE-2024-44995 CVE-2024-44998 CVE-2024=
-44999 CVE-2024-45003 CVE-2024-45006 CVE-2024-45011 CVE-2024-45016 CVE-2024=
-45018 CVE-2024-45021 CVE-2024-45025 CVE-2024-45026 CVE-2024-45028 CVE-2024=
-46673 CVE-2024-46674 CVE-2024-46675 CVE-2024-46676 CVE-2024-46677 CVE-2024=
-46679 CVE-2024-46685 CVE-2024-46689 CVE-2024-46702 CVE-2024-46707
openssl: Fix CVE-2024-6119
procps: Fix CVE-2023-4016
python3: Fix CVE-2023-27043 CVE-2024-4030 CVE-2024-4032 CVE-2024-6923 CVE-2=
024-6232 CVE-2024-7592 CVE-2024-8088
qemu: Fix CVE-2024-4467
rust: Ignore CVE-2024-43402
webkitgtk: Fix CVE-2024-40779
wpa-supplicant: Ignore CVE-2024-5290
wpa-supplicant: Fix CVE-2024-3596


- ---------------
Fixes
- ---------------
bintuils: stable 2.38 branch update
bitbake: fetch2/wget: Canonicalize DL_DIR paths for wget2 compatibility
bitbake: fetch/wget: Move files into place atomically
bitbake: hashserv: tests: Omit client in slow server start test
bitbake: tests/fetch: Tweak to work on Fedora40
bitbake: wget: Make wget --passive-ftp option conditional on ftp/ftps
build-appliance-image: Update to kirkstone head revision
buildhistory: Fix intermittent package file list creation
buildhistory: Restoring files from preserve list
buildhistory: Simplify intercept call sites and drop SSTATEPOSTINSTFUNC usa=
ge
busybox: Fix cut with "-s" flag
cdrtools-native: fix build with gcc-14
curl: free old conn better on reuse
cve-exclusion: Drop the version comparision/warning
dejagnu: Fix LICENSE (change to GPL-3.0-only)
doc/features: remove duplicate word in distribution feature ext2
gcc: upgrade to v11.5
gcr: Fix LICENSE (change to LGPL-2.0-only)
glibc: stable 2.35 branch updates
install-buildtools: fix "test installation" step
install-buildtools: remove md5 checksum validation
install-buildtools: support buildtools-make-tarball and update to 4.1
iw: Fix LICENSE (change to ISC)
kmscube: Add patch to fix -int-conversion build error
lib/oeqa: rename assertRaisesRegexp to assertRaisesRegex
libedit: Make docs generation deterministic
linux-yocto/5.10: fix NFSV3 config warning
linux-yocto/5.10: remove obsolete options
linux-yocto/5.10: update to v5.10.223
linux-yocto/5.15: update to v5.15.166
meta-world-pkgdata: Inherit nopackages
migration-guide: add release notes for 4.0.21
openssl: Upgrade to 3.0.15
poky.conf: bump version for 4.0.22
populate_sdk_base: inherit nopackages
python3: Upgrade to 3.10.15
ruby: Make docs generation deterministic
runqemu: keep generating tap devices
scripts/install-buildtools: Update to 4.0.21
selftest/runtime_test/virgl: Disable for all fedora
testexport: fallback for empty IMAGE_LINK_NAME
testimage: fallback for empty IMAGE_LINK_NAME
tiff: Fix LICENSE (change to libtiff)
udev-extraconf: Add collect flag to mount
unzip: Fix LICENSE (change to Info-ZIP)
valgrind: disable avx_estimate_insn.vgtest
wpa-supplicant: Patch security advisory 2024-2
yocto-uninative: Update to 4.5 for gcc 14
yocto-uninative: Update to 4.6 for glibc 2.40
zip: Fix LICENSE (change to Info-ZIP)
zstd: fix LICENSE statement (change to "BSD-3-Clause | GPL-2.0-only")



--_000_CH3PR11MB80937CCE1A5D889D00FB9695B94F2CH3PR11MB8093namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	{font-family:Aptos;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
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
<body lang=3D"EN-MY" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi <br>
<br>
We are pleased to announce the Yocto Project 4.0.22 Release is now availabl=
e for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-4.0.22/poky-7e87dc422d972e0d=
c98372318fcdc63a76347d16.tar.bz2">http://downloads.yoctoproject.org/release=
s/yocto/yocto-4.0.22/poky-7e87dc422d972e0dc98372318fcdc63a76347d16.tar.bz2<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://m=
irrors.kernel.org/yocto/yocto/yocto-4.0.22/poky-7e87dc422d972e0dc98372318fc=
dc63a76347d16.tar.bz2">http://mirrors.kernel.org/yocto/yocto/yocto-4.0.22/p=
oky-7e87dc422d972e0dc98372318fcdc63a76347d16.tar.bz2</a><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-4.0.22/RELEASENOTES">http://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-4.0.22/testreport.txt">http:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.22/testreport.txt</a>=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for every=
one's contributions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"mailto:c=
hee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<br>
<br>
<br>
- --------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.22 Releas=
e Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.22<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 7e87d=
c422d972e0dc98372318fcdc63a76347d16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-7e87dc422d972e0dc98372318fcdc63a76347d16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 5058e7b2474f8c=
b73c19e776ef58d9784321ef42109d5982747c8c432531239f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.22/poky-7e87dc422d972e0dc98372318fc=
dc63a76347d16.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.22/poky-7e87dc422d972e0dc98372318fcdc63a76347d=
16.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.22<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: f09fc=
a692f96c9c428e89c5ef53fbcb92ac0c9bf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-f09fca692f96c9c428e89c5ef53fbcb92ac0c9bf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 378bcc840ba9fb=
f06a15fea1b5dacdd446f3ad4d85115d708e7bbb20629cdeb4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.22/oecore-f09fca692f96c9c428e89c5ef=
53fbcb92ac0c9bf.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.22/oecore-f09fca692f96c9c428e89c5ef53fbcb92ac0=
c9bf.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.22<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: f6b38=
ce3c90e1600d41c2ebb41e152936a0357d7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-f6b38ce3c90e1600d41c2ebb41e152936a0357d7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 7d57167c19077f=
4ab95623d55a24c2267a3a3fb5ed83688659b4c03586373b25<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.22/meta-mingw-f6b38ce3c90e1600d41c2=
ebb41e152936a0357d7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.22/meta-mingw-f6b38ce3c90e1600d41c2ebb41e15293=
6a0357d7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.22<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: d2f8b=
5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: c386f59f8a6727=
47dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.22/meta-gplv2-d2f8b5cdb285b72a4ed93=
450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.22/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca2=
7aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.22<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: eb5c1=
ce6b1b8f33535ff7b9263ec7648044163ea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-eb5c1ce6b1b8f33535ff7b9263ec7648044163ea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 473d3e95391606=
33f3de9d88cce69123f6c623e4c8ab35beb7875868564593cf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.22/bitbake-eb5c1ce6b1b8f33535ff7b92=
63ec7648044163ea.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.22/bitbake-eb5c1ce6b1b8f33535ff7b9263ec7648044=
163ea.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.22<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 2169a=
52a24ebd1906039c42632bae6c4285a3aca<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexandre Belloni<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Colin McAllister<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepthi Hemraj<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hugo SIMELIERE<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jinfeng Wang<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joshua Watt<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">J=F6rg Sommer<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Konrad Weihmann<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Massimiliano Minell=
a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Halstead<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mingli Yu<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Niko Mauno<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Paul Eggleton<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Pedro Ferreira<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Purushottam Choudha=
ry<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rob Woolley<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rohini Sangam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rudolf J Streif<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Siddharth Doshi<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vivek Kumbhar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/runtime: the &=
quot;beaglebone-yocto&quot; target fails the &quot;parselogs&quot; runtime =
test due to unexpected kernel error messages in the log. See bug 15624 for =
more information.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cups: Fix CVE-2024-=
35235 CVE-2024-47175<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2024-=
8096<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expat: Fix CVE-2024=
-45490 CVE-2024-45491 CVE-2024-45492<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnupg: Ignore CVE-2=
022-3219<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpcap: Fix CVE-20=
23-7256 CVE-2024-8006<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.10: F=
ix CVE-2022-48772 CVE-2023-52434 CVE-2023-52447 CVE-2023-52458 CVE-2024-084=
1 CVE-2024-26601 CVE-2024-26882 CVE-2024-26883 CVE-2024-26884 CVE-2024-2688=
5 CVE-2024-26898 CVE-2024-26901 CVE-2024-26903
 CVE-2024-26907 CVE-2024-26934 CVE-2024-26978 CVE-2024-27013 CVE-2024-27020=
 CVE-2024-35972 CVE-2024-35978 CVE-2024-35982 CVE-2024-35984 CVE-2024-35990=
 CVE-2024-35997 CVE-2024-36008 CVE-2024-36270 CVE-2024-36489 CVE-2024-36902=
 CVE-2024-36971 CVE-2024-36978 CVE-2024-38546
 CVE-2024-38547 CVE-2024-38549 CVE-2024-38552 CVE-2024-38555 CVE-2024-38583=
 CVE-2024-38590 CVE-2024-38597 CVE-2024-38598 CVE-2024-38627 CVE-2024-38633=
 CVE-2024-38661 CVE-2024-38662 CVE-2024-38780 CVE-2024-39292 CVE-2024-39301=
 CVE-2024-39468 CVE-2024-39471 CVE-2024-39475
 CVE-2024-39476 CVE-2024-39480 CVE-2024-39482 CVE-2024-39484 CVE-2024-39487=
 CVE-2024-39489 CVE-2024-39495 CVE-2024-39506 CVE-2024-40902 CVE-2024-40904=
 CVE-2024-40905 CVE-2024-40912 CVE-2024-40932 CVE-2024-40934 CVE-2024-40958=
 CVE-2024-40959 CVE-2024-40960 CVE-2024-40961
 CVE-2024-40980 CVE-2024-40981 CVE-2024-40995 CVE-2024-41000 CVE-2024-41006=
 CVE-2024-41007 CVE-2024-41012 CVE-2024-41040 CVE-2024-41046 CVE-2024-41049=
 CVE-2024-41059 CVE-2024-41063 CVE-2024-41064 CVE-2024-41070 CVE-2024-41087=
 CVE-2024-41089 CVE-2024-41092 CVE-2024-41095
 CVE-2024-41097 CVE-2024-42070 CVE-2024-42076 CVE-2024-42077 CVE-2024-42082=
 CVE-2024-42090 CVE-2024-42093 CVE-2024-42094 CVE-2024-42101 CVE-2024-42102=
 CVE-2024-42104 CVE-2024-42131 CVE-2024-42137 CVE-2024-42148 CVE-2024-42152=
 CVE-2024-42153 CVE-2024-42154 CVE-2024-42157
 CVE-2024-42161 CVE-2024-42223 CVE-2024-42224 CVE-2024-42229 CVE-2024-42232=
 CVE-2024-42236 CVE-2024-42244 CVE-2024-42247<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: F=
ix CVE-2023-52889 CVE-2024-41011 CVE-2024-42114 CVE-2024-42259 CVE-2024-422=
71 CVE-2024-42272 CVE-2024-42277 CVE-2024-42280 CVE-2024-42283 CVE-2024-422=
84 CVE-2024-42285 CVE-2024-42286 CVE-2024-42287
 CVE-2024-42288 CVE-2024-42289 CVE-2024-42301 CVE-2024-42302 CVE-2024-42309=
 CVE-2024-42310 CVE-2024-42311 CVE-2024-42313 CVE-2024-43817 CVE-2024-43828=
 CVE-2024-43854 CVE-2024-43856 CVE-2024-43858 CVE-2024-43860 CVE-2024-43861=
 CVE-2024-43863 CVE-2024-43871 CVE-2024-43873
 CVE-2024-43882 CVE-2024-43889 CVE-2024-43890 CVE-2024-43893 CVE-2024-43894=
 CVE-2024-43902 CVE-2024-43907 CVE-2024-43908 CVE-2024-43909 CVE-2024-43914=
 CVE-2024-44934 CVE-2024-44935 CVE-2024-44944 CVE-2024-44947 CVE-2024-44952=
 CVE-2024-44954 CVE-2024-44958 CVE-2024-44960
 CVE-2024-44965 CVE-2024-44966 CVE-2024-44969 CVE-2024-44971 CVE-2024-44982=
 CVE-2024-44983 CVE-2024-44985 CVE-2024-44986 CVE-2024-44987 CVE-2024-44988=
 CVE-2024-44989 CVE-2024-44990 CVE-2024-44995 CVE-2024-44998 CVE-2024-44999=
 CVE-2024-45003 CVE-2024-45006 CVE-2024-45011
 CVE-2024-45016 CVE-2024-45018 CVE-2024-45021 CVE-2024-45025 CVE-2024-45026=
 CVE-2024-45028 CVE-2024-46673 CVE-2024-46674 CVE-2024-46675 CVE-2024-46676=
 CVE-2024-46677 CVE-2024-46679 CVE-2024-46685 CVE-2024-46689 CVE-2024-46702=
 CVE-2024-46707<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
24-6119<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">procps: Fix CVE-202=
3-4016<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Fix CVE-20=
23-27043 CVE-2024-4030 CVE-2024-4032 CVE-2024-6923 CVE-2024-6232 CVE-2024-7=
592 CVE-2024-8088<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Fix CVE-2024-=
4467<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: Ignore CVE-20=
24-43402<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: Fix CVE-=
2024-40779<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Ign=
ore CVE-2024-5290<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Fix=
 CVE-2024-3596<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bintuils: stable 2.=
38 branch update<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch2/wge=
t: Canonicalize DL_DIR paths for wget2 compatibility<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch/wget=
: Move files into place atomically<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: hashserv: =
tests: Omit client in slow server start test<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Tweak to work on Fedora40<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: wget: Make=
 wget --passive-ftp option conditional on ftp/ftps<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">buildhistory: Fix i=
ntermittent package file list creation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">buildhistory: Resto=
ring files from preserve list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">buildhistory: Simpl=
ify intercept call sites and drop SSTATEPOSTINSTFUNC usage<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">busybox: Fix cut wi=
th &quot;-s&quot; flag<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cdrtools-native: fi=
x build with gcc-14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: free old conn=
 better on reuse<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-exclusion: Drop=
 the version comparision/warning<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dejagnu: Fix LICENS=
E (change to GPL-3.0-only)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">doc/features: remov=
e duplicate word in distribution feature ext2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: upgrade to v11=
.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcr: Fix LICENSE (c=
hange to LGPL-2.0-only)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.35 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">install-buildtools:=
 fix &quot;test installation&quot; step<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">install-buildtools:=
 remove md5 checksum validation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">install-buildtools:=
 support buildtools-make-tarball and update to 4.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">iw: Fix LICENSE (ch=
ange to ISC)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kmscube: Add patch =
to fix -int-conversion build error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lib/oeqa: rename as=
sertRaisesRegexp to assertRaisesRegex<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libedit: Make docs =
generation deterministic<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.10: f=
ix NFSV3 config warning<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.10: r=
emove obsolete options<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.10: u=
pdate to v5.10.223<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: u=
pdate to v5.15.166<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-world-pkgdata:=
 Inherit nopackages<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guide: ad=
d release notes for 4.0.21<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Upgrade to=
 3.0.15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.22<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">populate_sdk_base: =
inherit nopackages<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Upgrade to=
 3.10.15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Make docs gen=
eration deterministic<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">runqemu: keep gener=
ating tap devices<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 4.0.21<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/runtime_te=
st/virgl: Disable for all fedora<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">testexport: fallbac=
k for empty IMAGE_LINK_NAME<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">testimage: fallback=
 for empty IMAGE_LINK_NAME<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: Fix LICENSE (=
change to libtiff)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">udev-extraconf: Add=
 collect flag to mount<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">unzip: Fix LICENSE =
(change to Info-ZIP)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">valgrind: disable a=
vx_estimate_insn.vgtest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Pat=
ch security advisory 2024-2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-uninative: Up=
date to 4.5 for gcc 14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-uninative: Up=
date to 4.6 for glibc 2.40<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">zip: Fix LICENSE (c=
hange to Info-ZIP)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">zstd: fix LICENSE s=
tatement (change to &quot;BSD-3-Clause | GPL-2.0-only&quot;)<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_CH3PR11MB80937CCE1A5D889D00FB9695B94F2CH3PR11MB8093namp_--

