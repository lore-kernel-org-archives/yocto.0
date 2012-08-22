Return-Path: <navani.srivastava@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 935A5E01388
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 05:16:01 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so1645893pbb.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 05:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Zc6zd2aTnrCwX/LFcM9up74bOufthoNYILBZ+bFtJtw=;
	b=NQb//qkllVNmDzS4eU1PTL8hKIjz06+PybSKxSO5pCgFsoipeLtqVKc0qawQWUIgHR
	QGO8QwRxMWQUig0a8DvCn42hVqpkd9oghKAUAXt4lL858cNKJdq1d3L/qcQBYhjE3vnz
	Ap9qx0PPI7YnCamIdSyOCzLR4qDnVylZIdB/HYIxameIucHhk6bwIscLsjsj2sQgnOeN
	wX8rhmXwlDbvR7a13Cknj1m7cA7B07cvol0g8STXw3T6ZhoyaBoJ58AXwOAUqy3h6Bmy
	em1Pm3feid37XSFWveSuig2A3s19VRbWlKXAou00/gTAsdIar5Rx8WvV6L1y1rA0hh5M
	WALA==
Received: by 10.68.222.40 with SMTP id qj8mr52164481pbc.139.1345637759172;
	Wed, 22 Aug 2012 05:15:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.66.191.7 with HTTP; Wed, 22 Aug 2012 05:15:38 -0700 (PDT)
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE0996CAB9@POCITMSEXMB03.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE0996CAB9@POCITMSEXMB03.LntUniverse.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 22 Aug 2012 17:45:38 +0530
Message-ID: <CA+Z6RkX23xXB0YFHm=D_2-DVrHA5fRjkPcsefLQ9kqB6=RZwVw@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: navani.srivastava@lnties.com
Subject: cannot find -lgcov
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
X-List-Received-Date: Wed, 22 Aug 2012 12:16:01 -0000
Content-Type: multipart/alternative; boundary=047d7b2ee2e9a1c02e04c7d9b45c

--047d7b2ee2e9a1c02e04c7d9b45c
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,



I am using Poky-denzil-7.0 and have created SDK for arm1136 architecture.

I am facing problem in using gcov utility. I installed SDK on my server and
issued following command-



=93root@lnux-PC$
 /opt/poky/1.2/sysroots/i686-pokysdk-linux/usr/bin/armv6-vfp-poky-linux-gnu=
eabi/arm-poky-linux-gnueabi-gcc
-fprofile-arcs -ftest-coverage test.c



But it ended up with following error-



=93/opt/poky/1.2/sysroots/i686-pokysdk-linux/usr/libexec/armv6-vfp-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.6.4/ld:
cannot find -lgcov

collect2: ld returned 1 exit status=94



Do gcc-4.6 recipe need any modification related to gcov?

Any help is appreciable=85



Thanks and Regards

Navani Kamal Srivastava

--047d7b2ee2e9a1c02e04c7d9b45c
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">Hi,<div link=3D"blue" vlink=3D"purple" lang=
=3D"EN-US"><div>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">I am using Poky-denzil-7.0 and have created SDK for =
arm1136 architecture.</p>
<p class=3D"MsoNormal">I am facing problem in using gcov utility. I install=
ed SDK on my server and issued following command-</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">=93root@lnux-PC$ =A0/opt/poky/1.2/sysroots/i686-poky=
sdk-linux/usr/bin/armv6-vfp-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc -=
fprofile-arcs -ftest-coverage test.c</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">But it ended up with following error-</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">=93/opt/poky/1.2/sysroots/i686-pokysdk-linux/usr/lib=
exec/armv6-vfp-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.6.4/ld: cann=
ot find -lgcov</p>
<p class=3D"MsoNormal">collect2: ld returned 1 exit status=94</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">Do gcc-4.6 recipe need any modification related to g=
cov? </p>
<p class=3D"MsoNormal">Any help is appreciable=85</p>
<p class=3D"MsoNormal">=A0</p>
<p class=3D"MsoNormal">Thanks and Regards</p>
<p class=3D"MsoNormal">Navani Kamal Srivastava</p>
<p class=3D"MsoNormal">=A0</p>
</div></div>

</div><br>

--047d7b2ee2e9a1c02e04c7d9b45c--
