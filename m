Return-Path: <tomek82221@gazeta.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 096E8E00837; Thu, 11 Sep 2014 06:24:42 -0700 (PDT)
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
	*      [209.85.192.48 listed in list.dnswl.org]
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9821FE0034C
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 06:24:31 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id q108so3618190qgd.35
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 06:24:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=mYcHEbDIZK/Z4V3A+R7h1zKIcLs9ignvTQ4Ni/HyZtg=;
	b=lHU5J3ecfOhwI4OF8TFWysylNtocE9BYdOprQUIQLQ4DXvu1skSvEON0CvolH27QY0
	EiXXW/CW4ozLVVnmQ1KWcbjYvQmBqZK+eJH5FmsJt8tO86f2a47+2MO6t5ckuqqy+yb7
	77fkvuoUu8I2sNnfOvvNDJgkdPju0eUPa8yBsUlrHMiJIfRqiHqTZ58PTeJ5uf1fV8mn
	HEb/3Iqq/4UX8a6TBmbZx7gtqJXfoo6G3afFTyDVhqaxpXCxT3ftlUPbe0xTLZa1esjs
	we5LLE9/M+rhJ1VhVs/XfSSUHU2uxwotN6YBp74gsmGmB5kP9kBuuLGipt9gd/JV4yqO
	GTeg==
X-Gm-Message-State: ALoCoQmraK1WChxeQ1xWR4wR9S++hf5+VV4EGlmWKyiGAFJnr8WOZCV6fKA2pByIdA3YS+FlkV7L
MIME-Version: 1.0
X-Received: by 10.224.80.65 with SMTP id s1mr1320496qak.41.1410441865894; Thu,
	11 Sep 2014 06:24:25 -0700 (PDT)
Received: by 10.140.16.15 with HTTP; Thu, 11 Sep 2014 06:24:25 -0700 (PDT)
In-Reply-To: <CAMCfZKF=bqW=8zWFgCdrUKGtvZt6PrMa7NOpVRAUxLL+Gm6BtA@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
	<CAMCfZKF=bqW=8zWFgCdrUKGtvZt6PrMa7NOpVRAUxLL+Gm6BtA@mail.gmail.com>
Date: Thu, 11 Sep 2014 15:24:25 +0200
Message-ID: <CAKC+oqVYWwraL2V28RCq0ESVwnHB+SqeHZAhQuZ8Ev82R2UqHQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 11 Sep 2014 13:24:42 -0000
Content-Type: text/plain; charset=UTF-8

Yes I have ubuntu on eMMC, when i don't press S2 ubuntu will be boot.
When i press switch S2 yocto don't boot and LED USR0 , USR1, USR2,
USR3 stay lit steadily.
I boot yocto 1.6 (but without layer meta-beagleboard) on sdcard and
everything was ok.

2014-09-11 11:19 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
> TakTak,
>
> On Wed, Sep 10, 2014 at 1:39 PM, TakkTakk <tomek82221@gazeta.pl> wrote:
>>
>> yocto buit with INSANE_SKIP_${PN} += "installed-vs-shipped" with no error.
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
>
> Do you have another image installed on eMMC? If yes try to power up the
> board with sdcard inserted and the switch S2 pressed (near sdcard slot).
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

