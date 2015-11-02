Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5F11E00A81; Sun,  1 Nov 2015 17:13:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AB96E009EF
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2015 17:13:45 -0800 (PST)
Received: by lfgh9 with SMTP id h9so8559983lfg.1
	for <yocto@yoctoproject.org>; Sun, 01 Nov 2015 17:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan_ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=d3qKRyTF+5JHC1g8cVZQoIuzOtuMk47LeyPZyjzsLkY=;
	b=rx8p40+sZ7XugR0OjjXBblbLJq2mFupiQArHZ1d45P7fadJ95FqjL6gqpgBQOdo56i
	RTGYiJbcm/AObN6iItGeOP09Fmfqgrr/ni3eBn1XDwvzU074JQvsSG3Ep9Ta5/5jrw5L
	AwhkSDlGdlrqi19RiMZkRk44eVgkyYrenP8SFRd1yUmV9QwHxZkHIABXv8Ch0MAYbVfK
	eFZ+khAWY6CuGGVSnCKGnFdpaOpwgnM/nZjOnC3+vgXuEmIYhM6VuIBsp2R/csMKugVK
	5rUmtEZUI7V88K5w2TMtA6ozZKQ8sJK0wcmIOBMyIlGgRsm+X5aJb4VRAdygdFEp8615
	uujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=d3qKRyTF+5JHC1g8cVZQoIuzOtuMk47LeyPZyjzsLkY=;
	b=f0JFdmIzhjcNNY5hiGtF2wE+Qnh31hTTnYMK6hGLviC5+1z9xMpmh27g9wnDoaE58x
	xsCx13rOjk6YG/m2ICtPpc9QqneOwBkDGqdjFiSlG9xnJxoZwhtwbmIuIYMAWE4Auc5d
	zODXmoFAyHDzD3zoStxnP4sBQgKxfxDrVoYJ/IhfWjdLORHHIBbJRA3SLGTQCBXfa5Oi
	rDRJ2TCjA1FVzs54cUXNUXdKJDq1Bu9Q6z7xlKUzzAY9+T1AZCCEwth5foIRt72D+d0x
	ZooKZBm1B8WbAsFd3sxl/63q6k8shdC5onefj2jw9MIMA+CsRVPly2naxbVMXpOUyK9M
	teTw==
X-Gm-Message-State: ALoCoQl3zNBAw2rl6Txcdov35DnuHnSQ/9Jcj23wO9yyoOULPsdGM8e5FpoIS+FP8SJ3Gj3RJMiI
X-Received: by 10.25.132.204 with SMTP id g195mr5892540lfd.58.1446426824273;
	Sun, 01 Nov 2015 17:13:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.61.195 with HTTP; Sun, 1 Nov 2015 17:13:04 -0800 (PST)
X-Originating-IP: [92.217.115.210]
In-Reply-To: <CAG=op9c3ZCzppmDx__AMqTrv09Yf73F3830h-Ji7OqwxTZAOsQ@mail.gmail.com>
References: <CAG=op9dOD9-phw9V+ceuvLhDxuPYQJPmNUJrrneC9_ywS+f5aw@mail.gmail.com>
	<CAMKF1srraL3_z6_AOG9Yo+P_5FY3E9Lv-ZywyQd+CGt7UsK77w@mail.gmail.com>
	<CAK18fxFTcYS0YLAbPnEycfUBBD3GxdRF_BbGX=332fnYd=eJLQ@mail.gmail.com>
	<CAG=op9c3ZCzppmDx__AMqTrv09Yf73F3830h-Ji7OqwxTZAOsQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 2 Nov 2015 02:13:04 +0100
Message-ID: <CAK18fxExsnDc9rGVcjNNp5uELfy8eWNg3ZfUS=e7kCog33bLCA@mail.gmail.com>
To: Chaitanya Dhere <dherechaitanya@gmail.com>
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
X-List-Received-Date: Mon, 02 Nov 2015 01:13:49 -0000
Content-Type: text/plain; charset=UTF-8

Hi,


On Mon, Nov 2, 2015 at 2:09 AM, Chaitanya Dhere
<dherechaitanya@gmail.com> wrote:
> Hello ,
>          I tried creating one config.txt. But even after that and
> rebooting I'm unable to see a i2c-1 device under /dev.
>
> Yes I checked, it's not present on the board under /boot . In
> tmp/deploy/images/raspberrypi2/bcm2835-bootfiles, I'm able to see
> config.txt along with bcm2835-bootfiles-20150206.stamp,
> bcm2835-bootfiles-20150206.stamp, cmdline.txt, fixup_cd.dat,
> fixup.dat,  fixup_x.dat,  start_cd.elf,  start.elf,  and start_x.elf.
>

Can you try on master too? As well, could you please mount the sdcard
image (loopback mount) and check the content of the first partition?

---
Andrei

