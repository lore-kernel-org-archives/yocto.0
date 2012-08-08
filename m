Return-Path: <anders.roxell@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BC69E002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 10:17:23 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so1198643ggc.35
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 10:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PBx8J/IsO9tkZX2r2avSFV17zFEpuBKMZ7kzv5eURd8=;
	b=ypsmfb7dcBW4xunTQTvKHzZUfOfDMUsPVRZIDpD2EB8HnYz1H0yECTYYPleoXHMnWp
	e4Denf1Xd4UKWOblS1ZreePHxJoVkBxFRDAVRENspXl5Qq3MbIcxIMFuHEKqv3u0CnNW
	tylQQKB2iI4cdTCcND0TUg2e4nfYWLgiB4aQV+vLjr54A+9MY2MEWDM4aG95EVR40Hch
	zL/nwpks8UZgJhWKLcrKctSlOf4PQNeOk/MmR1I0fE9wMSFkMx3jsn70iEbpRrsHhdgi
	Uu3FslPrAyXx6kwvj1lyFEFfJ9yhm+z4DOdfQ/CjSirI3PrPCk9arZntdpbIDIk97rl6
	BpVQ==
MIME-Version: 1.0
Received: by 10.60.1.69 with SMTP id 5mr31029067oek.66.1344446242542; Wed, 08
	Aug 2012 10:17:22 -0700 (PDT)
Received: by 10.182.116.3 with HTTP; Wed, 8 Aug 2012 10:17:22 -0700 (PDT)
In-Reply-To: <CAMKF1spzT1OV29Uy-mwn9yJMScXy38Cd7gcGO+H+z+7iGW2SDA@mail.gmail.com>
References: <CAEUf8FuMUNFAuGfqSq_yFpx2355OiKOca9Oun=pG2OyK41MBUg@mail.gmail.com>
	<CAMKF1spzT1OV29Uy-mwn9yJMScXy38Cd7gcGO+H+z+7iGW2SDA@mail.gmail.com>
Date: Wed, 8 Aug 2012 19:17:22 +0200
Message-ID: <CAEUf8FvARHY2s63_C+gd2ySbq4b4L6jO5cS6OnihyPR872UH_A@mail.gmail.com>
From: Anders Roxell <anders.roxell@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Is there a way to order to kernel_do_configure_prepend?
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
X-List-Received-Date: Wed, 08 Aug 2012 17:17:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

That look good... Thank you for the help!

With kind regards,
Anders

On Wed, Aug 8, 2012 at 7:09 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Wed, Aug 8, 2012 at 8:39 AM, Anders Roxell <anders.roxell@gmail.com> wrote:
>> Hello,
>>
>> I'm trying to build a p2041rdb i use the meta-fsl-ppc and poky release 1.2.
>> I've created my own meta-layer where I add my own cfg kernel config so
>> I added my own bbappend on the linux-qoriq-sdk.bb.
>> In the linux-qoriq-sdk.bb file they have added a
>> kernel_do_configure_prepend and I did my own
>> kernel_do_configure_prepend in my linux-qoriq-sdk.bbappend file to add
>> the kernel config that I need.
>> I have set BBFILE_PRIORITY (BBFILE_PRIORITY_mylayer="5").
>>
>> my problem is that my kernel_do_configure_prepend is applied before
>> the fsl-ppc's kernel_do_configure_prepend and that is a problem
>> because fsl-ppc's kernel_do_configure_prepend over writes the .config
>> file (so my .config get over written).
>>
>> does anyone have any idea how I can change the order of
>> kernel_do_configure_prepend?
>>
>
> meta-fsl-ppc/master has changed in this regard. it actually prepends
> to do_configure now
> which means you can overwrite that in your bbappend using
> do_kernel_configure_append
> see
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/commit/?id=63996e1abafbeae33692f88ba714acc8520d2f55
>
>> with kind regards,
>> Anders
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

