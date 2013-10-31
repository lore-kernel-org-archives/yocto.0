Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27473E017D3
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:26:02 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id e14so5378550iej.36
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Lle1lPrEmr0va35CixrtfapzP6ud/zGbSL1fMFTMDmU=;
	b=JE/Ihr/6jMLw6/XW6E+vYhVRobnoCwbNzuCdt6d8v6lAdknIfyEnTeh8+5G2A85idr
	flMeFCz2hWoOwtu+xp6dFk93WkWIa6/FKIfrpd8OpanDPZR1ZRbU6fchxQorkVoxoWRV
	r8qx0Gkd1U6zPENjeeDkr8Yg/UrStW9J4nULeCVjXfypyWN7KGZXNUGmIbLRJLkl3QSx
	TxArVGbkXydVwkk6HGMVV+Yf5V7YD4Vm6uG2NQ+qHFlhr6aadypnwca1Boe0QK6lRfu/
	7xgHZ2UxU/wx1xZfHKeQJVLtKv+P6OOhzjw6kEO4NZ+tMTXK7FL1TSqcgA4P5B+7cmqe
	HsJw==
X-Received: by 10.50.57.44 with SMTP id f12mr102929igq.39.1383236762117; Thu,
	31 Oct 2013 09:26:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Thu, 31 Oct 2013 09:25:32 -0700 (PDT)
In-Reply-To: <CABwVrCo2F-VJG0b5=7tEoXP9qZJu=mco2uCtV0JdtJbaUfHhCQ@mail.gmail.com>
References: <CABwVrCqig4w67Umr8N+y1Vr1Umze5v-6Qe2wz_cHyqK3ixouaQ@mail.gmail.com>
	<CAMKF1spmfjH-J8irnHysbcKmEsBApQx+DAoGT_yGxd-9FNvjOg@mail.gmail.com>
	<CABwVrCqJTEjD6CWBfhj38_Yqb7NRAue4H25C6ub79pxm54XWXQ@mail.gmail.com>
	<CAMKF1spk43172q+mGWv5vJ_3+ThcLb59xy4AELN=bg0=S=Lfsg@mail.gmail.com>
	<CABwVrCo2F-VJG0b5=7tEoXP9qZJu=mco2uCtV0JdtJbaUfHhCQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Oct 2013 09:25:32 -0700
Message-ID: <CAMKF1srzLZ+bE=44rNiK_p-jcPn8Ha4cthErO4ky0SVDZ2go_g@mail.gmail.com>
To: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto toolchain build question
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
X-List-Received-Date: Thu, 31 Oct 2013 16:26:03 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 31, 2013 at 9:19 AM, jan alexandru vaduva
<vaduva.jan.alexandru@gmail.com> wrote:
> I have attached the log file.

You need to package them up correctly in packages
Look at the external sourcery toolchain recipes for help

>
>
> On Thu, Oct 31, 2013 at 6:11 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Thu, Oct 31, 2013 at 7:54 AM, jan alexandru vaduva
>> <vaduva.jan.alexandru@gmail.com> wrote:
>> > I am trying something like this, but I have some annoying QA issues:
>> > QA Issue: Files/directories were installed but not shipped
>> >
>> > Hope to make them dissapear. I tried  adding:
>> > FILES_${PN} += ..
>> >  or
>> > install -D -m 0755 ${S}/... ${D}/...
>> >
>> > but with no succes.
>> > Do you have any ideeas regarding this.
>>
>> No ideas unless you show which files are being flagged like that.
>> either you delete them
>> during do_install or you package them up using FILES into some package
>>
>> >
>> > Thanks.
>> >
>> >
>> >
>> >
>> > On Thu, Oct 31, 2013 at 4:44 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> On Thu, Oct 31, 2013 at 1:38 AM, jan alexandru vaduva
>> >> <vaduva.jan.alexandru@gmail.com> wrote:
>> >> > Thanks for the information. That is what I was looking for. I was
>> >> > asking
>> >> > of
>> >> > the canadian build possibilities for a toolchian and I found the
>> >> > answer
>> >> > to
>> >> > that question.
>> >> >
>> >> > If I may ask. There was a thread:
>> >> > "
>> >> >
>> >> >>* I have a cross-toolchain supplied by an ARM SoC vendor which I need
>> >> >> to*>*
>> >> >> use to build my distro.  What is required to use a toolchain like
>> >> >> this*>*
>> >> >> instead of one of the yocto cross-toolchain tarballs?*>**
>> >> > I answered this question just today for another mail thread please
>> >> > search the ml for the same.
>> >> >>* Thanks*
>> >> >
>> >> > "
>> >> > I can`t find the answer to this question, can you help with a link?
>> >>
>> >> you can plugin that toolchain as external-toolchain like sourcery
>> >> toolchain is done. You can use that as example.
>> >>
>> >> look at
>> >>
>> >> ./meta/conf/distro/include/tcmode-external-sourcery.inc
>> >> ./meta/recipes-core/meta/external-sourcery-toolchain.bb
>> >
>> >
>
>

