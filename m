Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web12.1177.1631915996003975673
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 14:59:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=sJ3we1AN;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: vineela.tummalapalli@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="219694372"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; 
   d="scan'208,217";a="219694372"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2021 14:59:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; 
   d="scan'208,217";a="510092308"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by fmsmga008.fm.intel.com with ESMTP; 17 Sep 2021 14:59:54 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 14:59:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 17 Sep 2021 14:59:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 17 Sep 2021 14:59:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rr8jKL5SQhz+LSgO8IxbaNiBb7K92i+adPBgqByXOpxkMuKp/huY8RdOw4PgJNwYCZKRDuxEYiR2lpcDEyUy5oHAlgudWhbwDlcHGILjITuz63b0YYGGBR4ZawBVSRrT4gTyARHL2OutzmKmr6UPExMM2JXn8sLBkeqSTB3voJQP0jY8snqn7oUemeWZyyuCQ2YzWD8YxF38xOQU4WTbFRukueP419XDQIdq5Srkivu+G1BiIbSoEOCA1R1eXqShie5muYcNRoDZdrmhoHHJaI6PY1o4Mx/rT/8iqKfzz+hI13GgXsBpiNmbQEA0wIIZr9GTFeQ4MbbpLRNoBqxrVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=1w8Oc8XlOHQD3BO4eu+W60q3WPldkuG4JGgdlXNQyCk=;
 b=WlSEHfcdmnuV7wKf+/ExXnlPTyOvH3iHVGLz6Mmd7I3mOVtqd9Yg4XP0tZkHHbLLDQ/Nn9nlTzaKy32dl6h6Cgcb2DSdUqEQ6a0ePaGz5JLXXnDKSOHPTCwgXBK9LxETcJ7t6TzhFQDti+/Dw3VLMR4fjSzcZW9tJQvWrITvkwBGspteSxrSBrPeNant9ClfbvqUK30IMinHQnVvAZNRzISS+IqJ2fPurqe5F7eBtnPRb3ZhEfr70QVQVEFKy6kP5EDd4Nqz1wqBaiRYfWUNLiHKMVspdPC0BbxrxPRBAjPnvqS8CyYvW5s0040/VGMiaRZPnWh+J40+C1qEOSjFCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1w8Oc8XlOHQD3BO4eu+W60q3WPldkuG4JGgdlXNQyCk=;
 b=sJ3we1ANy52iGkrXYL1wMIxvX2AephmefXdzz/xgq1+UPMo/u11mg3qBfzxlrlgTiqTmKIYL+ZQGXRnFfyugNnD9WtuY5GhWbqxYx/GzdB9ZgB+RowFIR0ypT/4dVi0oyEGFXzQRmYn1dD1Gt2mwk8o6YkC0rfiHJv8JnQZFPi4=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BYAPR11MB3559.namprd11.prod.outlook.com (2603:10b6:a03:f7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Fri, 17 Sep
 2021 21:59:47 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9%4]) with mapi id 15.20.4500.018; Fri, 17 Sep 2021
 21:59:47 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 3.3.3 (hardknott-25.0.3) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.3.3 (hardknott-25.0.3) is
 Released
