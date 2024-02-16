Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BFCC4829E
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 03:01:27 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.10671.1708052483180046404
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 19:01:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=eAoquH8/;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2776adabc7=kexin.hao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41G209bp017127;
	Thu, 15 Feb 2024 19:01:21 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=date:from:to:cc:subject:message-id:references:content-type
	:in-reply-to:mime-version; s=PPS06212021; bh=2FWIujJHNgpyuVjJsFP
	8ZEE6gouRaa0TRizj1rDC+Xc=; b=eAoquH8/MM9rFMHGAW7c2GL5OZbCuDwiLwC
	NEtGDhy4kLr/K/whJtjtIGRLC6IKqOrV6LairhipaWS4vC1ofpVEoyvv2KuSOqkW
	J/RYt/iPFGdokREVRZhol10UlJiRZKWPdlpNdAHep1kCn+aTfd2QQ9sGOUJJpbjK
	Md9WQt4BYm6fuo/qRldub9OaxZae+lQN5xvOe9FtRAisJwGBxBs1yYUcU0ijnIVZ
	eGy7iFRUxGjD41hE79rBj8Vc9qyCihYoyLwndAWt+8A/2gD5ZfhblKr8zj3RgGtZ
	e9+fE1i9On5jtO2llFLpVwljwXhuDBJD7I9DtnYZwTJ1VDROmIg==
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2041.outbound.protection.outlook.com [104.47.57.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w69hm59gj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Feb 2024 19:01:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jMxMibjC8R6pL1tlV212/KiLdDOVRBl0yswjbn6fhYWaubjjxqsJOvq8zOqqjo0ZyyP30T+WeFw5m62NKOGcroVr/xhZN3XGGwGja8ky+6BXCad1wJRnD07z5IR3Iw21Y1WRMrqA5Me03NxXOi5ijSxG090cDQTFatrHUvrPvf84kE7humFV7JtwD68BngMGQUXqh1Pcy9CfWbudHMAoM6CiWa/WELqvbQbSj7rmgB+xt0mr+Tmdlcp2agdpzg/I7+gOmDUZaXFIyNfGyePOuG+WFJrno1wP1etoqgzVorwZcgiZVe8F6lI327C6Xd3nfSCRZtaQqLJPekNjKgNTng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2FWIujJHNgpyuVjJsFP8ZEE6gouRaa0TRizj1rDC+Xc=;
 b=SIMA99BIekxsxUAu16n7x8p32PknFkasvc/ntVE6QqUrCFovx/x7WyFwEoRTSJ76jbdsWRqoHNz6PJbp8tUXnw38z52Rvbc7DK05i6r8mXWEc0r4dq+3tK2tdEaSYE/GljQsMGk2fduyGMXZS68PtB4FMw9WDdNyiOk/0/mG9wyBYZpuV14yYzQpuGKfZWmjjzo8DlLtZ3E2BTeKQHBjGV5WodmRI4zO6GUrUPoSni+aXkYXJdRpubTeravJ18Lh7G3KIJZnq0cb6lrtMJZfZBJQkd2R0EOTVG92deYeKgVtltEnINwlRvmUMmoiDzNetL95uBIxA2XH01nHU4WMxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
 by PH0PR11MB7544.namprd11.prod.outlook.com (2603:10b6:510:28d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.27; Fri, 16 Feb
 2024 03:01:12 +0000
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::eb2:f350:d19a:61a9]) by SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::eb2:f350:d19a:61a9%4]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 03:01:11 +0000
Date: Fri, 16 Feb 2024 11:01:05 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Andrei Gherzan <andrei@gherzan.com>
Cc: Yocto Project <yocto@lists.yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpidistro-ffmpeg: Fix old override
 syntax
Message-ID: <Zc7P8Xui_1WjKIy1@pek-khao-d3>
References: <20240205102910.3778516-1-kexin.hao@windriver.com>
 <CAK18fxHRasqG=RjbFDTtHYhpiVt5zMav8qehi_p2nU6_xEh9Qw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LX4T0Os5RTW2GKie"
