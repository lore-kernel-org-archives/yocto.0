Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 226C8E00BE2; Fri,  4 Mar 2016 15:32:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA51E00BA0
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 15:32:47 -0800 (PST)
Received: by mail-qk0-f172.google.com with SMTP id o6so27323615qkc.2
	for <yocto@yoctoproject.org>; Fri, 04 Mar 2016 15:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NL21mfBo3hsQPOXuwkyMta+Ch7VKSr2T0WWdbutogyg=;
	b=GtDal1TFe/aY7Ed/2+5/PuhNYtvlC3VCaqK93UYTdslbBIet8ZDVal9sErY5/g8dR2
	XDO6LPiOV7ju9SvUaKEvoV+Qltv2xFD5He1y9bwJym3KHrQOC3AVQbxwE6HetDKg31K8
	6fJqrxP61mX6CRz8ymSWiu0jUvFAfmNM0qw/9nt2yoTzOoeWDL6kMtnWPOET4zFkcPoh
	owTEhsK01yjDW7POETJsHtrB361aMQQtqnLEZakT22pU7Z0kWsJUv3xCthiHQU68l5iI
	QSkXxpqfii/VbVJKkLBzSIAtXx+ig2XkEyR1iCzfW2J/I+zIZun6ptWlee0Fmse3QJw4
	vwDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NL21mfBo3hsQPOXuwkyMta+Ch7VKSr2T0WWdbutogyg=;
	b=AvfQPllxJimW5mXKCw/9GJSVt9HaaM0JAdVuCpFIdG5o+1hxQdZ/xu4Zio7ax9DLNA
	4GMBp+Hhi0tK2bKwLkdguK1UvYv8pdLolzbu2YtUOGYAeM/PVPlRnUGOWBtbV/LRmE5U
	MFX7XuCjw9SNM/3l0ikjUNInLQizcLaS7MJnJ8eksf+/oLRNnHn7eLvHBEsNaN/+4OLx
	hpaJMEJRB6nRsmldveTFs/UJ4S3ARTywN4JuFJBOeUEUJos1wqsCOKSC893JSElUeOJU
	TB4GpK2pjOE6JlvmrrQzrA6Or5TV9iwiMbkthVVcrF05vqYG5D4SaXFf6rscpitmVIUl
	PvqQ==
X-Gm-Message-State: AD7BkJJuE6eCLCQleDvREzBcP6TBVzovwoQVNIITMAkpByJQytQyczTsfAsTSav6XuRiir8vanHtOSct2wErkw==
X-Received: by 10.55.73.199 with SMTP id w190mr13541242qka.77.1457134367361;
	Fri, 04 Mar 2016 15:32:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Fri, 4 Mar 2016 15:32:17 -0800 (PST)
In-Reply-To: <CALLyC8QD3TtxYCHX+UkwqmSVfzu02y8=GZmc0G8FdO8Rm22pbQ@mail.gmail.com>
References: <CALLyC8QD3TtxYCHX+UkwqmSVfzu02y8=GZmc0G8FdO8Rm22pbQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 5 Mar 2016 07:32:17 +0800
Message-ID: <CAMKF1sp+j53gMh_uVeqpL+TYFyy75NuRhoQXnaYhKMey8rMekA@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Which package provides reboot.target and shudown.target
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
X-List-Received-Date: Fri, 04 Mar 2016 23:32:50 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 4, 2016 at 5:25 PM, Vivek Per <pervivek@gmail.com> wrote:
> Hi,
>                I am using systemd in my target, Currently I am using "reboot
> -f" to reboot the system, i don't want to reboot like that. I am not able to
> reboot my system by simply using "reboot" , because I am using systemd not
> sysvinit. In sysvinit it internally calls "telinit" (or) "shutdown" with
> runlevels(0-6) , But both are absent in my case . I am using reboot command
> form "busybox". I dont know whether "reboot" command is provided from any
> other package. Can any one suggest me how can i use just "reboot" to reboot
> my system. I am using Yocto build setup (poky 1.7) for this.
>    I found that systemd provides some runlevels similar to sysvinit  as
> given below
> https://www.freedesktop.org/software/systemd/man/systemd.special.html
>  Does any one can tell which recipe provides these target files. Any help is
> appreciated .

user systemctl reboot

>
>
> Thanks and Regards
>    Vivek
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

