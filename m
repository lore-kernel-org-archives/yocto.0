Return-Path: <yogesh.tyagi@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68B7E9A03B
	for <webhook@archiver.kernel.org>; Thu, 19 Feb 2026 12:26:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12822.1771504003655741883
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Feb 2026 04:26:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=fOTyxVZj;
 spf=pass (domain: intel.com, ip: 198.175.65.9, mailfrom: yogesh.tyagi@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771504004; x=1803040004;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=t+v/DIWwmQi5hXcLhV8FG5mVDo1L/LEKdOpSTj7UD7I=;
  b=fOTyxVZjdlH78fYAaS8Cve9vvQexHV6ea+2Nn9DLDFoAQkN7rwOSGE9V
   DImddApHgBRoX3gN2WoS8m4ReTxvITD89sayG3lU8PcS5XweogrbyAqzW
   OK4mvaTPvWIUXLdxDPYpngkZde/zh5J8er3UkA4noiRTgOjdzOq24U1o2
   XVgT+lMCD7RyfctzvOqeYAbuCfipPECrBXAwFuhjNZIBraD+nLhKnDTXp
   lyHgLvEgbdURE8droFjNqoikjFETVEBMw+Ka0eHC0f/njEKyoPpsWBfWb
   KhpGEYvS/zy8CQpM8W4BkefXI25S0AybiItYdS/FHhMfIF0qaruvMeEpY
   w==;
X-CSE-ConnectionGUID: rprWaUgwSaKQ6o3Uygka2w==
X-CSE-MsgGUID: TbFKgpNYSW2T7vv1Fxm9Eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="95205575"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; 
   d="scan'208";a="95205575"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2026 04:26:43 -0800
X-CSE-ConnectionGUID: pYYE/rcCRKSejgWShYdSjg==
X-CSE-MsgGUID: u4K6+VqXQNy/jmip4QXQGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; 
   d="scan'208";a="213588035"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2026 04:26:29 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 04:26:25 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 04:26:25 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 04:26:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JOSotL68tYY0S5QWkpOxmLnSIooSNQNT/DDB7mXgz7jsOSUdL7v85Tkze2kg+odyjdP1bPeJpsDV6L/VQj8zeCuhLaA98Q1n10yNEHXpSKchBmGDQ9CoAwoCOpkhtonhpouJskoLYDRf74G/utwYZQT7qGuYJ2stSX4kDuXcLr+vzaVwMw/lhQXFybjIKyBealTA8fJ7Qsb13Gr9RXIDQrEx+nXE4wWX8vx+3q4cVjf/09E2SDevXyZ/7rDmZUbcd9IuFxROi/hYHxyZHSBisAKbLhrHBz37kY0AA6x3zAG9Eo38DmLE3VHetTkXHTpNQ4F59z8gzHm1a21HhJpbLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t+v/DIWwmQi5hXcLhV8FG5mVDo1L/LEKdOpSTj7UD7I=;
 b=HeGfrxKnYedCoTSdzQBnO2QANEPsgqOP5ds9LgYCZC0KJReWekRi1vk0g6tkeHdInH/z+jhochCrgKoXhppzbE86kx+rntORYbNgknCIDrJTT8kiTFT0kOP9lE1ZzSVIX8dV9f5CCgn8ZyJJ0KCCqOAQp/Uwrp60oOT0Ok+83WvkzG7u8FFK6ZRlRqrAE70gj0VpkzVV2NCmfSfMaLq4EV4Ilb+2mzI3HXVxVp2GZ4DR5tAOIhP0t/fpdz5LmU5oWK1JrEgpDr9jgYy/fHRteD5mghg2h6idU5R/OmmUbmesl7FciT9DJjfsLNbujfdKWhBi4MG8vjfeMJojjgL6rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8987.namprd11.prod.outlook.com (2603:10b6:208:574::18)
 by DM4PR11MB6262.namprd11.prod.outlook.com (2603:10b6:8:a7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 12:26:17 +0000
Received: from IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::f91f:4301:96d7:1925]) by IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::f91f:4301:96d7:1925%6]) with mapi id 15.20.9611.008; Thu, 19 Feb 2026
 12:26:17 +0000
From: "Tyagi, Yogesh" <yogesh.tyagi@intel.com>
To: Yoann Congal <yoann.congal@smile.fr>
CC: Yocto ML <yocto@lists.yoctoproject.org>
Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
 master
