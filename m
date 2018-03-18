Return-Path: <r10kindsofpeople@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED4A6E00C6B; Sun, 18 Mar 2018 11:11:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (r10kindsofpeople[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EBD3E00838
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2018 11:11:01 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id y2-v6so20028436lfc.5
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2018 11:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=fjscsSQoWlpsb5pJSQMklnVAABukhlW2qsSvLpTrRPg=;
	b=M063bJHBKbnacVKNkBJFCxQLrPYbaEe5HSDyo7WQUa5Yaa9fyBAtgqWZWOAsSQAWew
	bF/x/Li1/f/BipNoEbN6Wo/uYHI7VQTA1dH4Ej2bCQJz7z2CLDEnKqFxfueoiiJsWAX8
	F8fHCfjfOQBbT2PrWIfTZHBJ6BMwV4RlEAKZ/HCxBG5Uj5GYusKtZsuWUtmAitC2T1U2
	w7EWb/yVIQzE4qIWV1Ucv9FlY4mtFUr2+ULt3Poe7UkUbElDeO0d5/lp516AxXPK4T/f
	/GB8Dr0mtfNkFs06Bbp+EFJQP77EAhrBRwjjtFsqMqtQR3rzou6D6LHdh2QWYaX8cAbd
	i1HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=fjscsSQoWlpsb5pJSQMklnVAABukhlW2qsSvLpTrRPg=;
	b=kMS9jFRMMVTDMW/rlrqSO048znQvQsStxdyJOyaucLdbrTkYnOyQOM6oLwqS77u6VZ
	Qw9CAXqaKMPEieUQjvzMOe2qe5ILstV1FCNBuQ1bordP5q5HS/u6cSyIJTZdikJIpStW
	XEVGxaFBx1HPW4nJhs4UVGNfPhPnPA3c/WflOonH5uNI13LxqgwOJ7sqTPjCW+3s06yQ
	goj/HmryQt4nPyslCrqsGtuQJQ5+EMXedYRDyE5C6A44/6xVca5wE7R2DeSh4mS0EBbj
	6eRNXd1glYJsSygsgOqzSnQYIw2oPc5EdQzO6z8xNu/ARrkiCywvTGyXRJ4bE4eT4ayP
	AueA==
X-Gm-Message-State: AElRT7ERFlRo2zfICoS3vi/M+v9vSjtzqLKClQH5g9l1IGIUcNcx7mWe
	94MCEuWGRUxJ4qoHdZxx4iKb8txpbGkE2h6VkNDctg==
X-Google-Smtp-Source: AG47ELtk1W3MXWfPc04J7CmuZX6v70u299PyUIR8rAgiTpuKbQ/RRYNKK9FLsjWzuroxJuAm9GY9DqUQdDX8AG5CpFI=
X-Received: by 10.46.91.21 with SMTP id p21mr2529647ljb.38.1521396660089; Sun,
	18 Mar 2018 11:11:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAE8H0+VGybDX4udg73E24ie-DxK7_bkVPB3xKWer_gtpr885jQ@mail.gmail.com>
In-Reply-To: <CAE8H0+VGybDX4udg73E24ie-DxK7_bkVPB3xKWer_gtpr885jQ@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
Date: Sun, 18 Mar 2018 18:10:49 +0000
Message-ID: <CAE8H0+VprE4U2jfnoPJERuuEfDb8rM6oQVnCJdo8QSYt6gCCDw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-raspberrypi systemd rpi0-w bluetooth startup
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
X-List-Received-Date: Sun, 18 Mar 2018 18:11:03 -0000
Content-Type: multipart/alternative; boundary="94eb2c0d800c7cb9e70567b3c3d8"

--94eb2c0d800c7cb9e70567b3c3d8
Content-Type: text/plain; charset="UTF-8"

Update:  I suspect this is not the proper way to do this, but in case it
provides useful information toward a better solution...
1) systemctl disable brcm43438.service
2) modified 99-com.rules to include TAG+="systemd" and
ENV{SYSTEMD_WANTS}="device-brcm43438.service"
3) cp /lib/systemd/system/brcm43438.service
/etc/systemd/system/device-brcm43438.service
4) modified device-brcm43438.service to be as follows:
[Unit]
Description=Broadcom BCM43438 bluetooth HCI

[Service]
Type=simple
ExecStart=/usr/bin/hciattach -n /dev/serial1 bcm43xx 921600 noflow -
Restart=on-failure

note removal of Before, After, ConditionPath, Install sections and addition
of Restart=on-failure.  This last was to cope with an intermittent timeout
in hciattach.  Suppose I should have tried increasing the timeout first.

This seems to have gotten me to the point of it starting up at least 10
times successfully.  Bottom line, in my opinion, is that brcm43438.service
is somehow running  before the udev script can create the symbolic link for
/dev/serial1 -> /dev/ttyAMA0 despite the  "After=dev-serial1.device"
clause.

John


On Sat, Mar 17, 2018 at 12:32 PM r10kindsofpeople <
r10kindsofpeople@gmail.com> wrote:

> Background:  I'm trying to bring up the pi zero w's bluetooth using
> systemd.  Started with rocko and then moved to 'master' of meta-raspberry
> pi, sync'd about a week ago after noticing that there were some recent
> updates in this area.
>
> There was an initial problem with /dev/serial1 not showing up...I found
> udev-rules-rpi.bb, added it to my layer, and when it still didn't show up
> in my rootfs, I punted and installed it in /etc/udev/rules.d by hand and
> now /dev/serial1 shows up.  Given time, I can probably fix the recipe on my
> own, so moving on.
>
> But brcm43438.service still fails on boot.  Despite having
> "After=dev-serial1.device" in the service Unit section, it fails with:
>
> Mar 17 16:21:13 raspberrypi0-wifi systemd[1]: Started Broadcom BCM43438
> bluetooth HCI.
> Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can't open serial port:
> No such file or directory
> Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can't initialize device:
> No such file or directory
> Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service:
> Main process exited, code=exited, status=1/FAILURE[[0m
> Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service:
> Unit entered failed state.[[0m
> Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service:
> Failed with result 'exit-code'.[[0m
>
> If, after booting and ssh'ing into pi, I restart the service, it starts
> successfully.
>
> Any hints about what I might change to get the brcm43438.service to start
> correctly the first time (every time)?
>
> John
>

--94eb2c0d800c7cb9e70567b3c3d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Update:=C2=A0 I suspect this is not the proper way to do t=
his, but in case it provides useful information toward a better solution...=
<div>1) systemctl disable brcm43438.service</div><div>2) modified 99-com.ru=
les to include TAG+=3D&quot;systemd&quot; and ENV{SYSTEMD_WANTS}=3D&quot;de=
vice-brcm43438.service&quot;</div><div>3) cp /lib/systemd/system/brcm43438.=
service /etc/systemd/system/device-brcm43438.service</div><div>4) modified =
device-brcm43438.service to be as follows:</div><div><div><span style=3D"fo=
nt-size:13px">[Unit]</span></div><div><span style=3D"font-size:13px">Descri=
ption=3DBroadcom BCM43438 bluetooth HCI</span></div><div><span style=3D"fon=
t-size:13px"><br></span></div><div><span style=3D"font-size:13px">[Service]=
</span></div><div><span style=3D"font-size:13px">Type=3Dsimple</span></div>=
<div><span style=3D"font-size:13px">ExecStart=3D/usr/bin/hciattach -n /dev/=
serial1 bcm43xx 921600 noflow -</span></div><div><span style=3D"font-size:1=
3px">Restart=3Don-failure</span></div></div><div><br></div><div>note remova=
l of Before, After, ConditionPath, Install sections and addition of Restart=
=3Don-failure.=C2=A0 This last was to cope with an intermittent timeout in =
hciattach.=C2=A0 Suppose I should have tried increasing the timeout first.=
=C2=A0=C2=A0</div><div><br></div><div>This seems to have gotten me to the p=
oint of it starting up at least 10 times successfully.=C2=A0 Bottom line, i=
n my opinion, is that brcm43438.service is somehow running=C2=A0=C2=A0befor=
e the udev script can create the symbolic link for /dev/serial1 -&gt; /dev/=
ttyAMA0 despite the=C2=A0 &quot;After=3Ddev-serial1.device&quot; clause.=C2=
=A0=C2=A0</div><div><br></div><div>John</div><div><div><br></div></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sat, Mar 17, 2018 at 1=
2:32 PM r10kindsofpeople &lt;<a href=3D"mailto:r10kindsofpeople@gmail.com">=
r10kindsofpeople@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr"><div>Background:=C2=A0 I&#39;m trying to bring up t=
he pi zero w&#39;s bluetooth using systemd.=C2=A0 Started with rocko and th=
en moved to &#39;master&#39; of meta-raspberry pi, sync&#39;d about a week =
ago after noticing that there were some recent updates in this area.=C2=A0=
=C2=A0</div><div><br></div><div>There was an initial problem with /dev/seri=
al1 not showing up...I found <a href=3D"http://udev-rules-rpi.bb" target=3D=
"_blank">udev-rules-rpi.bb</a>, added it to my layer, and when it still did=
n&#39;t show up in my rootfs, I punted and installed it in /etc/udev/rules.=
d by hand and now /dev/serial1 shows up.=C2=A0 Given time, I can probably f=
ix the recipe on my own, so moving on.</div><div><br></div><div>But brcm434=
38.service still fails on boot.=C2=A0 Despite having &quot;After=3Ddev-seri=
al1.device&quot; in the service Unit section, it fails with:</div><div><br>=
</div><div>Mar 17 16:21:13 raspberrypi0-wifi systemd[1]: Started Broadcom B=
CM43438 bluetooth HCI.</div><div>Mar 17 16:21:14 raspberrypi0-wifi hciattac=
h[105]: Can&#39;t open serial port: No such file or directory</div><div>Mar=
 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can&#39;t initialize device:=
 No such file or directory</div><div>Mar 17 16:21:14 raspberrypi0-wifi syst=
emd[1]: [[0;1;39mbrcm43438.service: Main process exited, code=3Dexited, sta=
tus=3D1/FAILURE[[0m</div><div>Mar 17 16:21:14 raspberrypi0-wifi systemd[1]:=
 [[0;1;39mbrcm43438.service: Unit entered failed state.[[0m</div><div>Mar 1=
7 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service: Failed=
 with result &#39;exit-code&#39;.[[0m</div><div><br></div><div>If, after bo=
oting and ssh&#39;ing into pi, I restart the service, it starts successfull=
y.=C2=A0=C2=A0</div><div><br></div><div>Any hints about what I might change=
 to get the brcm43438.service to start correctly the first time (every time=
)?</div><div><br></div><div>John</div></div></blockquote></div>

--94eb2c0d800c7cb9e70567b3c3d8--
