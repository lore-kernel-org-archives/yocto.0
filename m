Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E2C7E00CF5; Fri, 17 Nov 2017 03:56:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B94CDE00BB7
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 03:56:42 -0800 (PST)
Received: by mail-oi0-f65.google.com with SMTP id l138so1459862oib.7
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 03:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=ekswkn9uPWftOmfsloPm3mAz5164wZ7BdaslfyTj/7Q=;
	b=rqHsI/FQTEx5AzuvMw9j9YnhY/BiXO55e9sIudOE0XrAE3fU4Wo+seHx+ujuzMzzNw
	M/UqDCcyIsZJDoyFY7nGPp0qL15jA9ahL7SmBUFXWqahJbH46kqTXrPKlvNoXpf3m95/
	AnluYq9aJL5KkoPdLNTXY3ZRoWPKhd16aoqEmXMGfdNTBIhjqZ6jOpIUrezAZm4K08HU
	aaAkCkA93xF1KvFIF2I4p0M+VOk2q4KQzUpuNEFQjvFDJBuhIOvowO1WFxhOtwpH8AOl
	kT+iEkn/leJMbpUsTGClrpkHthmHJOieDkvXXIB+ExNn+HmyN8rDxzXWNsvFomPsE1Ln
	PYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=ekswkn9uPWftOmfsloPm3mAz5164wZ7BdaslfyTj/7Q=;
	b=f8IdNaeLlmPsc4hyXBQrm6J7WshR5ak/gncGnWTP4sMNjKDSS95BMaNzVXmFSvhASS
	dTl12zm++dLpgoGC2mvDVLHOVv7bmrHih9+7yLsUllMHEuvXSpoudAzRfDhjNWkVI09I
	CvSvI/PouEKqPgtUfKgPMAtrOT85tqVomeqoF5mAbaot/dqfG1KeuDeyLkWD12EZOkur
	1lkcPSBxAyDVtQ4dNGLzStMqdt7R+MZvEd2NnY0idN3TI4bq66kXayWQpG0dC9KERaSN
	k15OIRHw2iZg11bVeR4HbytXOVJ2Mn8rZ1a72xJh2RTa3QzY1wbtwPNx2e0QKgFx/JFG
	DhBw==
X-Gm-Message-State: AJaThX6LeCI1N38zp5xFTykZIR8T9CaJU3pjmzCGNTjxjsx/9ZIfSbk5
	DJjLDg7yIwNcgA19bz5iY0AldyYr
X-Google-Smtp-Source: AGs4zMYZLYEWWJpioS06lXy0cjLrnSXiFMXY5lWDGW/PvO+byjrsAIov+GyFs2B16HqSzDG5obHvCw==
X-Received: by 10.202.208.196 with SMTP id j65mr971506oiy.185.1510919801611;
	Fri, 17 Nov 2017 03:56:41 -0800 (PST)
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com.
	[209.85.218.48]) by smtp.gmail.com with ESMTPSA id
	q185sm433055oih.36.2017.11.17.03.56.40 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Nov 2017 03:56:40 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f48.google.com with SMTP id y206so1467150oiy.4
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 03:56:40 -0800 (PST)
X-Received: by 10.202.59.7 with SMTP id i7mr926529oia.166.1510919800064; Fri,
	17 Nov 2017 03:56:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.17.210 with HTTP; Fri, 17 Nov 2017 03:56:39 -0800 (PST)
In-Reply-To: <1510913165.4514.3.camel@collabora.co.uk>
References: <1510844758-20290-1-git-send-email-martyn.welch@collabora.co.uk>
	<20171116172129.11b89562@lsandov1-mobl2.zpn.intel.com>
	<1510913165.4514.3.camel@collabora.co.uk>
Date: Fri, 17 Nov 2017 09:56:39 -0200
X-Gmail-Original-Message-ID: <CAP9ODKrh6YxyYk9V6yKg1kC13LA5-CYTftc6ws=Rpx4QBUoRUQ@mail.gmail.com>
Message-ID: <CAP9ODKrh6YxyYk9V6yKg1kC13LA5-CYTftc6ws=Rpx4QBUoRUQ@mail.gmail.com>
To: Martyn Welch <martyn.welch@collabora.co.uk>
Cc: yocto <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH v4 1/3] image.bbclass: add prohibited-paths QA test
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
X-List-Received-Date: Fri, 17 Nov 2017 11:56:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 17, 2017 at 8:06 AM, Martyn Welch
<martyn.welch@collabora.co.uk> wrote:
> On Thu, 2017-11-16 at 17:21 -0600, Leonardo Sandoval wrote:
>> isn't it this class meta/classes/insane.bbclass for this type of checks?
>>
>
> I don't know. The logic for IMAGE_QA_COMMAND is in image.bbclass, as far
> as I can see the package QA tests are in package.bbclass, so
> image.bbclass seemed like a reasonable place to put the image QA test.
>
> If the consensus is that it should be in insane.bbclass, I'm more than
> happy to move it though.

If not in insane.bbclass, a new image-insane.bbclass. I dislike it
being defined in multiple places.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

