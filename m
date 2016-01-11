Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EE07E00B7D; Mon, 11 Jan 2016 02:08:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C621E00B70
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 02:08:56 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id b14so25557308wmb.1
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 02:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=/lkHwX1X6K4tnxG4z20AGoKj9arZfBpms8iqLQOVOyA=;
	b=aXg+sth+mxGq8sskiX5+RnVtB6qsK3eebySjTDubrJGVzSrSuGrY7fRbP7fFOwx9KP
	UDFrkMsS7VZpZ2Ta5bpQUrqYyAbRNJH3fTUZ6hH9SpCl9eXLGzDoqrIIrE7zvx8KprTk
	JpQ9Cdg3wdwU+EXMHDEt0kWjwe3Z/jGhq5HIZSBIqFIcMZYtZeHjMDZI2Bf3StRYPnRi
	sCEbdC+RZHBWX7mfvlC4yVEdUT3GGqWAplLfIwtbAMQuTjHwIA9XoM4ZNmnyXR15EUIY
	XvY6sdwHt7e8IhSDX554WhpbkXIvbwhBqW9TtN2WM+yfH3GeBhl452xtTv7r+cnMjUUW
	C7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/lkHwX1X6K4tnxG4z20AGoKj9arZfBpms8iqLQOVOyA=;
	b=W1s3OFSDzFPalJSZ6tpFeQqdgxhPIHToBy2bu1wGBAEfPeDWuvMB9Q/TQJ0vKUgWfC
	ThXseCtchy7PRJGa9tFyTpWi5h4QKYG65YJiMpdm0m96j1GngrabyYRusziMuGgBG2Fi
	axaW55Kr2vts7dHEjXe3rwIhgiyrBT+KUATcfmuaUhlndk3LXNzaxPefoDYDtr0EctsV
	kP1OsG2rUOTLwEThJ/o44eHeNUNxYeoOfKlyy5tg1HbF5YZixCFwxI3vLmQSrjxe3CLw
	kce71bSyWtUfuqUrZi5Up+5jmjx+oXh2irNu7WCVBHb8ki/gftXLmkuQo96bO9L/eVC2
	nJQg==
X-Gm-Message-State: ALoCoQlIKbqtA86iaavqx3++Je93W1qOasOddJC0EdLP3HvptR1yfyZf27kbsuDBuwsU883qnxmqQqpExzqgQdqpo9hCLY6OXQ==
X-Received: by 10.28.228.87 with SMTP id b84mr13510661wmh.36.1452506936020;
	Mon, 11 Jan 2016 02:08:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.129.200 with HTTP; Mon, 11 Jan 2016 02:08:16 -0800 (PST)
X-Originating-IP: [178.7.64.118]
In-Reply-To: <1450644797-13141-1-git-send-email-leon@anavi.org>
References: <1450644797-13141-1-git-send-email-leon@anavi.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Jan 2016 11:08:16 +0100
Message-ID: <CAK18fxHToV2V=7CqvOGGLRm4WW3FgwSztUt0cmpo7eaSBYaHTg@mail.gmail.com>
To: Leon Anavi <leon@anavi.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] python-rtimu: Add recipe to support RTIMULib
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
X-List-Received-Date: Mon, 11 Jan 2016 10:08:58 -0000
Content-Type: multipart/alternative; boundary=001a114b1700f4e41c05290c1fb5

--001a114b1700f4e41c05290c1fb5
Content-Type: text/plain; charset=UTF-8

Hi,



On Sun, Dec 20, 2015 at 9:53 PM, Leon Anavi <leon@anavi.org> wrote:

> RTIMULib is a C++ and Python library that makes it easy to use
> 9-dof and 10-dof IMUs with embedded Linux systems. Python
> module for Raspberry Pi Sense HAT depends on it.
>
> Python module python-rtimu uses the source code from the
> GitHub repository of RPi-Distro.
>
> Signed-off-by: Leon Anavi <leon@anavi.org>
> ---
>  recipes-devtools/python/python-rtimu_git.bb | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>  create mode 100644 recipes-devtools/python/python-rtimu_git.bb


Merged patch to master with some minor formatting tweaks (removed extra
space in SRC_URI and broke DESCRIPTION line around 90 chars).

Thanks,
--
Andrei Gherzan

--001a114b1700f4e41c05290c1fb5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div class=3D"gmail_extra"><br clear=3D"all"><div><div =
class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><br></div></div=
></div></div>
<br><div class=3D"gmail_quote">On Sun, Dec 20, 2015 at 9:53 PM, Leon Anavi =
<span dir=3D"ltr">&lt;<a href=3D"mailto:leon@anavi.org" target=3D"_blank">l=
eon@anavi.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb=
(204,204,204);border-left-style:solid;padding-left:1ex">RTIMULib is a C++ a=
nd Python library that makes it easy to use<br>
9-dof and 10-dof IMUs with embedded Linux systems. Python<br>
module for Raspberry Pi Sense HAT depends on it.<br>
<br>
Python module python-rtimu uses the source code from the<br>
GitHub repository of RPi-Distro.<br>
<br>
Signed-off-by: Leon Anavi &lt;<a href=3D"mailto:leon@anavi.org">leon@anavi.=
org</a>&gt;<br>
---<br>
=C2=A0recipes-devtools/python/<a href=3D"http://python-rtimu_git.bb" rel=3D=
"noreferrer" target=3D"_blank">python-rtimu_git.bb</a> | 12 ++++++++++++<br=
>
=C2=A01 file changed, 12 insertions(+)<br>
=C2=A0create mode 100644 recipes-devtools/python/<a href=3D"http://python-r=
timu_git.bb" rel=3D"noreferrer" target=3D"_blank">python-rtimu_git.bb</a></=
blockquote><div><br></div><div>Merged patch to master with some minor forma=
tting tweaks (removed extra space in SRC_URI and broke DESCRIPTION line aro=
und 90 chars).</div><div><br></div><div>Thanks,</div><div>--</div><div>Andr=
ei Gherzan=C2=A0</div></div></div></div>

--001a114b1700f4e41c05290c1fb5--
