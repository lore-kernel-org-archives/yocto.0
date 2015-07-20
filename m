Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7D29E009C5; Mon, 20 Jul 2015 10:08:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 581 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Jul 2015 10:08:38 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08F17E008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 10:08:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t6KGwpIm023472; Mon, 20 Jul 2015 17:58:51 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id xoIyisgIJgKv; Mon, 20 Jul 2015 17:58:51 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t6KGwcR2023467
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 20 Jul 2015 17:58:49 +0100
Message-ID: <1437411518.27687.43.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 20 Jul 2015 17:58:38 +0100
In-Reply-To: <55AD1D0E.1020402@mlbassoc.com>
References: <55AD13AC.3010802@mlbassoc.com>
	<CAJTo0LY=mS1xJ5kW-ogFNY=T60qpyWP0MofdTK4_XKckzh5mfg@mail.gmail.com>
	<55AD1D0E.1020402@mlbassoc.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: New/unfamiliar messages
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
X-List-Received-Date: Mon, 20 Jul 2015 17:08:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-07-20 at 10:08 -0600, Gary Thomas wrote:
> On 2015-07-20 09:39, Burton, Ross wrote:
> >
> > On 20 July 2015 at 16:28, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
> >
> >        NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/dbus-native/1.8.16-r0 is not reachable, removing related manifests
> >            ... many more
> >
> >     What do these mean and should I be worried about seeing them?
> >
> >
> > That basically means that e.g. the dbus-native in the layers is newer than the version in the sysroot, so it is now removing dbus-native 1.8.16 from the sysroot so it can later
> > install 1.8.<something newer>.  Now this code has pretty much proven itself we can probably remove those messages.
> >
> > Previously it just wrote over the top and hoped for the best, with logic to error out if one native recipe wrote over another recipe's files.  This was good for determinism but bad
> > for moving files between recipes or renaming recipes (which was impossible).
> 
> Thanks for the explanation.  I can see that the code for this
> is fairly new (early June) and I must have not seen many of these
> so it grabbed my attention.  The build tree in question was last
> touched in March, so there obviously were many cases of this
> situation.
> 
> Related query: I tend to build & rebuild in the same tree (typically
> only one platform per build tree) over long periods of time (like my
> RaspberryPi2 tree which I've had around for many months).  Over time,
> there may be a lot of updated builds and I end up with many "duplicated"
> trees in my tmp/work (I don't use rm_work), e.g.
>    tmp/work/x86_64-linux/libfontenc-native/1_1.1.3-r0
>    tmp/work/x86_64-linux/libfontenc-native/1_1.1.2-r0
>    tmp/work/x86_64-linux/glib-2.0-native/1_2.44.1-r0
>    tmp/work/x86_64-linux/glib-2.0-native/1_2.44.0-r0
> 
> Is there a [simple] way to remove just the old/redundant trees?

The code you're talking about above now does this (without rm_work)!

Cheers,

Richard




