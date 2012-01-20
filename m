Return-Path: <autif.mlist@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D563E00307
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 10:00:30 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so738717vbb.35
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 10:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5ne/Vhypl5rEM+ESGl1yBwifOjvwlLbhd+JiPXvV9ME=;
	b=kBeGZ979DqKWYdBBZo4lUJ1jzjS2XfVO9DlwFgtpt/NBMIB6dZms1ws3dva0RkEbb3
	m/LeDvbtbTFTFqp61ODVaGjsIdJWeYkawaJQB1P3IjhH/jrj81Dx6L6WfNhHLPx59OI8
	jmjJHyG0qPgeCFRuJW3FmJp6vnyOY/nQJw2iA=
MIME-Version: 1.0
Received: by 10.52.174.102 with SMTP id br6mr15182771vdc.68.1327082430289;
	Fri, 20 Jan 2012 10:00:30 -0800 (PST)
Received: by 10.52.108.37 with HTTP; Fri, 20 Jan 2012 10:00:30 -0800 (PST)
In-Reply-To: <1641254.ZQ0cu1g22E@helios>
References: <CANFv2En8WfmoBpzqRYU9hhOH9aCMGTBgML41Ee+uaXc1MJrNjg@mail.gmail.com>
	<4F199299.4000003@gmail.com>
	<CADzUK1Lh9sDeiyXxo-K73FrHEz==kBDO=N_mH9GeGMSKYhPEzw@mail.gmail.com>
	<1641254.ZQ0cu1g22E@helios>
Date: Fri, 20 Jan 2012 13:00:30 -0500
Message-ID: <CADzUK1+XZL7hFPMXWDftE=uMYjv6wdpOazyUy+pYut0k9j_gAw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: core-image-sato-directdisk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Jan 2012 18:00:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jan 20, 2012 at 12:15 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 20 January 2012 11:54:44 autif khan wrote:
>> > Did you file a bug on this?
>>
>> I have not. I am not sure I should. I am not even sure whoose call it
>> should be weather or not this goes in README.hardware. I hope someone
>> chimes in
>
> So I would say if any of our documentation is out-of-date or unclear, it
> should be fixed, no deliberation needed :)
>
> However, in Poky master, README.hardware has now been updated to remove
> references to the old directdisk images. It could be that we need to
> explicitly add something like what you have written about writing the image to
> a hard disk, but for the moment it is at least no longer out-of-date.
>
> At the very least a great start would be to put your instructions up as a page
> on the Yocto Project wiki.

I have created a new link titled "How Do I" on the main page and for
now, this is the only entry.

Please take a look.

https://wiki.yoctoproject.org/wiki/Main_Page
https://wiki.yoctoproject.org/wiki/How_do_I


> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

