Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B5D2E002AB
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 00:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=aeqwGIKrdD3aufALk1/l4THXtA+iJ0hA2DLFpo6d4qs=; 
	b=Hj5oYGhiVCMR+4jfJgSQ47mpb8gx6pfg3BTq5y3rBLzhknXgwaK/NH32UjIsSp78YR/CZ3HlbuRUQWqMVby5GOFPuyLCzFgZyQ6u67PrA9KWz9uxWne6sWmN4swd0vnB;
Received: from [109.224.129.17] (port=23480
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1TbSFa-00077A-K0
	for yocto@yoctoproject.org; Thu, 22 Nov 2012 08:35:10 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 22 Nov 2012 08:35:09 +0000
Message-Id: <8754B3FC-739C-4344-8D24-B31A5D86D48F@keylevel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Subject: Best way to support multiple versions of Poky?
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
X-List-Received-Date: Thu, 22 Nov 2012 08:35:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm just getting round to moving from 'denzil' to 'danny'. I've got a =
layer that makes some changes to a few recipes through bbappend files.

However, 'danny' has bumped a few of these to a new version (which is =
good) which means I now have bbappend files that get a 'there is no =
matching bb file' errors when I try to build. This is easy to fix =
(generally just rename the bbappend to match the new version), but I =
would like the layer to be able to work with older versions of Poky - =
mainly in case I need to make changes to an existing project that hasn't =
be verified under 'danny'.

What's the best way to do this? All I can think of is to have another =
set of layers to use when building against a specific poky version:

meta-mystuff
|
+--poky-versions
   |
   +--denzil-specific
   +--danny-specific
   +--etc

Is there a more elegant solution?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




