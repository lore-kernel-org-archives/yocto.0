Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05EC8E01400
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 07:12:15 -0700 (PDT)
Received: by oagn16 with SMTP id n16so2809761oag.35
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 07:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4mo+JoCGzYXgBYN5wjS/fRj8znpOhgIG8QML4vVjG3w=;
	b=N7CYW8l+7i9nmQru5LYyrocOqqGF8Yki3AU2ARZ9gVbQCW/Ha4W/KHdD/JRP1tRT4N
	t0at2gWrb54tXwWPVI6Eyq5wUOmyWykxE+MThHafUBMr0ZBCtRD4qZh8dGosI/meAVXQ
	I4UwkCzcZkehtVZw5I/j+eS7AauSQznjQ/1Q44/fbCdSnJdW/tCOwn6fywMUSsvso+up
	14JR6AG1QogO9LN5CtWjlgY+Q07LRFB8C43/inNiUePhwH+EEpGkBXJX9AOANbx/3UeM
	He8oupfgy2d9bJLLrQneFdPhZ6+4i3o7my5Q6g4pdKO9ggMW9WpsXn74tnLBOXDtkaVA
	QyVg==
MIME-Version: 1.0
Received: by 10.60.26.133 with SMTP id l5mr1426641oeg.60.1348150335500; Thu,
	20 Sep 2012 07:12:15 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Thu, 20 Sep 2012 07:12:15 -0700 (PDT)
In-Reply-To: <4100342.qsm4CZIotx@helios>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<505A5FB9.4010802@mlbassoc.com>
	<CAMAb8ZN0Yb4km-X0wyUDsbRYYSC53B62F+ZPYRVNEmae7QeVsA@mail.gmail.com>
	<4100342.qsm4CZIotx@helios>
Date: Thu, 20 Sep 2012 10:12:15 -0400
Message-ID: <CAMAb8ZPXYXNTgk_v_PG55C1FYERrT4s08FGLQO7frsE=J4pGDA@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: BB_NO_NETWORK and own-mirrors not working with meta-systemd
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
X-List-Received-Date: Thu, 20 Sep 2012 14:12:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Fortunately, you caught me before I pulled out a bigger hammer. :-} I was
going to report that this still didn't work after typing:

  % bitbake -c cleanstate

But re-reading your post, I saw that there were supposed to be two 'esses'[!]
The following:

  % bitbake kmod -c cleansstate
  % bitbake kmod

does, in fact, seem to have worked for me.  Thanks, guys, for your help!


On Thu, Sep 20, 2012 at 9:42 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 20 September 2012 09:30:19 Evade Flow wrote:
>> I guess I'll try the BFI approach of restarting the build from scratch next.
>> `:-o.
>
> We'd really rather people didn't do this as it does not help us to diagnose
> and fix problems.
>
>> Incidentally, searching the OpenEmbedded manual for 'cleanslate'
>> turns up no hits. Is this some kind of 'secret' command?  Where can I learn
>> about other such commands?
>
> As Gary pointed out the command is "cleansstate". The OpenEmbedded manual has
> not been kept up-to-date I'm afraid - but the good news is there is an up-to-
> date and comprehensive set of documentation set provided by the Yocto Project
> here:
>
> http://www.yoctoproject.org/documentation
>
> FYI you can do "bitbake -c listtasks <targetname>" which will list all of the
> valid tasks, you can remove do_ from the start of these to get commands you
> can use with -c.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

