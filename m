Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web12.1708.1592424754078834777
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 13:12:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=fPU1Xel1;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: P/j343LuRw30C9G1YG2TBIdU7/cOc7B90P407eTHwXcgEXwAUMczrlnhHCxK1x/E7KEMf/2rD8
 0kCHVNWiNwFQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2020 13:12:34 -0700
IronPort-SDR: OvsleFYJve8hey37dsKhF3wWOuzQF0JY2kAb5MlxSVDPKLdnkJ2LPSdvD7kRcOap3Lhj91vKP9
 pv0ZbVCklnvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; 
   d="scan'208";a="352192250"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
  by orsmga001.jf.intel.com with ESMTP; 17 Jun 2020 13:12:33 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jun 2020 13:12:33 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX119.amr.corp.intel.com (10.18.124.207) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jun 2020 13:12:32 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 17 Jun 2020 13:12:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K8nlOdYHNmmVVedBr0+4Z3jcpkBde49m+Y0+jo6xR2836/CWB4qalaxGEK4E+bu0dmDQmXmkKY/R38bnxqIcyJQfij1931CLOBYUDWTFKBhtD2P3pxmiEcE81G1G4Ovi7yPjKOmGWSHdBdfUWxGEf3URpIaqmwptzZz8I3OaJDdH9pAgAciXwN7K9Czd2piKtedHVh7BQKko5Mpgn9nOXupJfk90o8PvJRNEDIHoUkm4FEQfJm3a8ENEJkTPRtQeRd2S+2zlYGCz0zpE6ikXB/jqU5MVANciSd98YBfKLmCq1n/RYssKA1nzR34oGNPjiukCWatDU0rijqPeikfAEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qPPfebb4WpGGcVMkxpXwFTrN/9bgwVi1z9zHRn1dYe0=;
 b=Lz06AJS5GPG9tAse5gMCYJJd5OLy88yRTOjcEvYp1cPxATAqwJigu66ym0bRJYWSBXiutPgMirdJXvi/U3Z2VRTr3aIW8EhtGRpovp041hVWkAonrS1xnkJfnFRsFZ1jBrgtzZau/ZGNn16fg0R+InD08ylohC4EQwCCCMdltWMR9O+s0NDugd3I6+qSuQFZqxwkNctoJEqIS7u4H7sf4uWrzLgwL1qucQxfNGlGRsW73tIW3IP4ON5qbMYTMUGXnlgsaShlx1oOiGJx4yi+ySRdT9NdmaElV3Mh//bKTxzrWOm2XJA6PmPAgFfVNVWgRVlqecfEkLTvQpxURyI9Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qPPfebb4WpGGcVMkxpXwFTrN/9bgwVi1z9zHRn1dYe0=;
 b=fPU1Xel1sXXgcI2oUafD3Yj78RsShYfyExxUWhaUc/A9OSmTvSjvC1kSJXZIA1wWHPOYw4gbXaBGouNqqe/QtR9w7c4N3Qz+Uivz6njc4AGA9EqN3lIDMU5zyWBEtqUrNbeNcKCK0YXHdKR3K+TAFJkRp8cUzQxflBDQDqOuzlI=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BY5PR11MB3944.namprd11.prod.outlook.com (2603:10b6:a03:18e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Wed, 17 Jun
 2020 20:12:31 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46%3]) with mapi id 15.20.3088.028; Wed, 17 Jun 2020
 20:12:31 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper]scripts/publish-artefacts: Fix for Bug 13947:Change checksum file extension from sha256sum to sha256
Thread-Topic: [PATCH yocto-autobuilder-helper]scripts/publish-artefacts: Fix
 for Bug 13947:Change checksum file extension from sha256sum to sha256
Thread-Index: AdZE45MtiK9xh2q9Si2v4UNblh3vwg==
Date: Wed, 17 Jun 2020 20:12:31 +0000
Message-ID: <BYAPR11MB27904C8CCFDAE4935E15D3C7889A0@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [73.48.134.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be598a07-b143-40d1-28f1-08d812fac436
x-ms-traffictypediagnostic: BY5PR11MB3944:
x-microsoft-antispam-prvs: <BY5PR11MB3944ED2E7B452255FFB20659889A0@BY5PR11MB3944.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3V0JmgsRsyyCj52k5gCyHf+wGp2Mtl8f7w7dw1rFpViRhK16m7UBCJAAAU4OdMFxylA4+0tTsUMclbVXKgPXR1zSV012Ofxsu+fi+dXj3TNwhlQDf4LSUgllU2iifG2SEICJe3Ig0kAdSJAvElFl+LsRggz1vDz5QjgGpNaf+Cae3Sk8CyOSZN0jOybHc0jUhAniHlP1b+KNkBK/9yBg9cqxLlENz8MBLiZLw/7bxTrp5O5yE0eTVMFbRkn8pnXLAzPQTph6Mu8AT3IFZtx2HmLaZ/mstcJMfQy79zi6ciVN/keWJ2i0AWVIMf4sBq84s1e0JjYzsnW3gDOHlVMPxQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(316002)(33656002)(186003)(2906002)(7696005)(6506007)(83380400001)(6916009)(66556008)(66476007)(71200400001)(64756008)(66446008)(8676002)(478600001)(66946007)(8936002)(26005)(76116006)(4744005)(52536014)(55016002)(9686003)(5660300002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: IHnXt7saY5iN0iU3T1+erlX0mfPRYIs2bpAt4d/3GV4aIYGqLREMM3pUWcOP4RSeNlJ3fQzuk4ej26CCl5aMBuMm2kc+arvOlEr1Oau1tnFFdAEVVHiJo9KqpiCYBCp70T6Gm/hONk72ie+8qg224hhbyO69PUf6J/SCkPSeeE32FOEd5DCA6iJEJJdXLGNKzaJZKE+rqUTVDHQFfVfA0Ar1CyoZA1rE4Byh9R46dIWl717msBWR3HIVSb2KeNfx7lEONCTSGl4WPRM97U4Y68u2UxvDTfNtD2wz9P1RgZrLcYw6SzYccHyCpyyszOzZtiJmzCaUDP34OzX+Blu9RHuJ68M66ma+GvEUNZ1UVf20xVamrSHPNN2oQyWV5UOEEpbcI4JY7UFMEa1VpfOXnAZ2JRjbFL9W6hVgwDcnRTTuyrRxIJRUkoC5QD85GR5UveOqWF2jhAn8nJTS8jGyqsYfL7cwdZi+Z5pkGIELSjh579v3gLhCgbVR8kZlp9W1
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: be598a07-b143-40d1-28f1-08d812fac436
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 20:12:31.4193
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7r8UH0XqUcXG9ziaYuFSEdaNLCPm3ak7CllypTtZcpL/aFUZsUyZbP3cWymveQqi2Sg5itM6v2p6mPtz8vwPX+TKF9IhuM2rY+XzaqdwipY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3944
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From: Vineela Tummalapalli <vineela.tummalapalli@intel.com>


---
 scripts/publish-artefacts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index 6ed922a..3ef7206 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -7,10 +7,10 @@ sha256sums(){
     dest=3D$1
     for x in `find -L $dest -maxdepth 5 -type f`; do
         for w in $x;do
-            if [ ${w##*.} !=3D sha256sum ]; then
+            if [ ${w##*.} !=3D sha256 ]; then
                 shasum=3D`sha256sum $w | awk '{print $1}'`
                 filename=3D${w##*/}
-                echo $shasum $filename >> $w.sha256sum
+                echo $shasum $filename > $w.sha256
             fi
         done
     done
--
2.7.4
