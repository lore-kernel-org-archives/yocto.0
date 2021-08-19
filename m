Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.64845.1629348458107959894
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=mq8vT9CQ;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4la8W012396;
	Wed, 18 Aug 2021 21:47:36 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=rd0K73EjS4UlgN+2LROrvYnA1nxjge4uIMeOEeb1bQA=;
 b=mq8vT9CQcQQGtkQeQgy/Jinug06ql0+2z5u3WvSGXTAAvVyP+lIPH3clUpADV0nWHbC2
 IddEgVeN2QyqKMULh8yypCOwnh8hvccBFe+8u15C6lk9Ayp3PAen9sg/1V44bLNjGJyo
 0G8SMbOA3iAip0yF/hUswhZytenmuXh90INa+9r/Dn+LB3u6ykFFtIem8TR6QO83YDmd
 ezZ2BhCiUle0JDO64vZsPeFnVwbqc5qey1NrpMojLfUPPg+IUxR6uBwL6t6rTksNYmUn
 //tz5Ifq1lbU16K2gt7tQl6/qBEvVLKJOrNSP8IC1EbOd4K4iJTjB5IivucjHK9LfhqT aw== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ah20t0mdq-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Aug 2021 21:47:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ur85Thgb2hmlGq9MtKSrK18ieLHNbk/fVP00ih/0+W+N9jplLCg0mDvCX/vvV14JnJu35OSL8jYkCua9221fNqORn8jl6HYnVpkuajbl/RY67juytT7FbkbkrHkAL6ADA3G77xiK4VHKshfI9m0mF9kpi9S0Me9VSqBo6NO6MJASWtvSBJoTKqNvxvpe9FsCjzIPRmwrdJBW86TNjQ5LM13W1pe6goK8+JLzSeW1ATnAF4fxt5hzgdLSplfIj9BWbdHsh57w4XoFHAUNwOFA8Zy/mozgTEg1m5feq1CQmybDPaFwbjCJIJ+gyH+5qCc0tFXQOD6SJK+cgDf232U9AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rd0K73EjS4UlgN+2LROrvYnA1nxjge4uIMeOEeb1bQA=;
 b=H9iOUJwB4U1KrjjdSHYPni2ZanxjIFJmm+yE0kr62AlCoFjHjU2kTUjCy8WkXhj9bYP9OhgkC1KpfjysRD45txZAV2i208QKRSZsNNESS28hoRbzVvp9X14DrYzttj7K1KQUcJpCfIWX3CQmeDnbpRLcAD4ZoBYeZuIRpWNQFb8Kc6MMaEuXBQipP0ah3n7/aYjRlHHSnchnOsvj5W5SkdTxEQodXEw2W3tcDS/B05lwAalbMo4Yy5hY9z0AnS4gxMTmV3f1YpXs19SDtfScJjwD2fwBOb99p1FzVKtVNEDVPIHzRBI6Ae6OC7cEj3enwlEOLQMpUDSclQ2ssoONhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.22; Thu, 19 Aug
 2021 04:47:35 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:35 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 11/12] python3-decorator: drop bbappend
