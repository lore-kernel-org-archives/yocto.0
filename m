Return-Path: <Jack.Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C14AE00A86; Mon, 20 Aug 2018 11:46:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.153.96 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 72 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Aug 2018 11:46:25 PDT
Received: from esa7.dell-outbound.iphmx.com (esa7.dell-outbound.iphmx.com
	[68.232.153.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDDE1E003D7
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 11:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1534790777; x=1566326777; h=from:to:subject:date:message-id:
	content-transfer-encoding:mime-version;
	bh=Mky5fkKNxTpiJ4lkOjBY+J8aY/jTjcd87ftwGRa/QHs=;
	b=OVerthO4Mrv7PvbW23YVLw62rlbmv2q/2Dly2E4AQJIchvLFNlh+uUm7
	s4s6tShbdn1Hz4UD+ZsiS6Pive/LvyiIEtBm4pHVz4zz2T3zWBaurUIua
	swlI61+rq6kKFffCJ6J27sCUs1CDoywlFk/NHoByImDhvUhkv5RGSmcoq Q=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EAAQBmC3tbhyeV50NRCh0BAQUBCwG?=
	=?us-ascii?q?FMSgKi3Ffiz6YJIF6C4F3hkUhNBgBAgEBAgEBAgEBAhABAQEKCwkIKS+CNSK?=
	=?us-ascii?q?CeihRAT5oAQQTCBqDAIICnTmJVwEBAYIbil2JGIIXg2+FCBVjhQsCiAEvhFq?=
	=?us-ascii?q?BMIxCBwKPWB2BPocnhVOTAQIEAgQFAhSBQXmBEnCDOYIzjiBvjWGBGwEB?=
X-IPAS-Result: =?us-ascii?q?A2EAAQBmC3tbhyeV50NRCh0BAQUBCwGFMSgKi3Ffiz6YJ?=
	=?us-ascii?q?IF6C4F3hkUhNBgBAgEBAgEBAgEBAhABAQEKCwkIKS+CNSKCeihRAT5oAQQTC?=
	=?us-ascii?q?BqDAIICnTmJVwEBAYIbil2JGIIXg2+FCBVjhQsCiAEvhFqBMIxCBwKPWB2BP?=
	=?us-ascii?q?ocnhVOTAQIEAgQFAhSBQXmBEnCDOYIzjiBvjWGBGwEB?=
Received: from mx0a-00154901.pphosted.com ([67.231.149.39])
	by esa7.dell-outbound.iphmx.com with ESMTP/TLS/AES256-SHA256;
	20 Aug 2018 13:45:03 -0500
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
	by mx0a-00154901.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w7KIgaV3170459
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 14:45:11 -0400
Received: from esa2.dell-outbound2.iphmx.com (esa2.dell-outbound2.iphmx.com
	[68.232.153.202])
	by mx0a-00154901.pphosted.com with ESMTP id 2kype5m8q1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 14:45:11 -0400
From: <Jack.Fewx@dell.com>
Received: from ausxipps310.us.dell.com ([143.166.148.211])
	by esa2.dell-outbound2.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA256;
	21 Aug 2018 00:44:55 +0600
X-LoopCount0: from 10.166.132.134
X-IronPort-AV: E=Sophos;i="5.53,266,1531803600"; d="scan'208";a="230262216"
To: <yocto@yoctoproject.org>
Thread-Topic: [yocto] [pseudo] Pseudo 1.8+ xattr sqlite corruption
Thread-Index: AdQ4sn6k0pB0JFSoSnqNizqd3RyNYQ==
Date: Mon, 20 Aug 2018 18:45:09 +0000
Message-ID: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titusconfig: No Restrictions 04051212
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvIiwiaWQiOiI0NGEzZjdjOC0wOTVjLTQ1NzUtOTI3ZS05M2FmNWI0MjZhYTAiLCJwcm9wcyI6W3sibiI6IkNsYXNzaWZpY2F0aW9uIiwidmFscyI6W3sidmFsdWUiOiJObyBSZXN0cmljdGlvbnMifV19LHsibiI6IlN1YmxhYmVscyIsInZhbHMiOltdfSx7Im4iOiJFeHRlcm5hbENvcnJlc3BvbmRlbmNlIiwidmFscyI6W119XX0sIlN1YmplY3RMYWJlbHMiOltdLCJUTUNWZXJzaW9uIjoiMTYuMi4xMS4wIiwiVHJ1c3RlZExhYmVsSGFzaCI6IkR2czhqUXZXK211U0Y5b3ltWmV5MThPZ1hJRmpMV3o4ZjZwemR4OHlhOGs9In0=
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-08-20_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=536 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1808200193
X-Mailman-Approved-At: Tue, 21 Aug 2018 23:52:40 -0700
Subject: [pseudo] Pseudo 1.8+ xattr sqlite corruption
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Aug 2018 18:46:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We are encountering a build problem after migrating to Poky 2.3 and Pseudo =
1.8.1, and need help to resolve this.
It is hampering our development efforts, forcing us to rebuild images frequ=
ently.

Background:
Our build applies SELinux file contexts, during build time since our rootfs=
 is read-only
In Poky 2.0, using Pseudo 1.6.2 this works perfectly 100% of the time

Problem:
Since the upgrade to 2.3 there is a 33%+ chance that the SELinux context la=
bels will be corrupt at the end of the build.
The chance is random.  Cleaning and Rebuilding a bad image target results i=
n success/failure of equal likelihood. We can go days without an error, or =
like this weekend all 12 builds failed!

Failure mode:
We have learned to identify the failure and mark builds bad based on the co=
ntents of the Pseudo SQLite database generated by the image build.

A good build will have unique Inode to xattr references in the "xattrs" tab=
le.  We prove pass/fail by doing a query of All entries and unique entries =
and verify the counts match.
Example of a good result, sorted by "ino":
Id		dev		ino		name			value
"1"		"64773"	"251402120"	"security.selinux"	system_u:object_r:root_t
"10012"	"64773"	"251402121"	"security.selinux"	system_u:object_r:var_t
"7293"		"64773"	"251402124"	"security.selinux"	system_u:object_r:lib_t
"19"		"64773"	"251402133"	"security.selinux"	system_u:object_r:var_run_t

On a bad build, there will be numerous duplicates in this table.  Why this =
causes the failure I do not know, but this is just what we found is indicat=
ive to failure without flashing the image on something.
Example of a bad result, again sorted by "ino":

Id		dev	ino		name			value
"10067"	"45"	"2293256211"	"security.selinux"	system_u:object_r:usr_t
"31918"	"45"	"2293256211"	"security.selinux"	system_u:object_r:usr_t
"59307"	"45"	"2293256211"	"security.selinux"	system_u:object_r:usr_t
"61317"	"45"	"2293256211"	"security.selinux"	system_u:object_r:usr_t
"61737"	"45"	"2293256211"	"security.selinux"	system_u:object_r:usr_t
"61793"	"45"	"2293256211"	"security.selinux"	system_u:object_r:usr_t
"11849"	"45"	"2293250079"	"security.selinux"	system_u:object_r:var_spool_t
"66928"	"45"	"2293250079"	"security.selinux"	system_u:object_r:var_spool_t
"66948"	"45"	"2293250079"	"security.selinux"	system_u:object_r:var_spool_t

Any help would be greatly appreciated.

Jack Fewx
Software Senior Principal Engineer
Dell EMC | Server and Infrastructure Systems
jack_fewx@dell.com


