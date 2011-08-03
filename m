Return-Path: <malcolm.crossley@ge.com>
Received: from exprod5og108.obsmtp.com (exprod5og108.obsmtp.com [64.18.0.186])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9675E4C804C5
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 11:29:14 -0500 (CDT)
Received: from Cinmlip05.e2k.ad.ge.com ([165.156.4.1]) (using TLSv1) by
	exprod5ob108.postini.com ([64.18.4.12]) with SMTP
	ID DSNKTjl3WmkbdMW8xLLy+vqt627FDqnSwVgG@postini.com;
	Wed, 03 Aug 2011 09:29:14 PDT
Received: from unknown (HELO alpmlip01.e2k.ad.ge.com) ([3.159.17.48])
	by Cinmlip05.e2k.ad.ge.com with ESMTP; 03 Aug 2011 12:29:13 -0400
Received: from es-641xt3j.amer.consind.ge.com (HELO [3.138.54.93])
	([3.138.54.93])
	by alpmlip01.e2k.ad.ge.com with ESMTP; 03 Aug 2011 12:29:13 -0400
Message-ID: <4E397757.60908@ge.com>
Date: Wed, 03 Aug 2011 17:29:11 +0100
From: Malcolm Crossley <malcolm.crossley@ge.com>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:5.0) Gecko/20110624 Thunderbird/5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <201108031707.07245.paul.eggleton@linux.intel.com>
In-Reply-To: <201108031707.07245.paul.eggleton@linux.intel.com>
Subject: Re: Autobuilder issue status
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
X-List-Received-Date: Wed, 03 Aug 2011 16:29:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/08/2011 17:07, Paul Eggleton wrote:
> Hi all,
>
> Richard requested a summary of the current issues shown up on the autobuilder,
> here it is:
>
> 1. sstate not getting cleared (autobuilder script fix needed - maybe just
> delete the whole sstate-cache dir?)
> http://autobuilder.yoctoproject.org:8010/builders/crownbay-
> noemgd/builds/27/steps/shell/logs/stdio
>
> 2. jasperforest and sugarbay need fixing for tune file changes:
> I have a first-pass patch for this, just a matter of fixing up the machine .conf
> files for these two layers.
> http://autobuilder.yoctoproject.org:8010/builders/jasperforest/builds/29/steps/shell_10/logs/stdio
>
> 3. glibc-utils PREFERRED_PROVIDER clash:
> (There's a patch merged in master for this already)
> http://autobuilder.yoctoproject.org:8010/builders/nightly-
> external/builds/57/steps/shell_6/logs/stdio
>
> 4. manifest file missing in sdk build:
> http://autobuilder.yoctoproject.org:8010/builders/nightly-external-
> toolchain/builds/52/steps/shell_7/logs/stdio
>
> 5. libXinerama missing when building gtk+
> Not sure if this is a result of previous errors?
> http://autobuilder.yoctoproject.org:8010/builders/nightly-
> internal/builds/50/steps/shell_21/logs/stdio
>
> 6. "perl isn't executable!":
> http://autobuilder.yoctoproject.org:8010/builders/nightly-
> external/builds/60/steps/shell_26/logs/stdio
I have seen possibly a similar issue: libxml-parser-perl failing to compile
I tracked it down to two problems:
a) using an sstate mirror results in the rpath that's compiled into the 
native-perl being hardcoded to the full path of whatever built the 
sstate-cache. The means the compiled in rpath is wrong on any other 
machine.

b) perl MakeMaker is using perl.real instead of the wrapper script, this 
results in the PERL5LIB variable not being passed in to perl on 
execution. This in combination with problem A means perl cannot find 
it's libraries.

I would recommend randomising the base directory for autobuilders if 
they are using an sstate mirror, in order to flush out bugs caused by 
problem A.

I cannot figure out how to fix problem B at the moment and I'll be on 
holiday soon. So I thought I'd post about this issue before I go.

>
> 7. -live images still being built:
> Beth was fixing (has fixed?) this. It did bring up an interesting issue in that
> -k makes the build look like it succeeded - have filed bug #1322 for this one.
> http://autobuilder.yoctoproject.org:8010/builders/crownbay-
> noemgd/builds/27/steps/shell_10/logs/stdio
>
> 8. meta-toolchain "/bin/sh" dependency errors:
> Richard thinks he knows what's wrong here but is unsure of the fix.
> http://autobuilder.yoctoproject.org:8010/builders/nightly-external-
> toolchain/builds/55/steps/shell_14/logs/stdio
>
> 9. aclocal .m4 file issue (bug #861)
> Richard has some potential suggestions, actual fix still needed though.
> http://autobuilder.yoctoproject.org:8010/builders/nightly-
> external/builds/60/steps/shell_14/logs/stdio
>
> 10. beagleboard libzypp failure
> Richard has a patch for part of it, would like Mark to look into the rest:
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1313
>
> Cheers,
> Paul
>


