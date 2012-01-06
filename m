Return-Path: <pedro@algarvio.me>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0230E0030B
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 06:35:54 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@algarvio.me;
	x-dkim-adsp=none (insecure policy)
Received: by wibhq4 with SMTP id hq4so1722636wib.35
	for <yocto@yoctoproject.org>; Fri, 06 Jan 2012 06:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=algarvio.me; s=mail;
	h=message-id:disposition-notification-to:date:from:user-agent
	:mime-version:to:subject:references:in-reply-to:x-enigmail-version
	:openpgp:content-type:content-transfer-encoding;
	bh=pPT3iXMQ5Q9ZmCvE/mJwLD1CrtKP+HTVjpdo9rXoYuI=;
	b=J39RywI+SW8bkxnx9rJpD5AR3N23ppO2I6myePAUODmcGxX1yC+rsDK899TnYf8Dwd
	STq4dbm9L5KutAySA8F5c83+/THn4EaJd+UWNVpANpyUXXkw/S6CiD+GIps4GmHw+lpR
	zroybytmjM52l+QJ6Vd9KJADBrg1I4qXjA8F0=
Received: by 10.180.88.10 with SMTP id bc10mr11847989wib.13.1325860552999;
	Fri, 06 Jan 2012 06:35:52 -0800 (PST)
Received: from [10.1.0.44] (a89-154-151-86.cpe.netcabo.pt. [89.154.151.86])
	by mx.google.com with ESMTPS id e8sm2984128wiz.10.2012.01.06.06.35.50
	(version=SSLv3 cipher=OTHER); Fri, 06 Jan 2012 06:35:51 -0800 (PST)
Message-ID: <4F0706C5.8020400@algarvio.me>
Date: Fri, 06 Jan 2012 14:35:49 +0000
From: Pedro Algarvio <pedro@algarvio.me>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F06C43D.3090102@windriver.com>
In-Reply-To: <4F06C43D.3090102@windriver.com>
X-Enigmail-Version: 1.3.4
OpenPGP: id=9C558009
Subject: Re: Design Document of "Yocto 1656 Recipe creation/import script"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jan 2012 14:35:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Is there any work started regarding this?
Will this be part of bitbake?
Python will be it's "implementation" language?

Best Regards,
Pedro Algarvio.


On 06/01/12 09:51, Kang Kai wrote:
> Hi All,
> 
> This is the design document of "Yocto 1656 Recipe creation/import
> script". Please help to review it.
> Any suggestion is appreciate.
> 
> Regards,
> Kai
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

