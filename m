Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4092BE007A0; Thu, 28 Aug 2014 08:08:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB2FBE00796
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 08:08:28 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id ty20so1107541lab.25
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 08:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=MuZampo9c0Uu4r1E3L7T32keSkF2YHJVqLbL4f/asbA=;
	b=uEcyUxm8YSYuVMxbaPTQmVSlHAlQuRvCytRrPHyB+STmUK5iXG5na5K8ahL/oVg/FX
	BDdrsC4pfSSNcv05KNsFYayYKAn7QU+qt623goB7angCKaQUwcWBjTaeJPo752ONescN
	FlkmZrCm0WsviiqMeQvqG6AdymV2GLCNAw7gIU46EBZ1OsFotGiwOalmRXH+HTYpWyjw
	xCoje7eZ58WTi/YaIt43uTYMoWIf5I0rUTQ2fkFQB7NvF/jxPEHIYlttvMEnTCwq0u8N
	iO/qUiTXrF3uia0uZq7yVzMvjLocbu19xSTUzskNMta8zbCjojaM9CMTl4HC5t6iDRGl
	ALAg==
X-Received: by 10.112.158.199 with SMTP id ww7mr4705494lbb.71.1409238506720;
	Thu, 28 Aug 2014 08:08:26 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.89.229 with HTTP; Thu, 28 Aug 2014 08:08:06 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1408280408050.2863@localhost>
References: <alpine.LFD.2.11.1408280336190.2292@localhost>
	<CAGiJk9dYKHaq3YTA6aAHBWkVH+gFqm+M=Rpi=80YhVZ0YNeWrA@mail.gmail.com>
	<alpine.LFD.2.11.1408280408050.2863@localhost>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Thu, 28 Aug 2014 08:08:06 -0700
X-Google-Sender-Auth: uFefG0SERs3qbikM5djEaCfCPBY
Message-ID: <CA+YB3rYra8atvtzy4JPz8zfc4WjbB-kM0rtb5ZdfRy48PFMO9g@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a list of yocto-supported dev kits somewhere?
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
X-List-Received-Date: Thu, 28 Aug 2014 15:08:42 -0000
Content-Type: text/plain; charset=UTF-8

I think the machines list is a great start, but it really lists actual
machines, not dev kits. There isn't any way to see immediately from
that list which are $99 dev boards and which are $9999 reference kits
from the manufacturers. I think Robert is right that a list of
inexpensive YP-supported boards would be extremely useful. I'll try to
create such a list in the near future.

On Thu, Aug 28, 2014 at 1:09 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Thu, 28 Aug 2014, Samuel Stirtzel wrote:
>
>> 2014-08-28 9:38 GMT+02:00 Robert P. J. Day <rpjday@crashcourse.ca>:
>> >
>> >   perhaps i just haven't noticed, but is there somewhere a list of dev
>> > kits that have a yocto project build for them? it would be great to
>> > have a reference list along the lines of, "boards for which there is a
>> > working YB build", with link(s) to relevant layer and instructions,
>> > etc.
>> >
>> > rday
>> >
>>
>> Hi,
>>
>> for the sake of completeness the layerindex [1] has a list of machines
>> that are eventually supported.
>> Although it lacks information about issues / supported features of
>> these machines.
>>
>>
>> [1] http://layers.openembedded.org/layerindex/branch/master/machines/?q=
>
>   ah, yes, that's what i was looking for, not sure why i'd never seen
> that before, thanks.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Jeff Osier-Mixon @Intel
Yocto Project Community Manager http://yoctoproject.org

