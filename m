Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73B10C44501
	for <webhook@archiver.kernel.org>; Wed, 21 Jan 2026 10:03:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8476.1768989770583569856
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jan 2026 02:02:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=KCMegi2R;
 spf=pass (domain: intel.com, ip: 198.175.65.11, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768989771; x=1800525771;
  h=from:to:subject:date:message-id:mime-version;
  bh=wcfR+mtpQtz6EA7VpkKWfTpHsihqYbfbx/BRiLo0pS8=;
  b=KCMegi2RkqWTl8lB+Yiv5Naaho6LFb+myE2ps+svl5uXplmuzRzbUvS1
   OAUm3V2pNF6mPSzn/sUkkP57TAHxfJGTJt8VJopxil9641hOZAP7skdie
   uAAsQtAQpNLKmC0HFF7tqufkHz58gxcm1NPdKbmVpvHNPrUWpNEO0ZSa6
   2ibQz+HLJNsMXqicklaH0LKsIshumiwA90pXtvGdQHuRCMTD4EP5fJLOe
   YEMp5X7I7htNQWh7GlL7pQBa7/w2IctTDdEyJEHTKJW8QvUfDWoTyqaQh
   mxGfOAJU2Aa2Uu29QDD2hLlye2uwya9VcVUcbR5hSv4arhr0Hx4Imj/oZ
   w==;
X-CSE-ConnectionGUID: dQwNY91VSsa/GVNRXsoM/A==
X-CSE-MsgGUID: +1vqY8mKScKMnPjfgOkONQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="80516378"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; 
   d="scan'208,217";a="80516378"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2026 02:02:50 -0800
X-CSE-ConnectionGUID: RbvJugJ6QyyFNUO5y0oncA==
X-CSE-MsgGUID: mSdn/6NgTRK1EsEeJsXXrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; 
   d="scan'208,217";a="210572117"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2026 02:02:50 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:02:49 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 02:02:49 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.37) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:02:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QoDmjN/QzkLw2TKet7F8eF7cGZN2UVy2w8lOZ3MfXKH3C0gLP2G8hKW+itTXp4HzPeed8xvaCYzg8FkEYTMTGB82YoaNz7tg/T5InTWNZ23IybDhx2ceLxvwnm6F9vYAWeTeJMhniNVOewOfUOiG9pM5F0huDyksZDyDFokNFhDp8JvYkwRbLmMtD6yJq+qqmRi6Gimgh9dE3MUPvhvW/MobscaE65G9BGi+Clk5bRgz9GoK2dwpz9cD6Xxr2v0u7zeeofEgfyu7IK27UpnQMlD5kkhKYvCiHrB+MXW4u5E3ugMygwJ1aeMXaJ6N8n8LPXQAyRfaLeCYxD+GKTwOCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWA0jwyHDg1Ms4wKVkaK6IUZl4EEJGmEysv+Pe2M4R4=;
 b=U4aC86eWsBLqEUauIrKAX+AhQm7OrtR/OEIyPOXf4iC5z0aEpETTG4lYHo0cwGLNUjuyuRAQQSD+FiuJtiVcVkynx8lHufIMqjU/mtw5OghGK61mTkuPfImmaq9WeX7bRmWiA6ALO9TJd978VmyWSpNVAO838pGELqx+VCsDc0BhHTckCZ0oQdRxWLmMoVQS6SbGLUPZFg8OL083yMqDp9PA1HaJZ8I9LsjuFp15lDyqKJb1txoYdNsAmyWdFziuXCqNul9x0qreDZkWWG+vUTvhOjRz16D6685tlMWhOOMngHb9BYzKU7URbWzovZIX5z1DqH9SG+v3kMVMRAvX0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by IA3PR11MB9015.namprd11.prod.outlook.com (2603:10b6:208:57e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 21 Jan
 2026 10:02:47 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 10:02:46 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15) is
 Released
