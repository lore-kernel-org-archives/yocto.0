Return-Path: <karl@karlv.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFF9DE00C65; Wed, 30 Mar 2016 11:57:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0011]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [66.111.4.28 listed in list.dnswl.org]
X-Greylist: delayed 541 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Mar 2016 11:57:24 PDT
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23E14E0092C
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 11:57:24 -0700 (PDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 1882D20C68
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 14:48:22 -0400 (EDT)
Received: from web6 ([10.202.2.216])
	by compute2.internal (MEProxy); Wed, 30 Mar 2016 14:48:22 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=karlv.net; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=rU+
	Zh35dB7+x+0hD0byp3BdJLwY=; b=QotARQ4fYxnip1VG9S8fuW8dueG2G+n3Xue
	GBswI4I9QoSCyBmPY1m74wTAQl9csk0OhNz6hFK3p5dUwngkUyRzw8gKBdlS5RiG
	LvQGRlrESoERHsjYOKZShAkRp6Gs0Y1YVEawc+G3I5p+Y+7UcCNd/rfaAw819KUZ
	cyV8lPZg=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=rU+Zh35dB7+x+0hD0byp3BdJLwY=; b=kvi2e
	v3VkLcq4iVqHioAsQPfhrxllAYMYu/P1Mh/GRPsug3WBTKBy34i5Yih6KqNAtERT
	uveJP1BV85USHq+QtFmexfyV9Y+uX7bKWmvI8xunZRp29a4pgCVXqLvNvRQx1mc/
	s0x8YS3B44Nn9wKmGsex8NMrciz7uBZIclyOtk=
Received: by web6.nyi.internal (Postfix, from userid 99)
	id DF549475CB; Wed, 30 Mar 2016 14:48:21 -0400 (EDT)
Message-Id: <1459363701.3311990.563914570.78E2C83E@webmail.messagingengine.com>
X-Sasl-Enc: IUF0XLrxIm5juYM+74AXGuItLvQ9p4zgxKpbbD4qy0WY 1459363701
From: Karl Voelker <karl@karlv.net>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-Mailer: MessagingEngine.com Webmail Interface - ajax-2c910a9a
Date: Wed, 30 Mar 2016 11:48:21 -0700
Subject: Can wic split rootfs files across partitions?
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
X-List-Received-Date: Wed, 30 Mar 2016 18:57:27 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain

I am trying to build a multi-partition image with wic, with separate
partitions for / and /var. So, the / partition should get all the files
except those under /var, and the /var partition should get the files
under /var.

I thought this was possible because of the suggestion in the docs that
the mntpoint arg of a "part" command could be /usr or /home (see
http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#command-part-or-partition).

However, after trying a few different things in my wks file, and looking
through a lot of the wic source code, I am starting to wonder if this
kind of thing is not actually supported. If it is supported, is there an
example somewhere? None of the examples in scripts/lib/wic/canned-wks
appear to cover this situation.

Thanks,

Karl Voelker

