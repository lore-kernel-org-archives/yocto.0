Return-Path: <mkarascybi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9890E009D9; Fri, 22 May 2015 06:34:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkarascybi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB47E00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 06:34:30 -0700 (PDT)
Received: by igbhj9 with SMTP id hj9so36318275igb.1
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 06:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=pWboKroBFIImLaCyQwrvSfPTkifZLUef78XkFpQkVLg=;
	b=rOl5D2qNniihkVjjLVBZ7mPPlgVk1JysIWrYSjQynZh5oR1tEZliewExVD6tCfR/6I
	LORlXIZQlmCddbcMZxBhTvAxnjBvfmFUJk7P02pd/2wC4OtiUZlTB1wJp2KXxmpP36Fn
	2rEd6aOQ5B7DjnoCbeowtep7OyOPjsC59REc0HmnSMbdNHQygRb9KbYyCyZBBmHKUHG9
	S3iLruum2cXzP90FP04b4Xm6Zs1jiWPUKzrPnphejO80elZWF6ix09cQCse2yrkMUlMe
	sSIb/7ewNqRvWMs8VctFB/0muj2KN87RVptDMOTrB/oQEtGnGWnEZ2jP29nAJQYEa4G1
	9+AQ==
MIME-Version: 1.0
X-Received: by 10.107.15.149 with SMTP id 21mr5644687iop.44.1432301669449;
	Fri, 22 May 2015 06:34:29 -0700 (PDT)
Received: by 10.36.73.71 with HTTP; Fri, 22 May 2015 06:34:29 -0700 (PDT)
Date: Fri, 22 May 2015 09:34:29 -0400
Message-ID: <CADu_VSY4d0Q-gtJq4JjbY9u1Rxx+Qvubg1_QBW6O=E3B2nmt+A@mail.gmail.com>
From: Matthew Karas <mkarascybi@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Configuring dropbear ssh
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
X-List-Received-Date: Fri, 22 May 2015 13:34:31 -0000
Content-Type: text/plain; charset=UTF-8

I've tried googling and searching for a while about this.

How do I set up yocto to configure dropbear ssh?

I'd like to prevent password access over ssh, only permitting key access.

Thanks.

