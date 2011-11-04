Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8553E00310
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2011 09:05:10 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id A2B3A166028C; Fri,  4 Nov 2011 10:05:09 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D3F6E166026A;
	Fri,  4 Nov 2011 10:05:08 -0600 (MDT)
Message-ID: <4EB40D34.4030109@mlbassoc.com>
Date: Fri, 04 Nov 2011 10:05:08 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why do numerous .bb files set "PARALLEL_MAKE"?
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
X-List-Received-Date: Fri, 04 Nov 2011 16:05:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-11-04 09:57, Robert P. J. Day wrote:
>
>    stumbled over this so i did a more thorough search:
>
> $ grep -w PARALLEL_MAKE $(find . -name *.bb)
> ./meta/recipes-qt/qt-apps/qmmp_0.5.1.bb:PARALLEL_MAKE = ""
> ./meta/recipes-core/eggdbus/eggdbus_0.6.bb:PARALLEL_MAKE = ""
> ./meta/recipes-core/gettext/gettext_0.16.1.bb:PARALLEL_MAKE = ""
> ./meta/recipes-core/gettext/gettext_0.18.1.1.bb:#PARALLEL_MAKE = ""
> ./meta/recipes-bsp/pciutils/pciutils_3.1.7.bb:PARALLEL_MAKE = ""
> ./meta/recipes-extended/sat-solver/sat-solver_git.bb:PARALLEL_MAKE=""
> ./meta/recipes-extended/bash/bash_3.2.48.bb:PARALLEL_MAKE = ""
> ./meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb:PARALLEL_MAKE = ""
> ./meta/recipes-extended/groff/groff_1.20.1.bb:PARALLEL_MAKE = ""
> ... more snipped ...
>
>    why are individual recipes setting PARALLEL_MAKE to the empty
> string?  it's a *build* option, why would it have any relevance to
> individual .bb files?

These recipes don't support random ordering of some operations, thus
they are forcing make to run single-threaded.

>
>    conversely, i don't see a single .bb file that sets
> BB_NUMBER_THREADS.  the above just looks ... odd.

I think that setting this variable in a recipe would not have any effect.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

