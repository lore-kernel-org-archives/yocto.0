Return-Path: <elvis.dowson@mac.com>
Received: from nk11p04mm-asmtpout008.mac.com (nk11p04mm-asmtp008.mac.com
	[17.158.236.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 372E0E00723
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 05:54:29 -0700 (PDT)
MIME-version: 1.0
Received: from [192.168.1.33] ([88.6.19.240]) by nk11p04mm-asmtp008.mac.com
	(Oracle Communications Messaging Server 7u4-23.01(7.0.4.23.0) 64bit
	(built Aug
	10 2011)) with ESMTPSA id <0M3G005106IMDD30@nk11p04mm-asmtp008.mac.com>
	for yocto@yoctoproject.org; Thu, 03 May 2012 12:54:28 +0000 (GMT)
X-Proofpoint-Virus-Version: vendor=fsecure
	engine=2.50.10432:5.6.7580,1.0.260,0.0.0000
	definitions=2012-05-03_03:2012-05-02, 2012-05-03,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0
	classifier=spam
	adjust=0 reason=mlx scancount=1 engine=6.0.2-1012030000
	definitions=main-1205030103
From: Elvis Dowson <elvis.dowson@mac.com>
Date: Thu, 03 May 2012 14:54:21 +0200
Message-id: <5896B268-BD82-48B1-8FEA-3F7DA21A96CE@mac.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1257)
X-Mailman-Approved-At: Thu, 03 May 2012 08:31:58 -0700
Subject: Build error: Could not inherit file classes/systemd.bbclass
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 May 2012 12:54:29 -0000
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII

Hi,
      I've setup and configured an Ubuntu-12.04 LTS 64-bit system, and I get a build error when I run the following command:

$ bitbake -c fetchall core-image-minimal

Pseudo is not present but is required, building this first before the main build
WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
ERROR: ParseError at /tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not inherit file classes/systemd.bbclass
ERROR: Command execution failed: Exited with 1

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


Best regards,

Elvis Dowson

