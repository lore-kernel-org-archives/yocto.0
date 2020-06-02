Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.2433.1591139898319841320
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jun 2020 16:18:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=ZEveR3J1;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: pyvFy+olwmaBiwqTfF55601/ZwCXIgsqKhf5i0cY/Zez4a9AaP2hMe7QBk3YEF3qoidpjpKMwb
 zfQ4P36oqkdQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2020 16:18:17 -0700
IronPort-SDR: NM9HB4kkBb0nb2Sd2zzISB69/vl60nT+A9stXGbuH2pKA7+kl7FQQFbnE3wyqAveoV2K1lniN2
 0DWPQLhq59vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,466,1583222400"; 
   d="scan'208";a="272533196"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
  by orsmga006.jf.intel.com with ESMTP; 02 Jun 2020 16:18:16 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jun 2020 16:18:16 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX154.amr.corp.intel.com (10.18.116.70) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jun 2020 16:18:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 2 Jun 2020 16:18:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eHqPNmPed0euIEkF1FW04/p261Cxzj4Ged0uH88kxHNWzsebiDkE310HQoHsylP6IDd5r7KkcjUqtecs566RD+0aPUGdRusgrOnyKCubfLJ72/AhiGEtLn1dlGVwSu+uiH4sgtx389TUXWflY5TLjv5XczIdbq5hgVV4BCH2V5aMzKt0q0Q1IlXhYLj8o2Qm78VkrUgGmKTX6xlpsaECXJOHEsBIVHpg0t09+3PVRzdvdZS1H8Ou3D24oekdNVeDa4WSsHNx0884rcuUhKRUMDZG3YX1xTDhU3DwwfgZtHzujNh4R7jjU/6kExDkyIMxvwOXDonB56Z/s2/Ooeqb5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qjgl7N8B39V5U+Rx7tY1Avdba98WZInRhp7X7CAMDTI=;
 b=aDZObRIKidX8JEXm/xapf19iBdBKfvkWVFtjwv1Cipk6Zu7UoKGNzaoVAqOnjeQsBYUm2sBVPVtzsj4lSFJbNJiu3+HAg+VRfHVMxS/p40ILy18VdqU3cIksmNrGC3Iwx7S568mpsgaEXWNdbrTttcog7mxWxU4G0pf7Uc0yofADaqADtatZ0Hwr2ULfkD+Bg8chXAArFsnt2B5RhWHdnVrec6QE0q19Cp+ucsZk16fhi7PdEcBEWietxCsX7UPJ2f3ft8B2H0dLU6rO0Pj98Q3FS5cLye7BvSJzsSrcD/G2sL0kobzoYW6WXd0liMx1n/VdAaWFFelbDCia33cmSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qjgl7N8B39V5U+Rx7tY1Avdba98WZInRhp7X7CAMDTI=;
 b=ZEveR3J1q3sDvocrU3GrjT8wDDROfucBkcARweQbSquMHQNxqxIgl0kx+jnrMaXQinWp26EsgV+WGldeB4UlWvPYBJ+HBNU957udBHXk/rxTMZlbH1ClcTGxn0JQ3aMwn9GWOR09/sKg+Yg0aCN6dBjBm7jSI6wvFpjccC5RxkQ=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Tue, 2 Jun
 2020 23:18:14 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46%3]) with mapi id 15.20.3045.018; Tue, 2 Jun 2020
 23:18:14 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 2.7.4 (warrior 21.0.4) Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 2.7.4 (warrior 21.0.4) Released
Thread-Index: AdY5Mm1wPQUc7ytzR+OZ2m/2uP+y+Q==
Date: Tue, 2 Jun 2020 23:18:14 +0000
Message-ID: <BYAPR11MB2790AD4E996046E2C4FF7C73888B0@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.234.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 998331a5-7d7f-40a7-ebff-08d8074b39de
x-ms-traffictypediagnostic: BYAPR11MB3367:
x-microsoft-antispam-prvs: <BYAPR11MB33678D37D7AEE28D6B50F8E9888B0@BYAPR11MB3367.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cAF27tixzTS0yxDM68n7ipIGFxahczCuLFzvrbNIOValImbACmp8rZlJEM/CIoKfRu9OVTs5OD/iBjbwX+dwWp1ueU3V5Esi1IKpxgTqWher7hypfdbeOHbhGsgAdjXMJJDfn6D/KWBGChRExOoz3eiELMNOCzCGAt/is6MOWdvY64eiTcO3s1bCMdW2BgLshdmxPgSB/CFA5geov1u9Hlt9OrscSwcFAptkeXLRiPOz9qXJdOJxdn2WdU+X4yZ5ctSaz1021XvsOU6ZvqPh0PvzU89ot/4Ob5ve84X+PQhuXJ4DBw36AA9SeK46KJwlKnBUo0Ck86tYlLi5VZZ5ifnbkVGkSDaN9ZEBsDXo12Zegy+C834dL3Duv9oYhche+yyDLGEunLT7w8GmiJTxcbykiOZr5fD97Ad9kJFKPvEVr6PsVUG0NUXmZvbzCjRr
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(39860400002)(346002)(136003)(396003)(366004)(376002)(71200400001)(8676002)(8936002)(86362001)(33656002)(2906002)(7696005)(5660300002)(6506007)(186003)(26005)(83380400001)(76116006)(110136005)(316002)(52536014)(966005)(55016002)(66946007)(478600001)(66476007)(9686003)(66446008)(64756008)(66556008)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: FthoHsYyNgQX91RxRpJ4mDbG8iFzUgawwRnpqKfnzbT18NM37axd4TeOn+aJdYAAgIKu82fedBhkx0OLdYupQ7EWH6HKwGEFVI6D6Og/gdzLi2y1eT8aJj0GG7tqzsUDzA7WnNC1mlG5nj/klO+tE2AZkqN5WqdfJWTEdZJEkvQJuJJ8ryDM17Uq2uBYRc2Zbzhy6R2mK61f+MCaYrV78v6LGV4Z3V4jG3yQRVGLq6yOGa5Z+RG7PaKLfy3OwOz0PKC0TYVGaSRsOZckcq45CgT6qKl+EIfpdjNMC4llxwWjOJbK0SBSAFVP92xT4y2IfBLqfpD6FniZAlpJRm2GTjQ2n0UJXjd5SuLm896UtXqg5k7Zgwy60T92UAU0M8rE2QwT8EOlKE81k0hSiHPLp36A0ru3RFhRZ86e8g1unBCoxAMRZj7TV08qtEUT7dDpKk/wue6vkZnATeYwMZO4dAEFpeKakBFpwWrqi6MeFPz0wXQ+kEY5rsQR7896sHd5
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 998331a5-7d7f-40a7-ebff-08d8074b39de
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 23:18:14.5448
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A3bgk5xmydBlcrwCoFJwzj2Aq/jWuRARCt5dA2+NVH8fdOuurY4ifB8IPDU9XWwwPbpke3QX4bmZxbx1V5ooi4crhMEbTUXRdP/NgIc6cUg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3367
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 2.7.4 (warrior-21.0.4) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.4/poky-warrior-2=
1.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.4/poky-warrior-21.0.4.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.4/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.4/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com


