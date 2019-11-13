Return-Path: <vladimir.molokov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B23F0E00E1F; Wed, 13 Nov 2019 12:45:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vladimir.molokov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.219.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
	[209.85.219.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85E40E0078F
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 12:45:08 -0800 (PST)
Received: by mail-yb1-f170.google.com with SMTP id i7so1504922ybk.12
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 12:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=GTQgQhjbbdBwxm8LVDmpGlC4ldryfRdiL+4noDr9owk=;
	b=dQg0Qfq5InCbwErVhOSNEnAesRLTSZ7enopOZ1nXANorZrqebV4whW8hrHgmhBGuVO
	pR3V9wjjzDlcpGQCQ+E2nOEcoQq0Qfrmz/tV0NfDDvaAqdAIghFFe/7nENp8Zj7fpYNW
	OYStwp35vtzHgEOII3myDOUCqpbHEBuc/Fs94ZsYLWH/UC/KsjzCo3WduCtV113pypkO
	8oK42H+vTHApbmyu4U2GsXrsCcW12WMX9M0IyvpE269gF/iNR8f8XYQMAfQ0bXoNgj0G
	qrcXf12GSVc4jKCQH9sE6aYYgX1ruaAroXJDKTepGOlGNEepa2qOlT3yVIHBEnX7s4kr
	91pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=GTQgQhjbbdBwxm8LVDmpGlC4ldryfRdiL+4noDr9owk=;
	b=FwlAXBpKCHAq3RZwvMjHi9OL9mCnYW71prVX5mVqPq4xlbobwEAhyVDgMeey7fmkyu
	e80Js/L/wXyynCNZV7TyJlazX8Y0t7I2i/CzIN9HfXpVumX9Fp3tlIzJPmKXdpXgFCy3
	aC6Qsa6gC+tSJ4Ie/NBn7f8VGq9iz9/J6R8VopENKzxHq/0l+4jupkN0LBScA9Ll2l8/
	KsY5ThvM6kfRgt9I2TBWJjPp4wjcr4A1yMlT8tgILD2f9fvm+JDUFDxTpdrycF/xj6mz
	DR9OjjuKDVLkTh2Ouc/dJGo7inXSraF6rQYViqondGndBmgXjdj/0tRSFfH21v6Ctm23
	hmaw==
X-Gm-Message-State: APjAAAWkBALJ21sGqXRfE7u3/SJQaMEGJ/dVGLSj/bX6RBjkNnYs0MvV
	xX08n6lrok8kGS0x5WF4YT5vMD9LM9bnBYcZeBB7wQ==
X-Google-Smtp-Source: APXvYqxhVkSotgkUHnMRE6G5iQWvfgbDg4Jf/WCMb5kWvIzhY4r68kCQpy7F+uE00RxcHL2Kc6dtyIYqYsi7WgoBZlw=
X-Received: by 2002:a25:6e86:: with SMTP id j128mr4226506ybc.456.1573677907345;
	Wed, 13 Nov 2019 12:45:07 -0800 (PST)
MIME-Version: 1.0
References: <CAE2LOAyv6+=fpMXEGBrA9nv4No9EaXT3HFffuJTd0zn8+cAkJg@mail.gmail.com>
	<CAE2LOAzK316nQE_BU9HvqAX4kNbVjhJcDn9ZqP2itLvzrwteKQ@mail.gmail.com>
	<7077004d7c363f729d9fd23ed6b2095592406d6c.camel@gmail.com>
In-Reply-To: <7077004d7c363f729d9fd23ed6b2095592406d6c.camel@gmail.com>
From: Vladimir Molokov <vladimir.molokov@gmail.com>
Date: Wed, 13 Nov 2019 21:44:55 +0100
Message-ID: <CAE2LOAybX7ThQosx6D6g+V3WJcpfF8n4M8D_QXJxfvDV9trBKA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: puzzle: simple recipe gets image dependencies
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
X-List-Received-Date: Wed, 13 Nov 2019 20:45:09 -0000
Content-Type: text/plain; charset="UTF-8"

> can you share this dot file ?
sure:
http://gitlab.com/morokov/build/raw/master/task-depends.dot

also here are more files from the build directory, just in case:
https://gitlab.com/morokov/build/

