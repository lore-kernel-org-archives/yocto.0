Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88BA8E00C11; Tue, 20 Sep 2016 23:19:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28FEEE00B47
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 23:19:05 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id i129so37009698ywb.0
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 23:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=DwKmd3gfmJV8hXuX2mFdjULtpEaNSmZtfuWWSXOi0f4=;
	b=dhRf4nriDcKjUyt0NqsssWGDx9+SyhOIhI06G0SMUHvJRAQiCEwDSytS6TNoivG1VS
	C2rmK6G4Bo2Sqw1Daj76UD/fCihi+uPfQkoav0TplhyVbHqy3XaGFBNR10ny4jkB8vSl
	UkjrldDUdQ0cHin/bpKflPXk0aSm+yCek7UHQCgUmyIl+qXi5op8XfnudPls/zFiCxYo
	1LWY6O5LqhMngiwA0NcTHaAAnElRUG1eZecATgktHMd3M4yxg1NJ2Vj0SpEfgNauae6B
	3wZXj0/NvAyjmFtoqbr+Zbx9f/75VS9BGN7fuH3r5EE/A7CX+7r2G6SBXwihrZeOSPGl
	mYuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=DwKmd3gfmJV8hXuX2mFdjULtpEaNSmZtfuWWSXOi0f4=;
	b=GcKwJKzkniT4mfyCyjfYA9kJ6v8u4DwC6YTtRm06KbXbYh7bzwEv6+8zAPG0LxEqpa
	AmLsAVwDir5TRSQo3kHF7Govgy1/gahCVulRI5a38K62KXOZhr11XGwNuUduVa3EV+8/
	t4h3RfRN7Gy18JJQ01WuahBEvOn85rU5I3AY+mLmCzDb89L2yb6aDzqquervcW0AL8GM
	B0CD+M/4Ou6quY/wIS+Qqvz6ovaKvc754pMbUvCKDJtUSkLlMrNGw8Ib1SlzvW6/YgCA
	ni1u6/vgoCUQDGverhAngdCrLODVRBNNzcUPRhYdyWgcfWHxgsfwWE9UNxIDDyAo82A4
	X05Q==
X-Gm-Message-State: AE9vXwN4WWmRv/cpDOKBpQjDur9FvfYKj3IGiNvE1ZTsPrTi7TVrixhqOC72p2Q5g7b3IuZR5XdzLcfeuGoAdA==
X-Received: by 10.129.105.139 with SMTP id e133mr23976063ywc.327.1474438745293;
	Tue, 20 Sep 2016 23:19:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Tue, 20 Sep 2016 23:19:04 -0700 (PDT)
In-Reply-To: <2136602.cfMx8aiKfc@peggleto-mobl.ger.corp.intel.com>
References: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
	<1719889.ALCIjRXcpG@peggleto-mobl.ger.corp.intel.com>
	<CALbNGRQCiSe317HT8es4NjWhjOFiyr-nB2AcMWBoUR3MxKU8aA@mail.gmail.com>
	<2136602.cfMx8aiKfc@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 21 Sep 2016 08:19:04 +0200
Message-ID: <CALbNGRRBBPkhE_H4Pv=zX9DykQFZCU2YvHHJSZbGE14wovkaPw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded Metadata: Recipe update broken
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
X-List-Received-Date: Wed, 21 Sep 2016 06:19:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 21, 2016 at 1:29 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thu, 25 Aug 2016 18:14:23 Andreas M=C3=BCller wrote:
>> seems layer list update is broken again e.g I am committing on
>> meta-qt5-extra regularly but last commit reported is one month ago.
>
> OK, finally we should be back up and running with updates. We're still fi=
xing
> an issue to do with registering new accounts but that too should be sorte=
d in
> the next day or so. Sorry about the delay.
>
Thanks everybody for taking care - layer index is a very useful tool
for me avoiding double efforts - from time to time :)

Andreas

