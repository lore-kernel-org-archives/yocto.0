Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.4529.1622785304399569575
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jun 2021 22:41:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=U3ncInJL;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=1789c2f2c2=zhantao.tang@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4B1FF38C0872
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 05:41:43 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1545fg03027156;
	Thu, 3 Jun 2021 22:41:42 -0700
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
	by mx0a-0064b401.pphosted.com with ESMTP id 38ya82g4gt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jun 2021 22:41:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c7mSD0jMDeIIMRBiME48QifTQJL/eowl3CCoItK1jrimTKsMnLALyqrZh4jKzvMPFU1o6lTdGmIhcpwRheLsuQFps6DFr3cOGikF2r9mbZTmYUhq6mN7DyZguCkv1Y6SUGwxUw6EPP4QvuUCgZnXHi3/tMismN11KSNd69DiQ8CnLhGkNq75N7CASzn+Er8IUdn3pgOiK1e6B5VvRPJ3Zo401Uetfknh89klInhOraMU+D688S9YJFTwIuHeeCgDUXusZZ7ocPWgHu9Pgnvj5rXFwSG8AKxqGWM60ejjXH4/+2KC3HTCtHiKEzn7Ifba/X3eTl9gYLK5cyLkeb5hZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SG9pvcTJTdnsEOGdeq6kL6Vq9w7gNxjX2ZdvikNseYg=;
 b=HlPztkz1LXeg8+gSSgivALp1kxmZqu2Dltd815uaEAOHEQBMjIPeswfIryW3nPui90to8IXuPS9hbzABacfgCRdmjMPZMd1QZY4cIcIAJo5evpnk9SrQc013CjX4a1SwtVkSCSs+WVAtdR0ppWsFoUjrEmTi+qtawhSyw7vmolZ6LcPtIl210u3GDiaXhgl6kPb+SWOjzXjV0QsWSnwDxhidbfKzmcIXVPegzYC+Ql9ywRoFehkCubW0a4QtxdLM2yQKpuqhv6HGeKbMvX+kG6yJ5a5SRIz+hXu+TMk/jfZXjfEFNv2igat4M3xCawBVxzD4G66dN3jNaL8UDho/JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SG9pvcTJTdnsEOGdeq6kL6Vq9w7gNxjX2ZdvikNseYg=;
 b=U3ncInJL0w+0bzn+eONBQbBLax2LHBLd6xckNUErCdDiy2ApDi0B9kaxl5sw+G4i9r9VUFlRLJTCT4VX+5B6eGPmOGsvvYtsPvE668RDIw/vtoXmS7eBiv69SSfK3qtB0vhHFVZZCxcNrBosijtyJrFk6N66JNvxAt5Wu8fDPIc=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from PH0PR11MB5077.namprd11.prod.outlook.com (2603:10b6:510:3b::17)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Fri, 4 Jun
 2021 05:41:39 +0000
Received: from PH0PR11MB5077.namprd11.prod.outlook.com
 ([fe80::dcbd:3d93:856a:bf2d]) by PH0PR11MB5077.namprd11.prod.outlook.com
 ([fe80::dcbd:3d93:856a:bf2d%5]) with mapi id 15.20.4195.023; Fri, 4 Jun 2021
 05:41:39 +0000