Thread-Topic: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
 master
Thread-Index: AQHcoF3PLpMIJc5JkEazG2PY0mkqe7WJ9FeA
Date: Thu, 19 Feb 2026 12:26:17 +0000
Message-ID: <IA3PR11MB8987C922484CE78B7F8E2EB28C6BA@IA3PR11MB8987.namprd11.prod.outlook.com>
References: <DG57YRQ7R76H.1FVPAEO7JT8Y6@smile.fr>
 <IA3PR11MB89872EF6500D42F1A753C0188C62A@IA3PR11MB8987.namprd11.prod.outlook.com>
 <DGD219WBW417.38KFVSE5F8O4R@smile.fr>
 <IA3PR11MB898731D307DB9D0641D1F5678C6DA@IA3PR11MB8987.namprd11.prod.outlook.com>
 <CAMSfU+4A=s=SwU5XNSebqSMQpg+KD8tYpMn9ncn93eUUdR7KxA@mail.gmail.com>
 <DGHLGO2BAP6W.31VDOO58TLKS6@smile.fr>
In-Reply-To: <DGHLGO2BAP6W.31VDOO58TLKS6@smile.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8987:EE_|DM4PR11MB6262:EE_
x-ms-office365-filtering-correlation-id: 76f8c9c8-c48c-495a-9649-08de6fb214af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?Windows-1252?Q?DrJGt8cIrxI6n4eFksozOWloTijWwUQLvhcv4BsdQHmKGTCGhabT5DIa?=
 =?Windows-1252?Q?Y/GBA8cUAAO7U8nJLDs13CPj12lI1t121Lj02HTD+os8IbjACHF33hi0?=
 =?Windows-1252?Q?ZPOU+lAyoLZpQULX+C/jRZboQZY6fkMrM4VP4PRBa6HzI+R56U6tGsVd?=
 =?Windows-1252?Q?N5aAZqAivFDaI6gTVJj5/ZoGVjifR7cRVbx0Ozcu8yvYolHtOivoNvwH?=
 =?Windows-1252?Q?GIgWXIh5jPY8aSppuaAcISPfYDZIBMYrmQKFHMxGb//To6wdTYteSZSo?=
 =?Windows-1252?Q?yPMbItwOXiNBII4lv3XiuKUjeKF9WfSPoVxQpFzLgIBveSFw+vTDJ0a1?=
 =?Windows-1252?Q?sUDmyXSjrvze1RNUamL/yIlE8ADTvcol6quqBBfpqz2dLt/rW2BvyFrH?=
 =?Windows-1252?Q?nL6GJDqqKXWChETt5p0WS7H6ob2mOy/vGzVlZzPhxHbl/275ZTQvS0y0?=
 =?Windows-1252?Q?FZq/j4cte+IdsXy9fOyvhrAtMe9vMJbmWoyQROezeeSDP3nPj+Wovvk6?=
 =?Windows-1252?Q?XmD8QXGriTZdsLaoLBBMn5d63pwECccYl3JqIh7I7rbYGWcxUfUtVU1f?=
 =?Windows-1252?Q?qedCxHEDxI7D1Gq8lvl0a7DQlHWHcxwJq9lRabfxY7NJmUalqXNEVyof?=
 =?Windows-1252?Q?VBA5hjiNuNqi5RK4BjcbIoMMcghp3E76UgDQ4Ds040AScBARo4+noPGv?=
 =?Windows-1252?Q?TqhvEYtv/h+r8yEKMhcFvmrmn7aXQ3pKUESU2TfHU3AJzZ8ORyFI8br9?=
 =?Windows-1252?Q?1H9lyHsz1AAQIu5EygLXUYQ+RSG/kdT5pu0irG43AMMWPS/Q8kzoo0VO?=
 =?Windows-1252?Q?vo0JnVQQrd0NMXjNERdjX4ky4N/UqQm4MetA3ESZKwU2cKDvQs9JHjz6?=
 =?Windows-1252?Q?b4pdaIe7nzbYsKsnXs7d9lpA4Kfpc+SsXxqTGTwHi0dhcqBTA8SG0/hz?=
 =?Windows-1252?Q?++qR86u8qNZCu93G9SFgopLAEOhnspNyRpdkr1t1toTuBamPM0Tz0VT9?=
 =?Windows-1252?Q?aFodZMGp/2sdhm+s//WvT+1AvD39oW9PhdHuV0GYsCiFAFH6OvU0dovc?=
 =?Windows-1252?Q?vj41s2wsugZcgOgAWrdUXKeX502w+zj/02ld8fbNCOZx6CZ1hIJrvp3r?=
 =?Windows-1252?Q?A+p69x7CcJHCECM4yN2pdOWcRX86xqaa9w+uJerjLzH5/CcbhaeTt3OJ?=
 =?Windows-1252?Q?KA0uCzgrFrzoO0Tp3Qd/Ua9JXKXbbSBB9BRbxLCNPuj5GkNlpD7FSnXm?=
 =?Windows-1252?Q?83IexqBmT5K6HTgnVoQjG6jV7PBdTK0yIXYdOAJaobkE+IwJISvf9xaB?=
 =?Windows-1252?Q?iXMKq0xis5BQFO+MdppIoX4zhdaHJZSM9KBqq91ttpUSFhVlA2WDeHik?=
 =?Windows-1252?Q?h+wR9gmqIb6RNBTegWUUFYcqMAvVMvJg9coIg/UJOKRBPwNmO7iYh2TL?=
 =?Windows-1252?Q?VO1Lt6k5xYrmO+Bw7YUc3WwlST4jMAg1VOgJgMWwpoMVu0dPy3nd/2IH?=
 =?Windows-1252?Q?zK+/aEx+SETsL9S3EAIRo81+YxQgwli/dlN9oz7H5DVgJJ38evHgvDdX?=
 =?Windows-1252?Q?CMxyeFqkkRAxwNqyo6AKURl0LZDPPUnvZgQyKIZriVDHKM68anUS0Pqi?=
 =?Windows-1252?Q?hf4KOtqxuiTl0T3mjG9eMgoTES7yf3ID6O0BhxndbtECZ9mwv4sb+DLU?=
 =?Windows-1252?Q?uSc1zkS6sxRVW2/QMgTG3We7MU2cTi5U?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA3PR11MB8987.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?lHxEzcVvwhBfqKTYPPYrbLyjgqsMH8FyKFjiRmIsFvUJeuCQJvre0hAL?=
 =?Windows-1252?Q?OUQjR/HbfGyU8lz9FaRUolPa7tTyVepg9al3eCw4I/X6qCJ7nhb/dI2s?=
 =?Windows-1252?Q?rgal+jmjBwycISMOnOr511UOF9Fk+tW5GK2b45b5yrHYxOcpu4VRzVux?=
 =?Windows-1252?Q?AlSQKOx4sCZUf+dM5d4IsnEOCh+0Zs7520fKPeZhMMGF5REslHfHYNF3?=
 =?Windows-1252?Q?ZJBJRHhUxzspWbtwwn/sb5lWiT1iU0YFZe3b0LcGotSa0PArrSytHrgG?=
 =?Windows-1252?Q?o9yT8NrLDQkZ/3HTS7j4qjmmWwuum84NlIM8+Ji9VfnEqmySSxvBFjj7?=
 =?Windows-1252?Q?Y3oQCR9/P1bOzUEBqvx6Hcnw2aAaXZyUmFDJeQBT+Gx5jG1qzuo1YqSB?=
 =?Windows-1252?Q?igFw4mY8onpCXYa66jk1Km0U0G7VTK+ZK5qAExwG6NfxM9HnleRO9Y7w?=
 =?Windows-1252?Q?ix8RG8T0j08FTX/VNAxDUwet4At75iUrt1k4K831S55a+E6XAEzDV70I?=
 =?Windows-1252?Q?DrDwRSG3BNYtF/rS/J2t2Oc8kZJy3oXMiwJmyNQLqeiAivX9PcK1xs8d?=
 =?Windows-1252?Q?C8vXyjz0vUgKF8cCdpZ3UM70/iE52UYbmDcMoRAiKvEGvTcjyzBPh7jd?=
 =?Windows-1252?Q?QAuPszqPkNwXNcuy7F1evJByxcDo63A0TKvSUknNnm+ET4zKyXMJUmD7?=
 =?Windows-1252?Q?PZB5jtiH/rXH3OugYm3DKU/4aa2p65RGp4m7Q/rOjEGdD7j9Ksj+Xc9P?=
 =?Windows-1252?Q?e3LrG8g5kN1MdVeEfPDv4vQnRDOkRf0QSCRt+dspr6NxtDxAld+vyXl/?=
 =?Windows-1252?Q?vxP38psJCkaROep/P8ahMVY1Oe0o1ZfBmzYZajf7fMOvSz6bdRzPejoc?=
 =?Windows-1252?Q?buhLrU5CQpIK83dSDWe5gVsS1gWR8N9rOji7IOlwta9HtRHK5kGUB7V3?=
 =?Windows-1252?Q?2x5tcmO0AixDh9EgAFfZwOjLRxyYsd0A0YXHCiRUtmY2lGgSegyK0pzy?=
 =?Windows-1252?Q?fQcGKH/hLxVV1/rvbgCqnlatUkpbomNSwtabYfmLy5I2d7+3nFYpy4Gg?=
 =?Windows-1252?Q?IBYRQ4J/cZh5o9g3RtJfTXzAZyJwgQoPg5b/gugmOX3PppjcGyDQz8UG?=
 =?Windows-1252?Q?pYWDu2ScpTnSAuuWS6YPQc4C3qBTEVS7TZkAQdYRZvdHvGxLgB7dqmw6?=
 =?Windows-1252?Q?JiMOsSiMCes73QUdXZnTBjBr9TuOsFhv2xaa7SLQ1JfIf8TnleL+yTCe?=
 =?Windows-1252?Q?w1QOCPZYdLhnFvpkz7zpaP7V3VgT7n1ph601GnK95gzGnrMaaZYmnZnB?=
 =?Windows-1252?Q?dl19Y6OcayxJnuB4SDJ4Y1xINaCkEMTmIMW2uOhMdhvEe7BVXMAaANLR?=
 =?Windows-1252?Q?+aGBJawr/adB2XI4grxDbLGAg+cikpYU7K9o9iua29bHBI1bqbkhiHui?=
 =?Windows-1252?Q?AbRvD6Lc8cjwskjjnjkTJ1awZCjiIqMMOrHOHjy4WWLo6w6TQ24aYXG8?=
 =?Windows-1252?Q?AJPfVyLHOgQg/xSwIpGCCDFgw0PrVcskleGyG1HsYFR3KvuWDntU1EeB?=
 =?Windows-1252?Q?6X7P70tfH96onenZTof5vjzNiNtNzM7M4DndF1Y2Q1QJmMKVghh6HYHW?=
 =?Windows-1252?Q?Jn0o5xdyPF0iq4U/su0hYov97gy4BdhdOrgyTMYI99AaNj3B/MgjbPkF?=
 =?Windows-1252?Q?uH2VYaDCsxHM5S4RQtKDM9iGkReSWAtPuoYR/YlHfvxltQ3cETpSiXu8?=
 =?Windows-1252?Q?InxlbtnAq4BpxuGv3wVBXQufgsbiqGPXJzGQDjvRWcKY6sniccr75vnn?=
 =?Windows-1252?Q?KwkXkMoJ59FaueODjkyyrg7txTP19zjJsO1c+uY6kHwtdjqd962PG1wE?=
 =?Windows-1252?Q?8++MpOyT6z/7Iw=3D=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76f8c9c8-c48c-495a-9649-08de6fb214af
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 12:26:17.4582
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6frpw5Nd7ixVX8kKbFODr3ncWJlE0E342MyTvd2WGFWNXM4wJr40Q/KJBWyPVdrU7hN9y4R3COAHW6bUQI3X5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6262
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Feb 2026 12:26:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66257

