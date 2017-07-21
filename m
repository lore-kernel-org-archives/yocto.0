Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C4B6E00944; Thu, 20 Jul 2017 17:00:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-05v.sys.comcast.net
	(resqmta-ch2-05v.sys.comcast.net [69.252.207.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E2A7E0083A
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 17:00:42 -0700 (PDT)
Received: from resomta-ch2-10v.sys.comcast.net ([69.252.207.106])
	by resqmta-ch2-05v.sys.comcast.net with ESMTP
	id YLMqddU11ywLIYLN4d4O0H; Fri, 21 Jul 2017 00:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1500595242;
	bh=OWeb3xw99ymdQq3rXmc9IQm0RkOwO5SaRzSYqhAaExI=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=KlIzWpZapLizr/DvUaHlRYt5OQjj3xOhLjW9c3BviP6jNGAlKxx/QlAaTO2X24IIa
	ilRF+Gf+zZsGE+3Z/ITv+WYPUoF7tVj0oNqTVEL1B2yDGhX4b1dsQ33jHpKVKyDxLx
	O/ZJ3Z560PPD9mtMR4J0VEnKnwqWDMCd6qo4HA3pZp5vAkatCeKSyf9iotLG+SHWsI
	/4nY+imh6YDslBXSRCk8IE31iYMccW2OLDV75Q3V4Q8lmvucjMoeZw9Nm9ra9ZhlU3
	mNJxPVfTV/KGIIMBFzHO46hUJGVbcNBeoz4E0jvCtQf1CcD9WGW8+sn+E7ArIf9zRB
	c7puHUs89B+KA==
Received: from [IPv6:2601:18f:800:acc1:c912:4070:9500:1ead]
	([IPv6:2601:18f:800:acc1:c912:4070:9500:1ead])
	by resomta-ch2-10v.sys.comcast.net with SMTP
	id YLN3doj9qHMYzYLN3dD2PL; Fri, 21 Jul 2017 00:00:42 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <7CF00C3D-723C-473B-8D5E-767FF15BBFD5@comcast.net>
Date: Thu, 20 Jul 2017 20:00:40 -0400
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfArzuHExY3b9Opvty5blx5E+f0v3QqIgX74NKbWTPtDqgNmhUKZB5IOuaXxT9Orh4++xtb+aXt+SgnOc1jRWIMNIk4kckrNK6ljO0sll8BEzY9/+zmbT
	BnzQ1npVuSKS5G7cGMEBwi5FSVyAFPMvjdQRii5NGEwuT9zKOJV6RfsLFiHFK6aSRXovNgoArYYhYJ7GXbf0ugO5xUh2k04fjg0=
Subject: SDK license manifest
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
X-List-Received-Date: Fri, 21 Jul 2017 00:00:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently building an SDK and a disk image using morty.  Learning =
quite a bit about Yocto.

Eventually I will distribute both the SDK and the rootfs image to =
customers.  I see that there is a license manifest generated for the =
full rootfs which is very useful.  My question is, what about the SDK?  =
Is the SDK covered by the same manifest or is there something I=E2=80=99m =
missing.  I assume there are some things in the nativesdk rootfs, for =
example, that need to be tracked.

Thanks!

Russell


