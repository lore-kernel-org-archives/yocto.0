Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B7B3E009BA; Thu,  1 May 2014 21:20:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 908F2E0096C
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 21:20:44 -0700 (PDT)
Received: by mail-lb0-f172.google.com with SMTP id p9so2716653lbv.17
	for <yocto@yoctoproject.org>; Thu, 01 May 2014 21:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=8j+BV6Fr4Bw5kTAV6FGO6xBZO5bZre+Ys8/VbQM282s=;
	b=hqfgo1HzL7WqJ4v/6ihopERBOPoyg8OF1lTqG4Y+tpF9Z431cib0JMvJIrO/V9Lqt9
	2cgdjjSyEcAfAE21mrsUCTS542pSJiG2QJ0fgnKxPEEC63QVUMF2wiu+8aEgtDevjduc
	zZXBz6rCIv2tAu0HLVj+7TTS5cBRHd5vH9No6xo7EGqlAdI3311epiLmw/wblr1V4ubf
	Gyc/A+qklGMQPTIJrl6C4XGgawkPFNcXjGPeNFfvBTPD+9H7Ut6FixMIDdQ4IciZ7qj0
	sPIdqA2BkFevfCslZqV0fb+zvGvNB1ddUeXjePMb7Px8u4lBh7X96WvfxSRSDODmO+DA
	2x/w==
X-Received: by 10.152.116.99 with SMTP id jv3mr10506683lab.19.1399004443011;
	Thu, 01 May 2014 21:20:43 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.173.199 with HTTP; Thu, 1 May 2014 21:20:22 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1405012032460.2904@localhost>
References: <alpine.LFD.2.11.1405011731520.3588@localhost>
	<CA+gsK-otGEfVxRyOtH+SXf+wCjZGcPhDWJZZ_esfKO_tQL43dA@mail.gmail.com>
	<alpine.LFD.2.11.1405012032460.2904@localhost>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Thu, 1 May 2014 21:20:22 -0700
X-Google-Sender-Auth: y1g2HHkrdThHzcC9J8ptHCHj4Y8
Message-ID: <CA+YB3rb9YDq1oy3MwvK73R+05COJc855c_L7p0HMzRxEXYuYXA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: is anyone giving a yocto talk at linuxcon in chicago in august?
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
X-List-Received-Date: Fri, 02 May 2014 04:20:49 -0000
Content-Type: text/plain; charset=UTF-8

+1

I'd be glad to help with any talks anyone submits to conferences, and
if you do submit I'd love to know about it

On Thu, May 1, 2014 at 5:34 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Thu, 1 May 2014, Rudolf Streif wrote:
>
>>
>>         i would think *someone* would be doing a yocto talk at linuxcon in
>>       august. if not, i'll propose one since i need an excuse to go. if one
>>       is already on the schedule, i'll propose something else.
>>
>> The typical target for YP (and the YP Dev Day) were the Embedded
>> Linux Conferences not that much the more general LinuxCon. However,
>> during a conversation at LinuxCon NA last year in NOLA I learned
>> from a company that they are using YP to build custom stacks for
>> their cloud servers. From that perspective having a YP talk at LCNA
>> would actually be a good idea. A talk how one could use YP to build
>> your own desktop or server distro may be interesting and extend the
>> reach of the YP.
>
>   i think that's what i'm going to submit. tomorrow's the submission
> deadline so i have to get something in quick. i figure i'll submit
> something like "Building an Embedded Linux System Using YoctoProject",
> using the BeagleBone Black as the platform example.
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
>



-- 
Jeff Osier-Mixon @Intel
Yocto Project Community Manager http://yoctoproject.org

