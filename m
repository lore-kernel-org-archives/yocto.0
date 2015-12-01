Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF7C5E00A9A; Tue,  1 Dec 2015 05:27:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f181.google.com (mail-yk0-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60232E00A73
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 05:27:20 -0800 (PST)
Received: by ykdr82 with SMTP id r82so6331859ykd.3
	for <yocto@yoctoproject.org>; Tue, 01 Dec 2015 05:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zZtTlALyZiocxsjmzaYbGfmEYmbn9xrT2rYlesXbU2s=;
	b=HusS0oCr5m3vsDRQjIjFZzY+5tPr7oeYP0ZHpV7j2m2x9cHKxg0oOjylDSODXdDwFr
	VMBbwWfytU8rBnShZObDWKXPOet810qco2TeOnJVOg+AUt+nJ69+h5Fi7H2o6JXhDZXN
	ezlPe7kKE1NfcgMwbkGDJcitNeLBFsqnNBXkvPSYun5bHFJVWdVtv8/1Uer9sQ/G3fhV
	gnu2aLqo+rfg8XHBJVM7L8FVR3j9cDd2Bt9zeDGTtPFluS+4IUEpf+2BzfQlPdBR6jA4
	uhxVtn7pmIqPhQ05JzeaZf2G9w7Rh89PjPH3KuhzH35PPKl44lLwvUtAt3XJ1zMNwtqP
	EbSA==
MIME-Version: 1.0
X-Received: by 10.129.130.132 with SMTP id s126mr56255034ywf.131.1448976439366;
	Tue, 01 Dec 2015 05:27:19 -0800 (PST)
Received: by 10.129.155.208 with HTTP; Tue, 1 Dec 2015 05:27:19 -0800 (PST)
In-Reply-To: <1448926152.12905.55.camel@intel.com>
References: <CAF3SDA531vpWpfiSuKSr8FhbdMdt=1ma8LMhG55_uTia=E7q2A@mail.gmail.com>
	<1448926152.12905.55.camel@intel.com>
Date: Tue, 1 Dec 2015 11:27:19 -0200
Message-ID: <CAF3SDA4y9cq+NtKQRgzP7bRAAEXyxSc4tMH+N8aSgEhXhyLc3Q@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: One kernel tree, two BSP layers, two defconfigs. How to pickup the right one based on MACHINE value?
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
X-List-Received-Date: Tue, 01 Dec 2015 13:27:22 -0000
Content-Type: text/plain; charset=UTF-8

Hi Saul, thanks for your reply

2015-11-30 21:29 GMT-02:00 Saul Wold <saul.wold@intel.com>:
> On Mon, 2015-11-30 at 17:25 -0200, Daniel. wrote:
>> Hi,
>>
>> I have one kernel tree where I keep all my modules in-tree. Inside
>> kernel I have two FOO_defconfig and BAR_defconfig which are
>> configurations for FOO-board and BAR-board. On Yocto I have
>> core-layer, FOO-bsp layer and BAR-bsp layer. At core-layer I have
>> linux-custom.bb file which has the URI for kernel tree with a dummy
>> defconfig. At FOO-bsp and BAR-bsp a have a .bbappend that adds a
>> folder with the right defconfig for each board.
>>
>> My doubt is: I have two .bbappends, on two distinct layers being
>> applied at same time? Both layers are pointed at
>> build/conf/bblayers.conf.
>>
> So you are including both your BSP Layers in the bblayers, that will
> probably cause problems based on your description above.
>
> Another option is to look at using overrides and have 1 layer that
> supports both boards if they are similar and share other items.
>
>> How can I have sure to pick up the right defconfig at build time?
>>
>> I've tried to delete core-layer and have two kernel recipes with
>> distinct names, but Yocto complains about two recipes being selected
>> at same time for build (because of virtual/kernel feature or
>> something
>> alike). So I want to keep one kernel recipe and select the right
>> defconfig based on MACHINE value.
>>
> You can use PREFERRED_PROVIDER_virtual/kernel to have multiple
> alternate kernel present and set it in your <machine>.conf to select
> the kernel you want.
>
> If your kernel recipe does not inherit kernel.bbclass you will need to
> set PROVIDES
>
> You should also be sure to set COMPATIBLE_MACHINE for each machine
>
>> Both defconfig are present on arch/arm/configs. Can I overwrite
>> do_config()? Is that safe? About the .bbappends: Should be two
>> .bbappends on same .bb file be avoided?
>>
> You can use a do_config_prepend() to deal with moving the correct
> defconfig.
Yeah I'm doing that. As you suggested I removed the .bbappend files and
have one recipe that support both machines, the config prepend looks
like this:

do_configure_prepend() {
    case "${MACHINE}" in
        enlace-imx6)
        bbnote "Using csi_enlace_imx6_defconfig"
        cp -v ${S}/arch/arm/configs/csi_enlace_imx6_defconfig ${S}/defconfig
        ;;
    pharosserver-imx6)
            bbnote "Using csi_pharosserver_imx6_defconfig"
        cp -v ${S}/arch/arm/configs/csi_pharosserver_imx6_defconfig
${S}/defconfig
        ;;
    esac
}

Thanks again for the help,
>
> Honestly there are many ways you can make this work and even more to
> make is fail!
>
> Sau!
>
>>
>> Regards,
>> - dhs
>> --
>> "Do or do not. There is no try"
>>   Yoda Master

BR,
- dhs

-- 
"Do or do not. There is no try"
  Yoda Master

