Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53EB2E00C38; Tue, 15 Sep 2015 04:16:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.230 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
Received: from smtprelay.hostedemail.com (smtprelay0230.hostedemail.com
	[216.40.44.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE790E00B72
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 04:16:17 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 66D6F12BA1C
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 11:16:16 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: pain86_70e7659754748
X-Filterd-Recvd-Size: 887
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 11:16:15 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: <yocto@yoctoproject.org>
Date: Tue, 15 Sep 2015 12:16:10 +0100
Organization: SDC Systems Limited
Message-ID: <006a01d0efa7$ed9387b0$c8ba9710$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdDvp+yvo3Xc1BwkS7+ztzYK3PgqRA==
Subject: Dumping sysvinit
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
X-List-Received-Date: Tue, 15 Sep 2015 11:16:23 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Hello,

Bit of a newbie question (probably) but what is the easiest way to dump
sysvinit and use Busybox init in a core-image-minimal image?

Thanks,

Andy.



