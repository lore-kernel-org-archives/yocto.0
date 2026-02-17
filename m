Return-Path: <yogesh.tyagi@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31ED2E9A03E
	for <webhook@archiver.kernel.org>; Tue, 17 Feb 2026 20:09:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.21347.1771358994130638757
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Feb 2026 12:09:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=Wl5bjex1;
 spf=pass (domain: intel.com, ip: 198.175.65.21, mailfrom: yogesh.tyagi@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771358994; x=1802894994;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=hnQceiQWzi2owLSMebeqk/vUHiS40bQWcgz8FVYGLdo=;
  b=Wl5bjex1UnftfmakExohQBA4xbXlufuxO8CW9iU1Y/r/QdhzxXJUF+WR
   wMjoK4M2X3Px140W8/aoXseY87c40I6BQrIT6x3tCq4UafCq/hvsZsAUX
   PIhj/XqlQ3KsJCXDcgENetPW4xPHeThiI0F11CFalXgRoqNs3/aas9bBy
   iRLr/lXw+fJGq/lPlexynYuWYg/tMlq50ZYnXmwDs7un6m2eVyQOZUjE/
   oluvqxEwTLbTQBtT5mdMIm5LaNTLMO+hjXGFxPkPXNMd9/0p8N7amRUlu
   s4uPb9RQsmeOABytFPo7YaoJpPc7bbsRtXxlp0sved3BUBui2qagy2o67
   g==;
X-CSE-ConnectionGUID: qtRxBOn/TlijJ0YxBfzv9w==
X-CSE-MsgGUID: gaY6mjvYSPOuWlfD+JtKPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="72326680"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; 
   d="scan'208";a="72326680"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Feb 2026 12:09:53 -0800
X-CSE-ConnectionGUID: UaZAjWF8QOuiNG0jgmZrAQ==
X-CSE-MsgGUID: DEKB8o8KQfqNbfRqLagFww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; 
   d="scan'208";a="218520605"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Feb 2026 12:09:53 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 12:09:53 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 12:09:53 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 12:09:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ipqJ6IcauRAYnSYLoJJb60CyxfBVb7AZwhsb0wazpA2U/grcEwwruRECtTalBi2vcVidefS/yFsXHzGq+xpJtvPMO6p1qNlnWEfPLXjbZs8jamaswMxV4u4veioC015JZD6y5XWytuoqFidl5mVHb7HfswnPREuAVqAEZKjSBThQ3t9YmqSbUN6r3Q7zaKyZq76fHDF5PWwvhhBpJ9lXbuykE/Ks4LDx9usXNr9+ngdYur3fb4SCkwqqYfaIZH0GFRHVXOOSsZ74xxfYG8Xo2KfPcesUKoC3YdeL46kiW7XfUYZY2jJEC027lnQkinzIZOJI9MPzrPPJnYHqfc25EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hnQceiQWzi2owLSMebeqk/vUHiS40bQWcgz8FVYGLdo=;
 b=W1FFkDMEryw44gCfiERst2+YhDNK8wsC0/aj7X3n035ZdWsownSsepHD3PgeEWQkwH5DoWVY15zieuhUIoB1bbI+lo8LwFQL4oxKZJ99p+AqVWR/GwFoYUlGRt+cx1JUP3t5eAxrNBaTa9ZCJMX7GgHQdX3JNT5O9v7GqbXePVbJ4N5YX5dFFDrxj9NP22cDRbmdqFtpbWeH+QhJrZz5k5QnoJ431Ws0Vgzlq+veJa7GAD3iWy4Nzow3pDS4PLXhUdFN6xirhkooadIlLEklOiwqxqU1fAee80WFfKR6+dvoajqOZwavvlCM1NAodWUj3RDyTKzd6aIz8QZcevDkBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8987.namprd11.prod.outlook.com (2603:10b6:208:574::18)
 by SJ2PR11MB7427.namprd11.prod.outlook.com (2603:10b6:a03:4c1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.15; Tue, 17 Feb
 2026 20:09:50 +0000
Received: from IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::f91f:4301:96d7:1925]) by IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::f91f:4301:96d7:1925%6]) with mapi id 15.20.9611.008; Tue, 17 Feb 2026
 20:09:50 +0000
