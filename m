Return-Path: <koen@dominion.thruhere.net>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D84EFE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 12:33:18 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so741772ggc.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 12:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=NafpV2HH4tKjN1m+q3KSvSYcexDvjQUh0viH0o0FQbI=;
	b=nFRBt8KX2LjT0IMJ6aKK0V0p9jVdW9Qhb8Y2jFr5cqzkZ7wjwETsND0MdPX/9MMc+x
	gMTkkKXvMkqqAh9qnRkTjnGKGjko6Ode+sZzm+NqvB0O3ytcsqUZMK6fxl0ygNCdNMQG
	5BxlhamkUeC/f7incmfDfw3p89jQlxLrq9+IjjS52up+inLcwnnwrPQj2FaZEfXoPLsn
	x8nBHsN822xqqJWfGMw9igHdxscW9GoDa5Ul/0i/JjoxnBrHA4ZndrP/9E1S5wqFy937
	7aelz9w7ZYCIQ9O0n/8ng2yO7mxXiIA69NaHMX5mnWQVg5SHXLyJHUEkpiD1ZKUm+MbV
	vA6Q==
Received: by 10.68.216.98 with SMTP id op2mr29849pbc.93.1333135997859;
	Fri, 30 Mar 2012 12:33:17 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id ko12sm7975565pbb.52.2012.03.30.12.33.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 12:33:16 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4F7608DC.1000402@windriver.com>
Date: Fri, 30 Mar 2012 12:33:28 -0700
Message-Id: <26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQlLlmv94ayo8NZ0h//4BQK5K0/7npbh+ebp6mU1z4sDqLl2cd37H1PxiE2QhaSe6LnHG0Wq
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Mar 2012 19:33:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:

> On 3/30/12 1:44 PM, Koen Kooi wrote:
>> Hi,
>>=20
>> RP said I should raise this on the yocto lists, so here it is:
>>=20
>> The Angstrom core team would like to move angstrom under the yocto =
banner so
>> we can formally claim to be 'yocto'.
>=20
> For it to be on the yocto project web site, it just need to have the =
layers hosted on the git.yoctoproject.org.  But there is no "yocto".. =
It's the Yocto Project, Poky, or specific git repositories.  There is no =
reason we can't have an angstrom repository.  It could be in a similar =
format to the Poky repository (everything combined for a single =
download), or it could be a layer [or layers] that sit on top of Poky.

Why on top of poky? I do not want poky, nor do my customers, oe-core is =
what we need and want. This proposal to move angstrom under yocto is =
targeted at eliminating 'poky' from the stack while still being able to =
say 'yocto'.

We both know that saying it is 'yocto' is wrong and misleading, but =
that's what users are asking for and yocto advocates seem to push. Just =
watch the ELC videos for yocto related presentations, 'yocto' and 'poky' =
are used interchangeably in most of them.

A 'reference' should be just that, a reference, not a mandated part.=20

regards,

Koen=

