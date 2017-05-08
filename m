Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21AEFE00AE4; Mon,  8 May 2017 05:22:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF71E00A38
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 05:22:11 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id e55so39605504uaa.2
	for <yocto@yoctoproject.org>; Mon, 08 May 2017 05:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mr2pANm5D2IB9SxECmPjgkMgo66N8DQLKJsTmM1U+Ms=;
	b=NfUy3K3hldyZV5iFrkkuy4k1nC3RuI/Fkbap14cj3Ia3R+Qn/Lg1RFMCkPhOO7yXga
	u4Irg2abEj4j26n8/WgPnlUxaxrQdZ/6M91zYCv7pC+it9bFcwLkoU3F+nwTq8Qskgzx
	GbkqFv3IMIHxyj5TguAzau2YElr2JH0nDdDAxKG4RqlZSEBNgDegwnSFHq22uPES3Tiu
	Urk4zSyo+nsgOiDLhaBTaoXMJRpDc2VBneVcfBWvEhH9Dgi5Q/LMIKpL7Euoz6EdalUc
	U7BIpm3CJtjYV9X7wcrZaxlOY8R8wJf81IZqFz/k1rggSSb9r9M124Wzz/jtGwWF4NsE
	XW8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mr2pANm5D2IB9SxECmPjgkMgo66N8DQLKJsTmM1U+Ms=;
	b=e0SH3vZS3pbsVJOwGeFZ82eshuH6lmaB5XIIq8zLS/ofljf1UYbmspTACHJP5igWpG
	M4WE+bMUkNV4EEdFt7LMDLS+1dloDRz/7IXsuAd+8LEVcxUqO4GfUROFmsWtfp0PXdOC
	ETQ/q82bmRn9q02qFDtbahD/zb5h5Jx/vWs+fRD62is5ikTTEnpqaE552/v0xHa9/TMU
	A8TFAzfJHWJY+adJaQ9SXj3oGojum5r7XRq80T8VkA4AnXKs6795RoFd0JUI/ReFS4bI
	G501kJK8ta4e8r7q1ZHAY4PdHsJRGVn2oy6y/0gpO8XSs7w+4eDg+UMCVAKbXnc67JDr
	mQLg==
X-Gm-Message-State: AODbwcBboXCQZGaiWG88xoFCakPUL5DNTWFvZmxa+Z0X/iQR4Y5RP4g3
	0ddL5SsjjUJ5j87EwXRE8sFEi1NaZw==
X-Received: by 10.159.49.21 with SMTP id m21mr3903521uab.64.1494246130346;
	Mon, 08 May 2017 05:22:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Mon, 8 May 2017 05:22:09 -0700 (PDT)
In-Reply-To: <CAPyrkgxJVOert9x-8tE6C_BimzMxKy7bwsPG0rpqej9fnHxVdQ@mail.gmail.com>
References: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
	<CAMKF1sr-=PQm7-un_tAf1ndRBq6+0Kg+wnfDZfoXRhmw5Kg8cA@mail.gmail.com>
	<CAPyrkgxJVOert9x-8tE6C_BimzMxKy7bwsPG0rpqej9fnHxVdQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 8 May 2017 08:22:09 -0400
Message-ID: <CAHUNapR0LBCm=HjCc+RS=QnST3YZ50YbBFsaw_2zbnO=8MMGYg@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Stable branch plans
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
X-List-Received-Date: Mon, 08 May 2017 12:22:12 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, May 8, 2017 at 4:36 AM, Paul Barker <pbarker@toganlabs.com> wrote:
> On 3 May 2017 2:41 a.m., "Khem Raj" <raj.khem@gmail.com> wrote:
>
> On Tue, May 2, 2017 at 4:19 AM, Paul Barker <pbarker@toganlabs.com> wrote:
>>
>> I'd like to propose the following for the pyro branch:
>>
>> * We should create the pyro branch within a week or two of the oe-core
>> pyro release.
>
> What do we get by branching early  ?
>
>
> I'd like to be able to say to users that all layers should be on the same
> branch, it's confusing if some need to be on pyro and others on master. It
> also makes our release much easier as we can point our scripts at the pyro
> branch early and not have to worry about future breakage.
>
> I don't mind as much if pyro tracks master for the first few weeks until
> things settle down, but I think it's really beneficial to have a pyro branch
> in each layer from around the time of the oe-core release.

+1

Initially we'll have to use meta-raspberrypi master to build with
pyro. But eventually one commit will come along that breaks. Then
we'll have to wait for someone to create the pyro branch then change
our builds. It would be easier if everything is on, and stays on, pyro
from the start.

Also, if, in the future, we wanted to go back in time to recreate an
early build, someone will have to remember that before a certain date
you'll need to use meta-raspberrypi master with oe-core pyro. Or if in
a year from now you wanted to checkout the repositories from June of
this year, it'll be confusing why meta-raspberrypi didn't have a pyro
branch by that point.

