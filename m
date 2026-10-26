Received: from act2-mtaout4.csiro.au (act2-mtaout4.csiro.au [150.229.7.136])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.36172.1792988497731231304
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Oct 2026 21:21:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: message contains an insecure body length tag" header.i=@csiro.au header.s=selector1 header.b=Nh/hX4Pm;
 dkim=pass header.i=@CSIROAU.onmicrosoft.com header.s=selector1-CSIROAU-onmicrosoft-com header.b=T8n4NwIH;
 spf=pass (domain: csiro.au, ip: 150.229.7.136, mailfrom: prvs=752d37bc3=kevin.buckley@csiro.au)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=csiro.au; i=@csiro.au; l=588; q=dns/txt;
  s=selector1; t=1792988498; x=1824524498;
  h=from:to:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=n50kkk/gQW1pByAfKRkIK+MAltvGKO+4eRE5lIGSBpE=;
  b=Nh/hX4PmlZalvIv/9ZczArFhR8WbN8MvqXg844QpYGI1RRyqOIkGUDyg
   c2Amfd9DMWMBNLzJ2qLRuhnEkeEjdnDNAl7EDUr8z1EqCOWoZper8rAmX
   AT0gOPB+92T+rN23yPXmWXkdIekE5EUpz1Qdvi0rz93hyKKoVS+pvj9Nb
   K4elFKWbfePaZauRSdAGI5igOMuPkmH64JjpmKvkab4rsSnFhZfavTS0w
   PVLZzUSbIN/uJ1NDvMXuvkBtI0RffvV32kMIHC1TcqDactMJifEUx31gW
   EAy7ZYJzPkVix499ip1XZNNDiHSKfFnSKK/3Kc5URmNnwkUMvGZzig+Pu
   Q==;
X-CSE-ConnectionGUID: E0GpTAr9SBWttm9IwqhUmg==
X-CSE-MsgGUID: sYpTA2gpSgiqDTxpRYs4LQ==
Received-SPF: None (act2-mx-ext.csiro.au: no sender authenticity
  information available from domain of Kevin.Buckley@csiro.au)
  identity=pra; client-ip=52.101.150.19;
  receiver=act2-mx-ext.csiro.au;
  envelope-from="Kevin.Buckley@csiro.au";
  x-sender="Kevin.Buckley@csiro.au";
  x-conformance=sidf_compatible
Received-SPF: None (act2-mx-ext.csiro.au: no sender authenticity
  information available from domain of Kevin.Buckley@csiro.au)
  identity=mailfrom; client-ip=52.101.150.19;
  receiver=act2-mx-ext.csiro.au;
  envelope-from="Kevin.Buckley@csiro.au";
  x-sender="Kevin.Buckley@csiro.au";
  x-conformance=sidf_compatible
Authentication-Results: act2-mx-ext.csiro.au; spf=None smtp.pra=Kevin.Buckley@csiro.au; spf=None smtp.mailfrom=Kevin.Buckley@csiro.au; dkim=pass (signature verified) header.i=@CSIROAU.onmicrosoft.com
X-SBRS: 4.2
X-IPAS-Result: =?us-ascii?q?A2HIZgBv1N5qjhOWZTRaHQEBKwsGAQUFAQIBCQGBXAcBA?=
 =?us-ascii?q?wGBVQIBAQE7KUIBSIEUBFSEWJFHhGuZYoEjA1cPAQEBDQEBFAIRFhQEAQEDB?=
 =?us-ascii?q?IUWjgMlBjYEDQECAQMDAgMBAQEBAQEBAQEBAQEKAQEGAQEBAQEBAgQHAhABA?=
 =?us-ascii?q?QEBAQE5BQ47hglGAQyNP4EmAQEBAQEBAQEBAQEBHQINKFcEJBEMAQE4BA0BI?=
 =?us-ascii?q?gIZDQIELxUSBIMVAYIkBBIDECcUthOBMoEBggwBAQYEBIJi2EwYglIDBoEfL?=
 =?us-ascii?q?AIBAQEBAYN6hGABgXGEQIcUgTyDQoJVhUmCaoImehKCZoVnjWYJgUEIFANZL?=
 =?us-ascii?q?AFVExcLBwVjgQUDKi8tbjIdgSM+Fy9YGwYFgR2BBwQTdSprgQddgSspYSGBC?=
 =?us-ascii?q?IF2AoJRgSVbAgFJQQ4HRVMJJUMSRyQiCBIJARMaLguBGjU8CSZBFQxkCxoFY?=
 =?us-ascii?q?ggCDQx7ORA1DW09NwoLGQQ9kjyERAWZVK9YBwOEHowilT8GDwQvg3EBpn0uj?=
 =?us-ascii?q?nGJaSONZ5VzhRsCBAIEBQIQCIICCIF0bIM7EkEZD447gR0BCIJDhRPHeXk9A?=
 =?us-ascii?q?QEHAgcOAwuBaJIAAQE?=
