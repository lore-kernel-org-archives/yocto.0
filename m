Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BFECE00D83; Thu, 12 Sep 2019 09:58:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.86.89.61 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADFAFE00B65
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 09:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1568307527; bh=E9v0Jz8b7XzmCsI21QF2d120B1HJVQq1bfZG
	1CiI61k=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=T
	QMNQ/7xNlPrsfnXhUFjGX1s571xrpDz81sOqZ9sY9EsbhU4X+DyQZajEFqmM81fd5+E
	Wkz7VfziOPa0+8Sor18ZkMQl0pIANVFVmzponhL7gVuzqb5GH2rFNmBVRqh1Xb0TNt7
	JEEu0x+mgVOwrK6DqOyxRY8mvkYi6U9qVBBJUYPt6TKjr8DfjxTkyOShqC5gpiyyWMu
	x3ZOX9UMtqQPRNBpE20YL4GEvQxcT4u2qXx3Xo4kO2FdT+vcvKwRW8Vn7viM2PuHVYT
	ZJoYBAxQKvZutacvFpzl8AXSL4BKW9M5WQhNkJBQr5b5OUO5gfnVtRHmUzQV7N/evMk
	qKh4Qw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=WLiBgihI1DUFQLC4RC8jiUc65jThDRjroUxfshG1cblbX9hB/7VpnpWcpHDbcgRjKslAP4lOdWAQseC0VwcuwhSFuysQI/ImWwWUG0kNoExVbeToDUB4zCQULHM6DTvzKttnpM1emtt3XTpEPjIJHclUnxuQwtEkVs4CdMueBLM95T7C/tcjTgeUzwYxwTYSnzR5wxhrTUpF7+DZka0X3x2nxEIHg3UQjznswoZtV+zd/U9jKkINFe74nZBE9t/dup740FQo6xY6gVxNOUBhO1kIxY/s05A2HRDJj8YWcJbHkcgh/oVQ1PI1sgp0ZLIOQbDhBfywRJoLbh8g4wDeIA==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1i8SQg-000Fbf-6v; Thu, 12 Sep 2019 12:58:46 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Jussi Kukkonen'" <jku@goto.fi>
References: <6F3C5ED776614BD8B5EE2E8DCAFBFAA3@PAULD>
	<CAD5=o+ostuMAdfPEwvWzo95woVGdEGVY8Ddyp5paaDhYVzhLGA@mail.gmail.com>
In-Reply-To: <CAD5=o+ostuMAdfPEwvWzo95woVGdEGVY8Ddyp5paaDhYVzhLGA@mail.gmail.com>
Date: Thu, 12 Sep 2019 09:58:45 -0700
Message-ID: <527EBDD9EA054C6B9C6110D2D49FF1F9@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdVpSVP+FBxgl7/ORSOKkkWIKI/niwAQINCg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606883d45951eaa9192f8cc10201e0247e122350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: One second timestamp resolution?
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
X-List-Received-Date: Thu, 12 Sep 2019 16:58:48 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> From: Jussi Kukkonen [mailto:jku@goto.fi]=20
>=20
> I think file timestamp resolution on ext4 is one of the things that
> depend on inode size (ext4 does not enforce reasonable values because
> of compatibility with earlier versions I guess). So maybe check inode
> size (should be 256 bytes I think?).

I don't have tune2fs on my embedded system, so I can't check, but that =
sounds like the probable reason. The nanoseconds that ext4 added are in =
the upper 128 bytes of a 256 byte inode, for compatibility reasons, so =
somehow I must have ext4 configured to use 128 byte inodes. Where would =
this be configured in a Yocto build? I'm still on Pyro.

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


