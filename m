Return-Path: <dherechaitanya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB152E00A81; Sun,  1 Nov 2015 17:09:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dherechaitanya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 294F5E009EF
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2015 17:09:30 -0800 (PST)
Received: by lbbwb3 with SMTP id wb3so78089827lbb.1
	for <yocto@yoctoproject.org>; Sun, 01 Nov 2015 17:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=b6GL6h6vWSOSSuBEyt23Dr8Yly7eD0ibGIecLDnouyo=;
	b=zgJ2YaLCUSaheJIry+ALB97B+WJrV6abt095+9reCN2SDRXEvF7ac1dwYXPya8D8aS
	kt09FEHrShhvRnCFcghO3dlnKxfsQGQ+56Fzsb1lW124IiCUGkvUasyJ39K05GWTzJOb
	bx7r253eSmk9tSs4F5BFzbr/PrsbQc4qiPvbX9WHI3YNRT4zg/6M88D1eog9juvQRlSg
	xfzkj4kxApW4yehgqqXFlifJicBP3k/ccCIrnOVinMa/xcODQqZRCVAIRiDJjs+CI+Dk
	np9VsGrPJzJXDPzwcI1of942mJN+nMi+ZGQTRnobcYNfrL3ZFKpmGQBHMwkBbFBOc24j
	0Ntw==
MIME-Version: 1.0
X-Received: by 10.112.190.35 with SMTP id gn3mr8679736lbc.96.1446426568356;
	Sun, 01 Nov 2015 17:09:28 -0800 (PST)
Received: by 10.25.39.20 with HTTP; Sun, 1 Nov 2015 17:09:28 -0800 (PST)
In-Reply-To: <CAK18fxFTcYS0YLAbPnEycfUBBD3GxdRF_BbGX=332fnYd=eJLQ@mail.gmail.com>
References: <CAG=op9dOD9-phw9V+ceuvLhDxuPYQJPmNUJrrneC9_ywS+f5aw@mail.gmail.com>
	<CAMKF1srraL3_z6_AOG9Yo+P_5FY3E9Lv-ZywyQd+CGt7UsK77w@mail.gmail.com>
	<CAK18fxFTcYS0YLAbPnEycfUBBD3GxdRF_BbGX=332fnYd=eJLQ@mail.gmail.com>
Date: Sun, 1 Nov 2015 17:09:28 -0800
Message-ID: <CAG=op9c3ZCzppmDx__AMqTrv09Yf73F3830h-Ji7OqwxTZAOsQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 02 Nov 2015 01:09:34 -0000
Content-Type: text/plain; charset=UTF-8

Hello ,
         I tried creating one config.txt. But even after that and
rebooting I'm unable to see a i2c-1 device under /dev.

Yes I checked, it's not present on the board under /boot . In
tmp/deploy/images/raspberrypi2/bcm2835-bootfiles, I'm able to see
config.txt along with bcm2835-bootfiles-20150206.stamp,
bcm2835-bootfiles-20150206.stamp, cmdline.txt, fixup_cd.dat,
fixup.dat,  fixup_x.dat,  start_cd.elf,  start.elf,  and start_x.elf.

I'm working on fido branch on b896a7da70dd7a16ba7ffd664f7747cb37e1d142.

Thanks,
Chaitanya

On Sun, Nov 1, 2015 at 10:17 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hi,
>
> On Sun, Nov 1, 2015 at 4:41 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Sun, Nov 1, 2015 at 5:41 AM, Chaitanya Dhere
>> <dherechaitanya@gmail.com> wrote:
>>> Hello all,
>>>               I am working on rpi-basic-image. After flashing this
>>> image, raspberry pi 2 boots up fine. But I'm unable to locate
>>> config.txt under /boot directory. I want to put :
>>>
>>> dtparam=i2c1=on
>>
>> just create one and see what happens.
>>
>
> Indeed that's definitely one way to do it.
>
> But I'm wondering how is this possible? The image type class dumps the
> entire bootfiles directory in the first partition. And the rpi
> bootfiles depend on this txt configuration file which gets deployed in
> the same directory. So I'm really confused by this behavior. Anyway, I
> just ran a new build and baked basic image which, in my setup,
> includes the configuration txt file. Are you sure that the file is not
> deployed? Did you check
> tmp/deploy/images/raspberrypi2/bcm2835-bootfiles? What files do you
> have there? As well what revisions of meta-raspberrypi are you on?
>
> Regards,
> Andrei

