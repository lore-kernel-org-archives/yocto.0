Received: from mailrelay1-2.pub.mailoutpod1-cph3.one.com (mailrelay1-2.pub.mailoutpod1-cph3.one.com [46.30.212.0])
 by mx.groups.io with SMTP id smtpd.web12.2288.1630531109811724195
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Sep 2021 14:18:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=20191106 header.b=gsRPaebz;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.0, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20191106;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=gsRfBTP2zHN8CNzq0wBESZmzZL7AOqTbTOEzlsC8U1s=;
	b=gsRPaebzS9LnPp6qXijagiiBNqUTX3PEBroGd7DyW2gVZXuSlfVxFnGe+yO/ZBgtZPXMJPKdQAJ3b
	 DsYpODZeKvtAo2hCOy1DIq3QTaY0sI+M4af4yn1keuMVHEz7FPweOkrUFUGz1RXfVNO4bUbvduJ8hf
	 fehxYXSSBgUOeG6cJLrtLcRU+jDueT9w/+c1iuKCTX0c87jb/RYJeLj011mhqSOmOX0Nr0t+V+ZAam
	 ecMPBUT8VmhquLjntAX+g1bRt2Ucvzatohusvf4ZG5uV+Gigf01SjBpzEtk9Q1Y2RqNR7am7xy0sOK
	 bBIKU5WjhFZIj2NXgU/8bJDLiudqLDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=rsa1;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=gsRfBTP2zHN8CNzq0wBESZmzZL7AOqTbTOEzlsC8U1s=;
	b=NyLbWUkid5bHYe77FJdJdFzh7NH91NxmFrGzkyxAOmRcRDNxwCq05Ss32j2/9FZs677OFU6b3T7v8
	 Zkwgy9AIx4iVM8LPgnGIOXAHaRF9OcQrJzdFB0LiUyY2oOuawPmy2jIKf9LzOxkgpJtIH9GIDArfL6
	 VXgTlS5eavMBS8jj+4HIh+YYm2Le1ShjJRFMHAj+nw21ZlvdwK4zokzeRNi7/8n5zHecQ8Ttt5bBlG
	 mr3l4XuZg8fCqgQ3F6xrN8K0aytwpy/CpI6ZCswFvFalQKRrvpNyvlQ5cbB5kGgbRowCV5okieF6Jm
	 gCNLp43XjGZmBQEx3+O8C5XHvsIEzbQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=ed1;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=gsRfBTP2zHN8CNzq0wBESZmzZL7AOqTbTOEzlsC8U1s=;
	b=d1o2BZUaMIvShTq4TOm26z9e+Xj+U0yO9NT/E1COZ6oxrHe9DA2bjhiGzWyGtQ+zKhI3iYO5N/4vs
	 UL7bQWqDg==
X-HalOne-Cookie: d6f3bf5922e6876b94c18ca11590b3084aa1d4b8
X-HalOne-ID: 24665fe4-0b6a-11ec-b7ce-d0431ea8a283
Received: from [192.168.100.145] (ua-85-227-233-29.bbcust.telenor.se [85.227.233.29])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 24665fe4-0b6a-11ec-b7ce-d0431ea8a283;
	Wed, 01 Sep 2021 21:18:25 +0000 (UTC)
Subject: Re: [yocto] gpsd [version 3.23; master branch]: Is it possible to include / enable ubxtool?
To: Matthias Klein <matthias.klein@optimeas.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM0PR10MB310701696E98C78D98D5F3AE99CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <3aefaadf-22fb-0295-8c3e-bfbb164f7e84@berginkonsult.se>
 <AM0PR10MB3107A5A0480003FB260DD93899CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: "Peter Bergin" <peter@berginkonsult.se>
Message-ID: <2d00b451-23d9-bffa-8ecf-4dc9c83b5d2d@berginkonsult.se>
Date: Wed, 1 Sep 2021 23:18:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <AM0PR10MB3107A5A0480003FB260DD93899CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Matthias,

On 2021-09-01 17:11, Matthias Klein wrote:
> Hello Peter,
>
> I'm not sure it's that simple.
Sorry for my quick and a bit oversimplified response. I did my first 
build on an older version (3.20) where ubxtool was not built but present 
in the repo root. I see now that in 3.23 gpsd have changed concept and 
client/ubxtool.py.in is mangled through the build system to fill in some 
stuff and produce the ubxtool script.
> To me it looks like the recipe has bugs in python area, or my environment / build is causing problems.
> In the log.do_compile file I see messages which make me wonder:
>
> Checking whether python program exists...no
> Target Python doesn't exist - disabling Python.
> python = False (default True): build Python support and modules.
> GPS regression tests suppressed because socket_export or python is off.
>
> It looks to me that everything Python specific is disabled.
> Therefore I am missing on the target e.g. also the following file which should be generated:
>
> /usr/lib/python3.9/site-packages/gps/__init__.py
> /usr/lib/python3.9/site-packages/gps/gps.py
>
> Can anyone confirm this?

Confirmed!

The issue is that the package gpsd requires /usr/bin/python to be 
present as described in the documentation 
(https://gitlab.com/gpsd/gpsd/-/blob/master/build.adoc#user-content-quick-start). 
This is not the case in Yocto when using python3native bbclass. As 
described in the documentation it is possible to add a symlink called 
/usr/bin/python to the python interpreter in the sysroot. You can do 
this by adding:

     ln -sf python3-native/python3 ${STAGING_BINDIR_NATIVE}/python

When scons finds /usr/bin/python the python packages are also built in 
gpsd. Then you can continue to install and package ubxtool.

Best regards,
/Peter

