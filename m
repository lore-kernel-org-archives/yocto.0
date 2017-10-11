Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F086DE00C7B; Wed, 11 Oct 2017 11:24:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA86DE00C77
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 11:24:15 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id i124so7223229wmf.3
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 11:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=Mn3LG4OSEjrdQ0ncu+WzrD6NpU+umr455PLqBUjzfpU=;
	b=PjGMtgJmgygoe0MHp6QiKUb1xs8+KpcnUe7QNCCsL1tzZuhXU+gZ5RRX1UZKQ0+vne
	cwWB5SWFNuJ7fK2u/6e9Rknwh7no9K4ODK3ZxOvjdJt62qBJRJg9r02vyK+9QsMHNArB
	1dq1QTGIlxf3+ouzSAf8LnSIZZ9RvS9HubSSM3SnQdT8yK01KZ1Y7q4orMygMRUr81wj
	P9ZSE5jS/4EOWdlWgnu9uwdvQc5WNIkvkeiru8g1RqiGrJUx+ZP/tnCrE/dqD/sC3UFd
	GzVvlNTDRQRtMwjo7MAErLK1+BzxcTuF3Z9l3jteZYT5oyhBXrsMCJ8e/wkqDbX6xWb0
	RBPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=Mn3LG4OSEjrdQ0ncu+WzrD6NpU+umr455PLqBUjzfpU=;
	b=eBRVBqEb78AlN4b+Rdg5O/ixN2g6RTe9nSI4WF4GgOjcid4gUAWA7unjFpPNHNFpEt
	RDbHdvFn8u5RxaN40ISsBSwy5hAMWxEQAuw9+kcZHI7QJLembiKbl0WkPigYakxIV7L+
	0NJmU3Elmj7puqyA0ayIl0RBMRsD8NT8rflWVyC0LOkHnZw+Zb3R91yYlxJ9UEGkYvk5
	G+yv9jj15N9c7UizdWqWdkRwGQ3Uc28BRKwM35dQ+nHZEUB+wUhHVLtMSh427zk1HqHM
	k4YMciXVpLLcpm4FS9+fVEw3Dj+qD9SnAXvGeYeZXeKjgCwi0hKuUvXiWQDsLmTZZ2PH
	KRIQ==
X-Gm-Message-State: AMCzsaXoJjwr8anWw5nZPCXZDXjWM1u+G/0oa6CGe6f2V9oKDPjsPS4E
	SiLf+VxckSrbwyGnebrAEaDS2ozQ
X-Google-Smtp-Source: AOwi7QDwOi+gnpOPaXljjcDFClQxJz+tEJkTIQuSGdPum6fE+AMeuT3BldbcUW12UKaAuWzSE3R5KQ==
X-Received: by 10.28.2.2 with SMTP id 2mr420792wmc.128.1507746254000;
	Wed, 11 Oct 2017 11:24:14 -0700 (PDT)
Received: from [192.168.42.50] (p578adb1c.dip0.t-ipconnect.de. [87.138.219.28])
	by smtp.gmail.com with ESMTPSA id
	u18sm16137434wrg.94.2017.10.11.11.24.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Oct 2017 11:24:13 -0700 (PDT)
To: yocto@yoctoproject.org
References: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <67150d7b-80ba-e5e0-86ef-5f7f8afcbfca@gmail.com>
Date: Wed, 11 Oct 2017 21:24:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
Subject: image dependent pkg versions/pkg variations
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
X-List-Received-Date: Wed, 11 Oct 2017 18:24:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I would like something like this:

1) Produce just a single toolchain like

2) Choose packages depending on image recipe

So far so good. This should be pretty standard, but

3) Different package versions depending on the image recipe?
Well actually I would like to have root file systems with different 
recipe versions inside
e.g.
Customer 1: prg1_1.1.bb, prg2_2.2.bb
Customer 2: prg1_1.2.bb, prg2_2.1.bb

4) Different package variants (e.g. extra compile flags) depending on 
the image recipe? Again different content of rootfs.
e.g.
Customer 3: prg1_1.1.bb (default), prg2_2.2.bb with extra CFLAGS=-DUMMY)
Customer 4: prg1_1.2.bb (default), prg2_2.1.bb(default)

===

Is this possible at all?

I could define per distro image versions, but the name of the distro 
e.g. "poky" seems to be part of the compiler prefix, which is not nice 
and I would need to build the same toolchain multiple times, which again 
is not nice.

If the choice is based on e.g. the distro variable I could use it to 
distinguish in the recipes between different build variations, but again 
not nice.

What would you suggest?

Regards,

Robert




