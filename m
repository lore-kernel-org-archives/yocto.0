Return-Path: <steven.monsees@baesystems.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 455C7C35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 12:29:25 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.42932.1702902558229834821
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 04:29:18 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: baesystems.us, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.us)
X-IPAS-Result: =?us-ascii?q?A2BUBAAOOoBl/0LBJQpagQkJgUaBNoEDeQKBXhuWHZxTg?=
 =?us-ascii?q?SyBfg8BAQEBAQEBAQEHAQEuARUEAQGFBgKHNCc2Bw4BAgQBAQEBAwIDAQEBA?=
 =?us-ascii?q?QEBCAEBBgEBAQEBAQYFAYEchS8+DIJVg3ABAQEBAwEsXAIBCAQJBAQBAS8oC?=
 =?us-ascii?q?hsBAQUDAQEEEwiCeYIXSK0SeIE0GgJlghUEsnwJAYE+gWmGMgGBToN9GYQ8g?=
 =?us-ascii?q?gxDgRVCgmg+hEWEEoIvBIZ5gh4HMoEJEIRTkVt9RnAbAwcDfw8rBwQwIgYJF?=
 =?us-ascii?q?C0jBlAEKCEJExJAgV2BUgqBAT8PDhGCPiICBzY2GUiCWhUGOkp1ECoEFBeBB?=
 =?us-ascii?q?ghuGxIeNxEQFw0DCHQdAjI8AwUDBDMKHQshBVYDQgZJCwMCGgUDAwSBMAUNH?=
 =?us-ascii?q?gIQGQgLJwMDEkkCEBQDOwMDBgMKMQMwVUQMUANpHxYcCTsPDBsCGx4NJyMCL?=
 =?us-ascii?q?EIDEQUQAhYDJBYENBEJCygDLAY4AhMMBgYJXiYWCQQnAwgEA1QDI3YRAwQKA?=
 =?us-ascii?q?xQHCwdKA0QdQAMLGyExPTUUGwUEY1qhSAqHEsYZBwOCX4EwmSKIJBeXTgOSO?=
 =?us-ascii?q?JhHIKgSAgICAgQFAg4IgWoIggaBAoMlUhmiIHY7AgcLAQEDCYkiKoEWAQE?=
