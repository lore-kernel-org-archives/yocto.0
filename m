Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B375FE00EA5; Wed, 17 Aug 2016 06:42:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 210 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Aug 2016 06:42:31 PDT
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5177FE00E9C
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 06:42:31 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20160817133847243_0684;
	Wed, 17 Aug 2016 13:38:47 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=55618 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ba15E-00078W-7p; Wed, 17 Aug 2016 09:40:40 -0400
Date: Wed, 17 Aug 2016 09:38:35 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@ca624034.mitel.com
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <3090aa77-4d98-46e0-53fa-b4ba6183e29b@mlbassoc.com>
Message-ID: <alpine.LFD.2.20.1608170927450.11498@ca624034.mitel.com>
References: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
	<alpine.LFD.2.20.1608161134290.9097@ca624034.mitel.com>
	<07E2CC82-5296-4ED3-8F74-E213EC509F4D@gmail.com>
	<alpine.LFD.2.20.1608161237490.11037@ca624034.mitel.com>
	<3090aa77-4d98-46e0-53fa-b4ba6183e29b@mlbassoc.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto@yoctoproject.org
Subject: Re: How to maintain a global DL_DIR?
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
X-List-Received-Date: Wed, 17 Aug 2016 13:42:35 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 17 Aug 2016, Gary Thomas wrote:

> On 2016-08-16 18:38, Robert P. J. Day wrote:
> > On Tue, 16 Aug 2016, Khem Raj wrote:
> >
> > > > On Aug 16, 2016, at 8:37 AM, Robert P. J. Day <rpjday@crashcourse.ca>
> > > > wrote:
> > > >
> > > > On Tue, 16 Aug 2016, Patrick Doyle wrote:
> > > >
> > > > > As I am playing with several different Yocto/OE projects, I thought
> > > > > it would be nice to set up a global downloads directory.
> > > > >
> > > > > Also, being a somewhat forgetful sort, I thought it would be nice if
> > > > > I could set DL_DIR in my .bashrc and not have to remember to edit
> > > > > conf/local.conf each time I follow the directions from a third party
> > > > > site to set up their Yocto based distribution.
> > > > >
> > > > > Can I do this?  If so, how?
> > > >
> > > > if you're talking about creating a local source mirror for tarballs
> > > > to be shared across multiple projects, i taught an OE/YP course last
> > > > week based on a digi ConnectCore 6 dev kit, and i wrote some wiki
> > > > pages for it, including this one:
> > > >
> > > > http://www.crashcourse.ca/wiki/index.php/CC6_local_source_mirror
> > >
> > > a small nit, perhaps its better to use rsync instead of cp.
> >
> >   good point, i will adjust that later. anything else i overlooked?
>
> I use the attached script to manage my download mirror.  There are
> two differences with the one Robert proposed:
>
> * It copies all files, regardless of name.  This is important if you
>   want your download mirror to be useful in a no-network environment
>   (which seems to be very important to some of my larger customers)
>   I normally run my builds with BB_NO_NETWORK="1" which lets me know
>   immediately if my download mirror needs updating.  I disable BB_NO_NETWORK
>   to download the new images, then update the mirror and turn it back
>   on again.

  i can appreciate that ... i'm always a little irked that the bash
patches are downloaded from the 'Net.

> * Once uploaded to the mirror, files are replaced by symbolic links
>   just as if the file had been present in the first place.  This has
>   two benefits - the downloads directory stays as small as possible
>   and the next time the 'save_downloads' script runs, it won't have
>   to bother with files already uploaded.  I use this process on a
>   number of build machines, some with Poky/Yocto build trees that have
>   been around for a long time (sometimes years) and keeping all those
>   old files in 'downloads' can really add up.

  true, but given that i keep my local mirror reasonably up to date,
i'm not overly concerned about leaving the occasional downloaded
tarball in a project directory. but here's something i *am* still
curious about.

  after a while, if you just keep adding to your local mirror, it gets
bigger and bigger and ... after a while, will contain versions of
tarballs that are utterly obsolete in that no current recipes refer to
them anymore, and it's useful to just clear out the rubbish once in a
while.

  is there a clever way to do that? is there some way to list all
versions of all sopurce that are, in any way, referenced by the
current set of recipes in the layers you have? after all, just because
you have a newer version of a tarball in no way means that the older
version(s) are unnecessary.

  way back when, i came up with a hacky solution: i start a new
project, point it at my local mirror, then run:

  $ bitbake -c fetchall world

what i end up with is, of course, piles of symlinks in the downloads/
directory, plus any new content as actual tarballs. at that point, if
i think what i've downloaded represents a decent cleaned
representation, everything in the downloads/ directory is used as the
basis for a new local source mirror, and the rest is thrown away.

  sure, i'm likely to toss a few things that will be referenced in the
future but so what, they'll be downloaded again and life will go on.
or is there a more clever way to do this?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



