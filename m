Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4179E00C93; Wed, 12 Jun 2019 03:59:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80278E00B8F
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 03:59:07 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id c11so9784529qkk.8
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 03:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=uDBvx6EtCu2d8yJFDxD8uCKPPsQJOQL9GStkD+IRZ40=;
	b=baaECed0Ssy4FaqBiDeki1ZjDFcGne9J07xDK0DHjtBkzOdz0GfloyxFiE3RjXgQdo
	xcpS/Ia/J+4bvFvX9p5jFAjX8GXNu+vkKpvj+I1BviUQaSyeeY7iuMHERyFfCJ+C2/q9
	Ww1eAUisGF/+bozZFoSfnDJpQjDPFJUNgiERmZLLUqNGzIHty839DugzVJYDIMWxcgTF
	AV9BnqyK9YAtBwPkcN5LUCLp1CNBIY7pj3vIwER2euTQ3IMDVdUwfFlMlbHmZRSTVdnH
	vu1BT4Lv/k0mmIzewitq0G037IBGYDN4QPbP9X76Tx0zwN2ee2oxMnfH/wfwNPdapetd
	v1xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uDBvx6EtCu2d8yJFDxD8uCKPPsQJOQL9GStkD+IRZ40=;
	b=pei+Gm7s839+ul+BmqLz3CLIseoQW0lbGlFUHykqiCzeC+ZKsWfuRtrGZkYlF25RHE
	VtKFxtasO6ZoLqBmaJyETZ1c5JvvHr1O7t7I+L8YxxfYM6oECV7Xt8Mrre/+MJ02svcq
	qKN/BnrXecl0Vp5KP4V1WMPD3Bpr+WHA22++UwfTQwLmATnKDD2L17zq4EqOo2jWD7mh
	XEW/hnN19nDiH9ivkjBPLLg/YZ794J/SwTJLoVbH5MNEPS9IHzCHrz6SKxHHgTP6caM/
	4R5Vuza10LKQ3ea3naP8OxiSjxC4UCYMPOf4Juijx4g8snN1fydZC4UI/b8f/7vT9pBk
	ODog==
X-Gm-Message-State: APjAAAUQaqbq5+Jq+havnqrCMWbuPouSYQWSAZCy5MhDVjMCsMyQKF5M
	+iYerYoIGC++nxEdCKjoPyoxRVMBrxTXEzGXXb4SFa5Dqbs=
X-Google-Smtp-Source: APXvYqwPTSy1kmL91wVugos7bq69a4vN3NQ+MGH+GfAsn2vAfkzuQw60kZButOo6/UFaXlziI5WPyv5AuiHmxIV3LZE=
X-Received: by 2002:a37:4d16:: with SMTP id a22mr63761803qkb.103.1560337146561;
	Wed, 12 Jun 2019 03:59:06 -0700 (PDT)
MIME-Version: 1.0
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 12 Jun 2019 12:58:51 +0200
Message-ID: <CAGAf8LzGyxg63e19mWJT6rqOy5jv4vUs4-Py=872aWT5DPHHOA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: [current stable poky kernel] linux-stable-5.0.21-r0
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
X-List-Received-Date: Wed, 12 Jun 2019 10:59:08 -0000
Content-Type: text/plain; charset="UTF-8"

Hello to all,

I did (an hour ago) quick git pull on the several git repos for my BBB
target platform.

But I still see that the poky kernel is still one of 5.0 series! Why?
There are already well known stable kernels series 5.1 (5.1.9).

Please, check kernel.org: https://www.kernel.org/

What is the problem (if any)? As I found building kernels of 5.1
series with built-in kernel source tree, there is a mismatch with the
/meta/recipes-kernel/lttng/ lttng package?!

Please, advise?

Thank you,
Zoran