Thread-Index: AdesDN9Qy5GFwGGdTTqoE7vEyLn/Qw==
Date: Fri, 17 Sep 2021 21:59:47 +0000
Message-ID: <BYAPR11MB3301562830160488905FC7C388DD9@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5348c5af-fe73-4bea-3096-08d97a2676fd
x-ms-traffictypediagnostic: BYAPR11MB3559:
x-microsoft-antispam-prvs: <BYAPR11MB355974F527E871DA13367D0688DD9@BYAPR11MB3559.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l7J4QARmZ/ogyUDsTFbYRbjToKf3RD0YlLb/vDsVrMiZoV1Vf+Wcy7soxq4a/9+wakmDUqzl1FN9LalbBLDufJagwdLjluYbR9UH7g6J96JfmCO4qn30Mpv1svBZVd9XKxGHPfCf80aG/vKbAeloTvwpVrqUtGYZNOmIM26IA0dxeFV4xFKjd0GV69GNj9T4CltXq/5rCThisu3C+Ss0m9/3wN65KikZo6ElX+GWIopiCBjWkFCpVjOYedDDULNRiWGOB42PsObkH8LS3FGgO3c/49bHF8w2qKGJBVEbpYu2Fh5ZNSjqr+kmzfT9DhX+x2BuF/EOVoCE+LP9hqHK5EmyZaNnC7tOSUMTggt+nbI1CcbqM0hnLd9oVuhYruciY5CZNpOF2fVn0aUCnfcQe3zgxMszhHE8MiZZiX+EWXBeW0l0dCnwypXUVkd6F4zgQh3Zdj1G9/W2oNFWUck6FFYdk/jc7R/uuOBrR+je/yBxRj0JIkdecAvy/rs9uCrH7e3w/Mj5DNNntTSIAMZfLrbshD3l5acWWcBqkqTdfUVyn5jT6Y8ZVHjoQpl/0YifRA5CqeEwLfrwVRX03cKoQBxx7QB5zmx0t2AXEsJS083pua1aSETAs5kpltEixBcsLBDRetYGJO6PusODkkYT4nKQl67zgLC+14DKirsvqog1UxpBnm0KGJvi7O8+JrVLdQkZhq4KqaHqk9gFU3dFrWienC5UoEd8BuaABugnYoZMJRVupRpj/nMxWgieFTc2dTawXfDNn2yt8EY0KRtDWzRYT+QVSuI9AANCF0W24XgFsHZa2QjLQHqnPgFYA2UDvJxNFnZeYZIDRGq2pnkMUdzRW4Yl/EX+eTkzG+5nQ5foGSAfnilWS69JtqNpyqX6
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6506007)(86362001)(5660300002)(110136005)(71200400001)(83380400001)(66574015)(9326002)(316002)(52536014)(9686003)(966005)(122000001)(33656002)(450100002)(66476007)(66556008)(64756008)(66446008)(55016002)(66946007)(8936002)(508600001)(7696005)(8676002)(2906002)(76116006)(166002)(38070700005)(26005)(38100700002)(186003)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?QjKxWhx6RGSxRZlj/ovwFPBTTrV2JjvV8BdGCFKavVeIEyMraNo+POU32t?=
 =?iso-8859-1?Q?VbbgodCcW63T8GP8bz2MBcVSOPt1fnaHhJMufHX/0JGsxgn6hTNAK/7ouW?=
 =?iso-8859-1?Q?qEQM49j04EFQYVMASCdjpppsxH+5+1uGRUmxNaEETrBnW85RyDrN72SjFE?=
 =?iso-8859-1?Q?eb74hlG+5bH91UeLkbGh8Q4HQoiAkLEu5MkOUzGDD/hUHZJz6EGa8DMdML?=
 =?iso-8859-1?Q?Yg6RcNmD+MLyislaK/ai3ReNBIykMMgziAUPZWH6b5eOYsG79ryNxLwcUc?=
 =?iso-8859-1?Q?yf/4uQKvF8LIf+gzvZarDDGlSuJz8oCXurO+ybIz6G8LaEYvT8iW7mVuu9?=
 =?iso-8859-1?Q?bLVVFCTODoldwSeKL+gBCCC6QEUWoJfOY041BigIGujhFz1vQ3sHu1Pqp3?=
 =?iso-8859-1?Q?Z5HR9mYZhwqowgRJJqERiVWGSzi1Pf5Gci/z3C9hgrM9UJpZ5OU7iWBXkZ?=
 =?iso-8859-1?Q?L90OZ9GSlFAJc4Z79KDHOFpUSgXK9WgBk4p4vHreINb1crMetN41m7RelH?=
 =?iso-8859-1?Q?VPExKmOsQMo9AQhGk8KNLT6F//iDoS+dGmUraHIWR9xjlo+TORb3cQKwpm?=
 =?iso-8859-1?Q?KnQP8IDdEKpFdK2O++kXA1bZiY3/i1HWBpyTVIWouyoRHfSvdThIlvn5QF?=
 =?iso-8859-1?Q?aYLMLyRNGfON8vW809WII6cGTm+QVKQzQNuUsfyyPTTQXHtFWOk2O0snjd?=
 =?iso-8859-1?Q?PuGCQCfsSIXNNYNsgfbechH1OkwXKONnirY2/Jt+wyAlbgc2hTTzH2OHWo?=
 =?iso-8859-1?Q?tGw2oC1/ngDXml3OIl6K84ZFb/zRI14NqSxwvf6hgdNGrGqzudm1tzZpCp?=
 =?iso-8859-1?Q?mPJfVxlw/A24LSqrxRFm9k+rebLzuc7l0hny3h506J+7LjPXXqVqiDbu8E?=
 =?iso-8859-1?Q?DLw1PY29eCBvKcm2K2ClmIsuxSuKgG1SQ76UNZkmxRR0jm0RwTfdKBd1y9?=
 =?iso-8859-1?Q?e7hpGTAKKCXTRppbMEaeevSQ5go8QHYeJ9crdMaztTcEtJMulTayBViGT9?=
 =?iso-8859-1?Q?tkiEbF8Zo78ZsSSnPjk9Gz0mqCk1qNuyEumIjA1pCV6dULDDw2vefZ7Ar+?=
 =?iso-8859-1?Q?PFipJ2a0zOwvMentVLGU6bHACF8j8Octz2LK/5JgOxLhcFIU6RTR5plfiS?=
 =?iso-8859-1?Q?kuA1v/upmD+FVVmVzns2LqH9QkH+RzDCZ08b/9h5PgBTnNZQkOyLlNPNZr?=
 =?iso-8859-1?Q?aevTDKqdz/Y1wXUghkMscDPr1INLKF6QYEJQFMBBsY45SLMiDq5WghPO0U?=
 =?iso-8859-1?Q?DEjkiIa2cYN/tvuak+dMw/tfuVdqsh1h3iIRlCSw0T+q59kkCcMzQ4ztHP?=
 =?iso-8859-1?Q?hLma/RgYzamlD+usWXqeM+RhhOBsFZWydkZTBXWa4A+ERwlPUpRvL5hiEE?=
 =?iso-8859-1?Q?SHqH3ZLZ5H?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5348c5af-fe73-4bea-3096-08d97a2676fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2021 21:59:47.2116
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K2VGVx7hYA7yUCQRBYyZFnt8ef5MGcG9aiJ/qUlRB646Y8D4BLfbSnuOtnLt8x31yJYOSgSzYai8/CiMc0MLcIjPiivel8G2Gyjooi7Dr9o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3559
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3301562830160488905FC7C388DD9BYAPR11MB3301namp_"

