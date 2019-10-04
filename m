Return-Path: <stefan@herbrechtsmeier.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99216E00D47; Fri,  4 Oct 2019 07:55:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.13.157.12 listed in list.dnswl.org]
Received: from dd41138.kasserver.com (dd41138.kasserver.com [85.13.157.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 999B0E00C74
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 07:55:50 -0700 (PDT)
Received: from [192.168.178.37] (i59F77ED3.versanet.de [89.247.126.211])
	by dd41138.kasserver.com (Postfix) with ESMTPSA id 0079611A005E;
	Fri,  4 Oct 2019 16:55:48 +0200 (CEST)
To: Jean-marie Lemetayer <jean-marie.lemetayer@savoirfairelinux.com>
References: <1078346093.8578188.1570117048745.JavaMail.zimbra@savoirfairelinux.com>
	<51c5973e-2c1a-f212-f963-9a2b321f480d@herbrechtsmeier.net>
	<967547077.8619660.1570192633081.JavaMail.zimbra@savoirfairelinux.com>
From: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Message-ID: <3faffc0c-a573-0b8b-5915-2619262e7b6e@herbrechtsmeier.net>
Date: Fri, 4 Oct 2019 16:55:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <967547077.8619660.1570192633081.JavaMail.zimbra@savoirfairelinux.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Savoir-faire Linux Rennes <rennes@savoirfairelinux.com>
Subject: Re: [npm] duplicate code
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
X-List-Received-Date: Fri, 04 Oct 2019 14:55:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Jean-Marie,

Am 04.10.19 um 14:37 schrieb Jean-marie Lemetayer:
> > I have recently worked on a yocto project using npm and I have seen some issues. I have solved a few but only for bitbake:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=eecba41822e86b69ebdb9cbc8fbfd512ad9a47d7
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=a34d0d539e5fdf341541fb628652d22289e80512
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=e90cd2ed61b93ee7e290e7e592f1f0242ab5c281
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=a35abe31dc23916fd06afdb3a5e22a81ef3df579
> 
> As I have more time now, I wanted to continue my work by fixing devtool / recipetool.
> 
> I have also checked the bugzilla for issues that I could fix / that should be tested again:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=10515
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=10760
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11028
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11029
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12534
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13415
> 
> I ended up with this todo list:
>   - merge the duplicate code between bitbake and recipetool
>   - fix the npm package name handling in recipetool
>   - fix the npm package version handling in recipetool
>   - fix the lockdown.json file generation in recipetool
>   - create an example nodejs application to test all these cases
>   - update the wiki using this example application:
>     https://wiki.yoctoproject.org/wiki/TipsAndTricks/NPM
> 
> Finally, in my recent project, we were using angular (https://angular.io) for the front-end. I have planned to add the work done to support angular applications in yocto (angular.bbclass) and update recipetool to handle them.

Do you want to build an angular application? In this case you have to 
produce a machine (independent) package via a native npm build because 
you need to run the angular compiler on the build machine.

> 
> Your work sounds very interesting. The good point is that npm-shrinkwrap.json and lockdown.json files (which have generation issues btw) will no longer be required. But projects using npm can have a lot of dependencies (e.g. the angular example app have 1053 dependencies).

A lot of dependencies are the problem at the moment. But many 
dependencies are not update frequently and my current solution assume 
that I can always use the latest version per major release version

> Is recipetool will be handling the whole recipes creation in one time ?

That's the problem at the moment. I don't manage to build multiple 
recipes from one recipetool run. Therefore I have a two stage approach. 
I use recipetool to build exact one recipe. A second script generates a 
list of all dependencies and call recipetool per package if the recipe 
doesn't already exist. This works but the run time is very high.

> Is it possible to see your work ? A public fork would be nice. I would gladly help you / test your work / add my fixes if needed.

I only have a unfinished Proof of Concept. If you like I could clean it 
up a bit and post it on github as a separate layer.

Regards
   Stefan

