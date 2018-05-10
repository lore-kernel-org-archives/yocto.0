Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE761E009F8; Wed,  9 May 2018 18:05:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC36E009F8
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 18:05:24 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id h15-v6so262892uan.11
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 18:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aCZGZnIrsQOQXn34xmBfgNBTalppHu8Rg9WvW5UKoDA=;
	b=oWnLyuHdwRiwnraf99Y+no2tCF78Clzp0iNYC1tPpgZoZDIzIPlbV0sss+35wFTvVk
	yOHXPX/B6nY/s4EVbWou5Y6SYzqUW1QXikTsHQZY9vxx1LwByK8nFi3uuZyMWIDI53S6
	1keahs0cPcqOfVxjKzAH7k7VTO1hwjQVwAv+O0HlPVcUi2Oqc+QhY8mJYu2i983rDWUZ
	3/8MRQz8ExqRClD1XvmgDdNM1S+COzmlyizPacnsbgsa6tP6vK61x9ZQiwbXLC5mKS3f
	DyDXDtCqnR91fNFqklxZKhIV8yOm4tSm4jXGIqec81bRpc6hOtK6pvSz+gC/PxuExqDq
	EUUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aCZGZnIrsQOQXn34xmBfgNBTalppHu8Rg9WvW5UKoDA=;
	b=FMuyuk2+cSmCHkuDZ70tk4Wy9K973lzDnbxqNzof8U0Sel9eECPqb8zq7fHH6z4twz
	uRPtd+31qjYVxpeaK6Y0M7ySldq3IUnVxDPd6+kTjLeiduwPcVQop+d6ivxATOuYM1sK
	LYMexnEn2qet2y0+tXTsGkOpNFxsIwT34JBs7KD4iUXwJHIdxkvl3UqP3BzGphO7TYKU
	NYsY9AOMgLAA1mdOKTMQLMAd5rz/a1Vc0PiXf0bapLF3vgCdzdv3cGv0RAkh+0VfNCZx
	6qoRAyHgHUaIUXUZoZgxZxunKusvWzGmWrFBshIpFIrN/pd0xsAxrdObzBe8bErsqaiF
	vRdA==
X-Gm-Message-State: ALQs6tDJj8seMBThoWnOoX1U/rtTm0v2kz/ppFq8AUJqrtzdB6opvfjg
	Xp4QGaZGGyMWC+dJL+NwO+fwGuvd7DW/I82B9E8=
X-Google-Smtp-Source: AB8JxZrCPdOxK1WkPjqVNBePzjJwsia8Bb6C3yDBc/bew0+dnVFh15pkY0C7uvKqSMp5trNEIERRov+cR/fGrLf2iBY=
X-Received: by 10.159.40.35 with SMTP id c32mr41757022uac.193.1525914324040;
	Wed, 09 May 2018 18:05:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Wed, 9 May 2018 18:05:23 -0700 (PDT)
In-Reply-To: <CAJgxT3_=C2roF-oP9-VpPZcFTphOyCe8VLpqYjuy+8C628_XZQ@mail.gmail.com>
References: <20180509214855.3330-1-matt.hoosier@gmail.com>
	<CAJ86T=UpVWZsvYSz4yeDVZp+EmbnhFsWGRGq5EWgG766qTZ-xA@mail.gmail.com>
	<CAJgxT3_=C2roF-oP9-VpPZcFTphOyCe8VLpqYjuy+8C628_XZQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 9 May 2018 18:05:23 -0700
Message-ID: <CAJ86T=VgsP9jXh1pxzx257qLPAVf+MW-1tmLf2OOQUSYDp-Q9A@mail.gmail.com>
To: Matt Hoosier <matt.hoosier@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bitbake: fetch2/gitsm: avoid live submodule fetching during unpack()
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
X-List-Received-Date: Thu, 10 May 2018 01:05:26 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 9, 2018 at 5:40 PM, Matt Hoosier <matt.hoosier@gmail.com> wrote:
> On Wed, May 9, 2018 at 6:27 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>>
>> On Wed, May 9, 2018 at 2:48 PM, Matt Hoosier <matt.hoosier@gmail.com>
>> wrote:
>> > From: Matt Hoosier <matt.hoosier@garmin.com>
>> >
>> > Although the submodules' histories have been fetched during the
>> > do_fetch() phase, the mechanics used to clone the workdir copy
>> > of the repo haven't been transferring the actual .git/modules
>> > directory from the repo fetched into downloads/ during the
>> > fetch task.
>> >
>> > Fix that, and for good measure also explicitly tell Git to avoid
>> > hitting the network during do_unpack() of the submodules.
>> >
>> > Ref:
>> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=12739
>>
>> Patches for bitbake should be sent to the bitbake-devel mailing list:
>>
>>   http://lists.openembedded.org/mailman/listinfo/bitbake-devel
>
> Right, okay. How's that meant to work for stuff developed in-tree with poky?
> Do you manually want the 'bitbake/' leading directory stripped off before
> emailing the patch?

Yes, patches for bitbake should apply directly to a clone of the bitbake repo.

Manually editing a patch created from poky is certainly do-able, but
applying the patch to a genuine bikebake repo (with "git am -p2 ...")
and re-generating the patch from there may be safer. Whichever you
prefer.

>> > ---
>> >  bitbake/lib/bb/fetch2/gitsm.py | 12 +++++++++++-
>> >  1 file changed, 11 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/bitbake/lib/bb/fetch2/gitsm.py
>> > b/bitbake/lib/bb/fetch2/gitsm.py
>> > index 0aff1008e5..1f3fc44352 100644
>> > --- a/bitbake/lib/bb/fetch2/gitsm.py
>> > +++ b/bitbake/lib/bb/fetch2/gitsm.py
>> > @@ -132,4 +132,14 @@ class GitSM(Git):
>> >
>> >          if self.uses_submodules(ud, d, ud.destdir):
>> >              runfetchcmd(ud.basecmd + " checkout " +
>> > ud.revisions[ud.names[0]], d, workdir=ud.destdir)
>> > -            runfetchcmd(ud.basecmd + " submodule update --init
>> > --recursive", d, workdir=ud.destdir)
>> > +
>> > +            # Copy over the submodules' fetched histories too.
>> > +            if ud.bareclone:
>> > +                repo_conf = ud.destdir
>> > +            else:
>> > +                repo_conf = os.path.join(ud.destdir, '.git')
>> > +            runfetchcmd("cp -pr %s %s" % (os.path.join(ud.clonedir,
>> > 'modules'), repo_conf), d)
>> > +
>> > +            # Careful not to hit the network during unpacking; all
>> > history should already
>> > +            # be fetched.
>> > +            runfetchcmd(ud.basecmd + " submodule update --init
>> > --recursive --no-fetch", d, workdir=ud.destdir)
>> > --
>> > 2.13.6
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>
>

