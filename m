Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id E36654C8086E
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 09:50:40 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:26088
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1PrBYV-00080Q-OM; Sun, 20 Feb 2011 15:50:39 +0000
Message-Id: <B241782A-FB38-4B44-B931-19337F2D7359@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D61353D.9040808@windriver.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sun, 20 Feb 2011 15:50:37 +0000
References: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
	<4D612A83.7040302@windriver.com>
	<72C3267D-6313-42A0-A105-A288B7576F53@keylevel.com>
	<4D61353D.9040808@windriver.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: What builds 'netbase'?
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
X-List-Received-Date: Sun, 20 Feb 2011 15:50:41 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 20 Feb 2011, at 15:37, Mark Hatle wrote:

> To me it looks like it deleted exactly what you asked it to.  All of  
> the
> sstate-netbase-* files, and the downloaded netbase_4.41.tar.gz.

It's not that easy to see when the lines get mangled. Below are the  
ends of the 'ls' and 'cleanall' names for _populate_sysroot.

sstate: -7422fec9d26be091358f8e930110bf37_populate-sysroot.tgz  
(existing file after build)
NOTE:   -4c81cdca2e1c8da43ee609321b93895f_populate-sysroot.tgz  
(cleanall delete target)

Doesn't this show that the wrong one was targeted for deletion?

> For the latest changes in master, we've got planned a bit more  
> control then
> simply "clean" and "cleanall", but I don't believe it's implemented  
> yet.

That sounds interesting. For example, it would be nice to be able to  
clean everything except the download (useful when working off-line).

Chris



