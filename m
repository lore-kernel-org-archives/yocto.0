Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web08.9854.1614349631237089067
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 06:27:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=cb/FM5eU;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: sByJtUk2J45THOItxiZQknJJAO0mxio1xgmaSm8WPF/rUOzsZIDVMxNZ7jnxF3QZCSN8G2leKh
 0B354+SNKy9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="205421733"
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; 
   d="scan'208";a="205421733"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2021 06:27:10 -0800
IronPort-SDR: Srd0rv6PamhCE7Ho0rUQdV0ReygdGd9bJ6X5xknnfUBNV5fmjeRUoECRS32pLUqIqBkkSvFz37
 2NX8O/xGEzNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; 
   d="scan'208";a="425352957"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by fmsmga004.fm.intel.com with ESMTP; 26 Feb 2021 06:27:09 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Feb 2021 06:27:09 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Feb 2021 06:27:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 26 Feb 2021 06:27:08 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 26 Feb 2021 06:27:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IYjGN55B8aWETokYR3nXwmVVnGkrgGiuW1YaFw4GlA8KVbRcYwif9ebZEd2lYlQrAKGA/Hs5bcGdBfxHoNfV6b/GO14tbnMfb13+WkvYpn3vq7dMpVJGKLW5pyh5v3YYE64HjEatf/mrxYragW2ZE3AEi3gpJS8AGb7nsEGxNx0b22rW8bejHjEfD2cHTAL+oh7CCRqbQ+3feVgaGF4znJPQSxprn8Hdt10jylqtL3bD7LxpLuHG2qY4wB3IcDnTaTqC2/3C4ZhUXr5Zu2SN4cNyNltVUzr+Wl555qB7odXxC9zQ5MuiAch4hcP+CGal4KvMpVBsUfM/3B40esVYDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQBOUTezHtOA+KKBg9jTcviR4spPhRn7yWizPhWOaxw=;
 b=awfQ0AtUqTaz2u16D6KHGSJCV+SlTfBxZ9IPoth1GkPMHEHX8s1Q+uKqlQrCFCK96ZNEqc6nJOqkzy+O7Jyi0rUl89SPj0iIt5iNVImw2uSbX1oerOLysYk9wSVr2pGCUO+9LvDQj4yd8rAtb8HAPs+tzgBqMGIY6SMKg64/hWrQhUIk/dGz2uRoxgULsss6fjXuSuE6ZJmzKTshq0gc6APCxYO4WLQltftZP1VxDyypH2/mI/p3I6Pk5L1XtxA2+fwSkcRSJv1jM+6yGVeNbUCkiHqaDCISOGsBHB3C9C/NtmQFNMfVygQAE0+hK4y6iitYJm35j7cfcqQLp36gYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQBOUTezHtOA+KKBg9jTcviR4spPhRn7yWizPhWOaxw=;
 b=cb/FM5eU+sFvWfmDvqhzgSAFsdVvTYcLq0TCdvt8Osrho8tW9YHQvean7vjGigwUZxowpfPYrVyVD3Ks9J6wkGsYCXswpeVKFvYjd7CC+V4ayer40zVSTLIuyq4MEz3FxCFcmqSBtW8VJ85j/vQIq8dNy5hLSivtZLiZDBpRq4U=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB2631.namprd11.prod.outlook.com (2603:10b6:a02:be::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.32; Fri, 26 Feb
 2021 14:27:07 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::92d:48c1:669e:364c]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::92d:48c1:669e:364c%6]) with mapi id 15.20.3890.023; Fri, 26 Feb 2021
 14:27:07 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto][PATCH] lib/oeqa/selftest/cases/reproducible.py : updated test to faketime in future when buiding the second test build.
Thread-Topic: [yocto][PATCH] lib/oeqa/selftest/cases/reproducible.py : updated
 test to faketime in future when buiding the second test build.
