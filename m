Received: from NAM04-CO1-obe.outbound.protection.outlook.com (NAM04-CO1-obe.outbound.protection.outlook.com [40.107.69.44])
 by mx.groups.io with SMTP id smtpd.web08.8833.1619074582185422188
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 23:56:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Now/NEOS;
 spf=pass (domain: windriver.com, ip: 40.107.69.44, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H+PRHxm/U0aWLmi1EdZ2BgHlmDNGR8AL0qEVB+T//enSvRy/uzjlBh8JqIkTnQkBY3MmphnKBd8iWRomUo0ahc29r7YOoAoLRpDJ3vLrZerS35Fixf8PUZKiO+W4naFXUnjSWJGSnslXfO2fKqlcENm0eRMZckZgfv6OE01E535/HbouEvqfjiOKljBlBQygCj6Yy4DeCg+p8ramWztUIDT9vC5qNWwQcyFtzlHzxfkginJ5+pjyZHv9JrVMZ8s18xvggo6OVfeSHn4U7wTh0dAh5a5d5dEhDKYC13e+yikxkCHfFAinxh/hL16mEwpmtAQl8Vk3S1+REjU1i+iIdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZoZKO2ccQ+jTPafLzaI7dQJ5o8HIME/Ly2vEkpyEBs=;
 b=h8/ecSnEKt+tjm8V2FHNr21FRx/96ylgWdzUk0D0w4qFqqOyBOEZ0GIzhPCCGN+0mboodX5xJT28wnNVD+9J4Tji3ATrqLkDI7AQ0vQGbxKcMONoIUeEhGMQ95fRXJhvkaLHaZIrVGop7ylT6z+yoruYqDUiQaMu/RK06TqiR88AaISgtySdfcVG5o1QS4AJMoHoVnPCChxUpZ78diVXsvRWqEnfjPQLO4ghvAKJRWu+xo57kL/lFESxvdwHBolp6mFYlbR3Yky/5qtDm5v/ToAGunfOGiQLHKFwIiNWCcd81OWa5kn+gmOYFiX+GGbsTBDSzCIdteuRpRGnDX/bgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZoZKO2ccQ+jTPafLzaI7dQJ5o8HIME/Ly2vEkpyEBs=;
 b=Now/NEOShp+dFf4Ql6w8YPQuRttfpu9Pn8MF8fTltD0ogbpvZtzp+o1nnhtuk3fBiiAUR9sx/EyfGz5WnAMXG+YzuOWmtdYSyVjrjOSytoF/Jdn7YR+5GipA7Yj7ceO8m8ZlGAmhdMQDTTw/Oss0G7+tQRwQIxvpwuzzsidvQSI=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Thu, 22 Apr
 2021 06:56:20 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf%4]) with mapi id 15.20.4065.021; Thu, 22 Apr 2021
 06:56:20 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	jason.wessel@windriver.com,
	mark.hatle@kernel.crashing.org