IronPort-PHdr: A9a23:qK7gHBbpMmdInHLo7hEgqLP/LTFN1oqcDmcuAucPlecXIeyqqo75N
 QnE5fw30QGaFY6O8f9Agvrbv+f6VGgJ8ZuN4xVgOJAZfCQks+I/okonBsuEAlf8N/nkc2oxG
 8ERHEQw5Hy/PENJH9ynInbpg0eVxANXHRP6NAFvIf/yFJKXhMOyhIXQs52GTR9PgWiRaK9/f
 i6rpwfcvdVEpIZ5Ma8+x17ojiljfOJKyGV0YG6Chxuuw+aV0dtd/j5LuvUnpf4FdJ6/UrQzT
 bVeAzljCG0z6MDxnDXoTQaE5Sh5MC0ckk9OXlDG7xK9Ua7O6zPQp8Nz+xOZHO61aJkwRSqNz
 IAoFBLSpXoDFhEC2nn6358V7upR9S7xoUBZ3K/0TJ2Laup0f7vAUtk2dEx+TsBeRm9MPry8T
 9okBu0uArwBhI6lngc/jljjL1DzWbnm9x5JmU6v5rM66b8ZSw+eggUlTttJtnuOnvrvC6M0F
 sKP0LSLwDjdX9BP0hGgy4nOQkx8gOu+R6xbapH74BgvJQHMqUTP8qW6OTiVyeQSrjOR6rdsX
 vOVqVV9rxBchwir5ZYglYnq34UUkmL56QtCmtsudYjrAF4+YMSjFoNXrT3fLYZtX8c+Fnlho
 z1polVnkZewYHJPzYRiyg7DLfeccpKPpBv+B66KOTktonVjdfqkggqqt1C6w7jfW9e11hBgs
 yFGltTdnnsW1gbUrMGaGbNm5kn0/zGJ2kjI7/1cZ0U9lK7VMZkkl509iJsV927eFSzylVTeh
 7SXbEJi8/X7o+jkY7CzvpaHLMc0kQDxNK0yh9aySfo1KAkAXmWXuKy82bTv8Fe/QeBipcYXq
 I7wjdbdI8EarbS+GAhbzsAo7BPX4y6O9tMekDFHJVlZIleCn83kK02IK+v5F/D5ikn+2DFsj
 +vLOLHsGN3EM2TDnbH9fL189185qkJ7zNZR4IhRA60AJ/S7U1H4tdjRBBs0ewKuxOOvBNJ43
 4IYEWWBSoyULqLU93WV7eErLvikb5QUojG7IuVkgpymxX41lFkBfLW4iIMNYSPwFfBnLkOFJ
 Hv014pbVz5S50xnEbSs0QzRNFwbL2y/VK89+DwhXYutEd2GQ5DojaydmiygH4dRIGlbWTXuW
 T/lcZuJX/AUZWecOMhkx3YnWKagTckLyBqtsALr47F8L/DTvCQF/8GGtpA996jImBc++CYhR
 eeQzWCLCUtplWAMSi4e17t+u0s7w0rJgs0ay7RIUNdU4f1OSAIzM5XRmvd7B97FUQXEZt6VS
 VyiT71KGBkXSdQ8i58HaFonXtCyyx3Tw2yhGL4PkPqCGc589KWUxHX3K8tng3/byKksiUUnS
 cpTJAjEzuZ+8QbUHYvAj0Seke6ja60d2CfH8GrLw3CJuQlUVwt5UKONWn5XRUbIrNK/zF7JT
 LujGJwsKQpbzoiLN+ovCJWhjFlLQuviJMWLZmuwn2mqAhPbjriIbYfsZyAcxHCAUg5dy1lVp
 Cvec1FvVULD6yrEATdjFEzieRbl+vUk7XarC0Ik00eBdEx70Py8501w57TURvUN07YDoCpkp
 S9zGQP3/N/ICtzGjRdqf6FRcPs2+1Zd0iTQqkYuW/7oZ7AnnVMYfwlt6gnN2gt2DMNqjMMpq
 H475AFpKLifllpcPWD9v9i4KvjcLW/8+wqqYqjd1wTF0dqYzawI7ewxt1TpuAzB/qUK+G5my
 d4T2mbOvv0i6SIZSpPrVQA+6koiz4w=