Content-Disposition: inline
In-Reply-To: <CAK18fxHRasqG=RjbFDTtHYhpiVt5zMav8qehi_p2nU6_xEh9Qw@mail.gmail.com>
X-ClientProxiedBy: DS7PR03CA0306.namprd03.prod.outlook.com
 (2603:10b6:8:2b::14) To SJ0PR11MB8270.namprd11.prod.outlook.com
 (2603:10b6:a03:479::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB8270:EE_|PH0PR11MB7544:EE_
X-MS-Office365-Filtering-Correlation-Id: 08f811ff-0da0-404c-de64-08dc2e9b8775
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZNMpWOyHVHRvV+0ausQ6j/RRf4teIGUIdOeFBlivpNkGF5mRE80RLp7ovxqlTLX7Cl675uLLCFDAxwgEGp+xuSle6cDoYJYCzkm1p6W36ryEFY+NrdHflohes9qRvGAo2n7DJONmpSgtojqk0tZwyu0zJdAnbiovKktBy1X1M6vgCnkzPWlKSgelu/p8p2LRR402y2ZwwGBnmQXq0B3LsCMHd4VH/VYDynGywpvj+w5dqAj6MV3kMfNlZV3fvpDJ1kNJVjUPe+4OBsKDfEIBdQdCyBWrfq8a2Vf3Y9qjUiBUQHgvClD1E8eA17ne6oPziUCwlyuk2dFWrxOn6FOCQ3/O/DBcoQJdu4zGEkQ0VqEngXcx7rN6A9aB25u7zyXLkH/dTYYtbA0SQsiHg6HGvk4Oj7SK5h1mJBLwC2rXYPY4AbDeFZSW1KPVdPo0tDNJbdM9Xl6ZJdTqTOk7QomaNwjf9bZ2Lti0+oyfiVWYdws52YcrsoHPVdKItlDvjXvpFiLqVyW4KQ4mhrdqcl4hxwVMakcT8U4xJ8gQ3yFCWa2MVZfNj45VfVaOlF5g55Lp
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB8270.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(376002)(366004)(396003)(346002)(39850400004)(136003)(230922051799003)(230273577357003)(64100799003)(1800799012)(451199024)(186009)(86362001)(33716001)(9686003)(8936002)(66476007)(5660300002)(2906002)(6916009)(6506007)(6486002)(6512007)(478600001)(4326008)(83380400001)(41300700001)(66556008)(26005)(21480400003)(38100700002)(66946007)(44144004)(8676002)(6666004)(316002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?fNsW/JSz8i9EvXWcSLp0rqJ1k1D8fLaT8vBo52fBh7oOXpa+u3D2oJS2cGPW?=
 =?us-ascii?Q?1u9f9It+ZkN2naxd+Wv141anfGaxLnqlRVeVMA59lSzKZAuKFN53E+kwTEb0?=
 =?us-ascii?Q?cJ9dKR7x564dAsT60KIwS3vD9yqzKeZN0vgkc9DG+Agbv5aQle/Om5xJV81p?=
 =?us-ascii?Q?Je/+GmrEwHMyWwTWktzFom+XhShHZswJVfGgBExjYiZKsm0EGdsSTwRM7hKg?=
 =?us-ascii?Q?UypfBtJbitLk3SudZoVzfJbc14izUFUC2bvBeB8yj/SmUSreYPSvmS5RBMJq?=
 =?us-ascii?Q?YpY9sTuFjn4Hp6EqOXoSAwdnc1dzGqV2CZWJj1EN/4MU6QyNJWUe8Gmhh3id?=
 =?us-ascii?Q?p4dbMgvJzRuaYohxANVrgW1DbjIVGNEDNlLcQqdQzaJAuQGPS+KdVydyH3Kw?=
 =?us-ascii?Q?Qce/e0HTBbyeWU+48uTQXXWfS5PvUOdVLQKHJBVxZ6Rq4FjsqCxETCWUA/QS?=
 =?us-ascii?Q?MlmUXtmGxhcWk6czTfldmfzeeml5KBxXZIT5zYQ9dX4UkTxGjsq6GCrJuXkl?=
 =?us-ascii?Q?fJ+SPw8nsKaVaacusvAwXdUr1pYu8PV86be3b5oL6o4ExOOuQU/W7YF2LGay?=
 =?us-ascii?Q?H1dMGdF/cRJDPriZ+HFzwS7uU+5Hc6lKjEX1EJjk1W/nW5VdV1HMLr7x9YIe?=
 =?us-ascii?Q?JQ/3Cm436eH84umk9gKtv5PB42XfrG2YApgy54penESTfsJpktFgNYopDHDA?=
 =?us-ascii?Q?3dl0V1zI4M03aOcBioDzCBgJ7/ehICmSUTct3hJ/R2rXEtE15HUw0GE3RVKH?=
 =?us-ascii?Q?sOvsOzC0TDrNbRbCnUA357bC3u11ZFLkZevOQRYmdN3cKYyUBuM0yOcpqEHY?=
 =?us-ascii?Q?HjH1WmmjQn8j36ODNJnk8xVtk6EJY44BRWZyKBCs6bmeG1MwVFZDDzoKvOo9?=
 =?us-ascii?Q?LMy1a+PYGL+HWLBqUmG1JcZkGO9U7hRoOJ4piQFfL5rDZVkajC8epjtk4yi9?=
 =?us-ascii?Q?6iUKsmNXJoEW17pularBYvzYREprXbxuwIekSed67kpbSsOHjB2EsoPN3H8i?=
 =?us-ascii?Q?xoh/l2J0zOVx7J+TxsWiyPBuXugk+2OzzhJ1bpiM0MdGzCLv+rcO9fzOzotx?=
 =?us-ascii?Q?OKtFlRdA84qP/bxzkwfLUcRBJBI/SOzDkGNaI7syLNy1qFFB3QWV/m/I3IoT?=
 =?us-ascii?Q?RMEd4oiz2OsjI35Fqdra0YY0zI+B38UQ7552u/p39pASopNJMpCmT7PeYwpY?=
 =?us-ascii?Q?ZLMg297LVCdGdBEwaAgOE3mzubUZM14He0Vqkx7croMCtpU0uLPJTGx37mm9?=
 =?us-ascii?Q?tQNRntSIR6zdsgL+lMrAiiLXp9QrOIueWg/4f9F32uApt6RzGtKISSn2hmv8?=
 =?us-ascii?Q?kRP+Rq9atCHMIHFxA/gK2DUY3dSlJ43y9iTslqhGQcqloW5LchzC+u+39RTo?=
 =?us-ascii?Q?6aNRkjYrWiDv6DJdipMlahCvFk0uxm5EGsyfm6ZqHqIGDcZ5bba6rG3in+yd?=
 =?us-ascii?Q?r17/HI1tKplGeoO53ZIB1fpAQIF9HqGEhuj/8keZazHCf2PQRpYiMCkOKnxH?=
 =?us-ascii?Q?//Luu8d9OWp2DASDdlhbcnnvWhocU5h7uRKGiwc5yYB+a0UdRQgrWJ4FoVib?=
 =?us-ascii?Q?mIQFYb+LNfSguypczLp37AMyIOiQa7arE0H8VtujpvCQyCTYTBCXpzoA5w10?=
 =?us-ascii?Q?Ig=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08f811ff-0da0-404c-de64-08dc2e9b8775
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB8270.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 03:01:10.9096
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hz4/TPw/vL5OV1JKWnldI7kjpGnsiCoHstiwzXVe4TZnaF4zNZO8f0gYZCJaa9MFVjjSTuH7UV6QKfWIoo5IUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7544
X-Proofpoint-ORIG-GUID: LSglBxCgeeZKH_0yie1zXLpjb-lN6IbL
X-Proofpoint-GUID: LSglBxCgeeZKH_0yie1zXLpjb-lN6IbL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-16_02,2024-02-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=882 phishscore=0 mlxscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 malwarescore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402160022
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 03:01:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62507

--LX4T0Os5RTW2GKie
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 13, 2024 at 12:23:43PM +0000, Andrei Gherzan wrote:
> CAUTION: This email comes from a non Wind River email account!
> Do not click links or open attachments unless you recognize the sender and know
> the content is safe.
> Thanks for this, Kevin. Could you push your patch as a GitHub merge request?
> That would help take advantage of the existing CI infrastructure.

Done.

Thanks,
Kevin

--LX4T0Os5RTW2GKie
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAmXOz/EACgkQk1jtMN6u
sXGv3Qf9HgEFBkYoVFoCB31LlQ0FQBmkYCpDcmRtyVe4GuQK6KGMTB2qNle3ON36
i4Syyj8rX3TjOUzLoDOzMoUBdsWDdawHIKrER4IZtkXTBc7i3GGiEtiw4Cb3Cztw
3vxAFdepmgYhO+sBvkkvxPfR3WrXJCrJ186nQPeWmeOvINMGd7mbS/tQBv/6Mb3+
Kb8h8Z2+Po8wIr+Dmp4vptaLJ9IZ0u0hRhjJNWwVzkqG/v4qPR/x3qoVLH9totdp
C58lAbUCrQFqQcl8OHz1OV9wrbIaL1/D9I8odVdYBbVObtsFamL76Hp7ow0VMlib
gC2Dz7rcIpuCsIjGufaK8d2cx9pj4g==
=V0eQ
-----END PGP SIGNATURE-----

--LX4T0Os5RTW2GKie--

