Return-Path: <andreabenini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03FFAE0076F; Sat, 17 Jan 2015 07:55:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreabenini[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.51 listed in list.dnswl.org]
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA9AFE00596
	for <yocto@yoctoproject.org>; Sat, 17 Jan 2015 07:55:15 -0800 (PST)
Received: by mail-qa0-f51.google.com with SMTP id f12so18324927qad.10
	for <yocto@yoctoproject.org>; Sat, 17 Jan 2015 07:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=F3vLR5oUGEbqVPy1u9uAb0C91JFSK2t2IH7McZCb4L8=;
	b=xD6HqQQmQlkBe6lLvMN9kd8Y0YadWB8eKL42Dfxk1+E6u+1aD2dIqt3EoXxpkPHeSt
	tVlElitAr65Rg4Gm90buMV2fySr+KhxnBsm0LbTo/XnzlBl89w7kHAsWOlqzaMC+amA1
	Rjg1JwYo0+YkVTBDrapRkzCdnWB4t+pJlvSFLa4h46Z52kZPBvrvi2LHtJsGpcN4H9tN
	XOc62b65usPzR9aV9+gMLQpNKqH0OcDTi4A2ZSu7sea03JepqCts65OrMd2FF2otOpfD
	tn1OtHntYHs8AG3gOkTmNpC5AyjMiq2lCnot06DEylEX1T0KQR9jwHphJ2Sw06U6MbHf
	Cw9A==
MIME-Version: 1.0
X-Received: by 10.140.82.47 with SMTP id g44mr32147853qgd.42.1421510114589;
	Sat, 17 Jan 2015 07:55:14 -0800 (PST)
Received: by 10.229.138.79 with HTTP; Sat, 17 Jan 2015 07:55:14 -0800 (PST)
Date: Sat, 17 Jan 2015 16:55:14 +0100
Message-ID: <CAOrUntbLEeYVK18nbsnt5Dyiz6wYVJc5GKimwwL1qeD65=tD8w@mail.gmail.com>
From: Andrea Benini <andreabenini@gmail.com>
To: yocto@yoctoproject.org
Subject: armhf support for meta-raspberrypi
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
X-List-Received-Date: Sat, 17 Jan 2015 15:55:30 -0000
Content-Type: multipart/alternative; boundary=001a11c129986cc277050cdb1d6e

--001a11c129986cc277050cdb1d6e
Content-Type: text/plain; charset=UTF-8

Hello List,
I'm a newbie yocto user and I decided to subscribe to this list because I'd
like to understand few basic steps related to a specific meta layer.
I'm using it since feb 2014 and I have spent initial months on the
environment itself, it's quite complex if you compare it to other similar
tools I know (openwrt, buildroot, crosstool-ng) but I decided to use it
because I understand its benefits.
I have decided to dedicate some time to a quite popular platform: Raspberry
Pi, I don't think I need to introduce it here... I have seen a meta layer
for it so I decided to give it a spin, after a while I have produced my
image. It works fine but it's currently using armel architecture and I wish
to switch to armhf because the hardware is capable of it (it has a decent
hardware floating point unit).
Don't know if this is the right list where this message could be addressed,
please let me know if I need to send it elsewhere.

meta layer comes from yocto site:
"git clone git://git.yoctoproject.org/meta-raspberrypi"
but I cannot see a mailing list dedicated to it.

Is there someone using armhf on it ?
Thanks in advance for your reply

Regards
Ben

--001a11c129986cc277050cdb1d6e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello List,<div>I&#39;m a newbie yocto user and I decided =
to subscribe to this list because I&#39;d like to understand few basic step=
s related to a specific meta layer.</div><div>I&#39;m using it since feb 20=
14 and I have spent initial months on the environment itself, it&#39;s quit=
e complex if you compare it to other similar tools I know (openwrt, buildro=
ot, crosstool-ng) but I decided to use it because I understand its benefits=
.</div><div>I have decided to dedicate some time to a quite popular platfor=
m: Raspberry Pi, I don&#39;t think I need to introduce it here... I have se=
en a meta layer for it so I decided to give it a spin, after a while I have=
 produced my image. It works fine but it&#39;s currently using armel archit=
ecture and I wish to switch to armhf because the hardware is capable of it =
(it has a decent hardware floating point unit).</div><div>Don&#39;t know if=
 this is the right list where this message could be addressed, please let m=
e know if I need to send it elsewhere.</div><div><br></div><div>meta layer =
comes from yocto site:</div><div>&quot;git clone git://<a href=3D"http://gi=
t.yoctoproject.org/meta-raspberrypi">git.yoctoproject.org/meta-raspberrypi<=
/a>&quot;</div><div>but I cannot see a mailing list dedicated to it.</div><=
div><br></div><div>Is there someone using armhf on it ?</div><div>Thanks in=
 advance for your reply</div><div><br></div><div>Regards</div><div>Ben</div=
></div>

--001a11c129986cc277050cdb1d6e--