IronPort-Data: A9a23:urF3T6OtNfqyj07vrR1pl8FynXyQoLVcMsEvi/4bfWQNrUom0mNUx
 mEaDTiEOKzfYTbzfoojPNm/p0oHucfVmt5mGnM5pCpnJ55oRWopJjg7wmPYZX76whjrERoPA
 /02M4eGcYZsCCCM/n9BC5C5xVFkz6aEW7HgP+DNPyF1VGdMRTwo4f5Zs7dRbrNA2LBVPSvc4
 bsenOWHULOV82YcGn4Z7auFtCRusJza0BsEvkYzbOx8p1TXkX8YFvo3fcld+FOjGuG4tsbjL
 wry5OnRElHxpn/BOfv5+lrPSXDmd5aJVeS4Ztu6bID56vRKjnRaPq/Wr5PwY28P49mCt4gZJ
 NmgKfVc4OrmV0HBsL11bvVWL81xFYAe16f7CGLuiuas01HDIlrz2vVTCU5jaOX0+s4vaY1P3
 ccpeAg3NkmourrumvS8V/VmgdklII/zJoQDt3p8zDbfS/E7XZTERKaM7thdtNsyrp0UW6+GP
 oxANGIpNUWojx5nYz/7DLodkfmpgD/VbjZbrF+EjaEs4nLUigVsuFToGICNIoDVGpU9ckCwv
 VPew02jDQkhO92G5QaV6kidnbPrpHauMG4VPObjrKI16LGJ/UQCDxYKUnO/oOKlkQivXNlDL
 FQO/SgjprR081akJuQRRDW9qX+A+xcBQMZKGuk74QyE0bbd8QGfXzFcF2YZMY1gs9IqTzs30
 FPPh8nuGTFkrLySTzSa66uQqjSxfyMSKAfueBPoUyMou/b7nKgp3ynlccp/Ff+UkcT1JDT/l
 mXiQDcFu1kFsSIc/4yGlW0rbhqpr5nNCwco/RnNV2ak5w5wf5KsdYuusAGDtK4YddffSUSdt
 n8ZncTY9PoJEZyGiC2KRqMKAa2t4PGGdjbbhDaD/qXNFRzypRZPnqgJvVmSwXuF1e5fI1fUj
 Lf741852XOqFCLCgVVLj32N5zQClvO6SYuNugH8a9tFeJ9qcwGbtCppf1b44l0BZHMEyPllU
 b/CKJ7EJS9DVcxPkmDqL89DiuVD7n5lmgvuqWXTk07PPUy2OCTNEe9t3ZrnRrxR0Z5oVy2Oo
 48EbJDUkkUEOAA8CwGOmbMuwZkxBSFTLbjdkO1tUce+ZA1gHWAqEfjKxr09PYdimsxoei3gp
 RlRhmcwJJvDab/vcG1mqUyPrJvkRpdlqjQyIETA+LpuN2cLOe6SAWR2S3fzVbI89fZki/dpJ
 xXAlwNsHdwXIgn6F+whUKTA