--_000_BYAPR11MB3301562830160488905FC7C388DD9BYAPR11MB3301namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.3.3 (hardknott-25.0.3) Relea=
se is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.3/poky-hardknott=
-25.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.3/poky-hardknott-25.0.3.tar=
.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.3/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.3/testreport.txt

Thank you for everyone's contributions to this release.


Vineela Tummalapalli,

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>



--------------------------
yocto-3.3.3 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: hardknott
Tag: yocto-3.3.3
Git Revision: 0a2ca9d60f3851515a79d5aa9ddd8b4069b5a206
Release Artefact: poky-hardknott-25.0.3
sha: 0cde2e0a3a626bf1faaa3a5a77dcd86dde01cb3914700941fd657e0b9f72d2df
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.3/poky-hardknott=
-25.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.3/poky-hardknott-25.0.3.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: hardknott
Tag: 2021-04.3-hardknott
Git Revision: 567dd35d893c5d8969d41f263a24da8fbae3fc2f
Release Artefact: oecore-hardknott-25.0.3
sha: a831a78adfd040af91fc1facc59f423eb1c6c38a0bceb997734657d1ef99a515
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.3/oecore-hardkno=
tt-25.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.3/oecore-hardknott-25.0.3.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: hardknott
Tag: yocto-3.3.3
Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d1219e
Release Artefact: meta-mingw-hardknott-25.0.3
sha: 63bdafffb987704b0ea32ca51000fc9b86585dc0c3d243bf498cb90ab4b530f4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.3/meta-mingw-har=
dknott-25.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.3/meta-mingw-hardknott-25.0=
.3.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: hardknott
Tag: yocto-3.3.3
Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
Release Artefact: meta-gplv2-hardknott-25.0.3
sha: b23eb8f0cd524a569eb65881418d5334e23d0e0ab37636669953de2b7f4e576e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.3/meta-gplv2-har=
dknott-25.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.3/meta-gplv2-hardknott-25.0=
.3.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.50
Tag: 2021-04.3-hardknott
Git Revision: c7b506d11df78cfc4610db6578745eaa6220b13a
Release Artefact: bitbake-hardknott-25.0.3
sha: adfc2d81760142cc9168ae0bb965a8be5fdbe0e94bdfd6b34bce2d6f487bb9f3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.3/bitbake-hardkn=
ott-25.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.3/bitbake-hardknott-25.0.3.=
tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: hardknott
Tag: yocto-3.3.3
Git Revision:d890e8fcf0c43ea911c04e84b80c250432236010

--------------
Contributors
--------------
Alexander Kanavin
Alexandre Belloni
Andrej Valek
Anton Blanchard
Anuj Mittal
Armin Kuster
Bruce Ashfield
Changqing Li
Chen Qi
Damian Wrobel
Dmitry Baryshkov
hongxu
Joe Slater
Jon Mason
Jose Quaresma
Joshua Watt
Khairul Rohaizzat Jamaluddin
Khem Raj
Lee Chee Yang
leimaohui
Marek Vasut
Marta Rybczynska
Matthias Klein
Matthias Schiffer
Michael Opdenacker
Mingli Yu
Nicolas Dechesne
Oleksandr Kravchuk
Oleksandr Popovych
Patrick Williams
Paul Barker
Ralph Siemsen
Randy MacLeod
Richard Purdie
Ross Burton
Sakib Sajal
Teoh Jay Shen
Tony Tascioglu
Trevor Gamblin
Ulrich =D6lmann
Vinay Kumar
wangmy