IronPort-PHdr: A9a23:o2e7yhC9JsJEeK1fkDfNUyQUr0QY04WdBeb1wqQuh78GSKm/5ZOqZ
 BWZua89ygWRDc6AtLptsKn/jePJYS863d65qncMcZhBBVcuqP49uEgeOvODElDxN/XwbiY3T
 4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx7xKRR6JvjvGo7Vks+7y/2+94fcbglWhzexe61+I
 Am1oAneuMQbg5ZpJ7osxBfOvnZHdONayH9yK16Ugxjy+Nq78oR58yRXtfIh9spAXrv/cq8lU
 7FWDykoPn4s6sHzuhbNUQWA5n0HUmULiRVIGBTK7Av7XpjqrCT3sPd21TSAMs33SbA0Ximi7
 7tuRRT1hioLKyI1/WfKgcF2kalVog+upwZnzoDUfo+bKeZ+cK3ec9MUR2VOQsleWjdbDY+gc
 4cCFfYNMfpGo4T7ulAArQG+BQ6pBO73xDNGgXj23ash0+s/Dw7GxxQsFM8TvnTIstr1KrkdU
 eaox6TW0D7Pa/1Z1yr45ITGbxsspuqMXa5ufsrP10YvERnJjlCXqYzjJDOayPoCs3OA4uV7T
 +2glXUnqgFqojiz2Mgsj5LJipgIylDf7Ch0xps+KtKkRkBhe9GkDIdQuD+AN4twWs4vQXxkt
 Sg4x7AYpZK2eDQHxIk6yhLCa/KKb4qF7gz9WeuVIjp1hHFodr2/iRu27ESuyu3yW8iq3FhFr
 SdIncfAu3YQ3BLQ8siKUuZx8lu71TuB1Q3f8PxILEQ6mKbBKpMsw6Y8moQPvUjfAyP7nUr7g
 aySe0o+/+Wk9fjrbqnjq5OBNIJ7kQTzP6EzlsG+B+kzLxYDX2yG+eSnyL3s41f5TqhLjvw3j
 KbUqIzWKMIGraCjGQBVyJws6xOnAjej19QXgGcIIUpeeBKCk4jpI1bOIO3kDfung1SjjjNrx
 /feM73nApXNKGLMkLL6fbt+60NQ1BY/wc1F65JSEL4NOun8VVXvu9zDDh45KBC0zPjiCNVmz
 I8RRWWPAqqBPKPTt1+H+P4vLvGRaIMJojrwJfoo6+TzgXI9l1IRZ6ik0JoPZHC9BPtmIkGZY
 XT2gtcGFGcHphE+TPD0h12cTzFTYWy+X6c75jE9E4KpE5nMRpu2jbOaxii0AIZWZ2BdClCQD
 3jocp6EV+0RaCKJOsNhlCcLWqC7S4A9zRGuqBP6y71/I+bJ4iEYr47s1MBp5+3PkhE/7Tx1D
 8OB3GGRSGF5hWcIRz4t3KBjukxx0FeC0a9kjPxEEtxT/+lJUgA4NZHC0+N6F8r+WgXbfteGG
 x6aRYDsEDY6UtUZx94Vf107CtKpkhfbxS2oDrQJ0buRC9Z8prPb1GT2D8J80GrdkrgmhEUhW
 tFIN2Ctmuh47QeFVKDTlEDM3YOtc78R0TWJvFyfwHSDuglzGE5NauSPFSQEekbIoNK/40TEV
 LKjEpwtOwZa2NWeJ65RLMDy2wYVDMz/McjTNjri01y7AgyFk+vkhMLCd2Yc2XDbD04J20AW8
 G2dPAczTiGmvyrFDTNoGF6uBiGk8eR3pH6hCENhyQaMYh5t0rOv8UsTgvqRA/oYwrMDvnInr
 DN5VFaw1t7bEZyOvQ1kKa9VbMgs+0tK0HmfqhcuVqE=
IronPort-Data: A9a23:qYc7gKDz69xH8hVW/5/hw5YqxClBgxIJ4kV8jS/XYbTApD8i3zMBz
 mJMDWiAO6yIZDD9Lo0gbY6+9EhTsJHVnIRjOVdlrnsFo1CmCSbm6XZ1Cm+qYkt+++WaFBoPA
 /02M4WGdoZuJpPljk/FGqD7qnVh3r2/SLP5CerVUgh8XgYMpB0J0HqPoMZnxNY06TSFK1nV4
 4ir+ZSPYAbNNwNcawr41YrS8HuDg9yv4Fv0jnRmDdhXsVnXkWUiDZ53Dcld+FOhH+G4tsbjL
 wry5OnRElHxpn/BOfv5+lrPSXDmd5aJVeS4Ztu6bID56vRKjnRaPq/Wr5PwY28P49mCt4gZJ
 NmgKfVcRC9xVpAgltjxXDEAHX9iB7xL5Yb9GkGD4JHJjE6bWH7zlqAG4EEeZeX0+85xAWdH8
 OdIdWhVN1aFjqS8yb+gW/Jwi8E4asLsOevzuFk5lXeCUrB/EMuFHfuiCdxwhV/cguhVAfvAa
 sxfbD1pdxnNeDVFM1oMGYkikeKzwGTkG9FdgAvL+fBouDeOnGSd1pDhKufWXIGXQv5RoUHFl
 zPN9T/0DgsjYYn3JT2ttyjEavX0tTL8U54VPLm57eJxxkyUzXAUEAcRV1awvb++kEHWZj5EA
 xVMvHFx6/Fjrwr1ELERQiGFnZJNhTZEM/I4LgHwwFjlJnb8i+pBOlU5cw==
