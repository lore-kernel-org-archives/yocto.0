Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DBC4E00DF1; Wed, 30 Oct 2019 23:25:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F54EE00DA9
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 23:25:53 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id p8so4380963ilp.2
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 23:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=PsfuB3UsKNFMWdrG3c/IOfYVx6aggScaaduz5/0X2gE=;
	b=D0hiUNNJPkmvDfHUcaPJrg9wU4RzU63nXebZyVk41ZvxCPZGHwBx/E6IV8TtvUuEHV
	p1oXid9FOiL1XfhcObwCs/tjZgwiUWguWYKDF3qXW+UhN71r9HoJwMEGHmI/TYdBrfBn
	nzqh1C24nS/iTmslf9M/IMP8DMfQN6RGOtEX1d26oKheuvTZ2uvK4DM9cJCsDY3LgVto
	7oWAARBFzuQOlZuhbbbTrl4PQPoV1UAcUO0reMlgpKQGf7TFTkC0TnpBomdINWxxw6ws
	h8lDP3Oaq6nlxn5ciHHnudaeFVuDj41S33q/hufIesPQO0P3ks5OQoButahC7ExW/mX5
	g+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=PsfuB3UsKNFMWdrG3c/IOfYVx6aggScaaduz5/0X2gE=;
	b=q2sfIYoTC7I5WAuluS5Lae1bXRvRLW8BTpQvXoygFsemq4GEZIy7Qnt6kyjOX6+8f5
	x2RXwCgr3OSb0HBpfiN/H/MR8/8CvvzzJYuUyJTlFtflqL7UIAb3EwxwznABmYC0UDG3
	aAebJGmaQohOv0kO4InKu+8Fawi7LeBlohR1aXPiqMudYy4ZJSb6BMAeslOCbFzr9wqU
	Ism8HJ6ax1ka7YIfWsUPCwj3hPHbrj0r+ZZQl/AI09L4nGKu6nFKclEst7O4gK9Ahoaa
	J2nlu6yYO7S6uOFuYVlqoQTb8HuAzn+BMzMDb3nPYvMjhzHv9Dc3RntIbPDMo6Fdav7/
	wB2g==
X-Gm-Message-State: APjAAAW+F2VBUAz9gedrvVVEoJ6PJVckYJ1mu2FWwmX9P/HuF4mn8uqY
	42RyFtM6c9QEJ5V50hjotZg8zOOieLBSGvYQLcYIna7r
X-Google-Smtp-Source: APXvYqyKJy0Pq+/qeJIU/NfbEemF2c16ykUyO6C0mPCoCIwVl/89wzRxh5GtZjiFj5OBjEEqz4OAjEykPr/kds0igmk=
X-Received: by 2002:a92:c991:: with SMTP id y17mr4320053iln.306.1572503152406; 
	Wed, 30 Oct 2019 23:25:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:aa09:0:0:0:0:0 with HTTP; Wed, 30 Oct 2019 23:25:51
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 31 Oct 2019 17:25:51 +1100
Message-ID: <CAA=hcWQgrC0LGdejAEP=i9pnR4BS3q5XqnqBYbwD9221wkGA2Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Which recipe for qmicli?
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
X-List-Received-Date: Thu, 31 Oct 2019 06:25:54 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

The qmicli is in libqmi-utils in Ubuntu package, but I could not find
Yocto libqmi-utils, only libqmi recipe, is qmicli in libqmi?

Thank you.

Kind regards,

- jh

