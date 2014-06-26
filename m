Return-Path: <scott.m.rifenbark@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92708E0043F; Thu, 26 Jun 2014 06:11:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F42FE003D8
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 06:11:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jun 2014 06:11:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,553,1400050800"; d="scan'208";a="561309981"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jun 2014 06:09:37 -0700
Received: from [10.254.114.187] (unknown [10.254.114.187])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 40D976A4087
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 06:09:06 -0700 (PDT)
Message-ID: <53AC1B8C.6070203@linux.intel.com>
Date: Thu, 26 Jun 2014 06:09:32 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.LFD.2.11.1406220901500.2299@localhost>
In-Reply-To: <alpine.LFD.2.11.1406220901500.2299@localhost>
Subject: Re: the apparent need for docbook <replaceable> tag in manual examples
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
X-List-Received-Date: Thu, 26 Jun 2014 13:11:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 6/22/2014 6:20 AM, Robert P. J. Day wrote:
>    something poor scott rifenbark can ponder in his copious free time
> :-), but i think some of the current examples in the various manuals
> need to be enhanced with the use of the docbook <replaceable> tag to
> emphasize that they are generic references meant to be replaced by
> specific values; otherwise, there's potential confusion.
>
>    as a concrete example, i remember *way* back when i was reading
> about conditional metadata in the bitbake user manual, particularly
> this verbatim example:
>
>    OVERRIDES = "architecture:os:machine"
>    TEST = "default"
>    TEST_os = "osspecific"
>    TEST_nooverride = "othercondvalue"

Yes - I will put this on my list of things to get done over time. Thanks 
for bringing it up.

>
>    because all of the above is currently rendered in the same (courier)
> font in the generated manual, i mistakenly thought that all of the
> above was to somehow be typed exactly that way, and i was completely
> baffled as to what the qualifiers "_os" and "_nooverride" would do. it
> was only after searching for examples in the codebase that it dawned
> that those strings were meant to be replaced by actual examples of the
> current architecture, os, machine and so on.
>
>    duh.
>
>    this can be made more obvious fairly simply with the following
> tweak of using the docbook <replaceable> tag:
>
> diff --git a/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml
> b/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml
> index a9f5072..f8be373 100644
> --- a/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml
> +++ b/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml
> @@ -359,7 +359,7 @@
>                           version.
>                           Here is an example:
>                           <literallayout class='monospaced'>
> -     OVERRIDES = "architecture:os:machine"
> +     OVERRIDES = "<replaceable>architecture</replaceable>:<replaceable>os</replaceable>:<replaceable>machine</replaceable>"
>        TEST = "default"
>        TEST_os = "osspecific"
>        TEST_nooverride = "othercondvalue"
>
> i've confirmed that that tag is processed properly within a
> <literallayout>, and renders in italicized courier font, which is the
> visual clue that it's not meant to be read literally.
>
>    oh, and one more related point ... i think it would be more useful
> to replace generic manual examples that use meaningless phrases such
> as "foo" and "bar" with specific examples yanked from the actual OE
> codebase.
>
>    as i said, it took me a few minutes to figure out what the
> conditional metadata example above was trying to demonstrate, but as
> soon as i saw a real example in the codebase, it was perfectly clear.
> to this end, i'm creating wiki pages that show stuff like that
> exactly, like this one for conditional overrides:
>
> http://www.crashcourse.ca/wiki/index.php/BitBake_Overrides
>
> so rather than try to explain the generic concept, i can just bring up
> the wiki page and say, "see? that's how it works." and everyone
> understands immediately.
>
>    anyway, just my $0.02. back to work ...
>
> rday
>