---------------
Known Issues
---------------
stap.StapTest.test_stap failure: This is a systemtap issue on some 64 bit x=
86 platforms.
The fix is available in master and will be ported to hardknott.

---------------
Security Fixes
---------------
xdg-utils: Add fix for CVE-2020-27748
cpio: backport fix for CVE-2021-38185
lz4: Security Fix for CVE-2021-3520
bluez5: fix CVE-2021-3658
glibc: Fix CVE-2021-38604
lzo: add CVE_PRODUCT
tar: ignore node-tar CVEs
ffmpeg: fix CVE-2020-22019 and CVE-2020-22033
ffmpeg: fix CVE-2020-22021
ffmpeg: fix CVE-2020-22015
ffmpeg: fix CVE-2020-20453
ffmpeg: fix CVE-2020-20446
qemu: fix CVE-2021-3608
qemu: fix CVE-2021-3607
qemu: fix CVE-2021-3582
glibc: Fix CVE-2021-35942
qemu: fix CVE-2021-3527
qemu: fix virtio vhost-user-gpu CVEs
util-linux: fix CVE 2021-37600
curl: fix CVES
curl: fix CVE-2021-22925
cve-check: improve comment about CVE patch file names
cve-check: update link to NVD website for CVE details
aspell: fix CVE-2019-25051
zstd: fix CVE_PRODUCT
avahi: fix CVE-2021-36217, crash on pinging '.local'
glibc: Fix CVE-2021-33574
systemd: fix CVE-2020-13529
go: fix CVE-2020-29509, CVE-2020-29511
python3-pip: fix CVE-2021-3572


---------------
Fixes
---------------
build-appliance-image: Update to hardknott head revision
oeqa/runtime/parselogs: Make DVD ata error apply to all qemux86 machines
parselogs.py: ignore intermittent CD/DVDROM identification failure
linux-yocto/5.10: update to v5.10.60
linux-yocto/5.10: update to v5.10.59
vim: add option to disable NLS support
sdk: Decouple default install path from built in path
kernel-yocto: Simplify no git repo case in do_kernel_checkout
bitbake: server: Fix early parsing errors preventing zombie bitbake
build-appliance-image: Update to hardknott head revision
poky.conf: bump version for 3.3.3 hardknott release
documentation: prepare for 3.3.3 release
linux-yocto/5.4: update to v5.4.142
linux-yocto/5.4: update to v5.4.141
linux-firmware: upgrade 20210511 -> 20210818
image_types: Restore pre-btrfs-tools 4.14.1 mkfs.btrfs shrink behavior
tcf-agent: fetching over git:// no longer works
weston: Re-order gbm destruction at DRM-backend tear down
file: fix close_on_exec for multithreaded decompression
openssl: upgrade from 1.1.1k to 1.1.1l
icu: increase pkgdata command buffer size
sdk: Enable do_populate_sdk with multilibs
sdk: fix relocate symlink failed
wic: don't forcibly pass -T default
e2fsprogs: ensure small images have 256-byte inodes
utils: Reduce the number of calls to the "dirname" command
kernel-devsrc: fix 5.14+ objtool compilation
kernel-devsrc: 5.14+ updates
linux-yocto/5.10: update to v5.10.57
linux-yocto/5.4: update to v5.4.139
linux-yocto/5.4: update to v5.4.137
linux-yocto/5.10: update to v5.10.55
terminal.bbclass: force bash for devshell
oeqa/runtime/cases: make date.DateTest.test_date more reliable
kmod: use nonarch_base_libdir for depmod.d and modprobe.d
pixman: re-disable iwmmxt
sstate.bbclass: fix error handling when sstate mirrors is ro
linux-firmware: add more Qualcomm firmware packages
go: upgrade 1.16.5 -> 1.16.7
gnutls: upgrade 3.7.1 -> 3.7.2
gnutls: Point to staging area for finding seccomp libs and includes
gnutls: Enable seccomp if FEATURE is set
nettle: update 3.7.2 -> 3.7.3
cve-check: fix comments
oeqa/runtime/cases/ptest: Increase test timeout from 300s to 450s
createrepo-c: fix createrepo-c failed in nativesdk
runqemu: Fix typo in error message
license: Exclude COPYING.MIT from pseudo
sstate: Fix rebuilds when changing layer config
linux-yocto/5.10: enable TYPEC_TCPCI in usbc fragment
linux-yocto-rt/5.10: update to -rt47
linux-yocto/5.4: update to v5.4.135
linux-yocto/5.10: update to v5.10.53
devtool: print a warning on upgrades if PREFERRED_VERSION is set
parselogs.py: qemuarm should be qemuarmv5
stress-ng: Drop defining daddr_t
oe-setup-builddir: update YP docs and OE URLs
ovmf: Fix VLA warnings with GCC 11
update-rc.d: update SRCREV to pull in fix for non-bash shell support
archiver.bbclass: fix do_ar_configured failure for kernel
yocto-check-layer: ensure that all layer dependencies are tested too
checklayer: rename _find_layer_depends
checklayer: new function get_layer_dependencies()
yocto-check-layer: improve missed dependencies
glew: fix Makefile race
initramfs-framework/setup-live: fix shebang
initramfs-framework: fix whitespace issue
bitbake.conf: change GNOME_MIRROR to new one
initscripts: fix creation order for /var/log with VOLATILE_LOG_DIR=3Dtrue
archiver.bbclass: Fix patch error for recipes that inherit dos2unix.
oeqa/manual/toaster: fix small typo
linux-yocto/5.4: update to v5.4.134
linux-yocto/5.10: update to v5.10.52
parted: skip tests that need vfat support
parted: fix ptest RRECOMMENDS
parted: improve ptest execution
linux-yocto/5.4: update to v5.4.132
linux-yocto/5.10: update to v5.10.50
linux-yocto/5.4: update to v5.4.131
linux-yocto/5.10: update to v5.10.49
linux-yocto: add vfat KERNEL_FEATURE when MACHINE_FEATURES include vfat
valgrind: skip flaky ptest fb_test_amd64
devtool: correctly handle non-standard source tree locations in upgrades
gobject-introspection: Fix the license (add MIT)
sstate: Drop pseudo exclusion
pseudo: Update to latest version including statx fix
pseudo: Add uninative configuration sanity check
netbase: use git fetcher
bitbake: data_smart: Allow colon in variable expansion regex
bitbake: data_smart/parse: Allow ':' characters in variable/function names

