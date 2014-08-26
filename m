Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7E13E00576; Tue, 26 Aug 2014 12:53:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EC1DE0054C
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 12:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=YyTHaSS4F1y9/KRrIrEeuojCXzL2irOz9pFU4A0H1V4=; 
	b=iKWE31tsXVzYWdhcjwRkOowuP44GDFWujWfDrR8iuKiEH5anxAUtaE7DJbevfryFhUzGf4K6xFRzMpcNK96Y+Fro/fIMvir8QPaOUZs6dOHZilDbpYLRjFFYKqWq9mZTK6V3snq58LzFwsRH39y9ebE/M5Ya8SWA10TZg3t8h3c=;
Received: from [109.224.171.0] (port=43527
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>) id 1XMMnX-003w3N-UN
	for yocto@yoctoproject.org; Tue, 26 Aug 2014 20:52:57 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <5390133D-A7A4-4E21-A2D9-D9BBAF6F849F@keylevel.com>
Date: Tue, 26 Aug 2014 20:52:58 +0100
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
Subject: systemd - how do I wait for a driver to load?
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
X-List-Received-Date: Tue, 26 Aug 2014 19:53:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a service running under systemd that will only start once a =
kernel module has loaded and created its /dev/dvb/adaptor nodes.

Unfortunately, it doesn't load until after the service has failed and =
gone into an error state due to too many restarts.

I could "fix" this by increasing the restart interval, but is there a =
way of adding a dependancy on the kernel module?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





