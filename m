Return-Path: <dherechaitanya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DADD1E00B1C; Sat,  7 Nov 2015 03:17:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dherechaitanya[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FFBAE00A26
	for <yocto@yoctoproject.org>; Sat,  7 Nov 2015 03:17:40 -0800 (PST)
Received: by lbbkw15 with SMTP id kw15so67140075lbb.0
	for <yocto@yoctoproject.org>; Sat, 07 Nov 2015 03:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=NJifztiQF9Ytyv6RL+AclvaZPwDCjCfMlO94WTbI5ho=;
	b=eix4PGY6in8OfK9wt6TjstD1Nqir7LJveaNDnSE7+qyzwNX570y1JZdFTcR464+dbr
	mfRhXu5zmud9QZjig55ngDWIGVcZKSby0uSLJ9MYL5aIIczPerqy0KD9jz7HSwJuvVB+
	HZxtdGQyCsVA4k2MHzZoCwaM1kvHGyDC7iXO7xcXZVZw4L9fEsuJVpCRXyALm2r8f2rf
	rYkaIblusNXvwvn0TCKVaQ8UihqgHvsVkfqsqeadY5O2RvJH+ho0grRl8jZcvhRBl1zO
	W9uLDD+IWN9hE1nIijj4fkEYX5yAp4YUfbp4e9CR/V6WuaUrsTSyaJdBYalcBvoW2Bst
	Ovqg==
MIME-Version: 1.0
X-Received: by 10.112.156.2 with SMTP id wa2mr9308005lbb.39.1446895058989;
	Sat, 07 Nov 2015 03:17:38 -0800 (PST)
Received: by 10.25.39.20 with HTTP; Sat, 7 Nov 2015 03:17:38 -0800 (PST)
In-Reply-To: <CAK18fxExsnDc9rGVcjNNp5uELfy8eWNg3ZfUS=e7kCog33bLCA@mail.gmail.com>
References: <CAG=op9dOD9-phw9V+ceuvLhDxuPYQJPmNUJrrneC9_ywS+f5aw@mail.gmail.com>
	<CAMKF1srraL3_z6_AOG9Yo+P_5FY3E9Lv-ZywyQd+CGt7UsK77w@mail.gmail.com>
	<CAK18fxFTcYS0YLAbPnEycfUBBD3GxdRF_BbGX=332fnYd=eJLQ@mail.gmail.com>
	<CAG=op9c3ZCzppmDx__AMqTrv09Yf73F3830h-Ji7OqwxTZAOsQ@mail.gmail.com>
	<CAK18fxExsnDc9rGVcjNNp5uELfy8eWNg3ZfUS=e7kCog33bLCA@mail.gmail.com>
Date: Sat, 7 Nov 2015 03:17:38 -0800
Message-ID: <CAG=op9dkEo6fn-dPqNHLgnoO6b=sfYJju6Exm6vXdViLsOk6Rw@mail.gmail.com>
From: Chaitanya Dhere <dherechaitanya@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Missing config.txt in rpi-basic-image.bb
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
X-List-Received-Date: Sat, 07 Nov 2015 11:17:44 -0000
Content-Type: text/plain; charset=UTF-8

Hello,
         Thanks for your input. After doing a loopback mount, I was
able to locate the config.txt in that first partition. I modified that
config.txt as required and it worked. But the same modification when
done in the config.txt file which I created under boot directory
didn't work. Seems that only the config.txt in the first partition is
being read during boot-up.

Thanks,
Chaitanya

On Sun, Nov 1, 2015 at 5:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hi,
>
>
> On Mon, Nov 2, 2015 at 2:09 AM, Chaitanya Dhere
> <dherechaitanya@gmail.com> wrote:
>> Hello ,
>>          I tried creating one config.txt. But even after that and
>> rebooting I'm unable to see a i2c-1 device under /dev.
>>
>> Yes I checked, it's not present on the board under /boot . In
>> tmp/deploy/images/raspberrypi2/bcm2835-bootfiles, I'm able to see
>> config.txt along with bcm2835-bootfiles-20150206.stamp,
>> bcm2835-bootfiles-20150206.stamp, cmdline.txt, fixup_cd.dat,
>> fixup.dat,  fixup_x.dat,  start_cd.elf,  start.elf,  and start_x.elf.
>>
>
> Can you try on master too? As well, could you please mount the sdcard
> image (loopback mount) and check the content of the first partition?
>
> ---
> Andrei