=0A=
=0A=
=0A=
________________________________________=0A=
From: Yoann Congal <yoann.congal@smile.fr>=0A=
Sent: Wednesday, February 18, 2026 4:05 AM=0A=
To: Yoann Congal <yoann.congal@smile.fr>; Tyagi, Yogesh <yogesh.tyagi@intel=
.com>=0A=
Cc: Yocto ML <yocto@lists.yoctoproject.org>=0A=
Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on =
master=0A=
=0A=
=0A=
On Tue Feb 17, 2026 at 10:29 PM CET, Yoann Congal wrote:=0A=
> Le mar. 17 f=E9vr. 2026 =E0 21:09, Tyagi, Yogesh <yogesh.tyagi@intel.com>=
 a=0A=
> =E9crit :=0A=
>=0A=
>> ________________________________________=0A=
>> From: Yoann Congal <yoann.congal@smile.fr>=0A=
>> Sent: Thursday, February 12, 2026 8:01 PM=0A=
>> To: Tyagi, Yogesh <yogesh.tyagi@intel.com>=0A=
>> Cc: Yocto ML <yocto@lists.yoctoproject.org>=0A=
>> Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails=
=0A=
>> on master=0A=
>>=0A=
>>=0A=
>> On Tue Feb 10, 2026 at 5:29 PM CET, Yogesh Tyagi wrote:=0A=
>> > Hello,=0A=
>>=0A=
>> Hello,=0A=
>>=0A=
>> Thanks for the status update.=0A=
>>=0A=
>> > The only solution I could find at present is to shorten the build path=
.=0A=
>> >=0A=
>> > Cause:=0A=
>> >=0A=
>> > * `intel-media-driver` CMake generates ~626 include directories per=0A=
>> compilation unit=0A=
>> > * With long paths, the expanded compiler arguments exceed Linux `ARG_M=
AX`=0A=
>> > * GCC expands response files before spawning `cc1plus`, so=0A=
>> wrappers/response files don=92t help=0A=
>> > * This is a kernel limitation, not a Yocto or compiler bug=0A=
>> >=0A=
>> > Impact:=0A=
>> >=0A=
>> > * Fails in Yocto builds with typical CI/workspace paths=0A=
>> > * `ENABLE_NONFREE_KERNELS=3DOFF` does not reduce include count=0A=
>> >=0A=
>> > Workaround:=0A=
>> >=0A=
>> > * Use very short workspace paths (<15=9620 characters), e.g. `/w/yocto=
/...`=0A=
>> >=0A=
>> > Status:=0A=
>> >=0A=
>> > * Upstream issue filed with `intel-media-driver`=0A=
>>=0A=
>> For reference, the issue is:=0A=
>> [Bug]: CMake generates 600+ include directories per compilation unit =B7=
=0A=
>> Issue #1984 =B7 intel/media-driver=0A=
>> https://github.com/intel/media-driver/issues/1984=0A=
>>=0A=
>> > * Proper fix requires CMake refactoring upstream=0A=
>> > * Path shortening is the only reliable workaround for now=0A=
>>=0A=
>> >Did you find what made the problem appear when we did not had it before=
?=0A=
>> >Any chance that this is something you can revert while=0A=
>> >intel-media-driver cmake is fixed?=0A=
>>=0A=
>>=0A=
>> I have reverted the intel-media-driver to old version. Please check the=
=0A=
>> build now.=0A=
>>=0A=
>=0A=
> I've started 2 AB meta-intel builds:=0A=
> master :=0A=
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/3043=
=0A=
> whinlatter:=0A=
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/3044=
=0A=
=0A=
>Both builds are successful.=0A=
>I've closed https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16172.=0A=
=0A=
>Thank you Yogesh.=0A=
=0A=
Hello Yoann,=0A=
=0A=
Is it possible to test a meta-intel development branch in autobuilder befor=
e pushing the changes in production?=0A=
 =0A=
