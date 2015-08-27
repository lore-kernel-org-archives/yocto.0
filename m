Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62DB6E00BEB; Thu, 27 Aug 2015 04:40:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
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
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 554F9E00985
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 04:40:30 -0700 (PDT)
Received: by ignq3 with SMTP id q3so6516478ign.1
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 04:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=UCMqw3a6XRCZfMWAnMRmceccgjDPbLgOeKY35DKZS/U=;
	b=xPUkEdb7E1RfmKy0YuplZlHUQAwj0WaJlhl95IZ4xR49dyOxz/I95ueXYiR5c0jqde
	RzYEppN+CyN3M12oiYLNblhRmCb7fIQobUI3djYIoj3JZsw+5Y7UXyiF5+hnk54iOIT8
	yVJgsUk2XdAw3morBaZTKOJiherZAXgwxDJJxI9A/MXARvu8mxqFV5X3gfYp6f/NqdSd
	bfa2TYwHokP7JvSQZa08nKhlHcuxI0HBzQ8qWPiVU5IkBVCaX1q882sVASwHm88A2QBn
	ZvqsCY9Zgmkd/0wTjvPi4AstMxvQPPwddF3egQ2f4+5r3e2L5CAOyHiIEePDNKfk8qqY
	Zedw==
MIME-Version: 1.0
X-Received: by 10.50.138.232 with SMTP id qt8mr16909741igb.21.1440675629779;
	Thu, 27 Aug 2015 04:40:29 -0700 (PDT)
Received: by 10.36.29.148 with HTTP; Thu, 27 Aug 2015 04:40:29 -0700 (PDT)
Date: Thu, 27 Aug 2015 19:40:29 +0800
Message-ID: <CAKGbVbu-gzaAfkuZVQP8Pua=SMYwxoHsvHqDci+Eo3FyPh+CQA@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to disable OVERRIDES temperally
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
X-List-Received-Date: Thu, 27 Aug 2015 11:40:32 -0000
Content-Type: multipart/alternative; boundary=089e01184cba265359051e496fcc

--089e01184cba265359051e496fcc
Content-Type: text/plain; charset=UTF-8

Hi all,

I want to load kernel module ci_hdrc_imx at boot time and add a conf file
in /etc/modprobe.d. I find it can be done by add
module_conf_ci_hdrc_imx = "my configure"

But the suffix "imx" is in OVERRIDES, so I get
module_conf_ci_hdrc = "my configure"

How to disable the OVERRIDES temperally here? Or may be there is another
way?

Thanks,
Qiang

--089e01184cba265359051e496fcc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I want to load kernel module ci=
_hdrc_imx at boot time and add a conf file in /etc/modprobe.d. I find it ca=
n be done by add</div><div>module_conf_ci_hdrc_imx =3D &quot;my configure&q=
uot;</div><div><br></div><div>But the suffix &quot;imx&quot; is in OVERRIDE=
S, so I get</div><div>module_conf_ci_hdrc =3D &quot;my configure&quot;<br><=
/div><div><br></div><div>How to disable the=C2=A0OVERRIDES temperally here?=
 Or may be there is another</div><div>way?</div><div><br></div><div>Thanks,=
</div><div>Qiang</div></div>

--089e01184cba265359051e496fcc--
