Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.1805.1628234024762876100
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Aug 2021 00:13:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=gM3349Mb;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3852e488c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1767Di8C018148
	for <yocto@lists.yoctoproject.org>; Fri, 6 Aug 2021 00:13:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=kB4udV7ljBP0NKJwo7UIPg7f5eb/2nrJZ9ArpqMZpBY=;
 b=gM3349MbDjSHWY48FBb0Z6+tHICu0ywzyPDs23+8iJj/wv8uM6B1AXoPV5ZA0mBiv3LW
 Rri1UQZuoLeW0JDr6zKtuqBHK+5uOXM6qKC77g2bioOWAi9Xu8kWQbP1IzWbwFM0EBod
 YtcEq3wteoLQwsha1dl3PTy84Ez+Fnptm5b5eDvmjX3Xp2D6vIwovXPfro44Z866uRYa
 TsYC0Jxn2b1JGnD6VHJ0zciOCSU3SUU0KpB5cyfluS084XeXBoQJyf5SHGUPo0i9r5zn
 99tF/XjIYhcKqVo+8pXRzVBTicvFz/0YTNahqmNHiAXjnqxaTxIycFZArmoqYDg2MCDy Lg== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a8ke0gfew-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 06 Aug 2021 00:13:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aS1lc0EqyvwUKodpSayZP6Zw+gYcAtS1WCt82+Gpf34jpxIHAzrzBiHUHCrJlTDx56jjrxZa9eOqKE05vfO3sWRYHDW6XpZsiie0pzk4g6PWvmBMA2lpRFf311vEsujWyj4+mH7X/6F90onV5Zlp+yrcPvFNjb8Elk4b6bmFRBd2hZeCqfBDk6v+ZNEKjfkohJR4wlw/AwmFMoOyITPIVjoxlnhkXJ4Sd6rl0nju4T9MDbdiaEcZRBjeQUH28kkdsBJSDOK/fq43VuXJPOCC0JK7F8f0XFEhMXhmDR9JeoWcmVhg4v321YpoYDZLConBWAS7YvdYTTfl5RKjLx2Lgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kB4udV7ljBP0NKJwo7UIPg7f5eb/2nrJZ9ArpqMZpBY=;
 b=g9HTZzsBF01A5FyCTsSOVvT22+HfVwBHp34GE5EZUY6WRIHwJqqcft82IowCxx30U6oPP2nnv6jNl5z4ChZPJLvI62LZt4DztC7WmoSVDLJbZgl2ucdoh4xHOb8Qzzyyci7m+0LumcwwpFnnVnL2HVBDZJAFeGgqow8rOAnZV3IH1gTQyo1L91dTcmx4E5XndvB+fMIngSlQ7IgcRpxPCGOtdxhZZKMLVILcTqjW/nH1+F2wtBrmJhjiAiKxqWP0s4C3KaXdx4rCspByjPJqeo7gNTOviAGRkMu32NKCBtqFv8LT7TN58bCjJlGHNXQZGyEKbTUByMsOeIk1jf2M3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1421.namprd11.prod.outlook.com (2603:10b6:300:24::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Fri, 6 Aug
 2021 07:13:41 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.019; Fri, 6 Aug 2021
 07:13:41 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: jason.wessel@windriver.com, yocto@lists.yoctoproject.org
Subject: [meta-openssl102-fips][PATCH 1/3] layer.conf: add honister to LAYERSERIES_COMPAT
Date: Fri,  6 Aug 2021 15:13:27 +0800
Message-Id: <20210806071329.414087-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: HK0PR03CA0109.apcprd03.prod.outlook.com
 (2603:1096:203:b0::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0109.apcprd03.prod.outlook.com (2603:1096:203:b0::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16 via Frontend Transport; Fri, 6 Aug 2021 07:13:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a81fdcc9-e578-4c85-c40a-08d958a9b824
X-MS-TrafficTypeDiagnostic: MWHPR11MB1421:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB142177A26E59E0A49D606100F9F39@MWHPR11MB1421.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oBEMPc4GyeP7Uth7H86sOlNZRDaxBbJ4WPlZhkZNgIkKgqrXGH3JDktWIyybMsTQ0jb2m6uO9hZaOuvHyzEEV5wuoTUZl/zcWQppDzcsnUThY8IK7TYB1pP9/U5FWXTeukYr9sSFpVjVx/xx491+tDg3QEgFweOp0Nip9bURpJZqyd/gVeJ/s9roOP/c7MMUvj5uL5/9pd8xMn3Laq6LS1TXnLjHte8ydff2xnaxP+9XUgIh3qOOIkTmKc23JEe1ZRxV7rVF/p5rQHV1a8JMD337VxzdoyIIQvW5RhXHO8KWY1N74sNHZdJ+d7rmGZEiWCSAgzW6fXc8L2XO+UpijLn9P/QajQP5oKpVlZZA56efUSBx3zDRYXVwri3aiBA0mMYydMvLCZ0kj5Q5dU1ec8jGxmixfj3Oq/q4Cje9XEqIgjsYOJaqWRXcTgBW2fybi6GLIBU16ORVccW6LeJmSaCzBJfgl1ZRCguQkJ5f09XpLSqrqnyBz9q8alEGRC/Za43SKTsUNkJBNAjAGD18gwZ9VLbNkNAIaekG2ndiJom+uPuXjPAGo/ugNrdaEvuqh6+0GPUvPHITdDmPEIM7zTHqRpDBpzlygm9M4MAk56fnj+ffFdWPuxmMuo5s7dVxvRgstxXb79eW+49pfKq/pYvi7HREFFC+Z6XKbe/j+ARaasOdi1o4FDNVxAFtXFOFaJ6nqn7QlVXuF2s43k6hni3HbolbpWmVqm3T1eRQfB4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(136003)(39850400004)(376002)(346002)(52116002)(956004)(26005)(8676002)(186003)(8936002)(83380400001)(316002)(478600001)(44832011)(2616005)(6506007)(38350700002)(38100700002)(1076003)(36756003)(6512007)(6486002)(4744005)(66556008)(5660300002)(66476007)(66946007)(86362001)(2906002)(6666004)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Tce0ZN6z/muV8LslEEIO5rQlEhyH2qn87sM75h/e3ULAxaSfbrIRbdFORJDC?=
 =?us-ascii?Q?LAgLbYEWUe81OCKkiw7roOfJ0TJKat49g4d8sz0LmZi9Nby0fCllvGyitZ2B?=
 =?us-ascii?Q?AtVQBuyDa+yHo3z+T8VfPzR9bUbpB8aurkW4m4NH6AQA7OzVhLoOLw/ZUx07?=
 =?us-ascii?Q?mP0Rv23mgIL0xVp30Uz8Ocpl10Zyi2krZYyLmSp3ea0YvIGasFgYdOPYYcA5?=
 =?us-ascii?Q?OMneu5yKEIxZ5zRl9l2r3KChi1zIGMCkWR9CRCtkJbTZdolqByRKC67XWJ65?=
 =?us-ascii?Q?YuT62npshBvoBqcrHiFVb0VGj1spCoQo8xfea3K2T1hJfs/mVNU7oG5SUGCQ?=
 =?us-ascii?Q?ee1LtWDl8JQcrg8oZLyUDgLg+L4+dolec5NgfXzH1er+yolKqDam+vezcdvC?=
 =?us-ascii?Q?b9Rw/2Ws0oonMvhdb99PUq3gnUXhuvmYKApnPc+cprF28elqaRy+7CXo/gW2?=
 =?us-ascii?Q?TaJ26emWPzvCDpOoFxL+6C5E9HFMfoNOea8Y0Y+8i3BF2cqbeZmj4zCo9IuN?=
 =?us-ascii?Q?RfETcwTEX+DDM2qA1Ldx5UjIvEwLNoS11wUHyb9gF9so5xfoo7QbeePZrD4n?=
 =?us-ascii?Q?tvmOKvPoqXhUtd3rL2vs3GtQ4R8bMxmuY4LJP0lTFlchnOm+VU3/dlR1oyG1?=
 =?us-ascii?Q?G59Minj2GXlHr+p/+hlZq4QQuLBJQrIWeWm6LnpWKHdM6lv4aDVmzxuJeeGh?=
 =?us-ascii?Q?U7OWscXWgPdclXS1p9oVnrFM3mOu1j895dndAodLfT3NhLQnPPr8kkMSU+n5?=
 =?us-ascii?Q?ajf48Oqs68hgLfXSFMsweB913E4Mh4pzsLxXQl9zFpjPiNj1UPK0NZeihsrF?=
 =?us-ascii?Q?8Uz5XG7ifJpKZyD7Etm+JkMKd84o5Pd5vuvOtGf3SSCOkbZQYHpZI83/58by?=
 =?us-ascii?Q?TjNQlyFvxaBXsSJrjIMYDFbcJESFBehvKW6grvzoNMxmSlXMf/4+1h0vUMm1?=
 =?us-ascii?Q?BnyWG8P0hDfl+4/oo4GSvT2pbHDCrdG6kfzB4RinWhlvn80zt3ILEJOSSxc4?=
 =?us-ascii?Q?pfYSqsTtwW2bdrscgUxidi/UfRCZwqoAHFbhFEpKBls4/3EYIuYycSuVoXei?=
 =?us-ascii?Q?A34cxbbxxZMEVoVu0tuDvOGgOprDwQNREPpR2+onNURJBVlvugBjrRrsJZdz?=
 =?us-ascii?Q?kc9JF2GZz9RialQSr0U3lNoFMeAdhu2+8bBJKahB8cF4GDlxWVih+VRKaw28?=
 =?us-ascii?Q?/VVc1akr54QwPCpTYwUALFvuOqmyYczm81dlHWlVB46iM5NIYn0Mo/Jfnt7D?=
 =?us-ascii?Q?lWQxKeociQbBBWgB5z3gTlfXJVtXTN3X3kjsLzROk6Uxr6gBF+Oe55S9gA35?=
 =?us-ascii?Q?YGH+unk56PfyfYkHbmLCp78v?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a81fdcc9-e578-4c85-c40a-08d958a9b824
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2021 07:13:41.4358
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y35gvyuV1AkFkHuXNZDeoRdePf9B9h2q3w1nrFEHjsggxY1QBo8X3ASu2HkFXdjW8qtHjyfPMEYVHXsjyzW+zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1421
X-Proofpoint-ORIG-GUID: 5s6qDLAqn_r0N_kff7p0yJpxgJ__zRzL
X-Proofpoint-GUID: 5s6qDLAqn_r0N_kff7p0yJpxgJ__zRzL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-06_02,2021-08-05_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 mlxscore=0 mlxlogscore=602 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108060049
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 01026f0..fc1dcbd 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two-fips = "5"
 
 LAYERVERSION_meta-openssl-one-zero-two-fips = "1"
 
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips = "hardknott"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips = "honister"
 
 LAYERPATH_meta-openssl-one-zero-two-fips = "${LAYERDIR}"
 
-- 
2.25.1