--_000_BYAPR11MB3301562830160488905FC7C388DD9BYAPR11MB3301namp_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.3.3 (=
hardknott-25.0.3) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.3/poky-hardknott-25.0.3.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.3.3/poky-hardknott-25.0.3.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.3/poky-hardknott-25.0.3.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.3.3/poky-hardknott-25.0.3.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.3/RELEASENOTES">http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.3/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.3/testreport.txt">http://downloads.yoctoproject.org/relea=
ses/yocto/yocto-3.3.3/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli,<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.3.3 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/poky">
https://git.yoctoproject.org/git/poky</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.3<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 0a2ca9d60f3851515a79d5aa9ddd8b4069b5a2=
06<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-hardknott-25.0.3<o:p></o:p></=
p>
<p class=3D"MsoNormal">sha: 0cde2e0a3a626bf1faaa3a5a77dcd86dde01cb391470094=
1fd657e0b9f72d2df<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.3/poky-hardknott-25.0.3.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.3.3/poky-hardknott-25.0.3.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.3/poky-hardknott-25.0.3.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.3.3/poky-hardknott-25.0.3.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/openembedded-core">
https://git.openembedded.org/openembedded-core</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2021-04.3-hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 567dd35d893c5d8969d41f263a24da8fbae3fc=
2f<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-hardknott-25.0.3<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sha: a831a78adfd040af91fc1facc59f423eb1c6c38a0bceb99=
7734657d1ef99a515<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.3/oecore-hardknott-25.0.3.tar.bz2">http://downloads.yocto=
project.org/releases/yocto/yocto-3.3.3/oecore-hardknott-25.0.3.tar.bz2</a><=
o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.3/oecore-hardknott-25.0.3.tar.bz2">http://mirrors.kernel.org/yocto/y=
octo/yocto-3.3.3/oecore-hardknott-25.0.3.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-mingw">
https://git.yoctoproject.org/git/meta-mingw</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.3<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d121=
9e<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-hardknott-25.0.3<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: 63bdafffb987704b0ea32ca51000fc9b86585dc0c3d243b=
f498cb90ab4b530f4<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.3/meta-mingw-hardknott-25.0.3.tar.bz2">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.3.3/meta-mingw-hardknott-25.0.3.tar.=
bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.3/meta-mingw-hardknott-25.0.3.tar.bz2">http://mirrors.kernel.org/yoc=
to/yocto/yocto-3.3.3/meta-mingw-hardknott-25.0.3.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-gplv2">
https://git.yoctoproject.org/git/meta-gplv2</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.3<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db=
0f<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-hardknott-25.0.3<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: b23eb8f0cd524a569eb65881418d5334e23d0e0ab376366=
69953de2b7f4e576e<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.3/meta-gplv2-hardknott-25.0.3.tar.bz2">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.3.3/meta-gplv2-hardknott-25.0.3.tar.=
bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.3/meta-gplv2-hardknott-25.0.3.tar.bz2">http://mirrors.kernel.org/yoc=
to/yocto/yocto-3.3.3/meta-gplv2-hardknott-25.0.3.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/bitbake">
https://git.openembedded.org/bitbake</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: 1.50<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2021-04.3-hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: c7b506d11df78cfc4610db6578745eaa6220b1=
3a<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-hardknott-25.0.3<o:p></o:p=
></p>
<p class=3D"MsoNormal">sha: adfc2d81760142cc9168ae0bb965a8be5fdbe0e94bdfd6b=
34bce2d6f487bb9f3<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.3.3/bitbake-hardknott-25.0.3.tar.bz2">http://downloads.yoct=
oproject.org/releases/yocto/yocto-3.3.3/bitbake-hardknott-25.0.3.tar.bz2</a=
><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.3.3/bitbake-hardknott-25.0.3.tar.bz2">http://mirrors.kernel.org/yocto/=
yocto/yocto-3.3.3/bitbake-hardknott-25.0.3.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/yocto-docs">
https://git.yoctoproject.org/git/yocto-docs</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.3<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision:d890e8fcf0c43ea911c04e84b80c25043223601=
0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">--------------<o:p></o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Alexandre Belloni<o:p></o:p></p>
<p class=3D"MsoNormal">Andrej Valek<o:p></o:p></p>
<p class=3D"MsoNormal">Anton Blanchard<o:p></o:p></p>
<p class=3D"MsoNormal">Anuj Mittal<o:p></o:p></p>
<p class=3D"MsoNormal">Armin Kuster<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Changqing Li<o:p></o:p></p>
<p class=3D"MsoNormal">Chen Qi<o:p></o:p></p>
<p class=3D"MsoNormal">Damian Wrobel<o:p></o:p></p>
<p class=3D"MsoNormal">Dmitry Baryshkov<o:p></o:p></p>
<p class=3D"MsoNormal">hongxu<o:p></o:p></p>
<p class=3D"MsoNormal">Joe Slater<o:p></o:p></p>
<p class=3D"MsoNormal">Jon Mason<o:p></o:p></p>
<p class=3D"MsoNormal">Jose Quaresma<o:p></o:p></p>
<p class=3D"MsoNormal">Joshua Watt<o:p></o:p></p>
<p class=3D"MsoNormal">Khairul Rohaizzat Jamaluddin<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Lee Chee Yang<o:p></o:p></p>
<p class=3D"MsoNormal">leimaohui<o:p></o:p></p>
<p class=3D"MsoNormal">Marek Vasut<o:p></o:p></p>
<p class=3D"MsoNormal">Marta Rybczynska<o:p></o:p></p>
<p class=3D"MsoNormal">Matthias Klein<o:p></o:p></p>
<p class=3D"MsoNormal">Matthias Schiffer<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Opdenacker<o:p></o:p></p>
<p class=3D"MsoNormal">Mingli Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Nicolas Dechesne<o:p></o:p></p>
<p class=3D"MsoNormal">Oleksandr Kravchuk<o:p></o:p></p>
<p class=3D"MsoNormal">Oleksandr Popovych<o:p></o:p></p>
<p class=3D"MsoNormal">Patrick Williams<o:p></o:p></p>
<p class=3D"MsoNormal">Paul Barker<o:p></o:p></p>
<p class=3D"MsoNormal">Ralph Siemsen<o:p></o:p></p>
<p class=3D"MsoNormal">Randy MacLeod<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Sakib Sajal<o:p></o:p></p>
<p class=3D"MsoNormal">Teoh Jay Shen<o:p></o:p></p>
<p class=3D"MsoNormal">Tony Tascioglu<o:p></o:p></p>
<p class=3D"MsoNormal">Trevor Gamblin<o:p></o:p></p>
<p class=3D"MsoNormal">Ulrich =D6lmann<o:p></o:p></p>
<p class=3D"MsoNormal">Vinay Kumar<o:p></o:p></p>
<p class=3D"MsoNormal">wangmy<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">stap.StapTest.test_stap failure: This is a systemtap=
 issue on some 64 bit x86 platforms.<o:p></o:p></p>
