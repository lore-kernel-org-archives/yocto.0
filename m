Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EEF5E00887; Sat, 25 Feb 2017 08:16:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77B77E00804
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 08:16:42 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id 203so7270758ith.2
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 08:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:cc:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=5CDDcibbQ1ClTxJPppQW7LQst7tL7A+4KpFECyShLzg=;
	b=fHYvwhQodiFrp93jj5Ntd/09aJO1agqZSFFo2PEHor02PVy+kE3cV1vuj7MAg8hgde
	JXN63JcxDsT9AdrqC8+Om+TCA/1+PQFglDy4FjpXyS7gtI2+ogY8e3/+/aIr6hY9Rdqh
	L6eh27lRRcXhaYbG2TBBzIb/+sfeBDEZ27SLvNBhHcDZbxm+/vx0bT7bSzvTq9TTvCn5
	AawpaM4+b0elRWjiNBafqzQFSIPnoc4O0ksskKKPdAtGZ/SDd8Fu611+IKnrxhFx3elS
	HHaW0JnWmvNwNLmoggfKrlEfFsgpYbVvpFrakPlLV53nKCOsilmvHlPeKqHf/RiNq33/
	yY8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:cc:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=5CDDcibbQ1ClTxJPppQW7LQst7tL7A+4KpFECyShLzg=;
	b=dr7fuOWa5vms/0ihQ2YFYo6QeUhWxX6GpZEQBRPckqW0HlTTloBsFFM1PjCVh/auQn
	bUKJiciLJdHRzXAUbJ4MQ7MK1oIiU8i0cBUOOLWKdUcQT74NIWcEQjakT98U6XG3BtlL
	hfAe8dWpvNnB+tso0scB7cFtDJxZaTt49JmlF7HqyrlRI7xQOT2ehvMFh7+v1taArd/o
	lMVgZHck6MlbwM/8JfDJZW8PCrTsICEVu57rtE7bpTR/7VuWUyJvrwb2nTR6+sNh92/7
	q+hXn6Z6EWY3Yp0Hs4zdMNkUOnwGxr16TFTur94rS40RoHFMGyHQ06O09O2Fmg6gHicV
	h+WA==
X-Gm-Message-State: AMke39mFXltSv8Gxnrw+EZ+eIZG//7KgU7trDdxCjJ1U3MS2gHaKVFLS00JeN/isKsT6SQ==
X-Received: by 10.36.93.213 with SMTP id w204mr8140241ita.60.1488039402080;
	Sat, 25 Feb 2017 08:16:42 -0800 (PST)
Received: from ?IPv6:2605:a601:a83:3700:1d1f:d772:b4f2:e47d?
	([2605:a601:a83:3700:1d1f:d772:b4f2:e47d])
	by smtp.gmail.com with ESMTPSA id k63sm744245ioi.19.2017.02.25.08.16.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Feb 2017 08:16:41 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: William McKinney <sigsbeeus@mac.com>
References: <73297B9E-30BA-4F4F-9A05-60B4EA688E6E@mac.com>
	<CAJTo0LbRE+9JOVDd4revWXt_HinV2y6dAa0_54xvCxG45XMhqA@mail.gmail.com>
Message-ID: <32e6d90b-8e54-5f3c-a895-8cac6bbfee6f@gmail.com>
Date: Sat, 25 Feb 2017 10:16:40 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbRE+9JOVDd4revWXt_HinV2y6dAa0_54xvCxG45XMhqA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to build yocto-morty on ubuntu-16, machine reboots in the middle of the build
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
X-List-Received-Date: Sat, 25 Feb 2017 16:16:48 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit


On 02/24/2017 11:36 AM, Burton, Ross wrote:
>
> On 23 February 2017 at 13:24, William McKinney <sigsbeeus@mac.com 
> <mailto:sigsbeeus@mac.com>> wrote:
>
>     I’m trying to build the yocto-morty release on an ubuntu 16.04.2
>     LTS box with 16GB of memory and plenty of disk space.  More than
>     once the machine appears to just reboot in the middle of the
>     build.  Has anyone else experienced this?  The krogoth and jethro
>     release build successfully on the same box.
>
>
> Sounds like you've got hardware problems - obviously there's nothing 
> that Yocto can be doing to induce a reboot.
>
> I'd start with a memcheck and extended SMART tests.
FWIW, I was having similar problems and a good blast of compressed air 
to my CPU heat sink fixed the problem. I ran 'dmesg -w' while building 
and it was pretty obvious that my CPU was overheating because I got a 
lot of messages like:

[ 3657.188178] mce: [Hardware Error]: Machine check events logged
[ 3957.206279] CPU2: Core temperature above threshold, cpu clock 
throttled (total events = 1005969)

I wonder if there are some changes in Morty that make it better utilize 
the CPU compared to the other releases?

Joshua Watt


