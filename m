Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF440E0070C
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 03:13:59 -0700 (PDT)
Received: from [192.168.0.57] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id B06392AFD1
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 09:31:34 +0000 (GMT)
Message-ID: <4F69A9F1.2090602@communistcode.co.uk>
Date: Wed, 21 Mar 2012 10:14:09 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120314 Thunderbird/11.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1203210547020.19919@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203210547020.19919@oneiric>
Subject: Re: wiki entry on how to create own source download mirror
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
X-List-Received-Date: Wed, 21 Mar 2012 10:13:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 21/03/12 09:50, Robert P. J. Day wrote:
>    just noticed someone refer to this "How do I" entry:
>
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_create_my_own_source_download_mirror_.3F
>
> i'm tempted to clarify that section in a couple ways unless there are
> any objections.
>
>    first, i don't think that section makes it clear that that technique
> can also be used to just *use* a local source mirror if you already
> happen to have a directory of tarballs lying around for some reason.
> (that's how i came to use it -- several gigs of tarballs from earlier
> days messing with OE.)
>
>    also, unnecessary to do "complete build", i just do "bitbake -c
> fetchall<image>".
>
>    thoughts?
>
> rday
>

Sounds good to me, I was the one who suggested it and thought it could 
possibly be a bit lacking if you didn't have at least a basic base 
knowledge of OE/Bitbake.

Cheers,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


