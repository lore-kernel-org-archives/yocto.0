Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 021FAE00C45; Thu, 19 Oct 2017 06:44:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D424CE00C3A
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 06:44:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v9JDib0m003279
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 19 Oct 2017 06:44:37 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 19 Oct 2017 06:44:36 -0700
To: Robert Berger <yocto.user.mailinglist@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <ee4f65eb-0da2-508c-b057-ccc25f024125@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <36180a9f-af43-fb08-2ef4-5ae7f2be75a8@windriver.com>
Date: Thu, 19 Oct 2017 09:44:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <ee4f65eb-0da2-508c-b057-ccc25f024125@gmail.com>
Subject: Re: more efficient debug kernel
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
X-List-Received-Date: Thu, 19 Oct 2017 13:44:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/18/2017 06:29 PM, Robert Berger wrote:
> Hi,
> 
> I usually build a debug kernel with debug info included, which makes it 
> run "suboptimal". Distros build the kernel with CONFIG_DEBUG_INFO 
> enables, but strip symbols out of the resulting kernel and kernel 
> modules, and place them in the separate debuginfo packages. This makes 
> the kernel much smaller and also makes it run more efficiently because 
> of caching.
> 
> Is this possible with the Yocto kernel tooling as well?

That isn't something that I've ever done via oe-core or the
Yocto kernel tooling.

We can absolutely support different kernel types, and in fact,
do have a developer/debug kernel and a production kernel variant.
But they are typically built and packaged separately rather than
being generated from the same build.

There is also a strip() routine for the kernel, but it only
operates on vmlinux (and was used to keep very large images
under bootloader size restrictions). I'd see this as something
that could definitely be done in a 2nd phase part of a build,
since it is just processing already created binaries (maybe
someone does have such a thing in a custom layer).

The multiple image builds, kernel module splitting, upgrade
paths, multilibs, etc, all make the packaging pretty complex
already, but there might be something in this area that could
be done.

I had an old bugzilla entry about kernel-dev packaging: 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7095,
but it didn't touch on this issue.

That being said, maybe there already is something that the core
packaging classes are doing (I just looked at my latest kernel
build and didn't see anything) .. and that I'm just missing ..
if so, hopefully someone else will enlighten us :D

Bruce

> 
> Regards,
> 
> Robert


