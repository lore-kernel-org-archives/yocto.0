Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63727E008DC; Mon, 20 Jul 2015 08:59:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C347E008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 08:59:12 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 73D76F811DA; Mon, 20 Jul 2015 09:59:12 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E7DF0F811DA;
	Mon, 20 Jul 2015 09:59:11 -0600 (MDT)
Message-ID: <55AD1AE2.7010401@mlbassoc.com>
Date: Mon, 20 Jul 2015 09:59:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANge7vWSJK5EtA6k53OxF0NizhY2fun4Ev9rVeMbaZRdAekQ7Q@mail.gmail.com>
	<CAK18fxE_1o8iPsB+sDVE6zFUrvQO5VF3rRHfwxLHk3vdqoLB2A@mail.gmail.com>
In-Reply-To: <CAK18fxE_1o8iPsB+sDVE6zFUrvQO5VF3rRHfwxLHk3vdqoLB2A@mail.gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Mon, 20 Jul 2015 15:59:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-19 15:34, Andrei Gherzan wrote:
> Hello,
>
> --
> Andrei Gherzan
>
> On Thu, Jul 16, 2015 at 7:53 PM, Jon Szymaniak <jon.szymaniak@gmail.com <mailto:jon.szymaniak@gmail.com>> wrote:
>
>     Hi all,
>
>         >
>         > So there is no support for depth clones until 2.5.0? I didn't really
>         > understand.
>
>         Well, shallow clones are supported but only for branch tips, which is
>         not what we need. This feature for shallow cloning a specific revision
>         is available only in git 2.5.0+. Also, this feature needs a server-side
>         configuration option to be enabled, in order to work properly.
>
>         Regards,
>         Nikolay
>
>
>     I'd argue that this whole issue with the whole meta-raspberrypi firmware.inc download is more than just slow, inconvenient download.  I've left builds running all night (8+
>     hours on a 30Mib/s residential link) that just hang on this, usually timing out.  I initially thought it was just me, but am hearing others confirm this as well.
>
>     As such, I just wanted to continue this conversation.  It sounds like git fetch's --depth is the best option on the table, but has the issues Nikolay has described.  What are
>     your thoughts on the following?
>
>     (1) We create a git-native and build a version that supports this the fetch depth?
>
>     I suspect this could be made to work, but haven't dug into what dependencies git may have and how that would play out on various LTS distros. My knee-jerk is that has too high
>     of a risk/benefit ration, given that we're talking about 1 repo.
>
>     (2) We update the git fetcher to check the git version and support a depth= option if the git version is sufficient.  If it is not, we spit out a warning and fall back to the
>     current behavior.
>
>     Neither (1) nor (2) address Nikolay's point that --depth requires server-side support.  However, I'd argue this is something you'd be testing and verifying when writing the
>     recipe.  Is this a reasonable assertion? How likely is it that a server supporting this would suddenly be re-configured?
>
>     (3) We request that the upstream maintainer of meta-raspberrypi use the GitHub Release feature [a] to post a tarball of a known checksum at somewhat regular intervals.  I'm
>     told by a few package maintainers that while the tarballs that it generates for specific changesets are subject to change, that the tarballs it autogenerates when using its
>     Releases feature do not.  However, I have not confirmed this.  If this is false, then one can upload a tarball with known checksums to the release as an attachment; I would be
>     *shocked* if they touch your attachments.
>
>     While (3) is a nice "not our problem" solution, I think (2) might have some benefits for other recipes later.  Any other ideas?
>
>
> Definitely 2 is the best opinion in my opinion too. I'm wondering if there is any work started in this direction.
>

It would sure be nice to get this fixed!  The latest download
(I always save the tarballs for the next time) is over 4GB!!

-rw-rw-r-- 1 gthomas gthomas 4194568645 Jul 20 09:44 /local/rpi2_2015-03-05/downloads/git2_github.com.raspberrypi.firmware.git.tar.gz


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

