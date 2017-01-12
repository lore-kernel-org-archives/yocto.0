Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BD15E009BA; Thu, 12 Jan 2017 09:56:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12403E0088B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 09:56:02 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id r126so30651230wmr.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 09:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ldf+qDPVj9YB70RRYjLqsnbIAOED0tcf2BYQ6hzfp9o=;
	b=iabIkGkNP7B3WKAOhQakZ5RTeNSqxi6Mc8Yiz3jM7LNDTwbnA+hurlR+muy/Jd33HZ
	4FdorA8uD2LCGHJE0+aRlBYmFngnVOxREoy5urHlSRcXs/xbvN6xLR9iWEihj76/doIg
	Rz0S5umDXN+HHPRWWnUkk8aSBMWmWkdG0OE/c29fqnwKo+0LhMI/j8XN/EqZWWvVQyPh
	BqOF7jscir1UBNGcHwiRA8ZpEyF7WJmBCopvpo5CSjxiwu6IEd0sStCLrsvObKYuQwEW
	5xEAo+mifWsHXZlay112pHCxD+m6owSiRcmS+kzLgWz5gKKMKhjY5qgUMmpHqMRBFi1S
	DaeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ldf+qDPVj9YB70RRYjLqsnbIAOED0tcf2BYQ6hzfp9o=;
	b=q9llXAJi5YaLzMpsSyr6TvO2qfAufqBEqlGsavHH5xnUOVybqVeovxGNgSK6CFoXof
	IZ2kHFlCrKWAReRvNprCRRS/xSE2xeeN/lo/OLi/0IykvbW3m9huzceyjd0ErXDapczX
	sAS8Z/U5g7XWZCKlYjk/oog7jnQcXJs4la48CNR55FtGp5RRh9C+KXt79zFSFGXEQ/0L
	T4pyPQ0fZA7HmxALahFMxorUq439qqF0x87vkpQ5oOeN9NsE4oYwLiijcvvfkIwqqBTF
	QE9Lzdo8N/ewNhVZwxhPDslfeoLoUxIeWLzugI4+jqlsRbcKeczN27Umia+eTBS8ANZz
	/eww==
X-Gm-Message-State: AIkVDXIAYKo20nBQNoDNi2FKFJNxsElXymiPKqDCCRiqZYPmmDxqHIi/mdEv/asCKKYWcDj5Ad5y7o9DybuZOA==
X-Received: by 10.28.100.70 with SMTP id y67mr5482604wmb.45.1484243762100;
	Thu, 12 Jan 2017 09:56:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.10.69 with HTTP; Thu, 12 Jan 2017 09:55:41 -0800 (PST)
In-Reply-To: <990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Thu, 12 Jan 2017 18:55:41 +0100
Message-ID: <CAD4b0_KFHF9o29giYkdJXA+RvwmTnHJ=V9ubY2Zz2s7Wwt7KoA@mail.gmail.com>
To: Tim Orling <timothy.t.orling@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 17:56:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2017 at 4:39 PM, Tim Orling
<timothy.t.orling@linux.intel.com> wrote:
> You can also build using Docker containers:
> https://github.com/crops/docker-win-mac-docs/wiki

IIRC docker on mac relies on docker-machine, which in turn spins up a
virtualbox VM.


>
> On Jan 12, 2017, at 7:34 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
>
> On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com> wrote:
>>
>> Is there any documentation for running the Yocto build system on Mac OS =
X
>> or macOS as Apple now calls it? I am working with the Intel Aero board.
>> Before I go down the rabbit hole of fixing issues like this one (and I a=
m
>> using the bash shell), I=E2=80=99d like to know if anyone has build it o=
n os x
>> before.
>
>
> If you install all of the GNU tools using brew or similar and put them fi=
rst
> on $PATH then you can get bitbake started.  Then you need to stub out the
> linux-specific bits in bitbake.  I've previously started on this work
> already
> (http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/dar=
win).
> The next step is figuring out how to configure OE to build and link nativ=
ely
> on OSX using LLVM instead of GCC.
>
> However all of this is mostly academic because in Sierra (iirc) onwards
> there is tighter security on processes, which means that pseudo won't wor=
k
> even if you port it to macOS.
>
> So unless you fancy some non-trivial engineering the short version is jus=
t
> use something like Docker to run a Linux system on your Mac.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Maciej Borzecki
RnDity

