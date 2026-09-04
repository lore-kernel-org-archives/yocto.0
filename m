Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DED70C624D3
	for <webhook@archiver.kernel.org>; Fri,  4 Sep 2026 10:10:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10642.1788516624959227910
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Sep 2026 03:10:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=DOwXNlz0;
 spf=pass (domain: intel.com, ip: 198.175.65.15, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1788516625; x=1820052625;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=OPsSxOVRJ7dvJU9TkpnYufV9qlytpeuoG5+stZtVKYQ=;
  b=DOwXNlz02OuJ2Z2wetwUg5zcNZ3gRqF6sKDCScHFqnCiJkMLKU9mOf7G
   BIo3nEhlmdEnIH004Y7xRTjByNhcZkOSdfw8xheBkqtSXcwKc6QdskAIA
   1BNWGLAeyT3H12QEqgZxhgnWbpN5ALa4xJepMkcilmmDMI7ldqV+K4wI1
   mCSjS5bIyvc7k7TMBuBZ2WHOOUMb5Ak8rUBS+uAngEICIWfPUuLT1Tmfw
   EHfQWuYVgk04kqgAXaZ5xrR08+JFg3xxUBdHQ5cy7dzTFic1ljADdFHOC
   A0WzfucBhpqhj5d7XTSZNOTR6ZvJxLDSr4ksX2AWRe4D+fc4RGQqWClhd
   w==;
X-CSE-ConnectionGUID: YeEV5TWGS5ST//PdT6k6gA==
X-CSE-MsgGUID: tV+SL05nRfK0wwqszA42rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11895"; a="92713055"
X-IronPort-AV: E=Sophos;i="6.25,260,1779174000"; 
   d="scan'208";a="92713055"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2026 03:10:24 -0700
X-CSE-ConnectionGUID: E6bCS0oDREOkVmuy3K/XiA==
X-CSE-MsgGUID: HYCJ5+DrTNeXymoLAEtAuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,260,1779174000"; 
   d="scan'208";a="266743867"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2026 03:10:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46; Fri, 4 Sep 2026 03:10:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46 via Frontend Transport; Fri, 4 Sep 2026 03:10:23 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46; Fri, 4 Sep 2026 03:10:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e2GEA9HRQzW96Zhb1b+rf7FVhPE2GScgBLJiOeQj+kH6z/ijqA90U5ETbaJyfeyx/4Xty/9lOLlz3rkYB+FZsR6+HlDx4op1IDRpZthpGJ29WnOLEyFsGkNqTcvnSaU64kSgz0dCuuphXB09esf7evP67HbFck7CAterB+/7p5brEsY2Zck8sp+Dzl8dI2cLsJJKmnYg214EVkVxP57upiuTxwg1DTBEtG8QWuuJupcRyh7pqWQIvQIo+Dv9JojkoSnSLaXTmOI5g630pn6yhKCBC7x1q+rUgdsyCeDaqdjuQIY2eOhG4T4qKSpNKZ4Z/Hry+YldY7+cHVcsiJ1lmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OPsSxOVRJ7dvJU9TkpnYufV9qlytpeuoG5+stZtVKYQ=;
 b=LqfUfI2c3CkzOafbmzmjEY50wZ3/rNaWasUhhI33lY17WGsOUMabh26lK1bx/BxaiwnGaeuUIZgRpVKrGp5mW8sz7F2vMmDB8jA4Fi6EIMqb8/aCanGDHhi9aGOelVPr6LaBPaXiox1R0ht+RrXAEiFr4H7aTjCl/xod4lQOg35SrKXDgNsDevnoHe7J9+VlHH6TzPMAl53qF2OO1trO6yJi13bz0v9TvmeGXmL430Oroq+f9Pzs0gbSraTYOSdEANMaIFC+gsl75Cq7P8kV0U6Sl9gmlLszhP19ym1LtJCE+OrTuYdwK3Yq5MZ5e+kfFEf54sV2vPJb/sVGH5banA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by CO1PR11MB4770.namprd11.prod.outlook.com (2603:10b6:303:94::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Fri, 4 Sep
 2026 10:10:21 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.21.0360.008; Fri, 4 Sep 2026
 10:10:20 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 6.0.3(wrynose-6.0.3) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 6.0.3(wrynose-6.0.3) is Released
Thread-Index: AQHdPFNPD8B7Z8taF0aTa35kVeqJxA==
Date: Fri, 4 Sep 2026 10:10:20 +0000
Message-ID: <BL4PR11MB87978F9C8CAE7D9F60563AD9B9B52@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|CO1PR11MB4770:EE_
x-ms-office365-filtering-correlation-id: 9a97c720-1cd3-4f14-1f86-08df0a6cba4e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|23010399003|366016|38070700021|6133799003|3023799007|10067099003|56012099006|18002099003|11063799006|5023799004;
x-microsoft-antispam-message-info: Ykh3ddz+Gn/vHUD1jLUoE9t6Mnl4qbXfyG0MO/8yIXHMGtzaahzIP/AQgNmCJ9ZUy/qDe3ekGfnMjC3eHIK/LwaMwSfdEbFM+3HT8yOBhj9kPtbn5Sgu326C7HTPz+mJ92locgd76U90cFAAmP44xMBvwWoANP4nmQ9LsGCHtGC7oeES1ZK/tEXHyEKG58yU49i06z7XJ9e9oz8OsiJYjP+0wi5TFXl/STdxqkDuVnKHqIF4J4FgTxiP39zpDkos4G/LH+vMPH/5FHYe60xP50Z/k5QtoOjYcQqPRd6zoOLSK+G+Fwi1eXnYNK6+nKMllUuaHxY4w7jyPFPUTLIQ970A/uBgdgdjIpydYh/dnYcsqIpCUCe+gdGXALVC07KvCfdgQM61wTCJHVpt2kbZAh0/WZMPyt1m+uYzxXeWCRzYtexO9YLTBxRtgNOuCyYOCqoEE5nh3owhJnS4/wgwQ383XkPdjllf59O+pdJGnDqwQiG6c7A5J+uOpjLSO2ItnHGjMDYFd7xH5uOlQGy0yMVZiJcjEA7T6ThZ8lenz5fv+Embj2Tbb4qEsVOM7X1TpO9Z/Y7Ogff/TtrO/cVqwWhrKsLxUIf4s5ynH4bztDogaXR9qKhkrEBbCa7PON+rWGwy4iq4zBIscq+fu+1MbzqshsYaGSFr4tWel0cKEns=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(23010399003)(366016)(38070700021)(6133799003)(3023799007)(10067099003)(56012099006)(18002099003)(11063799006)(5023799004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?DKNv2GW2unAfFeJ/UTNo36E700VGxqvuiCg8Nl/EaQtRgJIEDthGudCuLD?=
 =?iso-8859-1?Q?xw45sKUAJwgCFfCDKarWbgfELYpUIBIK9Vy0v7ojc80dlXxCCuTBf2fT2K?=
 =?iso-8859-1?Q?GYxTCJZmO/jLSEEQwMeBxIqmj/9Kg9erIj4rxqAm4xej/U31k7Qs44toR4?=
 =?iso-8859-1?Q?vgkD98NoWUTSuf6i1ozukMewS7Wo8S7qPzSK2Gq3K7j9wKlSg0NAoFp5LO?=
 =?iso-8859-1?Q?pku318+iHv5V6VTmiFEESNw4UteilwqjZZhbltTTmmZeGiVp9IhjO7/yfr?=
 =?iso-8859-1?Q?/rnBcB21nemiIuDhTlJQfVsuJczOz8mR7WlWH6krhycWdsIZZTxte0TTz2?=
 =?iso-8859-1?Q?B76RXXbOPl+HNugkPjN5Lropa6Bh+E8Krg2wFz3oJc2QisM3uzolhlSNAz?=
 =?iso-8859-1?Q?wCWp7bj1Oz/Bf3shmtCcO6Jfgongtm/s9E9umnBRZk91IXRai6Xia9JCep?=
 =?iso-8859-1?Q?mTiRg8XcVd6Lc/WwGDTXj0ynR/2A9iJ6tiUIHb9z7CLC7pLxLmcGxz2xcO?=
 =?iso-8859-1?Q?z6O2CIfK9FMli0RX7KsnXndwtZY8LWk0t4rXVP4YECOaSoa6Zy2f8Q3zFT?=
 =?iso-8859-1?Q?EREfLAzDafIj0y4Nia6F35137lu592Su5eGgvAlx2xaFrOtv2kqD1bircz?=
 =?iso-8859-1?Q?fkjkZuKGinXbsgZApf/J9tbctL4zynvAKEaRc9H0RrOYjCJiuaGrXagZJd?=
 =?iso-8859-1?Q?EHor2QABz4s1XMziSSiBzpFBsAFb4lr2UEnKLZzPOZH9qp+sgedxvZz11t?=
 =?iso-8859-1?Q?oyQBDlyEbcOwmzZO0Htmi7BPzy3htRVhZ4aG8lcZMTwbuc9p1kHScx/vk7?=
 =?iso-8859-1?Q?/8V8KSmvlh3k8+NOuRlLhF+S9znwuTeAVOCIDKpn1xeaKd6NF29AUq3qTj?=
 =?iso-8859-1?Q?i93of4v+XfMsfDDOoWqmNjWnVatJrJl7iPDqY1gUczodTxfaJiiwh6Qiiz?=
 =?iso-8859-1?Q?PPqI2qQB8fve68uK5JrLiQc1cALSJevse9IRgHyg0MsiIRa7caRlCSrCAB?=
 =?iso-8859-1?Q?P2QeV1/BNqA0LZCop5JHxxKx++k+MstuTU3aGl7S/vYVo4FPNyVCRcfM+C?=
 =?iso-8859-1?Q?0nVye7/C8Gl17ESLbW1zH2Fx9dGjRyJXkvGFZolh7znBZWYu4G4yYg4jdP?=
 =?iso-8859-1?Q?1l4ColKeKnRanVh6sBwWEuyT6H41p2P8lpbghwFC7bmySsh/XnmzYybhsV?=
 =?iso-8859-1?Q?Qw6OBS8XA8McGqs7uAxfYvnufNBPM/N/tGOwkCT5rkXpIYIG4DgFCr1Ojg?=
 =?iso-8859-1?Q?JHXEbDQTQ0pSSKnJkLVbXrG69TSE9hcrsNxeLSKkCcqFa7jvHk86tJGR0M?=
 =?iso-8859-1?Q?KrAr81tX68u7uZH1eb340ws/414B++sRXc9TxUOcdiwRV88AIXnDIkdaKC?=
 =?iso-8859-1?Q?r8AWindEpkQWYcQ6Y6NIAxksP0xdixY2q7kU9c5R2wxvbaLQQh/d72i+cb?=
 =?iso-8859-1?Q?Xxnz4GK54eFfOovSODMQAftC2UwNmU9KYNpI4aaQ0WsTKlSgSOD+84qls6?=
 =?iso-8859-1?Q?9sMK4FDCRRBslOm+2q53o4KU8jBReUQDDiHE+mwWe8j2RS7xVAv6SyF1LX?=
 =?iso-8859-1?Q?kHJq+gnrK5Dpevw5WonPq24v7UyJuJNt7vcrsfV7KSMxqFleemfNdGS1Gk?=
 =?iso-8859-1?Q?qwTObqnAcRkVhDYcroCkO6GSif7T5HGVLGKDAfPGlskOBZ6zHpngIhHqeV?=
 =?iso-8859-1?Q?vljPsk0YfxsThYhy9N04AFgrrmdixMSeyemgW8FnHKQPPfYaSpUuUc3xio?=
 =?iso-8859-1?Q?mz7sCcPet013WNNzcjl+d4Q4Gg0f/NmsVgra1zWagp4SzIydxsB0HT0/Id?=
 =?iso-8859-1?Q?9U7cUSBSZKa0tp69uLGhNg+rIJ9R8UHplRCNFzk+O8NRFLW+xYF7cw35/1?=
 =?iso-8859-1?Q?ii?=
x-ms-exchange-antispam-messagedata-1: Dujz3EqnNXhehQ==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: t/zr/XbRCkj3BEhPoa5s+2MQPP4XFo4vgJT4bGvFFFM4mfZ1qPz5nMeiX05hHdD/Uc9F1KkkwpkQfDTjWt2IipDpJwWXC+rEZIQnIeSPKzO7m9J1KCScIJTcjZK7hlCvdDkO6avTK69XJezVnm4TQuBSaAE+o2gBn6Ymlywkb1Q8dlpYV98KucKvivvqiMOj1tJ9JtWWqn+cysOWo50LjOj4U7YnQGTujcUnO5BwyTtAoZ0UBS3LcpT332+nVKEMIHKXbu2gganD2NJj1axoGBAq8JqW/ev6wtAcfFPmFGi4TW0qcB0KC7t57bBK0a5r1BEbiYrGNxJllQXLgcJgXg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a97c720-1cd3-4f14-1f86-08df0a6cba4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2026 10:10:20.8184
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S3I6UWdemnEmGgoJM4vZDQdHNKCEGhnnLRCgolz7gXUT+AbgnwKwyR27LVPnypxl5/FCXv4f2Lu694+4LaO7mQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4770
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Sep 2026 10:10:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66705

Hi =0A=
=0A=
We are pleased to announce the Yocto Project 6.0.3 Release is now available=
 for download.=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.3/=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.3/=0A=
=0A=
A gpg signed version of these release notes is available at:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.3/RELEASENOTES=
=0A=
=0A=
Full Test Report:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.3/testreport.tx=
t=0A=
=0A=
Thank you for everyone's contributions to this release.=0A=
=0A=
Chee Yang=0A=
chee.yang.lee@intel.com=0A=
Yocto Project Build and Release=0A=
=0A=
=0A=
=0A=
--------------------------=0A=
yocto-6.0.3 Release Notes=0A=
--------------------------=0A=
=0A=
=0A=
--------------------------=0A=
 Repositories/Downloads=0A=
--------------------------=0A=
=0A=
Repository Name: yocto-docs=0A=
Repository Location: https://git.yoctoproject.org/yocto-docs=0A=
Branch: wrynose=0A=
Tag: yocto-6.0.3=0A=
Git Revision: 5b1ff88511d90634bb3077b878176de577464e12=0A=
Release Artefact: yocto-docs-5b1ff88511d90634bb3077b878176de577464e12=0A=
sha: f686c225af0ef33d4607dc03f090c77b0963dc8f15d750c886004786f4297454=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.3/yocto-docs-5b=
1ff88511d90634bb3077b878176de577464e12.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.3/yocto-docs-5b1ff885=
11d90634bb3077b878176de577464e12.tar.bz2=0A=
=0A=
Repository Name: openembedded-core=0A=
Repository Location: https://git.openembedded.org/openembedded-core=0A=
Branch: wrynose=0A=
Tag: yocto-6.0.3=0A=
Git Revision: ef022bf82d79015802309d14c28b13373ebe53f5=0A=
Release Artefact: oecore-ef022bf82d79015802309d14c28b13373ebe53f5=0A=
sha: f43213e9e658cbf3d3c1fd1fe6b68e1a915eb5aec43a0b568387752a9948955e=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.3/oecore-ef022b=
f82d79015802309d14c28b13373ebe53f5.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.3/oecore-ef022bf82d79=
015802309d14c28b13373ebe53f5.tar.bz2=0A=
=0A=
Repository Name: meta-yocto=0A=
Repository Location: https://git.yoctoproject.org/meta-yocto=0A=
Branch: wrynose=0A=
Tag: yocto-6.0.3=0A=
Git Revision: 1b132647002eea43a2c7a7f857f63f42dacbc26c=0A=
Release Artefact: meta-yocto-1b132647002eea43a2c7a7f857f63f42dacbc26c=0A=
sha: 15fa3132056f68e0f4188193bea2ee28dada614ef432a1b2c306d8b1d8141888=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.3/meta-yocto-1b=
132647002eea43a2c7a7f857f63f42dacbc26c.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.3/meta-yocto-1b132647=
002eea43a2c7a7f857f63f42dacbc26c.tar.bz2=0A=
=0A=
Repository Name: bitbake=0A=
Repository Location: https://git.openembedded.org/bitbake=0A=
Branch: 2.18=0A=
Tag: yocto-6.0.3=0A=
Git Revision: fae9db3168dbff1b8c76fe9c6726a9687ff97514=0A=
Release Artefact: bitbake-fae9db3168dbff1b8c76fe9c6726a9687ff97514=0A=
sha: 3e338310f008dfb9e8e26a22f44fdf89aa72188acc549905a5cf70a7c4797310=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.3/bitbake-fae9d=
b3168dbff1b8c76fe9c6726a9687ff97514.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.3/bitbake-fae9db3168d=
bff1b8c76fe9c6726a9687ff97514.tar.bz2=0A=
=0A=
=0A=
---------------=0A=
 Contributors=0A=
---------------=0A=
=0A=
Thanks to the following people who contributed to this release:=0A=
=0A=
Adarsh Jagadish Kamini=0A=
Adrian Freihofer=0A=
Alexander Kanavin=0A=
Amaury Couderc=0A=
Anil Dongare=0A=
Anton Skorup=0A=
Antonin Godard=0A=
AshishKumar Mishra=0A=
Ashishkumar Parmar=0A=
Benjamin Robin (Schneider Electric)=0A=
Bruce Ashfield=0A=
Daniel Turull=0A=
Darsh Kelaiya=0A=
David Nystr=F6m=0A=
Deepak Rathore=0A=
Deepesh Varatharajan=0A=
Devansh Patel=0A=
Eil=EDs 'pidge' N=ED Fhlannag=E1in=0A=
Eric Meyers=0A=
Ernest Van Hoecke=0A=
Gustavo Henrique Nihei=0A=
Hiago De Franco=0A=
Himanshu Jadon=0A=
Hitendra Prajapati=0A=
Jaipaul Cheernam=0A=
Jinwang Li=0A=
Jo=E3o Marcos Costa=0A=
Khem Raj=0A=
Kris Gavvala=0A=
Lee Chee Yang=0A=
Leonid Iziumtsev=0A=
Marek Vasut=0A=
Mengshi Wu=0A=
Nate Kent=0A=
Niko Mauno=0A=
Otavio Salvador=0A=
Paul Barker=0A=
Peter Kjellerstedt=0A=
Peter Marko=0A=
Pritam Srichandan Sahoo=0A=
Richard Purdie=0A=
Robert P. J. Day=0A=
Roland Kovacs=0A=
Ross Burton=0A=
Ryan Eatmon=0A=
Sai Sneha=0A=
Shubham Pushpkar=0A=
Siddharth Doshi=0A=
Siva Balasubramanian=0A=
Sudhir Dumbhare=0A=
Theo Gaige (Schneider Electric)=0A=
Ulrich =D6lmann=0A=
Vijay Anusuri=0A=
Walter Werner Schneider=0A=
Wei Deng=0A=
Wei Gao=0A=
Wes Malone=0A=
Xiaozhan Li=0A=
Xiuzhuo Shang=0A=
Yoann Congal=0A=
jaekyu.lee=0A=
mark.yang=0A=
=0A=
---------------=0A=
 Known Issues=0A=
---------------=0A=
N/A=0A=
=0A=
=0A=
---------------=0A=
Security Fixes=0A=
---------------=0A=
=0A=
bind: Fix CVE-2026-11331 CVE-2026-11721 CVE-2026-13321 CVE-2026-10723 CVE-2=
026-12617 CVE-2026-10822 =0A=
binutils: Fix CVE-2026-6846=0A=
bzip2: Fix CVE-2026-42250=0A=
cargo: Fix CVE-2026-5222 CVE-2026-5223=0A=
cups: Fix CVE-2026-27447 CVE-2026-41079=0A=
curl: Fix CVE-2026-5545 CVE-2026-5773 CVE-2026-6253 CVE-2026-6429 CVE-2026-=
7168=0A=
curl: Ignore CVE-2026-10536 if nghttp2 not enabled=0A=
dhcpcd: Fix CVE-2026-56113 CVE-2026-56114 CVE-2026-56116 CVE-2026-56117=0A=
expat: Fix CVE-2026-41080 CVE-2026-45186 CVE-2026-56132 CVE-2026-56403 CVE-=
2026-56404 CVE-2026-56405 CVE-2026-56406 CVE-2026-56407 CVE-2026-56408 CVE-=
2026-56409 CVE-2026-56410 CVE-2026-56411=0A=
gawk: Fix CVE-2026-40467 CVE-2026-40468 CVE-2026-40469 CVE-2026-40553=0A=
glib-2.0: Fix CVE-2026-58010 CVE-2026-58011 CVE-2026-58012 CVE-2026-58013 C=
VE-2026-58014 and CVE-2026-58015 CVE-2026-58016=0A=
gnupg: Fix CVE-2026-57062=0A=
gnutls: Fix CVE-2026-3832 CVE-2026-3833 CVE-2026-42009 CVE-2026-33846 =0A=
go: Fix CVE-2026-39822 CVE-2026-42505=0A=
gstreamer1.0: Ignore CVE-2026-5056=0A=
gzip: Fix CVE-2026-41991 CVE-2026-41992=0A=
libcap: Fix CVE-2026-4878=0A=
libgcrypt: Fix CVE-2026-41989 CVE-2026-41990=0A=
libpng: Fix CVE-2026-34757=0A=
libpng: Ignore CVE-2026-40930=0A=
libsolv: Fix CVE-2026-9149=0A=
libssh2: Fix CVE-2025-15661 CVE-2026-55199 CVE-2026-55200=0A=
libxml2: Fix CVE-2026-11979=0A=
libxpm: Fix CVE-2026-4367=0A=
openssh: Fix CVE-2026-59995 CVE-2026-59996 CVE-2026-59997 CVE-2026-59999 CV=
E-2026-60000 CVE-2026-60001 CVE-2026-60002=0A=
openssh: Ignore CVE-2026-59998 if kerberos not enabled=0A=
openssh: Ignore CVE-2026-3497=0A=
perl: Fix CVE-2026-8376=0A=
python3: Fix CVE-2026-3276 CVE-2026-7210 CVE-2026-7774 CVE-2026-8328 CVE-20=
26-9669 CVE-2026-11940 CVE-2026-11972=0A=
python3-setuptools: Fix CVE-2026-59890=0A=
python3-urllib3: Fix CVE-2026-44431=0A=
qemu: Fix CVE-2025-14876 CVE-2026-0665 CVE-2026-2243=0A=
socat: Fix CVE-2026-56123=0A=
sqlite3: Fix CVE-2026-11822 and CVE-2026-11824=0A=
tar: Fix CVE-2026-5704=0A=
util-linux: Fix CVE-2026-13595 CVE-2026-27456=0A=
vim: CVE-2026-41411 CVE-2026-42307 CVE-2026-43961 CVE-2026-44656 CVE-2026-4=
5130 CVE-2026-46483 CVE-2026-47162 CVE-2026-47167 CVE-2026-52858 CVE-2026-5=
2859 CVE-2026-52860 CVE-2026-55892 CVE-2026-57452=0A=
=0A=
=0A=
---------------=0A=
Fixes=0A=
---------------=0A=
=0A=
bitbake=0A=
-----------=0A=
bitbake-setup: always write newline at end of the README=0A=
utils: Add NFS EEXISTS/isdir failure workaround=0A=
=0A=
oecore=0A=
-----------=0A=
baremetal-helloworld: Fix override order=0A=
bc: set CVE_PRODUCT=0A=
bind: upgrade to 9.20.26=0A=
bluez5: Fix sending extra bytes with MGMT_OP_ADD_EXT_ADV_DATA=0A=
bluez5: fix gatt cache sync issue=0A=
bluez5: fix set volume failure=0A=
bluez5: set L2CAP IMTU for OBEX profile listeners=0A=
build-appliance-image: Update to wrynose head revisions=0A=
clang/llvm: Upgrade to 22.1.8=0A=
cmake-native: prevent host libidn2 contamination=0A=
common-licenses/PHP-3.0: Correct the license text=0A=
cpan_build: disable .packlist and html doc=0A=
create-spdx-image-3.0: correct SSTATE_SKIP_CREATION key for do_create_image=
_sbom_spdx=0A=
devtool: provide explicit error for missing "script" command=0A=
dmidecode: fix x86-only tools being installed on ARM targets=0A=
dropbear: Add missing WTFPL & Unlicense in LICENSE and LIC_FILES_CHKSUM=0A=
flac: fix buildpaths with doxygen enabled=0A=
flac: make documentation build deterministic=0A=
gdb: Upgrade to 17.2=0A=
glib-2.0: upgrade to 2.88.2=0A=
go: upgrade to 1.26.5=0A=
i2c-tools: add LGPL-2.1-or-later license for libi2c=0A=
kernel-fit-image.bbclass: Do not include kernel property in DTBO config sub=
nodes=0A=
kernel-fit-image.bbclass: Fix operation with KERNEL_DTBVENDORED =3D "1"=0A=
kernel-fit-image: Add KERNEL_DTBVENDORED support for FIT_CONF_DEFAULT_DTB=
=0A=
libjitterentropy: fix license statement=0A=
libxpm: upgrade to 3.5.19=0A=
linux-yocto/6.18: drm/virtio: fix deadlock in display_info_cb by removing h=
otplug from dequeue worker=0A=
linux-yocto/6.18: qat/intel configuration warning fixes=0A=
linux-yocto/6.18: update to v6.18.39=0A=
nospdx: also drop do_create_recipe_sbom=0A=
oe-selftest: fitimage: Add tests for KERNEL_DTBVENDORED=0A=
oe-selftest: fitimage: Do not expect kernel property in DTBO config subnode=
s=0A=
opensbi: don't override ELFFLAGS, silence ldflags QA for bare-metal ELFs=0A=
ovmf: fix tpm PACKAGECONFIG to use TPM2_ENABLE=0A=
package.bbclass: hardcode emit_pkgdata to run last=0A=
ptest-packagelists.inc: disable glib-2.0 for RISCV64=0A=
python3: skiptest tracemalloc_track_race=0A=
python3: upgrade to 3.14.6=0A=
python3-certifi: set CVE_PRODUCT=0A=
python3-cryptography: set CVE_PRODUCT=0A=
python3-idna: set CVE_PRODUCT=0A=
python3-pip: set CVE_PRODUCT=0A=
python3-ply: set CVE_PRODUCT=0A=
python3-pyasn1: set CVE_PRODUCT=0A=
python3-pyopenssl: set CVE_PRODUCT=0A=
python3-pyyaml: set CVE_PRODUCT=0A=
python3-xmltodict: set CVE_PRODUCT=0A=
qemuboot.bbclass: add missing task dependency on kernel deploy=0A=
quota: use native rpcgen and a single-word RPCGEN_CPP=0A=
rootfs: move tasks using image_list_installed_packages to postuninstall=0A=
scripts/install-buildtools: Update to 6.0.2=0A=
selftest: uboot: remove duplicated KVM presence test=0A=
socat: upgrade to 1.8.1.3=0A=
sstate: Reduce native sysroot execution race potential=0A=
strace: remove skip-bpf.patch=0A=
sudo: fix pam-wheel sed for sudo 1.9.17p2 sudoers=0A=
systemd-systemctl-native: disable libpam meson option=0A=
tcl: disable the timer tests in run-ptest=0A=
texinfo: add missing perl module runtime dependencies=0A=
tzdata/tzcode-native: upgrade to 2026c=0A=
u-boot: re-enable RISC-V compressed (c) ISA extension=0A=
util-linux: upgrade to 2.41.5=0A=
vex: remove obsolete semicolon=0A=
wic: upgrade to 0.3.1=0A=
xmlto: correct srcrev to point to released version=0A=
xmlto: update SRC_URI=0A=
=0A=
meta-yocto=0A=
-----------=0A=
README: Add wrynose subject-prefix to git-send-email suggestion=0A=
b4-config: add send-prefixes for wrynose=0A=
poky.conf: Bump version for 6.0.3 release=0A=
yocto-bsps: update to v6.18.39=0A=
=0A=
yocto-docs=0A=
-----------=0A=
brief-yoctoprojectqs/index.rst: fix a replacement typo=0A=
brief-yoctoprojectqs/index.rst: refresh bitbake-setup outputs=0A=
brief-yoctoprojectqs/index.rst: use pip to install bitbake-setup=0A=
bsp-guide/bsp.rst: fix raspberry layer content example=0A=
contributor-guide: Note patch complexity requirements for stable branches=
=0A=
dev-manual/creating-fragments.rst: fix typos=0A=
dev-manual/wic.rst: add a requirement to use wic from the build system=0A=
dev-manual/wic.rst: add where to set IMAGE_FSTYPES/WKS_FILE[S] from=0A=
dev-manual/wic.rst: convert code snippet to code-blocks=0A=
dev-manual/wic.rst: remove bullet point on host requirements=0A=
dev-manual/wic.rst: remove note on wic-tools=0A=
dev-manual/wic.rst: replace deprecated wks directories=0A=
dev-manual: Fix missing whitespace around '=3D' operator=0A=
dev-manual: update bmaptool section, refer to "bmaptool" package=0A=
docs-wide: fix broken path links=0A=
docs-wide: fix various broken links=0A=
docs-wide: remove CROPS references=0A=
migration-guide: 5.1: Fix typo=0A=
migration-guide: add release notes for 5.0.19 and 6.0.2=0A=
migration-guides/migration-3.4.rst: replace rlbl broken link=0A=
migration-guides/migration-6.0.rst: fix wks file move note=0A=
migration-guides/release-notes-3.4.2.rst: fix a broken link=0A=
migration-guides/release-notes-5.0.rst: remove broken link=0A=
migration-guides: add add release notes for 6.0.1=0A=
migration-guides: replace broken link with archive links=0A=
recipe-style-guide: Clarify when License-Update tag is needed=0A=
ref-manual/classes.rst: replace deprecated wks directory=0A=
ref-manual/classes.rst: replace obsolete mailing list thread=0A=
ref-manual/images.rst: update obsolete VMWare links=0A=
ref-manual/kickstart.rst: document the include directive=0A=
ref-manual/kickstart.rst: remove note on available commands=0A=
ref-manual/kickstart.rst: replace deprecated wks directory=0A=
ref-manual/release-process.rst: update LTS supported versions=0A=
ref-manual/variables.rst: document missing CONFLICT_*_FEATURES variables=0A=
ref-manual/variables.rst: document the CCACHE_NATIVE_RECIPES_ALLOWED variab=
le=0A=
ref-manual/variables.rst: document the IMAGE_*_DEBUGFS variables=0A=
ref-manual/variables.rst: document the LOCALE_PATHS variable=0A=
ref-manual/variables.rst: document the LOCALE_UTF8_IS_DEFAULT variable=0A=
ref-manual/variables.rst: document the QB_DEFAULT_BIOS variable=0A=
ref-manual/variables.rst: document the TEST_SERIALCONTROL_CONNECT_TIMEOUT v=
ariable=0A=
ref-manual/variables.rst: document the TEST_SERIALCONTROL_PS1 variable=0A=
ref-manual: Fix occurrences of omitted space with :prepend=0A=
ref-manual: add "KERNEL_IMAGE_STRIP_EXTRA_SECTIONS" to variables=0A=
ref-manual: expand on kernel "do_sizecheck" task=0A=
ref-manual: fix incorrect heading level for site.conf section=0A=
ref-manual: remove all traces of "kernel_menuconfig" task=0A=
ref-manual: under meta/files entry, mention Wic files=0A=
=0A=
=0A=
=0A=

