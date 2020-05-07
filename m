Received: from ciao.gmane.io (ciao.gmane.io [159.69.161.202])
 by mx.groups.io with SMTP id smtpd.web12.3483.1588883245330588079
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2020 13:27:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 159.69.161.202, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1jWn75-000ATQ-Dy
	for yocto@lists.yoctoproject.org; Thu, 07 May 2020 22:27:23 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: perf Makefile issue building with 5.6.2 kernel image
Date: Thu, 7 May 2020 22:27:18 +0200
Message-ID: <5784ce50-607b-85ba-7b06-b7a13c847189@gmail.com>
References: <CACsETSvOKqSnmnUN2xcREaGoDQLyHAccoZ9-9bNSpzPKjjoxag@mail.gmail.com>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <CACsETSvOKqSnmnUN2xcREaGoDQLyHAccoZ9-9bNSpzPKjjoxag@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Op 07-05-2020 om 13:36 schreef sateesh m:
> Hi Sir,
> 
>             I am getting issue with perf tool building with 5.6.2 kernel 
> yocto image  .can anybody knows this issue can you give any suggestions 
> or any patch file.

I got it to work in zeus with 5.6.0 kernel by copying in perf.bb from 
master.
https://github.com/htot/meta-intel-edison/blob/btrfs/meta-intel-edison-bsp/recipes-kernel/perf/perf.bb

> 
> 
> 
> Thanks & Regards,
> Sateesh
> 
> 
> 


