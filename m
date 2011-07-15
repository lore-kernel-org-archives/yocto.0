Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A70C4C800A1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 22:57:28 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6F3vNll029514
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Jul 2011 20:57:23 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.38) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 14 Jul 2011 20:57:23 -0700
Message-ID: <4E1FBAA2.704@windriver.com>
Date: Thu, 14 Jul 2011 23:57:22 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
In-Reply-To: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: toolchain queries
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
X-List-Received-Date: Fri, 15 Jul 2011 03:57:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-07-14 10:36 PM, Kumar Gala wrote:
> Where is the best place to ask questions and try and get support for adding some toolchain variations in?

Here can work, or the oe-core lists.

>
> I'm wanting to add support in for a few different flavors of PPC that are not currently supported:
>
> * e500v2 (gcc needs --enable-e500_double, eglibc
> * e5500 (64-bit embedded ppc)

There are oe and oe-dev references for at least the e500v2
(that's what I've been working on importing .. slowly), and
I haven't looked for others yet. So that's a good place to
look for real world examples.

Once I get a few kernel-3.0 issues sorted out, I'll be back
to this and could definitely collaborate on these items.

Cheers,

Bruce

> * e5500 - multilib support for 32/64-bit
>
> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


