Return-Path: <koansoftware@gmail.com>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F52CE00809
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 07:02:11 -0800 (PST)
Received: by mail-ea0-f172.google.com with SMTP id l9so2763297eaj.31
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 07:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=zY2aUdqlm3nVx1xYarDu/aiwJUDrcw5Nui/d/sZirOY=;
	b=leTOjgM9KnJc1GOOeZ7gGRDJk5RlgbAfQxUWyB+xzbbSO0Qx0n6Yt4v2xHhqKH3Xwu
	PqDOi+b4YKkCtNvVff1OSQ+qSYsHUoNw8IcpRJiNPK4ovKNNmgHdnSXsydllG1vpfrjY
	OOAVStp4Y8/a7czUnj0EbAyUA1K5RHYCOFzARChmy2F7HDgTAcOzsHpASmr76g9Ya5aA
	lA7Aq1hOt1h3Ib2AAWp/Sjw+eWSBHXur+s0+1IgeF8Qtif+/HisTrqY1p8ocjd67SfZW
	g3CvskNUJkRQZEtKTjYxDlhywnKyoPwR8Xm0Cp+0FGWAZHEBPkSOVm/efZ/A+Qzz6J82
	ZDXA==
X-Received: by 10.15.90.204 with SMTP id q52mr5392291eez.95.1393599730261;
	Fri, 28 Feb 2014 07:02:10 -0800 (PST)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id
	j42sm11411066eep.21.2014.02.28.07.02.07 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Feb 2014 07:02:09 -0800 (PST)
Message-ID: <5310A4ED.2050903@gmail.com>
Date: Fri, 28 Feb 2014 16:02:05 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAD78y+6bm_gdoQtU6RP9xHp_ASPD-r8SWU7Sg55SvtouzurvhQ@mail.gmail.com>	<531094E5.2050906@gmail.com>
	<CAD78y+4iSnpT8itgc+qB74B+FrDWvHOYf9kpkNu5kGhGAVf+Tw@mail.gmail.com>
In-Reply-To: <CAD78y+4iSnpT8itgc+qB74B+FrDWvHOYf9kpkNu5kGhGAVf+Tw@mail.gmail.com>
Subject: Re: Build qemuarm compatible with freescale i.MX6
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Feb 2014 15:02:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Il 28/02/2014 15:54, Federico Vitali ha scritto:
> Thank you Marco.
> so I can run a generic arm qemu kernel with the image created for my
> sabre sd card?
> I suppose I have to make a qemu armv7 kernel, am I wrong? In that case
> how can I
> configure my local.conf to make a qemu armv7 kernel?
>
> Thank you again
>
>


Federico,
The kernel and image you create for iMX6 is cortexa9hf
the one created for qemuarm is arm926ejs
You can do tests with quemuarm but the binaries aren't compatible.
So returning to your original question, no you can't run the same 
filesystem both on the real target and via qemu emulation.

Ciao
-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com

