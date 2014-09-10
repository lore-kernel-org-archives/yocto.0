Return-Path: <tomek82221@gazeta.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EF7AE00832; Wed, 10 Sep 2014 14:20:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tomek82221[at]gazeta.pl)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.51 listed in list.dnswl.org]
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52D47E0034C
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 14:20:12 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id i13so85207qae.24
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 14:20:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=vMDOodqFklhB8I34rQIUfTsQmzJ++i9ibK2wJkRdPnw=;
	b=kmFXlIvEoU3ya8ZgZL9F6LM5QsLI6Jl3tKCvKJnUXry0WgY2skJIB1G1LXhIV95Edb
	oelmSa6T11eQrGEfR0s+/nasOp2nbJpZcOFIoKtg9xMqN4LFVlKW4lrxWCgJup22dp0r
	suyhWcITGD6MJ1E3+/mqtlIFck8HVLoi5sIVt8gjwXpJyauWcffnHjguQ6Y1gXi1wGvi
	jaSBtANjQkbuym3GUvAJz4XJ5ULXN+n+9qUisu4lMahUZBos5h35lsiZItjFzbvKJdmS
	CG087DePWaDnj+Qn2Zf8yBHmBj95EIhBNRQw/mVLV52vNagw2fOin3TU8QS09a4R1mTq
	LEOw==
X-Gm-Message-State: ALoCoQnCKu1g3rXlPeXKObKt/O0EJfGuNtWobWiqRPcIewO7Nfw0JQ99y5YqSR6jmFoLK5PdBfee
MIME-Version: 1.0
X-Received: by 10.224.75.73 with SMTP id x9mr65036695qaj.63.1410384011242;
	Wed, 10 Sep 2014 14:20:11 -0700 (PDT)
Received: by 10.140.16.15 with HTTP; Wed, 10 Sep 2014 14:20:11 -0700 (PDT)
In-Reply-To: <20140910183345.GA3713@comp-006-thk.lan>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
	<20140910183345.GA3713@comp-006-thk.lan>
Date: Wed, 10 Sep 2014 23:20:11 +0200
Message-ID: <CAKC+oqXCNOJMNvR2_9oyfzc+ua5tT-GuRUTHOTEUb64dYTCsXA@mail.gmail.com>
From: TakkTakk <tomek82221@gazeta.pl>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
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
X-List-Received-Date: Wed, 10 Sep 2014 21:20:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Layers :
BBLAYERS ?=3D " \
  /home/fil/Pulpit/yocto/poky/meta \
  /home/fil/Pulpit/yocto/poky/meta-yocto \
  /home/fil/Pulpit/yocto/poky/meta-beagleboard/common-bsp \
  /home/fil/Pulpit/yocto/poky/meta-openembedded/meta-oe \
  /home/fil/Pulpit/yocto/poky/meta-beagleboard/meta-beagleboard-extras \
  /home/fil/Pulpit/yocto/poky/meta-hello \
  "

I can't open serial console.

2014-09-10 20:33 GMT+02:00 Maciej Borzecki <maciej.borzecki@open-rnd.pl>:
> On 09/10 18:39, TakkTakk wrote:
>> yocto buit with INSANE_SKIP_${PN} +=3D "installed-vs-shipped" with no er=
ror.
>> then i copied:
>> cp MLO /media/boot/MLO
>> cp u-boot-beaglebone.img /media/boot/u-boot.img
>> sudo tar -xvf core-image-base-beaglebone.tar.gz -C /media/root/
>>
>> then, inserted microSD card to Beaglebone Black and bbb not boot. 4
>> led lit steadily and nothing happens. I have cable hdmi connected to
>> monitor.
>>
>> then i did
>> $ cp uImage /media/boot
>> $ mkdir /media/boot/dtbs
>> $ cp uImage-am335x-boneblack.dtb /media/boot/dtbs/am335x-boneblack.dtb
>>
>> $ cp uEnv.txt /media/boot
>>
>> uEnv.txt from here
>> http://www.embarcados.com.br/beaglebone-black-yocto/ but i changed
>> zImage to uImage and still I can not boot the SD Card on the Beagle.
>> All four LEDs stay lit steadily.
>> What am i doing wrong?
>
> Can you list the layers enabled in your build and post serial console
> output?
>
> Issues that I've seen so far:
> - SD card layout (even block count of boot partition, try checking
> meta-ti archive for my posts)
> - uboot not restoring partition sizes (but I've only seen it on meta-ti
> master, Peter Bigot posted a patch that fixed the problem, AFAIK the
> patch should already be meta-ti, affected uboot 2014.07)
> - kernel overwriting device tree in mem,
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6165 but apparently
> it's already fixed in master & 1.6.1
>
>>
>>
>> 2014-09-09 19:28 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
>> >
>> > On Tue, Sep 9, 2014 at 12:53 PM, tomek82221 Gazeta.pl <tomek82221@gaze=
ta.pl>
>> > wrote:
>> >>
>> >> ok, but where i can add INSANE_SKIP_${PN} +=3D "installed-vs-shipped"
>> >> in meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.=
8.bb
>> >> ?
>> >> or create
>> >> meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.b=
bappend
>> >> ?
>> >>
>> >> thanks for your help
>> >
>> >
>> > Both will work.
>> >
>> >
>> > Regards,
>> >
>> > --
>> > *dS
>> > Diego Sueiro
>> >
>> > Administrador do Embarcados
>> > www.embarcados.com.br
>> >
>> > /*long live rock 'n roll*/
>>
>>
>>
>> --
>> TakTak
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Maciej Borz=C4=99cki
> Senior Software Developer at Open-RnD Sp. z o.o., Poland
> www.open-rnd.pl
> mobile: +48 889 117 365, fax: +48 42 657 9079
>
>
> Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe
> zawiera=C4=87 chronione prawem lub poufne informacje i zosta=C5=82a
> wys=C5=82ana wy=C5=82=C4=85cznie do wiadomo=C5=9Bci i u=C5=BCytku os=C3=
=B3b, do kt=C3=B3rych
> zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 zosta=C5=82a ot=
rzymana
> przypadkowo zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=
=B3b
> trzecich. W takim przypadku uprasza si=C4=99 o natychmiastowe
> zniszczenie wiadomo=C5=9Bci oraz poinformowanie nadawcy o
> zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwrotnej.
> Dzi=C4=99kujemy.
>
> This message, including any attachments hereto,
> may contain privileged or confidential information and is sent
> solely for the attention and use of the intended addressee(s).
> If you are not an intended addressee, you may neither use this
> message nor copy or deliver it to anyone. In such case, you
> should immediately destroy this message and kindly notify the
> sender by reply email. Thank you.



--=20
TakTak

