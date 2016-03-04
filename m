Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08E71E00C31; Fri,  4 Mar 2016 01:25:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
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
	*      [209.85.213.52 listed in list.dnswl.org]
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10B9CE00C08
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 01:25:37 -0800 (PST)
Received: by mail-vk0-f52.google.com with SMTP id c3so48129921vkb.3
	for <yocto@yoctoproject.org>; Fri, 04 Mar 2016 01:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=ld/sqqAeNm6uLYYJ1rdzIqQjx+k31+2BcZu5DloPac4=;
	b=bot8e44vh0kFTJXJkH9HCwxvh2ky7ThT66whWvui7L2GBUTc5IHVrbTiwh3RTf6GrT
	QDy4UmnhzRCDMoQSJ2CUm7GtGbt4dblwutF1q3Vvx0/GFy/5IF4y4Z3QUSNxf9P7SVTj
	IYF4W9I1t9ZdfXF+WQvkZKDNMibQ494mG1j+6dRA1WYD3X3HX6mDxbQt6Hbe/IRQW3ym
	fbh3ZPj+SZ76NajlVnOeTCv3yxiF0PdItBCKZ5shuxXYBGYeotjsxy8ZnADmPiiqFskS
	T6fB8AK1r/U4Z2phIARNob+yu2EwW3q596XB3ETEWhmYB3p4Ncgl4hhSsKwL32hg50/F
	Hp2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=ld/sqqAeNm6uLYYJ1rdzIqQjx+k31+2BcZu5DloPac4=;
	b=C3/s5CiWO0Y8+0hXi9HFoN0IGX9RVARq2eACWXJyJ5mB81yMbu/+EwwKgRfCovpmXC
	YmTDzckjsCygSh50H6n4xdFiwq2fJ4ZeSS8C64qI0U1qKd/n7mE/80taPihhBLqQjVgb
	p7U2Em+DHjYe+vEfu/H43b5R2MNtQCXJrVYu5u18DHIaYAZCctIqD7VmFFJPGX4mi7C3
	amR6tGvK9eY8nCFAWpHyTkA5trT/qzb/gkdFGSMZJDMdN0aqKL8y9vjCGpYGacCnSjbm
	ssXlet8z0K2f2KI8ZbIuPKLPvyUlptIPwJ5Zrb4upTOTYcOq7Fk6bYOypP8PJsrgc+mj
	PCUQ==
X-Gm-Message-State: AD7BkJKxkkPxfHisGloeRot6k4mvVwVtiT74W8W2TX1bFYVd4H1kc7KUKSobGxzdqVX/raM2aAR3fJrdqb7UFQ==
MIME-Version: 1.0
X-Received: by 10.31.49.210 with SMTP id x201mr5493135vkx.81.1457083537242;
	Fri, 04 Mar 2016 01:25:37 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Fri, 4 Mar 2016 01:25:37 -0800 (PST)
Date: Fri, 4 Mar 2016 14:55:37 +0530
Message-ID: <CALLyC8QD3TtxYCHX+UkwqmSVfzu02y8=GZmc0G8FdO8Rm22pbQ@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Which package provides reboot.target and shudown.target
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
X-List-Received-Date: Fri, 04 Mar 2016 09:25:43 -0000
Content-Type: multipart/alternative; boundary=001a1143873ea54032052d35b23d

--001a1143873ea54032052d35b23d
Content-Type: text/plain; charset=UTF-8

Hi,
               I am using systemd in my target, Currently I am using
"reboot -f" to reboot the system, i don't want to reboot like that. I am
not able to reboot my system by simply using "reboot" , because I am using
systemd not sysvinit. In sysvinit it internally calls "telinit" (or)
"shutdown" with runlevels(0-6) , But both are absent in my case . I am
using reboot command form "busybox". I dont know whether "reboot" command
is provided from any other package. Can any one suggest me how can i use
just "reboot" to reboot my system. I am using Yocto build setup (poky 1.7)
for this.
   I found that systemd provides some runlevels similar to sysvinit  as
given below
https://www.freedesktop.org/software/systemd/man/systemd.special.html
 Does any one can tell which recipe provides these target files. Any help
is appreciated .


Thanks and Regards
   Vivek

--001a1143873ea54032052d35b23d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,36,38);font-family:Arial,&#39;=
Helvetica Neue&#39;,Helvetica,sans-serif;font-size:15px;line-height:19.5px"=
>Hi,</span><div><span style=3D"color:rgb(34,36,38);font-family:Arial,&#39;H=
elvetica Neue&#39;,Helvetica,sans-serif;font-size:15px;line-height:19.5px">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I</span><span style=
=3D"color:rgb(34,36,38);font-family:Arial,&#39;Helvetica Neue&#39;,Helvetic=
a,sans-serif;font-size:15px;line-height:19.5px">=C2=A0am using systemd in m=
y target, Currently I am using &quot;reboot -f&quot; to reboot the system, =
i don&#39;t want to reboot like that. I am not able to reboot my system by =
simply using &quot;reboot&quot; , because I am using systemd not sysvinit. =
In sysvinit it internally calls &quot;telinit&quot; (or) &quot;shutdown&quo=
t; with runlevels(0-6) , But both are absent in my case . I am using reboot=
 command form &quot;busybox&quot;. I dont know whether &quot;reboot&quot; c=
ommand is provided from any other package. Can any one suggest me how can i=
 use just &quot;reboot&quot; to reboot my system. I am using Yocto build se=
tup (poky 1.7) for this. =C2=A0 =C2=A0</span></div><div><span style=3D"colo=
r:rgb(34,36,38);font-family:Arial,&#39;Helvetica Neue&#39;,Helvetica,sans-s=
erif;font-size:15px;line-height:19.5px">=C2=A0 =C2=A0I found that systemd p=
rovides some runlevels similar to sysvinit =C2=A0as given below</span></div=
><div><font color=3D"#222426" face=3D"Arial, Helvetica Neue, Helvetica, san=
s-serif"><span style=3D"font-size:15px;line-height:19.5px"><a href=3D"https=
://www.freedesktop.org/software/systemd/man/systemd.special.html">https://w=
ww.freedesktop.org/software/systemd/man/systemd.special.html</a></span></fo=
nt><br></div><div><font color=3D"#222426" face=3D"Arial, Helvetica Neue, He=
lvetica, sans-serif"><span style=3D"font-size:15px;line-height:19.5px">=C2=
=A0Does any one can tell which recipe provides these target files. Any help=
 is appreciated .</span></font></div><div><font color=3D"#222426" face=3D"A=
rial, Helvetica Neue, Helvetica, sans-serif"><span style=3D"font-size:15px;=
line-height:19.5px"><br></span></font></div><div><font color=3D"#222426" fa=
ce=3D"Arial, Helvetica Neue, Helvetica, sans-serif"><span style=3D"font-siz=
e:15px;line-height:19.5px"><br></span></font></div><div><font color=3D"#222=
426" face=3D"Arial, Helvetica Neue, Helvetica, sans-serif"><span style=3D"f=
ont-size:15px;line-height:19.5px">Thanks and Regards</span></font></div><di=
v><font color=3D"#222426" face=3D"Arial, Helvetica Neue, Helvetica, sans-se=
rif"><span style=3D"font-size:15px;line-height:19.5px">=C2=A0 =C2=A0Vivek</=
span></font></div><div><font color=3D"#222426" face=3D"Arial, Helvetica Neu=
e, Helvetica, sans-serif"><span style=3D"font-size:15px;line-height:19.5px"=
><br></span></font></div></div>

--001a1143873ea54032052d35b23d--
