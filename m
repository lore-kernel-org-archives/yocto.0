Return-Path: <tomek82221@gazeta.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B147E00566; Tue,  9 Sep 2014 08:53:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tomek82221[at]gazeta.pl)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC08E0049D
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 08:53:40 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id a108so5977367qge.30
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 08:53:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=2w5G8Q2kKg+NVLk1LtXzg5+2ilrtRU3veB6Yc5IBXy0=;
	b=LOCSqZ3fMuXuSJxirdTqak273LfhY9CgMQv7JyKz+pwDm9GU2UokLiSA50gM0ERzce
	V5uJ1eh+LJLCv83r6AHvvwKDlK7IhQZ1PhtWLCAbnbNsCa9C7pG0RnuhW+Mouf5Rzp02
	PQ6c5Zzl9AUaCVDvexT8zZ7KuLByelLZPMVPyCvCfVpDbI3hXzrc3ZZ4zGFkEzdWhrL5
	rg6lTCgjAMQOAtd8sEZz34EcEk3TON8CsoUeIFPiNwIOW22CNfPVY5RPxOrXkWCF09rn
	rUgp7fxVbknDEljNsTYQHQygrBHxLqdV04k3cidn1AO3KuxHLAKuYzTPk/ZBqD9kFRmq
	Yd1w==
X-Gm-Message-State: ALoCoQmyODGFcupsGF2UxSnnQEG9is4rJ1jFiBBw2ek8CxubtkzYc6L4Ho8ivr0neKzoNklBNPiZ
MIME-Version: 1.0
X-Received: by 10.140.107.198 with SMTP id h64mr49476102qgf.42.1410278013161; 
	Tue, 09 Sep 2014 08:53:33 -0700 (PDT)
Received: by 10.140.16.15 with HTTP; Tue, 9 Sep 2014 08:53:33 -0700 (PDT)
In-Reply-To: <CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
Date: Tue, 9 Sep 2014 17:53:33 +0200
Message-ID: <CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
From: "tomek82221 Gazeta.pl" <tomek82221@gazeta.pl>
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
X-List-Received-Date: Tue, 09 Sep 2014 15:53:50 -0000
Content-Type: text/plain; charset=UTF-8

ok, but where i can add INSANE_SKIP_${PN} += "installed-vs-shipped"
in meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb ?
or create meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bbappend
?

thanks for your help



2014-09-09 2:38 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
> Hi Chris,
>
> On Mon, Sep 8, 2014 at 2:28 PM, tomek82221 Gazeta.pl <tomek82221@gazeta.pl>
> wrote:
>>
>> Can I use kernel version 3.8, meta-beagleboard as BSP layer in Yocto 1.6 ?
>
> Yes you can.
>
>> Here - https://www.yoctoproject.org/downloads/core/daisy16 is "Linux
>> kernel 3.14 and 3.10 LTSI "
>>
>> I build yocto with
>> BBLAYERS ?= " \
>>   /home/fil/Pulpit/yocto/poky/meta \
>>   /home/fil/Pulpit/yocto/poky/meta-yocto \
>>   /home/fil/Pulpit/yocto/poky/meta-beagleboard/common-bsp \
>>   /home/fil/Pulpit/yocto/poky/meta-openembedded/meta-oe \
>>   "
>>
>> have some errors:
>>
>> ERROR: QA Issue: linux-mainline: Files/directories were installed but
>> not shipped
>>   /lib/firmware/sb16
>>   /lib/firmware/korg
>>   /lib/firmware/sb16/mulaw_main.csp
>>   /lib/firmware/sb16/alaw_main.csp
>>   /lib/firmware/sb16/ima_adpcm_init.csp
>>   /lib/firmware/sb16/ima_adpcm_capture.csp
>>   /lib/firmware/sb16/ima_adpcm_playback.csp
>>   /lib/firmware/korg/k1212.dsp
>> ERROR: QA run found fatal errors. Please consider fixing them.
>> ERROR: Function failed: do_package_qa
>> ERROR: Logfile of failure stored in:
>>
>> /home/fil/Pulpit/yocto/poky/build/tmp/work/beaglebone-poky-linux-gnueabi/linux-mainline/3.8.13-r23a/temp/log.do_package.6509
>> NOTE: recipe linux-mainline-3.8.13-r23a: task do_package: Failed
>> ERROR: Task 88
>> (/home/fil/Pulpit/yocto/poky/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb,
>> do_package) failed with exit code '1'
>
>
> To solve this you can use a bbappend setting:
>
> INSANE_SKIP_${PN} += "installed-vs-shipped"
>
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

