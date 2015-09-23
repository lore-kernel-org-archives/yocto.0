Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C7B5E01041; Wed, 23 Sep 2015 05:27:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B3B1E00A4C
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 05:27:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DD7ECF81199; Wed, 23 Sep 2015 06:27:01 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 21111F81199;
	Wed, 23 Sep 2015 06:27:01 -0600 (MDT)
To: yocto@yoctoproject.org
References: <CAKjpqyJ0JARxdDF3Ux1g8Yh7ncCae3pF5MrPRbFo2Tr5rWsF+w@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56029A96.5070408@mlbassoc.com>
Date: Wed, 23 Sep 2015 06:27:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CAKjpqyJ0JARxdDF3Ux1g8Yh7ncCae3pF5MrPRbFo2Tr5rWsF+w@mail.gmail.com>
Subject: Re: Error in do_rootfs
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
X-List-Received-Date: Wed, 23 Sep 2015 12:27:08 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-23 06:13, Mayank Agarwal wrote:
> Hi,
>
>
> To give you more detail,I am trying to add gstreamer-1.0 support in framework which is already having gstreamer-0.10.
> Now gstreamer binaries are built in Intel 80386 32 bit format,while my machine is amd,64 bit.So what i am doing i am configuring
> and compiling the gstreamer plugin packages on ubuntu and copy the whole source from there,after that i am doing do_install
> in my recipe.In my recipe i have set noexec=1 for do_fetch,do_configure,do_compile.It is able to install binaries in image/usr/lib and sysroot folder according to what i write in
> do_install but in installing the binaries to final image it is giving these errors:
>
> i hope what i am doing above is right.
>
> In log.do_rootfs file i am getting below error:
>
> ERROR: Unable to install packages. Command  returned 255:
>
>
> update-alternatives: Error: not linking /rootfs//bin/bash to /bin/busybox.nosuid since rootfs//bin/bash exists and is not a link
>
> What changes i should do in recipe file in order to overcome these errors.

Why are you trying to move binaries around (from your build host
directly into the target)?  You should be able to just add the
gstreamer-1.x recipes to your build and have it work.  Note there
is no problem with gstreamer-1.x being installed alongside the
older gstreamer-0.10

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