IronPort-HdrOrdr: A9a23:fFbqWKg9qBoBbuFBtMriopUctnBQXjEji2hC6mlwRA09TyX5ra
 qTdaIgpHjJYVEqKRUdcLG7Scy9qBznmaKdjbN/AV7AZniFhILLFuFfBNDZskTd8kTFn4Yx6U
 4HScZD4bXLZmSS5vyKgzVQfexA/PC3tJqGqM2b52txSzpncbhn6B10YzzrdHGfRGN9dOUE/J
 j33Ls4m9J3E05nH/hSBRM+Lpj+T8WgruOfXfafbSRXlDVni1mTmcXH+0jx5GZlb9tXq41SjF
 T4rw==
X-Talos-CUID: 9a23:NYqqym2jD9tXkIkMtEaAUrxfQs57bkfMwWrpGXSBNTc0Ev6WFHSV5/Yx
X-Talos-MUID: 9a23:L2z2KguxSgB0bXwva82niCtfN+E1/qOVDH8KzKRXsMPfOCBqAmLI
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.04,285,1695686400"; 
   d="scan'208,217";a="164273758"
X-IronPort-AV: E=Sophos;i="6.04,285,1695686400"; 
   d="scan'208,217";a="422295968"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=tuvFw0wpeF5ZDANPJ3xaqU5tTMndKeEalD8JFTdHLfznJIUTH0s5PsCu3+SA3YCIZNcgs3EqFU/Cxn7yMrSchMQZEbNHn+tqIVX1e5hniLXPUxJuyClvre7h5Z8JvHm7x1vFo8xcAH4a2MxjGF2NM2YEzf/6O9M6Sz8cWQ7u+kzwOdYZzggSYxvpEqrioSkWSJVgEuZMnlpM5o+JnMngl3ER5bfn1hEalDe4+TO6c80XY4eftz9C+5zsWpxcGZfAlhAMvFVItxXxVwi7B78fFfDktme4kL4oVUBalL2V8SDjyrusVJ8EA2W2oqJ1nOXqDB3EL4LcLsKwMFcxr/gNtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=07y1xRpxoTtJi65pnZlnqcwFQzQL9BgHI4XZ5wQMHiE=;
 b=dVjwh1hiIYBqyImkx3COEGvVASWGeIIRYPtdQheXG9NjXhFNKhz/xmKTNG4hUIqOGZPy/Bgqz0TjN/Qc32J14Pf0z5w+OuSGbMEZrUL1Fa2Uhu7UwxfyuvpWcvSaW2IDCZ4fos5T3S53wuV6nCKcQ+AZh5wng/sejnXfMYDH3Z0Y6jDJ3j7nVa58S4RK4CzOFrfTsj9QlLt5OX4y5beyUOnvNU9vIVUJgCQOaUGdtq2vhJHIok8Cirw0Uoxf4ZlWF7LOlHzDq2kzcLx7HKId6muXQ7fUQt7UYPzkjmFqZGRhTl5bqoomz0+npYGlnONysg/GI3IiAAoBus72C4rHTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=baesystems.us; dmarc=pass action=none
 header.from=baesystems.us; dkim=pass header.d=baesystems.us; arc=none
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.us>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: FW: Yocto and Red Hat 8
Thread-Topic: Yocto and Red Hat 8
Thread-Index: Adoxq8FxPXzRENO3RciOKyyFd/1K/AAAa4pg
Date: Mon, 18 Dec 2023 12:28:08 +0000
In-Reply-To: <PH1P110MB1683AE03CB7709C593AC62B49F90A@PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=baesystems.us;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1683:EE_|PH1P110MB1586:EE_
x-ms-office365-filtering-correlation-id: 86deeae1-ea55-41d3-2311-08dbffc4cac6
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 73RjZ5S8XzIjL1vw2KeLEdghXkNXXxpygTckvG3WZ5jfRnFN9fMOTHpoiAdH9o28MpGgbKW7ZPiKB1ufMW4JBLprUMH9NsjNTKz/aAt5Iyv1x7hXmea8LSp1Y+M21dRYvQ0UEyfnmnyCZo7lhZFh+DRGuR9+tQSgOsIthbEZo4LnCtPQFBpBFN4Mgtj5E7aBY/iVnImy9+RCj6F1Y3N9VTYrxC4aeIpt4+NOIf049uBXWN0HAi9WYGa1tIxEMWVYfHOYR+pFepuvhHOXj7sttdcB1jB/P/NcsM3J6d4U7HaSAhzlDEDX7O1Eu6v/KcnLC0c4Qt2ng1PdJFeM8WweqMHWJhpbaEv1Oa3KW0yFKQfdQHcZUHaIdoaxFiifL+l8eelH41rckCSaoKCMnTuMxDszXVdNZ0fO5wr1kOm3geGuHi2fDJWL0kjcQBDoEcoiS5S/7WUXHgm1jye2V2uFFR62whRxQJUmnp7owkLWhJ2t9ZwkvdyJ5h5WrA5GKZ0nHt++mZpkIhQt/MlGTkV+j9bneyhCQtKy4tbpzI1zxA2vWKcpzzS49xiB/j0LufRsLH1meeHukjeU1xY9vPfpJzfRAyAkWbjyvFb09wbMb95vmgf+jkO77UGqIykkjlpE+RehKlYX+J06CH0LzZ+Cjw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(451199024)(186009)(1800799012)(5660300002)(7696005)(2940100002)(8676002)(66476007)(52536014)(66946007)(6916009)(76116006)(66556008)(64756008)(498600001)(66446008)(86362001)(8936002)(4744005)(33656002)(38100700002)(6506007)(122000001)(71200400001)(53546011)(9686003)(2906002)(38070700009)(80162012)(26005)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hs1JYxIuVhSXWqrLMXZcyrGwubQTEgg0xGGdcyESXK+jPV+LJ0imE0dfIg1r?=
 =?us-ascii?Q?vh4KcSo7w1OXR3FuRi3z8STuni67cYxDv/GcTbdEzCvI274DAD8bTFr9P2ze?=
 =?us-ascii?Q?XLp9chb+7LLMJp1PzciswZo3qUT9EOTEp3DPdiCpPgEQBG/6XFhr0i1vnUrN?=
 =?us-ascii?Q?54/GsF1t/ge3ErCpZylclFaJ0eKEOLSgbSU+8Q1VVLb5y/MYC/AcRy2FkQ4J?=
 =?us-ascii?Q?IpRJZs0gtRgLy3BZ9rNTI5xhhbZ45n0Rg0h7I0qH/2jUeyBFcLxShLHxVNGC?=
 =?us-ascii?Q?UrTtQHQq/EpozAJzVBKxNE6y9x7BnmcJ1/sQ0DRXP7D1N46NstvRjKtEhJvH?=
 =?us-ascii?Q?zVfjwcy4qiX24evdY/VG6Ru7cM/uU5HOyskwoIgrlkQmb5Tq+CI+TtG7KWLz?=
 =?us-ascii?Q?UBv6fkW4KrfxSxYhjQ5VU4rZ4r1CfbpvItL12PY9i1+tQPOddXEpmv4D163b?=
 =?us-ascii?Q?Ymq76FA10nu2t7InUXlFlUwCCBFj+RFmAS0633kvwSfhEqODlbJETbP6MpvS?=
 =?us-ascii?Q?wtrr1ye8mbQXKcAqa2CGqxRdIWFDYtmMtZiuwt0Ody5pCvhF8jDaLbKN8qQl?=
 =?us-ascii?Q?jMw5LuMizNVFXkyG/DIcP0oKnwXL8B1W1Vrba2oESxzooEUY1JEYVfJzZXhG?=
 =?us-ascii?Q?nzd65Clg+xWNtgpCN1oThKOdf08rFy2/Jl0RrA/D7S8XtevUFXnUlUjHxybv?=
 =?us-ascii?Q?WXWudJSVuOd3N58mmM8Ws3oB5Y+6ZtlQBSkRER+H6WbdZy+LRglGWbqxbV7W?=
 =?us-ascii?Q?iwoD0z8dxrTdid948gULAIKL/Z95zETumnWbM+arglh/QuEQnFCzGrLYITxN?=
 =?us-ascii?Q?hBezsYMyzfPs11vsm9XD2voMYDyWhWvf0cFkxeSLDkmKo+4wyRPXgTuOdUQS?=
 =?us-ascii?Q?8OWHjnt5aeKKzwPVG17aKy/oJmWGJNvXK9Tf6f8xNJQZJjPHvupSL5NnNkSK?=
 =?us-ascii?Q?jzkleEtjGE5qPhXdWV19anRfj1tYkiKFYKG3qSqXnggAMDwEcbVkQZTJ13ns?=
 =?us-ascii?Q?yHaG395FUSaj/B2RciVZms/EkAoZxBbV1Vpdrqs0xwSFHkz+gNYYBkAH/F0e?=
 =?us-ascii?Q?IQ5bXuKcKbUBKWO344BOoNi5zVdqM68RZqbaVRnpGAlJiIybn+acMqxm3KQL?=
 =?us-ascii?Q?OeYezHVJRFvXBbhPGhmoMSGebNJTQsrKzjr9kDRU+VNxUufX5hHA3GjlTVYJ?=
 =?us-ascii?Q?+ZwS2TaiySz5iollQGl5XNYkHesPe9uGCKejTKNp5yGE8rpOq0zrGryrNq52?=
 =?us-ascii?Q?M5hio7Zm4+90euC1RGxh+hufHRdRfr5KQrOr1vzP6i0Hbj8TQOw/6Wt3LXCL?=
 =?us-ascii?Q?uTNFKkHI6iSWT83WVXtraQLUF88QAdvBBk0hmd5FlYIZlJK2BOiQOucSaiu+?=
 =?us-ascii?Q?m0snPKFNtEiIcarhvsnBeqrnVdImrUd9G27MBO+2AL0+/nAN55uZvt9nFR7a?=
 =?us-ascii?Q?foZcgyjFyYem+FXaYIG+cJNF+kXMlgsPMbJBzVHsecLEnVzIjdTOf2/0MeO/?=
 =?us-ascii?Q?WzvhzevmA4JZm3+j/FRb/t3MZH1wGzdlNlbY?=
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB1683FA15B6178A59B0E86CE99F90APH1P110MB1683NAMP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 86deeae1-ea55-41d3-2311-08dbffc4cac6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 12:28:08.3317
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 03b86c3a-8954-4d19-9522-e464fe9f22ce
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1586
X-OriginatorOrg: baesystems.us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 12:29:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61962
Message-Id: <20231218122925.455C7C35274@smtp.lore.kernel.org>

