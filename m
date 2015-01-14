Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ACB3E0083C; Wed, 14 Jan 2015 12:50:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  2.7 FSL_HELO_FAKE FSL_HELO_FAKE
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6580E002F9
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 12:50:08 -0800 (PST)
Received: by mail-la0-f43.google.com with SMTP id s18so10304036lam.2
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 12:50:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=tQDmTzl+z7V/F4ezvzY9JCDIqLWozYKiUBJeFUteICY=;
	b=VHItesBg5VQaVuu1Wyb+VALwfPBPKBpBun7Y/O/IUqvSEFRH80i2yN4Q5393Fl+xTD
	xd2uBH/gnDDbWMWdk5auCcOuqRD6U9KR8hMqGia5RlUb7x8CioQAqWeCbXtYvvNq9t0i
	EbZHU4VL0i6xEerHdQuASye4WMkPmcDcfqrF4H6BxrScT8ZviVxN3rbt/zOgEjLvDnVq
	12rxDPyxeng0JjubUpIQNTqgwo2LMDKgRGkmUl8dzgT+Q5z5bzFN9a3qgjhUhv2KwiLr
	W0KxO/rcsKS4qEI8tBXUrTL9AfmK9UcBmUKmYPI7RKGL7uEW7r1cz8JL9cDSwgctnZ9p
	QFIw==
X-Gm-Message-State: ALoCoQkWkcozokpS/NFlHnUICNc9BmOETc7O4sVj11LtXlW5o83eQvJo0lFZtb+lr7Qy2u87ChL8
X-Received: by 10.112.12.65 with SMTP id w1mr6097329lbb.68.1421268607011;
	Wed, 14 Jan 2015 12:50:07 -0800 (PST)
Received: from gmail.com ([192.36.80.8]) by mx.google.com with ESMTPSA id
	jq14sm2094934lab.14.2015.01.14.12.50.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Jan 2015 12:50:06 -0800 (PST)
Date: Wed, 14 Jan 2015 21:50:04 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Message-ID: <20150114205004.GC4735@gmail.com>
References: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
	<20150107112618.GC4631@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <20150107112618.GC4631@localhost.localdomain>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Maciek Borzecki <maciek.borzecki@gmail.com>,
	Dan McGregor <dan.mcgregor@usask.ca>
Subject: Re: [meta-raspberrypi][PATCH 0/2] wic support
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
X-List-Received-Date: Wed, 14 Jan 2015 20:50:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Jan 07, 2015 at 12:26:18PM +0100, Maciej Borzecki wrote:
> ping
>

Reviewing this now. Thanks for reminding me.

> On 12/10 13:12, Maciej Borzecki wrote:
> > The patch series adds support for wic image build tool. The patches allow for a
> > bootable SD card image to be built with wic, without any additional changes.
> >
> > The first patch defines an IMAGE_BOOT_FILES variable that will pick up all of
> > bcm2835 boot files and the kernel file (renaming it to kernel.img). The patch
> > uses glob pattern and thus depends on a patch series posted here:
> > http://lists.openembedded.org/pipermail/openembedded-core/2014-December/099732.html
> >
> > The second patch adds a kickstart file that mirrors the layout defined in
> > sdcard_image-rpi.bbclass. Note that this patch is mainly for reference, as the
> > default sdimage-bootpart.wks from Poky will also produce a bootable image.
> >
> > Maciej Borzecki (2):
> >   raspberrypi.conf: add IMAGE_BOOT_FILES
> >   sdimage-raspberrypi.wks: kickstart image definition
> >
> >  conf/machine/raspberrypi.conf                        | 2 ++
> >  scripts/lib/image/canned-wks/sdimage-raspberrypi.wks | 6 ++++++
> >  2 files changed, 8 insertions(+)
> >  create mode 100644 scripts/lib/image/canned-wks/sdimage-raspberrypi.wks
> >
> > --
> > 1.9.3
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Maciej Borzęcki
> Senior Software Developer at Open-RnD Sp. z o.o., Poland
> www.open-rnd.pl
> mobile: +48 889 117 365, fax: +48 42 657 9079
>
>
> Niniejsza wiadomość wraz z załącznikami może
> zawierać chronione prawem lub poufne informacje i została
> wysłana wyłącznie do wiadomości i użytku osób, do których
> została zaadresowana. Jeśli wiadomość została otrzymana
> przypadkowo zabrania się jej kopiowania lub rozsyłania do osób
> trzecich. W takim przypadku uprasza się o natychmiastowe
> zniszczenie wiadomości oraz poinformowanie nadawcy o
> zaistniałej sytuacji za pomocą wiadomości zwrotnej.
> Dziękujemy.
>
> This message, including any attachments hereto,
> may contain privileged or confidential information and is sent
> solely for the attention and use of the intended addressee(s).
> If you are not an intended addressee, you may neither use this
> message nor copy or deliver it to anyone. In such case, you
> should immediately destroy this message and kindly notify the
> sender by reply email. Thank you.

--
Andrei Gherzan

