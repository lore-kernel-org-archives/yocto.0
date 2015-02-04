Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 150C6E0086E; Tue,  3 Feb 2015 17:26:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 102E0E0076F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 17:26:47 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t141Qi36004320
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Feb 2015 17:26:44 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Tue, 3 Feb 2015 17:26:44 -0800
Message-ID: <54D17553.4070809@windriver.com>
Date: Tue, 3 Feb 2015 19:26:43 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?Sm9zZXBoIEFuZHJldyBkZSBsYSBQZcOxYQ==?= <jdelapena@lexmark.com>
References: <CAJrRHk5GoTZAB9hxOtEkjBP3fQoBB2u+H7Z5eD9Jy4hqwvmfTg@mail.gmail.com>	<54C7C278.6020606@windriver.com>
	<CAJrRHk5FwSz69iWWAmmz-P9byPzSb=KPR7S+mvp8jjs8DfKv6A@mail.gmail.com>
In-Reply-To: <CAJrRHk5FwSz69iWWAmmz-P9byPzSb=KPR7S+mvp8jjs8DfKv6A@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ALTERNATIVE_TARGET, ALTERNATIVE_PRIORITY problem
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
X-List-Received-Date: Wed, 04 Feb 2015 01:26:51 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On 1/28/15 5:12 AM, Joseph Andrew de la Peña wrote:
> Good day Mark,
> 
> Thank you for the response! Really appreciate it. The purpose is the latter as
> what you've provided (three packages that all provide 'bar'. )
> 
> When I tried this one, bar3 is the one pointed by bar. The aim is for bar to
> point bar1 instead. Running rpm -qp as you suggested, they all have same
> priority of 10 w/c made me hypothesize that the result is due to bar3 being the
> last one set as target for bar. Am I correct?
> 
> So my questions:
> 1. Is RPROVIDES not needed anymore when using ALTERNATIVES?

Provide of the specific alternative is automatic with RPM (due to the symlink
stuff).  However, other packaging formats may need it.

If the users are expecting to "Require" 'bar', then an RPROVIDE of 'bar' should
still be done.

> 2. How can I set priority between packages within the same unit/recipe? (so that
> I can reflect bar1 as the one pointed by bar)

For priority:

# The default priority for any alternatives
# ALTERNATIVE_PRIORITY = "priority"
#
#   i.e. default is ALTERNATIVE_PRIORITY = "10"
#
# The non-default priority for a specific target
# ALTERNATIVE_PRIORITY[name] = "priority"
#
# The package priority for a specific target
# ALTERNATIVE_PRIORITY_<pkg>[name] = "priority"

So you would use:

ALTERNATIVE_PRIORITY_${PN}-bar1[bar] = "100"
ALTERNATIVE_PRIORITY_${PN}-bar2[bar] = "50"
ALTERNATIVE_PRIORITY_${PN}-bar3[bar] = "10"

> 3. When using ALTERNATIVES, is there no need anymore to add the "name" (eg. bar)
> to the packagegroup's RDEPENDS?

You only need to set the rprovide and rdepend in the case were you need a
"required" connection between the provider the user.

In the RPM case, this is often automatic with a file dependency of /bin/bar, but
that can't be represented in the other packaging systems.

So the preference is to state the dependency manually.

What I'm trying to say is "yes" in many cases you will need to do this.
However, keep in mind that the package manager doesn't have any concept of
priority.  And generally only one provider is going to be selected for the install..

i.e.

bar1 - RPROVIDE bar
bar2 - RPROVIDE bar
bar3 - RPROVIDE bar

foo - RDEPEND bar

You don't know which of bar1, bar2 or bar3 is actually going to be installed.
If something else in the system can control the install of bar1, bar2 or bar3..
then you can be sure which will be installed AND maintain the dependency.

This often confuses people, but you have to remember that if the dep is 'bar',
that all three meet the definition so the system is free to arbitrarily select
them, even if it's not what you really wanted.

--Mark

