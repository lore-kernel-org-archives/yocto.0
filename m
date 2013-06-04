Return-Path: <nobody@cubic.org>
Received: from roasted.cubic.org (roasted.cubic.org [193.108.181.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1A59E013E4
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:58:29 -0700 (PDT)
Received: from nobody by roasted.cubic.org with local (Exim 4.69)
	(envelope-from <nobody@cubic.org>)
	id 1Ujtcx-0002B0-9A; Tue, 04 Jun 2013 08:58:27 -0700
Received: from 87.139.57.5 (SquirrelMail authenticated user michael)
	by mail.cubic.org with HTTP; Tue, 4 Jun 2013 08:58:27 -0700
Message-ID: <81b7b6871dffb1fff87e58061764e396.squirrel@mail.cubic.org>
In-Reply-To: <CAMUsWmAFGwTq=K1MzCUFZLfKCfQBBs7=AHTTcZWuAy4+fq8H+g@mail.gmail.com>
References: <CAMUsWmAFGwTq=K1MzCUFZLfKCfQBBs7=AHTTcZWuAy4+fq8H+g@mail.gmail.com>
Date: Tue, 4 Jun 2013 08:58:27 -0700
From: michael@cubic.org
To: "Akshay Sahota" <akki.sahota@gmail.com>
User-Agent: SquirrelMail/1.4.19
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Sender: nobody <nobody@cubic.org>
Cc: yocto@yoctoproject.org
Subject: Re: yocto with meta-ti
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
X-List-Received-Date: Tue, 04 Jun 2013 15:58:30 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Hi,

As a quick hack you can mask out recipes-misc by adding the following line
to your conf/local.conf :

BBMASK = "meta-ti/recipes-misc"

It seem to mask out everything in meta-ti/recipes-misc.

This was a suggestion I found on the net. The better way would be if
meta-ti would be split into multiple layers where one of them is a
meta-ti-bsp layer.

Best regards
Michael