From: "Tyagi, Yogesh" <yogesh.tyagi@intel.com>
To: Yoann Congal <yoann.congal@smile.fr>
CC: Yocto ML <yocto@lists.yoctoproject.org>
Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
 master
Thread-Topic: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
 master
Thread-Index: AQHclO+Z6680zGoDCk2LSLjHEQiat7V8Kr6SgAMEBACACDmRdA==
Date: Tue, 17 Feb 2026 20:09:50 +0000
Message-ID: <IA3PR11MB898731D307DB9D0641D1F5678C6DA@IA3PR11MB8987.namprd11.prod.outlook.com>
References: <DG57YRQ7R76H.1FVPAEO7JT8Y6@smile.fr>
 <IA3PR11MB89872EF6500D42F1A753C0188C62A@IA3PR11MB8987.namprd11.prod.outlook.com>
 <DGD219WBW417.38KFVSE5F8O4R@smile.fr>
In-Reply-To: <DGD219WBW417.38KFVSE5F8O4R@smile.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8987:EE_|SJ2PR11MB7427:EE_
x-ms-office365-filtering-correlation-id: 4f956b3e-2625-4863-6d33-08de6e6081c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|38070700021;
x-microsoft-antispam-message-info: =?Windows-1252?Q?6HkyxjUL8/EOthu2s2rm1dY41/fdMGg6zef6oVnqr+vD4uLa1VINiDth?=
 =?Windows-1252?Q?BJD/J5glMaD7NZ+8K3aSmb6o/a0BBwQA+hBpy1bJQ3Gjqz89KcbaWo6d?=
 =?Windows-1252?Q?xicjgD6ajjZtE8MQENibpMvkPYLd8dcff6Ldqifs3FqW+Kbsv5YkEazE?=
 =?Windows-1252?Q?Qa7JLbWrBG102wX61VfNHz+9/7RUMvJZ4adKJEjrvOT1NEKTuZvCOOmT?=
 =?Windows-1252?Q?jQ9Tu3fNncPS6w1qAZSTV/oy+BvjOfJkHI0xIKAUMn0uiXane7QUk/Ar?=
 =?Windows-1252?Q?u8OJdOqGbCebCLE2K4zOfmHqXA+plLKgXy0jSEeEH2CST3Ha7T7uwY4h?=
 =?Windows-1252?Q?wpLJRFZp9yL6qSuVsz0Psdty35HSACAIvcdKl5itIAxYcd33ncSvMd+u?=
 =?Windows-1252?Q?IvQGN4pdq2/mQjWPrcxAk5+KIokOaES7n9kj0DaoVTDO+Y+a3/zXrDFP?=
 =?Windows-1252?Q?nlujnyFUh0et1vpMs7+idrXSEDVjSGUa438blhEcbR7xOkENbK1EGqh1?=
 =?Windows-1252?Q?1bvl79nJqECXhU3cb9rwZgmfV4AjYBIeBlOYbuh7+QivDkxIRqHCOJfk?=
 =?Windows-1252?Q?in+mqoiraLH0VqTY/Th9dwNlDfuocsh0LXs2JghukDRe+elPPk91zNgY?=
 =?Windows-1252?Q?txAiDla/K4V40TPi0xbpzOlRJ1HZV4HDyWCyTRTpdRqrzVaZBJIk9MKn?=
 =?Windows-1252?Q?C/bJjLnCIW+9YT1TOppAPhD8gePrJGHUcKt6zZSr6ewhcKKQuuvLKzou?=
 =?Windows-1252?Q?8REhLIDISfo7lijgEZc51yRQrqvbj+6YOTxk0qjSUaPJ0M74biDVCu2U?=
 =?Windows-1252?Q?53NdodAAoBSZr4L1FDzDuIA1tkywv4+RptaAfMLxmC23n9tjEFn8L1EP?=
 =?Windows-1252?Q?lCcOc/v6gaUtRtkQnDKp5erNF3Bzw3BwkHPjJBzTLWyozMAKsiL/LOGf?=
 =?Windows-1252?Q?EFrg/YVhv5SCOkGmgxw/gRMa6L3zsXnQAJAscvCyVX+mp9oJ9lff11Rp?=
 =?Windows-1252?Q?CBiU1qRB7q76Ok0BRvWgQLbg3sjEatTsSLdACnfGKRk117yMzPiOCIdh?=
 =?Windows-1252?Q?liIA7O/+IdUctHsoLfC0n8wduBKPG/KbXrG+MCelSfqtwN+X3rUJ7OAm?=
 =?Windows-1252?Q?3BzNGLMY8nrKN+nEmcd7lb31x309VzPbqjGGHtxQSvt87Oqd1MGGzPHu?=
 =?Windows-1252?Q?mQPkA9s8htjsvtpnsDJNcMFSTF9E0wzyvxhiHpSh0lmIrLLDBwk6IpRS?=
 =?Windows-1252?Q?hAltdzdOFjr6NVQmVgsdid1DBXW8/UHOrRypHeIHB1QK9Vja6EkuLe0z?=
 =?Windows-1252?Q?cpIE35vf3XxPZ0b8SJ1TYSXXqj0cH5wQLA6JIbbHsfuB+pRzlhZZVCaw?=
 =?Windows-1252?Q?dm8oy9vp8Oq7iv6cqX/za8+wrLpNXywc8+VU5/wqVPR92lKsTz7CkkDv?=
 =?Windows-1252?Q?EChiut0Lktn/33igt/30Ifb+dxBTATopP64xCQSkKiLHO91qDyU+4RVa?=
 =?Windows-1252?Q?d7uF2K8/B9Coa0JV5qc6nBdJCO9wakGyHDICOeZPC8cq1ozdGK3vIjyR?=
 =?Windows-1252?Q?JexpxkRmvwiKpD1iAcAL89lfOVsUSvvBId0FDkeQ08nEgETsmyF+3Flx?=
 =?Windows-1252?Q?MmQpf2ND7oEICIaNeud0bBEgrH1M+0QkojX54DpSscGPANM9qd7eye+c?=
 =?Windows-1252?Q?Y6LWFSZcWyu98IDgxTJmFKqD+SgNJKGN?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA3PR11MB8987.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?g6idoLBA1KVz0SY1ipDUeFj5UWAi10lOYfwbnf0w5uqxeiYt3RagtEaq?=
 =?Windows-1252?Q?7xHKppWpbrfs8mntRYCwjdDOudLM+qAAbQjPxS3k3AFAxEljlKukaPk/?=
 =?Windows-1252?Q?scErmdFqQRPNOYMLY1BaY124qIT6019f84LfFYiqduSF6U+HGYk9Jm8/?=
 =?Windows-1252?Q?fGc48d/sbSKy0a13SfGeYyu5+fRk9nF//ExZtuZrgBNFOMRqkmzExJ3b?=
 =?Windows-1252?Q?IHwPjy04tQiQaHXkd75msLzq67/WbrYgOqAOIC6HgZoxwC6ud2ezKMqM?=
 =?Windows-1252?Q?kTXTwKWOEjg3Ou9O5DXm6gW1ulNHCM3S8RcNtZbVFuQKHC5xxUxdDsCg?=
 =?Windows-1252?Q?0RmagbZr9bf4jSHk0lnriwfLI7VlcyhaooIOfKBqtvaVu2KLpKwKKJ40?=
 =?Windows-1252?Q?O3WCHkE0V4X8VIIgIgv6CcHUxsnQyPE70ncEbOfqz+ZaTfHZGWpZ6vGV?=
 =?Windows-1252?Q?aW/tQdIEyO8H4zynCear4NOtu8VTp8PhotgtdjSi7nUgTC2mkvPsowsH?=
 =?Windows-1252?Q?DMfDOOUI4OYo7rftccsiUzrPL3qaBKcmnqHFpM7a07u1w2h64IfOtvf7?=
 =?Windows-1252?Q?eS4KSscl0MzIyULWPhFSTpVBJpQTXpsH7S0GtxX+5oiAQ2S1uwhnJ7UK?=
 =?Windows-1252?Q?XZLa+NdDzcaqb86Z0QsPz7MhOszd0b5b9ROU35DXIBRrXXYqp8eYyoaJ?=
 =?Windows-1252?Q?9iQoEieHJXoKA1FTLKSW6KPxKIcABSVHEa2TGds57TgpOTtxK2l5k/Ao?=
 =?Windows-1252?Q?x0MToLIE2CRLI/e2VvvD7hIL6CBIMH/6PjXuMjlglaBbnY0Y3pENgso8?=
 =?Windows-1252?Q?xqPrwjSAlacyve6V+25ZNHqkgbF7JWtvwygXrXXfZAD0rSiho5zPCoJD?=
 =?Windows-1252?Q?lEbYf/r4ePPc/tJ+Gjbw3dGtZx/9zgLN9EyL2KNQGdvYdDhV5q2FqvX+?=
 =?Windows-1252?Q?o9TIbaXgzNgf4WKQkL8s/Top6SvssGOPqNQ1/OQj0hxtty6Ze7wMW6L4?=
 =?Windows-1252?Q?STZifNwpjBDwygH+ht4MO1CP8GuokVmmbUu0Hwqk7n+QusItDiKCbbo4?=
 =?Windows-1252?Q?vkisWhfW3kcmOl5+K1f7rtKI/0C4IZF+XWJaZaZxETgB8xXNgVtHu0jv?=
 =?Windows-1252?Q?kmlxsp7gxwSJuvLGlZGyjRENTDEBhWKps1II4JbWOpH3XvgGofa2ZVW+?=
 =?Windows-1252?Q?wmNUn789DTONTrcXgXMKH/lhtbw2l9nfzfNuGZTCObmaOAl5Yiq2rdv9?=
 =?Windows-1252?Q?HXhUY5IFmNUDO+1CAUTaRlhEE+KeRZCUCiSFfbXrHxLkl5ta5/S128to?=
 =?Windows-1252?Q?mxg3NIe1MzCeDpyu+TaglS4LZFP1ecgUHARBuKtG+ANuGhOuBbluM6nG?=
 =?Windows-1252?Q?ULPKj/zCyECeifilLNMBP3tvWIcJBzmp+gy1L0O5XSsEXYV3odl/U5dc?=
 =?Windows-1252?Q?/d/aYMIiWLxAMdvbNL9gz81pK+gbaTk/szhuSxTrLGX/0iyPjyvaOuiM?=
 =?Windows-1252?Q?gNbKOISpzHmDzwx0uwiTqNx8VkAddg7yqzF16AiSXdlYKusF6mT/lWfl?=
 =?Windows-1252?Q?urWhTZd8atk+SN8xmSsM77/1akgfSs/xs+N6pq6XndcUcQFMjtHsLLwK?=
 =?Windows-1252?Q?sCR3WziL1iT95oqaRfu+Ay+OJ5u4lDbwFKd6TxAJG3OZRUE26u5+Z6MX?=
 =?Windows-1252?Q?eYf7Zc+9dlcqhd1gRL9ftVgFdbK02Je9BxmZJd/DkfeqT5R4NoKmbeHk?=
 =?Windows-1252?Q?KHbVgPL/LsT+Joqwh+XBKJZM+p1wmedmYyEyx6+kKJ9mZQHhHA3w0ps0?=
 =?Windows-1252?Q?9wmSSbspscXZjEETzackMmP3LGaLvDCUynap7Ma14CEnh9TYdbB6qEds?=
 =?Windows-1252?Q?JR51qcyzBmDjfUUVJhkR1RZvDm1LO6CH4K5dhorFMFpq5W/+RNcZKfsi?=
 =?Windows-1252?Q?L5mM0ZfJ?=