IronPort-HdrOrdr: A9a23:a1mzIK/LTpddR9e1b8Juk+ECdr1zdoMgy1knxilNoENuH/Bwxv
 rFoB1E73TJYW4qKRcdcUjpAtjJfZquz+8N3WB3B8boYOCGghrgEGgG1+ffKlLbaknDH4JmtJ
 uIEJIOQuEYb2IK6voSiTPQe7lP/DDtytHKuQ6q9QYJcegcUdAD0+4WMGamO3wzaBhNBJI/Gp
 bZ3cxaujqmd00Qa8SwFlMFU+LAq9CjruOqXTc2QzocrCWehzKh77D3VzCewxclSjtKhZsy7G
 TflAT9x6O799W20AXV2WP/54lf3IKJ8KoNOOW8zuwubhn8gAehY4psH5WEoTAOuemqrHo6jd
 XWpB8kHsJrr1fcZHu8rxfB0xTplBwu93jh41mFhmaLm720eBsKT+56wa5JeBrQ7EQt+Ptm1r
 hQ4m6fv51LSTvdgSXU/bHzJlBXv3vxhUBnvf8YjnRZX4dbQqRWt5Yj8ERcF4pFND7m6bogDP
 JlAKjnlbZrmBKhHjPkV1tUsZmRt0cIb1O7q485y4uoOg1t7TJEJo0jtYoidzk7hcsAotJ/lp
 z52+xT5cpzp4ktHOxA7a46MLaK4iame2O3DEuCZVvgD60JIHTLttr+56g0/vijfNgSwII1g4
 mpaiItiYceQTOdNSS15uw/zjndBGGmGTj9wMBX4JZ0/rX6WbrwKCWGDFQjidGprfkTCtDSH6
 /bAuMhP9bzaW/1XYpZ1Qz3XJdfbXEYTc0Oo94+H1aDuNjCJIHmvvHSNPzTOL3uGzA5XX6XOA
 p1YBHjYMFbqky7UH7xhxbcH3vrZ0zk5Jp1VLPX+uACobJ9RbGkcjJl+WhRyvv7VwGq6JZGAH
 eWCImX7Z+TtC2x4XvC6XlvN15UEltViY+QIk93mQ==
