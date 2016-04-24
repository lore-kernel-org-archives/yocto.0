Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32180E00C73; Sun, 24 Apr 2016 16:17:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AFEDE00C39
	for <yocto@yoctoproject.org>; Sun, 24 Apr 2016 16:17:16 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id bi2so52420104igb.0
	for <yocto@yoctoproject.org>; Sun, 24 Apr 2016 16:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=vmZBPTi4zsO5764fjnq+FWIfRGLMVrVcjXI2i7h9BnU=;
	b=xI8OASe+lwhm1FqmwY989S2z47muVWuAGqCVeKQ6+vOow2oz8ZuGobwwrj6Q5WJSfc
	Ki3TwuVboItBt62KBnT+QUPnKKcw5gVgDtIIEGWfYa1zPboi7TSQ7oyB6L5wDUVwY6RO
	UOmhtiDpwiYUUKrxaSSk0mRGqVa5cQIA3q4ZQ/g5Fab2Ejf0DCiYoJy0athpKNVpaHe8
	1+mMqSj6MmN0TPsfSNdlJvS404NSt/Uf6SfPoopanBwTef1Sx1s7nWugdDV7AuaUSV3d
	2rbkJE2MFs2TYGjACDRJV0uG0/Bw/pAM24TUOhOmEmjXv1JKbNUqao0lFkdSa1caQR6W
	/XGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=vmZBPTi4zsO5764fjnq+FWIfRGLMVrVcjXI2i7h9BnU=;
	b=LqlsEa1ynagLtLqNm9L7XO60V62L3Bpkn6cz+GXBNc0NPYV66b+qG7ebWGhy9g5u7z
	+EwaOvuXcf6ODKBnAKBL3cZYTT/YVh5PGteJpym38oifyML0odJOyaPhdQM3Gxwu9pu9
	x6uxTgb5kDnf0OQYqPgFYzBZVPSucyYFsJckD2sXv5lbA2GvZwdWlEByuqZf1LMSG94q
	1VYitvjVnjybRgEgwlpoRZmYNCxSF1vD2yIruJF3XC4aOBJJoPxpA/o/ka3P26CQaA65
	MCQEH/6HyXyMbBpvkSSgADDQ5OxAVBjqSTNU7CgYwmvtbkcd+uffAa0d8P0pMgakWJJp
	VI7Q==
X-Gm-Message-State: AOPr4FVsFV7mCC0GuEhxiy3Agrj7R5SevLbZFl3eEU6f22LiSVJrevUOeR2KgmkENC9I2A==
X-Received: by 10.50.9.202 with SMTP id c10mr9443345igb.46.1461539835688;
	Sun, 24 Apr 2016 16:17:15 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id jk7sm7678682igb.3.2016.04.24.16.17.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 24 Apr 2016 16:17:14 -0700 (PDT)
Date: Sun, 24 Apr 2016 19:17:08 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160424231708.GA7573@linux-yxv0>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E570F86EE@fmsmsx111.amr.corp.intel.com>
	<20160422170410.GB23308@linux-yxv0>
	<CAJTo0LYnK-sd+d1bkJN39AhkAN0t+42Nonm38Qyy3BXm1nLYdw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYnK-sd+d1bkJN39AhkAN0t+42Nonm38Qyy3BXm1nLYdw@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW17
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
X-List-Received-Date: Sun, 24 Apr 2016 23:17:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2016-04-22 @ 08:29:19 PM, Burton, Ross wrote:
> On 22 April 2016 at 18:04, Trevor Woerner <twoerner@gmail.com> wrote:
> >
> > Have the eSDK and CROPS projects been announced publicly? Are they
> available
> > for us to "play with"?
> 
> 
> eSDK is the "extensible SDK', or what appears when you do bitbake image -c
> populate_sdk_ext.  This should be in the manual already, the tl;dr is that
> its an SDK you can manipulate after installation.

Thanks for the update.

> CROPS is docker magic to do builds on Windows/Mac.  Todor did a
> presentation at ELC: http:
> //events.linuxfoundation.org/sites/events/files/slides/Todor_Minchev_CROPS_ELC_2016.pdf
> <http://events.linuxfoundation.org/sites/events/files/slides/Todor_Minchev_CROPS_ELC_2016.pdf>

I was *very* excited to learn about CROPS at ELC, which is why I was wondering
if it was available to experiment with somewhere?

