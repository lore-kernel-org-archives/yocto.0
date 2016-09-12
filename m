Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15475E006D2; Mon, 12 Sep 2016 09:41:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B8EE0050B
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 09:41:25 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id v189so6260977vkv.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 09:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SljB/XOPgnoKsx/1WdBReMsbf+Ou/Rq0jy1fT0biUDY=;
	b=Vl3+GYbYIwoB38xW2WJ8C2RaokQQ0+/Yn7mSyBVepaDEpHAg1mkB6HhxQGIfT06iY2
	3k/Q69HrHn10R4K3qQvQtsxo7oOfMaEB81y+OECTmKqgLnehRMXsrHGawyIc1BGF/WlV
	mfD6nCThZLl2c/ySFrWlYmmjXfVK7HBsnlzboirlQD3XZK8BCVisi61UAncmRUw+ppOM
	v+r7gZXuTPKdsQ1SLxotUUj3aTDTMK7Il0rhHX+iAxwkROu55xK2ttbh+ySQ/JbtHIaI
	mANYrfQFIUhwnEyWEJ+dFAzMn/zOnvH2c2BYXrD08k6veI29Q/mUgjJpMNCD0ntQU5g0
	sQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SljB/XOPgnoKsx/1WdBReMsbf+Ou/Rq0jy1fT0biUDY=;
	b=N51b+fyqkkjEuR8d6uSfIGvd4U/ZtFefE0nKaCl59qgBCpfK/432oa/IuFVi9WmIYE
	NOQ0CwFifnGm7vlnVUT96/6ddWF4OCRCRUPb8OZbR/6hbeHIJkQjrEzMKpLyj3nZvBCm
	T8x7HiFVcUT4q50sQ8nOljkawzMYBQv4Y7nj0hh42BhmrB9cZFOnSpZzob8E3JQJ5hDB
	mW745R19OLkyEYtmJ4E7IKZkvHTv+XXhCwUD6bTlCQEny+cbUtZu6+qqng+fCt4b0hjt
	rn1rsgHhz6z1bHTKTCL1UabWMma/VuOYroHRO+KDwNt0mMngZArzrP3Av4E/5JXcog+q
	GmRQ==
X-Gm-Message-State: AE9vXwMC/2CoMLB20XQElLueU3zf8SLdzwfK7oq/5CrCeUGk/Ec1vWnP+qma1DROQE7q0fT545QZz0K3M34MGQ==
X-Received: by 10.31.252.207 with SMTP id a198mr13887782vki.51.1473698484853; 
	Mon, 12 Sep 2016 09:41:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.147 with HTTP; Mon, 12 Sep 2016 09:41:24 -0700 (PDT)
In-Reply-To: <20160912160242.GB14313@csclub.uwaterloo.ca>
References: <CALRMKQqgbk9Oj42figT=iXqJJfhHRgTjQ9PkUtwTUEzUomyX=w@mail.gmail.com>
	<CALRMKQqP5KT+batqRh20AbO=jSWKRhYrhtWF=SzHms0LwfMsLA@mail.gmail.com>
	<20160912160242.GB14313@csclub.uwaterloo.ca>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 12 Sep 2016 13:41:24 -0300
Message-ID: <CAF3SDA7_wdqx-z732q1CyMKfXdwjhmEwiuq+cePOaibvMFRxCA@mail.gmail.com>
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
X-List-Received-Date: Mon, 12 Sep 2016 16:41:28 -0000
Content-Type: text/plain; charset=UTF-8

Ronald,

If you don't make your driver GPL you can't access GPL symbols. This
*may* be the reason behind the "Unknown symbols"
Regards,

2016-09-12 13:02 GMT-03:00 Lennart Sorensen <lsorense@csclub.uwaterloo.ca>:
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
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

