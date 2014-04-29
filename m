Return-Path: <mirza.krak@hostmobility.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94D3DE009EB
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 01:07:39 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id gf5so5711850lab.21
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 01:07:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=Hpgggmco4jNX+yIuWjVcZUaB3CTilVXodUQW3pA7K2o=;
	b=EuVrG6mxbBIIXkfhbhrxXYwPfgs2MieazZw7xOEJxAKECjeksCXupeugvwCLXvO0Ny
	BF2vDZdQUTsUs6s6PiN9Spb2/iwiiwSVQbkXqx9gWM0FddQ+2cbOiDJ/J2yj8RNT+aia
	yd/28PYPPwy6kZM8+3U4qxTYwBde7bA7fjM559F/zUUhbIGcGVPglEikQb6HvmobtcFw
	S8zFFhOjatW6WKUSa6yQDWukOZAnu9+AwFqWx6Mvyg2QNHpVC86iQ/oZzrXYu7WCnV0A
	M/vh+r7oMjKvBg9pKpgTY+MYEMRQ5QSfV1kX9sA30JJ68TYLshNA9q7vEHji8VWTqCpT
	FQPA==
X-Gm-Message-State: ALoCoQnif45urjjEg2xPCGRBVsaEMQy/iNeBvHx+8MEoiFdOc6u7ePt5/ONMpSjiAHz1gJlEl9km
X-Received: by 10.152.42.196 with SMTP id q4mr22630872lal.14.1398758858336;
	Tue, 29 Apr 2014 01:07:38 -0700 (PDT)
Received: from [192.168.0.98] (static-92-33-5-210.sme.bredbandsbolaget.se.
	[92.33.5.210])
	by mx.google.com with ESMTPSA id g8sm12601373laf.0.2014.04.29.01.07.36
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 29 Apr 2014 01:07:37 -0700 (PDT)
Message-ID: <535F5DBE.5080501@hostmobility.com>
Date: Tue, 29 Apr 2014 10:07:26 +0200
From: Mirza Krak <mirza.krak@hostmobility.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Jegan Chandru <pcjegan@gmail.com>
References: <535F3FFD.1080403@hostmobility.com>
	<CAAA4K6LApkJ=LVpGqrNQ_GGBuM9WJN8MuLEJrXyut8yGi7uZXA@mail.gmail.com>
In-Reply-To: <CAAA4K6LApkJ=LVpGqrNQ_GGBuM9WJN8MuLEJrXyut8yGi7uZXA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: quilt-native fails on tar version 1.27.1
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
X-List-Received-Date: Tue, 29 Apr 2014 08:07:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2014-04-29 09:53, Jegan Chandru wrote:
> Hi,
>
> Only Yocto version 1.6 supports Ubuntu 14.04 LTS. I hope you are using 
> that. if you are using <1.6 Ubuntu 14.04 LTS is not in supported distros.
I am actually working with 1.4 so should probably update.
>
> http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manual.html#detailed-supported-distros
> http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual.html#detailed-supported-distros
> http://www.yoctoproject.org/docs/1.4/ref-manual/ref-manual.html#detailed-supported-distros
>
> Also I found this,
> https://lists.yoctoproject.org/pipermail/yocto/2013-October/016540.html
> which makes ur problem a known issue.
Great that it is an known problem!
>
> HTH.
>
> -JC
Thank you for the help.
>
>
> On Tue, Apr 29, 2014 at 11:30 AM, Mirza Krak 
> <mirza.krak@hostmobility.com <mailto:mirza.krak@hostmobility.com>> wrote:
>
>     Hi.
>
>     I recently updated my Ubuntu PC to 14.04 LTS which broke yocto builds.
>
>     From what I can see is that there seems to be an issue with the
>     tar command and quilt-native recipe. But I am to newb to fix this.
>     Do you guys have any ideas?
>
>     uname -a
>     Linux mirza-hm 3.11.0-20-generic #34-Ubuntu SMP Tue Apr 1 20:40:25
>     UTC 2014 x86_64 x86_64 x86_64 GNU/Linux
>
>     tar --version
>     tar (GNU tar) 1.27.1
>     Copyright (C) 2013 Free Software Foundation, Inc.
>     License GPLv3+: GNU GPL version 3 or later
>     <http://gnu.org/licenses/gpl.html>.
>     This is free software: you are free to change and redistribute it.
>     There is NO WARRANTY, to the extent permitted by law.
>
>     Written by John Gilmore and Jay Fenlason.
>
>     Attached log.
>
>     -- 
>     Med Vänliga Hälsningar / Best Regards
>
>     *******************************************************************
>     Mirza Krak
>     Host Mobility AB
>     mirza.krak@hostmobility.com <mailto:mirza.krak@hostmobility.com>
>     Anders Personsgatan 12, 416 64 Göteborg
>     Sweden
>     http://www.hostmobility.com
>     Direct: +46 31 31 32 704 <tel:%2B46%2031%2031%2032%20704>
>     Phone: +46 31 31 32 700 <tel:%2B46%2031%2031%2032%20700>
>     Fax: +46 31 80 67 51 <tel:%2B46%2031%2080%2067%2051>
>     Mobile: +46 730 28 06 22 <tel:%2B46%20730%2028%2006%2022>
>     *******************************************************************
>
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> -- 
> JCP

-- 
Med Vänliga Hälsningar / Best Regards

*******************************************************************
Mirza Krak
Host Mobility AB
mirza.krak@hostmobility.com
Anders Personsgatan 12, 416 64 Göteborg
Sweden
http://www.hostmobility.com
Direct: +46 31 31 32 704
Phone: +46 31 31 32 700
Fax: +46 31 80 67 51
Mobile: +46 730 28 06 22
*******************************************************************


