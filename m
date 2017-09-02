Return-Path: <adam.trhon@tbs-biometrics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F312E00A73; Sat,  2 Sep 2017 12:41:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10837 seconds by postgrey-1.32 at yocto-www;
	Sat, 02 Sep 2017 12:41:07 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0047.outbound.protection.outlook.com [104.47.2.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6B46E0090A
	for <yocto@yoctoproject.org>; Sat,  2 Sep 2017 12:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tbsportal.onmicrosoft.com; s=selector1-tbsbiometrics-com0i;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=qovcaCssibj7RkGQ2PX6yJSf+ZANXTovcUohqjlQ1hY=;
	b=VhvAporb/G/CXcHUcZ/2uJnv2Uajtb6kFAMBXWxOvcaAb8pOP1NIX1VtJHpBqwyiJHIkaFiIYAuZExYFJyYkAUW9zsFD/mC7J9FrhxCW3UBGhnQOijxenrD/nv/5TXosYwY0kY6G+nXZxDfXF+BzBN2k83iUxWPivD3OTiHRmaQ=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=adam.trhon@tbs-biometrics.com; 
Received: from localhost.localdomain (2a00:1028:8b41:21fa:baee:65ff:fe76:b250)
	by DB5PR06MB1255.eurprd06.prod.outlook.com (2a01:111:e400:51c4::21)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.13.10;
	Sat, 2 Sep 2017 16:24:26 +0000
From: Adam Trhon <adam.trhon@tbs-biometrics.com>
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Date: Sat,  2 Sep 2017 18:23:46 +0200
Message-Id: <20170902162346.2013-1-adam.trhon@tbs-biometrics.com>
X-Mailer: git-send-email 2.14.1
MIME-Version: 1.0
X-Originating-IP: [2a00:1028:8b41:21fa:baee:65ff:fe76:b250]
X-ClientProxiedBy: DB6PR1001CA0032.EURPRD10.PROD.OUTLOOK.COM
	(2603:10a6:4:55::18) To DB5PR06MB1255.eurprd06.prod.outlook.com
	(2a01:111:e400:51c4::21)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 237669fb-a2fb-4efd-3b81-08d4f21f1470
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(300000502095)(300135100095)(22001)(2017030254152)(300000503095)(300135400095)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:DB5PR06MB1255; 
X-Microsoft-Exchange-Diagnostics: 1; DB5PR06MB1255;
	3:g7GUUzd4zkPlpF4EgFzL9LUbuVe4LLkD2c5iy4mcusLtobOa5p5dz6CUKxNpuRTKK7VR5n5Y6kVr3LY1XgRPv2SA+Sy7A09GOJPK1xgXigG3BJH1w2SX609un1Op9RcApHC0ng1Xv8ySMsdHN0D45Mmb/O/ARfr0oSvLrohhmBvJohTFXri85g+W2RS1SaFdh2RvQuX/2xyzGpfiGOM+Py17I9He1WTOtqov41FTj8NTUe1HMPsgcnkIpRaHRH9a;
	25:rkiUirP8If5qkMGkbPDtWm8Y6f/B3XNbWUWcjRh1iJJFcwSem6+EoWkHcv0lOSy+3m94FFF71SJzW86tjyGKdAbb2XrrCosd+j/IgTfizKN5/DK8D4hN4+VfCdyUEnAdv0zvBKybJLJiyAsz6eC2yl2/UrSEj2Gxhiu/mBZaaxy900DDT/8jfp/5iUsG1pThRpU3iU0MLS5uHSUFyvoyHPOt9y16+CK1Svut9cFZdcRCwCt+CW6NJ9oCYG31dufkm5Uop134aMLcpXu++WkyikXs6hXf41bV/BJOYOTK/J4xRlQHWxoDtHlHZFXbPEFmkdGKRYddRLdtzNx07V/E8Q==;
	31:L2CLLxEuydYgdUYVGsG1rITdgsH0ttnEQ574sMN8N3O/0Gu6vMheSjpKBarUx0SKYDXAaGhi/bmji3ti94kE41FLSdxrdyuGqkGXIC7uA4CbZXjq07Dmye4z6tE9QyJwxlMFR9rxO7Cb90wBm5db5fXxJZ2QVVNmtu+gMmP8fOlZSaIUgunVjIKw40kWWcWKw7fqmxW/RMYcQdzhsysaBq3QoCeQRBlbf/5UYpCwdeg=
X-MS-TrafficTypeDiagnostic: DB5PR06MB1255:|DB5PR06MB1255:
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <DB5PR06MB12558C14AAF934F1B9054D4BA6930@DB5PR06MB1255.eurprd06.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(10201501046)(100000703101)(100105400095)(93006095)(93001095)(3002001)(6041248)(20161123555025)(20161123560025)(20161123562025)(20161123564025)(20161123558100)(201703131423075)(201703061421075)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DB5PR06MB1255; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB5PR06MB1255; 
X-Microsoft-Exchange-Diagnostics: 1; DB5PR06MB1255;
	4:Qv0J/pxFYftcSAa/qyiQcC9hsorDkAYNYR8BF7Joh4AvLZOv5XO8yUBeCz7qx/Z4dehYTdvwrQYY8D/YrzXZZKychUkQFwAsv4VwhyetWY4WZhx8e9/N7Qy3b4DtoCaTU3q+OkKvTqJ4430CN5v1m+EhvNg2jMQDXuGLUoWiISHuX4jkQnmcl+Fd/GbzNTothdk3NcnWUq85/jKAcYuIsAMR6GAX/8dnu7MZkQP+0TkAs+94gSSRgNNarv6+TZlE
X-Forefront-PRVS: 04180B6720
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(7370300001)(4630300001)(6069001)(6009001)(199003)(189002)(25786009)(36756003)(4326008)(6666003)(5003940100001)(50986999)(33646002)(508600001)(2906002)(68736007)(1076002)(15650500001)(42186005)(5660300001)(101416001)(107886003)(110136004)(106356001)(6116002)(105586002)(305945005)(53936002)(7736002)(7350300001)(50466002)(48376002)(189998001)(97736004)(81156014)(575784001)(6506006)(50226002)(86362001)(81166006)(6486002)(47776003)(6512007)(8676002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR06MB1255;
	H:localhost.localdomain; FPR:; SPF:None; PTR:InfoNoRecords; A:1;
	MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: tbs-biometrics.com does not
	designate permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB5PR06MB1255;
	23:ROLDsnLmvAfYaKs1WHoXVscWGEZim7FfjwvQifryT?=
	=?us-ascii?Q?IUSriJHqn1UDSeN8qJCkCAM8bNrnDd4Pe/aaKq8gnSC4tYN6FY87AiuY8c+X?=
	=?us-ascii?Q?uoEJmh5TeL4pAqOrCid6Uk/oRswtek1bd8GAe1kyrheX+P0oZDEEwRZRO3Z3?=
	=?us-ascii?Q?dt3cwPG5vq/LWpGRqaPfgCjNOcdw5iKOdHhfhlU4qF/0hXlIqPjFqnLhP1Ul?=
	=?us-ascii?Q?fw7/CTHODCBEIOhx3kPKnv0r0dl/yeFUzEa3YfHp473nfV/lOqwXx9GyKAc7?=
	=?us-ascii?Q?rvuT6e9cYVw3jxBmyXBnMA6z/lzwjoTWyFUIE6kWIAj0+CzmlUdpsbvJxEoa?=
	=?us-ascii?Q?AHfG39dlsVlIFKTy0xfQVlzQmTl0WAoaRWE9M9k9xbbTVZXsKG1xR0KEevnl?=
	=?us-ascii?Q?+9As4x52eB5OKfkKJCGoRZY1DhtY/TO1drqLEd4Djr7GJy5rWn3S0vLj+szy?=
	=?us-ascii?Q?/wd3HyPTVB2WVzfIpMqhyLm/SyH/yakHmqcnKp81JbqP+G+DCKfDeucYrAFF?=
	=?us-ascii?Q?VQ2pM6bsvDesDD770kB4vNkFNMk9NJutuxRsC02M6vjnPT/Gptm1mseiaeSC?=
	=?us-ascii?Q?hVT3xT8auOtB7b7g9KibwVki4QTKFUQN6389ZUlsycivAO43VpZvNuFSvkpo?=
	=?us-ascii?Q?6Tfck22pq98QeWWTyNVRHXPzLPVR5c4M+qSK+b1dfDvEFyxovX/qjDPo4GWx?=
	=?us-ascii?Q?0tYyxMj3hTse/EjvIArp5ORtP8kpM2mOhstMUUP2LaD25I+ii3oZubSorXNI?=
	=?us-ascii?Q?LPTmI6zgzqB37Px0G8nldiY2aXqI+PbGr9QOLzclAoS8K0H8GsQux2w2xLPl?=
	=?us-ascii?Q?Eo0PHQgNl8q9sSBhbX7fY2dZRbWbE5qjlWDBllV/n9GGBhOFhnJYVpQoLNnr?=
	=?us-ascii?Q?YZYOp178TPz5aBAEKmS9AuItGuoOvyMsW3vmB7JqjAmEEPx/jy+Roi76s8Cf?=
	=?us-ascii?Q?VUvgtV9fle9qbvERkq15TtDRc6emWasiTtzY88/w5NPqQQwAzKXKOG4uOKyn?=
	=?us-ascii?Q?1eZSgh/R8Fr50YDLpWiDNqymhc0iB4YuY3NA+RFWcwTEAkNTXLCQAhpNMIu4?=
	=?us-ascii?Q?BPXfxnab2bCsoLe2CiitvQy26VP?=
X-Microsoft-Exchange-Diagnostics: 1; DB5PR06MB1255;
	6:68viK/zKukqkohZ9WeuMkCZFSDHBifHJgz7OJpxGVEilGvBSPdV85uvGuowHpE36seanpnxN3yh90ukzwz3HIo00ySKyF1EazzyW5TGMTMyLLjVmP2tVrSx1CJYtGncDNuGYqjr8re2S7do7Pk8y8JxZBzBBQBCvf8voe/W633V2emDWGPk+tho/fD9sfjxko2PvsgWf7dAUJJqCZBomL0dvexbAU17L51O8O/BI7rwbPem3ScGmU4VaANI3sFPxQV44pK7886SZZFl5KF5kjFzYARFoAbgZ6kB2Wsa+fLB+pfy2Z6NfrBR38VYyPqbIbT73nK9G72zYDFfArI9wng==;
	5:Ndsr2u4x9/cvwiCEgikQH7VKksmxRNVNhLvueYvCv6NfFzGTrJAZ1K2C54UpS+0k/S3SufdKSuXKMM3f/S8TGmQSm9jt2+pArtSjquAAonyDUuqsUVY+gvivlhNevx2y9d63kZ1sY4bx74hTk31qgw==;
	24:MTFNSH8Jk0e5SAdq7cQW8cwoXGjgVKurFgD4nVonsub+a9V5qwh6tD/QA3yq6IYLX54chxDZEkWzisXdH7wNwbj4N4LUUGjGj82H5v8EqgU=;
	7:9VbMoYoOR9sUi6dD0LWDUlDPVV4dbEZL/0KVw/Lrd+oXBRPrxcEYPyiDW0h+f1bEA7Uk7mvT0Pqwkj6eyKVRa+7VeLygqXfKHvUNCNYzM2wyp8eC85TyBS/3jZhEKo04I9SDrM9tocfOu9YbM21nf1I/GHV3Wj4P+RqZ3F+uhizRdOP8diouqPadg/7u2xFuo5G9Ny9nADubpt/mtuRS0vLtXrWD46Pf1jMEbrBJ5Xk=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2017 16:24:26.3452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR06MB1255
X-Microsoft-Exchange-Diagnostics: 1; DB5PR06MB1255;
	23:zNi7jGLtPZoVrAnedtxjyMcFrTgcq5aM0iwik9pX9gUePoIdqJHHYvbOkSzSZiPY/pvYosBCwdGdLp6dr1Sj8YvOaoH+ZZYgvLRLlYqk1Pg6jOVk24P3AalNS9TGxDhaTirJ0qWMVXipjSqnlHxZJw==
X-OriginatorOrg: tbs-biometrics.com
X-Mailman-Approved-At: Mon, 11 Sep 2017 08:08:54 -0700
Cc: Adam Trhon <adam.trhon@tbs-biometrics.com>
Subject: [opkg-utils PATCH] opkg-build*: fix empty package name in error message
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
X-List-Received-Date: Sat, 02 Sep 2017 19:41:11 -0000
Content-Type: text/plain

When opkg-build detects illegal character in package name it prints an error
message with this name. Due to a wrong variable name the package name in the
error message is empty. The same error occurs in opkg-buildpackage as well.
This patch fixes both.

Signed-off-by: Adam Trhon <adam.trhon@tbs-biometrics.com>
---
 opkg-build        | 2 +-
 opkg-buildpackage | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/opkg-build b/opkg-build
index e02eaca..0fe513a 100755
--- a/opkg-build
+++ b/opkg-build
@@ -108,7 +108,7 @@ You probably want to chown these to a system user: " >&2
 	[ "$?" -ne 0 ] && PKG_ERROR=1
 
 	if echo $pkg | grep '[^a-z0-9.+-]'; then
-		echo "*** Error: Package name $name contains illegal characters, (other than [a-z0-9.+-])" >&2
+		echo "*** Error: Package name $pkg contains illegal characters, (other than [a-z0-9.+-])" >&2
 		PKG_ERROR=1;
 	fi
 
diff --git a/opkg-buildpackage b/opkg-buildpackage
index 719c9a5..b7c0e8c 100755
--- a/opkg-buildpackage
+++ b/opkg-buildpackage
@@ -66,7 +66,7 @@ pkg_appears_sane_control() {
 	required_field Description >/dev/null
 
 	if echo $pkg | grep '[^a-z0-9.+-]'; then
-		echo "opkg-build: Error: Package name $name contains illegal characters, (other than [a-z0-9.+-])"
+		echo "opkg-build: Error: Package name $pkg contains illegal characters, (other than [a-z0-9.+-])"
 		PKG_ERROR=1;
 	fi
 
-- 
2.14.1