--------------------------
yocto-2.7.4 Release Notes
--------------------------

--------------------------
 Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: warrior
Tag: yocto-2.7.4
Git Revision: f65b24e9ca0918a4ede70ea48ed8b7cc4620f07f
Release Arefact: poky-warrior-21.0.4
sha: cc3fbef5a514eee7e0a6ed7918a8e78ea47f7c57314de2e24fb20b99fde54cbb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.4/poky-warrior-2=
1.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.4/poky-warrior-21.0.4.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: warrior
Tag: 2019-04.4-warrior
Git Revision: db3ce703d03b18e8a4120969d32ff7f344f34fe9
Release Arefact: oecore-warrior-21.0.4
sha: 27185ef148b443dd415bb1f7f8a8fd8438a53ea3fc32fc1d7298156ea930d1c9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.4/oecore-warrior=
-21.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.4/oecore-warrior-21.0.4.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: warrior
Tag: yocto-2.7.4
Git Revision: 10695afe8cd406844e0d0dd868c11677e07557d4
Release Arefact: meta-mingw-warrior-21.0.4
sha: 2e8e856aab006e0da4e78aa1550c3a9e29ec545cefde85fa97c9a8cfb964a9e7
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.4/meta-mingw-war=
rior-21.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.4/meta-mingw-warrior-21.0.4=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: warrior
Tag: yocto-2.7.4
Git Revision: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
Release Arefact: meta-gplv2-warrior-21.0.4
sha: 9d018da2baf8ad01d367e91877d24038b44a1dbd0530799c45c02b8f4e0a742b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.4/meta-gplv2-war=
rior-21.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.4/meta-gplv2-warrior-21.0.4=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: warrior
Tag: 2019-04.4-warrior
Git Revision: 7f7126211170439ac1d7d72e980786ce0edb7bb7
Release Arefact: bitbake-warrior-21.0.4
sha: 791a52bb2595f4dd04e32ee4c441d6cc5e0d49a0931b7a8da366d0c8e4355a17
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.4/bitbake-warrio=
r-21.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.4/bitbake-warrior-21.0.4.ta=
r.bz2

---------------
Contributors
---------------
Adrian Bunk
akuster
Alexander Kanavin
Anuj Mittal
Daisuke Yamane
Denys Dmytriyenko
Jan Luebbe
Jain Sangeeta
Lee Chee Yang
Martin Jansa
Michael Halstead
Nicolas Dechesne
Oleksandr Kravchuk
Qi.Chen@windriver.com
Richard Purdie
Stephen Jolley
Ross Burton
Vineela Tummalapalli
Yi Zhao
Zang Ruochen

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
openssl10: Add CVE_PRODUCT
systemd: Backport the CVE-2019-20386 fix
e2fsprogs: fix CVE-2019-5188
ppp: Security fix CVE-2020-8597
ncurses: add CVE_VERSION
libxml2: Fix CVE-2019-20388
libxml2: fix CVE-2020-7595
sqlite3: fix CVE-2019-16168
libsoup: set CVE_PRODUCT


---------------
Fixes
---------------
build-appliance-image: Update to warrior head revision
prservice.py: fix do_package with newer Python in Ubuntu 20.04
build-appliance-image: Update to warrior head revision
poky.conf: Bump version for 2.7.4 warrior release
cve-check: CPE version '-' as all version
openssl: upgrade 1.1.1f -> 1.1.1g
openssl: update to 1.1.1f
openssl: Upgrade 1.1.1d -> 1.1.1e
openssl: recommend cryptodev-module for corresponding PACKAGECONFIG
openssl: Fix reproducibility issue
python: Upgrade 2.7.17 -> 2.17.18
git: Upgrade 2.20.1 -> 2.20.4
Documenation: Prepared for the 2.7.4 release
yocto-uninative.inc: version 2.8 updates glibc to 2.31
python3: Upgrade 3.7.6 -> 3.7.7
gnupg: upgrade 2.2.16 -> 2.2.17
gnupg: upgrade 2.2.15 -> 2.2.16
gnupg: update to 2.2.15
openssl10: Upgrade 1.0.2r -> 1.0.2u
e2fsprogs: backport upstream patch
boost: fix build for x32
openssh: backport patch to fix "cert not yet valid" test
bitbake: lib/bb/utils.py: Preserve ownership of symlink
