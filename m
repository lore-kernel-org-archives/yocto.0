Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA82FE00A01; Wed,  5 Aug 2015 13:53:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F84EE009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 13:53:28 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so122960658igb.0
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 13:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=LBBPpHNgVFH1gA9+DKkFZk+DxRvbbVkzY9H1iDX7A6s=;
	b=dId3gp0/yoW6atQJc/Ezot227tW9zcR7fpzAO5hrc9+uzJ+jiAjRhoN4qjvuA2yhuC
	jgMTgG9GFTk7c97wOwUN2VELL6Q6up/LAmAZdVtYshCm0HUm/7JFuq7o8GBDeTS/GRQY
	5KN2649tMKBvJqgojitqtrTNJHi4oDV+upYVUSxITQ4GLKOf1hrGobl7oiDIuviFECxC
	t2v8wnI5kHNXaoxNUt4rYUC61ABrLy9cbTunBfD9B6CN4gLn0SQyGMz0GGFu4iOKisuX
	QQrSvF26KOlz/lYLj1DMjOkeEuIXVWnKXbCKvXwtBZhYikppiXlbWK/4vVuJZfvCA5Wd
	NjwA==
X-Received: by 10.50.45.34 with SMTP id j2mr1542632igm.53.1438808007463;
	Wed, 05 Aug 2015 13:53:27 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	ha3sm3755268igb.15.2015.08.05.13.53.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Aug 2015 13:53:26 -0700 (PDT)
To: yocto@yoctoproject.org, Richard Purdie <richard.purdie@linuxfoundation.org>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55C277BF.5020309@gmail.com>
Date: Wed, 5 Aug 2015 16:53:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
Subject: building an SDK for MacOSX
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
X-List-Received-Date: Wed, 05 Aug 2015 20:53:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I came across RP's meta-darwin today that I'm hoping will enable me to
build an OpenEmbedded SDK that can be used by my colleagues who work in
a MacOSX environment?

Is my understanding correct?

Has anyone tried this lately? The last commit was from almost exactly a
year ago.

The description in the README is a bit vague. I've never used a MacOSX
system so I'm not entirely sure of the filesystem layout. What exactly
is needed to create the OSX-sdk.zip file?
	/usr/include
	/usr/lib
	/lib

Is that all?

Best regards,
	Trevor

