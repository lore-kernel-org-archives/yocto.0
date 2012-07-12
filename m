Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1874E00344
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 00:38:51 -0700 (PDT)
Received: by eekb45 with SMTP id b45so713331eek.35
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 00:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=vnY4R3axcDa6n5JeFkpn0AzEe1b8VLBFSGIdROkTqoQ=;
	b=Mcx2q7dPpe1VJdTYIGA+H+DkmjwiT5GstW0SULxu9aKZnLubK72e3Y7bZ+gcx3k43a
	sROEJaTyBJnMS7/NECd/TA7dLgTH8Z5p7gLLWemTVr9QVZtYqMuq0Lu3zWvt0wC2CiZL
	8VK7lbxU+LZ5296Zdxb8q0YKadCk8ZZi6L506o1Sfl3xXiE1Rjx6CpHHdcBamjdwr4P+
	kqkHVxHdXSPJmw2chLQcRrdLvChBKEQZzZrY5l/Bxx7m9zSWAJeGYt5uNTJcmMeS0A5s
	gwAxLURentPatg7EEGYt4wzb/TD2iuuGTILgYck8pGg8EGhkMvmw9uIomzfMBk2q19X+
	iU0Q==
Received: by 10.14.119.202 with SMTP id n50mr12177479eeh.33.1342078730635;
	Thu, 12 Jul 2012 00:38:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Thu, 12 Jul 2012 00:38:20 -0700 (PDT)
In-Reply-To: <CA+Z6RkUFyCqtFWpqzUTN5_cR423L8OF=-cz+edGo=kKR0dW8pw@mail.gmail.com>
References: <CA+Z6RkUQy_rcRPe8OAKek+aNs-LG106C3aXfXTwS1_0ZbZB-kw@mail.gmail.com>
	<CAMKF1srSQB66-TmH_3Tt=ufFEVnN72=CY4u6QNodyHB79-AsYA@mail.gmail.com>
	<CA+Z6RkUFyCqtFWpqzUTN5_cR423L8OF=-cz+edGo=kKR0dW8pw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Jul 2012 00:38:20 -0700
Message-ID: <CAMKF1sr3XDQJOBRdAbSJZLGfJR8KuBsoU4zq4r22t2ptTgUWHA@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error while adding a new recipe
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
X-List-Received-Date: Thu, 12 Jul 2012 07:38:52 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 11, 2012 at 9:03 PM, Navani Srivastava
<navani.srivastava@gmail.com> wrote:
> Thanks for your reply..
> It is a pre-built-binary which I am trying to put in a specific path of
> rootfs.
> I didn't get what does it mean by "packaging it seperately"..

is this the only file in this package ? you might add
INHIBIT_PACKAGE_STRIP = "1" to the recipe then
but be aware this will disable stripping the binaries and if you have
other legit binaries that this
recipe is generating then they wont be stripped as well.

>
> On Wed, Jul 11, 2012 at 8:04 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Wed, Jul 11, 2012 at 5:28 AM, Navani Srivastava
>> <navani.srivastava@gmail.com> wrote:
>> > ERROR: QA Issue: Architecture did not match (40 to 3) on
>> >
>> > /work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/packages-split/colorado/home/Leica/Bin/colorado_gui_bk
>>
>> what is this file ?
>> is it some precompiled binary or some firmware blob ?
>> you need to package is separately and then may be skip stripping just
>> that one package
>
>

