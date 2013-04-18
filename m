Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f46.google.com (mail-da0-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32E6EE014B5
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 09:47:32 -0700 (PDT)
Received: by mail-da0-f46.google.com with SMTP id y19so1470561dan.33
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 09:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=evJ1FEaREpa9YlcQ/5zi07+Nv3enjzxL8Kt+OhRHy0U=;
	b=e9h/TsogVIfLgB6RMdEbhkbm/zlHzh+HY48LXNDMkvjFhWMitS/Edgm7LlUcC8XREK
	qYPzzydNofLmVzGZkgrRNzi9CdSXDNYjfuEgWHWPkwnGZ5rNYh7wMysqBCnRuMsAJA0P
	pIIbkOiufglf6Dhklbt6CjhLVNFSvZ04cbPIubO39ZldTQofdBesq2i/gI/yTuc1GjrW
	OlmNP0jcDVAGLrvnQB28nPJF6NvrZMKKp97btyAxXKXYT/6OY3S/vrk7wtK/BunrJGIP
	kXMq7g8w8jj5VbHoFGn7SCnAaOjfbMkJJDtQZpCiQfYoPuEVKZT3sc/Yqlmre++TwChr
	ep0Q==
X-Received: by 10.66.49.38 with SMTP id r6mr13923383pan.212.1366303651787;
	Thu, 18 Apr 2013 09:47:31 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.101])
	by mx.google.com with ESMTPS id pa2sm11565547pac.9.2013.04.18.09.47.29
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 18 Apr 2013 09:47:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <FFFC0574-F5E4-4239-AECA-A4F6AF9BDAE9@gmail.com>
Date: Thu, 18 Apr 2013 20:47:25 +0400
Message-Id: <24726B11-5930-499E-BAB2-51A9BA32CDCD@gmail.com>
References: <9CEFD538-1DCB-4431-A89F-18DC00A7C9A4@gmail.com>
	<CAHUNapQakOn5n3=fAHT7nBCYLU1fAiVNm52cLEn4rORGuXaFRg@mail.gmail.com>
	<76557A7C-1A9C-4A40-9E31-B8F3EDE828F9@gmail.com>
	<FFFC0574-F5E4-4239-AECA-A4F6AF9BDAE9@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1503)
Subject: Re: [poky] bash: oe-init-build-env: line 33: syntax error near unexpected token `elif'
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
X-List-Received-Date: Thu, 18 Apr 2013 16:47:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
     I think I know what happened. I briefly setup autocrlf=3Dtrue in =
the global .gitconfig last week, and when I pull in all the latest =
commits, it ended up adding CRLF, and ended up causing issues. Even =
after disabling it, the damage already done to the local poky =
repository. Luckily I had backups.

This shouldn't have happened to with git!

Elvis Dowson=

