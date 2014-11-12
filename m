Return-Path: <opensourcejohn2112@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E5FEE00777; Wed, 12 Nov 2014 13:00:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (opensourcejohn2112[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED87AE005B7
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 13:00:31 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id uz6so9720400obc.5
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 13:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+aH98SaBVWtr46CyxInp0Qj9R0Rkc1GrK5Cdr/eAULs=;
	b=nmh/wQwxPVe6q6J69tHzkSfAcStfyTUKzUQlUGVj0VnKd91+EqnnU0Jh0mMIsfRS98
	OEA+lMJZ7J7nt53J4K+cMgqHAaJLMrxhnKOgQSpg2x8wRqk27/fnOz1IxW7UQL6VvVOM
	bqh+USvzqx+o99SEIOqwgkqDWtZO30kMLhY/v4KMiP+tUYY38ADANfApBZH83WN61QLG
	YeAngiyQmVPa+oZ9w9iwatZNjzUQHlNSyM0Hb8caFlW0O4zXpCTcUAnTH4l23ZUsK+Ni
	QnUgAIhmQYhIlwkstbAHJ0cFMDi0M0I0r7Lxj59HNYiJSReJna1DBgyQPK5Nw5FcMhcV
	WSUw==
MIME-Version: 1.0
X-Received: by 10.60.70.174 with SMTP id n14mr2529663oeu.77.1415826031085;
	Wed, 12 Nov 2014 13:00:31 -0800 (PST)
Received: by 10.202.104.196 with HTTP; Wed, 12 Nov 2014 13:00:30 -0800 (PST)
In-Reply-To: <2092067.aaeApHOQI2@peggleto-mobl5.ger.corp.intel.com>
References: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
	<D087E4B4.4DDB7%belen.barros.pena@intel.com>
	<CAByxTR-AS8DcboJH-iP5kgw3OitUKEYP7ZK5riJsuVX1bNNUpg@mail.gmail.com>
	<2092067.aaeApHOQI2@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 12 Nov 2014 15:00:30 -0600
Message-ID: <CAByxTR-C0pyk81W-ROxkMvRH1x-0KWdNcvUri6LmKeGMz95LDg@mail.gmail.com>
From: John Unland <opensourcejohn2112@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Making Hob better.
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
X-List-Received-Date: Wed, 12 Nov 2014 21:00:43 -0000
Content-Type: text/plain; charset=UTF-8

>I'm not sure a separate bootloaders layer would really make sense - we normally keep bootloaders either in OE-Core...
>Are there bootloader(s) that you are looking for that are currently missing?

Well I know I like to use U-Boot since it can go across multiple
archs. Well I guess it makes since to just have it in OE-Core. Other
than that that's what I wanted was U-Boot for x86 mostly....But if
It's in OE-Core then there's no need to abstract that out to a
different layer I guess.

Thanks.
John


On Wed, Nov 12, 2014 at 11:33 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi John,
>
> On Tuesday 11 November 2014 11:51:23 John Unland wrote:
>> What about bootloaders? Where would I file a enhancement for different
>> boot loaders (U-Boot, Lilo, etc.). Would be good if we had a boot
>> loaders layer.
>
> I'm not sure a separate bootloaders layer would really make sense - we
> normally keep bootloaders either in OE-Core (where we currently have u-boot,
> grub, grub-efi, syslinux, gummiboot, etc.) or in specific BSPs where a specific
> bootloader is needed (or a specific version of an existing bootloader, e.g.
> BSPs shipping their own version of u-boot is common). FWIW there is also a
> meta-initramfs layer in the meta-openembedded repository which contains
> kexecboot.
>
> Are there bootloader(s) that you are looking for that are currently missing?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

