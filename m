Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3683FE00B66; Tue, 17 Jun 2014 13:18:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (insop.song[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0F3AE00B0B
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 13:18:06 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id w61so7915185wes.15
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 13:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=o+2oP/6dzQW4zk6fV12OTWGyli/tjYBQNSoKUXyVzGI=;
	b=sCQjTfhmOwDZy14/qpxXYAZ4uGHEm2T3xv856eIpKPGXt2WHKEtmLXNPVMMYLmNzJ/
	dOHjXv46Y12b1h5PPCBhkuh8S3rYNgbqaJd/HlcACfCs1UtTqdinM2tEdz47R9Tk0daJ
	djQX6z7u3SF9XOAVq57ey4nWSBppVdoMmXN+ApYTI3XMVRN7VzuuybmV/ZZbDMDu+J4Q
	ti5oCiGsJnaqcvH8cjCzKxd3RxVV0/JR7WpKyO3hALU/NvJcssgwK0ZTdidubVykJCDd
	3ANImv4EtBZHtR32awufBJpqAogfYQpZsVgMwjYkjf0Fmxs/nCWpeXtOLeed9OtSCPA9
	TA5w==
X-Received: by 10.180.90.145 with SMTP id bw17mr39847921wib.43.1403036286017; 
	Tue, 17 Jun 2014 13:18:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.44.136 with HTTP; Tue, 17 Jun 2014 13:17:45 -0700 (PDT)
In-Reply-To: <53973D6F.70201@dynamicdevices.co.uk>
References: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
	<20140610103736.GC24880@gmail.com>
	<CAALGJZaBFLsX3Knt35fGkvxh0uTz0-TQMZnveQh7paPZ9h438g@mail.gmail.com>
	<539718B9.9030604@mindchasers.com>
	<CAP71Wjy3uBiWuzPgaT7pfAd=rW2qh0R44srPY41GAPG9CMMD2Q@mail.gmail.com>
	<1402419009.2402.4.camel@marlon-Z68X-UD3H-B3>
	<53973D6F.70201@dynamicdevices.co.uk>
From: Insop Song <insop.song@gmail.com>
Date: Tue, 17 Jun 2014 13:17:45 -0700
Message-ID: <CACzyEJ9Q+7poUmckJwREMzBWmtBefOvPs2m-3dOMXBon118GgA@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Marlon Smith <marlon.smith10@gmail.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Why use Yocto?
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
X-List-Received-Date: Tue, 17 Jun 2014 20:18:09 -0000
Content-Type: text/plain; charset=UTF-8

Just add my few cents of using Yocto.

Since yocto is tailored towards embedded system, normally it includes
light weight (strip-down version/flavor) software and servers, such as
sysklogd instead of syslogd and busybox cron instead of crond.

Which is not a bad thing at all, as this make sure your system is less bloated.

However, just be aware that when you want to make some changes to
these server configurations, you need more debugging time since some
of this strip-down servers does not behave as other full blown
servers. Also this means that google search wont' give you good
answers either since most of the answers to the existing distribution
(ubuntu, debian,,,) targeted.

On the other hand, this mailing list is very active, and you will get
answers from other developers quickly.

ISS


On Tue, Jun 10, 2014 at 10:16 AM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
> On 10/06/2014 17:50, Marlon Smith wrote:
>
> Wow, thanks everyone for the excellent replies.  I am a developer and not
> much of a legal guy, so pointing out the licensing issues with Ubuntu was
> especially helpful.
>
> It sounds like we are going to choose Yocto for our product.
>
>
> Further to the excellent points made by others, presumably Freescale are
> providing commercial support on Yocto for i.MX6 now too.
>
> I know they have a developer day coming up in the UK shortly at which Yocto
> is on the agenda.
>
> I also suspect they will have some "ready to run" binaries somewhere for
> download, although I can't spot them in the walled garden.
>
> They usually do, and that might even be enough for you, depending on your
> needs, and how custom the board variant is...
>
> Regards,
>
> Alex
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

