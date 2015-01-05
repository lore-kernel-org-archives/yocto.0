Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0855BE00931; Mon,  5 Jan 2015 06:20:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00, SUBJ_OBFU_PUNCT_MANY
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.7 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48ADAE008A6
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 06:20:35 -0800 (PST)
Received: from [70.30.87.145] (port=60145 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y88WE-000622-6c
	for yocto@yoctoproject.org; Mon, 05 Jan 2015 09:20:30 -0500
Date: Mon, 5 Jan 2015 09:20:22 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1501050916390.14368@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: dev manual contains obsolete ref to QT_SQL_DRIVER_FLAGS
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
X-List-Received-Date: Mon, 05 Jan 2015 14:20:39 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  observation: current dev manual, sec 5.1.3.2, provides an example
for bbappend files:

"For example, consider how support plug-ins for the Qt 4 database are
configured. The Source Directory does not have MySQL or PostgreSQL.
However, OpenEmbedded's layer meta-oe does. Consequently, meta-oe uses
append files to modify the QT_SQL_DRIVER_FLAGS variable to enable the
appropriate plug-ins. This variable was added to the qt4.inc include
file in the Source Directory specifically to allow the meta-oe layer
to be able to control which plug-ins are built."

  but the meta-oe content related to this variable appears to have
been removed some time ago:

commit 64c6887ca19d2ce52e538186c93163dddf68438f
Author: Paul Eggleton <paul.eggleton@linux.intel.com>
Date:   Wed Apr 10 15:57:59 2013 +0000

    qt4: remove bbappend content

    These changes to Qt's configuration need to be applied in distro layers,
    not in meta-oe.

so someone should probably come up with a different example of that.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

