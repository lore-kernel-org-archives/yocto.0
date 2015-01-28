Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71BD7E00815; Wed, 28 Jan 2015 01:07:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15640E00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 01:07:22 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:28254
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>) id 1YGOaj-000m7n-B2
	for yocto@yoctoproject.org; Wed, 28 Jan 2015 09:07:19 +0000
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <E1DAF5EB-8BE7-4EB5-8AD9-B7F2B8A7AB95@keylevel.com>
Date: Wed, 28 Jan 2015 09:07:15 +0000
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
Subject: Configuring static/dhcp IP at boot time
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
X-List-Received-Date: Wed, 28 Jan 2015 09:07:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to get an image to optionally use a static IP when it boots =
(i.e. static or dhcp depending on kernel command line parameters).

When a static allocation is being used, a script within the init of an =
initramfs edits /etc/network/interface to add a static entry for eth0 =
and to add an 'up' command to set the nameserver in /etc/resolv.conf (in =
the final rootfs) before switch_root is called.

Is there a better way to do this (I'm sure there is!)?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