Thread-Index: AQHcirQ0sr2PFDXPtE602v7nHCpZNA==
Date: Wed, 21 Jan 2026 10:02:46 +0000
Message-ID: <BL4PR11MB8797B987D5F7D6B03DBACE5EB996A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|IA3PR11MB9015:EE_
x-ms-office365-filtering-correlation-id: add5375f-786b-4a6e-9f0c-08de58d43a60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|38070700021|8096899003|13003099007;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?M81TBY/MZIohHN1zqCJycL/OjbaH8+oXhoCrK2eXG4tTTtvqvEzvnyFw6i?=
 =?iso-8859-1?Q?ekzB/oscSMwZZS4Ng3LOC9n/KfKSySCm08QGt0fNN5qMW0NRNMpM3BjYNG?=
 =?iso-8859-1?Q?bOjiuU3/5oe6vC7AcKmK+1/dMTXPO3ApkSFXsei6H1SND3mFD9YxLRGNoT?=
 =?iso-8859-1?Q?GEatIPt2X7s6Y611VObmTn1DNE9AFWPszGJihTtBXHHz+Ts7r352qTA67l?=
 =?iso-8859-1?Q?lAc45d07nazUznJ1hz8ffaC9HFyAC6vrpvFVTt9pruoJ/zVDezed7XYMID?=
 =?iso-8859-1?Q?7gcCgDhJDoRqTCBr/iHb6hw1cG04Y9Yk99b8wVdSUQQNwCYEfwv/qZylDI?=
 =?iso-8859-1?Q?palKa8GWzfR9Snh0KRaCpj48d/VP/DHfXtpcEsJd2LkPCjvrSaACjI9Kfs?=
 =?iso-8859-1?Q?NBl21bOal41ApIxdpFghbdRnFRiMLVevjv/4h0khplve8VbkaLE55aKCO1?=
 =?iso-8859-1?Q?p4nfUlX5T6Q1SlM/AwEB4gXEVzgaFSd8evJi5jgvfo8RxhhhgLsLmKch4I?=
 =?iso-8859-1?Q?1yPQxDg962Ilm2PwomhFr3Q6XBAmc6/Oj82mkwC15oCjMpmJyKWtthQ04w?=
 =?iso-8859-1?Q?+8oJrIXMk+hdj+tk0cdOM8leUzdvL6NrFLBWPH/MIaw+fvTgYoDX0YiWmT?=
 =?iso-8859-1?Q?78O4kN6PI71fAMHr4ZBUBJpyNb81A1jNgbMxDLM3LxMSpf+2soIFQMWyrn?=
 =?iso-8859-1?Q?4FIa+3dGcLTEK3qioqolXzAhEWGgogHr0Cm6Cr/mkgiYZvKCFyovPP4a7l?=
 =?iso-8859-1?Q?60e2Hd82Rr3gmspwkBMWPH32VLKA+5e6orFbexMHq30jz9BiRTk70XZgYn?=
 =?iso-8859-1?Q?3q3oKAJAEm3bK3KGuzbpOd4EMbtpcdR0EjEa08W32XUEd2/FRjwStz35zM?=
 =?iso-8859-1?Q?d4ymmlbu27iljV4yR/oKTNpYX/Qk4m0MIkm3whOnSJ+n5oBlpNkeg3LvxB?=
 =?iso-8859-1?Q?VhVagp3RUUcvV8Fd2nFcsOzouGF/FBHaJsa7kcrIJOKH9Yb3Y4HGTZHWJo?=
 =?iso-8859-1?Q?nvIZjmZoaZak1rsjwTUY8CisxDGAhK5MBK2Gjrnz25tfVbCpcuW7m6ffDw?=
 =?iso-8859-1?Q?XuTLFRX3Qd3oKb8+uGSVwrwghisgmw6VjZESKeol7e9bkyEPKwQSa5D8Ts?=
 =?iso-8859-1?Q?e1Ybg/PLoEWrqWG80ECeBmp/c3wAhcKDL6IJFR2K8+i7YoUV0pUamB8+cc?=
 =?iso-8859-1?Q?d6zCiQHVfqDoewmhLCJ8maXt58sqJr/pzYr94D9DER/EDgNM2KCqm39ZHR?=
 =?iso-8859-1?Q?sqoj057yXgkLDZCfNNLO9bxGNoisRLJNisCppjd1QJ7cBYpt/ILWLFMVf2?=
 =?iso-8859-1?Q?O2schqKf7awTy3FsYjYOoMDofhQlcn8ELSleHqbcAypM+5QmRj8G4BBQOt?=
 =?iso-8859-1?Q?eBkUSBes4AmAWQqCo2hJbOhjh+TMSjT06aLaFMMUZHHHi3NVbZS2GohtdQ?=
 =?iso-8859-1?Q?u9xkqxEtcbZcpsKalae6fHkbOhsgkYvCeM6aF7zhFo/U1/7Qk1Jk5mfwOl?=
 =?iso-8859-1?Q?81pUf7B3hb8KV+hxd3IL661M8IsOLW+ZY2yh8rmy7qJSHeMQ0wbmINkD77?=
 =?iso-8859-1?Q?sa+DyJiS4GkUaE2HxkzSOemXEiTl7kxiXoVZ01+6R/uKNotWxTE0bL50q4?=
 =?iso-8859-1?Q?ww8ZCIelHmxu03fTJy3JyYMAtZIWJ88GwC?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700021)(8096899003)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?mrFPh64q9fTzXNwSzUCoQ2JL8YB9UAGS9sHTJRBkklym/kOUHaxrIL0mHa?=
 =?iso-8859-1?Q?DBbuYeTWAxRXb3ZHRBaRLwTFY3wvjwKjt69QhShQH9BqEpEi11Fm/rAj2+?=
 =?iso-8859-1?Q?0/JG2vAIs13tiYklVx/A+CVQK4dl+3A9AnP6NV8PLHOM/A3wwxbtgKButE?=
 =?iso-8859-1?Q?NbfCcQbiFBQ/kChicI/CX31RZ/No0thxKwH8gx9a4Xw2/7DuGY9z3Di26r?=
 =?iso-8859-1?Q?qL6aMoxPI9My9xiOaNnwW/WY4Gof7gRn+TT5HuCYhgPghZx/2s/FfQ8mye?=
 =?iso-8859-1?Q?Ek7/vk8AOX3P2mvhu5Y1PN8+bsU7qiRPCZ+o2kf0yOyoNf2HPBUIvAP+gD?=
 =?iso-8859-1?Q?DnQk8k/Qb6sZTqffvE5WywHlHGBG3E7TSmggctKnPxQ7GfSwNAXmprjeve?=
 =?iso-8859-1?Q?bRijBO64y4m0LYYymuxhuG13eUnwPEqhSpMEC212SQToa2Kjgwt/sLFREY?=
 =?iso-8859-1?Q?WkvbuTmvS7rj8Q5u9DAt4i/kMD1T90H14zw7iSo7jK7bhsupQ1FGj1tc9W?=
 =?iso-8859-1?Q?FKWaSfvVh55std0icBZzsmxVZ0tfSzw96s3Z33Wv0njytPplXZKbCCD10Q?=
 =?iso-8859-1?Q?aYGuku81++K1dn/PxFpPuORKtuZzFw8nUMhi83MOlhE5HUxJIXgiikzLLI?=
 =?iso-8859-1?Q?zpCHBdIyP14vskrTzHEiaSVVdwjUoT75nhqVe9vNxLakGFWtfh39/fFpzu?=
 =?iso-8859-1?Q?CCwBCSbzdniLXVRIXX+GTfx0C9I9pP0hNq5UU5vGb4bu3fRlheacV7a48N?=
 =?iso-8859-1?Q?JvlsTfuBIL46OSvYKktuFFlGK3y/vXp+2O+kuWfTikHepxUQRtcoYhX89+?=
 =?iso-8859-1?Q?AUCKv4KXr+3R9BFeUIcvNOuCKl0kEJzSVHuiwBo0B/hn0ouUMW42rwWD5H?=
 =?iso-8859-1?Q?E3gJg1h4KbaA0L9nS0m+bUPfVLV9BkqUbIwhaEIQWPYJm9Y8pupp95Op92?=
 =?iso-8859-1?Q?xz7ZEvowrUocp9fvBY97q4+hQzBB9SftqA5f15EiVzjzyPqAnQ1dEL2c8j?=
 =?iso-8859-1?Q?mxFf0C4jcSw0NBjPJSGVPYdR7AUbUJpKPQ/Dffq/21D1EfNmYr3jw+FBF4?=
 =?iso-8859-1?Q?xYIDocwEpx+HoH5Q0ESviHTZAt893Ke0ZLXdT3oS9jGq05gt4DhxXdNFqT?=
 =?iso-8859-1?Q?6r7j90e6Jp9ulXpBOq5hFQacLE24AJ0m2e35lxRqH3gpcKx9msYCDnlWoz?=
 =?iso-8859-1?Q?XEQc+SICg+aGUDF8F2gUGt7+tmtTnSSf6qwfLzvlMPKaG/PGBYI6AC8J1e?=
 =?iso-8859-1?Q?N/Slj1DbvhEhybGV3vnDvnjPiQCSBOXRoQkxC0tNRAlMdTK080ML4nNfHk?=
 =?iso-8859-1?Q?vfcNSjJGTrMzRn8Ge0+uHLpsCPjMC+CCbc5H045J5vVyx0Jko6Amb/BZJQ?=
 =?iso-8859-1?Q?78ZYQGonyqOMlkTY9V0RKcnI5uJoUS6yBwsEWxEJr6wjrxa/24PB+ZYJgJ?=
 =?iso-8859-1?Q?IrZpWE0i/6T/lBapRieTTXEO7GMnV8YM+ocjRJgDuhcnyL3kdDmLVAzZFE?=
 =?iso-8859-1?Q?nUc7sfWgLrZblKBYbJMFqp7I36sJusjfNUBm2NYd5o9t5VHTuyrUQc1xF0?=
 =?iso-8859-1?Q?r/1V7E9DBMEt0b6Q1/WaZaJ+hDM/JIkMvzCKNckCXyaX7OeiVaSgFv0VcC?=
 =?iso-8859-1?Q?C2lZ/XV+9J82C2+oUKfjrbyREMQ0isaLep4OqPiomQKI9xfIQ/IzR8Yqxa?=
 =?iso-8859-1?Q?B6/v2lNRPyvUqOoYgD84a5zVRD/D2YrrdN2SgddyY5CGElE6PvzYqa5Oh5?=
 =?iso-8859-1?Q?V8A0MMWrkbn0h3fPgRqLuwc3D86m6gZ+RFpmbCwRnvODKSaE6uQsvX/p5B?=
 =?iso-8859-1?Q?YUNEuh396K2ILvkLA1v6GiRxA9TWICh8IBWO121CFnpl8pHRP9iJeyTivi?=
 =?iso-8859-1?Q?R+?=
