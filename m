Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FA77E0106A; Wed, 23 Sep 2015 08:10:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.232 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0232.hostedemail.com
	[216.40.44.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54528E00CDF
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 08:10:00 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id B1A88352005
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:09:59 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: honey85_9159c0976b532
X-Filterd-Recvd-Size: 1350
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:09:58 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: <yocto@yoctoproject.org>
Date: Wed, 23 Sep 2015 16:09:55 +0100
Organization: SDC Systems Limited
Message-ID: <00a201d0f611$e88dd2f0$b9a978d0$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdD2Eec7QOj2V+fIQLKT9hBeiqPwIQ==
Subject: psplash wierdness
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andy.pont@sdcsystems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Sep 2015 15:10:04 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-language: en-gb

I have spent all morning fine tuning psplash on a PXE booting system using
an NFS mounted root file system (all built with Yocto 1.8 for the
intel-core2-32 machine) and all is exactly as I need.

When I boot the system using an initrd of the same file system the first
output from the init process is:

/etc/init.d/rc: /etc/rcS.d/S00psplash.sh: line 28: can't open '/dev/null'

Line 28 of S00psplash.sh corresponds to the call to /usr/bin/psplash to
display the image to hide the init messages.

Am I being a complete numpty (highly probable) or have I missed something
about using an initrd?

Thanks,

Andy.



