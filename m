Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id BABE0E0150D
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 10:30:16 -0800 (PST)
Received: by mail-qa0-f51.google.com with SMTP id cr7so494761qab.3
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 10:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=xIXNexW5ZT5SQoN3/CtGwNdPLViGfwIa2r+lYUBUe68=;
	b=Fs/lqH0NaR+3v9sXp6prMYo8LFWTtpggyKj9HyGCBDvYvgB1xIoEnxCzlqfojHboNJ
	hPyouzjqWs4HhXaaEAcJY67TIMIqR5ft0uO7ZVX7l5NZrl94r8lhyyCVO572T/1mV5L5
	0oBcT8jmYpoThyJjRMENaq0dCGgQ0VtHSChl/SO9soVTI0uOV2WwQOb7JZpj3+UmatzG
	71X66G1QIkwUeTOCbzwhmi3lBULiWRArNZDNkiT0PBppraU8tVeZIb5MMFGu3wN5ppY5
	EWuJtPa2HMn4b4uxlKPttPNDmHyRQp0ER4QKBlTC7KEYiTu19NEXpW+tGZwKh6x6QIkN
	/jZw==
MIME-Version: 1.0
X-Received: by 10.49.16.135 with SMTP id g7mr55889525qed.8.1362681015812; Thu,
	07 Mar 2013 10:30:15 -0800 (PST)
Received: by 10.49.67.98 with HTTP; Thu, 7 Mar 2013 10:30:15 -0800 (PST)
Date: Thu, 7 Mar 2013 19:30:15 +0100
Message-ID: <CAFyqS9puOk66afdWv3scW-9GsnQdQPedjgB2s7a7BGK-cfLhrA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: PREFERRED_PROVIDER_u-boot problem
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
X-List-Received-Date: Thu, 07 Mar 2013 18:30:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi, in my BSP machine/conf I have the following:

PREFERRED_PROVIDER_virtual/kernel = "linux-xlnx"
PREFERRED_PROVIDER_u-boot = "u-boot-xlnx"

I also have a linux-xlnx.bb and a u-boot-xlnx.bb in
meta/mybsp/recipes_kernel and recipes_bsp respectively.
When I do 'bitbake virtual/kernel', the correct .bb file is called and
linux-xlnx is downloaded.
But, for u-boot it does not work? I have to do 'bitbake u-boot-xlnx'
to have the correct recipe being called.
If I only do 'bitbake u-boot' I seem to get some default. What might I
possibly have done wrong?
I expected these two to behave exactly the same?

Hans

