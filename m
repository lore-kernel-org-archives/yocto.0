Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD827E00C8F; Wed, 30 Nov 2016 19:54:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91A45E00C75
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 19:54:03 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id x23so3226952pgx.3
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 19:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=MTXVJW7dNsJRa1upenrAhdfRFgzgcl531Tp9IGvnVpI=;
	b=jd+pPfDP6UI4PavXEUJYyImeqUWen0ZrZVa0U/J/r2086sdLqBjDM2SXg2INjNXFh+
	ZG9MJi5G2ZLgdh03a35RzGXPI9q9UFF3nUgMCkKPd+b5pW3gNY66bQfgXU4OuMYyEJRQ
	5BM1AaP4I3stA4nsxn0w01VaRNsxrbPtyjIG4+Cxs5EWjT6xEf266NpjNhIjY3BFCpF/
	OKHs97uA7EeiaUUBpUHAEhkBus6VXkPG8mrzMhumTDj3kokkBgKIou9RrVoGkFT2uZr/
	TRyYcIuMJ0sxaitnPCQNvJLJdm4O3crsidbpTVjXxBJvlYggqqBxFjWuDwgz5iD2vCuY
	Z24Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=MTXVJW7dNsJRa1upenrAhdfRFgzgcl531Tp9IGvnVpI=;
	b=lRU5EOMtYWIWeKwE/pt5qjKMShUO2Qcp/XjmOqLcaRixWNvdsXbEwFb1FDLNr64gQW
	XOnhcx7blazPKK3Jpq0e4kgAevH4Andgwc0FzkG3dPsuTfXwByfVohCkeuAhTnv9hZs0
	zQFdjbfZoA6dXc+jaYpePD1TszfeVJAxzs8Nj0Sk1ye0mFdDdZhSSqVWKxcfP24xPJKp
	y/nq4GavhHRqgTYHDtRpTlWchUK48Kguu0W0L0LqODLvkmuQK4vq0d44tZDNvh3nNHzv
	Is8zkeMMwPLleTE0geZ5ZUrO0Ay5sigBgoUah8ESZ/sF41cpVHSCgptbMn2c2EUep/Ub
	Fpng==
X-Gm-Message-State: AKaTC00Gl/AYz5sUvG1TdOFAVkC5AMkp3xBuHClyg7VvnfaqvX0lakyG07dKqm/GfFQH+A==
X-Received: by 10.84.139.129 with SMTP id 1mr81115845plr.178.1480564442873;
	Wed, 30 Nov 2016 19:54:02 -0800 (PST)
Received: from [192.168.0.130] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	z62sm106055892pfz.19.2016.11.30.19.54.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Nov 2016 19:54:02 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Message-Id: <6A92E7CF-F574-4DA6-A84F-C65CA2F1E40E@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Date: Wed, 30 Nov 2016 19:54:01 -0800
In-Reply-To: <566212531.1559919.1480508909186.JavaMail.zimbra@ciright.com>
To: Rushin Thakkar <rthakkar@ciright.com>
References: <566212531.1559919.1480508909186.JavaMail.zimbra@ciright.com>
X-Mailer: Apple Mail (2.3251)
Cc: yocto@yoctoproject.org
Subject: Re: yocto project in raspberry pi 3
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
X-List-Received-Date: Thu, 01 Dec 2016 03:54:06 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0F31921E-8B51-44A5-AAC8-05273D944B67"

--Apple-Mail=_0F31921E-8B51-44A5-AAC8-05273D944B67
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Nov 30, 2016, at 4:28 AM, Rushin Thakkar <rthakkar@ciright.com> =
wrote:
>=20
> hello there i am trying to do yocto project on raspberry pi 3.
> when i run bitbake rpi-basic-image.
>=20
>=20
> this task 0: bcm2835-bootfiles-20151021-r3 do_fetch (pid 4922) is =
taking too much time. after that
>=20

You should use latest master where we have switched to tarball fetch
especially

