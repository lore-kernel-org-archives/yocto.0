Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web10.32048.1590996356903538015
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jun 2020 00:25:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=QgPSfQXd;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: RdOQ6UIk80L1tmH+VZQ/ey4eB9X8891mn9z9bwG/m0gPsBhsQSFoZ2CY8jtX1Zm4EvUx/goZQq
 iURfACnD4opw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2020 00:25:56 -0700
IronPort-SDR: 6uQkQTE3Sm24hBgeGxo9R0xtB/0iorKjT/xBSklgcGKCZfOgwPwqBZ73FvZ8JKYtXSep5l3sqk
 Jjwp4h/wHBMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,459,1583222400"; 
   d="scan'208";a="303546745"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
  by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2020 00:25:56 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 1 Jun 2020 00:25:55 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 1 Jun 2020 00:25:55 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 1 Jun 2020 00:25:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 1 Jun 2020 00:25:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6WYQhBdSjzHad03Qc70j0hB7YPRTrydVZvAlTrIpEBEtIH0LGSh5ko68quHX3tDtGsK/ufUydaqX0u+dAjxS0hVQRFfhHroHHGY0uQyfYqlVrTTLZz+Dmh0MIhZBKq5+SveN7Sb1tdTnoo01Tp9WGGpekvmUg+k9Q4w01aoLBOEYXrGcJFpZXJdQjaR/pI6WJjJl1jJMtRELhNjK54KE1A4GH6WHBQcPnrQHUoDfwiiQlyNmnoJIkgwS0mp9EaivyEkziSr8uceKyamUOa9K6WoOSNUQgMLUtyaJOTZIhtCYj4+gXd17wBns+2o+mMNVuqX3lz5KudqZByxOy1idw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e5cav+s1MEslrJLnb/JOfc5oAO4ujEGU71PomQG9IeA=;
 b=XBIwxWN6o2V4/kq+O+aYXpYtmRfHJ41SEZZVXfFpSexqsXbm40x+MTtEAAweeBQms+HgdQDsDxLK/XHgqFSxp2BuGQERXEReBtD5vpSj6syc4s4Wo3v4wOCRXULDS/mEBZo01af7Ibowb+SOwI3xyvo1JuJYbK0V/X6s4jIPryH381m2O4MyyiNMTtFyftyjQ1xkt2qLmZfXrM5dztWsOFfK2gR3i8PoNYT+G/++Oi6zzjzF9wju/qPT0s6I3nkgwZeL8zaOkVgA1njGqTBqvcDUW7eS3cGEZthbHyDzkeE+LktU19AGYwqIngPe/s2DiyKQKdqe6rHG3fpdb3oUkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e5cav+s1MEslrJLnb/JOfc5oAO4ujEGU71PomQG9IeA=;
 b=QgPSfQXdOg81jJ4qzg0yhzZXGdfwBgy5iyhctBUUTFSmHns6pfqOXmac/UFUYRryQSv5KXH1Rm6r18+cQzngJ2iTD4BILI/brBDkPbrQpkFgzoKDYwq9It5/ImFK+S6/cZ66IpEeZ5hRcMZ9qQyXQykgOShBpalgS6KtPNRxh9U=
Received: from BY5PR11MB4037.namprd11.prod.outlook.com (2603:10b6:a03:188::13)
 by BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 07:25:53 +0000
Received: from BY5PR11MB4037.namprd11.prod.outlook.com
 ([fe80::6d26:5862:7d75:f47d]) by BY5PR11MB4037.namprd11.prod.outlook.com
 ([fe80::6d26:5862:7d75:f47d%3]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 07:25:53 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
	"Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Subject: QA completion for completed autobuilder build (yocto-2.7.4.rc2)
Thread-Topic: QA completion for completed autobuilder build (yocto-2.7.4.rc2)
Thread-Index: AdY35btkDB8TuKqMTXW+3mqug3znTw==
Date: Mon, 1 Jun 2020 07:25:53 +0000
Message-ID: <BY5PR11MB40371DDE5C07A6FE3BA2F211E38A0@BY5PR11MB4037.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [42.189.140.181]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 639737b1-bb21-48b4-ae3e-08d805fd048a
x-ms-traffictypediagnostic: BY5PR11MB4243:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB424347984A06FA2AEE93B9ECE38A0@BY5PR11MB4243.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iDBxUWa7EGFN7I2LWOj5c9kah7Q/SMHr01NoO+lTa/ZgOGOq4rqrUghN/br6UpD2QkyP3n96m4JfzeaPVZ083dRV0Afgnx9AwkilPrLfwxPTxRv+aS9m6srbaNGws2eoab4hT/8mnQgjC0kQaQMSRcY02Q7+MrFSUJyqbb3pFp5JPDKL0feX0uXYt3yqz/WDqKVLtigp9RPVVnTT4ftplg+5M4XHzJK0QwcyzRroNFim3zKuqaddTpOrzqBVtXayUveNQaROmiE/mVxoYZR6LxOdXn2kdNRYS5emKj9ZELCsbzkOygrDaK859a/APDBfrAb+f+Nc8leKa5q+dGZocEOUpJNZxkwpZhTvpY1/N0c8ON5IZI01ZOinCdUaVgzbPRMUlmN+KoRtdf/mTftx+A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4037.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(366004)(396003)(376002)(39860400002)(136003)(346002)(86362001)(26005)(6916009)(316002)(2906002)(54906003)(9686003)(76116006)(55016002)(4326008)(186003)(52536014)(66556008)(107886003)(64756008)(66476007)(66946007)(8676002)(66446008)(83380400001)(8936002)(478600001)(966005)(33656002)(7696005)(5660300002)(6506007)(71200400001)(4744005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 3yISW7xMtJFBLsv+Ouu898TeZE3/++ou50acO03Vq0W8XpxhgPLmfMDZLp2I0W095714rn3adC6SGTwzqOkL5fx/d1CD4r+oa2jBsz6rm/bInHHGrz9zzUUuVap0DWyi1rDlfmukf8zBdp9/6PzWCd7hgCvl6NAzT4X3bDC7nXOF9JjShUqMBG6fZ6yG6g9MiOGSsCAXJLmll/QrDtU5mv4jiL5cvBOmsq4hXgSiGE481Pa+9cYfKtEhGx3YX3J9WCtmtAmxhEdKboj8pyRExV6yMJnIgT1f+hlCcPAeuhCm7g/GQiBwXubeFRFVlT8GEVfeKgiF+0StMAntJGE8aHk/N5EuZ5M+6nvtaiL1crwE9r4y+pDnamRlLKjXDaqk138JpIY4lF7ZGMzh2TF3N2JqP3Kwmy9hMRmeWPBtJ1AZ+znTevSCEn9poHoVElWrjzHSYcVtkT5Y6TEVORKd5mNYRGhiUv4Ra788rrsSrsnJC8e0neEgFe/8bvndMDpD
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 639737b1-bb21-48b4-ae3e-08d805fd048a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 07:25:53.2658
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4PkQBGgIJTWj17UO0ciVjh2FbZwz8jUar9FGnhYz7eYyiI4Az8VUG0oM3rGyrA2hs4fDFHW0BPUA4DxDGunlOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4243
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full report for yocto-2.7.4.rc2: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
No new defects are found in this cycle.

Note: Few failures are observed. These are setup issues, not real yocto iss=
ue.

Thanks,
Sangeeta

