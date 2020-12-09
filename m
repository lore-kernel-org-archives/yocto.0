Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web10.824.1607540731279954388
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 11:05:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=RYC+3G5V;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1607540731; x=1765220731;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=zCnh75HXl+t4E7CDxQKNJJq7GYR1keS3n4ZkcXT5hBk=;
  b=RYC+3G5Vf/6MEGbPARvlMrJ9z1hmThklKHA7/9Qevcc8PYd4Tn/vF1Xz
   KldeJcTAHfMfj6NskZhl2ZihVM5DeU5pUDqHHwzQiuPool8JutsjsyhyL
   cXa2WFi0ALYUUbudXtSnRmooVN7o9Nwj8+Rkyx8e6Rrf85/Da2O0pi6eJ
   A=;
IronPort-PHdr: =?us-ascii?q?9a23=3AXa8DOx+Dlx4zIf9uRHKM819IXTAuvvDOBiVQ1KB+?=
 =?us-ascii?q?0ukRIJqq85mqBkHD//Il1AaPAdyErasb26GP6vmocFdDyK7JiGoFfp1IWk1Nou?=
 =?us-ascii?q?QttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZr?=
 =?us-ascii?q?KeTpAI7SiNm82/yv95HJbAhEmTiwbalvIBi0rgjdudQajZZ/Jq0s1hbHv3xEdv?=
 =?us-ascii?q?hMy2h1P1yThRH85smx/J5n7Stdvu8q+tBDX6vnYak2VKRUAzs6PW874s3rrgTD?=
 =?us-ascii?q?QhCU5nQASGUWkwFHDBbD4RrnQ5r+qCr6tu562CmHIc37SK0/VDq+46t3ThLjlT?=
 =?us-ascii?q?wKPCAl/m7JlsNwjbpboBO/qBx5347Ue5yeOP5ncq/AYd8WWW9NU8BMXCJDH4y8?=
 =?us-ascii?q?dZMCAeofM+hFs4nzqVgArRW8CgmtGOzhxTBHi2Tq3a0j0eQtDR3K0BA+E98IrX?=
 =?us-ascii?q?/arM/1NKAXUe2twqXGyjLDb/VN2Tjj9ofIaQgtquyRU7Jsb8XR11cgFwXYhViO?=
 =?us-ascii?q?tIfpOz2a2PkIv2SV8uFtUvmvi3I5pAFvvDevwN0giozOhoIT0VDL6zt2wJ0uKN?=
 =?us-ascii?q?KjUkF0f8WkEZtLtyGGKYR2R9giT3t0tyY9z70LoJi2dzUFx5o73RDQceCHc5SW?=
 =?us-ascii?q?7RL5UuacOTd2in1rdb+whxi/8FWsx/DgW8WozVpHsyRLnsTMuH0O1RHf9MeJR/?=
 =?us-ascii?q?pg8ku92juC2R7e5/1KLE02laTVJJ4vzqI2m5EOv0rDGSr2l1/3jK+Qbkgl+u+o?=
 =?us-ascii?q?5Pj7YrXhvp+cLYh0igPgPasyhsyzG+M4MhIBX2SD+uSzyqfj/UvnT7VOlPE2lb?=
 =?us-ascii?q?PZsJ/cKM8GpaC5GxdY3ps/5xqlATqr0s4UkWQDIV9LYh6KjonkN0nTLPzkF/uy?=
 =?us-ascii?q?jFuhnC1vyvzcMbDsAZPAJWXZnrj7Z7Zy8UtcxRI2zdBY+p1bFKkMIOn2Wk/trN?=
 =?us-ascii?q?zYCQI5MxCsz+bnFtp90oQeVHqJAq+ZNqPdq1qI5vksLuSMeIMZpCvxJ+Ij5/H0?=
 =?us-ascii?q?l3M2gkUScrey3ZoXc3C4AuppI0CCYXb2ntgBFmIKshI/TOzsllKCTSZea2uuU6?=
 =?us-ascii?q?4m6Dw2CpiqAZrHS42jmrCM3Sa2EoVTZm9cC1CMFXnod5+DW/cJcC+SOdNhnSIa?=
 =?us-ascii?q?Vbe/TY8tzxSutAj8y7p8MOXb5DYYuIn429dv+eLTjhEz9SdoD8uD1mGNVHt4kX?=
 =?us-ascii?q?8PRz8zxKx/u1Byyk+f0ahkhPxVDdxS5/RVXQcmMp7R1Oh6C9HpWgLdZdeFUlan?=
 =?us-ascii?q?QtK6DjEtSdIx28UOY0F/G9q8kh/DwzCmA7gPl7yEV9QI9ff/33X0b/x0yT6Szq?=
 =?us-ascii?q?AjyVomT85nOmivh6o5/A/WUcqB2VSenLqtXaAdxzLWsnaExnaJpFtfUgN7TePC?=
 =?us-ascii?q?R39VLh/Hqt/l4WvGTqSyEvI2NQBdztaYLalHYcGvik9JEqTNItPbNiiUnGGrCB?=
 =?us-ascii?q?uTgvu3cIf0dmNV922dNXNF2UhH5mqLKwU4QCKmpXnTASdGH1vieFL37eR7szWw?=
 =?us-ascii?q?SUpinFLCVFFoy7fgok1dvvebUf5Gm+tc4Co=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DfAwCsH9Ff/0LBJQpiHgEBCxIMQIRug?=
 =?us-ascii?q?TgKlWADmkuBaAsBAQEBAQEBAQEIARgNCgQBAYRKAoIAJjgTAhABAQYBAQEBAQY?=
 =?us-ascii?q?EAYZRDII3KQGDEQEBAQECAQE5SwQCAQgRBAEBAR4QKAodCAEBBAESCIMfgmYvr?=
 =?us-ascii?q?D10gTSEPgGBGIUVCQGBLo8gPoERgxg+gl0FgScBEgEJhg4EgxMoP4EWbmu3Wgc?=
 =?us-ascii?q?DgnSJHosyhmkrhFGdZpN8iwyReYQeAgQCBAUCFYFtgQpwcIMFAQEyCQo9FwINl?=
 =?us-ascii?q?yaFRHQCAQEzAgYKAQEDCYlLgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2DfAwCsH9Ff/0LBJQpiHgEBCxIMQIRugTgKlWADmkuBaAs?=
 =?us-ascii?q?BAQEBAQEBAQEIARgNCgQBAYRKAoIAJjgTAhABAQYBAQEBAQYEAYZRDII3KQGDE?=
 =?us-ascii?q?QEBAQECAQE5SwQCAQgRBAEBAR4QKAodCAEBBAESCIMfgmYvrD10gTSEPgGBGIU?=
 =?us-ascii?q?VCQGBLo8gPoERgxg+gl0FgScBEgEJhg4EgxMoP4EWbmu3WgcDgnSJHosyhmkrh?=
 =?us-ascii?q?FGdZpN8iwyReYQeAgQCBAUCFYFtgQpwcIMFAQEyCQo9FwINlyaFRHQCAQEzAgY?=
 =?us-ascii?q?KAQEDCYlLgREBAQ?=