x-ms-exchange-antispam-messagedata-1: eafTbZuRekg7hg==
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f956b3e-2625-4863-6d33-08de6e6081c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 20:09:50.6266
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3nltskUG61xWV7PkUYb86cxQ7/jR0KD2N8kRLn+Z4S7bF1/dEc0ifQvjV7uq4jkgzchAAgDiBDtyrxFuZIGszQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7427
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Feb 2026 20:09:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66253

________________________________________=0A=
From: Yoann Congal <yoann.congal@smile.fr>=0A=
Sent: Thursday, February 12, 2026 8:01 PM=0A=
To: Tyagi, Yogesh <yogesh.tyagi@intel.com>=0A=
Cc: Yocto ML <yocto@lists.yoctoproject.org>=0A=
Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on =
master=0A=
=0A=
=0A=
On Tue Feb 10, 2026 at 5:29 PM CET, Yogesh Tyagi wrote:=0A=
> Hello,=0A=
=0A=
Hello,=0A=
=0A=
Thanks for the status update.=0A=
=0A=
> The only solution I could find at present is to shorten the build path.=
=0A=
>=0A=
> Cause:=0A=
>=0A=
> * `intel-media-driver` CMake generates ~626 include directories per compi=
lation unit=0A=
> * With long paths, the expanded compiler arguments exceed Linux `ARG_MAX`=
=0A=
> * GCC expands response files before spawning `cc1plus`, so wrappers/respo=
nse files don=92t help=0A=
> * This is a kernel limitation, not a Yocto or compiler bug=0A=
>=0A=
> Impact:=0A=
>=0A=
> * Fails in Yocto builds with typical CI/workspace paths=0A=
> * `ENABLE_NONFREE_KERNELS=3DOFF` does not reduce include count=0A=
>=0A=
> Workaround:=0A=
>=0A=
> * Use very short workspace paths (<15=9620 characters), e.g. `/w/yocto/..=
.`=0A=
>=0A=
> Status:=0A=
>=0A=
> * Upstream issue filed with `intel-media-driver`=0A=
=0A=
For reference, the issue is:=0A=
[Bug]: CMake generates 600+ include directories per compilation unit =B7 Is=
sue #1984 =B7 intel/media-driver=0A=
https://github.com/intel/media-driver/issues/1984=0A=
=0A=
> * Proper fix requires CMake refactoring upstream=0A=
> * Path shortening is the only reliable workaround for now=0A=
=0A=
>Did you find what made the problem appear when we did not had it before?=
=0A=
>Any chance that this is something you can revert while=0A=
>intel-media-driver cmake is fixed?=0A=
=0A=
=0A=
I have reverted the intel-media-driver to old version. Please check the bui=
ld now.=0A=
=0A=
> Thanks,=0A=
> Yogesh=0A=
> ________________________________________=0A=
> From: Yoann Congal <yoann.congal@smile.fr>=0A=
> Sent: Tuesday, February 3, 2026 2:59 PM=0A=
> To: Tyagi, Yogesh <yogesh.tyagi@intel.com>=0A=
> Cc: Yocto ML <yocto@lists.yoctoproject.org>=0A=
> Subject: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on ma=
ster=0A=
>=0A=
>=0A=
> Hello,=0A=
>=0A=
> meta-intel/master seems currently broken: intel-media-driver_26.1.0.bb:do=
_compile fails with:=0A=
> ninja: fatal: posix_spawn: Argument list too long=0A=
>=0A=
> This happens on master and also on whinlatter.=0A=
>=0A=
> We can see this on autobuilder:=0A=
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41=0A=
> * master: https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/bu=
ilds/2967=0A=
> * whinlatter: https://autobuilder.yoctoproject.org/valkyrie/?#/builders/4=
1/builds/2966=0A=
>=0A=
> Regards,=0A=
=0A=
=0A=
-- =0A=
Yoann Congal=0A=
Smile ECS=0A=
=0A=
=0A=
=0A=

