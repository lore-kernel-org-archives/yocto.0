Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9D21E0094C; Mon, 24 Apr 2017 09:10:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D1B8E00839
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 09:10:43 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id z129so18431995wmb.1
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 09:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3lTFvUMUkRxYYPIvTjWkm5ncz01s6svRETXIlx9LZvE=;
	b=sbd1zSqvGMU0230B3GbDzDuJMGpbLhSrLGyoopjgc+m48TY7oioOzOj9ODzRsqsPh+
	OIslTXTxWbEoLRsUZKkTREMzN7IZcBVtVAHzsddg5u5Ree6gbLIcD76XIyeArzaXZvpE
	/okzz5++R4Jb8vRF5p5+HFEasl4NBc9ZFNPt/D8h1yT1VGu97rSFYT7ZODg9Y1qi4Uvt
	emqjJ2fzHWlUUM7D+dJhL5W2QCqtxTos4nbVC+AD7vYNn6Sl6AyvkkdKV9diyEZQPfPS
	5Eu1ynOlTMKuG971EZ31ZMnHRScZBmE6URX8xqYJ7I+/WO+r1uyIK2Fvf6pw5acKtgnL
	kp6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3lTFvUMUkRxYYPIvTjWkm5ncz01s6svRETXIlx9LZvE=;
	b=sxtFb8kqk/M07YJpWkOqS2NcmsAOaOswCfKxQoAhjJfxU14FRKXcyXpDGg+b7JIB+A
	XxU20wbl6TQEWB0lDQlplLTX1WC+pCQBM9bLEslzPQuba2iF9wETMC7Jn7Wnh9m2ek6v
	C06orBWyipjjaDiL2rHZ4GDTtbDhUOszosX0elCYs2DhqkAwogx+JMay6GBwV3/8Q4BV
	bFjp4t6uOLBw3CmFzY1ho+fGEe7GkEBb//oxdYU/V9TAj1YyR/qQZ9mJE/aHRTNDP+PE
	uDuN6POnCIq61Z6Qm3yMMaGy9P+xK24MNSPnCArZKYeeefZz4WoshSADH8E6dNvdWPp/
	CbFA==
X-Gm-Message-State: AN3rC/7stoVB8uhnb1kCbPFy0AVjt5pn3CyUORlyXcIay47FwdWttm3n
	Q1eWuUcbHltnqlKDAQ+HjJZccqzQCg==
X-Received: by 10.80.178.228 with SMTP id p91mr1654343edd.131.1493050242763;
	Mon, 24 Apr 2017 09:10:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Mon, 24 Apr 2017 09:10:12 -0700 (PDT)
In-Reply-To: <CAJTo0LZJSZ-UJc7zTyYNf3YYKFD3mu=-zprQroZwxB1SZBQ+Bg@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
	<CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
	<CAJTo0LaWkRxjaF4j1HHhUqFDYYTmGADTuiLo8zqPwR+wKSbY2A@mail.gmail.com>
	<CAJTo0LZJSZ-UJc7zTyYNf3YYKFD3mu=-zprQroZwxB1SZBQ+Bg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 24 Apr 2017 09:10:12 -0700
Message-ID: <CAMKF1spRYm9yYhOVzOcA+5BPjATW_gLZfKmBCkZgj0MKZX=YmA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 16:10:53 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 24, 2017 at 8:54 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 24 April 2017 at 10:47, Burton, Ross <ross.burton@intel.com> wrote:
>>
>> The updated glibc recipe doesn't appear to be very happy:
>> https://autobuilder.yocto.io/builders/buildtools/builds/240/steps/BuildImages/logs/stdio
>
>
> Note that every nativesdk-glibc build is failing like this, so that's SDKs
> broken.

thanks, yes I haven't been testing SDK yet, whats the gcc version on
your build host ?

>
> Ross

