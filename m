Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62687E00C2C
	for <yocto@yoctoproject.org>; Sun,  6 Apr 2014 03:44:47 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E8240F811EB; Sun,  6 Apr 2014 04:44:46 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9F0A7F811EA;
	Sun,  6 Apr 2014 04:44:45 -0600 (MDT)
Message-ID: <53413027.3090600@mlbassoc.com>
Date: Sun, 06 Apr 2014 04:44:55 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <BF50EF6AB6484DFCACE23CBE65026EB0@M58p>
In-Reply-To: <BF50EF6AB6484DFCACE23CBE65026EB0@M58p>
X-Enigmail-Version: 1.5.2
Subject: Re: how can i add gdb to my toolchain ?
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
X-List-Received-Date: Sun, 06 Apr 2014 10:44:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-04-06 02:37, Sabri Altunbas wrote:
> Hi together,
> 
> In directory
> 
> /home/tux/aaa/poky/build/tmp/sysroots/i686-linux/usr/bin/armv5te-poky-linux-
> gnueabi
> 
> I have all the tools for building... except
> 
> arm-poky-linux-gnueabi-gdb
> 
> 
> Can someone say me where and how can I add "...-gdb" to my toolchain ?

bitbake gdb-cross

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

