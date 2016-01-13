Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13013E00B5A; Wed, 13 Jan 2016 09:52:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34D95E008EE
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:52:51 -0800 (PST)
Received: by mail-qg0-f54.google.com with SMTP id o11so460333893qge.2
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=GD9Ijrdw75z0TkOSnuA59ay1DlUt+JBXuqboprh0X2Q=;
	b=TIfSbw+9AQBGcMkmMZoJnDKm6cvwEhtLub1Kb0HfTIOSsoZk+wBoSiOTNDsyhIzi3T
	kfBdtKlJWVLa+vD/5KQx27tqLR+t14wyfCAdXo0pwR/jN2Y2P8wUdvEx3gQEVtvcs8H2
	M0RrelGZ0OqVlVgzf126glqyn9ill2G5szCA2dEBcAgSf2dZoExaOliUSj+XtAfSpp88
	9sqFjRzvqNF8ztsTs19PxpCHZcb8JqiE+/rxDpm/KYbE6ywu4tuBeLcgnPGCdN8eRsTn
	Zhs1MJ44gH+an5f9UcmiPPN+0AP+0IRRR4gRtfPjLXjvJ1ywthbWrYaoCrZgoe5PkZDe
	Y9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=GD9Ijrdw75z0TkOSnuA59ay1DlUt+JBXuqboprh0X2Q=;
	b=bb3Ft2XzHu4C1VKEabKYrOg5aopW/ft3zul3WfYazgVINo/UhzabZ9CFNQs2gFiG6e
	UucPrWWzj5SGO5WJg8oFMZqc7BdaO8EIQVs+QCdcKG7zU4ZUaOpa4S2qixFtj66M/rTq
	s+kPCfZdyq0NRr/ucjTowTITAROnermdl4YX+IoCO6KXskY5/dXKUEJWsc53qw//Blcg
	gJvl4Kqeto5+lHPQhF/BIUsyPkTUWzyUW46dT59hdSuXbQeDrGLoRdc8JBR4fDxvG50Q
	jnEaONqe3WutXMNNrvzTUaP3Qkyp3WGsbXLD6A4JFpsmo18ubw0kRj+oE7PRIhdGTlSL
	yS0g==
X-Gm-Message-State: ALoCoQmcYW0x87AxWK+xS10Ot+h4GTBcFt31it1BOAzvgcUE6KEwz2lOVnbu+R+2vzzcBze2vxLAl/DLbb6xou7Zsh0wi5ZgXg==
X-Received: by 10.140.133.146 with SMTP id 140mr21773357qhf.99.1452707571259; 
	Wed, 13 Jan 2016 09:52:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.54.210 with HTTP; Wed, 13 Jan 2016 09:52:21 -0800 (PST)
In-Reply-To: <CAF5S8SM_EQm1nHx9s6qou2sksihhQ9yJCEaaSnRa42PYu_V3CQ@mail.gmail.com>
References: <CAF5S8SOmOLVR9gU_=WgxW1fPZNxUyyEqO5j_mH5xsFnr=Ex-Cg@mail.gmail.com>
	<CAMKF1srH4wXuEohCrj3_hxK6=uO-UX0ETjtpnGsMdrc0fUrREg@mail.gmail.com>
	<CAF5S8SOXpLnALCyr-k53HDgfRSnVWtPXKy32sfK9p66Vx+uJeQ@mail.gmail.com>
	<CAF5S8SOX78=nAGHhQzxnNFoPP8GgMdrEQDvUrnQH97+CPzkqrw@mail.gmail.com>
	<1F18FD34-E817-49BD-8AF0-3F8656BB33D5@gmail.com>
	<CAF5S8SM_EQm1nHx9s6qou2sksihhQ9yJCEaaSnRa42PYu_V3CQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Jan 2016 09:52:21 -0800
