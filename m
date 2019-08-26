Return-Path: <ola.x.nilsson@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6E14E00CD7; Mon, 26 Aug 2019 05:04:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
X-Greylist: delayed 312 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Aug 2019 05:03:59 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E269E00CD7
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 05:03:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 12C6A1814A;
	Mon, 26 Aug 2019 13:58:46 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id angyoB0pF3R3; Mon, 26 Aug 2019 13:58:45 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id D0B3D183B8;
	Mon, 26 Aug 2019 13:58:44 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B9CF41A063;
	Mon, 26 Aug 2019 13:58:44 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id ADA9E1A062;
	Mon, 26 Aug 2019 13:58:44 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP;
	Mon, 26 Aug 2019 13:58:44 +0200 (CEST)
Received: from xbox06.axis.com (xbox06.axis.com [10.0.15.176])
	by seth.se.axis.com (Postfix) with ESMTP id A11261FD5;
	Mon, 26 Aug 2019 13:58:44 +0200 (CEST)
Received: from XBOX04.axis.com (10.0.5.18) by xbox06.axis.com (10.0.15.176)
	with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Mon, 26 Aug 2019 13:58:44 +0200
Received: from lnxolani1 (10.0.5.60) by xbox04.axis.com (10.0.5.18) with
	Microsoft SMTP Server id 15.0.1395.4 via Frontend Transport;
	Mon, 26 Aug 2019 13:58:44 +0200
References: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
	<CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
	<CANNYZj-=r2pf7bKNYjT+=j=rWC_ajYxZ2jUR5OQxpzpiEw-Egw@mail.gmail.com>
	<CAA=hcWQYO82WQiqwQvEgwbX3EwG+yLNWoWtT0WZR=m7zfdO3aA@mail.gmail.com>
	<CANNYZj-osAvfX3ga98oQSegsewdKixxFjd7RYuYG6uJGg8qoFw@mail.gmail.com>
	<CAA=hcWTZ4Ob=5+OZk9MowBw-Rc85Z9MXGKq4Hqs+=L=_c_KAdQ@mail.gmail.com>
User-agent: mu4e 1.0; emacs 27.0.50
From: Ola x Nilsson <ola.x.nilsson@axis.com>
To: JH <jupiter.hce@gmail.com>
In-Reply-To: <CAA=hcWTZ4Ob=5+OZk9MowBw-Rc85Z9MXGKq4Hqs+=L=_c_KAdQ@mail.gmail.com>
Date: Mon, 26 Aug 2019 13:58:44 +0200
Message-ID: <jwqzhjwi1e3.fsf@axis.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Mon, 26 Aug 2019 12:04:00 -0000
Content-Type: text/plain


You now have nonstandard library names, which will confuse the
package-split and automatic library dependency checker.  As a result, a
dependency is added from the applibrary on app-dev.  But depending on
-dev packages is a no-no, hence the QA error.

I have no idea whether the renameing of the library is a correct thing -
it looks weird to me - but if it is, you need to fix the packaging by
maniplating the FILES_* variables in your recipe.  You can inspect the
results of package separation in the packages-split folder for your
recipe.

/Ola


On Tue, Aug 06 2019, JH wrote:

> Thanks Alex, here is the error in my application build, it used working well:
>
> ERROR: app_library-1.0.0-0 do_package_qa: QA Issue: app_library
> rdepends on app_library-dev [dev-deps]
> ERROR: app_library-1.0.0-0 do_package_qa: QA run found fatal errors.
> Please consider fixing them.
> ERROR: app_library-1.0.0-0 do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /home/build/tmp-glibc/work/cortexa7t2hf-neon-oe-linux-gnueabi/app_library/1.0.0-0/temp/log.do_package_qa.6626
> ERROR: Task (/home/build/oe-core/../meta-app/recipes-core/app_library/app_library_git.bb:do_package_qa)
> failed with exit code '1'
>
> There is no do_package_qa in my app_library_git.bb, where is that
> do_package_qa from? how can I disable it? It sounds every easy in the
> document to disable it, but it did not give any clues -:(.
>
> Thank you.
>
> Kind regards,
>
> - jh
> On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>> It may help if you copy-paste the exact error you are getting, and the
>> content of the directory where it happens.
>>
>> Alex
>>
>> On Tue, 6 Aug 2019 at 13:09, JH <jupiter.hce@gmail.com> wrote:
>>
>>> On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>>> > You don't; package_qa is reporting real issues with your packaging, so
>>> you
>>> > need to address them.
>>>
>>> Well, my first issue is I need to build it, the document said it can
>>> be disabled, but did not say how, appreciate anyone helps how to
>>> disable it.
>>>
>>> Thank you
>>>
>>>
>>> > Alex
>>> >
>>> > On Tue, 6 Aug 2019 at 10:40, JH <jupiter.hce@gmail.com> wrote:
>>> >
>>> >> Hi,
>>> >>
>>> >> According to the latest document:
>>> >>
>>> >> "Package QA checks are now performed during a new do_package_qa task
>>> >> rather than being part of the do_package task. This allows more
>>> >> parallel execution. This change is unlikely to be an issue except for
>>> >> highly customized recipes that disable packaging tasks themselves by
>>> >> marking them as noexec. For those packages, you will need to disable
>>> >> the do_package_qa task as well."
>>> >>
>>> >> How can I disable the do_package_qa task?
>>> >>
>>> >> Thank you.
>>> >>
>>> >> Kind regards,
>>> >>
>>> >> - jh
>>> >>
>>> >> On 8/4/19, JH <jupiter.hce@gmail.com> wrote:
>>> >> > Hi,
>>> >> >
>>> >> > I was running my Yocto build fine until I had a minor change to move
>>> >> > libapplibrary.so to libapplibrry.so.${PN} and made libapplibrary.so
>>> >> > to
>>> >> > a symbolic link of libapplibrry.so.${PN}. Now it got an error of QA
>>> >> > issue applibrary rdepends on app-dev [dev-deps], QA run found fatal
>>> >> > errors, please consider fixing them.
>>> >> >
>>> >> > Even I reverse the changes back the, it still complained the same
>>> >> > error.
>>> >> >
>>> >> > I don't have do_package_qa in my bb file, where is it from? What is
>>> >> > that error about? How to fix it?
>>> >> >
>>> >> > Thank you.
>>> >> >
>>> >> > Kind regards,
>>> >> >
>>> >> > - jh
>>> >> >
>>> >> --
>>> >> _______________________________________________
>>> >> yocto mailing list
>>> >> yocto@yoctoproject.org
>>> >> https://lists.yoctoproject.org/listinfo/yocto
>>> >>
>>> >
>>>
>>

