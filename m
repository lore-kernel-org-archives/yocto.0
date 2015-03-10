Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2095EE006E9; Tue, 10 Mar 2015 09:24:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E52E4E003A8
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 09:24:52 -0700 (PDT)
Received: by iecsl2 with SMTP id sl2so21002716iec.1
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 09:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=LU9QQQCNwNN2GB3VkJ8jZx6TqKmm67+eMq7mfoAmKpk=;
	b=mDhE/M13UQ5Z+x4r/BXh23ub62ywLJ/gBLOYhRcaPPWU5R+HWTtgm59m4o85XuPuD5
	fRJtcSja1+ZfqPq9ru4Bvi7WIYCUgNqm38SCc/gJnvzGrYwgEz1R9QAaKxfrrqgy8dyY
	PXnEfRw2gwLiiVri9TdXRgwwiY6ojouk4aMdB+4Ni7TfD3+H41VdC+ZmtC0Ue57qIlct
	t5WasGedihrd7ThzPl9eMax4qF1m+f8j+wbuNJkfkWYlM/E5nsPoRJ3rlzFji2TUWxT+
	txse96vQGh6ekXUxHSUTSLEVHG7jzSLpTW7Q5nFkeKecrLoz4+WlxE/Tzq6atcG+K89R
	Ns9g==
X-Received: by 10.50.124.133 with SMTP id mi5mr58821843igb.13.1426004691744;
	Tue, 10 Mar 2015 09:24:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Tue, 10 Mar 2015 09:24:21 -0700 (PDT)
In-Reply-To: <CAAKMwiqF-Jok3qxmdxwDATVwRGopnvUzjgo5pG+dSHpqa=gKXA@mail.gmail.com>
References: <CAAKMwiqF-Jok3qxmdxwDATVwRGopnvUzjgo5pG+dSHpqa=gKXA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 10 Mar 2015 09:24:21 -0700
Message-ID: <CAMKF1sp5qomhc6Wa+DDOAGs7KK8idrnHdEZtp-qyXBDQwn=zMA@mail.gmail.com>
To: Kai Ulrich <kaiu@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: created layer smstools3.
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
X-List-Received-Date: Tue, 10 Mar 2015 16:24:57 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 10, 2015 at 2:38 AM, Kai Ulrich <kaiu@gmx.de> wrote:
> Hi,
>
> I created an layer with a recipe for smstools3.
> You can find it on https://github.com/kaiulrich/meta-smstools3
>
> If you have any comments to improve meta-smstools3,
> please tell me (It is my first layer / recipe :-) )
>

good one although, I would ask if you plan to add more recipes to this
layer, if its only 1
then you can consider merging it into meta-oe or other relevant layer,
that way you also
get larger userbase helping you out.
if you plan to maintain it then consider adding it to layers.openembedded.org

> Friendly regards
> Kai
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

