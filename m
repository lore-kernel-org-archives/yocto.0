Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FC6CE009BB; Thu, 14 May 2015 15:01:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02C55E00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 15:01:53 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 14C03F811E3; Thu, 14 May 2015 16:01:53 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8E001F811E0;
	Thu, 14 May 2015 16:01:52 -0600 (MDT)
Message-ID: <55551B53.1080307@mlbassoc.com>
Date: Thu, 14 May 2015 16:01:55 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1622249.AcBk4fCPKl@peggleto-mobl.ger.corp.intel.com>
	<675480183.3559858.1431639391019.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <675480183.3559858.1431639391019.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: recipe removing (some)contents of /etc
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
X-List-Received-Date: Thu, 14 May 2015 22:01:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-05-14 15:36, Oliver wrote:
>
>
>> What image are you building?
>
> it is a Freescale iMX6 target, the image name is exactly a fsl-image-qt5 with a playground layer
>
>>> You should probably use this line instead
>>>     CORE_IMAGE_EXTRA_INSTALL = "canlogger"
>
>>> There is CORE_IMAGE_EXTRA_INSTALL though which you can add to with += (since
>>> there aren't any default items in it, unlike IMAGE_INSTALL).
>
>
> My understanding these are the preferred options
>
>>>> IMAGE_INSTALL_append = “ canlogger”
>
> But would this still do? (just for my self-learning)

The recommended way is to use CORE_IMAGE_EXTRA_INSTALL.
Why would you want to use some other method which might not work?

>
> I have other recipes(not *.bbappend) which end up in the image without adding any explicit statement, just the fact of being part of the layer includes them, is there any explanation?

Something must cause them to be included, either explicitly or implicitly.

What package(s) in particular are you asking about?

You can find out why recipes are included, etc, by looking at
the output from bitbake.  Try this:
   % bitbake fsl-image-qt5 -g -u depexp

This will bring up a "dependency explorer" where you can see what
depends on what (directly at build time or implicitly at runtime).

>
> I am still missing something to get the whole picture...
>
> Thanks a lot for the detailed explanations
> best Regards
> Oliver
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

