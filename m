Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5ABDE009D7; Fri, 31 Jul 2015 17:36:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2637E00498
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 17:36:10 -0700 (PDT)
Received: by pacan13 with SMTP id an13so49380439pac.1
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 17:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=aBxrHraORBs/lBXwG7PfpqQ+QJL04JdiWnfHwebBdek=;
	b=mvSUi72TQa/gG9MjEk2ieZGk0edetuSq1ykzd1oaqoP+5l90VHSftDlzqkp+YA5Hxl
	HG8AObmLKXtq4TQXQ3TgNXAnDcw2aNoqX3lZAe8Jnkt3abC5uoIxD/oRRfIKtBnQQBt4
	8YhhDfDUQwDbLhqKlQi9Nr5ZZ6HLR3TR7AyFjr15zYNiV7QcmAurs4nudFSFgguHaEbl
	550sxIRii0zq9J7vRdjNOlv9nHU8r1PMVwRMCtoWjn/RqaLgmKzzuiXD0xUaiw6uHj3b
	+e6MSC1cR6S5r6R+/MluLJ5yito7/awy9clHqbecRQ5ecwlEXElU8BP7Xp/avO3vKp8A
	7WMg==
MIME-Version: 1.0
X-Received: by 10.68.253.6 with SMTP id zw6mr739113pbc.150.1438389370254; Fri,
	31 Jul 2015 17:36:10 -0700 (PDT)
Received: by 10.70.65.4 with HTTP; Fri, 31 Jul 2015 17:36:10 -0700 (PDT)
In-Reply-To: <55BBEF07.1020009@balister.org>
References: <55BBEF07.1020009@balister.org>
Date: Sat, 1 Aug 2015 02:36:10 +0200
Message-ID: <CALbNGRQH71=K0SzukNdxJzCXqbykG1eCWBLVWHVV0BwWz4ED2A@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: "openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [oe] OEDEM Oct 9, after ELCE and Yocto Project Developer Day
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
X-List-Received-Date: Sat, 01 Aug 2015 00:36:15 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 31, 2015 at 11:56 PM, Philip Balister <philip@balister.org> wrote:
> OpenEmbedded will hold a developer meeting Oct 9 after ELCE and YP dev
> day in Dublin.
>
> This is a chance for developers and users of OpenEmbedded (The Yocto
> Project build system) to meet and discuss important project issues.
> Everyone is welcome to attend. We are planning on about 30 people so do
> not worry about taking space from someone important.
>
> For people that have not attended one of these, we will collect items on
> the wiki and try to setup a rough agenda before the event. Please add
> your thoughts.
>
> If you plan to attend, add your name here:
>
> http://www.openembedded.org/wiki/OEDEM
>
Maybe a temporary problem and off-topic: I cannot reach
http://www.openembedded.org/

Andreas

