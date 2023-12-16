Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF316C38147
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:20 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.11930.1702714935264759695
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=qK/TpQZo;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG84pcQ013688;
	Sat, 16 Dec 2023 00:22:14 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=ZzLh7uNkGu2BZIV4Hlx89UOf4or1ScDTKFblt19LeUk=; b=
	qK/TpQZovtlZLbx2X9XbN5B7UWLnkZoUyI6EDRJZhzCb8w7NiG41OkhGfGVDKVC0
	5Sxxb61+n7H1O5rbKh3qS4cwJX0IPr6Md1QvBnW4+RNI4WGKEf5t9wp0af36Oa10
	dEd8sBwhxxjPyXTCeKFKg1++KkUC3lie6SuE+9C5zgwJcn5j0N0HPGbaosIwjUwj
	Ux8Y0LHPxnfWegtMqYhqm4Un45OvHJrJNnjJfoXpUEoZjY2Ue8XVDE9LGc9Vkv+4
	m99GTTrbQ4IuCT/1nmGvDw7VchknFPlo0pI3NLPzFr1e/RJ+gR8umnPFq7tTPYST
	5HoRZ/a1KsfgP3eBDeedtg==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v1824g0a9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 00:22:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MfxUlmtDUYTwBSerlf+HebrTmg4kZS/ohmT4gg187DdCObUj/FufGi5R2QTmECINeCekGz8CcXS7Vi7krggQ4ZpwNonGyz8W+XiQZzY7TonvAWHUk8WTFOYTcSguWnTV4dONvARMJh7Fulmr4oVXmE3+Nm3XM5rGHXsjGyPaHrDBhnTo2CLD6uGbxkCYffntoQmUxtDvQLCVQ81SatR7v8D2hi8oZ8LKQ91Y/fRTWQqQgoYblK+ept2ftORwNMyIbGYYvTheaUpzzxP9r1pyiM6QPVSrQpROWHa0pZqk8gXaepaSCh2cU1s6Y793V/Xl38Qa8eSpBmDpzD85iDZrrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZzLh7uNkGu2BZIV4Hlx89UOf4or1ScDTKFblt19LeUk=;
 b=BDUlu6Yx3ypMiYbytHz1Wffo37AjdtWkNVOkYcqJOMmKROGHRyuQ7F91+dATGLCvbHGncc7nR0+4Vb/1zMkhh8SBZrWF2qVoPGRk9AB4tseiWItMQsVjVFYR64u2ibKm1GH0u1usuwEzraAj/ErPw9kY1SFi8yU2xq/wN7+CcH194LjurrOoD9FjGN0UbtRJYO90bGwz94mf7E5g1Q91ulJMNgBeExy4sXJ/0wtuU5QHsHksb+RZqifAo2C+ZY0gALUUkPoR4ShH9dKLLucq20zj+im4rQiIc/X8Cq5ojhZaF+nLxj/1dczD3eeKCz5CXr2jsLJtooG9PoLM9GkjkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:13 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:13 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 09/15] restorecond: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:36 +0800
