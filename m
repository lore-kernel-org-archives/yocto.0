Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE2E2E00997; Tue,  5 May 2015 05:18:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C18BEE00961
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 05:18:38 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so191257619pac.1
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 05:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MSWzPe56gUOoUjxt12grdV1AS1mtoP0p9rsg1LNMEPQ=;
	b=I1Sk0ku7cvlAlvzBedkggy+n6TqJOcPLyqGhDRzPL8RzJOjvGIIfq0iMK5Xw6CvOgG
	0khbgKCJfBLwkA6+vjDXV8JeNfjwnDFNkBv5jrnO77rrVTTsyCugl9gDJEH3JGD3NcbW
	IyFjG1pLrrxaUNjj2L81Pn6lsG1AuuA3i8sD829m4XJO40wt+/Q6RzflXwEXNFkPAahX
	FSUUFIkNtPxxaneA1UwzjMHLwME6sOf5PBYqNtHl8pCJ/C6oZ9dcKPWVzBXkD54h0PdR
	oZY4uxDP3m05i6o9dkBKKD3rfdIPTlBRfKIqm3dFWpztoDxC1Wy/GGF2MewN9RR6Eiia
	GyxQ==
X-Received: by 10.68.108.65 with SMTP id hi1mr50655440pbb.129.1430828317883;
	Tue, 05 May 2015 05:18:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.134.227 with HTTP; Tue, 5 May 2015 05:18:07 -0700 (PDT)
In-Reply-To: <CAJTo0LaSikiMXp9G15QJEG7XebOEKMLkCyk1-=GvphW9wVxONQ@mail.gmail.com>
References: <CAF_dkJBEt-p6_JOvvO7f28ybgPNGNq28qja+EeP2f1yysqH18A@mail.gmail.com>
	<CAJTo0LaSikiMXp9G15QJEG7XebOEKMLkCyk1-=GvphW9wVxONQ@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 5 May 2015 08:18:07 -0400
Message-ID: <CAF_dkJC1jTFSRUADksDt4BzeJ9AoGr15xCvu42f2ov-S_-2E0A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QEMU support for SD/MMC card
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
X-List-Received-Date: Tue, 05 May 2015 12:18:41 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, May 5, 2015 at 6:40 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 3 May 2015 at 22:24, Patrick Doyle <wpdster@gmail.com> wrote:
>>
>> Can anybody point me in the direction of running an arm based QEMU
>> with a (simulated) SD/MMC card?
>>
>> From the documentation for QEMU, I see that I can pass a -drive
>> parameter to QEMU with an if=sd option, which sounds (reads?) an awful
>> lot like I can simulate an SD/MMC card.
>>
>> But looking through the Yocto supplied runqemu script, (actually,
>> runqemu-internal) it appears that only supports -hda or -virtio disks.
>
>
> I've no experience using if=sd, but at the end of the day runqemu is just a
> helper script, you can pass the right arguments to qemu directly or patch
> the script locally.

Thanks Ross.  I've been fiddling with that a bit (a very little bit,
being distracted by other, higher priority tasks), but haven't figured
out the right incantation yet.  I may have to (gasp) look at the
source code :-)  Or maybe the monkey in me will eventually press the
right combination of keys to make it work.  The lazy programmer in me
was hoping somebody would say "Oh yeah, I do that all the time.  I
just blah blah blah".

--wpd