<p class=3D"MsoNormal">The fix is available in master and will be ported to=
 hardknott.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">xdg-utils: Add fix for CVE-2020-27748<o:p></o:p></p>
<p class=3D"MsoNormal">cpio: backport fix for CVE-2021-38185<o:p></o:p></p>
<p class=3D"MsoNormal">lz4: Security Fix for CVE-2021-3520<o:p></o:p></p>
<p class=3D"MsoNormal">bluez5: fix CVE-2021-3658<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Fix CVE-2021-38604<o:p></o:p></p>
<p class=3D"MsoNormal">lzo: add CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">tar: ignore node-tar CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">ffmpeg: fix CVE-2020-22019 and CVE-2020-22033<o:p></=
o:p></p>
<p class=3D"MsoNormal">ffmpeg: fix CVE-2020-22021<o:p></o:p></p>
<p class=3D"MsoNormal">ffmpeg: fix CVE-2020-22015<o:p></o:p></p>
<p class=3D"MsoNormal">ffmpeg: fix CVE-2020-20453<o:p></o:p></p>
<p class=3D"MsoNormal">ffmpeg: fix CVE-2020-20446<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3608<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3607<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3582<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Fix CVE-2021-35942<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3527<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix virtio vhost-user-gpu CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">util-linux: fix CVE 2021-37600<o:p></o:p></p>
<p class=3D"MsoNormal">curl: fix CVES<o:p></o:p></p>
<p class=3D"MsoNormal">curl: fix CVE-2021-22925<o:p></o:p></p>
<p class=3D"MsoNormal">cve-check: improve comment about CVE patch file name=
s<o:p></o:p></p>
<p class=3D"MsoNormal">cve-check: update link to NVD website for CVE detail=
s<o:p></o:p></p>
<p class=3D"MsoNormal">aspell: fix CVE-2019-25051<o:p></o:p></p>
<p class=3D"MsoNormal">zstd: fix CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">avahi: fix CVE-2021-36217, crash on pinging '.local'=
<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Fix CVE-2021-33574<o:p></o:p></p>
<p class=3D"MsoNormal">systemd: fix CVE-2020-13529<o:p></o:p></p>
<p class=3D"MsoNormal">go: fix CVE-2020-29509, CVE-2020-29511<o:p></o:p></p=
>
<p class=3D"MsoNormal">python3-pip: fix CVE-2021-3572<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to hardknott head revi=
sion<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/runtime/parselogs: Make DVD ata error apply to =
all qemux86 machines<o:p></o:p></p>
<p class=3D"MsoNormal">parselogs.py: ignore intermittent CD/DVDROM identifi=
cation failure<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.60<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.59<o:p></o:p></p>
<p class=3D"MsoNormal">vim: add option to disable NLS support<o:p></o:p></p=
>
<p class=3D"MsoNormal">sdk: Decouple default install path from built in pat=
h<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-yocto: Simplify no git repo case in do_kernel=
_checkout<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: server: Fix early parsing errors preventing=
 zombie bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to hardknott head revi=
