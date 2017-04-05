Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4615AE0094C; Wed,  5 Apr 2017 06:38:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6C50E006CD
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 06:38:42 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id 9so8063098uau.1
	for <yocto@yoctoproject.org>; Wed, 05 Apr 2017 06:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=xKAnnCobR4KHyHrFCOwEfS3+o/6rck6SeS3d0wSgEm4=;
	b=Hh4AwFcmuTIJXf42ygTEDWGHtSRLyQ8swgDi+mOCq9DmxLm0MWMB5GNPphueUeSMb2
	C9DvBb6q6oGssxV+qnS9+ZIC5qHgNhgKe3Idnc6oU8ZIjpIm3Nr3okAmtt4XeGpYPNg6
	dNfm3cNL5nMxYw+UlF1Qdd3CMelMRRHdqlToxdSJq/RFoqov1kvu7fOfXoFNkQK2jAFV
	87XcbzjY/5qodKnGrtqqdat/Qoriistq7WLKCSgulmp+gSXfwGn9Plx4B4iUPE/dNl4l
	Zls6nPp1PKllZQ31JF2TrtZZFIYUDtja0NNJ7riE1UYYkIRCemnyjJylHXZpSAIBHOav
	ci3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=xKAnnCobR4KHyHrFCOwEfS3+o/6rck6SeS3d0wSgEm4=;
	b=WQejNF3ne8DZq2FtoiQ++jnm/IDlMU1Digi05qv7nyNjmte7reCquiPoNZ5AQVZvUE
	WYc7zS8TdDAm/1cYXuB1G7471V+hwokcg4/yTpPUfBFfjJR3GOOreFPVc0GMI2ukejq9
	c8VNgbfIofrbasUsNpnNXgWVJqEWLDWiBdzER/k4l0nKsC8qdUvKMRb2tpiyXIuWetmV
	COnnhquRrk9nf2LbgjHnRX64fd1gOQheUcNEQc5Wd41aOZ88SiJnReWSoB01ryL8fuyM
	BU7yTcHaJG/tAodHZSsoklWIkUP1BIudYzww+LdFFnnA/aMNSxF/wOoJ4PJPUgoouoM0
	bZ2g==
X-Gm-Message-State: AFeK/H2W7dvBbtj0NrlpD9xul6xQyxhXC3TIqIXfBj0tSjdi2LQeU0gfGMO3v9ZkKLJ6hxcR5K3daVwxga3KOg==
X-Received: by 10.176.84.209 with SMTP id q17mr14854932uaa.129.1491399521464; 
	Wed, 05 Apr 2017 06:38:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.30.70 with HTTP; Wed, 5 Apr 2017 06:38:41 -0700 (PDT)
In-Reply-To: <1491398578.25991.24.camel@collabora.co.uk>
References: <CAFq4t4gV3N8Z0epsq7K5dprhsBHu+Yk-UnNAQL4QF68AxceVjQ@mail.gmail.com>
	<1491398578.25991.24.camel@collabora.co.uk>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 5 Apr 2017 09:38:41 -0400
Message-ID: <CAHUNapSu=Cg2cDH2Y1MWOAzLvf3FkVnYuPvX8bN0GJeMrvnpCg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GNU/Octave
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
X-List-Received-Date: Wed, 05 Apr 2017 13:38:44 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 5, 2017 at 9:22 AM, Fabien Lahoudere
<fabien.lahoudere@collabora.co.uk> wrote:
> On Wed, 2017-04-05 at 14:45 +0200, Peter Balazovic wrote:
>> do you know is there recipe for GNU/Octave "https://www.gnu.org/software/octave/"?
>> Is it possible to get it running on Yocto/Linux machine?

In general, when looking for a recipe a good place to start is the layer index:
https://layers.openembedded.org

After that, google is the next place to try :-)

> A quick google search return this :
> https://github.com/openembedded/openembedded/tree/master/recipes/octave

That recipe comes for the "openembedded *classic*" repository, which
was abandoned years ago. So it might work, or it might needs lots of
tweaking to get it to work, or it might need to be rewritten.