> Your response is really really valued!
> 
> Thanks,
> Joseph
> 
> On Wed, Jan 28, 2015 at 12:53 AM, Mark Hatle <mark.hatle@windriver.com
> <mailto:mark.hatle@windriver.com>> wrote:
> 
>     On 1/27/15 9:37 AM, Joseph Andrew de la Peña wrote:
>     > Good day Yocto Community,
>     >
>     > I would like to ask what's wrong with my implementation with update-alternatives:
> 
>     I think that you have some of the variables confused below.  I've quoted bits of
>     the class's header (internal documentation):
> 
>     # List all of the alternatives needed by a package:
>     # ALTERNATIVE_<pkg> = "name1 name2 name3 ..."
> 
>     # The pathname of the link
>     # ALTERNATIVE_LINK_NAME[name] = "target"
> 
>     # NOTE: If ALTERNATIVE_LINK_NAME is not defined, it defaults to ${bindir}/name
> 
> 
>     # The default link to create for all targets
>     # ALTERNATIVE_TARGET = "target"
> 
>     or
> 
>     # A non-default link to create for a target
>     # ALTERNATIVE_TARGET[name] = "target"
> 
>     # A package specific link for a target
>     # ALTERNATIVE_TARGET_<pkg>[name] = "target"
>     #
>     #   This is useful when a recipe provides multiple alternatives for the
>     #   same item.
> 
> 
>     So if you have a single binary called 'bar', and want it to show up as bar1,
>     bar2 and bar3 using the alternatives you would do:
> 
>     PACKAGES =+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
>     ALTERNATIVE_${PN}-bar1 = "bar1"
>     ALTERNATIVE_${PN}-bar2 = "bar2"
>     ALTERNATIVE_${PN}-bar3 = "bar3"
> 
>     ALTERNATIVE_TARGET = "/bin/bar"
> 
>     ALTERNATIVE_LINK_NAME[bar1] = "/bin/bar1"
>     ALTERNATIVE_LINK_NAME[bar2] = "/bin/bar2"
>     ALTERNATIVE_LINK_NAME[bar3] = "/bin/bar3"
> 
>     FILES_${PN} = "/bin/bar"
> 
>     The result would be:
> 
>     package ${PN} contains /bin/bar
> 
>     package ${PN}-bar1 would create a link /bin/bar1 -> /bin/bar
>     package ${PN}-bar2 would create a link /bin/bar2 -> /bin/bar
>     package ${PN}-bar3 would create a link /bin/bar3 -> /bin/bar
> 
> 
>     If you want to do the other way around, have three packages that all provide
>     'bar'.  You would do:
> 
>     PACKAGES =+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
>     ALTERNATIVE_${PN}-bar1 = "bar"
>     ALTERNATIVE_${PN}-bar2 = "bar"
>     ALTERNATIVE_${PN}-bar3 = "bar"
> 
>     ALTERNATIVE_LINK_NAME[bar] = "/bin/bar"
> 
>     ALTERNATIVE_TARGET_${PN}-bar1 = "/bin/bar1"
>     ALTERNATIVE_TARGET_${PN}-bar2 = "/bin/bar2"
>     ALTERNATIVE_TARGET_${PN}-bar3 = "/bin/bar3"
> 
>     FILES_${PN}-bar1 = "/bin/bar1"
>     FILES_${PN}-bar2 = "/bin/bar2"
>     FILES_${PN}-bar3 = "/bin/bar3"
> 
> 
>     package ${PN}-bar1 would own a file /bin/bar1 and link it to /bin/bar
>     package ${PN}-bar2 would own a file /bin/bar2 and link it to /bin/bar
>     package ${PN}-bar3 would own a file /bin/bar3 and link it to /bin/bar
> 
> 
>     (You can verify the above by looking at the package data, if using RPM, rpm -qp
>     <package> --scripts will show you the logic for adding the alternative.)
> 
> 
>     As for the install time, the packaging system will "choose" to install a package
>     that meets the dependency you select.  If you don't specifically name ${PN}-bar1
>     in your install, it may not be selected in favor of one of the other providers.
>      The PRIORITY only affects if multiple packages are installed, which one takes
>     priority over the others.
> 
>     --Mark
> 
>     > =================
>     >
>     > *bar_git.bb <http://bar_git.bb> <http://bar_git.bb/>:*
>     >
>     > PACKAGES =+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
>     > RPROVIDES_${PN}-bar1 = "bar"
>     > RPROVIDES_${PN}-bar2 = "bar"
>     > RPROVIDES_${PN}-bar3 = "bar"
>     >
>     > ALTERNATIVE_LINK_NAME[bar] = "${datadir}/foo/bar"
>     >
>     > ALTERNATIVE_${PN}-bar1 = "bar"
>     > ALTERNATIVE_TARGET_${PN}-bar1 = "${datadir}/foo/bar1"
>     > ALTERNATIVE_PRIORITY_${PN}-bar1 = "99"
>     >
>     > ALTERNATIVE_${PN}-bar2 = "bar"
>     > ALTERNATIVE_TARGET_${PN}-bar2 = "${datadir}/foo/bar2"
>     > ALTERNATIVE_PRIORITY_${PN}-bar2 = "98"
>     >
>     > ALTERNATIVE_${PN}-bar3 = "bar"
>     > ALTERNATIVE_TARGET_${PN}-bar3 = "${datadir}/foo/bar3"
>     > ALTERNATIVE_PRIORITY_${PN}-bar3 = "97"
>     >
>     > inherit update-alternatives
>     >
>     > *packagegroup-foobar.bb <http://packagegroup-foobar.bb>
>     <http://packagegroup-foobar.bb/>:*
>     >
>     > RDEPENDS_foobar = "bar"
>     >
>     > =================
>     >
>     > The end result is always bar3 is present and bar is pointing to bar3. I never
>     > get bar1 being present which is the result I want.
>     >
>     > Please do recommend how will I properly use ALTERNATIVE_TARGET and
>     > ALTERNATIVE_PRIORITY.
>     >
>     > Thanks,
>     > Joseph
>     >
>     >
> 
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 
> 


