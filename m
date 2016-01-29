Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70BE0E00BA0; Fri, 29 Jan 2016 05:50:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0023]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
Received: from mail-yk0-f179.google.com (mail-yk0-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 740F7E00B8C
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 05:50:04 -0800 (PST)
Received: by mail-yk0-f179.google.com with SMTP id r207so25332060ykd.2
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 05:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=mmhe1kpzqt2QEmg9+FQxzNpzviEdrsKfNpSiuaXomrg=;
	b=C0BVWmLRIEDd5ZDpGwvdHmJ3PFjXRNGWifZ5hIPQJoPJSyh4rqP1tx9IOSwMOs+Qf/
	BO8ndGB9fOkAhDr2zhwgSoFBemP6iP4G68jBAnwn4Yfh/pXOwkI++uy+ycg/mL0SKlxb
	6BA9CqwXsI3aSZhE56ELvjX0HyTC/B99ToI/V+7g+vRKp8/FcptcXB7na7JjVzQ/0BVA
	akGP7uCVglq2MiEzDw/jgJGMEOa1f+G930qC9nSDaCeIVU5kO7cTjwCXSXMQFKTPl6dg
	W4/xSvzk7/Av2eisiAD1NvQMhF/HlrHOhpjPYioPQewG4gZZOk1YczSMV+GhfRdY9PWF
	7fyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=mmhe1kpzqt2QEmg9+FQxzNpzviEdrsKfNpSiuaXomrg=;
	b=WcjQZ6EuAQS+yXwhzdCuZg5p/Z+ORC8h5zkwDJbQqBrC8gf2ZXoOko2oBfPuXMqXVj
	XWx0Z3x8yfR/v3rwOr979/gdWQq23EQhU+SARJCGbES9GWA/lAneX6v0w8jni9hMqXpE
	KCSAUK/7rTorAorA2PLnknMFSl3s50FkmkIvCuMMBUWeSSM+VfqInciuJ/JC35AE1Mrx
	NU3HGiHQycOiCAj8hYJkLIgbaZ8gIdk4sqbI8DOnIp/rneX6oZJipw1HV0nhACDG5o+d
	5ScY8IyTg+Bji9x2Qi9NZ4GWdNIIjGmOkkKP7bxpoerQtODLP2X+AwbkXNaWllbhZtfi
	zfWw==
X-Gm-Message-State: AG10YOTQiBQKq5Kpjnoq2ftsjz1yp/Zm5yJyVExAOsh+/+phkEmVDtzD3/ORurOK+AHL1w2rc24Hj/XsW5Ay/Q==
MIME-Version: 1.0
X-Received: by 10.129.158.9 with SMTP id v9mr4439739ywg.164.1454075403669;
	Fri, 29 Jan 2016 05:50:03 -0800 (PST)
Received: by 10.129.155.136 with HTTP; Fri, 29 Jan 2016 05:50:03 -0800 (PST)
Date: Fri, 29 Jan 2016 11:50:03 -0200
Message-ID: <CAF3SDA7jpBGLtxVs52ppR8suLB+AU=dytG4MPfi9swU5iu2Giw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: About style used on .bb* files
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
X-List-Received-Date: Fri, 29 Jan 2016 13:50:07 -0000
Content-Type: multipart/alternative; boundary=94eb2c0bd864e99dfb052a794f69

--94eb2c0bd864e99dfb052a794f69
Content-Type: text/plain; charset=UTF-8

Hi everybody

I'm here to ask if is there any "standard style" that should be used on
recipe files. I found my self using 8 columns tabs but I really don't know
if is there any style that should be used. If not would be good to create
one :). What you guys think about?

Regards,

-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c0bd864e99dfb052a794f69
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi everybody<br><br></div>I&#39;m here to ask if=
 is there any &quot;standard style&quot; that should be used on recipe file=
s. I found my self using 8 columns tabs but I really don&#39;t know if is t=
here any style that should be used. If not would be good to create one :). =
What you guys think about?<br><br></div>Regards,<br clear=3D"all"><div><div=
><div><br>-- <br><div class=3D"gmail_signature"><div style=3D"text-align:ri=
ght"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><=
b>Yoda Master</b></i><br></div></div>
</div></div></div></div>

--94eb2c0bd864e99dfb052a794f69--
