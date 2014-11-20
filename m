Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90676E008F2; Thu, 20 Nov 2014 07:32:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06368E008E3
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 07:32:38 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sAKFVpig017734; Thu, 20 Nov 2014 15:31:51 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id aa1MZtnvF16k; Thu, 20 Nov 2014 15:31:51 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sAKFVZVc017720
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 20 Nov 2014 15:31:46 GMT
Message-ID: <1416497531.2068.5.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jens Rehsack <rehsack@gmail.com>
Date: Thu, 20 Nov 2014 15:32:11 +0000
In-Reply-To: <A414C97C-00DA-4FC1-895D-12B9A97DB66A@gmail.com>
References: <37719788-60D1-4C79-BCC4-4F4FA3DFDEB1@gmail.com>
	<A414C97C-00DA-4FC1-895D-12B9A97DB66A@gmail.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Perl: fix PERL5LIB settings
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
X-List-Received-Date: Thu, 20 Nov 2014 15:32:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

On Thu, 2014-11-20 at 15:37 +0100, Jens Rehsack wrote:
> I've seen you sent a patch for Yocto for
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=6890 which seems to
> me (compared to Wolfgang's Patch) incomplete and shows another issue
> ^^.

Aníbal sent a patch for this, I merged it.

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=6839a39912d483c6a403bd52e5f889547f1f4807

I agree that there is a missing -native part, I've replied separately to
that patch thread about why that patch was at risk of getting lost.

> 1st - Wolfgang's Patch also fixes the native-perl, which is important when having a native module requiring another native-module which isn't core...
> Think about taking the entire fix from Wolfgang (https://www.mail-archive.com/yocto@yoctoproject.org/msg21489.html) and also patch daisy.

Firstly, we *need* to fix master. We can then consider backports to
previous releases, sounds like we need this for dizzy and daisy in this
case.

> 2nd: See https://github.com/rdm-dev/poky/commit/d58539e94126019126565e7e76f406f0d4975a0e for some other Perl quirks when using CPAN modules ...

This does look exactly like the kind of fixes the perl recipe could use.
Unfortunately the format of the mail and where it was sent to has meant
it has fallen through the cracks. If it went to the openembedded-core
mailing list, it would have had less chance of that. It does need some
tweaks as per
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
in particular the subject should start "cpan*:".

I am a little puzzled why the --install_path pieces are removed and a
little more detail in the commit message might help there. If you could
do that, great. If not, please just say so and we'll have to see what
else we can do but I'll try and ensure it doesn't get lost.

> 3rd: https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/perl/perl-native_5.20.0.bb?id=6839a39912d483c6a403bd52e5f889547f1f4807#n10 - compare to $(corelist -a Module::Build) - there is no Module::Build in 5.20 anymore.

The PROVIDES += "libmodule-build-perl-native" is probably there to mean
that recipes which "DEPEND" on that continued to work. Ideally, it
sounds like we should try and remove that.

> Maybe a look to 5.20.1 is also recommended: https://metacpan.org/pod/distribution/perl/pod/perldelta.pod

I'd be very happy to see that upgrade FWIW. I think part of the problem
is we don't have a good set of automated perl tests (be it building perl
modules, or testing the perl runtime). The problem isn't with perl
itself, its just us interfacing to the tests that exist there and
knowing for example which set of say 5 modules would test the widest
range of ways of building perl modules. Any help with those things would
be much appreciated.

Cheers,

Richard







