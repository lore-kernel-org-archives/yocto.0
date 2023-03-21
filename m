Return-Path: <ovidiu.panait@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D41C6FD20
	for <webhook@archiver.kernel.org>; Tue, 21 Mar 2023 19:21:38 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.23270.1679426496250042112
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Mar 2023 12:21:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=BsnM/m4G;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=24442424f2=ovidiu.panait@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32LBUGmZ015052;
	Tue, 21 Mar 2023 12:21:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=EjuAgKz0wKIYN1yDCnoEJl83vYdVBW9Lnd9eGxFc8as=;
 b=BsnM/m4GZei5u0KDo73eo0uBY4WWdruMcV7+Cpw7mF84+fG2O86h4HVG1LiR0DetXdW/
 /5P3hXh3QE8O8stZYYX1X91Yyfb/sxLOzEJrRmV+dxCrJqqwmg3ZWr9TOXcYhLFMu8ZY
 BExdPCsurCRp9aMaZGglf7KSlSzE0m2e7u9lTu7e2Y6BbK1hyH+PFFGu4XEGiwp2cTgk
 HL1KDulr83GsuG18wGfpsaAHPHr2Q6gV/WiYwut3ah35uIIFXSerTGN/X0l7KwLC4Owy
 bs+Prc0JVU0Ho3xgMlLk1r0fpFyVkQrLa7p0NcimcIL9gqejF/4+DSYuxz4mcZw0oOwl dg== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2042.outbound.protection.outlook.com [104.47.74.42])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pdctmk4u0-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Mar 2023 12:21:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D8X83EizNFWzU18ysqO5hJ9MfK8ZYUgBQpTKC7m+PPerMpwMRA/LcQSrvni8iSwKp4b/SbdfErThLG07b7IldBqWesO+n0Pc9/SiOOUdRDyL8Hy2yO+FX5VuzxHmM6dM73aTslu2A5bMX3DPl0vTguYiWn6kcRIpr41HGW2Dpih1+wV56Mf+XzS4AwDGsA9gJa7YPg+8DMnU28RMyNjUjl0xhJfgSKaGF+DADgOwJdkm3XYGdEQqYInEDQoA4HLzTLRkpLTq4z96dgihrIBdkcZYG47WXL5bFGs2KE8YQ8q8F/rygZogsmaUSMHaPAy0izFr6qB3HVXXRRlJQ+WpBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EjuAgKz0wKIYN1yDCnoEJl83vYdVBW9Lnd9eGxFc8as=;
 b=LubzJsRP2Jz8AoUFmzGaIOC0B6DxNAzBC8dS5jYff5ZLU9HGDpxugAaPX/AQgx7sUWXbjtZjlW72GAV1LpMo0dGFfWmXUDdler+O8XoUiFiUtwvUVfrbKl6RHK4YsSQ380C81rXs1BIanIYIHCJvTvc8UlEi+MYMOFFsVa0fRXRvQDSbnu7rRUthFN2ahTv8YAgPVTaCJGwaNFtpXk5nDkDdLrZiThZu7RKrUvOBvyLvCjCthJBns+MW6RUz/fumK9a7lWuCRR4itsJApqfNCF19bhLC11Qcwqw0ztD5noNdPFnAP0uz6K4xVQ74QDuA7zs4l4afaxfsPt9sX4hdJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM4PR11MB5327.namprd11.prod.outlook.com (2603:10b6:5:392::22)
 by CH0PR11MB5297.namprd11.prod.outlook.com (2603:10b6:610:bc::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 19:21:31 +0000
Received: from DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::9f42:14ae:2b0a:d1fb]) by DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::9f42:14ae:2b0a:d1fb%3]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 19:21:31 +0000
From: Ovidiu Panait <ovidiu.panait@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: anibal.limon@linaro.org
Subject: [ptest-runner][PATCH 1/2] utils.c: rework pty setup
Date: Tue, 21 Mar 2023 21:21:10 +0200
Message-Id: <20230321192111.197351-1-ovidiu.panait@windriver.com>
X-Mailer: git-send-email 2.39.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0102CA0091.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::32) To DM4PR11MB5327.namprd11.prod.outlook.com
 (2603:10b6:5:392::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5327:EE_|CH0PR11MB5297:EE_
X-MS-Office365-Filtering-Correlation-Id: 2824780b-86de-4304-f25c-08db2a417a07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DJWdsDvMZ5PGQ7lGQZBkSVV1CAOIJT3jgqJpyJ1KEujzo+JxLJT8ogQ3Ge7CboHL/Rt5AFx8MHAXSJyHvFSJLs7KvhDNYE0ed9WJv7L5wik9u7Dk5atn0a0QsvJgPVFrRO9epBHw65bBZBaveI6ep3ntv7x2ZGrikKDaP+IJFx+qNNg382dO2cpEQe6Q3oe94q09Ip2jB7rvESjvAjK8Pgc9IdRd3S46JSjsCkQ3LiqEWoSUQZV7Rn64gYkoHHjNItri7Bu3hXENZ7JMe5YTfQtnYkYIRjA3pZWK29W96t+IYc4F8PzmbBSw6IykVqk5MVgVwW7gYETIAVhRQjU371zWUvM+cGoR7ntWveG+zynzPIvpUOVQckcKAjPBLzOIm6vHyZGOOhGTJbhS6ztW/4bFlPvmwJ16l05qL3bVq/YUUPgzJfgP1vrC4rge6sBRZ0JjoYTKyJ0MKrhtfukxskzH5OhopgbNSarTmqG6YDz8vYzEZEXVgMRX0w7NemJaPXG1o7zLS0gdRZ246UFpQcFtOErgLRX1YDmnvbHtaTk56/Aw5MHmiQmmInaIEZp0HagHlRKKLAKfBBzJrvC4qN6eELKc7NjklusilWz54XHIHvlf/xBRQcO5JBqCq4c0AVh4BjVTLEBQZn7EXq2M0ewufy6BLa7IJ/5M9rbUJmxgAkBNNW4nwI08KBl13ErK
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR11MB5327.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(376002)(39850400004)(396003)(366004)(346002)(451199018)(52116002)(2616005)(186003)(6486002)(4326008)(83380400001)(6666004)(478600001)(1076003)(66476007)(316002)(6916009)(8676002)(66946007)(66556008)(6512007)(6506007)(26005)(41300700001)(8936002)(5660300002)(44832011)(38350700002)(38100700002)(2906002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Zk8Nz+Whkibigf1CHoB7roFjxZBEO0AecsY2N/Rckid+dJPDE+us/fCD9vO5?=
 =?us-ascii?Q?T62iftK9W3qk49K0l08GGhvNFHZsc0Bw8Eu1C9FllPznaHncH/LWiv2QEdmT?=
 =?us-ascii?Q?3BFSCGJdltOP4L5CbBsudDd2zF2CNf/AIH0h3vrNEpnNtTq2XxC1difAj6JD?=
 =?us-ascii?Q?4HGsVikPhmw8U3m4Vkq3889IpoeHomytGji4cJIfIQFtRysa9lKhlvtHbWYB?=
 =?us-ascii?Q?gO28/QOLYzdqMLFTZR9wWWwP7qsMMMQ8KgPY2rrzCFxG2gR7nqT8OxRUsqL3?=
 =?us-ascii?Q?Q3ulncmUVueAuxrBrMj0w6IEgTRWNI9+3vf02DfvA2UP3XGd4CBPmsT/5Omg?=
 =?us-ascii?Q?jfwa4VLk/0/U5GptzUDdl+lr2U+XEbGL7CQ7SDkgdu3eH2stdpiAv0xLVB+w?=
 =?us-ascii?Q?mWJJXxgCBcPyuY8nHDoFGbYHe2MUAKOrmaR5rW/sJBo6a+heZSrTD9XlySpl?=
 =?us-ascii?Q?fyUvwZibYa9/hJUIVbZ9G2YYaRKpBbK1lB/ZgO6YTWeClYbCKCBIcSQ2y7zv?=
 =?us-ascii?Q?pcyN2hDxeCoAPfX+M3TWvNWfjbOLj3UFF/QLgAOglU6cuEeHhngRZwtvQbyE?=
 =?us-ascii?Q?tUPZztEq4yW8/+B0BC4mDFWTmn7yV97xhBFc00Tel5InK+z4oGzdlmz0r8JC?=
 =?us-ascii?Q?m1k/Mhm7FURK47PbHJ3mcBSg5N4AFKO8cz5rKSz1vZlsmQed6zfIIX6GpKWU?=
 =?us-ascii?Q?nA19Q8ZYrYG+LeQYNpbPzaLQ1d0EamLdrejlIL1HaDkLK9P33v8sF2eB06HH?=
 =?us-ascii?Q?beX84ms9BfAZRaJS+d9dT8GLw5U5P4698LkDiXngp9IGxTg5WPjzlzxLxC53?=
 =?us-ascii?Q?A7d4UcjXyHq1VJ7HhnKNxbujM3r+UwLA3xv+q57zV1cbTrRA83mP4rfh6WbI?=
 =?us-ascii?Q?SSYhjS4F5dU9hJ2uirxBtNGmdVojFxmgAfRipzk6L74slt2mDBdCsfM9mDt8?=
 =?us-ascii?Q?96ByMGspRY9gjECPT15QxT8wqQlDwQgj6rSFn6BGuNjgUfEPIfQN2WS+Cf9g?=
 =?us-ascii?Q?PYndcIi/pB8IF6vLV01KqhYWoh+D3lvG8DZe/O66hXrTLQuf/fCXNUMfJiTJ?=
 =?us-ascii?Q?qBh9akH6HJvPv4HHzmpCHN+ZWz1eJwVuzsmK7i3Kgdyevu78Ztsa0rbFn+QT?=
 =?us-ascii?Q?y9QbUXbRgO1nvuveo/D4N5vCdXuD9VmNKEBGixlQeonRbPBSI09uZZ+fDp3I?=
 =?us-ascii?Q?/Bh0apcCu0KYiEWRkWi9wT0n77fMf50jnTNk2I+qhyfLg8nbeifIKx0t08Nx?=
 =?us-ascii?Q?wUCNZectzH/tfBPvFaKO1u59ot1zPjYlbEqdouwjhlvk9TvqbS5KREzxOkB3?=
 =?us-ascii?Q?yh1Y8PgSq9KbPuSRb/9Q/lPxELRyeLruB1zblOiQSVPTKI6OTrNjncQ0xw0s?=
 =?us-ascii?Q?5DzkrMsLH+yKdOJ/JwpRW2SLadW0LIb3EKWPoXrAFMMN5aWfLXYs7tyWIkNv?=
 =?us-ascii?Q?2qQf3Q7ax3jNhrxg2qPGM0lt5yYEPlml/Jw9F8hN+e80fwgc9GSB/LRqJmzc?=
 =?us-ascii?Q?pNhjYXLEbsTBVGyHleUhAY4+hKgUz00Wqa0tqsngKi4VLmWDkJxVbDydiPpJ?=
 =?us-ascii?Q?pYrCUvntWWo6Eh0VIq5+VRHHE+0BOrwyTcAq5jlYwROVzlTsr74HYDAEJHvT?=
 =?us-ascii?Q?7A=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2824780b-86de-4304-f25c-08db2a417a07
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5327.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 19:21:31.3961
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /T2E0TMA8EiEOeUx5cLVzw6pEfWWeEj4XgHftqBD6niwwCTuaW7CA7mxpfcl+zyo9c/FNljQLXNq+PCeqEMcLz++zCPfjhdEJD45MBl+ujk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5297
X-Proofpoint-GUID: V6FMLRaa5iQdPhaAqIJkCNkmmc2fFE7A
X-Proofpoint-ORIG-GUID: V6FMLRaa5iQdPhaAqIJkCNkmmc2fFE7A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-21_11,2023-03-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0
 impostorscore=0 mlxscore=0 bulkscore=0 phishscore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2303150002 definitions=main-2303210153
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Mar 2023 19:21:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59485

The run-read bash ptest fails when it's being run by ptest-runner, but
it is successful when run manually:
 0 0 0
 0
 0
-0
+1
 timeout 1: ok
 unset or null 1
-1
+timeout 2: ok
 unset or null 2
 timeout 3: ok
 unset or null 3
FAIL: run-read

The actual testcase that is failing is:
tests/read6.sub:
read -t 0
echo $?

This failure seems to be related to how the pty setup is handled:
openpty() is called in the child process and the master/slave file
descriptors are left dangling.

To fix this:
- move the openpty() call in the parent process, before fork()-ing
- assign the slave end of the pty as the stdin for the child process
- adjust the TIOCSCTTY ioctl call to use the file descriptor of the pty file

Fixes: 59381a643e1f ("utils: ensure child can be session leader")
Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
---
 utils.c | 45 +++++++++++++++++++++++++--------------------
 1 file changed, 25 insertions(+), 20 deletions(-)

diff --git a/utils.c b/utils.c
index a67ac11..87ac20e 100644
--- a/utils.c
+++ b/utils.c
@@ -385,18 +385,9 @@ wait_child(pid_t pid)
  * fp should be writable, likely stdout/err.
  */
 static int
-setup_slave_pty(FILE *fp) { 
-	int pty_master = -1;
-	int pty_slave = -1;
-	char pty_name[256];
+setup_slave_pty(FILE *fp, char *pty_name) {
 	struct group *gptr;
 	gid_t gid;
-	int slave = -1;
-
-	if (openpty(&pty_master, &pty_slave, pty_name, NULL, NULL) < 0) {
-		fprintf(fp, "ERROR: openpty() failed with: %s.\n", strerror(errno));
-		return -1;
-	}
 
 	if ((gptr = getgrnam(pty_name)) != 0) {
 		gid = gptr->gr_gid;
@@ -419,10 +410,7 @@ setup_slave_pty(FILE *fp) {
 		fprintf(fp, "ERROR: chmod() failed with: %s.\n", strerror(errno));
 	}
 
-	if ((slave = open(pty_name, O_RDWR)) == -1) {
-		fprintf(fp, "ERROR: open() failed with: %s.\n", strerror(errno));
-	}
-	return (slave);
+	return 0;
 }
 
 
@@ -441,10 +429,14 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	int pipefd_stderr[2];
 	time_t sttime, entime;
 	time_t duration;
-	int slave;
 	int pgid = -1;
 	pthread_t tid;
 
+	int pty_master = -1;
+	int pty_slave = -1;
+	char pty_name[256];
+	int fd = -1;
+
 	if (opts.xml_filename) {
 		xh = xml_create(ptest_list_length(head), opts.xml_filename);
 		if (!xh)
@@ -493,15 +485,22 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				fprintf(fp, "ERROR: getpgid() failed, %s\n", strerror(errno));
 			}
 
+			if (openpty(&pty_master, &pty_slave, pty_name, NULL, NULL) < 0) {
+				fprintf(fp, "ERROR: openpty() failed with: %s.\n", strerror(errno));
+				return -1;
+			}
+
 			child = fork();
 			if (child == -1) {
 				fprintf(fp, "ERROR: Fork %s\n", strerror(errno));
 				rc = -1;
 				break;
 			} else if (child == 0) {
-				close(0);
-				if ((slave = setup_slave_pty(fp)) < 0) {
-					fprintf(fp, "ERROR: could not setup pty (%d).", slave);
+				close(pty_master);
+				dup2(pty_slave, STDIN_FILENO);
+
+				if ((rc = setup_slave_pty(fp, pty_name)) < 0) {
+					fprintf(fp, "ERROR: could not setup pty (%d).", rc);
 				}
 				if (setpgid(0,pgid) == -1) {
 					fprintf(fp, "ERROR: setpgid() failed, %s\n", strerror(errno));
@@ -511,8 +510,12 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					fprintf(fp, "ERROR: setsid() failed, %s\n", strerror(errno));
 				}
 
-				if (ioctl(0, TIOCSCTTY, NULL) == -1) {
-					fprintf(fp, "ERROR: Unable to attach to controlling tty, %s\n", strerror(errno));
+				if ((fd = open(pty_name, O_RDWR)) >= 0) {
+					if (ioctl(fd, TIOCSCTTY, NULL) == -1) {
+						fprintf(fp, "ERROR: Unable to attach to controlling tty, %s\n", strerror(errno));
+					}
+
+					close(fd);
 				}
 
 				run_child(p->run_ptest, pipefd_stdout[1], pipefd_stderr[1]);
@@ -549,6 +552,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
 			}
+			close(pty_master);
+			close(pty_slave);
 			free(ptest_dir);
 		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
-- 
2.39.1