sion<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: bump version for 3.3.3 hardknott release<=
o:p></o:p></p>
<p class=3D"MsoNormal">documentation: prepare for 3.3.3 release<o:p></o:p><=
/p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.142<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.141<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20210511 -&gt; 20210818<o:p>=
</o:p></p>
<p class=3D"MsoNormal">image_types: Restore pre-btrfs-tools 4.14.1 mkfs.btr=
fs shrink behavior<o:p></o:p></p>
<p class=3D"MsoNormal">tcf-agent: fetching over git:// no longer works<o:p>=
</o:p></p>
<p class=3D"MsoNormal">weston: Re-order gbm destruction at DRM-backend tear=
 down<o:p></o:p></p>
<p class=3D"MsoNormal">file: fix close_on_exec for multithreaded decompress=
ion<o:p></o:p></p>
<p class=3D"MsoNormal">openssl: upgrade from 1.1.1k to 1.1.1l<o:p></o:p></p=
>
<p class=3D"MsoNormal">icu: increase pkgdata command buffer size<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sdk: Enable do_populate_sdk with multilibs<o:p></o:p=
></p>
<p class=3D"MsoNormal">sdk: fix relocate symlink failed<o:p></o:p></p>
<p class=3D"MsoNormal">wic: don't forcibly pass -T default<o:p></o:p></p>
<p class=3D"MsoNormal">e2fsprogs: ensure small images have 256-byte inodes<=
o:p></o:p></p>
<p class=3D"MsoNormal">utils: Reduce the number of calls to the &quot;dirna=
me&quot; command<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-devsrc: fix 5.14+ objtool compilation<o:p></o=
:p></p>
<p class=3D"MsoNormal">kernel-devsrc: 5.14+ updates<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.57<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.139<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.137<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.55<o:p></o:p></p>
<p class=3D"MsoNormal">terminal.bbclass: force bash for devshell<o:p></o:p>=
</p>
<p class=3D"MsoNormal">oeqa/runtime/cases: make date.DateTest.test_date mor=
e reliable<o:p></o:p></p>
<p class=3D"MsoNormal">kmod: use nonarch_base_libdir for depmod.d and modpr=
obe.d<o:p></o:p></p>
<p class=3D"MsoNormal">pixman: re-disable iwmmxt<o:p></o:p></p>
<p class=3D"MsoNormal">sstate.bbclass: fix error handling when sstate mirro=
rs is ro<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: add more Qualcomm firmware packages<=
o:p></o:p></p>
<p class=3D"MsoNormal">go: upgrade 1.16.5 -&gt; 1.16.7<o:p></o:p></p>
<p class=3D"MsoNormal">gnutls: upgrade 3.7.1 -&gt; 3.7.2<o:p></o:p></p>
<p class=3D"MsoNormal">gnutls: Point to staging area for finding seccomp li=
bs and includes<o:p></o:p></p>
<p class=3D"MsoNormal">gnutls: Enable seccomp if FEATURE is set<o:p></o:p><=
/p>
<p class=3D"MsoNormal">nettle: update 3.7.2 -&gt; 3.7.3<o:p></o:p></p>
<p class=3D"MsoNormal">cve-check: fix comments<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/runtime/cases/ptest: Increase test timeout from=
 300s to 450s<o:p></o:p></p>
