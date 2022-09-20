Return-Path: <oobitots@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B0ACC54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 09:10:37 +0000 (UTC)
Received: from rcdn-iport-7.cisco.com (rcdn-iport-7.cisco.com [173.37.86.78])
 by mx.groups.io with SMTP id smtpd.web08.9577.1663665030919444840
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 02:10:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cisco.com header.s=iport header.b=HmxDjv9+;
 spf=pass (domain: cisco.com, ip: 173.37.86.78, mailfrom: oobitots@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=4169; q=dns/txt; s=iport;
  t=1663665031; x=1664874631;
  h=from:to:cc:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=fYNbR/K58b/y1podIOnOzoBnAQnMpl0Svz+bCfOLooY=;
  b=HmxDjv9+8U0UNXAbSF6jdAW6MnGYQg+7OuhLFXvDjPXORboiuSS2Izxk
   ut/3r3wMMZT1gZHkIsgvKN/IY0cKEy55Kh7gIZGr5ONSeYfmcic8gwy6R
   uX0zvT0YZW/zwnOKYwIQovBXituS8E5h7PQPzQjbf7e5bz/T6nzJQbjqO
   8=;
IronPort-PHdr: =?us-ascii?q?A9a23=3AHFaUoxe2jn9h59FXR3Xz29YklGM/tYqcDmcuA?=
 =?us-ascii?q?tIPh7FPd/Gl+JLvdAza6O52hVDEFYPc97pfiuXQvqyhPA5I4ZuIvH0YNpAZU?=
 =?us-ascii?q?RgDhJYamgU6C5uDDkv2ZPfhcy09GpFEU1lot3G2OERYAoDwfVrX93az9jUVX?=
 =?us-ascii?q?B74MFkdGw=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AhDVVDK/RwuuV8y8/q09qDrUDuHyTJUtcMsCJ2?=
 =?us-ascii?q?f8bNWPcYEJGY0x3y2scCG6Da/iONmf9c9Fzatu+90lXv8KAx4RgHVBoqy9EQ?=
 =?us-ascii?q?iMRo6IpJzg2wmQcns+qw0aqoHtPt63yUfGdapFtJpPgjk31aOK58CAijfjgq?=
 =?us-ascii?q?ofUUYYoBAggHWeIdw954f5Ts7ZRbr9A2bBVMSvU0T/Bi5W31Gue5tJBGjl8B?=
 =?us-ascii?q?5RvB/9YlK+aVDsw5jTSbB3Q1bPUvyF94Jk3fcldI5ZkK7S4ENJWR86bpF241?=
 =?us-ascii?q?nnS8xFoAdS/n/OiNEYLWbXVewOJjxK6WYD73UME/XN0g/19badGAatUo23hc?=
 =?us-ascii?q?9RZz9JHtIC3VRwBNazXk+NbWB5de817FfQepuefeSTi7JH7I0ruNiGEL+9VJ?=
 =?us-ascii?q?FA3e58Y8+FfHmBI+eYZNj0XKBuEgoqe0bWwVu5EgsU4MNKtLYQUpnZ41zbbA?=
 =?us-ascii?q?P06B5fZTM33CXVwtNsrrtpFEfCbbM0DZH82Kh/BeBZIfFwQDfoDcC6TriGXW?=
 =?us-ascii?q?1VlRJi9/MLbO1Tu8TE=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AcU5cfans7OzpZ9vL0qiIcg5bDDHpDfOTim?=
 =?us-ascii?q?dD5ihNYBxZY6Wkfp+V8sjzhCWatN9OYh0dcIi7SdO9qXO1z+8Q3WBjB8beYO?=
 =?us-ascii?q?CAghrkEGgC1/qp/9SEIUzDH4FmpN9dmsRFeb/N5DtB/IrHCWuDYq0dKbC8mc?=
 =?us-ascii?q?jC74q/vhRQpGpRGsZdBnJCe3+m+zpNNW977PQCZf+hz/sCgwDlVWUcb8y9CH?=
 =?us-ascii?q?VAdfPEvcf3mJXvZgNDLwI76SGV5AnYp4LSIly95FMzQjlPybAt/SzuiAri/J?=
 =?us-ascii?q?iutPm911v1y3LT1ZJLg9Hso+EzSvBky/JlawkEuDzYJ7iJaIfy/gzdZ9vfrW?=
 =?us-ascii?q?rCpeO84yvI+f4Dr085MFvF5icFkDOQrArGo0WStmNwx0GT5/AQgFkBepJ8bU?=
 =?us-ascii?q?UzSGqB16NohqAM7EpGsljpyaZ/HFfOmj/w6MPPUAwvnk2ooWA6mepWlHBHV5?=
 =?us-ascii?q?ACAYUh5LD30XklZ6voJhiKnrwPAa1rFoXR9fxWeVSVYzTQuXRu2sWlWjA2Eg?=
 =?us-ascii?q?2dSkYPt8SJ23wO9UoJhHcw1YgahDMN5Zg9Q55L66DNNblpjqhHSosTYbhmDO?=
 =?us-ascii?q?kMTMOrAijGQA7KMmiVPVP7fZt3c07lutry+vE49euqcJsHwN87n4nASkpRsS?=
 =?us-ascii?q?ood0fnGaS1rel2G9D2MRCAtBjWu7NjDsJCy83BrZLQQF6+dGw=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0ASBgBDbIJi/5hdJa1agQmBT4FSUgd?=
 =?us-ascii?q?1WjlDiBoDhTGFCZ49gSyBJQNUCwEBAQ0BAUIEAQGFAgKFPgIlNAkOAQIEAQE?=
 =?us-ascii?q?BEgEBBQEBAQIBBwSBCROFaA2GRRYuAQE3AREBgQAnBAENDRqFPwMxAZ91AYE?=
 =?us-ascii?q?+AoofeIEzgQGCCAEBBgQEhQ0YgjgJgTyDFItzHIINgViEPoMthAuCLpVnOwN?=
 =?us-ascii?q?UgQUSgSFxAQgGBgcKBTIGAgwYFAQCExJNBh4CEwwKBhYOQhIZDA8DEgMRAQc?=
 =?us-ascii?q?CCxIIFSwIAwIDCAMCAyMLAgMYCQcKAx0IChwSEBQCBBMfCwgDGh8tCQIEDgN?=
 =?us-ascii?q?DCAsKAxEEAxMYCxYIEAQGAwkvDSgLAwUPDwEGAwYCBQUBAyADFAMFJwcDIQc?=
 =?us-ascii?q?LJg0NBCMdAwMFJgMCAhsHAgIDAgYXBgICGVgKKA0IBAgEGAQeJRMFAgcxBQQ?=
 =?us-ascii?q?vAh4EBQYRCQIWAgYEBQIEBBYCAhIIAggnGwcWNhkBBV0GCwkjFgYsEQUGFgM?=
 =?us-ascii?q?mUgUEmRkTTAKBI4EykgqPT4ISmk+CLAolgyegJhWoV5ZmIKFfG4RkAgQCBAU?=
 =?us-ascii?q?CDgEBBoFhPCuBLnAVgyNRGQ+SEopedTsCBgsBAQMJkRoBAQ?=
X-IronPort-AV: E=Sophos;i="5.91,230,1647302400";
   d="scan'208";a="1060004555"
Received: from rcdn-core-1.cisco.com ([173.37.93.152])
  by rcdn-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 20 Sep 2022 09:10:29 +0000
Received: from mail.cisco.com (xfe-rcd-002.cisco.com [173.37.227.250])
	by rcdn-core-1.cisco.com (8.15.2/8.15.2) with ESMTPS id 28K9ATJT021426
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=OK);
	Tue, 20 Sep 2022 09:10:29 GMT