--_000_PH1P110MB1683FA15B6178A59B0E86CE99F90APH1P110MB1683NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Is there any documentation or guidance you can provide on porting Yocto for=
 centos7 to 8 ?
I am currently working centos7 ZEUS...


From: Monsees, Steven C (US)
Sent: Monday, December 18, 2023 7:17 AM
To: yocto@lists.yoctoproject.org
Subject: Yocto and Red Hat 8


Is there any documentation or guidance you can provide on porting Yocto for=
 centos7 to 8 ?
I am currently working centos7 ZEUS...

Thanks,
Steve

--_000_PH1P110MB1683FA15B6178A59B0E86CE99F90APH1P110MB1683NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">Is there any documentation or guidance you can provi=
de on porting Yocto for centos7 to 8 ?<o:p></o:p></p>
<p class=3D"MsoNormal">I am currently working centos7 ZEUS&#8230;<o:p></o:p=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Monsees, Steven C (US) <br>
<b>Sent:</b> Monday, December 18, 2023 7:17 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Yocto and Red Hat 8<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any documentation or guidance you can provi=
de on porting Yocto for centos7 to 8 ?<o:p></o:p></p>
<p class=3D"MsoNormal">I am currently working centos7 ZEUS&#8230;<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_PH1P110MB1683FA15B6178A59B0E86CE99F90APH1P110MB1683NAMP_--

