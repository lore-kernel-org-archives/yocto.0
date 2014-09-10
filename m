Return-Path: <tomek82221@gazeta.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E54BDE00833; Wed, 10 Sep 2014 09:39:54 -0700 (PDT)
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
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4A1FE00819
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 09:39:43 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id i17so19858656qcy.12
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 09:39:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=in8OytCGUwEy+sW7QTN8f9H/gD9tfWxEz4P2MSn76FE=;
	b=Cb8CgDXRyvo097YU83KkF2b+4XLx7FTUfMGYmFWWN1Yw+zx5fYimq5dk43Dq3/AwSv
	GXR6D5VwwBpqfBsNvYLVcnYkqtNRxxBnTfzLqk66CWcyYjwRClT8ZzeHy0mDUwWXy1B1
	9IGfsrBu+2exDFxQgxXW+F4p8Dvflt6/exIMRkpM7/LHqyZhO8dpiWoSUMxUYMI+x1Tt
	ZjMnzv8ibSb9S8nkcfPJ3gs2ySJ+BhP4J7Lx0V/giQx0+PkUKmsj4RcX42vBOgC+uYhn
	KY9s/AVenVh6boTEvm7Vb2h7J/6m6ZW0ijA+o/eiG430g0Aj9/IK34lIUlnjKaUb6lA5
	ADfA==
X-Gm-Message-State: ALoCoQme7uHc5+NwkdxtE1Yogwm2Pn6YBqgWYv49dHa8Af46YT0xhr4ATIGQW3T6V3LXxpyxSNMf
MIME-Version: 1.0
X-Received: by 10.229.100.69 with SMTP id x5mr49616308qcn.6.1410367182250;
	Wed, 10 Sep 2014 09:39:42 -0700 (PDT)
Received: by 10.140.16.15 with HTTP; Wed, 10 Sep 2014 09:39:42 -0700 (PDT)
In-Reply-To: <CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
Date: Wed, 10 Sep 2014 18:39:42 +0200
Message-ID: <CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
From: TakkTakk <tomek82221@gazeta.pl>
To: Diego Sueiro <diego.sueiro@gmail.com>
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
X-List-Received-Date: Wed, 10 Sep 2014 16:39:55 -0000
Content-Type: text/plain; charset=UTF-8

yocto buit with INSANE_SKIP_${PN} += "installed-vs-shipped" with no error.
then i copied:
cp MLO /media/boot/MLO
cp u-boot-beaglebone.img /media/boot/u-boot.img
sudo tar -xvf core-image-base-beaglebone.tar.gz -C /media/root/

then, inserted microSD card to Beaglebone Black and bbb not boot. 4
led lit steadily and nothing happens. I have cable hdmi connected to
monitor.

then i did
$ cp uImage /media/boot
$ mkdir /media/boot/dtbs
$ cp uImage-am335x-boneblack.dtb /media/boot/dtbs/am335x-boneblack.dtb

$ cp uEnv.txt /media/boot

uEnv.txt from here
http://www.embarcados.com.br/beaglebone-black-yocto/ but i changed
zImage to uImage and still I can not boot the SD Card on the Beagle.
All four LEDs stay lit steadily.
What am i doing wrong?


2014-09-09 19:28 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
>
> On Tue, Sep 9, 2014 at 12:53 PM, tomek82221 Gazeta.pl <tomek82221@gazeta.pl>
> wrote:
>>
>> ok, but where i can add INSANE_SKIP_${PN} += "installed-vs-shipped"
>> in meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb
>> ?
>> or create
>> meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bbappend
>> ?
>>
>> thanks for your help
>
>
> Both will work.
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
>
> /*long live rock 'n roll*/



-- 
TakTak

