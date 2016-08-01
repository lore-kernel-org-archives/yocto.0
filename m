Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F16C4E010A6; Mon,  1 Aug 2016 06:21:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07CF6E00E5B
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 06:21:02 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id j12so171387153ywb.2
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 06:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=aKBGKluqP+8TfyJvtAMalPPWz3JZCiEgQ3m18c99S4A=;
	b=0x3SZbU5HM0rV84rP0S4Isp9aXQ3GdzIAf4MLBdnzkcKT+rPoRjzAW2vnvOTozuQ2g
	AMmZDUZ4tX/23a0ezr3A93Nkkwt4GwaiJWUds9j/eqauaZD2BhX0wRvfqWP3mBnk/EfG
	vbboWMBwvm+N2j5BhddbHA3gUcCwW8m3/d1vix6zoQ17JFnovopLPslTaLSLuZT24nRx
	G2wCFG8+YozV+2xyU961R5tcM38AUus2b5Q3P6A0KQd6biC7ILZxuLn6bZy0mqPFu7R1
	Ksyp9gOUzxsN2WBV+G4freIicXrzRrJ1fpJeLYTjkkAtO7yjV5i2Mx5e+nKxKwhMpWk8
	STgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=aKBGKluqP+8TfyJvtAMalPPWz3JZCiEgQ3m18c99S4A=;
	b=Qjg26lGatc7MORakdV5xz5SzjHvcd50z+uS9avWInkGAYTNl2QAg99VV4x53FQ3CLL
	H2yYyWIof7JU9tsMd5Tq2LSn9bCYzcjAfNmzzHrJb6Pu8VJEqGW4PiDqQJz4BLPh9wKW
	H2TJUzAakiI47z7B5KY3AGPKWxH+o3KDldHZmtT/7c3rXm0dmfk7HZLr5O8gt19fLoRW
	J+/G4P6SVbCdSRWgMdPh9YlPAnLwAEG9M563wfnRWvxhiNrxH6P1Bk349UlpJ8FSfeAf
	w5xsmzAhrHS0XN0u5BD9lLGDFHPrzP8GAFCdYY5EgIM/teerZ0LtXzVyZqwz3Z/LIRgA
	42dQ==
X-Gm-Message-State: AEkoouvsfrugyutX2/NAwqEXBnQJLd4rMyTBFIlRfQ+zNAPQCMp7+FFuRAVYtOEGlJ1xevD+Mk4Y2aHVG/kLBQ==
X-Received: by 10.37.40.131 with SMTP id o125mr43509691ybo.70.1470057661867;
	Mon, 01 Aug 2016 06:21:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.130.134 with HTTP; Mon, 1 Aug 2016 06:21:01 -0700 (PDT)
In-Reply-To: <CAFZh4h_h5mU9_dDRiu84p56y+x80_J85q=LjQsy=3DTZt4jw_Q@mail.gmail.com>
References: <CAFZh4h8HyfyfzX8m_jZWzUuOEJ4dnndxHjH67s9urxQVM5PKrw@mail.gmail.com>
	<CAFZh4h_h5mU9_dDRiu84p56y+x80_J85q=LjQsy=3DTZt4jw_Q@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Mon, 1 Aug 2016 09:21:01 -0400
Message-ID: <CAFZh4h820UUrUORaVcnvHa_4EpUhhFXdCTNco102hs9qytSz7w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.8.1 - Insert USB VFAT thumb drive results in "Volume was not properly unmounted. Some data may be corrupt. Please run fsck"
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
X-List-Received-Date: Mon, 01 Aug 2016 13:21:04 -0000
Content-Type: text/plain; charset=UTF-8

> dosfsck 2.11, 12 Mar 2005, FAT32, LFN
> Starting check/repair pass.
> Starting verification pass.
> /dev/sdb1: 284 files, 60465/62894 clusters

Another update.  After seeing guys on the Raspberry Pi forums
complaining about a similar thing they hinted that dosfstools was tool
old.  Sure enough, I ran fsck.fat on the USB drive from my Ubuntu
machine and it came back with:

$ sudo fsck.fat -a /dev/sdg1
fsck.fat 3.0.26 (2014-03-07)
0x25: Dirty bit is set. Fs was not properly unmounted and some data
may be corrupt.
 Automatically removing dirty bit.
Performing changes.
/dev/sdg1: 142 files, 60465/62894 clusters


... and now the USB drive mounts without complaint but I modified my
box with a mount.sh from a previous release trying to get to the
bottom of what was going on.  Now I need to put everything back the
way it was (restore mount.sh from 1.8.1) and see if it is still a
problem.

My kernel had the USB-persist feature turned on when I first noticed
the problem so I'm not sure if left over files (not quite sure how the
feature keeps track of things) from that could cause problems.