X-IronPort-AV: E=Sophos;i="5.78,405,1599523200"; 
   d="scan'208";a="469272040"
X-IronPort-AV: E=Sophos;i="5.78,405,1599523200"; 
   d="scan'208";a="235920801"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #zeus -broken atomic modsset
Thread-Topic: [yocto] #yocto #zeus -broken atomic modsset
Thread-Index: AdbOVtZf/BqN2rUMSqWB3UCyixhNegAMIc0AAApN9SA=
Date: Wed, 9 Dec 2020 19:05:10 +0000
In-Reply-To: <53d63337-3220-8f3e-0249-e6daf0b3a046@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.48]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.164F21C7D4A92E9F.11239@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


So, this is expected ?, no current work around ?


-----Original Message-----
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Khem Raj
Sent: Wednesday, December 9, 2020 2:00 PM
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto #zeus -broken atomic modsset

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.



On 12/9/20 10:12 AM, Monsees, Steven C (US) via lists.yoctoproject.org
wrote:
> I'm building/running zeus 3.0.4 on intel platform...
>=20
> Can someone tell me why I might be seeing the following error and how=20
> to resolve it ?

https://patchwork.kernel.org/project/dri-devel/patch/20190905181834.6234-1-=
daniel.vetter@ffwll.ch/

might give some context

>=20
> X.Org X Server 1.20.5
>=20
> X Protocol Version 11, Revision 0
>=20
> Build Operating System: Linux 3.10.0-1127.13.1.el7.x86_64 x86_64
>=20
> Current Operating System: Linux sbcb-default=20
> 4.19.135-intel-pk-standard
> #1 SMP *PREE broken atomic modeset userspace detected, disabling=20
> atomic*
>=20
> MPT Mon Nov 2 15:55:20 UTC 2020 x86_64
>=20
> Thanks,
>=20
> Steve
>=20
>=20
>=20
>=20
>=20
