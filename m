Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AABA6E00563; Wed, 10 Sep 2014 05:53:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B733E0049D
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 05:53:15 -0700 (PDT)
Received: by mail-ig0-f175.google.com with SMTP id uq10so6412859igb.2
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 05:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WAWwQlaNP2oMCPc+zbYXxmY24bagRFASkBU5uUwhusY=;
	b=VyLEos5JggneXzsxP181Q5cP6z3K1KmfPIsPohFqwTqMh5D84ffpHAk29faEJarLi1
	CmChn7+LBd7crwfA3J5hda06NN1KjWWHOPQQl+5lTwid/ZTbuffG4zvYMD9T9ZPoO72T
	Od4+n9yGy6z+qSJtGQB+PGy9gZHEIsGQREi8FMvrWYXXYIDicvoWxEsUfD+mcxSUxdW1
	V1oLDmjB7zkKzyBnG9pQyzr6TKeWrsMWJy0QAZEfM0YENThcHkkRaneCM/6IDhQ9ckap
	jJUrx51sBIXm+ASh+KGihiHlFpYaytfubVTETOWEHYogUwrJ3dpVvBmzRcWc48G1bfNu
	nkOg==
MIME-Version: 1.0
X-Received: by 10.50.176.169 with SMTP id cj9mr5918779igc.14.1410353594548;
	Wed, 10 Sep 2014 05:53:14 -0700 (PDT)
Received: by 10.64.238.106 with HTTP; Wed, 10 Sep 2014 05:53:14 -0700 (PDT)
In-Reply-To: <CAPhDKbFyPcg9+ViCw0pXzK1+MC8qEcx==dH_eOgN+f-BuPKu4A@mail.gmail.com>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
	<534F9598.5050003@ge.com>
	<CALb2249LccFPUKvUSbU1Nax4LQc6Nc8iXqT9Cx24YOAcf6rv2g@mail.gmail.com>
	<CAPhDKbFyPcg9+ViCw0pXzK1+MC8qEcx==dH_eOgN+f-BuPKu4A@mail.gmail.com>
Date: Wed, 10 Sep 2014 13:53:14 +0100
Message-ID: <CAPhDKbFBPuxkh_+yfFH+Q+pQ3DSpPEKRpfbVE1qyW7uEiTDoqg@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: Leo Schwab <lschwab@sensity.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Wed, 10 Sep 2014 12:53:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

Just a quick update, thought I'd let you know that I have a basic
working layer here:

https://github.com/errordeveloper/oe-meta-go

