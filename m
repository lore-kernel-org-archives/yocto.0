Return-Path: <nickaein.i@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC516E00DC9; Tue, 13 Mar 2018 21:16:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickaein.i[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51110E00CE2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 21:16:07 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id z14so2114464qti.2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 21:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=w3ZwSMc9R6sj8tu/aH3ZYlYGAjwOVP8YvB3NemuL0r0=;
	b=ps7wWn4QgUnehEgr2GSP4SaR+tqadxH+vJ5d5fKA7b9g0ypB/q+QEAfIoo/W9qYcAD
	4B/MafCakCtic30emZtmDSnqLIQ1YhoACgV8WwneBv4jb5YMh/5lfSmZgJUZGfwVdu60
	TLkLPQ1RJGdY/FVQBCKHnZ6RTKxfQ8JbsF7+3VfMBgwYOvf5+UvwhqTJhC+iwQFNPVtR
	B97lXwHHi2eIkYqUwUh8ZRFdijc4KuY+WP1ddTCr66iZ4u7Mf3KWkSeIFS+LQzBC2Gb8
	CZ4Ap1eFjRE9rH9VLGgcx79mo3vlyfsDlppTX2jasL9kg76RRkMnwHjRYL3DAtrNn35T
	bT/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=w3ZwSMc9R6sj8tu/aH3ZYlYGAjwOVP8YvB3NemuL0r0=;
	b=bgbt7IYi2b+3AfEEvJSdBuHXxmcTS8972J9pKb75XuvZpuR350RPa8NB1FWwifSDdN
	RMArkYmPZz8HPfQzI0xZWp4CmAGhvEPJTC42cp7pLs4rnk8Kh+6aVFAgN2CD/c0AX+h2
	AeNGmG+JFXA9hOgWTyWVZsxL0pKDGMxgk6stx2+/oYBwLVPKZnoJJJXhngVFARdqx7+6
	RoigASjOOr6Jlwgt71tm9GoWX6fAh6GtC85eQ4npgWbYSKS+IcpK889VFQGXxr70I65F
	3eHdu5h+0vvuFXz1m4ItVYcodkvRHbpo5DpZ8gbgEg+JBCLYy0T9EVG7kRGwK60WBQv2
	TosQ==
X-Gm-Message-State: AElRT7ERboHR+2TZQK0tAiG2q1ujwfRe+muloodlmlJIs5JNWQtiISw5
	GhkWb3NJXBfhQVJlX5qHJhWK68PgU6KHs9OkTcsC5aVc
X-Google-Smtp-Source: AG47ELvFNMl+Adugn6zwZKlzHnslohw91eE33YVHii9jXav9TNARpfPaarmNoJCH6CXNZyf6iiiImwwP7duRVOdld8Y=
X-Received: by 10.237.43.167 with SMTP id e36mr5111471qtd.160.1521000967125;
	Tue, 13 Mar 2018 21:16:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.139.145 with HTTP; Tue, 13 Mar 2018 21:15:36 -0700 (PDT)
From: Isaac Nickaein <nickaein.i@gmail.com>
Date: Wed, 14 Mar 2018 07:45:36 +0330
Message-ID: <CA+NJmkdAQPMwXNN+fTw9fgBxRhVx0NDaJGA__a4iqHsQWDu9Rw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Targeting Windows platform
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
X-List-Received-Date: Wed, 14 Mar 2018 04:16:08 -0000
Content-Type: text/plain; charset="UTF-8"

I know the idea is wild and possibly not a top priority (or even
priority) of the community, but extending the area of Yocto to support
Windows platform can make it the ubiquitous build system for the
enterprise, especially in embedded companies that have a mixture of
embedded and desktop applications.

In our company, we have adopted Yocto to be our build system for
embedded devices and are starting to use it for constant integration
and version management. It also solves the headache of setting up an
C++ environment  by building and provding an SDK that covers a large
set of libraries.

Having a unified build system can hugely simplify the build
management, version control and integration for large organizations
where various platforms are targeted. Yocto has proven to be a great
tool for this and I believe it has potential to cover this area too.

While Yocto is mainly used to build *images* for embedded targets, for
Windows platform it would be enough to build the binaries for
applications, at the first milestone at least. One can also extend it
to build setup files with tools such as WiX installer scripts. So, it
can be break down into:

1. Supporting a bbclass that creates Windows-compatible binaries. With
the help of compilers like mingw, there is the possibility.

2. Creating an SDK that targets Windows.

3. Adapting recipes to be able to build the sources for Windows (for
the cross-platform sources, this would be straight-forward).


I am not sure how much of effort these steps would take and what are
the obstacles. I would be glad to hear from community on what they
think and why this would or not happen.

