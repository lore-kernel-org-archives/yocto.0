Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44D76E00BDF; Sun,  3 Nov 2019 10:31:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 372 seconds by postgrey-1.32 at yocto-www;
	Sun, 03 Nov 2019 10:31:30 PST
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20FB4E007AE
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2019 10:31:30 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 475kqv24qlz6r;
	Sun,  3 Nov 2019 19:25:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1572805516;
	bh=zA4ZjBqNhbfE5XwT1Aunyi4Tpyty2C9so7AAmwpd54c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iIDl+zHmjs57EgMmrfOIF1133xzuV4UNDOqEymvWsybbTl9nvERKQ/ZQ8PVjh/LPM
	UNbeg1omQ2Adi1iXk7CanjJ3Yf/U1wKeUkb42CC41kP/LxjIHjBhcPgLzNK6C2FMd4
	Uw+XIKVynNM3XHECr9MlZH9RPSgiGei962wEB8iNM8DUsEdS8AdqzHQMYdv6lfWXRY
	075wy7Gw6UWiRR9+xHq/HT0WCXWnG+CfCfPunSDq3c6GczAIrBKar8/6+pOwPN7Bk4
	VJWtKoB5xqBXgWjJ6AAFy1DG9ZxCFodJ/dqWcxvAoxuLqD78zbGEQmoVihEP6qUs3I
	ooprs/ZjsdZ/gW1IDIpK297WoiYdkp458NwZDD4IPLkfXescIfKfcGxqrBaV0zYv/R
	z2utwu9zT+EDoo9x4UN4O7Ql+mRncKKBGjThRCeA5XJli35EBvYolTu6ajOXDtRbkm
	IrpN5seB/zipU0RHnyswPRczhpsSXdU1LA94cBkpjE5Py1ZTc+CtkLxqTZCJHqmXWD
	8RpyUhplHVdu2Ypscvbmt8mFhgOR6XuSaXJcdRJhg5/w1Fl2sHWcI+xx3+AAv0ZciL
	xbFbju9goAQGIXFhJekJ7XRF+p+d41NsgAlVQ/3+04V54a5Jwt3kRvW0wk8evPluRl
	CkpydihjfGSaHjyEI4/ujLm4=
Date: Sun, 3 Nov 2019 20:25:12 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20191103182512.GA28946@localhost>
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
	<CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
	<097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
	<CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
	<352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Yocto Project <yocto@yoctoproject.org>, Steve Pavao <stevep@korgrd.com>
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Sun, 03 Nov 2019 18:31:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun, Nov 03, 2019 at 05:56:45PM +0000, Andrei Gherzan wrote:
> On 3 November 2019 13:18:53 GMT, Khem Raj <raj.khem@gmail.com> wrote:
> >On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan.ro>
> >wrote:
> >> I was thinking about this. The erratum seems to show that this
> >applies
> >> to all revisions of a53. So it sounds like we should add it in
> >> `tune-cortexa53.inc`.
> >>
> >
> >Up to r0b4 only so maybe not all a53 implementations are impacted
> >
> 
> As far as I know that is the latest revision. Do you mean that newer revision might come up with this fixed? 

It is fixed in some r0p4 implementations, indicated in REVIDR[8].

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


