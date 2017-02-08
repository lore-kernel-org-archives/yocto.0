Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FA60E009A5; Wed,  8 Feb 2017 03:12:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C701E007AD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 03:12:27 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 46AAA68A019; Wed,  8 Feb 2017 11:12:26 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id CF0C968A019;
	Wed,  8 Feb 2017 11:12:25 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 84BBE67400D4;
	Wed,  8 Feb 2017 12:12:25 +0100 (CET)
To: yocto@yoctoproject.org
References: <39e27fc1-7ad6-9411-5cd1-96628e962f75@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <89ae4442-5ec2-7d25-1245-dc4e9af683b9@mlbassoc.com>
Date: Wed, 8 Feb 2017 12:12:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <39e27fc1-7ad6-9411-5cd1-96628e962f75@mlbassoc.com>
Subject: Re: sysroot question
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
X-List-Received-Date: Wed, 08 Feb 2017 11:12:31 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-08 11:42, Gary Thomas wrote:
> I had a recipe that used to work and now fails after the change
> to the split sysroots.  I'm building an out-of-tree kernel module
> and patterned my recipe after the meta-skeleton example. My recipe
> has this setup:
>
> inherit module-base kernel-module-split
>
> do_compile() {
>     unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>     oe_runmake KERNEL_PATH=${STAGING_KERNEL_DIR}   \
>            KERNEL_VERSION=${KERNEL_VERSION}    \
>            CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
>            AR="${KERNEL_AR}" \
>                O=${STAGING_KERNEL_BUILDDIR} \
>            install
> }
>
> The problem is that ${CC} (arm-amltd-linux-gnueabi-gcc) can no longer be
> found.  I know it's available, just not sure what needs to change to be
> able to find it.
>
> $ find tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/ -name "arm*gcc"
> tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/5.2.2-r2-r0/recipe-sysroot-native/usr/libexec/arm-amltd-linux-gnueabi/gcc/arm-amltd-linux-gnueabi/5.4.0/arm-amltd-linux-gnueabi-gcc
>
> tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/5.2.2-r2-r0/recipe-sysroot-native/usr/bin/arm-amltd-linux-gnueabi/arm-amltd-linux-gnueabi-gcc
>
>
>
> Any suggestions on how I fix this?
>
> Thanks
>

It looks like the failure is actually happening in a class method (make_scripts)
My recipe also contains this
   addtask make_scripts after do_patch before do_compile
which doesn't seem to be setting the ${PATH} correctly anymore.

Any ideas what might be missing?

Note: just moving the call to do_make_scripts to the top of do_compile
instead of running it as a separate task fixes the problem.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