Subject: [meta-openssl102-fips][PATCH 0/6] hardknott fixes
Date: Thu, 22 Apr 2021 14:56:03 +0800
Message-ID: <20210422065609.143415-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BY3PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:a03:255::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BY3PR10CA0023.namprd10.prod.outlook.com (2603:10b6:a03:255::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Thu, 22 Apr 2021 06:56:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d73df17-d724-45ef-0c3e-08d9055bbc03
X-MS-TrafficTypeDiagnostic: MWHPR11MB1789:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1789A8379509F161E4814A64F9469@MWHPR11MB1789.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NvVn2rE7tgfQLIi29i76qKZIIT+oBeoqkZatUcjEOgQYPrQoPXUJn/a/fhYb3D6hjH6xX7XgYsC50dut/IzhuNRUP/IudB1rJ6aDo4/qU+nOBHx2//12hB8ceEIEHb+u2bdiPjtXn5EWFK150JSxpra2E04s6OmuDCEUFu5/cyq5bSLGOW98t36ncNlOZVHQpDjQ6p1J+rNWz4YnuaR24UkluBD9xpGhKQnn1Nf4geU2fPJmcOIcLUeSOgtYCyYPdeWas8Iz17WNz+CHxK04f5iLe6ujIz2d6pxs+fI97iLUDpx1lbrSRBYSxQOn2vPXYyJ/fQsEfOvjEY+EFoKqaBkpopfTA4ZAjzZcdB9bxL4ooK+/r1Vg7Zi9rk/eIoE9F1d5GkEw6/xDWNfSLhoY2Hi4PvTLsciuNhjNi7M8YfimIWPxT9MzicYgMhZYBWIAWBEryk/q/OzXnQW6kjSvMwI11lRdbHYV63p4Et9bx2Y4yQXCdwBtUNRz0j+rU386GtqW2anxYVNXNFF7SO10yEE89CilHZSbCO98zo/WVUwYg/EWA6700mbkOgNhgDhw3rEMH2u6/IcwN+SAX18y2gpVhx5iSVDJs2qTBB/7lU+Oy7mp9xL8YKoosoeTP5biOO9p33kiaG1wlRgGwUecFlkXsm72OGC9TIPjY4zVCNM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(366004)(39850400004)(346002)(376002)(86362001)(26005)(38100700002)(6512007)(66556008)(5660300002)(2906002)(66476007)(186003)(6666004)(38350700002)(83380400001)(316002)(52116002)(956004)(36756003)(6506007)(8676002)(478600001)(66946007)(2616005)(8936002)(44832011)(16526019)(1076003)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?fYzE4wtLBFgphC7+b4m96Jeo4E1XUXmJnsCrjeVbwwqeHkpYOcvcjUOwUf+1?=
 =?us-ascii?Q?MLKSuF5uu4N5gusrXgl8x0L17Q7MJA7woU9nJ7ECWO4zTuk/zMGva8iz6LmB?=
 =?us-ascii?Q?CVlj6hcFPXmBZqn69VwDSmruFmjbtHTXzZVxpdYKnNIm+oLnpYvQ/JJCf8Yd?=
 =?us-ascii?Q?j692LTYlmMg1s6ppCkghTrz8OtRM0oD4UBPqQScH/4LiEexxD8vPXIiUJGe7?=
 =?us-ascii?Q?UXSeJZE/1djCz0+WhnjTUOM6L3CiJrfYguAma1JDUoylrvhFoez3JqKhB8dH?=
 =?us-ascii?Q?J5tn5oLua2cEtHMDhfJZ7QeeYYAUVoQ/JQCf078m/HP64LJYjvl8msLQxxu3?=
 =?us-ascii?Q?zJxyU3pSal77CkxvSV96nUWq0rSxXyaghc760at0Ga+8DP6K69QiEvFUe/EN?=
 =?us-ascii?Q?TAVjet9pSch4dqRX/IGhrZ9CHTwO4LTnOwpGUVv8WIeAJYKlihBcNocfYzzk?=
 =?us-ascii?Q?DWMBh73Fh9j2kVSWmpXxQPL5EgSI6wGJTtbcUN+f4DhXP9sL2AQz5mUCMFyM?=
 =?us-ascii?Q?PojWvlSN/H9TqBij5SOP7bVUe422Y4T/7heJMUih0EjgmIlha8LPnO5mtptH?=
 =?us-ascii?Q?W7jrnmNXRBZSnNotO+f//3/i3bdAAZ8Boe/CtC9HziNWL4tJ6DNAf+WGRjHp?=
 =?us-ascii?Q?1+u2mXIpOUwYSawJN5r1sfMQ2i5Glpd3GLWHXZ3EDnZhrKl86f9vUn1kV2Vk?=
 =?us-ascii?Q?VW+bFrSynv1X4VtmMa+bzLq1AryuxPMa9L2YJCMxwLo17+Mr8YWnFvJYZ/UR?=
 =?us-ascii?Q?rLwLBxlIf9mw30ecCH14NMbb4/EypNhRtZDlHjap/mPNGav/JdH027ltO8/R?=
 =?us-ascii?Q?3JZxoZ4Ge6mVu4HwBX2wF0aKKeiuHS3SPbMf+a1Ir18onkoD1p98kF5eOBZi?=
 =?us-ascii?Q?ZnKsY8JhS7709Stbtg18s50rgtLiMNXtIaY8f7kxEkA8mgN3xwUbfOMRii8T?=
 =?us-ascii?Q?n4Xz+DCXlzafeN0gLME9QXns1QiWoilaDxOygk+0keSyXAwxtmhJI/92wd3Q?=
 =?us-ascii?Q?67u5gRPpFkS3HnbIpfV5RvOHLqxl8Z0kpVZsLblXH4uNBmdqZiY8Gze4fxiM?=
 =?us-ascii?Q?YuJFZoY69K9ffmMOiaHWQaK6ORzcpeioDnVeBN2nB1BsLl6kkswy10A5HEzc?=
 =?us-ascii?Q?OzpD/yEp1/zt4dLe/OKECM5NBrdm+JLCi8tkLSYe4vsz8hTenTEqG9jVKF16?=
 =?us-ascii?Q?jU8G8w2OahcwuZBis4rm2W5Gk3BZlf15I2e+o9HTxm+k4fiSwFox3xVUpcPw?=
 =?us-ascii?Q?I4KeElkZ23abaKlE2nP87saUAsxJp3kKDfi0iR/HmcTkw4u/GQb5hKwZml7K?=
 =?us-ascii?Q?8WtIcJZPDkWPP+x+mfpxpgbW?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d73df17-d724-45ef-0c3e-08d9055bbc03
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 06:56:20.6464
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: clbStwV6wuvGvCXptIuPyQz8pDUhoWDKeogIiu23xiOgnCtcPW+oR1hD8CHsG3yd8uMe1CuTqVGdd8zz/XWjuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1789
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain



Changqing Li (1):
  openssh: refresh patches to 8.5p1

Chen Qi (1):
  layer.conf: add hardknott to LAYERSERIES_COMPAT

Yi Zhao (4):
  README.build: add "Known Issues" section
  openssh: refresh patches to 8.4p1
  openssh: fix the double free error for ssh-cavs
  openssh: set kex->sessin_id via sshbuf_put in ssh-cavs

 README.build                                  |  28 +++
 conf/layer.conf                               |   2 +-
 .../0001-conditional-enable-fips-mode.patch   |  46 ++---
 ...ps.patch =3D> 0001-openssh-8.4p1-fips.patch} | 173 +++++++-----------
 ...1-ssh-cavs-fix-the-double-free-error.patch | 161 ++++++++++++++++
 ...avs-set-kex-sessin_id-via-sshbuf_put.patch |  45 +++++
 recipes-connectivity/openssh/openssh_fips.inc |   4 +-
 7 files changed, 327 insertions(+), 132 deletions(-)
 rename recipes-connectivity/openssh/openssh/{0001-openssh-8.2p1-fips.patch=
 =3D> 0001-openssh-8.4p1-fips.patch} (73%)
 create mode 100644 recipes-connectivity/openssh/openssh/0001-ssh-cavs-fix-=
the-double-free-error.patch
 create mode 100644 recipes-connectivity/openssh/openssh/0001-ssh-cavs-set-=
kex-sessin_id-via-sshbuf_put.patch

--=20
2.25.1