x-ms-exchange-antispam-messagedata-1: dw6z167MaRga3g==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797B987D5F7D6B03DBACE5EB996ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: add5375f-786b-4a6e-9f0c-08de58d43a60
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 10:02:46.8696
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZZ724DxveCKdcPzV7472sFpJbXTQYekGYPwajor4Tu4Uy2ueAUlUbwCOZI8ollLxOG6b1wd2BU9EnJ7nLQRLrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9015
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 10:03:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66165

--_000_BL4PR11MB8797B987D5F7D6B03DBACE5EB996ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.15 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983ac=
391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebceb=
45edc7a8f0f6d5f4fe715c.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--------------------------
yocto-5.0.15 Release Notes
--------------------------

Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have seen obt=
use failures in the execution of tar in various tasks after recent host dis=
tro updates. These newer versions of tar contain a CVE fix
which uses a new glibc call/syscall (openat2). The fix is to update to a ne=
wer pseudo version which handles this syscall. This is not included in this=
 stable release but we aim to include it in the next one.

--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518
Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518
sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c099
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yocto-docs-d=
84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d916d4fc5=
05e8386693306b6a90b0064c0518.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c
Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c
sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4edd
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983ac=
391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebceb=
45edc7a8f0f6d5f4fe715c.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1
Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1
sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f819
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oecore-69881=
57ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157ad983978f=
fd6b12bcefedd4deaffdbbd1.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815
Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815
sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc19
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yocto-e=
1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e1363aa3333c=
da3a4ae4706ce6577b987ba3a815.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.15
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-mingw-bd9fef71ec00=
5be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.15
Git Revision: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
Release Artefact: bitbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a
sha: 766eda21f2a914276d2723b1d8248be11507f954aef8fc5bb1767f3cb65688dd
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/bitbake-8dcf=
084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/bitbake-8dcf084522b9c66=
a6639b5f117f554fde9b6b45a.tar.bz2