<p class=3D"MsoNormal">createrepo-c: fix createrepo-c failed in nativesdk<o=
:p></o:p></p>
<p class=3D"MsoNormal">runqemu: Fix typo in error message<o:p></o:p></p>
<p class=3D"MsoNormal">license: Exclude COPYING.MIT from pseudo<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sstate: Fix rebuilds when changing layer config<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: enable TYPEC_TCPCI in usbc fragmen=
t<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto-rt/5.10: update to -rt47<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.135<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.53<o:p></o:p></p>
<p class=3D"MsoNormal">devtool: print a warning on upgrades if PREFERRED_VE=
RSION is set<o:p></o:p></p>
<p class=3D"MsoNormal">parselogs.py: qemuarm should be qemuarmv5<o:p></o:p>=
</p>
<p class=3D"MsoNormal">stress-ng: Drop defining daddr_t<o:p></o:p></p>
<p class=3D"MsoNormal">oe-setup-builddir: update YP docs and OE URLs<o:p></=
o:p></p>
<p class=3D"MsoNormal">ovmf: Fix VLA warnings with GCC 11<o:p></o:p></p>
<p class=3D"MsoNormal">update-rc.d: update SRCREV to pull in fix for non-ba=
sh shell support<o:p></o:p></p>
<p class=3D"MsoNormal">archiver.bbclass: fix do_ar_configured failure for k=
ernel<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-check-layer: ensure that all layer dependencie=
s are tested too<o:p></o:p></p>
<p class=3D"MsoNormal">checklayer: rename _find_layer_depends<o:p></o:p></p=
>
<p class=3D"MsoNormal">checklayer: new function get_layer_dependencies()<o:=
p></o:p></p>
<p class=3D"MsoNormal">yocto-check-layer: improve missed dependencies<o:p><=
/o:p></p>
<p class=3D"MsoNormal">glew: fix Makefile race<o:p></o:p></p>
<p class=3D"MsoNormal">initramfs-framework/setup-live: fix shebang<o:p></o:=
p></p>
<p class=3D"MsoNormal">initramfs-framework: fix whitespace issue<o:p></o:p>=
</p>
<p class=3D"MsoNormal">bitbake.conf: change GNOME_MIRROR to new one<o:p></o=
:p></p>
<p class=3D"MsoNormal">initscripts: fix creation order for /var/log with VO=
LATILE_LOG_DIR=3Dtrue<o:p></o:p></p>
<p class=3D"MsoNormal">archiver.bbclass: Fix patch error for recipes that i=
nherit dos2unix.<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/manual/toaster: fix small typo<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.134<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.52<o:p></o:p></p>
<p class=3D"MsoNormal">parted: skip tests that need vfat support<o:p></o:p>=
</p>
<p class=3D"MsoNormal">parted: fix ptest RRECOMMENDS<o:p></o:p></p>
<p class=3D"MsoNormal">parted: improve ptest execution<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.132<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.50<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.131<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.49<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto: add vfat KERNEL_FEATURE when MACHINE_FE=
ATURES include vfat<o:p></o:p></p>
<p class=3D"MsoNormal">valgrind: skip flaky ptest fb_test_amd64<o:p></o:p><=
/p>
<p class=3D"MsoNormal">devtool: correctly handle non-standard source tree l=
ocations in upgrades<o:p></o:p></p>
<p class=3D"MsoNormal">gobject-introspection: Fix the license (add MIT)<o:p=
></o:p></p>
<p class=3D"MsoNormal">sstate: Drop pseudo exclusion<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Update to latest version including statx fix=
<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Add uninative configuration sanity check<o:p=
></o:p></p>
<p class=3D"MsoNormal">netbase: use git fetcher<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart: Allow colon in variable expansi=
on regex<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart/parse: Allow ':' characters in v=
ariable/function names<o:p></o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB3301562830160488905FC7C388DD9BYAPR11MB3301namp_--
