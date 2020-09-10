Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web11.13640.1599708026928879062
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 20:20:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=g4gMsBDt;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id c0903c77;
	Thu, 10 Sep 2020 05:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type:content-transfer-encoding; s=obsd; bh=
	yXfZEhzs2qXyghS12eq0wqM+04fzY3GIwXWzSQ96KxQ=; b=g4gMsBDtm9zrpSwz
	g2ItfcdD8Dha+IBB7gXQeohUmYOx30ggciOZFVkH0vdFHYDHRbx891Ld7k6AV2dU
	o6xgcOs0BMoMZhYREecwN+r5wmNoY1589o8fZz/1i5bJVX3K6fyYm31gb9lbkm/6
	ieXZoz5F/sJsFqxk0n0Teizps1jxUDwAqJ/Wh8ZKyFF5vodsIroHrYB/aOELmqKl
	Jz5UhSfZ/ynCUvA2RUeptXvQwRgNOsux/MkTlyF5cq1fQaJXNudUSNlZ/fWfkr0c
	yEt5pExdN753ILZQQb1FZnj8mhEhr1jq6QdHByjxhPRnxwXhqoxl50SDFDsKA0Cy
	ewvCqQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=obsd; b=2IeZ54
	H3YdYlZmdfozIxdTYoyUU7iR3eWMtc/cRykxT/b2CCHmh0vzSmsIp1o0J252aIH1
	cD8vgC0tGyF65dbUbPk7AjUYiBHo1ftS2R7MBcNdNY2p5BqFOUQ886BcLVlrD3yg
	om1pZcUtD6xC7QHmGxsp91xF/zqZGF1qPHWuZgIWgTBSQsN2EflSxic0pzR4xa8o
	sn+7COAqno5a5ovIOpoJQbOmoJu62WxRFD677AzkycyjKHCoBB9MQ8kY8FkajCjB
	+S3f7Lz81PiKd0fPaTK49funMzI4Cq41fSb5xAH2SX4H6TR004Z8xrLO/m2PAM4/
	m2rmVQr/le0KRWUw==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id ccad47f4 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com;
	Thu, 10 Sep 2020 05:20:23 +0200 (CEST)
Subject: Re: [yocto] poky dhcpcd failed build
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
References: <1632BAF241A18982.9948@lists.yoctoproject.org>
 <ba50fb1b-8dca-86dd-4569-368c94257deb@optimcloud.com>
 <e12077a8-0a44-c224-9aa2-d8758045952e@gmail.com>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <17552b8c-8661-885f-5447-1be03d0d992e@optimcloud.com>
Date: Thu, 10 Sep 2020 10:19:16 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <e12077a8-0a44-c224-9aa2-d8758045952e@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 9/10/20 6:58 AM, Khem Raj wrote:
> #include <sys/param.h>

i ran devtool modify dhcpcd and there is no "socket.c" in the source tree.

