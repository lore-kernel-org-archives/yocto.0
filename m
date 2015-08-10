Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FEFEE00306; Mon, 10 Aug 2015 01:04:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1866E00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 01:04:27 -0700 (PDT)
Received: by iodd187 with SMTP id d187so161980818iod.2
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 01:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Wjj0LNklWdfciWDYBF0M92lteUVeMRJmW+qQqfOd05A=;
	b=OF+4yXtF4hyQmsPFkY9eY73WtUCAk7Fhc69gUjjcd0GhU1Xg9fME0KupjdCekszU6z
	L+Hn13XjLAhStlACT5M6K9nDUKGPXVK7PdilnbdjdDamMjQjf184jPru1iVPoMFKHD8S
	PwJXKxBvR2tPTmEonJ349nFuHgHuCSKp1QNEAEew3oTvX2xv89UiYuB2Mw34ro09l1ph
	PDyNI/JuMoqtP8W76h2V2FUaX8WP+1/nLpQpiAQVFCPVgn2wR4PkLpMdkDAeuvUslFga
	QOFjH6aPOYqzVbwLz3tUwNDoRKucxJAXvYmP83EXD03Xj6DUAuQPL+H+dmUa1S9R/lEP
	+0PQ==
X-Received: by 10.107.14.203 with SMTP id 194mr22133101ioo.195.1439193866981; 
	Mon, 10 Aug 2015 01:04:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Mon, 10 Aug 2015 01:03:57 -0700 (PDT)
In-Reply-To: <20150809235703.GA16574@resin>
References: <CANge7vWSJK5EtA6k53OxF0NizhY2fun4Ev9rVeMbaZRdAekQ7Q@mail.gmail.com>
	<CAK18fxE_1o8iPsB+sDVE6zFUrvQO5VF3rRHfwxLHk3vdqoLB2A@mail.gmail.com>
	<55AD1AE2.7010401@mlbassoc.com> <20150809235703.GA16574@resin>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 10 Aug 2015 01:03:57 -0700
Message-ID: <CAMKF1sqzQXJGp3h1J9C2K4BojveL+14UMsYjq-UtQrk_1CX44Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Mon, 10 Aug 2015 08:04:34 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 9, 2015 at 4:57 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hi,
>
> On Mon, Jul 20, 2015 at 09:59:30AM -0600, Gary Thomas wrote:
>> On 2015-07-19 15:34, Andrei Gherzan wrote:
>> >Hello,
>> >
>> >--
>> >Andrei Gherzan
>> >
>> >On Thu, Jul 16, 2015 at 7:53 PM, Jon Szymaniak <jon.szymaniak@gmail.com <mailto:jon.szymaniak@gmail.com>> wrote:
>> >
>> >    Hi all,
>> >
>> >        >
>> >        > So there is no support for depth clones until 2.5.0? I didn't really
>> >        > understand.
>> >
>> >        Well, shallow clones are supported but only for branch tips, which is
>> >        not what we need. This feature for shallow cloning a specific revision
>> >        is available only in git 2.5.0+. Also, this feature needs a server-side
>> >        configuration option to be enabled, in order to work properly.
>> >
>> >        Regards,
>> >        Nikolay
>> >
>> >
>> >    I'd argue that this whole issue with the whole meta-raspberrypi firmware.inc download is more than just slow, inconvenient download.  I've left builds running all night (8+
>> >    hours on a 30Mib/s residential link) that just hang on this, usually timing out.  I initially thought it was just me, but am hearing others confirm this as well.
>> >
>> >    As such, I just wanted to continue this conversation.  It sounds like git fetch's --depth is the best option on the table, but has the issues Nikolay has described.  What are
>> >    your thoughts on the following?
>> >
>> >    (1) We create a git-native and build a version that supports this the fetch depth?
>> >
>> >    I suspect this could be made to work, but haven't dug into what dependencies git may have and how that would play out on various LTS distros. My knee-jerk is that has too high
>> >    of a risk/benefit ration, given that we're talking about 1 repo.
>> >
>> >    (2) We update the git fetcher to check the git version and support a depth= option if the git version is sufficient.  If it is not, we spit out a warning and fall back to the
>> >    current behavior.
>> >
>> >    Neither (1) nor (2) address Nikolay's point that --depth requires server-side support.  However, I'd argue this is something you'd be testing and verifying when writing the
>> >    recipe.  Is this a reasonable assertion? How likely is it that a server supporting this would suddenly be re-configured?
>> >
>> >    (3) We request that the upstream maintainer of meta-raspberrypi use the GitHub Release feature [a] to post a tarball of a known checksum at somewhat regular intervals.  I'm
>> >    told by a few package maintainers that while the tarballs that it generates for specific changesets are subject to change, that the tarballs it autogenerates when using its
>> >    Releases feature do not.  However, I have not confirmed this.  If this is false, then one can upload a tarball with known checksums to the release as an attachment; I would be
>> >    *shocked* if they touch your attachments.
>> >
>> >    While (3) is a nice "not our problem" solution, I think (2) might have some benefits for other recipes later.  Any other ideas?
>> >
>> >
>> >Definitely 2 is the best opinion in my opinion too. I'm wondering if there is any work started in this direction.
>> >
>>
>> It would sure be nice to get this fixed!  The latest download
>> (I always save the tarballs for the next time) is over 4GB!!
>>
>
> So what is the conlcusion on this? Should we switch on SVN temporary?

Step back a bit and look at what this firmware repo is all about. Its
bunch of binaries in there. Git is a bad choice for such a repo. Since
binary blobs whenever updates will add that much of data to size of
metadata and soon it will go into tens of gigabytes so its a building
avalanche. Ideally this firmware should have been released as tarballs
in first place. Can you work with owners who are releasing this in
this form to reconsider releasing it in discrete tarballs ?

