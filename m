Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FCFFE00CD0; Thu, 21 Apr 2016 10:47:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CAA6E00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:47:01 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id u64so913381lff.2
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=+ay9rPAlGu6uzp2R8Wo7KWj4Kge3rJDhzNcekSTrBvM=;
	b=ykj1urBVXFG093T+z37eLAJTzuelRbp2MjFKqDZv1MKuJnxyzUrRFX5BrmlI601FQQ
	IVgRcroX/3KfG9Qz59fRqeAC9HpHDlYQrF4Eks8gHjol4LVsOmDvpLBrXrqec+UluPMK
	ybaWkfORjrePtLG4gOwrk0XDjasbCb6oGrcpMxS+CSQeHL5lApuKoizFpN6HLVxiVqTk
	t5NlxobLyp7YfNZqWj635mrBQu8a3S86gBVtzvRGkE5ov7yOVwoBzSx7qE0SbQ/H0LiE
	tt1xsFM/n3UomKoZeC4tzSsnX3kLfxC3sQ03wP1eH/uBAL5v7DfgsLHBlT5uh/vLGNiu
	b3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=+ay9rPAlGu6uzp2R8Wo7KWj4Kge3rJDhzNcekSTrBvM=;
	b=fWR+4DpEY9Ak1k4StgL9r4E1wkdvb3kW6ovK8HRYh7tw3WrffL3/jF89yLbBiwKqQb
	xSSAfo8uSvRvXJkUMZlJPQ0i7i3YwZ2Eufkb96SBhcWBlcma1y+RvYo47UlazGSCfSvX
	73j84MVieL9ZOVHLsrCDNms/VnGKR3qlsu0mjrXf8koIa4KTK9jRiVzs7aOj6l0cll5V
	wll5IMmv27NIw2MpBPk22ypNJnpBoauPYg9YLUhuhkzlDhlfUHaB4OpOJ0aoYMYmC4Xl
	7TV9lmuigJwKtgR8GIN8OkNe06CMbGJJsirQdoF2Jt2CPloy15HPFBs82zVzRDH9NuQT
	uBFQ==
X-Gm-Message-State: AOPr4FUwFQpLGrSb507J1BInJbQL3cJYn2IImxYJ1CctYryN+dVDWrp6Lf1WYajC+Is0gFhuh782x+xYgYRNnQ==
MIME-Version: 1.0
X-Received: by 10.25.162.198 with SMTP id l189mr7058605lfe.162.1461260819204; 
	Thu, 21 Apr 2016 10:46:59 -0700 (PDT)
Received: by 10.112.128.196 with HTTP; Thu, 21 Apr 2016 10:46:59 -0700 (PDT)
X-Originating-IP: [81.159.212.160]
In-Reply-To: <20160421174319.GQ1588@resin>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
	<1461259933-1661-3-git-send-email-theodor@gherzan.ro>
	<20160421174319.GQ1588@resin>
Date: Thu, 21 Apr 2016 18:46:59 +0100
Message-ID: <CAJjOg+G2Xyp96wE_yyr=XamnwpSdnn5Ywk4GoP0B8P-pFXOGrA@mail.gmail.com>
From: Theodor Gherzan <theodor@gherzan.ro>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/5] rpi-config: Add UART enabler
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
X-List-Received-Date: Thu, 21 Apr 2016 17:47:04 -0000
Content-Type: text/plain; charset=UTF-8

Here is a full explination of this:


On Thu, Apr 21, 2016 at 6:43 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hi,
>
> On Thu, Apr 21, 2016 at 06:32:11PM +0100, Theodor Gherzan wrote:
>> From: Theodor Gherzan <theodor@resin.io>
>>
>> Signed-off-by: Theodor Gherzan <theodor@resin.io>
>> ---
>>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
>> index 4d41723..6ddf843 100644
>> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
>> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
>> @@ -90,6 +90,12 @@ do_deploy() {
>>          echo "# Enable PITFT22 display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>          echo "dtoverlay=pitft22,rotate=270,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>      fi
>> +
>> +    # UART support
>> +    if [ "${ENABLE_UART}" = "1" ]; then
>> +        echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>> +        echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> What is the default value of enable_uart?
>
> --
> Andrei Gherzan

