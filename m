Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1BF0E00D92; Fri, 15 Dec 2017 05:15:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 331 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Dec 2017 05:15:03 PST
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D57E00AD7
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 05:15:03 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 689782586F;
	Fri, 15 Dec 2017 05:09:31 -0800 (PST)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iVy21638AHFN; Fri, 15 Dec 2017 05:09:26 -0800 (PST)
Received: from linuxlap (c83-248-68-161.bredband.comhem.se [83.248.68.161])
	by smtp1.genivi.org (Postfix) with ESMTPSA id D96972586B;
	Fri, 15 Dec 2017 05:09:23 -0800 (PST)
Message-ID: <1513343351.15290.25.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, "Daniel."
	<danielhilst@gmail.com>
In-Reply-To: <CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
	<CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
	<CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
Organization: GENIVI Alliance
Date: Fri, 15 Dec 2017 14:09:11 +0100
Mime-Version: 1.0
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Fri, 15 Dec 2017 13:15:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


On Thu, 2017-12-14 at 06:31 +0100, Zoran Stojsavljevic wrote:
> > Also is worth noting that I'm running Fedora 27 which wasn't tested... 
> 
> You should start from here your investigation, since you are on not tested
> YOCTO host distribution. And Fedoras are
> different from release to release, certainly!
> 
> So either you should downgrade your fedora 27 to 26 (which I doubt it is
> possible), better to build brand new Fedora 26 using exactly the same
> packages.

Oh no, don't downgrade your distro. :-)

Docker is your friend for a repeatable and tested Yocto build environment
(In Fedora of course systemd-nspawn and other esoteric choices may exist).

We usually use & recommend easy-build project [1] (except for the CI system
build agents that needed a little bit more, and when I set that up I was
also more accustomed with using phusion/baseimage docker image over standard
Ubuntu).
 
If you find anything lacking, I'm sure it will accept pull requests - just
fork & extend in the meantime.  Honestly, it's quite trivial for anyone to
reproduce such Docker files, but Gianpaolo set up a structure and a project
here.  IMHO, we just need ANY canonical source for a base distro with an
official list of yocto/poky required packages ready to go, so why not use
this one & support it with any needed update?

HTH
- Gunnar

[1] https://github.com/gmacario/easy-build

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance


> Here is a bit of help: to port all the packages to fresh installed Fedora
> 26, use the following command to retrieve
> packages from Fedora 27: rpm -qa --qf "%{name}.%{arch}\n" > packages-
> list.txt
> 
> Zoran
> 




