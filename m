Return-Path: <k4230r6@gmail.com>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E33CEE00572
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 07:20:19 -0800 (PST)
Received: by mail-ea0-f181.google.com with SMTP id m10so3818803eaj.12
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 07:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=JrJOkAcZes9jtNbqntykC8fJXcRvSCOHtQnTEP2Chro=;
	b=ex5q3DocOaXj5fU8/zI07jOFEF/OWNt/SlaTC1o0imHUdLXNIhX8NIWMDedH+WDUX0
	6U9kl8QhEF0Y9b3rssVe16dozniiXE9SqpQ8A5bQmgEitcg82KElNeMQO1V5zYvH/4GH
	r8m8QFUBG7K4tgHCNorOprXvKbjRvCjUqkYAfFYJckh6YlC5lNu0lvHI+h3HfPkMgzh3
	sJkN3Sgi3BDW/ekugZJwhmq8RFF1ckjH2e1CVUGekGgFTYqDaK1A700h/2Dzeg+4vdts
	Cj2ZAn+g8y3xnRR0x+jX7zqmHqclXvenKVoGxCJrWxoWNSQLrj+e+q6wViDh9C9nFznI
	TkkA==
MIME-Version: 1.0
X-Received: by 10.14.204.9 with SMTP id g9mr3563129eeo.82.1391440818337; Mon,
	03 Feb 2014 07:20:18 -0800 (PST)
Received: by 10.14.93.196 with HTTP; Mon, 3 Feb 2014 07:20:18 -0800 (PST)
In-Reply-To: <F7680723A1CA6840825A59020FA7706401032F77@sdexmbx1srv.skidata.net>
References: <F7680723A1CA6840825A59020FA770640102E7D7@sdexmbx1srv.skidata.net>
	<5228382.mhMAFlqhoF@peggleto-mobl5.ger.corp.intel.com>
	<F7680723A1CA6840825A59020FA7706401032F77@sdexmbx1srv.skidata.net>
Date: Mon, 3 Feb 2014 16:20:18 +0100
Message-ID: <CAALGJZb_jfkTvfN9XT5Q=+jUB8j3b=d5HkigN9+cHWWSwi3C8g@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV for BBLAYERS
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
X-List-Received-Date: Mon, 03 Feb 2014 15:20:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

> Hi Paul,
> thanks for your quick answer!
> I'll work with separate checkouts for now...
>
> But now I've got another question:
> Is there any possibility to submit something like a feature request for this?
> And is there a (realistic) chance that this feature gets implemented?
> If so, where should this request go? To the bitbake-devel list?
I am not sure If I got your point. If you intend to handle different
versions of layers you are using you may can use the setup-scripts
from Angstrom
They do use an "layer manager"
https://github.com/Angstrom-distribution/setup-scripts
https://github.com/Angstrom-distribution/setup-scripts/blob/master/sources/layers.txt

Which fetches the configured layers with the defined branch and commit ID.


regards,
Christian

>
> best regards,
> Richard
>
>> -----Original Message-----
>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>> Sent: Monday, February 03, 2014 3:46 PM
>> To: Richard Leitner - SKIDATA
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] SRCREV for BBLAYERS
>>
>> Hi Richard,
>>
>> On Monday 03 February 2014 12:17:04 Richard Leitner - SKIDATA wrote:
>> > I've a question regarding the BBLAYERS variable.
>> > Is it possible to set some kind of a SRCREV (=> git
>> > tag/branch/commit-id) for a path listed in BBLAYERS?
>> >
>> > I came to this question because I've two different branches in my meta
>> > layer: one for development and one for 'stable' releases. Therefore I
>> > have also two different build dirs and want to 'pin' the branches/tags
>> > to the build dir (preferable via the bblayers.conf). I think this
>> > should be possible because at the start of a build the revs are displayed like:
>> > meta-yocto = "[branch]:[commit-id]" The problem is that I wasn't able
>> > to find any answers or solutions on the web so I ask you now for help.
>>
>> The build system doesn't actually manage checking out/updating layers for you, it only
>> reports the revision if there is one, so this functionality isn't supported. Probably the
>> easiest way to handle this would be to keep two separate checkouts.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

