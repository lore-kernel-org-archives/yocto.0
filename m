Return-Path: <stuartl@vrt.com.au>
Received: from atomos.longlandclan.yi.org (eth2015.qld.adsl.internode.on.net
	[150.101.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83E05E00C2C
	for <yocto@yoctoproject.org>; Sun,  6 Apr 2014 02:45:15 -0700 (PDT)
Received: from [IPv6:2001:44b8:21ac:7053:223:6cff:fe83:b6b7] (vk4msl-mb.local
	[IPv6:2001:44b8:21ac:7053:223:6cff:fe83:b6b7])
	by atomos.longlandclan.yi.org (Postfix) with ESMTPSA id 57C512010231
	for <yocto@yoctoproject.org>; Sun,  6 Apr 2014 19:45:12 +1000 (EST)
Message-ID: <5341223C.7030808@vrt.com.au>
Date: Sun, 06 Apr 2014 19:45:32 +1000
From: Stuart Longland <stuartl@vrt.com.au>
Organization: VRT Systems
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <BF50EF6AB6484DFCACE23CBE65026EB0@M58p>
In-Reply-To: <BF50EF6AB6484DFCACE23CBE65026EB0@M58p>
X-Enigmail-Version: 1.6
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
X-List-Received-Date: Sun, 06 Apr 2014 09:45:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/04/14 18:37, Sabri Altunbas wrote:
> I have all the tools for building... except
> 
> arm-poky-linux-gnueabi-gdb
> Can someone say me where and how can I add "...-gdb" to my toolchain ?

Can you not take standard gdb sources and do a `./configure
--target=arm-poky-linux-gnueabi`?

Building a full cross-compiling is a royal PITA, been there more than
once and usually I stop at building a bare-bones C compiler as I find
doing a C library maddening.

In this case, the Yocto (OpenEmbedded?) build scripts have done all the
hard work for you.
-- 
Stuart Longland
Systems Engineer
     _ ___
\  /|_) |                           T: +61 7 3535 9619
 \/ | \ |     38b Douglas Street    F: +61 7 3535 9699
   SYSTEMS    Milton QLD 4064       http://www.vrt.com.au