From: "Zhantao Tang" <zhantao.tang@windriver.com>
To: bruce.ashfield@gmail.com
Cc: yocto@yoctoproject.org
Subject: [linux-yocto] [linux-yocto v5.10/standard/nxp-sdk-5.4/nxp-s32g2xx]: drivers: dspi: fsl: fix dspi transfer hang issue
Date: Fri,  4 Jun 2021 13:41:21 +0800
Message-Id: <20210604054122.2732003-1-zhantao.tang@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR01CA0059.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::23) To PH0PR11MB5077.namprd11.prod.outlook.com
 (2603:10b6:510:3b::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp7.wrs.com (60.247.85.82) by HK0PR01CA0059.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.15 via Frontend Transport; Fri, 4 Jun 2021 05:41:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44e3451f-b290-4c4a-4797-08d9271b6c75
X-MS-TrafficTypeDiagnostic: PH0PR11MB5160:
X-Microsoft-Antispam-PRVS: 
	<PH0PR11MB51606937012A492AC59CC0888E3B9@PH0PR11MB5160.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xHeBogJsCO7keS5MZV6N2RJM3EicDln6RvC9Iw0UiHB+wJl8AArpq4o0+KETG64XHHD5nX+Zy2e9mJ+I3u5RE6i8YIC0vqMl9pXANK4xbCPLwMyS0BX+lxGPnHyWY/lhL0zr+lY9Sl7oriRcXZxHGURZFYzRyO8A9fsPA6q/SonGoSatsfM5UH+rV9PFiYIHNOR3x5+8elO5ePP37TXPVJkwq7Xih2cAX+SAOgk23+BW4wtsNNg+vz8wt4AQJfoTifiDkM4f+GYN5hJsSCD7M3R6xnoeRp7UVIQxsaiwQKlewHnyHquse8Zmrq75Cs8XNo845ZZ8+iEA6q1cZgJpGM+WmBimKYbjS/AaDkwDFM3HWCH2PlYOd8zjGjmBYoUpeW87HOlv9o2Qh/txDebiOEI0BsAIgg/uUDHEaEI4JFWHDW7IMyy2EwamguvBwHrS4AAt4PzDLggQwY2OATXzUJlNQDWlHyDkimz8E6KFZQ5lHxZYXBcTEl8JtGoTCK0ZyNmWTUY3P1fIZlekxjrQqkjyitsswdkm+BoujtAZiNcDSzAjlS2UinDRXceOGELtpq01JZ4l0Jno3CDxk3PeT9qSolr0St+VLnrZAqC7loVOXNbheWwU3IwJpL74uehfSZ9GkFhn8TyGjMi+lY273B93gLooK3a5dtVf9EjcR3s=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5077.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(346002)(366004)(376002)(39850400004)(38350700002)(6512007)(1076003)(478600001)(38100700002)(5660300002)(36756003)(52116002)(6666004)(2906002)(8936002)(6486002)(6916009)(8676002)(26005)(956004)(4326008)(2616005)(4743002)(86362001)(316002)(44832011)(66476007)(66556008)(16526019)(186003)(6506007)(66946007)(558084003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?d7P0Uf17ntERrc6ESD4ce9J5c5PKUJ4UC4IexxV0yA25RzylQWvI/KeS7fdi?=
 =?us-ascii?Q?NL8aaS/rW5TEAhfd/LrB2T10Qvp0XfK4qJ7DgtUOMDlE+2sEB0Pc436B1gJK?=
 =?us-ascii?Q?oppei2C8X80G4ZRV7Ksbh7+HpPzwvMoB3DYClGyDNRFvCGtkwzTbE9DoyHUV?=
 =?us-ascii?Q?cSWCOhNkQjTAcO9Aw01lag7rE11s/Q62qkbEAvUva19wcBgb22F2YY3qNN2n?=
 =?us-ascii?Q?WVLpuIcStlaXyYGDm0Fg2r+omSMos9DeSLawATnW6H4o7ZQDWFGcGVXYPvJr?=
 =?us-ascii?Q?QQB6lypw1oIcN1wZN40YO26NWOuaVrXI11LK7sVMjqUsnSiG0VtX7HEavYPN?=
 =?us-ascii?Q?s41Pwse4q7GbFgbL1zK57yZ7CC3oJA400/QTh3oVRVFK49fWBYVitEKR53AM?=
 =?us-ascii?Q?BBgHOVjIqb9LhV2sbuwY4VSH4umkoiVUmIT9asAbEXmA1d9HKuW/S7FJkcKk?=
 =?us-ascii?Q?ZeOAY6UafeENz2noTxWxOcBVyJPaHpy34x4zetlAYSg+7PIW7HmjpWIbIFgm?=
 =?us-ascii?Q?MkpU/fG/qd1/n/J/H+WaO79B1cXR2siB0iZdvaLzS4ErWYyzUFRB/TniLcl4?=
 =?us-ascii?Q?/+qL8ddNUdRSg+Wc3jG9sLLnLjJ2cIvOzr4Ml3Ta8NPqFrU3BV2PrVCPo6FD?=
 =?us-ascii?Q?VOVmp/4D7CaR5F0SRIDk1jszsuqqjdzIsfyCB/Kgwv+EAQNdXotxLK65dHBq?=
 =?us-ascii?Q?6Le1OaO6cdqQp6v094+kwZDl3p7Gfntx5CW0P08ZtHD9Gb6E6CaLAVUkTHVY?=
 =?us-ascii?Q?JCf8gypdFbblse6s0wl99t1h4RninNPRpr3o83e0yO4CZMIm833GlBc5Gdae?=
 =?us-ascii?Q?4gOA7ML+gy4FMjJMhPeNTjhMUGtIN4nKYLjTPe360RwghL8CABQVeJMHE3dY?=
 =?us-ascii?Q?qW7VDPYW0Be7SmL1HDifKGMp58i3nuLXkARWc5nD4+01cyiQnRT0AcrAkMR8?=
 =?us-ascii?Q?JHrB9c4gHEiOMMsBoOCKXy13AlwQ3sR6k8xIoTvLLLE7H3mnhHEsZQdhCd5J?=
 =?us-ascii?Q?EAYEEu3dVeUY0aNrBx01g/xKdBo1x2NT9Yl/193iKD9nm9mrpB0jjVuTQPWB?=
 =?us-ascii?Q?+DvYWsqU345vB3y3ruheb7ZNWT0Tsw9EL9m+Fj9uz+VSR0VVQpFs960Uqf2G?=
 =?us-ascii?Q?Wzr8WGkEWuiAk4B2nigZ+0tnqlQA6sOm7xgbKHVZ1LVO3/ixg+Kym4U/6Gt0?=
 =?us-ascii?Q?wg/LIk6C6WbM3C5LIufSBIpW7FtTkCzWVE/7vKVu8WrO6guh7Na9grw14K9G?=
 =?us-ascii?Q?rrvdEiA6vQgT8V/cO/wuzRXxzgEFDAnDxylGTEzR58gxN+zlq90yba5sqWQY?=
 =?us-ascii?Q?xKFQ8TjgXSpL0QeGMsrxa5db?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44e3451f-b290-4c4a-4797-08d9271b6c75
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5077.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2021 05:41:38.9868
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HXfpj+1mlH5gUiKkklTamTMe6TkyMlIWATOiq9RbDdmFYOI7/jAlVXAABF2YEWMaLCTi1U26YJW05o/O0vD2SjGhqGxCb5LDjER2xkmYaII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-Proofpoint-ORIG-GUID: rTI9M5VL_qdnkQP1VxJdho-8vpiUww6-
X-Proofpoint-GUID: rTI9M5VL_qdnkQP1VxJdho-8vpiUww6-
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-04_01:2021-06-04,2021-06-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 clxscore=1011 impostorscore=0 mlxlogscore=666
 phishscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106040043
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi Bruce,


There is an patch to fix dspi hang issue.

Would you please help to merge this patch into linux-ycoto kernel, v5.10,=
 branch is v5.10/standard/nxp-sdk-5.4/nxp-s32g2xx?


Thanks,
Zhantao

