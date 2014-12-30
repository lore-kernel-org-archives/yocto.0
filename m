Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1C49E00906; Tue, 30 Dec 2014 14:48:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F056E0084D
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 14:48:09 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DC828F811DA; Tue, 30 Dec 2014 15:48:05 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CF606F81199;
	Tue, 30 Dec 2014 15:48:04 -0700 (MST)
Message-ID: <54A32BC0.3090102@mlbassoc.com>
Date: Tue, 30 Dec 2014 15:48:32 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.LFD.2.11.1412301427370.12620@localhost>
In-Reply-To: <alpine.LFD.2.11.1412301427370.12620@localhost>
Subject: Re: more BSP Guide pedantry involving customizing a recipe
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
X-List-Received-Date: Tue, 30 Dec 2014 22:48:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-12-30 12:31, Robert P. J. Day wrote:
>
>    (you can tell i'm bored and want to get back up to speed on stuff
> ...)
>
>    section 1.4 in BSP Guide, "Customizing a Recipe for a BSP", appears
> to discuss a new layer, "meta-xyz", then suggests the new "interfaces"
> file for this machine needs to go at the location:
>
> meta-xyz/recipes-core/init-ifupdown/files/xyz/interfaces
>                                            ^^^ ???
>
>    but the files/ subdirectory of "xyz/" would appear to be necessary
> (as we all know) only if this was a more general layer that
> represented several machines (say, meta-ti) for which we *needed* to
> distinguish between machines.
>
>    so while the above might be technically correct, it might mislead
> readers to think they *needed* to create a "xyz/" subdirectory for
> that overriding interfaces file.

Actually, it *is* necessary if meta-xyz supports more than one
MACHINE and those targets have unique versions of the 'interfaces'
file (which is common since this file is being tailored for a
particular target machine)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

