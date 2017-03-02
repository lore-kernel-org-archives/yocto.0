Return-Path: <cswarth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E13AE0095F; Wed,  1 Mar 2017 17:14:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (cswarth[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61576E00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 17:14:54 -0800 (PST)
Received: by mail-ua0-f182.google.com with SMTP id c11so10863328uaa.0
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 17:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KTCM6shaas5MJij0hT/szGHuU4vatz6e5axHWltYkuI=;
	b=avC7RscIef3xKUmaAomIrglSDUVb0tsgU51pJjm4Z2Fq9/hKDL2WKB7G4LLesbC0y6
	kCYDneAxfg9En/MsDjhVK5TXyj5pxDCAyUj3/+aUCFF8k6mVRylJ9XD/U4taPN819xG3
	2VXdY4vG6BJ3mXcDGOUq1bChGQUaddI9VP5u/WtVxCIVvQYXlNcpc2taww9kiPinuGSb
	a3cwM3wuXusRIJnMXSB3p2muvIt8LkXt8gqMRSR+Pox3AR0BQbW3pY5ugVnCF9oKn0h2
	Ob3PwEuAZx18gWf2EqyCookwz46Wqdfh2jVDkSbiW5yOEaEAm5+gBO/RR0vlyj0Oh15h
	oitA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KTCM6shaas5MJij0hT/szGHuU4vatz6e5axHWltYkuI=;
	b=dxBurqEoWNUCCsSObijlbCyE0b9CTXkqCFN9uSWo/3ffoxO6kM0icK3zo9GGUuaQZc
	SniGEyVQ5Zmb15BUPPBWTyn/BFzJ1yNseRgB2Q9P0ZoNcWANvyiivwcNsXqYXlee7uzC
	p8+6VQt7O2sI0bBpfv1V/vByXs7hj2OuF60Otf7+ySdIPfVdBhnMDgb6jLROqx4rZG2D
	wCYZJVuu0Xw7RcwAyANdGng9K5IGNy1xcjwdGsSvO7tFaS+aMtf6kEqBDLuGMbY4mfSr
	P7ddErSOIHYS3cbBZHsPWnEWmCH/2tVWNoDB7FUDYYJItfgS+LaO/LbsrMBCACIBgnZi
	NItA==
X-Gm-Message-State: AMke39kOuNrKJq78QrH0Tn9ObyY8Q2ifWs59xQhMoA3HkIXKlkVzl3ba7gbSWaOVuSEkFY3A59lxuSOW64THXQ==
X-Received: by 10.31.200.199 with SMTP id y190mr2006971vkf.115.1488417293559; 
	Wed, 01 Mar 2017 17:14:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.105.208 with HTTP; Wed, 1 Mar 2017 17:14:13 -0800 (PST)
In-Reply-To: <1669316.G5xAQX6A5S@peggleto-mobl.ger.corp.intel.com>
References: <CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com>
	<CAJ86T=VeFuhgGmwFZDpb0o8QRpS15gCokcR8rRg62n_n=kVN3g@mail.gmail.com>
	<CAJJmP9C_AZJBzSs2XQp0enTzLgUaazmcF3FYD_Y6_zTVKkh0XA@mail.gmail.com>
	<1669316.G5xAQX6A5S@peggleto-mobl.ger.corp.intel.com>
From: chris warth <cswarth@gmail.com>
Date: Wed, 1 Mar 2017 17:14:13 -0800
Message-ID: <CAJJmP9B9YmS37pB21KzCcpB68AwfghkQZRY510e=uPofoPaJHA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BBMASK not working for me?
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
X-List-Received-Date: Thu, 02 Mar 2017 01:14:58 -0000
Content-Type: text/plain; charset=UTF-8

Thank you, Paul.  I didn't know about bitbake -e.
As you predicted, it shows that an earlier layer is setting BBMASK
with equals, in this case the
meta-freescale layer.

BBMASK=".*openjre|.*openjdk"

Should I be mad at the vendor for being careless?
Is BBMASK_forcevariable the right workaround for this?
Or is there some layer priority scheme beyond the ordering in the
bblayers.conf file that I should playing nice with?

Thanks for your help, really!

- Chris

On Wed, Mar 1, 2017 at 5:03 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Chris,
>
> On Thursday, 2 March 2017 11:31:42 AM NZDT chris warth wrote:
>> Thanks, all.  I wanted to share the solution.
>>
>> This vendor-supplied version of yocto looks like 2.0, so the space
>> separated expressions are not available.
>> After putting some print statements in cooker.py I discovered that
>> appending to BBMASK in conf/bblayers.conf or conf/local.conf has no
>> effect.  It was not until I modified BBMASK_forcevariable in my
>> conf/bblayers.conf  that I saw any change in behavior.
>>
>> BBMASK_forcevariable = ".*openjre|.*openjdk|.*qemu_qoriq"
>>
>> This inability to modify BBMASK unless using _forcevariable was also
>> noted last year.
>> https://lists.yoctoproject.org/pipermail/yocto/2016-September/032033.html
>
> That sounds strange. Did you use bitbake -e | less to see where your non-
> forcevariable setting was being overridden? More than likely you have a layer
> or some other configuration you're bringing in and that's simply setting it
> with = at some point later in parsing than local.conf. The history of the
> BBMASK variable shown through bitbake -e will tell you exactly where that is.
>
> Cheers,
> Paul
>
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

