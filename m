Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA441E00BEA; Thu, 17 Mar 2016 02:10:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1F6AE00BBF
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 02:10:56 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id p65so107250788wmp.0
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 02:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=58c4wUr+fBGDafHQl/lV6UZ4GcT+J6aUpXmP5Bp9+X4=;
	b=nWZ82Ki8FqEHWjTzcfjEM99ooPlSWLcJb1XV0DkjQ41zm0gsnqegyT5rPu9xK9tj+9
	VeCdRUXNScBrfhcQwQydI8QpdU8m7ImyWq+0qo1KomVLW+vUSqSVF7gk3CT/s94W3TGB
	5mP4DOv4hg8k5+WHZd/mPk6Mi1eXI0Devi6iGqnQ+OJzpCvxwmFigurpT714aWV3ZiJp
	C9A4JxMfwNzGjN3Qvq0lBw0WDyxvijFelSNHcWeNA2G93nlhr6cVm+8Oqxb5fMGyVFd9
	zwSCtqiUxlfVlDCeCTB9f9fL+vixpS29ffHDRxs2BbbgiTlO27FCfm+J30NC9OC5VC67
	EVyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=58c4wUr+fBGDafHQl/lV6UZ4GcT+J6aUpXmP5Bp9+X4=;
	b=Urxk2BEojY0pPb8/49reo4TMJ8K7pHvvdq+OEnRnGKEruBRVGkyy5JcPW4ry2h91Gu
	5hY6avdNR109B6cLafMRGJnGoctwNMV1ooJrQramTSdO0NX+f3W/MOpCzcgAYcFlZh0H
	tkaui0blMlzNxOCXGCeL6zplHyuj0bm09ovSfsxRm8HWGqXQ4V0bNL+IkUOeB8PM5oiR
	qIMHaOyEi4MmnAfdmJ8h0KhBO0T/z/55UMDcEYq3Kr+4TLH2SgY1/gDZGoy6KLf+jiz+
	mWbPiU611RqBvNUYdglBWkfal0n/0kQEgO/L7SWuNkEwtx+h5paVJynnqGt18EI34oJ9
	uwoA==
X-Gm-Message-State: AD7BkJLN3b+h4BxHT6uPuBspcsOXVQVpedps8gH3hOVrH/EfTnNcvu+c/sjIJXsMxGRNzVVv0Y/WMGIW0lWHhQ==
MIME-Version: 1.0
X-Received: by 10.28.50.133 with SMTP id y127mr33747033wmy.4.1458205855851;
	Thu, 17 Mar 2016 02:10:55 -0700 (PDT)
Received: by 10.194.201.104 with HTTP; Thu, 17 Mar 2016 02:10:55 -0700 (PDT)
In-Reply-To: <CAJTo0LaVEa3-GL6Nd3uMkBC0P7PvUj23FqTLchMo8bLcLbKXCg@mail.gmail.com>
References: <CALf_N3bObyR-EPgVLtjS+NMmYETQsavs+DT45gxhF8CT1m1-yw@mail.gmail.com>
	<CAJTo0LaVEa3-GL6Nd3uMkBC0P7PvUj23FqTLchMo8bLcLbKXCg@mail.gmail.com>
Date: Thu, 17 Mar 2016 02:10:55 -0700
Message-ID: <CAJ86T=V-YaLEbH=i+34ZfB27Krnpg_F-XP=k7dBRA+g=D_gBFA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Conditional compile for package in layer.conf for Qemu
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
X-List-Received-Date: Thu, 17 Mar 2016 09:10:58 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 16, 2016 at 2:01 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 16 March 2016 at 08:56, Mark T <mtl1nuxd3v@gmail.com> wrote:
>>
>> I'd like to be able to do the following
>>
>> IMAGE_INSTALL_append += "package_a"

It's not typical usage to combine += with _append, pick one or the other.

Using _append is generally more reliable if you're not sure how the
variable you're appending to was originally initialised, however with
_append you need to manually include a leading space character, ie:

IMAGE_INSTALL_append = " package_a"

>> if ( not qemu )
>> IMAGE_INSTALL_append += "package_b"
>> endif
>
>
> The neater way would be if you can easily identify what "not qemu" is, for
> example:
>
> IMAGE_INSTALL_append_intel-corei7-64 = "package_b"
>
> Would install package_b only for intel-corei7-64 machines.
>
> If you want to support arbitrary machines but not qemu then something like
> this might work:
>
> MOREDEPS = "package_b"
> MOREDEPS_qemuall = ""
> IMAGE_INSTALL_append = " ${MOREDEPS}"
>
> (qemuall is an override that is enabled by all qemu machines)

Another alternative would be something like:

IMAGE_INSTALL_remove_qemuall = "package_b"

> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

