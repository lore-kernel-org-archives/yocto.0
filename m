Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.64035.1600099253138348945
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 09:00:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=TqPIM2Lu;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd15177.aruba.it (smtpcmd15177.aruba.it [62.149.156.177])
	by mail.yoctoproject.org (Postfix) with ESMTP id 41F1638C1313
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2020 09:00:52 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id HquOk6JNbaeXAHquPkoMZC; Mon, 14 Sep 2020 18:00:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1600099250; bh=Pqn/NktuGQHhcqym8t205RJkOJ64WhKDWp3GjWtI7PY=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=TqPIM2LuSXLX2yI7BZNKZaXdnNzIacmkUyam5Kgps7z21asYc1VWvSdrUt+RbHFCI
	 tkcXw+Kwg2x4BhMMcBYoHL/t1M9tNAnGtrxqNgd5eadTOgPbGZVco61w1dnzG3DYfS
	 4HBO2VkN9C0vr3kMFPKWBZyjBkiRWjKtQLJGMxMFlRnAxQlHjazrTthtoq1qI+qX0L
	 B++kn3xLcqglPgSvqw2zI4NeC1t4DyE68nOpJsQVDTNHDqGXufkWmeFebKa4ohVMQS
	 TbSndipZgq/MuD4ZuR1WEXT0eQTT6LiIwEvtaL2tdvOKMfgKUOj2rU9Hryp/vxsfrb
	 NsyLgkvuXpxoQ==
To: yocto@yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: [psplash] image format.
Message-ID: <165158ed-1d66-8856-b4ba-f06892b84f6d@faresoftware.it>
Date: Mon, 14 Sep 2020 18:00:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfLgat1BWBtEPIbjY7qE3L4iOM7LUKGM9OqwOSEzBUF9/WZ0FXIQpWS0XVVUWc/4/8AApBU41XeylvACBDHLM68G5Ut+IqVot3tQNRO34nyL4/LPs3weA
 2E/kZZTLXLF+kjuo8yULjoLG4kAUKvUrZBT2jxVNXv7MPuhjebl+XmP5UzvRwI2EK6GtwGiPKHNMkg==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: it
Content-Transfer-Encoding: quoted-printable

Hi all.

I'm trying to display a splash screen over a 800x600 display, on Geode=20
LX 800 platform (Geode LX FB or Vesa).


I make the image with Gimp and saved in 4 version to try.

800x600 in png 16bit rgb, png 16bit rgba, png 8bit rgb, png 8bit rgba


The image is not aligned with the display.

1. To "center"=A0 the splash in the screen I need to create a 800x700 ima=
ge

2. this is the result on the display

https://drive.google.com/file/d/1OHbUr-WxR_weU6JilhFcUO64onb7F3-f/view?us=
p=3Dsharing


Any idea?


Best regards,

 =A0 MZ