Date: Thu, 19 Aug 2021 12:47:07 +0800
Message-Id: <20210819044708.105282-11-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b639e1e-138a-458c-90b6-08d962cc76cb
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB48675FE0A0422E7243245A71F9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:111;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Bnh94QLYAn1v1us/Yh3afG1IlCciuP0nnEsCSElslwA2Ubdd8f2wWsTJzFbDyg3mfZ23yjZTobtv9vKc1N7iJ7pU2TYHFHF0Or9Cs0da031ualqPTT3AYq9N0CwzYvD9GNRV2DskV/AAKOrvSs7YwxcMDi3jrJV3s6oZGwc1O9jOFSOPzVUtFnx3ODAwnb7g9rsyoUjZS0lzioQy4Ln1bF+CJVe09R59EyAaMm3JHtYJJmmNOVwJBYWfpQd87iqbpphvq8EXWSiWTc2Zv1SJCbpzofF1orobyid3iPZuQInApHlCX75aMLzHBxa5N+zRnMni1WdRIdKhSbjSU+Iaa1oZbsKo++w4oWJeELxVmqOVX/aPmWIwoiPCZ0q4XVIAE+dgqkRcRCt1BYtvji1rlSi/4qKhqmBu70Q20ISWEb9aupgFWAUBnRL0zQGuzptT+LKYn1LkfPODf4ivfudFt8V/+hAoNrFasa2zxloJQvva0tQ6AjT6PumamFzB34nD5//9v6fgOu3Ca0++kjfINbAhUjBE9JAJvVG0nC89K39SUvRHHmxTWNxpYPuCc3cNdArcFKpE1d8woAAjVli1xrRG/jAl10fGzjMkPQIcMqCz4D/zbzyNv1yes2pTSQ4JXNuSgorF6N1hQs3OuMi3fiExT+/MkNQ+QwOKO9nONo5TlwMCt+qGJ32WANDYYx29ZtAEmsGTRkVK8PXdVZuAzA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(4744005)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?UyjizIa8Yxn4QGFhiouq20LOaJKz6uUAm1Ghug3g/A2OseFgXaSfJaxG2TLd?=
 =?us-ascii?Q?I9IpWV8rNPmsEBiNXS5jB83vyH3cX/LfoxQMV5MURFug/9inStA9tu8SrVwP?=
 =?us-ascii?Q?/ct4VsUu2oluJ6HwpJ52AqYqaRmTxKYdDf4KRmObi20Tn89SSLo1uJG0hVG6?=
 =?us-ascii?Q?qwsPRazzcCNMz0s4dp8WKahnoj8mm0ZI7znU3EnNzip8eUFcAk8lTp0pyyl+?=
 =?us-ascii?Q?PHYiXFfQ1ZW+MmMfTqKmOc55B/p3EhgTGe7g1ILNgW9Ce5Od3PIiIcrsVchV?=
 =?us-ascii?Q?sdMqyLkA94Q5EsrwfSwJ3WSY3YlKZdq6OaxEUa42QwKgDHftmeLZ+qJa1jWp?=
 =?us-ascii?Q?03ty+YrTCfueHE4e91W9vxeJW4slLkHPGeoQpGIV7I5zJX5vqSIWYyIw/Wxb?=
 =?us-ascii?Q?sq4csDf7uH6cKqH4wL4WP0QF7/Pt36UhJV2KAKi1P8aD+I7IP3cprV/YPg2l?=
 =?us-ascii?Q?iXOQqCGGv0sIVBvdeGYaypOOC5TAGRCdc2h3hgtTyDnahO6sUNkvRQFBXhD+?=
 =?us-ascii?Q?ckqyNuO5G3pX72h108d4sPKp7Pu0cwvkgwbQ0muUWSKf03drEXGI/DVPxlE5?=
 =?us-ascii?Q?J8ECDptCmU861S+zTyN7Tlau3+ifpro877CKuw04E0PDLcYiPOJCMOBn3INq?=
 =?us-ascii?Q?X/8jTYJM5JqLZVBXP7UWHADlhmib3JuQOMHEbDwgK1rgjwPk0P7mydYGVf4V?=
 =?us-ascii?Q?EGgrQCvSJDV/XrKXGM8ZEH2M22tOqLzkKU3aeatUHgXoSqv088eQ0TfFCG+j?=
 =?us-ascii?Q?C5j8ncK/i1O3gu2Du/QCKpcjLK11i/Xd0nOZrMVXxIsmAHlivKLA2ZwDIiCi?=
 =?us-ascii?Q?80zIOnM5iOY+Wg0GjEy9077Afn5x6RoFU3PaAmwOlW1NWHereURiPoTHlDfC?=
 =?us-ascii?Q?OhzyzoarA7hROPEjO5X+3wxXEGLg8sRUQdLESwYOVPcT9nxAzGIg6q0kBjMG?=
 =?us-ascii?Q?t4lr3yJonJVQLXj0B90ldduqSQyCqIBQ7wTO3eymOCXpQIkCc0phRGHQfSG+?=
 =?us-ascii?Q?i8tL/KK71Rtt78sqHuJbJG/FddJmglJjTgxKgnQ8YEqrdqyixsOt0vx7aPaH?=
 =?us-ascii?Q?nkItnl+G7LsQQWGLFGb5QI80pzhpoP/ANnHIjMXCRCy6/piOeWb02nHUWsjE?=
 =?us-ascii?Q?+7fxOuCXHN9iTkXHG/uGrk1FCaKp1u4xCl9aRUALlzNbi3TmyBHUnoMSP4bG?=
 =?us-ascii?Q?2QS/TAD0BgH14ZQza5Vw1W1oP7v1pkRgLf0lzxcMBgN8+tMeqcPsiIlUHC/b?=
 =?us-ascii?Q?/LAKP4vy6iYq/Di+Bg10nOs6aFmCNy4L+foJ3Ctm5Qko/6oul5hc4atVZexz?=
 =?us-ascii?Q?IqA+U2Auj0LxLIPt3GfbfrRw?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b639e1e-138a-458c-90b6-08d962cc76cb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:35.8336
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Ao0FHxAseGPLDHPoOGkjE6DSMX+TaTWgjzA97Eg+7R9jsiyLBLcVov7NxVRlo+VGhWWVuNCOkbKizn0Tca7Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-GUID: Kp9EvRLb7PnhvZk-JMEj2M2a_Mgjp6Cb
X-Proofpoint-ORIG-GUID: Kp9EvRLb7PnhvZk-JMEj2M2a_Mgjp6Cb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=521 adultscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 spamscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

It is useless as setools-native build is disabled.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-devtools/python/python3-decorator_%.bbappend | 2 --
 1 file changed, 2 deletions(-)
 delete mode 100644 recipes-devtools/python/python3-decorator_%.bbappend

diff --git a/recipes-devtools/python/python3-decorator_%.bbappend b/recipes-devtools/python/python3-decorator_%.bbappend
deleted file mode 100644
index 3bc71e0..0000000
--- a/recipes-devtools/python/python3-decorator_%.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-BBCLASSEXTEND = "native nativesdk"
-
-- 
2.25.1

