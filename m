Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71A38C3600B
	for <webhook@archiver.kernel.org>; Fri, 28 Mar 2025 02:00:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by mx.groups.io with SMTP id smtpd.web10.2103.1743127241073748099
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Mar 2025 19:00:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=M7DvJlqj;
 spf=pass (domain: intel.com, ip: 198.175.65.9, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1743127242; x=1774663242;
  h=from:to:subject:date:message-id:mime-version;
  bh=wG0hR6A6NcGkGaO0Bn07GGjPFRDdZoeHnWQ8EXYy/fU=;
  b=M7DvJlqjfFwHg41fjptoRRDdWGfI1FaWUfd2JOnCEf0HBWRaCQpUJyb5
   gQyDfjCmi4uxH6zy3xfns6rQJHufgW7QmqKKhzWc68eGKAzUvI+qr5vrz
   GVNoErcnYvFtPRFDVW1km+dsZ1PbAfVN3FWhDYpCY3wioC8nXskoIKu8x
   t5i1j8UuTSWa9qJAZd2kUu6hIlHPdU4oKaI8gtbqlX2VQr/rW4R+wqYW8
   jHFs3LsPThjgmD8MKu0Oku0AEXTEDk8WkeVOtTF8dBfF2OkYMQTV1HGV9
   lyYb2lvX1cazbYG08HY0IDrdpD24ST4GLIC1VxHpidhmrUMaSauecTCmL
   A==;
X-CSE-ConnectionGUID: UFJ++HQfQXSUkgWnphPQ2w==
X-CSE-MsgGUID: 0TpHafMyTAqiaAzGdl4zXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="66956113"
X-IronPort-AV: E=Sophos;i="6.14,282,1736841600"; 
   d="scan'208,217";a="66956113"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2025 18:59:56 -0700
X-CSE-ConnectionGUID: uCAk6NKFS4+vs87lnfOYzg==
X-CSE-MsgGUID: Bu64r1X/RZik9wJeIZRLAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,282,1736841600"; 
   d="scan'208,217";a="130028879"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2025 18:59:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 18:59:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 18:59:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 18:59:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zWMoBNhBSCnbdJGpmg6ZT0C67fOTcRDCTpMHj9AOPUb2aEYQ+qCLHJSODy1+dNIxkvjj7PNlO1saxQnHiF6F3Xz1Kpm0q1kPEjUPNR62oFWRaMqLUPKIzy4eqGKXsPdGRxx3p92N6X7uA8Z9CHrQZLJdwXANCuT8baJsdlp4oOq/hRiMFY4W7T1cpl+4dqYmswjiCCTe87oiXPV1q8lVJtjlmi4k3sJgoj54pHsf1i+UfKTVOp6xRuu3ZeXrkXhB3WENCYni3JLZGypnnQD4mmy/Eb5+X/B00V3S0OWDo7o9/JRj800giNCpLaTp14wRl5TjXKuvyjr/cj5lXoPglw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tL6dAB9043PeSIdHH8qRG6t1rtmy1I7jn2sNa/i2iUk=;
 b=eqn49bfW3wYmPkUtWOevrLxQKTNbWjku3f7TFQGlx5muNjpoFDkMfB/BZ00FT+K7ebuzajPS/BtADDu+JP0VXUFD13sQfSsmpRuKFkoSbIpTU7qESTomQZdwlN18NS2vlzPPT+1pbhXxjUzKrG/uStFnszBxg4IYZ+7Xik9ClFampIoNk2qq4DwuqTEqQ9szhc77rn5roUQgMajQ0sJKkfwJbvQiAqUCG4l415NoNLVvA0gD0HD/mRjcJLNSKtOvD85gpuzCfbr3jdKdXCzbPwXoIACqx4hMYrk+fI7ufWOvCCch3Axi3j5IrXlxZZLJLC79znHRYFKHAoOmko14Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by CYXPR11MB8711.namprd11.prod.outlook.com (2603:10b6:930:d7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 01:59:51 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%6]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 01:59:51 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.8 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.8 is Released
Thread-Index: Adufgib4Ho4WCItKTia3xHfNmm6J3Q==
Date: Fri, 28 Mar 2025 01:59:50 +0000
Message-ID: <BL4PR11MB87977AB24702D40623C280C2B9A02@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|CYXPR11MB8711:EE_
x-ms-office365-filtering-correlation-id: 2b31f046-f60d-416f-d093-08dd6d9c39d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|38070700018|13003099007;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?rAHlwOgd8TOW7KQeINf6e0L5werq7QyQm1oshH1NL6H+uUU4hcFbngflzE?=
 =?iso-8859-1?Q?t2W+RTQyP5Td/Yb4ohITvooTp40Ky8DAg15HzuMp7BXYMWHJlim+I3Zadr?=
 =?iso-8859-1?Q?ogVP2uqAbUnsBDpvqDBkGvWyzXKwjrLMkGQjDhHTGfwIYtMcf4+ly6aYkj?=
 =?iso-8859-1?Q?KOwRp9D6eet9WGQdJl1XFWCZw9bkfWUavV/QSLATVbqhlmmMNkwjLRdqe+?=
 =?iso-8859-1?Q?whT/pDgENVpincFgN4MnYvTTB+XQ/lLuEYHa/TsSFfJgfTBBNFiPWcbzMJ?=
 =?iso-8859-1?Q?5h+8QyBGGgGAfZTHdC587cxVAmuUwJtN0tHlGcmJvoktPdzRMudhyqKlQk?=
 =?iso-8859-1?Q?HypAb6d5oxrM3kzyHcsQBZtjhGH9KgE1OXHlS4xXENK/oISjk2n6FNVm+w?=
 =?iso-8859-1?Q?eB8MRCshCVQm86QeJkWZa0w+C9wGW4+lWXJm5ILxe3R5NbCaRU3yn3qDU+?=
 =?iso-8859-1?Q?/aHBkp6oqqDcduTMjmpZVGw6M9KKSrVD+9FF4G6DcnG9u0xJrXq6mzp787?=
 =?iso-8859-1?Q?8cAPEpH5DBbt0ANzFRD3VW0BV2i6ZgH0v8s8oFRH2jw9tZxzXtpUC3EJRo?=
 =?iso-8859-1?Q?WdsaZou8tcsW+oNEj9oqoDVG5TJF0brxR4LtQhhpSSR+xVFntipB5M4n44?=
 =?iso-8859-1?Q?cupFGj0BP9OwTUErHYdavC7NMXCjcluMKqgJ59Am25YVEGceHRIXLPngOt?=
 =?iso-8859-1?Q?xGPqu9fk63hCtkX8Ylh8gqeA536PJYhWxIgki9J0GEB4iJSsNiB2O/oX5e?=
 =?iso-8859-1?Q?ZwTM4a2UkjBDLO1OqHA1+vW74/Gt7+vA8pXMLOvLfL3V5oHx2ZwMJp7kKt?=
 =?iso-8859-1?Q?TK75jPP7DuaekU2S+lfcZP6bSkicPWzszPFq3KDVEdOHefUWlBJg4ax8zn?=
 =?iso-8859-1?Q?23qb9vgJxNH16Gyb1AJTAbUb+exxu/NcJLqkbhivxreUAMB/w8dRYnFB9Z?=
 =?iso-8859-1?Q?QZWvfk7fDz1Dq48ffZBBTuWGbQom0qehGjjUkJrlyqJuB0b7jqBCkPDbCx?=
 =?iso-8859-1?Q?uJg1z8OR0HM/u9XI6/0Id/Whtx16Swg7rgfXIs5Jysrxq2PDJs1rXED5IB?=
 =?iso-8859-1?Q?barP3lRi+fw0NB5f8oLsMA4wUjDwA4+6C2/bSnQoXwlta2DUyG3iR59YDd?=
 =?iso-8859-1?Q?BZAckLiKBs0wsyd+xBRjBe97dkvdJU8YTaZLeAGXgkQZlBaRhhWSfA2X4k?=
 =?iso-8859-1?Q?MAxHRW1+GGp3Dta+HVYywv01yj1zdR6owStcTwNSjFggcELcFZqW65ibW4?=
 =?iso-8859-1?Q?m89QKIJBTGJdfpadqyMjtpWXKNehTqlXf9nRwZfrtZ+KX9IW2pGXnHTuhh?=
 =?iso-8859-1?Q?q/1I+IbThy6lJI0015I6xcs9kG1E5nmufNCBGkMIrUcoQYpN+rMH7WAFjc?=
 =?iso-8859-1?Q?1RglcEaDrFoMVzJX1i7qsYvwrgfw+En7WqVA5HqSQ6197ga9KmXOjKDo/k?=
 =?iso-8859-1?Q?YdfeO4+DaeZS5iaYyTX+xOVecVaHIVLUfCXRfwiefwYVv12GNsMLqRvdWK?=
 =?iso-8859-1?Q?KOMI/SeVRjeYTg3eWhtAuy?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(38070700018)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?SrtIWaWPebKz2o8d8MIrAB64NlXa+X0Z9tgQX51ICpCoaXt1o7Om7UeiBm?=
 =?iso-8859-1?Q?8haGfZg/iyi8ucz1rzGEinUeb1lvGYwVmbXIooUHowzUsFBlU37lQAFT5g?=
 =?iso-8859-1?Q?W/Xh0trpc12t7rXisHCvEtt+0LIRtiaXQD4oV1RHKnvqJ/fq57DNg3P1ov?=
 =?iso-8859-1?Q?IEB3N14yJr9FwyXoEzUlSEoXKY5nk7SSx6oGYbzhG8n0aPqyeOnjdkwsBg?=
 =?iso-8859-1?Q?usgbGkNFVDXFvDsG70U6NQLY3+4MOcyRtWLeve+1FmvZocxC9IFtoRLbws?=
 =?iso-8859-1?Q?yS7UKE0+20GLDG29cyhCj573d5rSMpKjGA7WPqhE2qrRSFzCBKvuJzmh42?=
 =?iso-8859-1?Q?hrcyRYmfp0oyIQNvBZaLG/FeIkwHh/XN0YkUb6U+by1qsMTNoSvxJ4Srzl?=
 =?iso-8859-1?Q?FoD6iBEOn0V+N0qPTMbyrMZT62jn6B94H9gz03aBoaQxh4Mxp+/mNhvs19?=
 =?iso-8859-1?Q?I4z1tueAojqSKOlHXVuqDRjI4x+W/ZWrnseo7uFAWb4P/zdOszlEoCgF7P?=
 =?iso-8859-1?Q?L6fCYPAv56/qw2oH9R5jzXmNN8h1gKxcSJrq4ePFDeClBrNjXc5Dt1K0PT?=
 =?iso-8859-1?Q?Ge6do8BFGonfbGydBvpeUezI05l+8VDooz/tbVG/28oNXifVZUD3xhTxKh?=
 =?iso-8859-1?Q?PHn8lKISucZ478j7CNJ8p2My4wPPNsNF4laZevKeo62ZCzb7bBV3EmjXiZ?=
 =?iso-8859-1?Q?UlY3XJzJmxALyoMKNmoS79w1PSbUABq0RkEDgsRZyr7LwysEvxSmJQKGP8?=
 =?iso-8859-1?Q?McRLy74DgwkJrGd5KcMZaJEdhLxJvIqc0EBxCF/aGUKRF4jc70hwtlPBka?=
 =?iso-8859-1?Q?8jNGaTG/9PgfBBC+XzWkusIJ/VD4Trlx/ZrdgeCauG33JLQis9jZ6ZLjc5?=
 =?iso-8859-1?Q?BoE1QsSwnGV6vt5XNA5WcwZpwwL2cH2/FsBkzQwSF2/v3K4qqLBuZakg8O?=
 =?iso-8859-1?Q?XnFxZq2Yh2coDvkIXdiz5bt11DDtxv6stQk9+4iSCbgRCpf1JCYZGbGQ/a?=
 =?iso-8859-1?Q?AjHB8EOF1W7gfVGOZfGFTEgEb3UHOLCJd2bwBsGNt0RVkgDt+IFxjIVeyJ?=
 =?iso-8859-1?Q?8fhVwnv27LGInQ0J9+le93Ya/EIiTh7yz4eQFwLahPHksAdlr7OVCsHSqk?=
 =?iso-8859-1?Q?zmu++ynoVvLhbswO6jHlrEFDY0bwE8u1IEWotaJ5cime4podeb5vsRWQC+?=
 =?iso-8859-1?Q?VlOsVu3lZxwbq+EjcofQRpmTZf753UNPekHIpp0P6q5fIPFoyB63iyvGNB?=
 =?iso-8859-1?Q?QzqXFzYxh/Lur652U/7Zd9yhx5NaRnmPApqlrScPrOueZxpG8/16g/i3gv?=
 =?iso-8859-1?Q?PSMSWr0lb+WsGsXiQr2F8Ez20Obf6ARMPnI8kZZ0tYdQYsfOhp9uxrecy4?=
 =?iso-8859-1?Q?O1shbRuo6dOr3aUMitWeXSAgkm7B1CvzqZ4iUGfEP2hcYchERfXmIIGzi0?=
 =?iso-8859-1?Q?Cp8+lSyymseJMnrap1SjuEDIH8jaPlKwWQMv4wLcPZf6J3XOl8yj3Vkfb5?=
 =?iso-8859-1?Q?lH51YsZO0gJ1UMkYruIL723nAJCEJahqvMxwEw1+utssjOCyYgvFGdLPL8?=
 =?iso-8859-1?Q?rukY7lKNhYpOAUu1MA7ogZY7iLbD9jiq+4vYAie409MzckC28CAH/tfvRi?=
 =?iso-8859-1?Q?FSVSdVx5wJxo8gKecWhxkj8S1ZocWO5Gae?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87977AB24702D40623C280C2B9A02BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b31f046-f60d-416f-d093-08dd6d9c39d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2025 01:59:50.8986
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1fVejPrK7EemjEE3cymZjxLpPdVk5mflOerNTWgD0vKOkqSplnMScJQ76GljYX/dY1eMS86VGQzYHfTphlE5ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8711
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Mar 2025 02:00:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65028

--_000_BL4PR11MB87977AB24702D40623C280C2B9A02BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

We are pleased to announce the Yocto Project 5.0.8 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/poky-dc4827b3=
660bc1a03a2bc3b0672615b50e9137ff.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.8/poky-dc4827b3660bc1a03a2=
bc3b0672615b50e9137ff.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.0.8 Release Notes
--------------------------

--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.8
Git Revision: dc4827b3660bc1a03a2bc3b0672615b50e9137ff
Release Artefact: poky-dc4827b3660bc1a03a2bc3b0672615b50e9137ff
sha: ace7264e16e18ed02ef0ad2935fa10b5fad2c4de38b2356f4192b38ef2184504
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/poky-dc4827b3=
660bc1a03a2bc3b0672615b50e9137ff.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.8/poky-dc4827b3660bc1a03a2=
bc3b0672615b50e9137ff.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.8
Git Revision: cd2b6080a4c0f2ed2c9939ec0b87763aef595048
Release Artefact: oecore-cd2b6080a4c0f2ed2c9939ec0b87763aef595048
sha: 14c7cd5c62a96ceb9c2141164ea0f087fdbaed99ca3e9a722977a3f12d6381f6
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/oecore-cd2b60=
80a4c0f2ed2c9939ec0b87763aef595048.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.8/oecore-cd2b6080a4c0f2ed2=
c9939ec0b87763aef595048.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.8
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/meta-mingw-bd=
9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.8/meta-mingw-bd9fef71ec005=
be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.8
Git Revision: 7375d32e8c1af20c51abec4eb3b072b4ca58b239
Release Artefact: bitbake-7375d32e8c1af20c51abec4eb3b072b4ca58b239
sha: 13dffbc162c5b6e2c95fa72936a430b9a542d52d81d502a5d0afc592fbf4a16b
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/bitbake-7375d=
32e8c1af20c51abec4eb3b072b4ca58b239.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.8/bitbake-7375d32e8c1af20c=
51abec4eb3b072b4ca58b239.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.8
Git Revision: 7d3cce5b962ca9f73b29affceb7ebc6710627739


---------------
Contributors
---------------
Adrian Freihofer
Aleksandar Nikolic
Alessio Cascone
Alexander Kanavin
Alexis Cellier
Antonin Godard
Archana Polampalli
Bruce Ashfield
Chen Qi
Deepesh Varatharajan
Divya Chellam
Enrico J=F6rns
Esben Haabendal
Etienne Cordonnier
Fabio Berton
Gu=F0ni M=E1r Gilbert
Harish Sadineni
Hitendra Prajapati
Hongxu Jia
Jiaying Song
Joerg Schmidt
Johannes Schneider
Khem Raj
Lee Chee Yang
Marek Vasut
Marta Rybczynska
Moritz Haase
Oleksandr Hnatiuk
Pedro Ferreira
Peter Marko
Poonam Jadhav
Priyal Doshi
Ross Burton
Simon A. Eugster
Steve Sakoman
Vijay Anusuri
Wang Mingyu
Weisser, Pascal

---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-0840
curl: Ignore CVE-2025-0725
elfutils: Fix CVE-2025-1352 CVE-2025-1365 CVE-2025-1372
ffmpeg: Fix CVE-2024-35365 CVE-2024-35369 CVE-2024-36613 CVE-2024-36616 CVE=
-2024-36617 CVE-2024-36618 CVE-2024-36619 CVE-2025-0518 CVE-2025-22919 CVE-=
2025-22921 CVE-2025-25473
glibc: Fix CVE-2025-0395
gnutls: Fix CVE-2024-12243
go: Fix CVE-2024-45336 CVE-2024-45341 CVE-2025-22866
gstreamer1.0-rtsp-server: Fix CVE-2024-44331
libcap: Fix CVE-2025-1390
libtasn1: Fix CVE-2024-12133
libxml2: Fix CVE-2024-56171 CVE-2025-24928
linux-yocto/6.6: Fix CVE-2024-36476 CVE-2024-53179 CVE-2024-56582 CVE-2024-=
56703 CVE-2024-57801 CVE-2024-57802 CVE-2024-57841 CVE-2024-57882 CVE-2024-=
57887 CVE-2024-57890 CVE-2024-57892 CVE-2024-57895 CVE-2024-57896 CVE-2024-=
57900 CVE-2024-57901 CVE-2024-57902 CVE-2024-57906 CVE-2024-57907 CVE-2024-=
57908 CVE-2024-57910 CVE-2024-57911 CVE-2024-57912 CVE-2024-57913 CVE-2024-=
57916 CVE-2024-57922 CVE-2024-57925 CVE-2024-57926 CVE-2024-57933 CVE-2024-=
57938 CVE-2024-57939 CVE-2024-57940 CVE-2024-57949 CVE-2024-57951 CVE-2025-=
21631 CVE-2025-21636 CVE-2025-21637 CVE-2025-21638 CVE-2025-21639 CVE-2025-=
21640 CVE-2025-21642 CVE-2025-21652 CVE-2025-21658 CVE-2025-21665 CVE-2025-=
21666 CVE-2025-21667 CVE-2025-21669 CVE-2025-21670 CVE-2025-21671 CVE-2025-=
21673 CVE-2025-21674 CVE-2025-21675 CVE-2025-21676 CVE-2025-21680 CVE-2025-=
21681 CVE-2025-21683 CVE-2025-21684 CVE-2025-21687 CVE-2025-21689 CVE-2025-=
21690 CVE-2025-21692 CVE-2025-21694 CVE-2025-21697 CVE-2025-21699
openssh: Fix CVE-2025-26466
openssl: Fix CVE-2024-9143 CVE-2024-12797 CVE-2024-13176
pyhton3: Fix CVE-2024-12254 CVE-2025-0938 and 3 other vulnerabilities (gh-8=
0222, gh-119511 and gh-126108).
subversion: Ignore CVE-2024-45720
u-boot: Fix  CVE-2024-57254 CVE-2024-57255 CVE-2024-57256 CVE-2024-57257 CV=
E-2024-57258 CVE-2024-57259
vim: Fix CVE-2025-22134 CVE-2025-24014
xwayland: Fix  CVE-2024-9632 CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 C=
VE-2025-26597 CVE-2025-26598 CVE-2025-26599 CVE-2025-26600 CVE-2025-26601

---------------
Fixes
---------------
base-files: Drop /bin/sh dependency
bind: upgrade to 9.18.33
binutils: File name too long causing failure to open temporary head file in=
 dlltool
binutils: stable 2.42 branch update
bitbake: bblayers/query: Fix using "removeprefix" string method
bitbake: bitbake-diffsigs: fix handling when finding only a single sigfile
bitbake: data_smart.py: clear expand_cache in _setvar_update_overridevars
bitbake: data_smart.py: remove unnecessary ? from __expand_var_regexp__
bitbake: data_smart.py: simple clean up
build-appliance-image: Update to scarthgap head revision
ccache.conf: Add include_file_ctime to sloppiness
cmake: apply parallel build settings to ptest tasks
contributor-guide/submit-changes: add policy on AI generated code
dev-manual/building: document the initramfs-framework recipe
devtool: ide-sdk recommend DEBUG_BUILD
devtool: ide-sdk remove the plugin from eSDK installer
devtool: ide-sdk sort cmake preset
devtool: modify support debug-builds
docs: Add favicon for the documentation html
docs: Fix typo in standards.md
docs: Remove all mention of core-image-lsb
docs: vulnerabilities/classes: remove references to cve-check text format
files: Amend overlayfs unit descriptions with path information
files: overlayfs-create-dirs: Improve mount unit dependency
glibc: stable 2.39 branch updates
gnupg: upgrade to 2.4.5
go: upgrade 1.22.12
icu: remove host references in nativesdk to fix reproducibility
libtasn1: upgrade to 4.20.0
libxml2: upgrade to 2.12.10
linux-yocto/6.6: upgrade to v6.6.75
meta: Enable '-o pipefail' for the SDK installer
migration-guides: add release notes for 4.0.24, 4.0.25 and 5.0.7
oe-selftest: devtool ide-sdk use modify debug-build
oeqa/sdk/context: fix for gtk3 test failure during do_testsdk
oeqa/selftest/rust: skip on all MIPS platforms
openssl: upgrade to 3.2.4
pkg-config-native: pick additional search paths from $EXTRA_NATIVE_PKGCONFI=
G_PATH
poky.conf: add ubuntu2404 to SANITY_TESTED_DISTROS
poky.conf: bump version for 5.0.8
ppp: Revert lock path to /var/lock
python3-setuptools-scm: respect GIT_CEILING_DIRECTORIES
python3: upgrade to 3.12.9
qemu: Do not define sched_attr with glibc >=3D 2.41
ref-manual/faq: add q&a on systemd as default
ref-manual: Add missing variable IMAGE_ROOTFS_MAXSIZE
ref-manual: don't refer to poky-lsb
ref-manual: remove OE_IMPORTS
rust-common.bbclass: soft assignment for RUSTLIB path
rust: fix for rust multilib sdk configuration
rust: remove redundant cargo config file
scripts/install-buildtools: Update to 5.0.7
sdk-manual: extensible.rst: devtool ide-sdk improve
sdk-manual: extensible.rst: update devtool ide-sdk
selftest/rust: correctly form the PATH environment variable
systemd: add libpcre2 as RRECOMMENDS if pcre2 is enabled
systemd: upgrade to 255.17
test-manual/ptest: link to common framework ptest classes
tzcode-native: Fix compiler setting from 2023d version
tzdata/tzcode-native: upgrade to 2025a
u-boot: kernel-fitimage: Fix dependency loop if UBOOT_SIGN_ENABLE and UBOOT=
_ENV enabled
u-boot: kernel-fitimage: Restore FIT_SIGN_INDIVIDUAL=3D"1" behavior
uboot-config: fix devtool modify with kernel-fitimage
vim: upgrade to 9.1.1043





--_000_BL4PR11MB87977AB24702D40623C280C2B9A02BL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi,<br>
<br>
We are pleased to announce the Yocto Project 5.0.8 Release is now available=
 for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/poky-dc4827b3660bc1a0=
3a2bc3b0672615b50e9137ff.tar.bz2">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.0.8/poky-dc4827b3660bc1a03a2bc3b0672615b50e9137ff.tar.bz2<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.8/poky-dc4827b3660bc1a03a2bc3b0672=
615b50e9137ff.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.8/p=
oky-dc4827b3660bc1a03a2bc3b0672615b50e9137ff.tar.bz2</a><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.0.8/testreport.txt</a>=
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
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.0.8 Release=
 Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.8<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: dc482=
7b3660bc1a03a2bc3b0672615b50e9137ff<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-dc4827b3660bc1a03a2bc3b0672615b50e9137ff<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ace7264e16e18e=
d02ef0ad2935fa10b5fad2c4de38b2356f4192b38ef2184504<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.8/poky-dc4827b3660bc1a03a2bc3b0672=
615b50e9137ff.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.8/poky-dc4827b3660bc1a03a2bc3b0672615b50e9137=
ff.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.8<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: cd2b6=
080a4c0f2ed2c9939ec0b87763aef595048<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-cd2b6080a4c0f2ed2c9939ec0b87763aef595048<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 14c7cd5c62a96c=
eb9c2141164ea0f087fdbaed99ca3e9a722977a3f12d6381f6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.8/oecore-cd2b6080a4c0f2ed2c9939ec0=
b87763aef595048.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.8/oecore-cd2b6080a4c0f2ed2c9939ec0b87763aef59=
5048.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.8<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: bd9fe=
f71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ab073def6487f2=
37ac125d239b3739bf02415270959546b6b287778664f0ae65<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.8/meta-mingw-bd9fef71ec005be3c3a6d=
7f8b99d8116daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.8/meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116=
daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.8<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.8<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 7375d=
32e8c1af20c51abec4eb3b072b4ca58b239<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-7375d32e8c1af20c51abec4eb3b072b4ca58b239<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 13dffbc162c5b6=
e2c95fa72936a430b9a542d52d81d502a5d0afc592fbf4a16b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.8/bitbake-7375d32e8c1af20c51abec4e=
b3b072b4ca58b239.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.8/bitbake-7375d32e8c1af20c51abec4eb3b072b4ca5=
8b239.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.8<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 7d3cc=
e5b962ca9f73b29affceb7ebc6710627739<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Adrian Freihofer<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alessio Cascone<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexander Kanavin<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexis Cellier<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chen Qi<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Enrico J=F6rns<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Esben Haabendal<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Etienne Cordonnier<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fabio Berton<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=F0ni M=E1r Gilbe=
rt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Harish Sadineni<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hongxu Jia<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joerg Schmidt<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Johannes Schneider<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Marek Vasut<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Marta Rybczynska<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Moritz Haase<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Oleksandr Hnatiuk<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Pedro Ferreira<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Poonam Jadhav<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Priyal Doshi<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Simon A. Eugster<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Weisser, Pascal<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">N/A<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-0840<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Ignore CVE-20=
25-0725<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">elfutils: Fix CVE-2=
025-1352 CVE-2025-1365 CVE-2025-1372<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
4-35365 CVE-2024-35369 CVE-2024-36613 CVE-2024-36616 CVE-2024-36617 CVE-202=
4-36618 CVE-2024-36619 CVE-2025-0518 CVE-2025-22919 CVE-2025-22921 CVE-2025=
-25473<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: Fix CVE-2025=
-0395<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: Fix CVE-202=
4-12243<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2024-45=
336 CVE-2024-45341 CVE-2025-22866<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-rtsp-s=
erver: Fix CVE-2024-44331<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libcap: Fix CVE-202=
5-1390<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libtasn1: Fix CVE-2=
024-12133<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Fix CVE-20=
24-56171 CVE-2025-24928<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: Fi=
x CVE-2024-36476 CVE-2024-53179 CVE-2024-56582 CVE-2024-56703 CVE-2024-5780=
1 CVE-2024-57802 CVE-2024-57841 CVE-2024-57882 CVE-2024-57887 CVE-2024-5789=
0 CVE-2024-57892 CVE-2024-57895 CVE-2024-57896
 CVE-2024-57900 CVE-2024-57901 CVE-2024-57902 CVE-2024-57906 CVE-2024-57907=
 CVE-2024-57908 CVE-2024-57910 CVE-2024-57911 CVE-2024-57912 CVE-2024-57913=
 CVE-2024-57916 CVE-2024-57922 CVE-2024-57925 CVE-2024-57926 CVE-2024-57933=
 CVE-2024-57938 CVE-2024-57939 CVE-2024-57940
 CVE-2024-57949 CVE-2024-57951 CVE-2025-21631 CVE-2025-21636 CVE-2025-21637=
 CVE-2025-21638 CVE-2025-21639 CVE-2025-21640 CVE-2025-21642 CVE-2025-21652=
 CVE-2025-21658 CVE-2025-21665 CVE-2025-21666 CVE-2025-21667 CVE-2025-21669=
 CVE-2025-21670 CVE-2025-21671 CVE-2025-21673
 CVE-2025-21674 CVE-2025-21675 CVE-2025-21676 CVE-2025-21680 CVE-2025-21681=
 CVE-2025-21683 CVE-2025-21684 CVE-2025-21687 CVE-2025-21689 CVE-2025-21690=
 CVE-2025-21692 CVE-2025-21694 CVE-2025-21697 CVE-2025-21699<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssh: Fix CVE-20=
25-26466<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
24-9143 CVE-2024-12797 CVE-2024-13176
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pyhton3: Fix CVE-20=
24-12254 CVE-2025-0938 and 3 other vulnerabilities (gh-80222, gh-119511 and=
 gh-126108).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">subversion: Ignore =
CVE-2024-45720<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">u-boot: Fix&nbsp; C=
VE-2024-57254 CVE-2024-57255 CVE-2024-57256 CVE-2024-57257 CVE-2024-57258 C=
VE-2024-57259<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2025-2=
2134 CVE-2025-24014<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xwayland: Fix&nbsp;=
 CVE-2024-9632 CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-2025-26597 =
CVE-2025-26598 CVE-2025-26599 CVE-2025-26600 CVE-2025-26601<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">base-files: Drop /b=
in/sh dependency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bind: upgrade to 9.=
18.33<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: File name=
 too long causing failure to open temporary head file in dlltool<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: stable 2.=
42 branch update<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: bblayers/q=
uery: Fix using &quot;removeprefix&quot; string method<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: bitbake-di=
ffsigs: fix handling when finding only a single sigfile<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: data_smart=
.py: clear expand_cache in _setvar_update_overridevars<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: data_smart=
.py: remove unnecessary ? from __expand_var_regexp__<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: data_smart=
.py: simple clean up<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to scarthgap head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ccache.conf: Add in=
clude_file_ctime to sloppiness<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: apply parall=
el build settings to ptest tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide/s=
ubmit-changes: add policy on AI generated code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/building=
: document the initramfs-framework recipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">devtool: ide-sdk re=
commend DEBUG_BUILD<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">devtool: ide-sdk re=
move the plugin from eSDK installer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">devtool: ide-sdk so=
rt cmake preset<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">devtool: modify sup=
port debug-builds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Add favicon f=
or the documentation html<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Fix typo in s=
tandards.md<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Remove all me=
ntion of core-image-lsb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: vulnerabiliti=
es/classes: remove references to cve-check text format<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">files: Amend overla=
yfs unit descriptions with path information<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">files: overlayfs-cr=
eate-dirs: Improve mount unit dependency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.39 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnupg: upgrade to 2=
.4.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: upgrade 1.22.12=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">icu: remove host re=
ferences in nativesdk to fix reproducibility<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libtasn1: upgrade t=
o 4.20.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: upgrade to=
 2.12.10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: up=
grade to v6.6.75<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta: Enable '-o pi=
pefail' for the SDK installer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.24, 4.0.25 and 5.0.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oe-selftest: devtoo=
l ide-sdk use modify debug-build<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/sdk/context: f=
ix for gtk3 test failure during do_testsdk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/selftest/rust:=
 skip on all MIPS platforms<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: upgrade to=
 3.2.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pkg-config-native: =
pick additional search paths from $EXTRA_NATIVE_PKGCONFIG_PATH<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: add ubun=
tu2404 to SANITY_TESTED_DISTROS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.0.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ppp: Revert lock pa=
th to /var/lock<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-setuptools-=
scm: respect GIT_CEILING_DIRECTORIES<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: upgrade to=
 3.12.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Do not define=
 sched_attr with glibc &gt;=3D 2.41<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/faq: add=
 q&amp;a on systemd as default<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: Add mis=
sing variable IMAGE_ROOTFS_MAXSIZE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: don't r=
efer to poky-lsb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: remove =
OE_IMPORTS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust-common.bbclass=
: soft assignment for RUSTLIB path<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: fix for rust =
multilib sdk configuration<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: remove redund=
ant cargo config file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.0.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sdk-manual: extensi=
ble.rst: devtool ide-sdk improve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sdk-manual: extensi=
ble.rst: update devtool ide-sdk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/rust: corr=
ectly form the PATH environment variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: add libpcr=
e2 as RRECOMMENDS if pcre2 is enabled<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: upgrade to=
 255.17<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/ptest: =
link to common framework ptest classes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzcode-native: Fix =
compiler setting from 2023d version<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzdata/tzcode-nativ=
e: upgrade to 2025a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">u-boot: kernel-fiti=
mage: Fix dependency loop if UBOOT_SIGN_ENABLE and UBOOT_ENV enabled<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">u-boot: kernel-fiti=
mage: Restore FIT_SIGN_INDIVIDUAL=3D&quot;1&quot; behavior<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">uboot-config: fix d=
evtool modify with kernel-fitimage<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: upgrade to 9.1=
.1043<br>
<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB87977AB24702D40623C280C2B9A02BL4PR11MB8797namp_--

