Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C587E0053A; Sun, 16 Apr 2017 17:49:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38D61E00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 17:49:41 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id q78so3778052vke.3
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 17:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=IO30G3y1UJitNWCjBInZPUfHVeSsxJa182rEaQ7DxAE=;
	b=TC1PgjM29djatT2ulJkClMqB7HYj1q6KNufAozBoOxq/IVfJw7EPkqKUffd0qWMR7c
	yXYRCJZDl6UibZmMsBDq1Q1F3HeVttZQUTlftR9lK8Om0DP7q/DjupQaLv5EsoNPSxF3
	u+khu3JYAexZ+LEFzzuZwKavUt4WKlOVLyqNn3YmlcZIlF9kz5s46B/4Z6NEq9ubkMgW
	ISwCwwXqzPbKfHec5k2jwnXqvYdO6UNZ8P34nIBMzf5WpbbuTB0yciLOZhy1Bm6KYkyv
	VIuZpikSN4SEAHOoy9U67VhsdgLXnst6WYTq5DhPuEEudq8Ni0Y66P0NOftKO+LGvi3i
	JFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=IO30G3y1UJitNWCjBInZPUfHVeSsxJa182rEaQ7DxAE=;
	b=LWO9qpd0kthXqaJSSPUMx6YaoDn9JNgheySEHzaRff5Kv3QZxnXCZaSeWA4Rm7sxUF
	eE+XPfOYcrgL1QfUq2+w+SlXf41inWTCjxyMeIXLtTv6pGLchT7hC9juAix1wbz3dVt/
	3TF/cTtPyrridLQV352UyMkIMiLyMs53bwWaPrd/mkHsAilp2zPFvs76+iZGTS8xKpEB
	kKDlKElTJSzCaHmempXMybCbO2Ex6K9yvGXlVjj+8UaSJ7TSdc6rF+hA5jKi1gWwUBgA
	egnFbfG53CunDoKUZ1irPBVzyK13m/q0iohShDkOYlzHObXbH1InpsVlS1Hs1xoQLGuf
	Pmag==
X-Gm-Message-State: AN3rC/5CkFXN8yLYRfUAYJO7CCmML40xxa6J1JLRM+quvh89TvGDIbG1
	M4wr8IGvDsxdxh13sptWQJ85vp+2oA==
X-Received: by 10.31.3.9 with SMTP id 9mr6157066vkd.64.1492390181333; Sun, 16
	Apr 2017 17:49:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Sun, 16 Apr 2017 17:49:40 -0700 (PDT)
In-Reply-To: <20170417003029.GB5766@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<20170415231603.GA20857@linux-uys3>
	<CALbNGRRgHasv5rdG1SyPCogY8Az6ZowvoZc59XV=Jpmi4TMwvQ@mail.gmail.com>
	<20170417003029.GB5766@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Mon, 17 Apr 2017 02:49:40 +0200
Message-ID: <CALbNGRRXw1j0HFF4n9a_dBurROnY15Yv=L+wO4YBm3MbWAo7nw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Mon, 17 Apr 2017 00:49:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 17, 2017 at 2:30 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Mon 2017-04-17 @ 01:23:25 AM, Andreas M=C3=BCller wrote:
>> > Thank you very much for your explanations, they really cleared up a lo=
t of
>> > stuff in my head. Already I'm 10x smarter on this stuff (which doesn't=
 say
>> > much about where I started!) ;-) It was probably a good thing I spent =
the last
>> > couple days grinding away, your explanations were perfect for where I'=
m at.
>> Some very good document explaining FOSS graphics stack is [1] - take
>> the time and some coffee :)
>
> link? :-)
Sure..

http://blog.mecheye.net/2012/06/the-linux-graphics-stack/

