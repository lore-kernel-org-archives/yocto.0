Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3102E00744; Thu, 11 Sep 2014 17:31:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73113E006DB
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 17:31:36 -0700 (PDT)
Received: from [192.168.1.10] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 7E96D2294356
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 23:58:14 +0000 (UTC)
Message-ID: <54123714.4080305@mindchasers.com>
Date: Thu, 11 Sep 2014 19:58:12 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAMSG=xXz_1rwzc-gdfNNeMGx3cx051X+sfnCBEZMPbvgryvH6A@mail.gmail.com>
In-Reply-To: <CAMSG=xXz_1rwzc-gdfNNeMGx3cx051X+sfnCBEZMPbvgryvH6A@mail.gmail.com>
Subject: Re: Specified toolchain directory does not contain a toolchain generated with meta-ide-support.
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
X-List-Received-Date: Fri, 12 Sep 2014 00:31:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/11/2014 07:41 PM, Nemicolopterus Crypticus wrote:
> I'm trying to set up the development environment following these instructions:
> http://www.yoctoproject.org/docs/1.6/adt-manual/adt-manual.html#adt-prepare
>
>
> I'm currently trying to use a toolchain from within the Build directory, so I'm following these instructions:
>
> http://www.yoctoproject.org/docs/1.6/adt-manual/adt-manual.html#using-the-toolchain-from-within-the-build-tree
>
>
> I sourced the build environment script, and set MACHINE correctly, then I didbitbake meta-ide-support.
>
>
> But in Eclipse, when I try to point to the toolchain, I'm seeing this error:Specified toolchain directory does not contain a toolchain generated with "bitbake meta-ide-support".
>
>
>
> I can see fromthis post  <https://www.mail-archive.com/yocto%40yoctoproject.org/msg11821.html>, that this means Poky.Env.Script.Nonexist is true:
>
>
> +Poky.Env.Script.Nonexist = Specified toolchain directory does not contain a
> toolchain generated with meta-ide-support.
>
>
> But the scripts appears to be there. Here are the contents of my build/tmp directory:
>
> /oe-core/build/tmp-eglibc$ ls
> abi_version  cache  deploy*environment-setup-cortexa8hf-vfp-neon-linux-gnueabi*   log  qa.log  saved_tmpdir  sstate-control  stamps  sysroots  work
>
>
> Any pointers?

Just double checking that you are specifying the "toolchain root 
location" as your top level build directory (the one above 
/conf/local.conf - the directory where you run bitbake).

I'm just wondering since I think the label for this field is somewhat 
misleading.

Otherwise, on the surface it seems that you have what you need.

Bob





>
>
>


