Return-Path: <sudhangathan@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 802F3E014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:07:31 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hj19so8553443wib.9
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to:cc
	:content-type; bh=dJ4KBbrEbG1wnPIVEQNBK0GTsgIfullbwq1hkzSQ4rQ=;
	b=kBr0lgooxyZBJUnMpTi6IYbkWhHdQQTSj4fNEyGAk0g0isWGwQJpJmjJnLAyXe3pKQ
	LmWK6ac+GXmK4zSQNVGwOiBc1ShJUoRLohrr9KDHxwzZR8O5fPkjiS+NqPlYDc8ZdU0I
	6AfiNB3tKCN/z8wk2B1E1rQN/2PsJdfxMieKWG9WPvv/WbdiCGn8c/wj+b7zWqwTmP+l
	KhH9a8DPAI4DpaMMw6+f+r5L8NKK2j/lVRGCmxw0RgAWFriTbL+LcpWIsF+nSLlFvpEc
	rgSbHp38hbUbHITuMo8Nbzh+KPZyMANMwhWqYV30kYfh2Yyyp7mFG84JgAEtAHefFQoQ
	plEw==
X-Received: by 10.194.92.231 with SMTP id cp7mr10634563wjb.3.1366891650128;
	Thu, 25 Apr 2013 05:07:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.114.197 with HTTP; Thu, 25 Apr 2013 05:07:10 -0700 (PDT)
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Thu, 25 Apr 2013 17:37:10 +0530
Message-ID: <CAGX3a9_nTNHnFfnyup52AGD=ApvZy8WW0dNkSo-V2mO5hGvh5w@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Chris Whittenburg <whittenburg@gmail.com>
Subject: Missing something in UAP for Overo-Fire
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
X-List-Received-Date: Thu, 25 Apr 2013 12:07:31 -0000
Content-Type: multipart/alternative; boundary=047d7bfd0c2e40a14b04db2e4344

--047d7bfd0c2e40a14b04db2e4344
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I have included this folder in my poky folder, but still i'm not getting
the UAP drivers and firmware up and running.

https://github.com/chrisw957/meta-gumstix/commit/d0dbc51e1643860f9066c5e817db023fb062362c

I'm compiling for Gumstix overo fire on an x86 Ubuntu Studio machine.
No files related to the UAP are getting included in the rootfs tar ball.
I'm not able to find the uap8xxx.ko file in the final build.
The contents of this folder are:
/home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-sakoman-3.5-r0/git/drivers/net/wireless/libertas_uap
built-in.o
Makefile
uap_debug.c
uap_drv.h
uap_fw.h
uap_headers.h
uap_main.c
uap_proc.c
uap_sdio_mmc.c
uap_sdio_mmc.h

Looks like it is partially getting compiled but not the final .ko files.
I'l be glad to reply with any other details.

Regards,
---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------

--047d7bfd0c2e40a14b04db2e4344
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br><br></div>I have included this folder in my=
 poky folder, but still i&#39;m not getting the UAP drivers and firmware up=
 and running.<br><div><pre><a href=3D"https://github.com/chrisw957/meta-gum=
stix/commit/d0dbc51e1643860f9066c5e817db023fb062362c">https://github.com/ch=
risw957/meta-gumstix/commit/d0dbc51e1643860f9066c5e817db023fb062362c</a><br=
>

</pre>I&#39;m compiling for Gumstix overo fire on an x86 Ubuntu Studio mach=
ine.<br></div><div>No files related to the UAP are getting included in the =
rootfs tar ball. I&#39;m not able to find the uap8xxx.ko file in the final =
build.<br>

The contents of this folder are:<br>/home/desen555/yocto/build/tmp/work/ove=
ro-poky-linux-gnueabi/linux-sakoman-3.5-r0/git/drivers/net/wireless/liberta=
s_uap<br>built-in.o<br>Makefile=A0 <br>uap_debug.c=A0 <br>uap_drv.h=A0 <br>=
uap_fw.h=A0 <br>

uap_headers.h=A0 <br>uap_main.c=A0 <br>uap_proc.c=A0 <br>uap_sdio_mmc.c=A0 =
<br>uap_sdio_mmc.h<br><br></div><div>Looks like it is partially getting com=
piled but not the final .ko files. I&#39;l be glad to reply with any other =
details.<br>

<br></div><div>Regards,<br clear=3D"all"></div><div><div><div>-------------=
--------------------<br>Sudhangathan BS<br>Ph:(+91) 9731-905-205<br>-------=
--------------------------</div>
</div></div></div>

--047d7bfd0c2e40a14b04db2e4344--