=
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=3D71=
6b6a9cd7f24a8bacd539bb40519d185e3f963a =
<http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=3D7=
16b6a9cd7f24a8bacd539bb40519d185e3f963a>
> i am getting message like
>=20
>=20
>=20
>=20
> ERROR: Fetcher failure: Fetch command failed with exit code 128, =
output:
> Cloning into bare repository =
'/home/rushin/yoctopi/poky/build/downloads/git2/github.com.raspberrypi.fir=
mware.git'...
> fatal: The remote end hung up unexpectedly
> fatal: early EOF
> fatal: index-pack failed
>=20
> ERROR: Function failed: Fetcher failure for URL: =
'git://github.com/raspberrypi/firmware.git;protocol=3Dgit;branch=3Dmaster'=
. Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in: =
/home/rushin/yoctopi/poky/build/tmp/work/raspberrypi2-poky-linux-gnueabi/b=
cm2835-bootfiles/20151021-r3/temp/log.do_fetch.3385
> ERROR: Task 207 =
(/home/rushin/yoctopi/poky/meta-raspberrypi/recipes-bsp/bootfiles/bcm2835-=
bootfiles.bb, do_fetch) failed with exit code '1'
>=20
> can you tell me how to download this file manually??
>=20
> like in download folder there is file called=20
> wpa_supplicant-2.4.tar.gz . i can download this file. but how to get =
these files like wpa_supplicant-2.4.tar.gz.done,wpa_supplicant.sh.done??
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_0F31921E-8B51-44A5-AAC8-05273D944B67
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Nov 30, 2016, at 4:28 AM, Rushin Thakkar &lt;<a =
href=3D"mailto:rthakkar@ciright.com" =
class=3D"">rthakkar@ciright.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">hello =
there i am trying to do yocto project on raspberry pi 3.<br =
class=3D"">when i run bitbake rpi-basic-image.<br class=3D""><br =
class=3D""><br class=3D"">this task 0: bcm2835-bootfiles-20151021-r3 =
do_fetch (pid 4922) is taking too much time. after that<br class=3D""><br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div>You =
should use latest master where we have switched to tarball =
fetch</div><div>especially</div><div><br class=3D""></div><div><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/=
?id=3D716b6a9cd7f24a8bacd539bb40519d185e3f963a" =
class=3D"">http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/comm=
it/?id=3D716b6a9cd7f24a8bacd539bb40519d185e3f963a</a></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"">i am getting message like<br class=3D""><br class=3D""><br =
class=3D""><br class=3D""><br class=3D"">ERROR: Fetcher failure: Fetch =
command failed with exit code 128, output:<br class=3D"">Cloning into =
bare repository =
'/home/rushin/yoctopi/poky/build/downloads/git2/github.com.raspberrypi.fir=
mware.git'...<br class=3D"">fatal: The remote end hung up =
unexpectedly<br class=3D"">fatal: early EOF<br class=3D"">fatal: =
index-pack failed<br class=3D""><br class=3D"">ERROR: Function failed: =
Fetcher failure for URL: '<a =
href=3D"git://github.com/raspberrypi/firmware.git;protocol=3Dgit;branch=3D=
master" =
class=3D"">git://github.com/raspberrypi/firmware.git;protocol=3Dgit;branch=
=3Dmaster</a>'. Unable to fetch URL from any source.<br class=3D"">ERROR: =
Logfile of failure stored in: =
/home/rushin/yoctopi/poky/build/tmp/work/raspberrypi2-poky-linux-gnueabi/b=
cm2835-bootfiles/20151021-r3/temp/log.do_fetch.3385<br class=3D"">ERROR: =
Task 207 =
(/home/rushin/yoctopi/poky/meta-raspberrypi/recipes-bsp/bootfiles/bcm2835-=
bootfiles.bb, do_fetch) failed with exit code '1'<br class=3D""><br =
class=3D"">can you tell me how to download this file manually??<br =
class=3D""><br class=3D"">like in download folder there is file called =
<br class=3D"">wpa_supplicant-2.4.tar.gz . i can download this file. but =
how to get these files like =
wpa_supplicant-2.4.tar.gz.done,wpa_supplicant.sh.done??<br class=3D"">-- =
<br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_0F31921E-8B51-44A5-AAC8-05273D944B67--
