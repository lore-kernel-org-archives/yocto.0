Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3229CE008EA; Fri,  2 Jan 2015 06:52:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A187E0082F
	for <yocto@yoctoproject.org>; Fri,  2 Jan 2015 06:52:44 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:52070
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>) id 1Y73af-003W2Z-VZ
	for yocto@yoctoproject.org; Fri, 02 Jan 2015 14:52:40 +0000
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <60148DA2-CAB2-416A-BDEE-783705B3E24E@keylevel.com>
Date: Fri, 2 Jan 2015 14:52:37 +0000
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Subject: Kernel configuration
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
X-List-Received-Date: Fri, 02 Jan 2015 14:52:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I thought I knew how to do this, but... ;-)

I'm trying to add configuration items to the valleyisland BSP. I've got =
the following bbappend:

File: linux-yocto_3.10.bbappend
-------
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

SRC_URI +=3D " file://enable-hid-apple.cfg"
SRC_URI +=3D " file://enable-R8169.cfg"

However, these .cfg fragments aren't even getting pulled into the build =
area.

Adding a reference to a non-existent file is ignored when I would have =
expected to see a fetch error

SRC_URI +=3D "file://fsdfsdfdsfsd"

What else do I need to do to get my .cfg files pulled in?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


