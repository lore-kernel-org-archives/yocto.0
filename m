Return-Path: <sigsbeeus@mac.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE061E00AB3; Thu, 23 Feb 2017 06:25:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sigsbeeus[at]mac.com)
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4148]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [17.142.241.8 listed in list.dnswl.org]
X-Greylist: delayed 3600 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Feb 2017 06:25:05 PST
Received: from pv33p33im-asmtp001.me.com (pv33p33im-asmtp001.me.com
	[17.142.241.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92423E00AA9
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 06:25:05 -0800 (PST)
Received: from process-dkim-sign-daemon.pv33p33im-asmtp001.me.com by
	pv33p33im-asmtp001.me.com
	(Oracle Communications Messaging Server 7.0.5.38.0 64bit (built Feb 26
	2016)) id <0OLT00L00X7GMO00@pv33p33im-asmtp001.me.com> for
	yocto@yoctoproject.org; Thu, 23 Feb 2017 13:25:00 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mac.com; s=4d515a;
	t=1487856299; bh=t+p0WmTlUWmfJchHo/OFwzR1AvAFVKlFY7e+6N68irM=;
	h=From:Content-type:MIME-version:Subject:Message-id:Date:To;
	b=rt5X47JBQ22LMPLQt7XG+mi4RkYX1Fvh8il7FaPoIvrlvQRcGlifMtqw3dnVdxqft
	Ns7LEQAtdmFplUpZIWmbsH+qOf0UYleN6j6M9qdYu1/uhidC+HFMhgBN4afM2LeExr
	HQhYdtpTlAao9hLnH/OMNIw1b1MvSiH9WjycVJOrpQnMwe3nIER08fuCrBDU2XzjQg
	p5UgxDLwXriP9MYL5MrnSOKsiBWN2dcF9Pb+TV1UmsTgQj4yoT/+sM22rGyp6cA6jc
	gv1HYIDHHgqkvxNyDsFnIbBVXcEq4xaBQz7zwjPjt84zUwhtQ9xYNeGZgZb728oPph
	F1kkw0Qpfhezw==
Received: from icloud.com ([127.0.0.1]) by pv33p33im-asmtp001.me.com
	(Oracle Communications Messaging Server 7.0.5.38.0 64bit (built Feb 26
	2016))
	with ESMTPSA id <0OLT00IJDX9LJU30@pv33p33im-asmtp001.me.com> for
	yocto@yoctoproject.org; Thu, 23 Feb 2017 13:24:59 +0000 (GMT)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
	definitions=2017-02-23_10:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	clxscore=1034 suspectscore=43 malwarescore=0 phishscore=0 adultscore=0
	bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1701120000 definitions=main-1702230128
From: William McKinney <sigsbeeus@mac.com>
MIME-version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Message-id: <73297B9E-30BA-4F4F-9A05-60B4EA688E6E@mac.com>
Date: Thu, 23 Feb 2017 08:24:56 -0500
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3259)
X-Mailman-Approved-At: Fri, 24 Feb 2017 09:11:46 -0800
Subject: Trying to build yocto-morty on ubuntu-16, machine reboots in the middle of the build
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
X-List-Received-Date: Thu, 23 Feb 2017 14:25:10 -0000
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable

I=E2=80=99m trying to build the yocto-morty release on an ubuntu 16.04.2 =
LTS box with 16GB of memory and plenty of disk space.  More than once =
the machine appears to just reboot in the middle of the build.  Has =
anyone else experienced this?  The krogoth and jethro release build =
successfully on the same box.

Thank you,
=E2=80=94bill