Received: from xfe-rtp-001.cisco.com (64.101.210.231) by xfe-rcd-002.cisco.com
 (173.37.227.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.9; Tue, 20 Sep
 2022 04:10:29 -0500
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (64.101.32.56) by
 xfe-rtp-001.cisco.com (64.101.210.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.9
 via Frontend Transport; Tue, 20 Sep 2022 05:10:28 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TvEpOqFP0mrhBt901/1fF01hrVaPIhyTV1oab3nDKov87guNNfNiioUYCuCfGu1wnQrv1rWP49NUam356gBIG14TgeVEUbVAph/Cgwvm/+aCHMCHIJxkfknTuilzlKr1kZTyknalw04FirMBp4E93wzO7K7ibX6S0xtL80HxvUuvSLwLErWDhTdITn2CrBdhoNdh12rLnvBYLYMlCsNlysbxgy/orRPdAHBrMvxK5uEHsoY0gKOemr8R/iBwH4PUURL7r8MZqgkIHnFoqxDsIeNiOSSKB7BNRfeNJ85bmBy7v0pjbau/cfx70S2YE3OEZLwIaTYpVCgHVd48VnrC0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=43IBlRK6tGsPr36qx3ICYKq+JYof4nQBf/dPgJYwfk0=;
 b=Sp2SqaeMaXFpPmP+dRIxKpDElmaufEv9zvhQHdpwGpXUBUgO8e3MC3pwq56xbMggPx9BSBtcHXLDygTApQlOra1TkiR/aAIrgObaFKyiXFcUL810vy3ggX1XaxxMaMg7YhWYzAlpg1ncWYMTHoxqjA66k5zcRrD8rt4JRu4PF7OHMwTJlOglUg4OIvo3WZOjkmyr05ogOR0ufoo+XdIIfYh4959JqmHl0PXounOJrvwx2VxzZkzMJueG8zlj7/bLFltFSdyhNfGRa1lbimbfNbEfyFIiKIvv5IjR/xUzfks3DczGO1AzWlmDHM/BhJ2qI7DXkcs5z0NuHLFzTDrANQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com;
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=43IBlRK6tGsPr36qx3ICYKq+JYof4nQBf/dPgJYwfk0=;
 b=UPIm3BGYVLPicqov8DcPFMZ8bxcsSyXvvst3AW9ob4l0PEjcuOYdEx8OoYGd9OWh1P7v8ceiBp/A4fw3RkAT5eXoVNzerTRULYGLVNkn3l2NRTF0wihmuxqitO2zsEdCOItk4jjxMNVm3iKBXbysSnx9slHk9St2mooIzFWOVo8=
Received: from PH0PR11MB4902.namprd11.prod.outlook.com (2603:10b6:510:37::5)
 by CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Tue, 20 Sep
 2022 09:10:27 +0000
Received: from PH0PR11MB4902.namprd11.prod.outlook.com
 ([fe80::a0f2:8b42:4b8d:83f5]) by PH0PR11MB4902.namprd11.prod.outlook.com
 ([fe80::a0f2:8b42:4b8d:83f5%5]) with mapi id 15.20.5632.021; Tue, 20 Sep 2022
 09:10:27 +0000
From: "Oleksiy Obitotskyi -X (oobitots - GLOBALLOGIC INC at Cisco)"
	<oobitots@cisco.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "yi.zhao@windriver.com" <yi.zhao@windriver.com>
CC: "Ruslan Bilovol -X (rbilovol - GLOBALLOGIC INC at Cisco)"
	<rbilovol@cisco.com>
Subject: libsemanage 3.4 issue
Thread-Topic: libsemanage 3.4 issue
Thread-Index: AQHYzMZ3bxa/Wf83TEmJtKZXCRcFsw==
Date: Tue, 20 Sep 2022 09:10:27 +0000
Message-ID: 
 <PH0PR11MB4902ABA6E94E119654171B5AD74C9@PH0PR11MB4902.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cisco.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4902:EE_|CY5PR11MB6163:EE_
x-ms-office365-filtering-correlation-id: 738ac871-ee71-424a-a4bd-08da9ae7f5b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lZmiFc8rD8uFjUwQ2TVbxcpqRtqbve+4snxeWlsGYdNU+DcShLqfNhRJwNsabVBUeD3JFhbyN/zke2Uq9b3zEP0GY50a4oTT1Q/9f8yg9BTgosxu0njFtENjJTWCS0KocEu6W0eoQztanFW2tVhEaBD+Y9m2nIt1AEOiKxkUbaUhkLRma6cAWiDmNbrd1V4zPklh+Zc1CbsAWRYKSGx/nWLvnCqKAz/0XHsxG2+i90xCAIBaf9QPe3v0QYFo4M1auPbGr6CF5xTer5h4Zjl7poZypFKnnPIygWyS23Ty6/XSOvksPufVnt15sb+QU/3H4NC1eCQAQMutQ03IHR8HJ6caoSztnDeAKA7sXOIOBPtRxAWtatljIseI4dsyzHkFY3d1WJ5fVIdyuF48xQSrOQcmAAHaaGoqDa77FZN8sRkhCPgsGq+2NS6Z0T6v38bD60HhUq0IppTxNXYh3ImLFXM8alXl2xozuxpsqkL9B5oIhb5T0nBOLgCTgfWWSGULBbUa4cQ9eXJZT25Zj7g50mSP0P2rvjVgEecC7+l55x2qAxVigKtx6QeOu8yIrE+iIl5DKF8zxaHIscqzFyUeYaWTGILCMr0+ma6dzuGvkHwDOTcMV6ZEZ6Jwi8cuEYmzX7Ca0BMK5xezk7GP02oVAoEiaSaDmNccsMfA1p8pOJwqSY0N3UHcpAjNtiHZP5c90/iEO4u7F/GR5oFT8b5wWsVeGZAnYr+QXy8asA1C9MXHD281ZY/hMR1ABPSYb9m0iLiE4PuTg2Az7lo998T6XA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB4902.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(451199015)(7696005)(26005)(9686003)(6506007)(55016003)(38100700002)(38070700005)(478600001)(2906002)(5660300002)(66476007)(122000001)(66446008)(33656002)(86362001)(186003)(52536014)(107886003)(71200400001)(41300700001)(66946007)(4326008)(76116006)(64756008)(91956017)(7116003)(66556008)(316002)(8936002)(8676002)(110136005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?vsXqdanrM95VMaUKFCTlK4O5KGJOVGJjCnk9PwXntAm4DFsW/0XwBMlaiI?=
 =?iso-8859-1?Q?wCjLzIP7bfPb2l6BrGMEZJCzNklsKPiMtlP0V0I0i/lxEwEFgvvKVYzd9D?=
 =?iso-8859-1?Q?d7NrqwYTq1F1r89RsF2Ox4thFPSXYnXRANtk8odefsBPC9cZzAAb2UnOVQ?=
 =?iso-8859-1?Q?bq90RstcqcYDPzj2tHCGI1zqRKL2uKsV9dTIv48n6Gg4hYeMSpoej0kztE?=
 =?iso-8859-1?Q?qWgm4ZQP4MGOczrcoSJeBvbSPukDuvQM4h4Q0tR2aaKbKVFOwS22ZfP7oP?=
 =?iso-8859-1?Q?4TNJsERt7DFrB0R2U85Lqisa6MKrXtBPGsqVlNJQInIrrs1oJrxz1H22I+?=
 =?iso-8859-1?Q?am/FIKtMOQmREDQwgvPqSr5e7jsvwql3m61A5eih3tpWnzsPno7CSZkIsJ?=
 =?iso-8859-1?Q?vKQ95pfKo/mhclRCor9DO7sbXnQ2qDmkpjhdjErdj9yFrYh2fVIHIVcNRt?=
 =?iso-8859-1?Q?UkNm1hhoYhfAAjLjiCJSqlVSIvwDj2B+4bDcOf5dJ++DLuG8ol/6+/W0H1?=
 =?iso-8859-1?Q?LALOWFr8iNlb1503fJVpE+T7ZJmKxpvb+SMoXOFkdG+upZ0PviqldaGBCx?=
 =?iso-8859-1?Q?gUoYnmYku+MKPVCmgIkyjyS6qNEgT1qwMlGQmORRC0OHO9PhHc0i7N4miF?=
 =?iso-8859-1?Q?y66uLH68rwtIqR6Sg2PYDz+6Rdua5VkRDONEsav7vueKxyUju4rr5MOfA7?=
 =?iso-8859-1?Q?anlRVwPRkle2FB0001P82DmJ/38gdkVIoCC8wyAl8pynyJ2giS5MMX079X?=
 =?iso-8859-1?Q?LGBhpkmVoxjWU0JGYHuBsvKt/WV6MhkeCU4qyor6viwr5qcaj2JsO8aoPJ?=
 =?iso-8859-1?Q?KoAlfPceOTMdYRfrWaE8JXde2JoFntAEq1DVpyei3B5tZB+Xi13avnODf8?=
 =?iso-8859-1?Q?pf4CR861h8O+Ow1SJRktYVf4nu3WfEoMXN1YCcYMhlw8glJgrGfluGd/1l?=
 =?iso-8859-1?Q?8xM/gLlFn37dJoWLZ0QtxIhdsispgzTJnCQOV7gVooTrq4RlEIhtzbn1/I?=
 =?iso-8859-1?Q?hAKldJSfTDm/5CufTDoEA20QbCgycc+h4eGxA8aE34AHlgmqYRo9DiJeob?=
 =?iso-8859-1?Q?0vHfUXYqg8No7/QvBHgJXJZyya7RnnywH9SK76KSmc5iIq8WNEDGfhJicc?=
 =?iso-8859-1?Q?tXOruBnL33JuilihxADh1Fs71u294T8U1zqvw/d5P9vQnBpkE0YB7whLCO?=
 =?iso-8859-1?Q?kFO+5k0o04jD7fLkoZ04/n2c9LwQbV6Ti6tVzwSLr2Vm5r2RfYP33IuHuF?=
 =?iso-8859-1?Q?TGUZ/2KZW7A6h/gSvYNqlHD4DfC1+hM0erO8/KyEOQ599gU7K+a8XTUHdv?=
 =?iso-8859-1?Q?zMDgxOHvkoSonbyzlOu3lrfTpRi6Yb2wGBLqBFzCXolzlgjKo5Dn0xMS9J?=
 =?iso-8859-1?Q?9IefTx/3yYa5NS3wQgXRovehUZckrZcCuQmlJNfMZHdhCSBzHQO4ODSU9z?=
 =?iso-8859-1?Q?Hn0O6zNkr6LGPRatH5kikHR5oC1+lFUuYNpU7M3WrMUunNvLD4ATOdJt9P?=
 =?iso-8859-1?Q?NNxDtrWLhddGuoqjnPOIIe6mHUxtQRIXej9yfg4o4xiK69aIbNhUzY6TUB?=
 =?iso-8859-1?Q?nBMqMxpbOuB9nLxKk50hHnyM+iFS1JO43Ua/a6whCU/Wo6aKEuZMz1c0fi?=
 =?iso-8859-1?Q?Qb9GO2e4bCYpg=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 738ac871-ee71-424a-a4bd-08da9ae7f5b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 09:10:27.6151
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 IYyg73mR294sbEtdx1KGesez5wfprY8sPkhRNhs1+ErUiog9M8YMAH9ZbrB3tiBGPcv6UEkmyVDlPjKSVoSrcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.227.250, xfe-rcd-002.cisco.com
X-Outbound-Node: rcdn-core-1.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 09:10:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58090

Hi,=0A=
=0A=
We are trying to use meta-selinux master branch and I got issue during comp=
ilation.=0A=
nativesdk-libsemanage failed to compile with error:=0A=
=0A=
make[1]: Entering directory '<...>/sdk-master-next/build/tmp/work/x86_64-na=
tivesdk-xesdk-linux/nativesdk-libsemanage/3.4-r0/git/libsemanage/src'=0A=
swig -Wall -python -o semanageswig_wrap.c -outdir ./ semanageswig_python.i=
=0A=
x86_64-xesdk-linux-gcc  --sysroot=3D<...>/sdk-master-next/build/tmp/work/x8=
6_64-nativesdk-xesdk-linux/nativesdk-libsemanage/3.4-r0/recipe-sysroot  -O2=
 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D<...>/sdk-mas=
ter-next/build/tmp/work/x86_64-nativesdk-xesdk-linux/nativesdk-libsemanage/=
3.4-r0/git/libsemanage=3D/usr/src/debug/nativesdk-libsemanage/3.4-r0  -fdeb=
ug-prefix-map=3D<...>/sdk-master-next/build/tmp/work/x86_64-nativesdk-xesdk=
-linux/nativesdk-libsemanage/3.4-r0/git/libsemanage=3D/usr/src/debug/native=
sdk-libsemanage/3.4-r0  -fmacro-prefix-map=3D<...>/sdk-master-next/build/tm=
p/work/x86_64-nativesdk-xesdk-linux/nativesdk-libsemanage/3.4-r0/git/libsem=
anage=3D/usr/src/debug/nativesdk-libsemanage/3.4-r0  -fdebug-prefix-map=3D<=
...>/sdk-master-next/build/tmp/work/x86_64-nativesdk-xesdk-linux/nativesdk-=
libsemanage/3.4-r0/git/libsemanage=3D/usr/src/debug/nativesdk-libsemanage/3=
.4-r0  -fdebug-prefix-map=3D<...>/sdk-master-next/build/tmp/work/x86_64-nat=
ivesdk-xesdk-linux/nativesdk-libsemanage/3.4-r0/recipe-sysroot=3D  -fmacro-=
prefix-map=3D<...>/sdk-master-next/build/tmp/work/x86_64-nativesdk-xesdk-li=
nux/nativesdk-libsemanage/3.4-r0/recipe-sysroot=3D  -fdebug-prefix-map=3D<.=
..>/sdk-master-next/build/tmp/work/x86_64-nativesdk-xesdk-linux/nativesdk-l=
ibsemanage/3.4-r0/recipe-sysroot-native=3D  -fmacro-prefix-map=3D<...>/sdk-=
master-next/build/tmp/work/x86_64-nativesdk-xesdk-linux/nativesdk-libsemana=
ge/3.4-r0/git/libsemanage=3D/usr/src/debug/nativesdk-libsemanage/3.4-r0  -f=
debug-prefix-map=3D<...>/sdk-master-next/build/tmp/work/x86_64-nativesdk-xe=
sdk-linux/nativesdk-libsemanage/3.4-r0/git/libsemanage=3D/usr/src/debug/nat=
ivesdk-libsemanage/3.4-r0  -fmacro-prefix-map=3D<...>/sdk-master-next/build=
/tmp/work/x86_64-nativesdk-xesdk-linux/nativesdk-libsemanage/3.4-r0/git/lib=
semanage=3D/usr/src/debug/nativesdk-libsemanage/3.4-r0  -fdebug-prefix-map=
=3D<...>/sdk-master-next/build/tmp/work/x86_64-nativesdk-xesdk-linux/native=
sdk-libsemanage/3.4-r0/git/libsemanage=3D/usr/src/debug/nativesdk-libsemana=
ge/3.4-r0  -fdebug-prefix-map=3D<...>/sdk-master-next/build/tmp/work/x86_64=
-nativesdk-xesdk-linux/nativesdk-libsemanage/3.4-r0/recipe-sysroot=3D  -fma=
cro-prefix-map=3D<...>/sdk-master-next/build/tmp/work/x86_64-nativesdk-xesd=
k-linux/nativesdk-libsemanage/3.4-r0/recipe-sysroot=3D  -fdebug-prefix-map=
=3D<...>/sdk-master-next/build/tmp/work/x86_64-nativesdk-xesdk-linux/native=
sdk-libsemanage/3.4-r0/recipe-sysroot-native=3D  -mtune=3Dgeneric -DDISABLE=
_AUDIT -I../include -D_GNU_SOURCE -Wno-error -Wno-unused-but-set-variable -=
Wno-unused-variable -Wno-shadow -Wno-unused-parameter -Wno-missing-prototyp=
es -I<...>/sdk-master-next/build/tmp/work/x86_64-nativesdk-xesdk-linux/nati=
vesdk-libsemanage/3.4-r0/recipe-sysroot/usr/local/oe-sdk-hardcoded-buildpat=
h/sysroots/x86_64-xesdk-linux/usr/include/python3.10 -fPIC -DSHARED -c -o p=
ython-3.10semanageswig_wrap.lo semanageswig_wrap.c=0A=
semanageswig_wrap.c:154:11: fatal error: Python.h: No such file or director=
y=0A=
  154 | # include <Python.h>=0A=
      |           ^~~~~~~~~~=0A=
compilation terminated.=0A=
=0A=
It looks like for nativesdk-libsemanage we  have implicit dependency on nat=
ive-python so recipe-sysroot-native populated with python header. But recip=
e looks for  recipe-sysroot for headers.=0A=
=0A=
Adding python3 to dependencies fix this issue:=0A=
-DEPENDS =3D "libsepol libselinux bison-native swig-native"=0A=
+DEPENDS =3D "libsepol libselinux python3 bison-native swig-native"=0A=
=0A=
But I'm not sure this is right and probably issue is in global problem of y=
octo + python cross compilation issues.=0A=
=0A=
Regards,=0A=
Oleksiy=

