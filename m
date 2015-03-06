Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90677E0087C; Fri,  6 Mar 2015 05:07:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B701E0083A
	for <yocto@yoctoproject.org>; Fri,  6 Mar 2015 05:07:53 -0800 (PST)
Received: by lbiz12 with SMTP id z12so29521069lbi.12
	for <yocto@yoctoproject.org>; Fri, 06 Mar 2015 05:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=D5lHuPslbRBGadS3N8/PuUYaloE0KRXxcGjM2zlcMgI=;
	b=0GmAp52OpYmP/ne/hz42exwr3q68D6SCZkb9P8momS83RtkFCqZF/5nq0AaTXeZ523
	Bj+FqAlD5KSHaszHcba7VClEmz7ZmNjs8NTobBNzQf8HcqWdJSXrzl1xPkbbf61yCdHi
	vkGUSrCqygqhlGobDxL/eUP6jfkJdAMpYmAkMOwMUZYiIsp+W/F7MuiN/GaNdPOvvdEO
	j37YTxCltQ8WPW6r9f9LcyQUR4zaxBkRTCUTIF3H3zj7/zVWgTWnlrCm2ScX6J4uPCM7
	qt3X61XwDNCzp2iRsWguhX7ReN3NMCEvB/pp69V6LLIWJF6j6jo9IvvJNt1C7kHsFBEl
	gQZw==
MIME-Version: 1.0
X-Received: by 10.152.115.169 with SMTP id jp9mr12727195lab.121.1425647270419; 
	Fri, 06 Mar 2015 05:07:50 -0800 (PST)
Received: by 10.112.40.11 with HTTP; Fri, 6 Mar 2015 05:07:50 -0800 (PST)
In-Reply-To: <alpine.LFD.2.11.1503060726450.26362@Device-040570>
References: <alpine.LFD.2.11.1503060726450.26362@Device-040570>
Date: Fri, 6 Mar 2015 08:07:50 -0500
Message-ID: <CADkTA4Ovqp+CC=jB=SFeWRgEajtKX4eF1TyU9YJYMZockzwjsg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "unused"/uninstalled tools in yocto-kernel-tools?
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
X-List-Received-Date: Fri, 06 Mar 2015 13:07:59 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 6, 2015 at 7:36 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   continuing my voyage of discovery through the various yocto kernel
> tools, and i see the Makefile which lists the kern_tools:
>
> kern_tools_LIST = kgit kgit-init kgit-meta \
>                   kgit-checkpoint kgit-clean \
>                   kconf_check configme \
>                   createme updateme patchme get_defconfig scc \
>                   pre_config merge_config.sh spp kgit-s2q
>
> but i also notice that there are a few utilities in the tools/
> directory not in that list:
>
>  * kgit-config-cleaner
>  * kgit-feature
>  * kgit-publish
>  * kgit-scc
>
> how do those utilities come into play? nothing else in that directory
> seems to refer to them. how and where are they used?

They are used during the creation / generation of a tree from scratch. Which
isn't part of the build process.

Cheers,

Bruce

>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

