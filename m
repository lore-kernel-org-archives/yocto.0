Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90AA4E00C13; Tue, 15 Sep 2015 09:03:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0224.hostedemail.com
	[216.40.44.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 837A0E00B5C
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 09:03:49 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 2D6299ED95;
	Tue, 15 Sep 2015 16:03:48 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: debt64_3de636b6de0d
X-Filterd-Recvd-Size: 2632
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Tue, 15 Sep 2015 16:03:46 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "'Mark Hatle'" <mark.hatle@windriver.com>,
	<yocto@yoctoproject.org>
References: <006a01d0efa7$ed9387b0$c8ba9710$@pont@sdcsystems.com>
	<55F822C0.8030404@windriver.com>
In-Reply-To: <55F822C0.8030404@windriver.com>
Date: Tue, 15 Sep 2015 17:03:40 +0100
Organization: SDC Systems Limited
Message-ID: <000f01d0efd0$17ac53b0$4704fb10$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdDvvdjdeu5/gqjOTBevYENvUTo2oAAET+0w
Subject: Re: Dumping sysvinit
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andy.pont@sdcsystems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Sep 2015 16:03:51 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Mark wrote...

> > Bit of a newbie question (probably) but what is the easiest way to dump
> > sysvinit and use Busybox init in a core-image-minimal image?
> 
> It has been a while since I've done this.  But unless things have changed
> dramatically.  You will need to define your own custom image.

On the basis that sounded like more hard work than I have time for I thought
I would try switching to systemd.  Following the instructions in the dev
manual [1].

If I add the extra variables to build/conf/local.conf then with the machine
type set to genericx86 I get this build error:

ERROR: Function failed: do_configure (log file is located at
XXXXX/build/tmp/work/x86_64-linux/qemu-native/2.2.0-r1/temp/log.do_configure
.1926)
ERROR: Logfile of failure stored in:
XXXXX/build/tmp/work/x86_64-linux/qemu-native/2.2.0-r1/temp/log.do_configure
.1926
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_copy_aclocals
| DEBUG: Python function autotools_copy_aclocals finished
| DEBUG: Executing shell function do_configure
| 
| ERROR: User requested feature sdl
|        configure was not able to find it.
|        Install SDL devel

I'm guessing that this is me being dim and that build/conf/local.conf isn't
what the documentation refers to as "your distribution configuration file".
Can someone point me in the right direction?

Thanks,

Andy.

[1]
http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html#selecting-an
-initialization-manager


