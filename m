Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C557E017D2
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:12:25 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id aq17so5243872iec.20
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=3L1k13PWRtPhzPGbrfG6Qfmq+WPanlnxJcDQy9c61ko=;
	b=oHz6U057gePGOnNi1IXS/CxbMFg+2SPwHtpBCEd8DkMcktI10T6UMLb72c2nQnSq+l
	dFNXRzDIhvNiyvoumL6QWYxHY8MhZ1VDD7e62e8bJAvBgIMlWRHXSd5MCu+zULPrPMph
	LyQC5ow9yMFOm6xuj6Z5pEVpdlREEJV4OQuTzOEQHvu5JeD9DzNAxLG/9a/CKT9ILZRM
	t9jtTRoD3BxWJGcFedmc0Jo4gY7D/ARfdQHz8r5C8newSIrsobr5MykmfWz5tH13rgSw
	pedkSgwZVAMUOmEnUs1KY1ly5NDa0cqw4FrHqoj7REQSaxO2zQsYdIajSrhp1BFD+BE2
	Hzpw==
X-Received: by 10.42.208.211 with SMTP id gd19mr2727298icb.15.1383235944692;
	Thu, 31 Oct 2013 09:12:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Thu, 31 Oct 2013 09:11:54 -0700 (PDT)
In-Reply-To: <CABwVrCqJTEjD6CWBfhj38_Yqb7NRAue4H25C6ub79pxm54XWXQ@mail.gmail.com>
References: <CABwVrCqig4w67Umr8N+y1Vr1Umze5v-6Qe2wz_cHyqK3ixouaQ@mail.gmail.com>
	<CAMKF1spmfjH-J8irnHysbcKmEsBApQx+DAoGT_yGxd-9FNvjOg@mail.gmail.com>
	<CABwVrCqJTEjD6CWBfhj38_Yqb7NRAue4H25C6ub79pxm54XWXQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Oct 2013 09:11:54 -0700
Message-ID: <CAMKF1spk43172q+mGWv5vJ_3+ThcLb59xy4AELN=bg0=S=Lfsg@mail.gmail.com>
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
X-List-Received-Date: Thu, 31 Oct 2013 16:12:28 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 31, 2013 at 7:54 AM, jan alexandru vaduva
<vaduva.jan.alexandru@gmail.com> wrote:
> I am trying something like this, but I have some annoying QA issues:
> QA Issue: Files/directories were installed but not shipped
>
> Hope to make them dissapear. I tried  adding:
> FILES_${PN} += ..
>  or
> install -D -m 0755 ${S}/... ${D}/...
>
> but with no succes.
> Do you have any ideeas regarding this.

No ideas unless you show which files are being flagged like that.
either you delete them
during do_install or you package them up using FILES into some package

>
> Thanks.
>
>
>
>
> On Thu, Oct 31, 2013 at 4:44 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Thu, Oct 31, 2013 at 1:38 AM, jan alexandru vaduva
>> <vaduva.jan.alexandru@gmail.com> wrote:
>> > Thanks for the information. That is what I was looking for. I was asking
>> > of
>> > the canadian build possibilities for a toolchian and I found the answer
>> > to
>> > that question.
>> >
>> > If I may ask. There was a thread:
>> > "
>> >
>> >>* I have a cross-toolchain supplied by an ARM SoC vendor which I need
>> >> to*>*
>> >> use to build my distro.  What is required to use a toolchain like
>> >> this*>*
>> >> instead of one of the yocto cross-toolchain tarballs?*>**
>> > I answered this question just today for another mail thread please
>> > search the ml for the same.
>> >>* Thanks*
>> >
>> > "
>> > I can`t find the answer to this question, can you help with a link?
>>
>> you can plugin that toolchain as external-toolchain like sourcery
>> toolchain is done. You can use that as example.
>>
>> look at
>>
>> ./meta/conf/distro/include/tcmode-external-sourcery.inc
>> ./meta/recipes-core/meta/external-sourcery-toolchain.bb
>
>