>=0A=
>=0A=
>>=0A=
>> > Thanks,=0A=
>> > Yogesh=0A=
>> > ________________________________________=0A=
>> > From: Yoann Congal <yoann.congal@smile.fr>=0A=
>> > Sent: Tuesday, February 3, 2026 2:59 PM=0A=
>> > To: Tyagi, Yogesh <yogesh.tyagi@intel.com>=0A=
>> > Cc: Yocto ML <yocto@lists.yoctoproject.org>=0A=
>> > Subject: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on=
=0A=
>> master=0A=
>> >=0A=
>> >=0A=
>> > Hello,=0A=
>> >=0A=
>> > meta-intel/master seems currently broken: intel-media-driver_26.1.0.bb=
:do_compile=0A=
>> fails with:=0A=
>> > ninja: fatal: posix_spawn: Argument list too long=0A=
>> >=0A=
>> > This happens on master and also on whinlatter.=0A=
>> >=0A=
>> > We can see this on autobuilder:=0A=
>> > https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41=0A=
>> > * master:=0A=
>> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/2967=
=0A=
>> > * whinlatter:=0A=
>> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/2966=
=0A=
>> >=0A=
>> > Regards,=0A=
>>=0A=
>>=0A=
>> --=0A=
>> Yoann Congal=0A=
>> Smile ECS=0A=
>>=0A=
>>=0A=
>>=0A=
>>=0A=
=0A=
=0A=
-- =0A=
Yoann Congal=0A=
Smile ECS=0A=
=0A=
=0A=
=0A=