Message-Id: <20231216082142.198501-9-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231216082142.198501-1-yi.zhao@windriver.com>
References: <20231216082142.198501-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:3:18::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CH3PR11MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cff4e21-3f65-4564-5581-08dbfe101ad5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AAVIVXE08U5hMw1aqvfuTnZT8hI6Z0xjwFZp/tjO2LNppw0SAmO5QHM54NXOf2Y+caueDF9obAapWO5gpLqaxiXsMX8N8psEogS94cxndIOuin+Hp2ZaTRs3NEPvOWDXOB5k2HbhuxyS/FjE1huiD36YYU0a0Sx4+TQJyf7KZ28LObxsUWcOKvtR5w6RN3yqIhDheiKOXZNuzXbZU25VYWkJHlXn2yqXEnQNTplvHWokvFTKge5B+Z4fArRzsh4oO8U2VXX9gpGvqXWPq7AtZOnhtC8uEBH3ZKbIA6Wojkf2sg3QVlVXU2Z+6kAus5kmTRaXX/VX4F/cNgw8xFK77Ji/kPEq0KLD51mEwYuodJvFF2m0zACDfCArxScMCga8IkyrAxYWUiMuBwZlWDEuTpWYJ5LjTSKNshbRDu2lzALehCLWMfCLIHZtmRpDBQpb5s3kEW8vo7TcMgYJr7X5ARRqzr/Qv5y6yZdEwWloi82J1e6FFsZyJzi43WtHi2XAl5xxkLDb1EUpBOG7+7hmi2DXttaCuqaX+JgS7QTiBWuIAtg0ksZ1GHEndejJ4JYQO7Edi3CdNNS2k4O5h788H/jXNttSWt2H63JZhLym15WFghTJqdjcRKZ8J9f6ZL9g
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?bk8wS1lNkAsBxwdRbov7X+PTIr2EPskYeaCeBvWdC1hEmo2djEHlT3ELMEJ+?=
 =?us-ascii?Q?EEGqtnO1BcKvvARW2mHEJ5mmsQvbCI7x6NbkeYrmPfhD2kGajI+hiX9lzmhE?=
 =?us-ascii?Q?8GHJuy8PjGfu6jKTBTmYLLXAcwaUMqokp6QYzSjFDGvpfdQEQYYIPmDe3aK5?=
 =?us-ascii?Q?n9XPtSVumNZcEeDjPUPkOfpkFYm1I0Osk8izi3D3FeLN+WoiCGn3HAUeEiG6?=
 =?us-ascii?Q?GkILacR8m9ZVfillZxrNy19V7wwe7mwsyRcR3w98YBH9Y+TYb/wTEZlvnUyo?=
 =?us-ascii?Q?41e/uHyCoHXxbd7vmtBFk/j4Kk9ey9wk6v5iqPZdIdGd73E7l5iQXaS0WB8u?=
 =?us-ascii?Q?fFkl77nfd5308/Lz3aTvgLLkebF0/m+X0sdeMb9NuirYpdAAO1J60b3kpdRR?=
 =?us-ascii?Q?CAiyPdH8HF3JoAYDgS9WC8Damm3wK3BBWHNVh+HMJbxWwjF+vgDWpYYOkAWY?=
 =?us-ascii?Q?mqAjoZ/QOPyBBUc2AsVumjPsCdTO+mnwbco02X8rSoc79377AVRy7uVW3kG4?=
 =?us-ascii?Q?glel+foaem6BG+sL4V7ktmc106cmn74xku46DHBlIOliBZcT3+DPoOMVWzXh?=
 =?us-ascii?Q?xczU4jreMLnyOjhu7b7+fyZHcr8KNB7zxAxKHJ2cgIaE4YjsJYegO6XMaW6C?=
 =?us-ascii?Q?6TUbSEqUXg3+NQRiD/6XN+ZXn17o8UmfYkTupLP+5sd4Zef8HoAOrMfchOa0?=
 =?us-ascii?Q?a8wi0rbuHmFCozdbFNE6aSYMuidERSWyWDbkKKLvI+j2wFW5mQul2nju0MUB?=
 =?us-ascii?Q?bzPvhErfgvyE9lUN4VAMR7YaXwPHSp1mBjt+Whkh2TESf6r6aTlTZCli3/ro?=
 =?us-ascii?Q?8Xs5MFfDA+BKJ5OKpaCt3KLrwl9vc2SR77yX8o6vI9r7lqweXiJeSPeNgLUQ?=
 =?us-ascii?Q?ZMT7sa8nXMGRiil8CpuCMTS1QXRl7q/vSy8ryM6N16PDpq4lvE7E9O85pyvD?=
 =?us-ascii?Q?o7B7zUU/JPmW8HuQi19+4QJexAwFmiDhZSGP6qwKA4/06mHL9fMS+8xZ3JoY?=
 =?us-ascii?Q?+ZDu66wIaQwe8/qY/ulK9JABL/E1W6MJ7Px9zz4SSmrK3oYPvv2fTqW+ebQz?=
 =?us-ascii?Q?kE1vatIK16zBvLmrAodRpYFtU4rmP9j1041h+gXJi/4xgGo//syvMYWsxajt?=
 =?us-ascii?Q?Pz6lVOD1VTWEuLcTYO7CzrgVAfmoHC41Bv7V5bEMe24Dewl/mlt17OeSZ9sZ?=
 =?us-ascii?Q?vyNXV75zAu0lHOmSJ4OX74ionCc/V6jLWyr4P/4GnbhAN8Hi8+wKfhvRRo11?=
 =?us-ascii?Q?03fT7cAIGmv02Kynn4L759hES3f0+rmaya1JWXWQnkaxbiLoKLNSFADO7UrJ?=
 =?us-ascii?Q?MA2SeVpBqm2RsdkP4POgdWpNuy0JFIcL2+8+AIb+PibkxTS3FZEQBX0p7vqr?=
 =?us-ascii?Q?xCKLyiHtvqUVSj1jxTBXH1iBqZOn45yE2H732GY+niDLi6lSGiOssmSB7cA+?=
 =?us-ascii?Q?r7yZu6P5AILbdEufvI6NfrZBDBNXI0ie8ZfykCUzphteCjWfAZw5384R/Eke?=
 =?us-ascii?Q?8o0P2S142i9waP8D12giFbSFWwKpIbtTJh3SmtyuacSB0vf8TrlhjRExuk83?=
 =?us-ascii?Q?fzelQ7XzWiPmFg4DSF+5yhvqWxVPCgiTfjAgJEHk?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cff4e21-3f65-4564-5581-08dbfe101ad5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:12.9630
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mGcOvpJ8OcakRXCfRl5xhhWh5ipgC3sWm9UcG3wb4yl5sqadFGYlwXTayD5P7Z51GQDlv6dZBXabkiI8SCPUKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: Tr4At8LweILNxYwUGmOOK3kjj00WRlgm
X-Proofpoint-GUID: Tr4At8LweILNxYwUGmOOK3kjj00WRlgm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 mlxscore=0 impostorscore=0 mlxlogscore=576 lowpriorityscore=0 bulkscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61935

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{restorecond_3.5.bb => restorecond_3.6.bb}            | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{restorecond_3.5.bb => restorecond_3.6.bb} (100%)

diff --git a/recipes-security/selinux/restorecond_3.5.bb b/recipes-security/selinux/restorecond_3.6.bb
similarity index 100%
rename from recipes-security/selinux/restorecond_3.5.bb
rename to recipes-security/selinux/restorecond_3.6.bb
-- 
2.25.1