X-Talos-CUID: 9a23:zTDzKmNWY9x5Fu5DdXFI7HI9AJEeWELB0HKBAlChCVtsR+jA
X-Talos-MUID: 9a23:KD4pGQnYoy0xLokBAKG6dnp5Bd9Uyv6hEHsCkIwqh9mcDx1rZxOk2WE=
X-IronPort-Anti-Spam-Filtered: true
Received: from mail-australiaeastazon11010019.outbound.protection.outlook.com (HELO SY8PR01CU002.outbound.protection.outlook.com) ([52.101.150.19])
  by act2-mx-ext.csiro.au with ESMTP/TLS/TLS_AES_256_GCM_SHA384; 26 Oct 2026 15:21:35 +1100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XOPrRPUG/v7CIbJVvfbR8ohIRrB/5YfjzPmTB+t7BqPhRi3QNkIttFI7/T1Jv52kw59FrAr47RLlJ3C4vqn2eY36rqpkWyEP9vN14qWI5PUXW3vQ6Z2KhLMMsOGjnChC7qD+7STcSCCnAsWWlzWNt12xkMzxzZWp8LfCqo1jzjy2z8rU3yf6pbZpJnXT00RZarV+Ezaynai9b4kRBq+Lrx/HxaxaYuWzoDT6OSkAvcAdHGt+AQPfDTuHM58Xowq7+2tUAVG19YmHfvwlq74ZVoXMltzgS2pEvttbRMRHcce2AzteVvRtnMwz3JPOPMjP6lZcYgYTdvcJfiXOSMen7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n50kkk/gQW1pByAfKRkIK+MAltvGKO+4eRE5lIGSBpE=;
 b=dYIblk71oyqOBoRVjEvUkVOs8BrtN3NHt5aYSj8ZsDIng/veBQpz4poOZnnhColyjP5RxOk3QTq8gL+lHBpCbJOQF3/6pJR450RczNKYhvu2VGh/4urWcBBabw5MfDr3YbVyjlzetaWOlLWtRz4hg2t52jK30TSJp5TNWTLMdYaG+yFTn2i4ffpKDjsN2SuwClvY7Ec9v5+UaamGF/lkCx3knRYZL6GsJPib0vwyxbp/pyWnoVT68225K+xXtcqq2AXb+6J8usNwfdDbveYoviX9eFY2qwiQaKd17vLja26ukKHcGNjXscIG7CgkBjsqIH5U3tZlw57VS37JHVnKrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csiro.au; dmarc=pass action=none header.from=csiro.au;
 dkim=pass header.d=csiro.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=CSIROAU.onmicrosoft.com; s=selector1-CSIROAU-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n50kkk/gQW1pByAfKRkIK+MAltvGKO+4eRE5lIGSBpE=;
 b=T8n4NwIHDtv6xbipuGbDYNWxngy+eTWhH9CaoGW21Co0Q4YK+5B1752aUIiwY1SvhR3P2f06am9a/ng2ZGrWlN/JRtu+eevXKqcN5KinX45IrZrvCs3BA9hZjaOy73A7nchwhwu3bm5dcyRJS2lyEMXlK9dwhK1oi0ZUtFS25s8=
Received: from SY0P282MB6047.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:30c::6) by
 ME7P282MB644738.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:2a3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.569.6; Mon, 26 Oct
 2026 04:21:32 +0000
Received: from SY0P282MB6047.AUSP282.PROD.OUTLOOK.COM
 ([fe80::da5:3464:8efd:3253]) by SY0P282MB6047.AUSP282.PROD.OUTLOOK.COM
 ([fe80::da5:3464:8efd:3253%7]) with mapi id 15.21.0569.005; Mon, 26 Oct 2026
 04:21:32 +0000
