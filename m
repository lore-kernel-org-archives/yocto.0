Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D298E00C1E; Tue, 15 Sep 2015 09:27:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9F1FE00B5C
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 09:27:26 -0700 (PDT)
Received: by ioiz6 with SMTP id z6so204238649ioi.2
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 09:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=yTi68tY7LItUoU1SSNE00gx8E93jQIeeuo2rEsgKHl4=;
	b=H74ecr+K1lRpwcs/GuDef38/i77Tiw2N2ojSrWAvPxh7ouD5tq/A0qNDNGuyFASPc1
	qbE7aKoPQIaFt7ZxyEdyk920fNTNm2J3oo39sVPSGMU38V7RDe8WLK+YkdiqnDm1jza6
	zEVa9QRXoFqukxQM6/2OYOEti2JbTNUDtsX++aUARElQ+l90mH4Qpf2HsIASbufWjBWx
	1aGGC2apw84BO9r+3NxoZP4Hpy0qSZgkXWJCxww8vIxqmGQXaudOuDr0hWWCD/Vgy5pU
	kR/li4uX8VjfGRsAUQReKkASrztRUtMbLHa4wE+fNZ74+9lbbOnFNR9AaK7QzmriU2S1
	BjmQ==
X-Received: by 10.107.35.78 with SMTP id j75mr33831162ioj.123.1442334445611;
	Tue, 15 Sep 2015 09:27:25 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	h8sm7599348igh.7.2015.09.15.09.27.14
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Sep 2015 09:27:25 -0700 (PDT)
To: andy.pont@sdcsystems.com, 'Mark Hatle' <mark.hatle@windriver.com>,
	yocto@yoctoproject.org
References: <006a01d0efa7$ed9387b0$c8ba9710$@pont@sdcsystems.com>
	<55F822C0.8030404@windriver.com>
	<55f84188.e17c420a.cd394.2235SMTPIN_ADDED_BROKEN@mx.google.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55F846D8.4020808@gmail.com>
Date: Tue, 15 Sep 2015 12:27:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <55f84188.e17c420a.cd394.2235SMTPIN_ADDED_BROKEN@mx.google.com>
Subject: Re: Dumping sysvinit
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
X-List-Received-Date: Tue, 15 Sep 2015 16:27:30 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/15/15 12:03, Andy Pont wrote:
> Mark wrote...
>
>>> Bit of a newbie question (probably) but what is the easiest way to dump
>>> sysvinit and use Busybox init in a core-image-minimal image?
>> It has been a while since I've done this.  But unless things have changed
>> dramatically.  You will need to define your own custom image.
> On the basis that sounded like more hard work than I have time for I thought
> I would try switching to systemd.  Following the instructions in the dev
> manual [1].
>
> If I add the extra variables to build/conf/local.conf then with the machine
> type set to genericx86 I get this build error:
>
> ERROR: Function failed: do_configure (log file is located at
> XXXXX/build/tmp/work/x86_64-linux/qemu-native/2.2.0-r1/temp/log.do_configure
> .1926)
> ERROR: Logfile of failure stored in:
> XXXXX/build/tmp/work/x86_64-linux/qemu-native/2.2.0-r1/temp/log.do_configure
> .1926
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: Executing shell function autotools_preconfigure
> | DEBUG: Shell function autotools_preconfigure finished
> | DEBUG: Executing python function autotools_copy_aclocals
> | DEBUG: Python function autotools_copy_aclocals finished
> | DEBUG: Executing shell function do_configure
> | 
> | ERROR: User requested feature sdl
> |        configure was not able to find it.
> |        Install SDL devel
>
> I'm guessing that this is me being dim and that build/conf/local.conf isn't
> what the documentation refers to as "your distribution configuration file".
> Can someone point me in the right direction?

I think the qemu build is looking for your build machine's native SDL
(or SDL-devel) so that the resulting qemu can run. Usually a
conf/local.conf includes the following lines:

    PACKAGECONFIG_append_pn-qemu-native = " sdl"
    PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
    ASSUME_PROVIDED += "libsdl-native"

I think if you remove/comment-out the last of those 3 lines or install
your host's SDL-devel package you'll solve this issue (?)

