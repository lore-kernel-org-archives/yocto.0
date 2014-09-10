Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAA07E00833; Wed, 10 Sep 2014 11:34:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFE7DE00819
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 11:33:50 -0700 (PDT)
Received: from localhost (unknown [78.8.186.116])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 7B2D331604AE;
	Wed, 10 Sep 2014 20:33:46 +0200 (CEST)
Date: Wed, 10 Sep 2014 20:33:45 +0200
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: TakkTakk <tomek82221@gazeta.pl>
Message-ID: <20140910183345.GA3713@comp-006-thk.lan>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
User-Agent: Mutt/1.5.22.1 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Wed, 10 Sep 2014 18:34:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On 09/10 18:39, TakkTakk wrote:
> yocto buit with INSANE_SKIP_${PN} += "installed-vs-shipped" with no error.
> then i copied:
> cp MLO /media/boot/MLO
> cp u-boot-beaglebone.img /media/boot/u-boot.img
> sudo tar -xvf core-image-base-beaglebone.tar.gz -C /media/root/
>
> then, inserted microSD card to Beaglebone Black and bbb not boot. 4
> led lit steadily and nothing happens. I have cable hdmi connected to
> monitor.
>
> then i did
> $ cp uImage /media/boot
> $ mkdir /media/boot/dtbs
> $ cp uImage-am335x-boneblack.dtb /media/boot/dtbs/am335x-boneblack.dtb
>
> $ cp uEnv.txt /media/boot
>
> uEnv.txt from here
> http://www.embarcados.com.br/beaglebone-black-yocto/ but i changed
> zImage to uImage and still I can not boot the SD Card on the Beagle.
> All four LEDs stay lit steadily.
> What am i doing wrong?

Can you list the layers enabled in your build and post serial console
output?

Issues that I've seen so far:
- SD card layout (even block count of boot partition, try checking
meta-ti archive for my posts)
- uboot not restoring partition sizes (but I've only seen it on meta-ti
master, Peter Bigot posted a patch that fixed the problem, AFAIK the
patch should already be meta-ti, affected uboot 2014.07)
- kernel overwriting device tree in mem,
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6165 but apparently
it's already fixed in master & 1.6.1

>
>
> 2014-09-09 19:28 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
> >
> > On Tue, Sep 9, 2014 at 12:53 PM, tomek82221 Gazeta.pl <tomek82221@gazeta.pl>
> > wrote:
> >>
> >> ok, but where i can add INSANE_SKIP_${PN} += "installed-vs-shipped"
> >> in meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb
> >> ?
> >> or create
> >> meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bbappend
> >> ?
> >>
> >> thanks for your help
> >
> >
> > Both will work.
> >
> >
> > Regards,
> >
> > --
> > *dS
> > Diego Sueiro
> >
> > Administrador do Embarcados
> > www.embarcados.com.br
> >
> > /*long live rock 'n roll*/
>
>
>
> --
> TakTak
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