Thread-Index: AdcMS3AQc1I44axVSyG2Ek7GQSS2Sg==
Date: Fri, 26 Feb 2021 14:27:07 +0000
Message-ID: <BYAPR11MB3624BFC0DC46E8D974F02F70E39D9@BYAPR11MB3624.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [60.53.116.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4667fe5c-5e6b-4cc2-f5a7-08d8da6298ae
x-ms-traffictypediagnostic: BYAPR11MB2631:
x-microsoft-antispam-prvs: <BYAPR11MB2631F2CD6B9598DBB16E5AB6E39D9@BYAPR11MB2631.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xvOeXfB0houxcnjk7b1AmaIlcYyvSvE8PydmNbxwQO8r4dCXk5dDyJH7e5CkwCKSDeX3Zemip3r8Du7gd8vHl/kL/6IHkKr5i3ylOZaOBQFiqV6yzEaBg1AAeQzu2JwTCH3ZEK4qgjlNzw/e/YXUmuBphTMOP77T5otn08QiR7qeMgbahzqP23q4Wu12SbLPkwjRluudO/OzSM1sLLPa6/9krUXYxOUCYacoM8FZxWD3rOJAbogJgRB7zm8uq3Cn4j+bz+ApNUdGq+pDiiTowqeJuN8Eim5WjsBxA17dOWZCsuLrQ9uIq6OpPwfpuSHeyFXR7wZHReZEj3eg34YYhKM2SE1z/tFezFvLap6UYSskW68ZiQwcZ9fCP4b+q98ebcLZorYaCeHRBAaOwM/lJCWUd49cwhUybDoGOFGBqmts5d6SjOpzIkT7Km/PxlPv7+q99Mskm9i3kiAehZar4SzdqS4ZcyDO6S+QbhavzN16ZU4imdWT2zdQaIiZzKwVqVesmwBi+qq3H9aEZ1Ms6A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(396003)(366004)(376002)(346002)(39860400002)(8936002)(66556008)(9686003)(5660300002)(316002)(76116006)(8676002)(186003)(64756008)(52536014)(66946007)(6916009)(66446008)(33656002)(86362001)(55016002)(478600001)(66476007)(7696005)(26005)(83380400001)(2906002)(6506007)(71200400001)(15650500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?waNKBxMoFVp/Bdh0wTjU1IOrxjEcLLoS8OT4DNzVJTOFtxNRdlCFvgoWIy0d?=
 =?us-ascii?Q?XHMJuZWmhBwN1onG0gDLIQCU66S90v+7Xv7zDdUfpVbzqY+QnnMFdSBo52dp?=
 =?us-ascii?Q?ltHKeeJQtEf/RaDc5BSwleEDjNO8kBfIf957tmUID1UNDkWl0XoW8QdEjY5i?=
 =?us-ascii?Q?TBTn4Y7/3krlk0GAqAEEtQImzOds8D55rF/CUfwfaF4l76iPPkMy5hYRcmgf?=
 =?us-ascii?Q?LvnymwZIDHaIC3WtlZt5zQHqZHqfjBS0gcbkLCbQqoxl6Ppc3fER1xoLLXnm?=
 =?us-ascii?Q?PRJc3pXRLMV4HSx1oHfNgB3ZUv4LsenlQoykLi7dI8UKfKob5gJvtH9fa88f?=
 =?us-ascii?Q?2T3Pc9nytdkLoaZWNA7aXVhcgIbwBV18pn1ivfozkbAEBC6W36RJMrQx5Ci3?=
 =?us-ascii?Q?7hsM+8IZv2Tdm+kfjJOVgos673ZNayZR2I+oAfcFMFA1Sy5n2d3e7U0mxHhD?=
 =?us-ascii?Q?HnYJtTnlhO8OQX5SiCVIzPX2ItRO3Mu+YNstkYkcYO7Hj0BmuFl0G9DJLKbV?=
 =?us-ascii?Q?MULdyCMVw/LLp74Z9sDbmZTOIXyRoPp4gYodn+AAC0OOMjcM5m2+L2tVTXVC?=
 =?us-ascii?Q?aZY0+PR5PzRF2Q/JZL7d9SxyzuhGLO1EuhLCl87Lws6sDGuaaR1/0zMmlPvA?=
 =?us-ascii?Q?Xs+JDkNGA0bmUZMLojaLc8XNHlEFmdvHpRCHIYYPqYTmRU7Ig+E6nnHQDxpH?=
 =?us-ascii?Q?2F32s5nTJBVI4Xu6muYSsqJfh+l3VE/hInSpYTKCOvXV+mMbJKRftWjah/Qq?=
 =?us-ascii?Q?27z8G4RdocoqSo2poDzajqH8X3CJpn9uHFrsOnWfycqaxqouHrW4kOR3gyCK?=
 =?us-ascii?Q?Jt+lcZLujY/YlFNHn+l+pFLQ8+39RhmPdx0ZkjXU14VHfPgybvj2aJKwldh0?=
 =?us-ascii?Q?g3tRt2AAHDI4KWqh1pn8fnNBBaGeewWB62SGgKINICZQKAL1RaRZ4kvofSQI?=
 =?us-ascii?Q?SOhMaO2w/V0D78ykPnf2xnLDaqWt8E3K4rxrKRH6hWlNqAhpqsJ/XmTLftqP?=
 =?us-ascii?Q?mUMizrdU6hRmPmLhXUIc6lwGnlSCdU6kpvjTzLydLYCz+vmiQ9Qbh4td7R8K?=
 =?us-ascii?Q?3GDRX7EvC9IkZolCm/IpIYsruWDLOcvnpFbVHLw1K1BoISrsWh44kFZbZlKX?=
 =?us-ascii?Q?x/zUI1ws/WDed5IYjI65HDdZV8CJl5TAx2TNqx7qP/SUMP/FcYo4t67mCyKM?=
 =?us-ascii?Q?AGoiHN+FWOGgN9DooPQjxx3e95TbUQxPcqWuAiphzmzUVnvkY1rGf9U7ozsF?=
 =?us-ascii?Q?I+HNctaQJLrNJnlW4A1mEFh3H63ZyKHNSKqgj2zNhhmFVgLwaa7ffsIv9mOy?=
 =?us-ascii?Q?BMfl2yi3NK5Xe8VywlH9t4qc?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4667fe5c-5e6b-4cc2-f5a7-08d8da6298ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2021 14:27:07.5468
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FLyvpASuXAJEnTM6Gd26Nh5hNg1urW3wCWLGQmPf5Thq/C8S157o0LOBf3ZIqVVnMEesG9CY+HcU0diA/wnO7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2631
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


This update will ensure that recipes are not including time stamps by creat=
ing an image with modified system

 time. It uses libfaketime recipe to fake system time to advance by 3430812=
2 seconds.

Signed-off-by: sangeeta jain <sangeeta.jain@intel.com>
---
 meta/lib/oeqa/selftest/cases/reproducible.py | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/meta/lib/oeqa/selftest/cases/reproducible.py b/meta/lib/oeqa/s=
elftest/cases/reproducible.py
index 8849c95..831a304 100644
--- a/meta/lib/oeqa/selftest/cases/reproducible.py
+++ b/meta/lib/oeqa/selftest/cases/reproducible.py
@@ -180,6 +180,7 @@ class ReproducibleTests(OESelftestTestCase):
     # will test that and also make the test run faster. If your sstate is =
not
     # reproducible, disable this in your derived test class
     build_from_sstate =3D True
+    use_faketime =3D False
=20
     def setUpLocal(self):
         super().setUpLocal()
@@ -227,7 +228,7 @@ class ReproducibleTests(OESelftestTestCase):
         bb.utils.mkdirhier(os.path.dirname(dest))
         shutil.copyfile(source, dest)
=20
-    def do_test_build(self, name, use_sstate):
+    def do_test_build(self, name, use_sstate, use_faketime):
         capture_vars =3D ['DEPLOY_DIR_' + c.upper() for c in self.package_=
classes]
=20
         tmpdir =3D os.path.join(self.topdir, name, 'tmp') @@ -256,6 +257,1=
8 @@ class ReproducibleTests(OESelftestTestCase):
                 SSTATE_MIRRORS =3D ""
                 ''')
=20
+        if use_faketime:  ##sangeeta
+            # This config fragment will enable to fake system time
+            # advance by 34308122 sec
+            bitbake("libfaketime")
+            find_binary =3D "find . -path '*/image/*/libfaketime.so.1"
+            full_path_to_binary =3D runCmd(find_binary)
+            binary_path =3D full_path_to_binary.split("./")
+            ld_preload_path =3D os.path.join(os.environ.get('BUILDDIR'), b=
inary_path[1])
+            seconds_add_to_system_time =3D "+34308122"
+            cmd =3D 'LD_PRELOAD=3D%s FAKETIME=3D%s' %(ld_preload_path, sec=
onds_add_to_system_time)
+            runCmd(cmd)
+
         self.logger.info("Building %s (sstate%s allowed)..." % (name, '' i=
f use_sstate else ' NOT'))
         self.write_config(config)
         d =3D get_bb_vars(capture_vars)
@@ -282,9 +295,9 @@ class ReproducibleTests(OESelftestTestCase):
             os.chmod(save_dir, stat.S_IRWXU | stat.S_IRGRP | stat.S_IXGRP =
| stat.S_IROTH | stat.S_IXOTH)
             self.logger.info('Non-reproducible packages will be copied to =
%s', save_dir)
=20
-        vars_A =3D self.do_test_build('reproducibleA', self.build_from_sst=
ate)
+        vars_A =3D self.do_test_build('reproducibleA',=20
+ self.build_from_sstate, self.use_faketime))
=20
-        vars_B =3D self.do_test_build('reproducibleB', False)
+        vars_B =3D self.do_test_build('reproducibleB', False, True)
=20
         # NOTE: The temp directories from the reproducible build are purpo=
sely
         # kept after the build so it can be diffed for debugging.
--
2.7.4

