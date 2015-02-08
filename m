Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BB08E00848; Sun,  8 Feb 2015 05:59:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17CD6E007AB
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 05:59:38 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CDB34F811E0; Sun,  8 Feb 2015 06:59:36 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 16CCBF811DF;
	Sun,  8 Feb 2015 06:59:35 -0700 (MST)
Message-ID: <54D76BD1.50408@mlbassoc.com>
Date: Sun, 08 Feb 2015 06:59:45 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <F38A866CD026F746A3BF0928A84397BE3A345186@AZ-FFEXMB01.global.avaya.com>
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A345186@AZ-FFEXMB01.global.avaya.com>
Subject: Re: do_install fails to do a package for custom directory
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
X-List-Received-Date: Sun, 08 Feb 2015 13:59:43 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-02-08 06:25, Bipnesh, Abhinav (Abhinav) wrote:
> Hi All,
>
> I am trying to write a custom recipe for my make based project. So I am able to compile the project and generate the binary. Now when I am trying to package using do_install() I am
> not able to put the package in custom directory.
>
> So when I use *${D}${bindir} *it work perfectly fine and the package has those binary. But when I tried with *${D}/system/hello * it didn’t works. Below is the snapshot of the
> do_install ()
>
> do_install () {
>
>       cd ${WORKDIR}
>
>       # init script
>
>       install -d ${D}${sysconfdir}/init.d
>
>       install -d ${D}${sysconfdir}/sysconfig
>
>       install -m 755 ${WORKDIR}/test/test ${D}${sysconfdir}/init.d/test
>
>       install -m 644 ${WORKDIR}/test/test ${D}${sysconfdir}/sysconfig/test
>
>       # executable
>
>       install -d ${D}/system/hello
>
>       #install -d ${D}${bindir}
>
>       #install -m 755 ${S}/helloworl/hello ${D}${bindir}/hello çit works
>
>       install -m 755 ${S}/helloworld/hello ${D}/system/hello/hello çit doesn’t work
>
> }
>
> So any thoughts how to fix this issue.

What do you mean that it doesn't work?

Most likely is that the directory /system and it's contents
are not being packaged.  Try adding this line
   FILES_${PN} += "/system"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

