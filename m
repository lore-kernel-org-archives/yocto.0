Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25F27E00849; Tue, 28 Oct 2014 18:53:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
Received: from mail-yh0-f54.google.com (mail-yh0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1225E007C0
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 18:53:12 -0700 (PDT)
Received: by mail-yh0-f54.google.com with SMTP id 29so158475yhl.13
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 18:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=fF+jb703KbECJ8XnPiGB6r0s1ugdZNrVmgi4oKB+Bx4=;
	b=OaU+TYveNO2bpFSVBMZC83ghirsHIVsyufdhEmm8MHMBc4/F/Ottu7xWLXkn7v4Zpc
	t8UKjqLB091CUNlPaGAZ97qYBlqhq4U47s1LHHs6OMpOP3+tKSdycLgZsortpdNnEEzN
	mxTTIm9UhOsc4vMAWHyL69hKCFcNN1FCyWZOyEQCzC2vn+fqatT4D85it6eCm60C2hMB
	rZVKR3bErX3dMY1CVL81R/IwoMjBq1xoPQdnBYyM4HQOely7kV89ZEKtbNf5byHCUlmM
	FoXDtznpag9Kg3WNsSJ8V3euqMMkPqd//VMx8CySKSGxPZUNB6rZsPtNXDWURfy2u9uX
	AMwA==
MIME-Version: 1.0
X-Received: by 10.170.117.73 with SMTP id j70mr8333640ykb.76.1414547591360;
	Tue, 28 Oct 2014 18:53:11 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.172.8 with HTTP; Tue, 28 Oct 2014 18:53:11 -0700 (PDT)
In-Reply-To: <CANyK_8cFPyXs2R5+x3AiMNnPW4Q6hWnNdsjTHrf50M4F6VGJQQ@mail.gmail.com>
References: <CANyK_8cFPyXs2R5+x3AiMNnPW4Q6hWnNdsjTHrf50M4F6VGJQQ@mail.gmail.com>
Date: Tue, 28 Oct 2014 23:53:11 -0200
X-Google-Sender-Auth: jvswd2TpCqkpfuaxWTwMH8hYrfE
Message-ID: <CAP9ODKpt0qN5a2z2mfy5c-zVUkWjLcs_JzB6Pr4D7ddosf5RyA@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE Core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] opkg Status Update
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
X-List-Received-Date: Wed, 29 Oct 2014 01:53:16 -0000
Content-Type: text/plain; charset=UTF-8

Hello Paul,

On Tue, Oct 28, 2014 at 9:33 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> I'll be releasing opkg v0.2.4 in around 2 weeks and will be following
> that with v0.3.0 in the next month or two. The v0.3.0 release will
> incorporate some useful features, including cache improvements and
> package file extraction improvements. A dependency will be added on
> libarchive which will replace the crufty manual handling of tar and
> gzip formats which used to be in opkg. Due to these changes, I'd
> definitely like to get this tested before the v0.3.0 release and so
> I'll be tagging release candidates. If anyone would like to help with
> testing please let me know! I have a meta-opkg layer
> (https://bitbucket.org/opkg/meta-opkg) which makes it really easy to
> test opkg release candidates and git commits in OpenEmbedded, it even
> has a readme file with instructions.

I'd like to say my public 'Thank you' for this work. opkg is a
critical piece of software in several Free Software projects and
commercial products. Being involved in past with APT and Debian's
development I know it is not an easy task so I do value your work on
it.

Please let me know when you want a specific test on it and I try to
find some time to do it or allocate someone to handle it.

> Also, my circumstances are changing over the next few months. I've
> come to the end of the 'active' part of my PhD research and I'm now
> writing up my thesis part-time. I'm also starting full time employment
> in January. This will make for a pretty busy schedule and I don't know
> until I settle into the new routine how much free time I'll have to
> work on opkg. This would be a great time for someone to step up and
> help move things forward to v0.4.0 and beyond. I'll still be involved
> in opkg development and I'm happy to continue my role as maintainer,
> but I just want to make it clear that my time will be limited and any
> help with development, patch review and bug triage would be much
> appreciated!

Except the 'pretty busy schedule' and 'limited time' parts it is all
good news :-) I wish you all the luck on those new challenges :-D

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