From: "Buckley, Kevin (Pawsey, Kensington WA)" <Kevin.Buckley@csiro.au>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Yocto Project Wiki: Main_Page: Small typo
Thread-Topic: Yocto Project Wiki: Main_Page: Small typo
Thread-Index: AQHdZQF6+KPG6AuXpUakCH36NgZwaQ==
Date: Mon, 26 Oct 2026 04:21:31 +0000
Message-ID: <589e7d5c-3c03-4bb9-ba79-c3644bb8365f@csiro.au>
Accept-Language: en-AU, en-US
Content-Language: en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Betterbird (Linux)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY0P282MB6047:EE_|ME7P282MB644738:EE_
x-ms-office365-filtering-correlation-id: 652e5ffd-7b81-419d-723b-08df33189d3e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|23010399003|1800799024|366016|38070700021|11063799006|56012099006|261022115727099003|261022105027099003|261022075727099003|261021121427099003|10067099003|18002099003;
x-microsoft-antispam-message-info: zckDTqnaGFX6jjYCB83y9crt+QIVnzh7LnuDXD1ov2c+DM9TlReAK9Kwd6cPcKeEKBF72uHxqevohBT0YTFQVV2y8ppNBopi0JZjSycwrPgvJlYcCtZAiR9reIAJ8GNQCudJjFc+iFRksRuHM1haqHkWlywgxUBMtRTCjR4B76SUVaNKch/P5RkUeDqFBL4uXzoETp4lcxjplSSlzdGTMS7mqQfbme2XR0Na+GLQ4nKeUiFkEuKudh3HL4bz7T0BI5Fux6Zsz0EGuIIu1+TqC3XSUXKur81tg5+lVRfP4pYuDYHgD+Lzw3XpEj76hpOptKIL7ND8MuYiiplZGpr/BetsyxFYZRYO8SiBKWvI/YddbbkNKo8DFm64F8irzqJzp0Iyj8cOqQDWLBkKf7FKu2HoC8kzraPcz17XKIGN2YTAtGNmVvxsHe4NJndkQQxhcPTtZgT3Wprkr74JEQeLK0dupzQz9tO6A9vixhBEDOuW1k3YAIhtbLkyOYwBsEb6z9hx60jv4oGDjBqqx2OEQ5kF7nqyhegYO1kBfYaMmJYgtfMD5EW0GhCVVyV17+LaciAhr6LZFrwIizkfdp9pSb0rKHRU454M9XHfopib2yRqYaqv3dQcvB6XPfU2/m6a3IV4Nyp1/dbHDNS3poai1YRJ+dd04LfuYYBeGbpeqCc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SY0P282MB6047.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(38070700021)(11063799006)(56012099006)(261022115727099003)(261022105027099003)(261022075727099003)(261021121427099003)(10067099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWdOMU1qL21RcStKaGxRbFBuOCtBdFRyODU5QnJzN3pLWWxrTDFiV3VkZmxr?=
 =?utf-8?B?MGc4ckFnS1NlNUJJcmlwVFExU2tSZ2FvNkRteExHMkdld0xVRzE4bkYwdGJW?=
 =?utf-8?B?cDZ0ZlQ5dHJaeHVCdDEzRnpqNFUzdUtKTHJ3MlRPRXI2dHE1QnB6Q2dVMVo1?=
 =?utf-8?B?anRNNW56eTJGczVIN3VpOE5WT1NwVUJ2VGRLb0FLeVo2bkdGeEpCenlrY0pn?=
 =?utf-8?B?OW9SdFJkMGk5ZDFYRWtwMmFDS0Yva1c5VUlSN3hsRWw2dElFSW5jWnBPbEJE?=
 =?utf-8?B?V05oaU0rcmoyZFF5RDBhcGVkOHRQemZOWnNRZFlUVGFPQ2xuNSttWFVVS284?=
 =?utf-8?B?S1QxckVCUk1RL0JZOFMxT1RTUnkwT0ZqSHNJVUV3QVYxdEM3MXZ1NUdJV3Ay?=
 =?utf-8?B?VGRuMDkwTTlYNjNmSVRZbVprZkRHZkhUdUw5bHNQSm1FbXdBQi80YmFhQU4r?=
 =?utf-8?B?MkRhbk15VGtEZ3pVNnk4dnVISklIRlQvUlJHbGZYRmlPWWRHWjVSWTFwc01G?=
 =?utf-8?B?Zzlvdyt4bDNDVlUybkRrTHlFbzZlaC9yQXVTZStWTWIwSml6U0oreGo0VW1l?=
 =?utf-8?B?OHpaMTBDYjkvY0g4Vnd2bkpmOTBmeVBWNWY3SVVwOHVOM0dlMVdoUnBqSVZs?=
 =?utf-8?B?WjBmWWtwUzhLSXpxZ2ZQM09Ka0c3R20wZDNvdCtRT3cyNGVVT3M3N0NaM0xz?=
 =?utf-8?B?c3UyOHkvU0pWS1ZOVEtXS0MwNjJRSFI2NDBKejdDcDVHNkRZWUZGV0oxYXNs?=
 =?utf-8?B?U1hQa0JTMHQrOWRSbHBQT3pNZ290SWIweUtCeWJaVEdLaHRLOEdUVkY2NDh3?=
 =?utf-8?B?K252SFVQQWc4c2RkOE51bndQdXlMMkNURGI2WDlMWUZoK3p6V2xTS3FXRVZm?=
 =?utf-8?B?TjNCaS96RUNMT2xFMEw5MGNUZy90UGxCZzFjUERQOE9jT0lOaDN2N3JmdTVT?=
 =?utf-8?B?U0RBcklVaEJKdTllc0dIMGMwOCszcWhZY1VzRDkvd056SWljbEhHaUoyK2dU?=
 =?utf-8?B?QWlNOEQ4RTU5RFVDelJmTERzSzdLYU1JNjlnNTZ3L2hqQnVRR1BZK1JNbkxV?=
 =?utf-8?B?NEMvV3A5ZzM1MnhYRE9KdVlheDRuUXhQK0NwakxUUUVXUHFlN2QyaHM0VlV3?=
 =?utf-8?B?c21vNVEyUGxOWWlla1NqSWYwbUs4UHNoQ3dvRkZBRml4OFV3dVczenU2OWdx?=
 =?utf-8?B?dkVUOVZhMlhvZytrQ09XSVo5L05BRmdSWG4wRURwVEJWZTUrd29WY0ZIL0dW?=
 =?utf-8?B?RmNjT3FjSWlZaHdPZGxHazZyNjdhT3YzTURaOFQ0NFRYWnZ3USt4MkdZM3Q4?=
 =?utf-8?B?TFhIMU8rU2lXbjV3TjhNREVRd000VEl5TndQR25ub25DcDcxNytpUVh5RERJ?=
 =?utf-8?B?Ry9XNysrckdzMko2dWVjSGFSWWgvRlNqV25abmJPMFliRWkrUFo3dHYwRVpz?=
 =?utf-8?B?RXFMUVVmVko1TW1qT1k4UDA3NytPZ1RhVTlnUHVrZGEyam9DL29KYUswKytE?=
 =?utf-8?B?czhnNHVEVkEraVBhUGJpdFNEdHRiM3FlK0dLOUlUUm9HZ2Myb3RldFA3enBK?=
 =?utf-8?B?bDdmdHJCNytMUWxiM1VYVzRTMHl5QVhkWVBUU3g5Q3I4RXpHVmdsV3ZLK0kw?=
 =?utf-8?B?Z3EzNDdoYnY5RklEUU5VR0xjeGJ5T1ViazE4TFdxaUJ0R2g3ZTVVYk43TTVN?=
 =?utf-8?B?V2p1ZE9WZkp4YnNsWXg1WUhRQUx2VTRwQ2xCRTIrRm9uRUtLUUo4SXM2dEVi?=
 =?utf-8?B?VEluRzI1VWZRWHY5NG9EVng3QURCTTVtc0cwbDFqK29GUTJQbFJEaU9uaVNX?=
 =?utf-8?B?MFFmaVU0MFN4MHFMRXFhOXFVY3cwdGdCNVBHR3ZsazIrd25zQi9zNE9YRXJm?=
 =?utf-8?B?QnE5OUJjNlJxeVBPcUw1SDQ5bFFkd29pdHNVRzBKdi9xcDZDQUsrUWxqTTlj?=
 =?utf-8?B?djkwb1h0V3ZwZTlFbDU0UGt6aU04Ry91OHNBZkVtZ05XM2RraWhHL3FlVThn?=
 =?utf-8?B?TnZZdlRrbDBrZ09Xay80Mkk2STlQUnBaKzczL21SaGs0TFhzOGhDbjV6RjBy?=
 =?utf-8?B?UWNkTEk1QnQwWExCbEFMQnBib0hYZW00NXQvaXFjNDNwMmxOd0dTTE0zRlhy?=
 =?utf-8?B?M2F1MWJQUUZUOFp4MXdnRnZqaStmQmN3clpaTGNyRnFZM0FmbUhOQlFaZHM4?=
 =?utf-8?B?Q3pxLzRYaUlYSS9ZK04xNFNYR2w0b0xUMUg3UWpBQ2p3TW1Hd25YcEFWWFpu?=
 =?utf-8?B?T0VpTXNiaFpPenk0OTdqMWJRL2N5RUQrMGpRRTFOWktySlZ6SXEzdDNLT2JD?=
 =?utf-8?Q?VdxZo2dEOhB5fqlk7D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FF39D109314AF146BA36A6738C878FDB@AUSP282.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Cerq6WZCOhTDuwQS6mpfeqzVm3hyP+fNRKteA7q8I49KzKKqdoHgxu0G79Hc8k1W0gX1BGHmol4UN/XBLo+bACGI0uegcdD1gdUk7GqPBVOFxbVrQBWpetz4x0A0XuPdjYgNkZM3bdh+gPVMDk0c9MZZRrJ0klj1YvaAAzduRuebbBCxlwb+22zO350w9onnEGktYzq5H67RDw5FWqPNN10YaBjgUC4BFDZfohcvYA/kLnI1BnZ4gFz8ZMPXYhQgyt8kPe8FTZIP93ngdaSJKYZWwBwb7xGlMYIgkUa8NxkuXZhmgvI7MkehPl/Q2yy6/sg5ZqOlvcWKuWmp2M8iLQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: C0ABG1QKr93u3WqHwtoyfBgXbK7bEoZIfF8SSlLC7cQVCIlG0xwtTDel00yJi5kx9SdLthBFFxmZyIHUynxnLYL+X/N5Vf+/LoxckSi0/rqoU/mQyAA4Sh/yLIgxuOmKuxBF/OgwWby/qostKzUeaBlntm3zX69QrInx7yZ+VxwAZldB082CIf0hkqR9jf3O2pZd+ioK4len9R8ij0jETzOsMZQNsM7u7Bowingb7fnVMaiaDuNR4s1FPpVzIsqoYvFF/vZ1lmia06JQ2lA6umn+HGIXCvFGDdcActnqi6p7UWtHHDgSQWT7XdXLuX1HGehEHiNiw+FreDtaW4wWpw6eUU/AUYeSc+s/fm1YZw05bc57CGNyOmlYahR24wF8e5d/bEn5Jwtzml6OqB4wRAPUfnExchlJ6cOqC1nhXgdCtp+NwMtFg2JHSUsDqPQJ+XQd5xzgl0DxH62RVY5Tr2Zjy0BZPXd4EHVy863ddzZ/1CHR+giOr1KOoYcQ/if+UN/lc3/XOMe+O0lV14aus76wdTsFsn9q2WfHfiD4KV79KgHe8iCUJ4hesoM+NoZguZs7FNSxe9g8YrO/BIIe3IJpjKIFMNLC/tVdnlppi/k=
X-OriginatorOrg: csiro.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY0P282MB6047.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 652e5ffd-7b81-419d-723b-08df33189d3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2026 04:21:31.9818
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0fe05593-19ac-4f98-adbf-0375fce7f160
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 65GDwCWuScFSn8eInE6i/3fYG6i45kLiQifEJo1vZKzkjIhKuLv9hTIjPdI7NK9r
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME7P282MB644738
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Mon, 26 Oct 2026 04:21:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66787

T24NCg0KIGh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvTWFpbl9QYWdlDQoNCmlu
IHRoaXMgdGV4dDoNCg0KPiBXaGVyZSB0byBOZXh0Pw0KPiANCj4gVGhhbmtzIHRvIHRoZSBxdWlj
ayBzdGFydCBndWlkZSwgaXQncyBwcmV0dHkgZWFzeSB0byBnZXQgeW91ciBmaXJzdCBMaW51eCBp
bWFnZSBidWlsZCBhbmQgcnVubmluZy4NCg0KdGhlICJpbWFnZSBidWlsZCBhbmQgcnVubmluZyIg
ZmVlbHMgYXMgdGhvdWdoIGl0J3MgbWlzc2luZyBhbiAidXAiLCBzbw0KDQogICAuLi4gZ2V0IHlv
dXIgZmlyc3QgTGludXggaW1hZ2UgYnVpbGQgdXAgYW5kIHJ1bm5pbmcuDQoNCm9yIG1heWJlIG5l
ZWRzIHRvIGRyb3AgdGhlICJhbmQiLCBzbzoNCg0KICAgLi4uIGdldCB5b3VyIGZpcnN0IExpbnV4
IGltYWdlIGJ1aWxkIHJ1bm5pbmcuDQoNCkhUSA0K