---------------
 Contributors
---------------

Thanks to the following people who contributed to this release:

Adarsh Jagadish Kamini
Aleksandar Nikolic
Alexander Kanavin
Benjamin Robin (Schneider Electric)
Changqing Li
Daniel Turull
Deepak Rathore
Deepesh Varatharajan
Enrico J=F6rns
Gyorgy Sarvari
Hitendra Prajapati
Hongxu Jia
Hugo SIMELIERE
Jiaying Song
Kai Kang
Kamel Bouhara (Schneider Electric)
Lee Chee Yang
Martin Jansa
Mingli Yu
Moritz Haase
Osama Abdelkader
Ovidiu Panait
Peter Marko
Praveen Kumar
Quentin Schulz
Robert P. J. Day
Ross Burton
Steve Sakoman
Vijay Anusuri
Walter Werner SCHNEIDER
Yash Shinde
Yogita Urade

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-11494 CVE-2025-11839 CVE-2025-11840
cmake-native: Fix CVE-2025-9301
cups: Fix CVE-2025-58436 CVE-2025-61915
gnutls: Fix CVE-2025-9820
go: Fix CVE-2025-61727 CVE-2025-61729
go: Update CVE-2025-58187 patches
grub: Fix CVE-2025-54770 CVE-2025-61661 CVE-2025-61662 CVE-2025-61663 CVE-2=
025-61664
libarchive: Fix CVE-2025-60753
libarchive: Fix 2 security issue (https://github.com/libarchive/libarchive/=
pull/2753 and  https://github.com/libarchive/libarchive/pull/2768)
libmicrohttpd: Ignore CVE-2025-59777 CVE-2025-62689 by disable experimental=
 code
libpng: Fix CVE-2025-64505 CVE-2025-64506 CVE-2025-64720 CVE-2025-65018 CVE=
-2025-66293
libsoup: Fix CVE-2025-12105
libssh2: Fix CVE-2023-48795
libxml2: Fix CVE-2025-7425
libxslt: Fix CVE-2025-11731
musl: Fix CVE-2025-26519
python3-urllib3: Fix CVE-2025-66418 CVE-2025-66471
python3: Fix CVE-2025-6075
qemu: Fix CVE-2025-12464
rsync: Fix CVE-2025-10158
ruby: Fix CVE-2025-24294 CVE-2025-25186 CVE-2025-61594
sqlite3: Fix CVE-2025-7709
xserver-xorg: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231
xwayland: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231


---------------
Fixes/Feature Changes
---------------
build-appliance-image: Update to scarthgap head revision
classes/create-spdx-2.2: Define SPDX_VERSION to 2.2
cml1.bbclass: use consistent make flags for menuconfig
cross.bbclass: Propagate dependencies to outhash
curl: Ensure 'CURL_CA_BUNDLE' from host env is indeed respected
curl: Use host CA bundle by default for native(sdk) builds
cve-check: extract extending CVE_STATUS to library function
dev-manual/layers.rst: document "bitbake-layers show-machines"
dev-manual/new-recipe.rst: replace 'bitbake -e' with 'bitbake-getvar'
dev-manual/new-recipe.rst: typo, "whith" -> "which"
dev-manual/new-recipe.rst: update "recipetool -h" output
dev-manual/sbom.rst: reflect that create-spdx is enabled by default
dev-manual: debugging: use bitbake-getvar in Viewing Variable Values sectio=
n
documentation: link to the Releases page on yoctoproject.org instead of wik=
i
glslang: fix compiling with gcc15
go: add sdk test
go: extend runtime test
go: remove duplicate arch map in sdk test
goarch.bbclass: do not leak TUNE_FEATURES into crosssdk task signatures
kernel-dev: add disable config example
kernel-dev: common: migrate bitbake -e to bitbake-getvar
kernel.bbclass: Add task to export kernel configuration to SPDX
libssh2: fix regression in KEX method validation (GH-1553)
libssh2: upgrade to 1.11.1
migration-guides: add release notes for 4.0.31 and 5.0.13
oe/sdk: fix empty SDK manifests
oeqa/sdk/buildepoxy: skip test in eSDK
oeqa/selftest: oe-selftest: Add SPDX tests for kernel config and PACKAGECON=
FIG
oeqa: drop unnecessary dependency from go runtime tests
oeqa: fix package detection in go sdk tests
overview-manual: migrate to SVG + fix typo
poky.conf: bump version for 5.0.15
ref-manual: variables: migrate the OVERRIDES note to bitbake-getvar
ruby: Upgrade to 3.3.10
rust-target-config: fix nativesdk-libstd-rs build with baremetal
scripts/install-buildtools: Update to 5.0.14
spdx30: Provide software_packageUrl field in SPDX 3.0 SBOM
spdx30: fix cve status for patch files in VEX
spdx30: provide all CVE_STATUS, not only Patched status
spdx30_tasks: Add support for exporting PACKAGECONFIG to SPDX
spdx: Revert "spdx: Update for bitbake changes"
spdx: extend CVE_STATUS variables
testsdk: allow user to specify which tests to run
vex.bbclass: add a new class
vex: fix rootfs manifest
xserver-xorg: remove redundant patch





--_000_BL4PR11MB8797B987D5F7D6B03DBACE5EB996ABL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi&nbsp;<br>
<br>
We are pleased to announce the Yocto Project 5.0.15 Release is now availabl=
e for download.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a id=3D"anchor-57774d4f-b677-b841-b1dd-9dfc8e00b2f9" href=3D"https://downl=
oads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983ac391008ebceb45=
edc7a8f0f6d5f4fe715c.tar.bz2">https://downloads.yoctoproject.org/releases/y=
octo/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2</a>=
&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a id=3D"anchor-817928c9-4311-d0a0-ee95-dd1bc63bd8b2" href=3D"https://mirro=
rs.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d=
5f4fe715c.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky=
-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2</a>&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
A gpg signed version of these release notes is available at:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a id=3D"anchor-689ef0b6-4dab-d744-c887-4be34bcd890a" href=3D"https://downl=
oads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEASENOTES">https://dow=
nloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEASENOTES</a>&nbsp;<=
/div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Full Test Report:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a id=3D"anchor-6b272b1e-3f88-f5a3-d9d2-dd700e907ea9" href=3D"https://downl=
oads.yoctoproject.org/releases/yocto/yocto-5.0.15/testreport.txt">https://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.0.15/testreport.txt</a>&nb=
sp;<br>
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thank you for everyone's contributions to this release.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Chee Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
chee.yang.lee@intel.com</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Yocto Project Build and Release<br>
<br>
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
yocto-5.0.15 Release Notes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have seen obt=
use failures in the execution of tar in various tasks after recent host dis=
tro updates. These newer versions of tar contain a CVE fix<br>
which uses a new glibc call/syscall (openat2). The fix is to update to a ne=
wer pseudo version which handles this syscall. This is not included in this=
 stable release but we aim to include it in the next one.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Repositories/Downloads</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: yocto-docs</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/yocto-docs</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.15</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c099</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yocto-docs-d=
84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d916d4fc5=
05e8386693306b6a90b0064c0518.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: poky</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/poky</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.15</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4edd</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983ac=
391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebceb=
45edc7a8f0f6d5f4fe715c.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: openembedded-core</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.openembedded.org/openembedded-core</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.15</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f819</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oecore-69881=
57ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157ad983978f=
fd6b12bcefedd4deaffdbbd1.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-yocto</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-yocto</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.15</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc19</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yocto-e=
1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e1363aa3333c=
da3a4ae4706ce6577b987ba3a815.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-mingw</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-mingw</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.15</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-mingw-bd9fef71ec00=
5be3c3a6d7f8b99d8116daf70c4f.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: bitbake</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.openembedded.org/bitbake</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: 2.8</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.15</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 8dcf084522b9c66a6639b5f117f554fde9b6b45a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: bitbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 766eda21f2a914276d2723b1d8248be11507f954aef8fc5bb1767f3cb65688dd</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/bitbake-8dcf=
084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/bitbake-8dcf084522b9c66=
a6639b5f117f554fde9b6b45a.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Contributors</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thanks to the following people who contributed to this release:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Adarsh Jagadish Kamini</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Aleksandar Nikolic</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Alexander Kanavin</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Benjamin Robin (Schneider Electric)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Changqing Li</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Daniel Turull</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Deepak Rathore</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Deepesh Varatharajan</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Enrico J=F6rns</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Gyorgy Sarvari</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hitendra Prajapati</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hongxu Jia</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hugo SIMELIERE</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Jiaying Song</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Kai Kang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Kamel Bouhara (Schneider Electric)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Lee Chee Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Martin Jansa</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Mingli Yu</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Moritz Haase</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Osama Abdelkader</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Ovidiu Panait</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Peter Marko</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Praveen Kumar</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Quentin Schulz</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Robert P. J. Day</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Ross Burton</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Steve Sakoman</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Vijay Anusuri</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Walter Werner SCHNEIDER</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Yash Shinde</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Yogita Urade</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Known Issues</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
N/A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Security Fixes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
binutils: Fix CVE-2025-11494 CVE-2025-11839 CVE-2025-11840</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
cmake-native: Fix CVE-2025-9301</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
cups: Fix CVE-2025-58436 CVE-2025-61915</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
gnutls: Fix CVE-2025-9820</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
go: Fix CVE-2025-61727 CVE-2025-61729</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
go: Update CVE-2025-58187 patches</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
grub: Fix CVE-2025-54770 CVE-2025-61661 CVE-2025-61662 CVE-2025-61663 CVE-2=
025-61664</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libarchive: Fix CVE-2025-60753</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libarchive: Fix 2 security issue (https://github.com/libarchive/libarchive/=
pull/2753 and &nbsp;https://github.com/libarchive/libarchive/pull/2768)&nbs=
p;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libmicrohttpd: Ignore CVE-2025-59777 CVE-2025-62689 by disable experimental=
 code</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libpng: Fix CVE-2025-64505 CVE-2025-64506 CVE-2025-64720 CVE-2025-65018 CVE=
-2025-66293</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libsoup: Fix CVE-2025-12105</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libssh2: Fix CVE-2023-48795</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libxml2: Fix CVE-2025-7425</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libxslt: Fix CVE-2025-11731</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
musl: Fix CVE-2025-26519</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
python3-urllib3: Fix CVE-2025-66418 CVE-2025-66471</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
python3: Fix CVE-2025-6075</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
qemu: Fix CVE-2025-12464</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
rsync: Fix CVE-2025-10158</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ruby: Fix CVE-2025-24294 CVE-2025-25186 CVE-2025-61594</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sqlite3: Fix CVE-2025-7709</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
xserver-xorg: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
xwayland: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Fixes/Feature Changes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
build-appliance-image: Update to scarthgap head revision</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
classes/create-spdx-2.2: Define SPDX_VERSION to 2.2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
cml1.bbclass: use consistent make flags for menuconfig</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
cross.bbclass: Propagate dependencies to outhash</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
curl: Ensure 'CURL_CA_BUNDLE' from host env is indeed respected</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
curl: Use host CA bundle by default for native(sdk) builds</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
cve-check: extract extending CVE_STATUS to library function</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/layers.rst: document &quot;bitbake-layers show-machines&quot;</d=
iv>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/new-recipe.rst: replace 'bitbake -e' with 'bitbake-getvar'</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/new-recipe.rst: typo, &quot;whith&quot; -&gt; &quot;which&quot;<=
/div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/new-recipe.rst: update &quot;recipetool -h&quot; output</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/sbom.rst: reflect that create-spdx is enabled by default</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual: debugging: use bitbake-getvar in Viewing Variable Values sectio=
n</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
documentation: link to the Releases page on yoctoproject.org instead of wik=
i</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
glslang: fix compiling with gcc15</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
go: add sdk test</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
go: extend runtime test</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
go: remove duplicate arch map in sdk test</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
goarch.bbclass: do not leak TUNE_FEATURES into crosssdk task signatures</di=
v>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
kernel-dev: add disable config example</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
kernel-dev: common: migrate bitbake -e to bitbake-getvar</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
kernel.bbclass: Add task to export kernel configuration to SPDX</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libssh2: fix regression in KEX method validation (GH-1553)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libssh2: upgrade to 1.11.1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
migration-guides: add release notes for 4.0.31 and 5.0.13</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
oe/sdk: fix empty SDK manifests</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
oeqa/sdk/buildepoxy: skip test in eSDK</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
oeqa/selftest: oe-selftest: Add SPDX tests for kernel config and PACKAGECON=
FIG</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
oeqa: drop unnecessary dependency from go runtime tests</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
oeqa: fix package detection in go sdk tests</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
overview-manual: migrate to SVG + fix typo</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
poky.conf: bump version for 5.0.15</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual: variables: migrate the OVERRIDES note to bitbake-getvar</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ruby: Upgrade to 3.3.10</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
rust-target-config: fix nativesdk-libstd-rs build with baremetal</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
scripts/install-buildtools: Update to 5.0.14</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
spdx30: Provide software_packageUrl field in SPDX 3.0 SBOM</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
spdx30: fix cve status for patch files in VEX</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
spdx30: provide all CVE_STATUS, not only Patched status</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
spdx30_tasks: Add support for exporting PACKAGECONFIG to SPDX</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
spdx: Revert &quot;spdx: Update for bitbake changes&quot;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
spdx: extend CVE_STATUS variables</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
testsdk: allow user to specify which tests to run</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
vex.bbclass: add a new class</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
vex: fix rootfs manifest</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
xserver-xorg: remove redundant patch</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
<br>
<br>
</div>
</body>
</html>

--_000_BL4PR11MB8797B987D5F7D6B03DBACE5EB996ABL4PR11MB8797namp_--

