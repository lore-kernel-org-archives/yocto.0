Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99BDAE00874; Wed,  7 Jan 2015 03:26:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D80C9E00823
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 03:26:22 -0800 (PST)
Received: from localhost (unknown [46.170.72.194])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 8896A2D6B05;
	Wed,  7 Jan 2015 12:26:19 +0100 (CET)
Date: Wed, 7 Jan 2015 12:26:18 +0100
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.ro>,
	Dan McGregor <dan.mcgregor@usask.ca>, Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20150107112618.GC4631@localhost.localdomain>
References: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
MIME-Version: 1.0
In-Reply-To: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
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
X-List-Received-Date: Wed, 07 Jan 2015 11:26:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

ping

On 12/10 13:12, Maciej Borzecki wrote:
> The patch series adds support for wic image build tool. The patches allow for a
> bootable SD card image to be built with wic, without any additional changes.
>
> The first patch defines an IMAGE_BOOT_FILES variable that will pick up all of
> bcm2835 boot files and the kernel file (renaming it to kernel.img). The patch
> uses glob pattern and thus depends on a patch series posted here:
> http://lists.openembedded.org/pipermail/openembedded-core/2014-December/099732.html
>
> The second patch adds a kickstart file that mirrors the layout defined in
> sdcard_image-rpi.bbclass. Note that this patch is mainly for reference, as the
> default sdimage-bootpart.wks from Poky will also produce a bootable image.
>
> Maciej Borzecki (2):
>   raspberrypi.conf: add IMAGE_BOOT_FILES
>   sdimage-raspberrypi.wks: kickstart image definition
>
>  conf/machine/raspberrypi.conf                        | 2 ++
>  scripts/lib/image/canned-wks/sdimage-raspberrypi.wks | 6 ++++++
>  2 files changed, 8 insertions(+)
>  create mode 100644 scripts/lib/image/canned-wks/sdimage-raspberrypi.wks
>
> --
> 1.9.3
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Maciej Borzęcki
Senior Software Developer at Open-RnD Sp. z o.o., Poland
www.open-rnd.pl
mobile: +48 889 117 365, fax: +48 42 657 9079


Niniejsza wiadomość wraz z załącznikami może
zawierać chronione prawem lub poufne informacje i została
wysłana wyłącznie do wiadomości i użytku osób, do których
została zaadresowana. Jeśli wiadomość została otrzymana
przypadkowo zabrania się jej kopiowania lub rozsyłania do osób
trzecich. W takim przypadku uprasza się o natychmiastowe
zniszczenie wiadomości oraz poinformowanie nadawcy o
zaistniałej sytuacji za pomocą wiadomości zwrotnej.
Dziękujemy.

This message, including any attachments hereto,
may contain privileged or confidential information and is sent
solely for the attention and use of the intended addressee(s).
If you are not an intended addressee, you may neither use this
message nor copy or deliver it to anyone. In such case, you
should immediately destroy this message and kindly notify the
sender by reply email. Thank you.

