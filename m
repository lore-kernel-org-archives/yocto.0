Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E23EE006CC
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 09:12:52 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id k10so12124842iea.29
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 09:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=xfGffGJhSN+rQzMRFvTBXeZWxS/KHKhenW0+L+9y0Lc=;
	b=cQnpI2z3twRaxEcYDVmp9sdv7CLOPbeqdsu5K0b7TRWqxkxp2fVmTyHIa9EkR4oCU7
	UO7FaVAzE+nEuvR/Vo5G6ymQzLsqaDhc+vEF7A4yFoaoMJlABs7qYZLLlJl94nt8PLtu
	ART8lnCpFiNYFLlepoDu8pCw0cyNwR9odr8le3KV7aElA5g/aOIC+JQN2a1Y0+N10TTH
	F5QxW29Bbv5H+vNvvdwxsWC8ab0+GwdnXXX868MKT/y2Kr1vPmsYMgkGMGdbt4Es0cA7
	jsNUqu1GW+KZZR+42kMk1rD2lK7r5Y9yo506jf1yl8uWDfOFQXkuMzKfaVXsWMbhKIq9
	BfsQ==
Received: by 10.50.202.73 with SMTP id kg9mr27837336igc.51.1356628372150; Thu,
	27 Dec 2012 09:12:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.136.229 with HTTP; Thu, 27 Dec 2012 09:12:32 -0800 (PST)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Thu, 27 Dec 2012 12:12:32 -0500
Message-ID: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
To: yocto@yoctoproject.org, navani.srivastava@gmail.com, 
	navani.srivastava@lnties.com
Subject: Re: Remove unwanted package from Qt
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
X-List-Received-Date: Thu, 27 Dec 2012 17:12:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

>
> Hi,
>
> I am compiling Qt-4.8.0 with poky-denzil-7.0 for arm1136 architecture.
>
>
>
> At the time of integrating qt-embedded with rootfs, I am getting qtopia
> directory in usr/share path of rootfs.
>
> I tried removing qtopia directory through qt recipe but ended in
> compilation error. Please suggest any idea to remove qtopia from share
> directory.
>
>
>
> Thanks and Regards
>
> Navani Kamal Srivastava

I ran into this as well after using a bbappend to disable a number of
Qt features, including the building of demos that get staged in the
aforementioned path.  In my case, that qtopia directory (and any
subdirectories) wound up either being empty or containing files that
were unnecessary for my build.

My quick and dirty solution was to just to add a install_append()
containing a 'rm -rf ${D}${datadir}/qtopia' in my bbappend. (Be sure
you don't have anything important in there!) I'd be curious to hear if
there's a better approach to this as well...

Regards,
Jon

