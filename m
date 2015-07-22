Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D564BE00A28; Wed, 22 Jul 2015 06:07:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0F1FE009DF
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 06:07:53 -0700 (PDT)
Received: by qkfc129 with SMTP id c129so109727432qkf.1
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 06:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=AGK0EXJlbl7Q111Io/x4av0dhJlJQM7GKiNTuQnnoNA=;
	b=aELADr6kN8BUyVRQDyv+9ki1V2wG3HPwvVQweumqFE/KLCkGrP0vvX9A2Wf3MHhGs9
	Id2cF5lNkAKNrws4umYeeqyBcKa3DMUNzWatgKygfvKzyluXuOWUIjOnV6zH+rngk/8L
	8HOZJlkl5GKZQkWY7SnyOeS76Eu6HAPT9/VOwJEHfa7oQat0iKgBok51eO/dPXAUQQL5
	KPkzj68jZcmmA2arLYG7H7aQq5/JfmPikPP83aXgi7lYRpBlON9vkRj7uAkRPzwFqE4G
	7nR0t0XucV0S/5KBkZyq4/NXIMFJVFK8QR/8okoUaJicdjAdghdRf7jJBBqFN7JmsjW+
	Ihjg==
MIME-Version: 1.0
X-Received: by 10.140.34.135 with SMTP id l7mr3320281qgl.79.1437570472888;
	Wed, 22 Jul 2015 06:07:52 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Wed, 22 Jul 2015 06:07:52 -0700 (PDT)
Date: Wed, 22 Jul 2015 10:07:52 -0300
Message-ID: <CAF3SDA4myioYp5a1b4iouOzTeww-na8XMR7-i8-EQ5Tw7+RLWg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Wireless connection wizard.
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
X-List-Received-Date: Wed, 22 Jul 2015 13:07:54 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I want to know if is there any wifi connection/configuration wizard
(GUI) available on Yocto. I'm using Dizzy release. I got wireless
working with wpa_supplicant configuration using an TPLINK TL-WN722N
but now I need to easy configuration for end user. On desktop I use
wicd, but I can't find any recipe for it. Any suggestion?

Best regards,
- dhs

-- 
"Do or do not. There is no try"
  Yoda Master

