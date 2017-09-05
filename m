Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4165E00BB7; Tue,  5 Sep 2017 13:19:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.69 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D619E00B77
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 13:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1504642744; bh=R2C71gI36rkh3FuON+KMR7WS0JZOaJEexJN+
	vRlStYM=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=kyw91cExWiQ/9j5uT0ABC8+
	MqqC9L1ZBHXzegUk9W+08oDxjxXTP3XgJ3ArVRNrE7/z4B/xkeM+/aIQ99KWQf/ig9Z
	y15iHCZEMvEAHh5IKqunq2iuVnV1PafE/eZINvA0U8+n4Sg4xf+YcXQXVds94yMHw5M
	vXGYA7xmYc/KckiZed6wVnxL4CmYtHqYOM3YqNWdsku8tBfDs4VApfM/IgZWfNt0fkM
	vzQGEQzEodCRiqJm0O1HRsoYwbZMqYrg4QfzFSwRACEngHHV0hC9QFbz/r0QhXopDY0
	ooA1/jz1HT8/AaYX9RP3n3xJxHYVEao2df0gQp3jjGXzRUbp+KQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=l2InqhhVd9p9Q4UI2cuwMbH7kCe/mt6DI2wgsBBpxPwB+ziOSqspxoXpcRJJpt5xT9l1k7MQtQFFmyodrago3a/SebVdrMI4lmpXggpzlMvKxSKp8XrWubKUEFQ5LcFG/Axb+dc0PcYMjYRWzjkbFAAns8RK7SX3pyKxN5ukwBeetvUrnwYZV4Oazz8bQu6fM5TQWaNpQ4OUb6EeT3HkiSz2l44bG5WPWu2oEmU1L6V8hx18xblJSzXpEVFQalm9dA6SothlvX0ucmx8i0BUCkUd3Hu5LV8lTpJT+VvRM9H3bRBlP8NPZEZh2BG74bvmnq9BaWyXDcSSyTScSWLCKQ==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1dpKJK-00079H-Uh
	for yocto@yoctoproject.org; Tue, 05 Sep 2017 16:19:03 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Sep 2017 13:19:04 -0700
Message-ID: <F98BA99E4B0943A0A53066A561848FB5@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMmhDgne9EoQYucS8GHXTgaCAJTeg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688b36f13f4b0a624f4b8903753fc4a9ca1350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Build RPi without wireless?
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
X-List-Received-Date: Tue, 05 Sep 2017 20:19:04 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

How do I build a Raspberry Pi image without WiFi or Bluetooth, or any of
the related utilities? There seem to be lots of packages involved in this,
and I can't figure out what's pulling them in in the first place.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


