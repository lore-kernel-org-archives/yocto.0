Return-Path: <tomek82221@gazeta.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66903E00799; Fri, 12 Sep 2014 14:59:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tomek82221[at]gazeta.pl)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7188E006DB
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 14:59:03 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id j107so1455505qga.32
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 14:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=rOj7EX4AScwxSMzjmHx6md9pVL9hWfupM5nFAl5kEm0=;
	b=hE93yYbaqpVszQecBB8h2qL4MDld45fbM5i5MeZpImztKzHYzAyDGwzs0c+OkId9YV
	wlN6sj83Zbb/G+ROxzz+reXHfqS9oF7g+xoZ7eHltO2BqJ1HAbmTkYLUXT4in3RqPccC
	1+yEauUwvNGWH0gaelt8SPux8qEpNtS1oCHnRRg8/28HfzWQepogBS33Fv4egf8has9x
	+nX8Xrempc6OASssPHZ48lKXcLY5xLXJAorSsnnbJfV0YOhNhGR5n+ylD5QGOAT7U4pW
	M8/Xi/hysPO2JlO9n2u+LbqzyGJ8G8lGX7pyHVQWD5RzhQNpkh8FRW4yghdZtJM6JcNW
	d4Rg==
X-Gm-Message-State: ALoCoQmG9yWRpacI/MWCYOeU+XlllX2Lk/BRFFUAhE6wgou+k3HLwOkASk3sG0DHh/lP/P8STwdr
MIME-Version: 1.0
X-Received: by 10.224.80.65 with SMTP id s1mr16017281qak.41.1410559143062;
	Fri, 12 Sep 2014 14:59:03 -0700 (PDT)
Received: by 10.140.16.15 with HTTP; Fri, 12 Sep 2014 14:59:02 -0700 (PDT)
In-Reply-To: <CAMCfZKF8_BWneiG1PpYoRp16=dwQqw6w5v=-REQ7dKC1_4SSPw@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
	<CAMCfZKF=bqW=8zWFgCdrUKGtvZt6PrMa7NOpVRAUxLL+Gm6BtA@mail.gmail.com>
	<CAKC+oqVYWwraL2V28RCq0ESVwnHB+SqeHZAhQuZ8Ev82R2UqHQ@mail.gmail.com>
	<CAMCfZKF8_BWneiG1PpYoRp16=dwQqw6w5v=-REQ7dKC1_4SSPw@mail.gmail.com>
Date: Fri, 12 Sep 2014 23:59:02 +0200
Message-ID: <CAKC+oqW74-KjA3gfy+U+8SmDiLRx3Fm9OFZjs-LOB1+ffq=eAg@mail.gmail.com>
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
X-List-Received-Date: Fri, 12 Sep 2014 21:59:06 -0000
Content-Type: text/plain; charset=UTF-8

i build core-image-base
My uEnv.txt content :

kernel_file=uImage
console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 rw
mmcrootfstype=ext4 rootwait

loaduimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} /dtbs/${fdtfile}

mmcargs=setenv bootargs console=${console} root=${mmcroot}
rootfstype=${mmcrootfstype} ${optargs}
uenvcmd=run loaduimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}

optargs=quiet drm.debug=7 capemgr.enable_partno=BB-UART4
--------------------------------------

files inside the FAT partition:
uEnv.txt
uImage
u-boot.img
MLO
dtbs/am335x-boneblack.dtb



2014-09-12 11:55 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
>
> On Thu, Sep 11, 2014 at 10:24 AM, TakkTakk <tomek82221@gazeta.pl> wrote:
>>
>> Yes I have ubuntu on eMMC, when i don't press S2 ubuntu will be boot.
>> When i press switch S2 yocto don't boot and LED USR0 , USR1, USR2,
>> USR3 stay lit steadily.
>> I boot yocto 1.6 (but without layer meta-beagleboard) on sdcard and
>> everything was ok.
>
>
> Without the console serial cable (on UART0) is hard to guess what's going
> wrong.
>
> What is your o uEnv.txt content and the files inside the FAT partition?
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

