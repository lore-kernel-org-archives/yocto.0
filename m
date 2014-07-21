Return-Path: <w.s.ovalle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8E3FE0078E; Mon, 21 Jul 2014 01:02:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (w.s.ovalle[at]gmail.com)
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
	*      [209.85.216.48 listed in list.dnswl.org]
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C14E00788
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 01:02:51 -0700 (PDT)
Received: by mail-qa0-f48.google.com with SMTP id m5so4781685qaj.7
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 01:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7zVtcBoaD5mL/zUQzwe4yl3BJhVnOJcAPyOqOhkmm1E=;
	b=LWMsF8Nu7mN+U/LjxdJ/OFF2Y1Gp6z3QYBc5CQ2h8B/3bjOZP9reL16qf8Rfd/D5sS
	QeDrVMETyQOWtQ0h2iBLbHuO8ewtmo1I6nNFUAvdplH5b1LnvIZOYrETIWWm8Ox8znUq
	DESDcYcEs44EHxDdHk4Rep5BjTOmCA/cOfNQVniI2kvrZU9OY41F2UvVDxIqBJrski8I
	BzMKuYCnZ0qRWdUvoBP2aMRHP8T0PyIn06eWSUfIygBggx4IkwkF7pylK1oQw1BlfHyi
	bwJGA7/Jo95vk9l2LzOjs/kNvIXJ/haeHR0kq+k/+jDV66gGUih1n5Pqc+1CXJ98u3S0
	JKhg==
MIME-Version: 1.0
X-Received: by 10.224.15.197 with SMTP id l5mr22452480qaa.97.1405929771004;
	Mon, 21 Jul 2014 01:02:51 -0700 (PDT)
Received: by 10.140.42.4 with HTTP; Mon, 21 Jul 2014 01:02:50 -0700 (PDT)
Date: Mon, 21 Jul 2014 10:02:50 +0200
Message-ID: <CALYamyLPp6BG-1ev_+z2=ZeH_DhxAUsTRuJ86MQF6n6xi5uMew@mail.gmail.com>
From: "Wiktor S. Ovalle Correa" <w.s.ovalle@gmail.com>
To: yocto@yoctoproject.org
Subject: Building image without kernel
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
X-List-Received-Date: Mon, 21 Jul 2014 08:02:56 -0000
Content-Type: multipart/alternative; boundary=047d7bdc8e8a9477ea04feaf8800

--047d7bdc8e8a9477ea04feaf8800
Content-Type: text/plain; charset=UTF-8

Hi everyone.

I didn't find it anywhere - is it possible to only use linux headers
without compiling kernel?

My problem is rather unusual - i got to use custom kernel which has been
customized long ago in a horrible way by a former co-worker so it's
impossible to compile it with yocto in a reasonable time, but i need its
headers to compile other parts of a system.

And it appears that it might be enough to only disable building kernel
modules, if there's a way to do so.

Any suggestions are appreciated,
wiktor

--047d7bdc8e8a9477ea04feaf8800
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi everyone.<br><br></div>I didn&#39;t=
 find it anywhere - is it possible to only use linux headers without compil=
ing kernel?<br><br></div>My problem is rather unusual - i got to use custom=
 kernel which has been customized long ago in a horrible way by a former co=
-worker so it&#39;s impossible to compile it with yocto in a reasonable tim=
e, but i need its headers to compile other parts of a system.<br>
<br></div>And it appears that it might be enough to only disable building k=
ernel modules, if there&#39;s a way to do so.<br><br></div>Any suggestions =
are appreciated,<br>wiktor<br></div>

--047d7bdc8e8a9477ea04feaf8800--
