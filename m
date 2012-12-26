Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECA9EE014A7
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2012 04:08:47 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 89D9CF8121E; Wed, 26 Dec 2012 05:08:47 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 874F5F8121D;
	Wed, 26 Dec 2012 05:08:45 -0700 (MST)
Message-ID: <50DAE8D5.7090309@mlbassoc.com>
Date: Wed, 26 Dec 2012 05:08:53 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CACrgodehbngP-+zvoEyn=Gbr+mqK+w7ipsREOGT4kgbN+K7AvA@mail.gmail.com>
In-Reply-To: <CACrgodehbngP-+zvoEyn=Gbr+mqK+w7ipsREOGT4kgbN+K7AvA@mail.gmail.com>
Subject: Re: enable netbase network interfaces?
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
X-List-Received-Date: Wed, 26 Dec 2012 12:08:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-12-25 16:31, Lai Eddy wrote:
> in the "Reference Manual "How do I make sure connected network interfaces are brought up by default?" said 2 files need to be added to enable network interfaces, where can I find
> template files?
> -----------------------------------------------------------------------------------------------------------
> The default interfaces file provided by the netbase recipe does not automatically bring up network interfaces. Therefore, you will need to add a BSP-specific netbase that includes
> an interfaces file.
> For example, add the following files to your layer:
>       meta-MACHINE/recipes-bsp/netbase/netbase/MACHINE/interfaces
>       meta-MACHINE/recipes-bsp/netbase/netbase_5.0.bbappend
> ------------------------------------------------------------------------------------------------------------

Look in meta-ti (git://git.yoctoproject.org/meta-ti):
$ find meta-ti/recipes-core/netbase/
meta-ti/recipes-core/netbase/
meta-ti/recipes-core/netbase/netbase-5.0
meta-ti/recipes-core/netbase/netbase-5.0/beagleboard
meta-ti/recipes-core/netbase/netbase-5.0/beagleboard/interfaces
meta-ti/recipes-core/netbase/netbase_5.0.bbappend



-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

