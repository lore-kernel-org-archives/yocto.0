Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1744.1580667045929297041
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 10:10:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=ETPnpY1/;
 spf=neutral (domain: stusta.de, ip: 140.211.169.56, mailfrom: bunk@stusta.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C980E0164F; Sun,  2 Feb 2020 10:10:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 938CDE00726
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2020 10:10:42 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 489fC24qQ8z4R;
	Sun,  2 Feb 2020 19:10:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1580667039;
	bh=wM8rtAJlG6So5bcEDCq5iiYg9j3pL3RsAZi2cZzXCsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ETPnpY1/FZsNRHQz1qljF0kamJZVzuguTWUj8XCVmz7W7wqso6roQw9tSS8Rp48qZ
	 CQ9UELsd9ZwJSrzsFmxCWtG6UlP/6B/gjNQHW34V6h/8yBSuH75YvyP2fyauFwSWHj
	 LmSFuUi+1Df1e34hbBgHl0Hm4crxESDO0lLElPFcrDIb9W590g6lvHIyQ6rPsmq/7L
	 GiS+ep77tw0TYnHpJvBN5jeYzhQx/grP1ft0MSXOVVsZRRb9PpjBmHjGiLRhokg9RW
	 Fd2jnfoKh5QrxfuPmV7arvCwTTveNRwyRGoPiQweAykKGC39OmF/poTrr41yfubpfW
	 IFHOSEA6ZFRULsi5yHKHaoxoWx5J3o1NGnhnpsWKpNEMLLTG7zBOxiBJdca2ALNQIz
	 porXE4m3VvxteFCx2vHP4KPcSHUGiZ/BgEBHUYIrGXtMbvVArJ9K54P83q/wgIv7Qu
	 U2ZdAPvbYG/XtaUrOyU0byKwnzU5l+kcr6A6s9D0GrchDlrtvtZ/L8df//YEiK6X/o
	 WfsjIJPijaUVu6EWiknHuplhYopvCMp7z3FXWEPHOUPN5y/udq4SMVMCCOGmnJUt5q
	 i6TWf+t8qxPYfAyLSze4cFoTLy/3+qcAIddZiP8ytPzMKfoF7QtVeMnTsT1D9Jd0aJ
	 PjN6k7tDZIwvHAFRtC4KDZw0=
Date: Sun, 2 Feb 2020 20:10:36 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Ross Burton <ross@burtonini.com>
Cc: Stephen Jolley <sjolley.yp.pm@gmail.com>, yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Project Status WW04'20
Message-ID: <20200202181036.GB6805@localhost>
References: <086201d5d5f4$307b2150$917163f0$@gmail.com>
 <20200202132840.GA6805@localhost>
 <CAAnfSTvkfE-e6EqoX7gzQ5QqOHzd81xZLQOV7+8cSo9GyVAWBQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAnfSTvkfE-e6EqoX7gzQ5QqOHzd81xZLQOV7+8cSo9GyVAWBQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun, Feb 02, 2020 at 03:16:24PM +0000, Ross Burton wrote:
> On Sun, 2 Feb 2020 at 13:35, Adrian Bunk <bunk@stusta.de> wrote:
> > Would it be possible to also create a yocto-devel or yocto-core
> > mailing list for discussing development of Yocto?
> 
> What would it cover that isn't already covered in other lists?

It would be easier to follow only development discussions if these 
would move to a dedicated list.

> Ross

cu
Adrian
