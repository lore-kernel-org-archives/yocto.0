Return-Path: <tomek82221@gazeta.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E0A9E0056A; Mon,  8 Sep 2014 10:28:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tomek82221[at]gazeta.pl)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03422E0034C
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 10:28:47 -0700 (PDT)
Received: by mail-qg0-f44.google.com with SMTP id f51so3909052qge.31
	for <yocto@yoctoproject.org>; Mon, 08 Sep 2014 10:28:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=9eVf7cXPuuctwuhB2XeDkRXUX0Ivny7QEfZZY1vfiaI=;
	b=c80nEbEtZYvF2vEvJLGpEZ3KBqPhLjmcJntqOU6CbSznGb1R6dnmbf/dRYTsNC/1a5
	WCqWt9UWIG3osJmU5f8ie7KD+f+H2DAwSt0eCgPw/zQUsBedVzvTlN6ocytzoMLgsD3Y
	iHQCGTLQmGQvbinuGvEyAAtc1u++nH4FWqKN/VdZe4T+HCiSpKtlHBYgsfX+4GHDzVRy
	Y3FnyRJzIioE4PcPhzGcUOPj+2ZdW6U4NmZQ3UrRQDNaMnJ3kJSMkVokv4mRUrhxkvCx
	jrzj5vmmUDHedBhRzXeB5AehLqpqU6lJmVrGZ5Q7Wmegao2E90wkXVdu9JgZshuKQI+i
	FEoA==
X-Gm-Message-State: ALoCoQmm7PUPB+kRxJs+LG5O4AEunurxb77m8/7ckxSe9ex5R6EXGpJuhX85QhToF0rOvv1RJ9ov
MIME-Version: 1.0
X-Received: by 10.224.80.65 with SMTP id s1mr42592568qak.41.1410197326450;
	Mon, 08 Sep 2014 10:28:46 -0700 (PDT)
Received: by 10.140.16.19 with HTTP; Mon, 8 Sep 2014 10:28:46 -0700 (PDT)
In-Reply-To: <CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
Date: Mon, 8 Sep 2014 19:28:46 +0200
Message-ID: <CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 08 Sep 2014 17:28:52 -0000
Content-Type: text/plain; charset=UTF-8

Can I use kernel version 3.8, meta-beagleboard as BSP layer in Yocto 1.6 ?
Here - https://www.yoctoproject.org/downloads/core/daisy16 is "Linux
kernel 3.14 and 3.10 LTSI "

I build yocto with
BBLAYERS ?= " \
  /home/fil/Pulpit/yocto/poky/meta \
  /home/fil/Pulpit/yocto/poky/meta-yocto \
  /home/fil/Pulpit/yocto/poky/meta-beagleboard/common-bsp \
  /home/fil/Pulpit/yocto/poky/meta-openembedded/meta-oe \
  "

have some errors:

ERROR: QA Issue: linux-mainline: Files/directories were installed but
not shipped
  /lib/firmware/sb16
  /lib/firmware/korg
  /lib/firmware/sb16/mulaw_main.csp
  /lib/firmware/sb16/alaw_main.csp
  /lib/firmware/sb16/ima_adpcm_init.csp
  /lib/firmware/sb16/ima_adpcm_capture.csp
  /lib/firmware/sb16/ima_adpcm_playback.csp
  /lib/firmware/korg/k1212.dsp
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/fil/Pulpit/yocto/poky/build/tmp/work/beaglebone-poky-linux-gnueabi/linux-mainline/3.8.13-r23a/temp/log.do_package.6509
NOTE: recipe linux-mainline-3.8.13-r23a: task do_package: Failed
ERROR: Task 88 (/home/fil/Pulpit/yocto/poky/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb,
do_package) failed with exit code '1'


2014-09-05 0:02 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
> Hi Gazeta,
>
> On Thu, Sep 4, 2014 at 5:48 PM, tomek82221 Gazeta.pl <tomek82221@gazeta.pl>
> wrote:
>>
>> Hi
>> I'm build yocto 1.6, My hardware is beaglebone black I successfull
>> build system image. But I can't see cape manager.
>> I need them to use SPI - enable spidev -
>> http://elinux.org/BeagleBone_Black_Enable_SPIDEV .
>> What do i do to build yocto with a cape manager?
>
>
> As far as I know, you have to use meta-beagleboard (almost 1 year without
> any new commit) as your BSP layer to get capemanager support with Yocto.
> Take a look here. The kernel version is 3.8.
>
> Here we have good news of having capemanager support on mainline:
> http://beagleboard.org/blog/2014-08-27-device-tree-overlay-support-lands-upstream/
>
> Here you have a beaglebord.org linux repo with capemanager support:
> https://github.com/beagleboard
> I don't know if there is any WIP to get this kernel compiled by Yocto/OE.
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

