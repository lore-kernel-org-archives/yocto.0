Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87EC6E0087C; Wed, 28 Jan 2015 08:36:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62B1AE00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 08:36:14 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id b16so11740178igk.1
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 08:36:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=BFnrBx9qGcTDew+ApNMLnDsvSrxokkZathOUqAcgWTo=;
	b=eMee032rAOpI2kqN8jx89qmFzb/SmSlF7S2hYL2WWSF0WkI7icyLMrktAdicYGXklv
	EeTlztZWOxqo6cZPFG66aL7Q0RzLWoAQZ0ROQTq/rl0p0kGuTVnn+tO3gskwm8wHQHP3
	QMAhZ7XksyZLYsKFJ4fCU+iLAl5LgVzRrlnZpDswijEBp/QjYS60MKo6XQY8sLKe+eVm
	lQXuf/alMmbC1BFXx5uRjAAfAIoWPQ0mLnYYGEeMSnNKvbvLfKzp7iFVczLiAfD4Cwnu
	ZMGiDraa+W9ctGTe9aYgwk+8atzw12epb284002/aOJ25dai4n+h/RdUGuaEvgwt+WO5
	V4bQ==
X-Gm-Message-State: ALoCoQl+jALytfuCTAY8s0xQuHMqb0Glw/kMwZzVSFKqJOz7XAEIeOWDiyGAUgrdLYjFMm7OTPx6
MIME-Version: 1.0
X-Received: by 10.42.175.3 with SMTP id ay3mr4110512icb.58.1422462974377; Wed,
	28 Jan 2015 08:36:14 -0800 (PST)
Received: by 10.36.124.210 with HTTP; Wed, 28 Jan 2015 08:36:14 -0800 (PST)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <BAY169-W545814E4CA44C6EAC0EC20AE330@phx.gbl>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>
	<CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>
	<BAY169-W55C7EBD601DFB42F2CA8ADAE330@phx.gbl>
	<3859281.CPjbAClMcV@peggleto-mobl5.ger.corp.intel.com>
	<BAY169-W68A99F2815567D9CCB628AE330@phx.gbl>
	<CAFicg857GKOgixieHfk36wXBmdnaLFhcaQzFLZGeMuTWZnkR0g@mail.gmail.com>
	<BAY169-W1323FBA1846821F1C7654FDAE330@phx.gbl>
	<CAFicg87v1F5LZ-a9N8=VtO=tt5ZyR+h98nxt8hLc+X1V2VJS7A@mail.gmail.com>
	<BAY169-W545814E4CA44C6EAC0EC20AE330@phx.gbl>
Date: Wed, 28 Jan 2015 17:36:14 +0100
Message-ID: <CAFicg87D6g6Qyh7Zy+qsSxbk8gQmFCTcvE86DgyE1_J5oX_5ow@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Jim Abernathy <jfabernathy@outlook.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: adding meta-oracle-java
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
X-List-Received-Date: Wed, 28 Jan 2015 16:36:25 -0000
Content-Type: text/plain; charset=UTF-8

Hi Jim,

On Wed, Jan 28, 2015 at 3:58 PM, Jim Abernathy <jfabernathy@outlook.com> wrote:
>
<snip>

>
> I just created a qemux86 image for core-image-base with meta-java in it and
> after booting in the emulator, it, of course, gives the proper response to
> java -version.  I'm going to try building a qemux86-64 to see if there's any
> difference.  On real NUC hardware it will not, as mentioned, work correctly.

In  NUC, please execute these commands:

# ln -s /lib /lib64
# export PATH=/usr/share/jre1.7.0_67/bin:$PATH
# java

> Jim A

Best Regards,
Maxin