Message-ID: <CAMKF1sqQ7innV2TOCj+8WgerELwaQSHjh+6+Np92B8U+haNhww@mail.gmail.com>
To: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build jffs2 rootfs image in freescale community build
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
X-List-Received-Date: Wed, 13 Jan 2016 17:52:55 -0000
Content-Type: text/plain; charset=UTF-8

you need to run -c deploy task for that

On Wed, Jan 13, 2016 at 9:48 AM, Sarayu Krishna Sivanandam
<sarayu@zaikenn.com> wrote:
> hi ,
>
> I do see the the linux-dtb.inc included in the linux-ls1 recipe but when i
> build the code using
>
> bitbake -c compile -f linux-ls1 it doesnot re-generate the dtb file in the
> deploy/images/ls1021atwr folder .
>
> Also when i try to rebuild the images like core-image-minimal or core-image
> base it does not rebuild any of the images .
>
> How can i force it to rebuild the dtb image ?
>
> Thanks and Regards,
> Sarayu K S
> Tech Lead
> Zaikenn Technologies
>
> On Wed, Jan 13, 2016 at 11:11 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>> On Jan 13, 2016, at 4:03 AM, Sarayu Krishna Sivanandam
>> <sarayu@zaikenn.com> wrote:
>>
>> hi ,
>>
>> On similar lines i want to rebuild my linux dtb file as i have made some
>> changes in my dts file . How can i force it to regenerate the same ?
>>
>> For example , I use the command bitbake -c compile -f linux-ls1 to
>> regenerate the uImage .
>>
>> Is there is similar command for the linux-dtb generation ?
>>
>>
>> if your kernel recipe is including linux-dtb.inc then it should
>> automatically append device tree related activities into standard tasks.
>>
>>
>> Thanks in advance for your help.
>>
>> Thanks and Regards,
>> Sarayu K S
>> Tech Lead
>> Zaikenn Technologies
>>
>> On Tue, Jan 12, 2016 at 3:17 PM, Sarayu Krishna Sivanandam
>> <sarayu@zaikenn.com> wrote:
>>>
>>> That worked . Thanks !!
>>>
>>> Thanks and Regards,
>>> Sarayu K S
>>> Tech Lead
>>> Zaikenn Technologies
>>>
>>> On Tue, Jan 12, 2016 at 2:12 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>> On Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Sivanandam
>>>> <sarayu@zaikenn.com> wrote:
>>>> > Hi all ,
>>>> >
>>>> > I was initially using the QorIQ-SDK-V1.8 SDK and was using the command
>>>> > "bitbake corre-image-full " to generate the full images including the
>>>> > uboot
>>>> > , the jffs2 filesystem etc as shown below ,
>>>> >
>>>> > -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46
>>>> > fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2
>>>> >
>>>> >
>>>> > Hoe ever now i have moved to the fsl-community-bsp and want to
>>>> > generate the
>>>> > full images . I am uisng the command "bitbake core-image-full-cmdline"
>>>> > as
>>>> > the "core-image-full " command was not available . But it still did
>>>> > not
>>>> > generate the individual filesystem types . It generated a filesystem
>>>> > file
>>>> > like the below .
>>>> >
>>>> > -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12
>>>> > core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz
>>>> >
>>>> >
>>>> >  Can you please let me know how to generate the jffs2 image in my
>>>> > community
>>>> > bsp ? Please let me know what i am missing here .
>>>>
>>>> Add IMAGE_FSTYPES += "jffs2" in your local.conf
>>>>
>>>> >
>>>> >
>>>> > Thanks in advance for your help.
>>>> >
>>>> > Thanks and Regards,
>>>> > Sarayu K S
>>>> > Tech Lead
>>>> > Zaikenn Technologies
>>>> >
>>>> > --
>>>> > _______________________________________________
>>>> > yocto mailing list
>>>> > yocto@yoctoproject.org
>>>> > https://lists.yoctoproject.org/listinfo/yocto
>>>> >
>>>
>>>
>>
>>
>

