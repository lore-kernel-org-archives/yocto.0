Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FE33E00C3A; Mon, 11 Sep 2017 04:58:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_IMAGE_ONLY_20,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, T_REMOTE_IMAGE,
	WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* 1.5 HTML_IMAGE_ONLY_20 BODY: HTML: images with 1600-2000 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.177 listed in dnsbl.sorbs.net]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA0A2E00BB1
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 04:58:07 -0700 (PDT)
Received: by mail-wr0-f177.google.com with SMTP id o42so14058107wrb.3
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 04:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5kGKigQfxctkd0w63sIf3qFGjJUaoTAlFlkhtkGT9wo=;
	b=JgjoXS4WLrfRluzWnDbEcELM+ptsgzrtX3B1in7fQxLW1PmOhDMQs8xL0fkvHrkGnN
	MTOb45rXNI7M1K7eNFXKR21UrujvVEEV/Avvbqk+yhRVipSsDrnquEozkSL7XXiy6bWc
	oXdFF9hBN7/lm5vAhCLKFSiDq50Scuz6akunGz1phceuty+LJqMgYvQU3qdJZU7In3gC
	cCZ7oTJBf2ZieANnVb3uw8GL3ouTJyWsdZJEyJTQesvYqFO9jlK397bHiNGBfWsPMQEI
	Jy5lB9a1233baq3W//FrGf9Pd0j7c1oArtxnZQtul5wl2uxEVF78mkteiEUk2uaHxFjZ
	9t+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5kGKigQfxctkd0w63sIf3qFGjJUaoTAlFlkhtkGT9wo=;
	b=kpZNtv5lUfRBxsBOFJQw0N2ICmwLsB4vTmejGsDS+JNLLIRzVeN7xDlOk1O8aJOlBi
	KU3obNzgYIDTygwKcAgYfu/NeLJIQV44arUCWlzRxKeJH+7NehvHDaTwIgbZ2jgBe1O0
	wfT4eEYN1NFkf/ixTbRWpfQXQ4HDHeQmmbZEWBTGM9trbQXDxsI7U2Qwobi40ZwNe9GW
	VeVubdLiD5lY/xLA5g6yVE19brLeLn5y/Z/NkUoXcI+otChgIEkWJiY+NXCn61xXHqC4
	xGIErh6BSM2w9twpls9oMJlCO2TzT3nY6zvBqVkcfQePBLmVaAfDyX7y923crzteLCGs
	u+1Q==
X-Gm-Message-State: AHPjjUjX6OvW25lMz5eR0vS88o08jP+rQgO6rV3cHZ6d/j3Cpvu9f0As
	bAgIYypYGfv0QISJ4S/UVaCaJvWa4rNN
X-Google-Smtp-Source: ADKCNb5seFALgOe7LsHnxhSrlagv45n9wdbqX0/EMEHSsXlelT1ymupaUV3ZCfGhYJnB3V8E+358RJ9EYcewa9nTRTA=
X-Received: by 10.223.143.105 with SMTP id p96mr8499820wrb.118.1505131086542; 
	Mon, 11 Sep 2017 04:58:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.178.206 with HTTP; Mon, 11 Sep 2017 04:58:05 -0700 (PDT)
X-Originating-IP: [109.150.130.236]
Received: by 10.28.178.206 with HTTP; Mon, 11 Sep 2017 04:58:05 -0700 (PDT)
In-Reply-To: <CABFXn3HvU4iNJ=GztVqe=yqMTwBS=hvbYXtXN=va0tLjdDEPqg@mail.gmail.com>
References: <CABFXn3HvU4iNJ=GztVqe=yqMTwBS=hvbYXtXN=va0tLjdDEPqg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Sep 2017 12:58:05 +0100
Message-ID: <CAK18fxEwEQE-aNvpDdvWHQbzTb-c_vX9s9qN12gjMtcaYWEtkw@mail.gmail.com>
To: yahia farghaly <yahiafarghaly@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Could not inherit file classes/pypi.bbclass
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
X-List-Received-Date: Mon, 11 Sep 2017 11:58:09 -0000
Content-Type: multipart/alternative; boundary="f403045f56a0c112d30558e8a3be"

--f403045f56a0c112d30558e8a3be
Content-Type: text/plain; charset="UTF-8"

On 11 Sep 2017 12:51, "yahia farghaly" <yahiafarghaly@gmail.com> wrote:

i cloned the latest pyro version with meta-raspberry pi . i added
meta-raspberrypi to bblayer and adjust the machine ?= "raspberry pi" when i
bitbake rpi-hwup-image*.*

it throws me the error of
*ERROR: ParseError at
/home/yahia/Desktop/elinux_dev/bake_factory/git_versions/poky/meta-raspberrypi/recipes-devtools/python/rpi-gpio_0.6.3.bb:8
<http://rpi-gpio_0.6.3.bb:8>: Could not inherit file classes/pypi.bbclass*


There is a dependency in the README which you missed in the bblayers.
Namely meta-python.
--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--f403045f56a0c112d30558e8a3be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div data-smartmail=3D"gmail_signature" dir=3D"auto"><br>=
</div><div class=3D"gmail_extra" dir=3D"auto"><br><div class=3D"gmail_quote=
">On 11 Sep 2017 12:51, &quot;yahia farghaly&quot; &lt;<a href=3D"mailto:ya=
hiafarghaly@gmail.com">yahiafarghaly@gmail.com</a>&gt; wrote:<br type=3D"at=
tribution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><img width=3D"0" heigh=
t=3D"0" class=3D"m_8985797129070672451mailtrack-img" alt=3D"" style=3D"disp=
lay:flex" src=3D"https://mailtrack.io/trace/mail/7ffec95444b618b8cfa3835462=
cfeef35f30a364.png?u=3D1822760">i cloned the latest pyro version with meta-=
raspberry pi . i added meta-raspberrypi to bblayer and adjust the machine ?=
=3D &quot;raspberry pi&quot; when i bitbake rpi-hwup-image<i class=3D"m_898=
5797129070672451gmail-icon-hdd" title=3D"" style=3D"display:inline-block;wi=
dth:14px;height:14px;margin-top:1px;line-height:14px;vertical-align:text-to=
p;background-image:url(&quot;http://../img/glyphicons-halflings.png&quot;);=
background-position:0px -144px;background-repeat:no-repeat;margin-left:6px;=
color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif;font-size:14px">.</i><div><br></div><div>it throws me the error =
of=C2=A0</div><div><i>ERROR: ParseError at /home/yahia/Desktop/elinux_<wbr>=
dev/bake_factory/git_versions/<wbr>poky/meta-raspberrypi/recipes-<wbr>devto=
ols/python/<a href=3D"http://rpi-gpio_0.6.3.bb:8" target=3D"_blank">rpi-gpi=
o_0.6.<wbr>3.bb:8</a>: Could not inherit file classes/pypi.bbclass</i></div=
></div></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">There is a dependency in the README which you missed in the bblayers. Na=
mely meta-python.</div><div dir=3D"auto"><span style=3D"font-family:sans-se=
rif">--</span><br style=3D"font-family:sans-serif"><span style=3D"font-fami=
ly:sans-serif">Andrei Gherzan</span><br style=3D"font-family:sans-serif"><s=
pan style=3D"font-family:sans-serif">gpg: rsa4096/D4D94F67AD0E9640 | t: @ag=
herzan</span></div></div>

--f403045f56a0c112d30558e8a3be--
