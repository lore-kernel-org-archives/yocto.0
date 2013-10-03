Return-Path: <munoz0raul@gmail.com>
Received: from mail-bk0-f42.google.com (mail-bk0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42DF7E0169F
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 05:34:17 -0700 (PDT)
Received: by mail-bk0-f42.google.com with SMTP id my10so918116bkb.1
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 05:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=b8BCc2OB4FrUj4f1TghVGGSaQtcdkhH9DQUU15LD2F0=;
	b=fRiC5BaQqPTBeP5pC9SvuLEVhbQWREk2ZcWaZEYQHNpeEPgREUUDtvNgOkF750guin
	lqCK8Q7PpXVbgeevMsydT1BqY5JDXu3zuvvSLPkUzTDqXCqaDNK6DWtf8iVhwO455Qkn
	r92JVSLXrCUSsHiuXjmyHZRR1TttT2Nwd3Q78fyC/r1BWMqMkz0Sm9wYGGtpUC0iZ0P/
	tKY5IqICDM5mMF1Yf0Zg3cWP+mm2ShX6u2OFdxvgN21C6IqYT9t6P/67ChdbUh/S7NuZ
	3FacSkN4txOfgu0BcwMl3NBnMaFTJu5Iwqeaqy7WCgL6pp/L5e+OQ3oLEYQWwwBALKrr
	9usQ==
MIME-Version: 1.0
X-Received: by 10.204.103.199 with SMTP id l7mr7432925bko.11.1380803656078;
	Thu, 03 Oct 2013 05:34:16 -0700 (PDT)
Received: by 10.205.19.197 with HTTP; Thu, 3 Oct 2013 05:34:16 -0700 (PDT)
Date: Thu, 3 Oct 2013 09:34:16 -0300
Message-ID: <CANmVirhM7Lo1_ZCfqJw1-U2oqu0b3DueWY71euz27GRz__3hkg@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Install Kernel Modules in rootfs
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
X-List-Received-Date: Thu, 03 Oct 2013 12:34:20 -0000
Content-Type: multipart/alternative; boundary=001a113351946d056004e7d5677a

--001a113351946d056004e7d5677a
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello All,

I'm Trying to install the kernel modules inside my rootfs but I couldn't
find an especific information that help me to do that!

I have in my /tmp/images/ the tgz with all the modules that I need.

modules--2.6.35.3-r32.23-imx28evk-20131002210958.tgz

I just want that this tzg was extracted inside my rootfs /lib/modules.

Please some one can help me with this?

Thanks so much.

--=20
*Raul Rosetto Mu=F1oz*

--001a113351946d056004e7d5677a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,<br></div><div><br></div><div>I&#39;m Tryin=
g to install the kernel modules inside my rootfs but I couldn&#39;t find an=
 especific information that help me to do that!</div><div><br></div><div>I =
have in my /tmp/images/ the tgz with all the modules that I need.</div>
<div><br></div><div>modules--2.6.35.3-r32.23-imx28evk-20131002210958.tgz</d=
iv><div><br></div><div>I just want that this tzg was extracted inside my ro=
otfs /lib/modules.</div><div><br></div><div>Please some one can help me wit=
h this?</div>
<div><br></div><div>Thanks so much.</div><div><br></div>-- <br>*Raul Rosett=
o Mu=F1oz*<br>
</div>

--001a113351946d056004e7d5677a--
