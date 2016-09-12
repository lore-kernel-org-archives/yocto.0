Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77D5BE0086E; Mon, 12 Sep 2016 10:03:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.68 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19260E007B7
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 10:03:47 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id 2so23116133oif.2
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 10:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ln7fldy++6XDSlZRqdM3XuO6KP1+qoYMEvlYfoFRjxM=;
	b=0Q6j60sji5ziWhRjg5Q391Mcqjpfp0BGOyVZmIHu/8KEWWlwfSlHQTZmElNinC2qfK
	pYmQZSgF7xU3w4xUJ0wl7/0HV6NHbuuVf1cQrpgkc/xTHlTWim3LeY7wQ4ujQCxF1gPH
	XTdqtS15nSvbwPYOXdJuWKRKwX4d7x4W6OR5ObZBzO37kDMlEKOFwul6nK7o84I1+B/K
	ug02NskGEOB/POHT3a1lT3Z61haAwqy+MQ7YVLrd6UzPK+/wJNBcHNHwI6lRiUOfZrfk
	eEoNjpN02mrvvuSGXgqsPX5SM+MwXHftdZF77ktPK3cQv36inqM0AfnKeK8rgyedIole
	vW7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ln7fldy++6XDSlZRqdM3XuO6KP1+qoYMEvlYfoFRjxM=;
	b=lp0OTiT+64APHbkyOT5B0f9TeQbue+7BBP87LItA79DSDtwWIMsPI0smyATx38LCZs
	IpQc4moEKj/62WlsQM4Aolzv9ODoWBrqfXTLThKgMDKCoBW4LKFsJWGeTDhMzN+QE2yl
	TsCmjb+7zf0PiyPqXnBMSa3TrWFeqfzoQkJy9Fx3CZNFIcLr7hi8vQAtBndOsZi1SLot
	iLIQ/Ah6BaYFH82RjzgcZJm5V+L8dw1B7La90ag+h1aEHNFmWaTaobIJzna0YLG0iikA
	13ywWeIk0Gsc2K/ho9madQ1VgoSIr1WRzQCz0VP+a6EvoXEVxHRWjKWfmOE9KyX28Bwi
	CqDA==
X-Gm-Message-State: AE9vXwNAc0KnrlInXEYzstVFL2a7MDFBLxBrNnur4omHGM7/xTRl77EDKp1T0ZnErmPlKAlz8cid4DjE5Ibt4g==
X-Received: by 10.202.245.206 with SMTP id t197mr1594296oih.162.1473699827109; 
	Mon, 12 Sep 2016 10:03:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.79.208 with HTTP; Mon, 12 Sep 2016 10:03:46 -0700 (PDT)
In-Reply-To: <20160912160242.GB14313@csclub.uwaterloo.ca>
References: <CALRMKQqgbk9Oj42figT=iXqJJfhHRgTjQ9PkUtwTUEzUomyX=w@mail.gmail.com>
	<CALRMKQqP5KT+batqRh20AbO=jSWKRhYrhtWF=SzHms0LwfMsLA@mail.gmail.com>
	<20160912160242.GB14313@csclub.uwaterloo.ca>
From: Ronald Oakes <ronaldo@brc2.com>
Date: Mon, 12 Sep 2016 11:03:46 -0600
Message-ID: <CALRMKQqrEeVMcN=TnfLB5g1PP1oQCbMmKVJ97SjSK28MxutY3A@mail.gmail.com>
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Naive Questsions about 3rd Party Kernel Module
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
X-List-Received-Date: Mon, 12 Sep 2016 17:03:49 -0000
Content-Type: text/plain; charset=UTF-8

I was able to resovle my problem (with a bit of help from Google and
Stack Overflow) by including a stub version of __stack_check_fail() in
my recepie.

It appears that the shared object libarary was not needed after all,
and was just a red herring in my invesgagation.

Thank you for your assistance.

Ron Oakes

On Mon, Sep 12, 2016 at 10:02 AM, Lennart Sorensen
<lsorense@csclub.uwaterloo.ca> wrote:
> On Fri, Sep 09, 2016 at 04:02:21PM -0600, Ronald Oakes wrote:
>> Following up as I've done more investigation and debugging this afternoon:
>>
>> I've been able to resolve my problem with the missing symbolic link to
>> <filename>.so by explicitly including a runtime dependency
>> (RDEPENDS_${PN}) to the -dev module, so my link is now present on the
>> filesystem image at boot.  I've also found reasonably strong evidence
>> that that library contains the function __stack_chk_fail; but the
>> evidence could equally indicate that that library calls it as I found
>> the string using the strings function.
>>
>> Either way, it looks like I have a critical kernel module, and a less
>> critical kernel module, that are relying on a shared library that
>> either are missing on my image or are not available properly in kernel
>> space.  Any suggestions on how I can resolve this would be greatly
>> appreciated.
>
> Kernel modules only use kernel code.  They never use user space libraries.
> It simply doesn't work that way.
>
> --
> Len Sorensen

