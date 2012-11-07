Return-Path: <aalonso00@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFA55E003D6
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2012 16:15:05 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id k11so1787647iea.35
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2012 16:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BjzMKXETj4cqouBenHkWw1AkQoRAikgTmc6nAFgNIHY=;
	b=OcB393z38INFe/PXEJ7DkX1JrdjWbQyEF45FmcoIDLnYok89JC8GrDII8ZnyvydmgW
	erlRAeAuglUSez7pCkQuQOr6QHJC44qnSoOhdispynhCp2/pnzQz1jf5nmrpxa4GLBbs
	39qu3X7bGAOEbVcN/9W38ekTv+cwU15UyNL9RturtgtAXNuG1oZQs5UT4kaLASc49PXG
	eND4cUuLgf4nN6ChHilY/hbkEgO0w+e0WzYwe9+Fm6WcCK0z0UdqtypQ3xocUkTliycn
	VP+jkrkYAkotgEouU3q9sLkVep3wS2WGixDSEnq9NAwTpg6AdcwAmU4ES5ve47qdceEg
	v3aw==
MIME-Version: 1.0
Received: by 10.50.155.162 with SMTP id vx2mr2916974igb.61.1352247305027; Tue,
	06 Nov 2012 16:15:05 -0800 (PST)
Received: by 10.64.166.66 with HTTP; Tue, 6 Nov 2012 16:15:04 -0800 (PST)
In-Reply-To: <D1E456D4-A79C-4ED5-9A4E-9732C16F503D@gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
	<CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
	<CAHUNapT5HfC+dbzjmuYiQ4ic4m71=iBaaJtygfrhht+JsqMyHA@mail.gmail.com>
	<CAMKF1sozZMQFS4kSbqGGnzzJ9K0O_3NCyujknFpJUZvZ4jOLBA@mail.gmail.com>
	<00209F5B-F153-4F07-BA14-54FF7D6E5762@gmail.com>
	<CAHUNapQm1sJSU5zDP6-0MEEhYoU_WPtXbVoO4_g8MK_r3p843Q@mail.gmail.com>
	<D1E456D4-A79C-4ED5-9A4E-9732C16F503D@gmail.com>
Date: Tue, 6 Nov 2012 18:15:04 -0600
Message-ID: <CAAB-1yy7DJwpBnHQ355OGQB0OD=o_KLnHiiWZRB1oNQnQRPu0w@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
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
X-List-Received-Date: Wed, 07 Nov 2012 00:15:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

I just read most of the thread,

Is clear that another maintainer for meta-xilinx is needed :)

To summarize spartan6-lx9mb I only succeed in building an initramfs image, using
Xilinx prebuilt toolchain.

Check
recipes-core/images/initramfs-image
in microblaze-support branch

The only build step that I found are here
http://wiki.secretlab.ca/Poky_Linux_Microblaze_support

Which are for Microblaze in Virtex5 M507;

At the time that I was working to integrate Microblaze I never pass to
successfully build gcc (4.5.0)
but probably with newer gcc it could be different story.

Regards

On Thu, Sep 13, 2012 at 7:08 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> Hi Trevor,
>
> On Sep 13, 2012, at 10:17 PM, Trevor Woerner wrote:
> >
> > ~$300 for the SP601 is certainly not too onerous. If I start to see
> > more success with yocto I will definitely consider it.
> >
> > Other options include:
> > - qemu (maybe getting yocto to run/build a microblaze qemu image would be nice)
> > - the spartan-6 version of the papilio board (which is either going to
> > be a papilio plus or the papilio pro)
> >
> > I do have one question though: if I had the SP601, would I be able to
> > download (for free) an synthesize (using the freely available ISE
> > tools) a microblaze and/or a PPC soft core? Or would I need to pay for
> > those components (and if so, how much)?
>
> There are two parts of the design suite, ISE (for VHDL and Verilog)
> development, and XPS (EDK) for re-using the Xilinx IP cores in
> a project. To edit microblaze projects, you would need an EDK
> license. The standard webpack only includes a license for the ISE
> component, and is usually device locked to a particular set of
> devices, usually the low-end FPGAs.
>
> The SP601 comes only with the WebPack software, so hmm no, not
> suitable for what you want to do.
>
> What you really need is the ISE Embedded Edition or System Edition,
> in order to be able to configure your IP cores using the Xilinx
> Base System Builder, so that you can design your peripherals
> around a MicroBlaze (Virtex, Spartan) or ARM (Zynq) processor core.
>
> There are no soft PowerPC IP cores, only hard PowerPC IP cores on
> specific Virtex 4 (PPC405) / 5 (PPC440) FPGA variants, with the FXT designation.
>
> Xilinx stopped using PowerPC hard cores with the Virtex 5 series.
>
> So, series-6 and series-7 FPGAs don't have PowerPC any more, and the only
> option was to use a soft core processor like the microblaze. In the specific
> case of the Zynq series, they have a dual ARM Cortex-A9 hard core processor.
>
> I find that the Spartan-6 Embedded Kit (SP605 + ISE Design Suite Embedded
> Edition) gives you want you want, and the price listed on the website is USD$695.
>
> http://www.xilinx.com/products/boards-and-kits/DK-S6-EMBD-G.htm
>
> The other option is the Zynq-EPP 7020 platform which includes the base board
> with the ARM processor, and ISE Design Suite System Edition for USD$895.
>
> Best regards,
>
> Elvis Dowson
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto




--
Saludos
Adrian Alonso
http://aalonso.wordpress.com

