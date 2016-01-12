Return-Path: <neuberfran@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5400E00A7D; Tue, 12 Jan 2016 04:39:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	NORMAL_HTTP_TO_IP, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (neuberfran[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46C13E008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 04:38:58 -0800 (PST)
Received: by mail-vk0-f49.google.com with SMTP id n1so87406152vkb.3
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 04:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=DGXjGQYukG7759Q8i/VTSt4ggrTavwJtrLErE1LSFiU=;
	b=p7yBj4P3BaEkHuojdMlTg/iehVrqkxRoK5k1Z6+RfbzvxvQEpCwzn0LQRB2fgRoTmG
	niwLJiYKEMusrxKZxhkHhw3ClFbYhALzGHX0oy9IXHyWKiUkEvR3QrsZS5UCm9ZWv1A9
	G/43CBaNZBCzdvRgjxrITxkQW8FGxXIEbTQu9hXjKxvKGeDzEo1dKcpW3dO/0U6k7nxp
	mWM/y+R9SOmeGYHHsP0tKjrEmaRAfuyHBILwmNDoKhoZirgERAfwl4veHbSJsNTpjSVY
	vi7bZqYSW7kg1eCmILIrFq8xz7SNC8OzO693wlZW2xrQ9IG+BDd4bRMnZOXHHantrq4V
	IgIg==
MIME-Version: 1.0
X-Received: by 10.31.8.72 with SMTP id 69mr92077537vki.145.1452602338332; Tue,
	12 Jan 2016 04:38:58 -0800 (PST)
Received: by 10.31.47.71 with HTTP; Tue, 12 Jan 2016 04:38:58 -0800 (PST)
Date: Tue, 12 Jan 2016 09:38:58 -0300
Message-ID: <CABWL1PkzESEV1Xmb=R85UfrSTicCJX-NZ-5vPQ3s8tUBQ9SFUA@mail.gmail.com>
From: neuber sousa <neuberfran@gmail.com>
To: yocto@yoctoproject.org
Subject: NSUPDATE Package in intel edison with yocto version 159
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
X-List-Received-Date: Tue, 12 Jan 2016 12:39:02 -0000
Content-Type: multipart/alternative; boundary=001a1145508060580605292256b0

--001a1145508060580605292256b0
Content-Type: text/plain; charset=UTF-8

I'm trying to to this:
http://mkaczanowski.com/golang-build-dynamic-dns-service-go/



But I have error with NSUPDATE package



*root@neuberfran:~# opkg install nsupdate*
Unknown package 'nsupdate'.
Collected errors:

opkg_install_cmd: Cannot install package nsupdate





returning the link:
http://mkaczanowski.com/golang-build-dynamic-dns-service-go/



I see:* "**nsupdate to push updates on records. It is a part of the bind
project, so it can be found in bind-tools or bind-clientpackages."*



*root@neuberfran:~# ping 8.8.8.8*

PING 8.8.8.8 (8.8.8.8): 56 data bytes

64 bytes from 8.8.8.8: seq=0 ttl=53 time=55.101 ms

64 bytes from 8.8.8.8: seq=1 ttl=53 time=32.649 ms

64 bytes from 8.8.8.8: seq=2 ttl=53 time=32.983 ms

^C

--- 8.8.8.8 ping statistics ---

3 packets transmitted, 3 packets received, 0% packet loss

round-trip min/avg/max = 32.649/40.244/55.101 ms

*root@neuberfran:~# opkg install bind-client*

Unknown package 'bind-client'.

Collected errors:

 * opkg_install_cmd: Cannot install package bind-client.

*root@neuberfran:~# opkg install bind-tools*

Unknown package 'bind-tools'.

Collected errors:

 * opkg_install_cmd: Cannot install package bind-tools.

--001a1145508060580605292256b0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;bac=
kground-image:initial;background-repeat:initial"><span style=3D"font-size:9=
.5pt;font-family:Arial,sans-serif">I&#39;m trying to to
this:=C2=A0<a href=3D"http://mkaczanowski.com/golang-build-dynamic-dns-serv=
ice-go/" target=3D"_blank">http://mkaczanowski.com/golang-build-dynamic-dns=
-service-go/</a></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:9.5pt;font-family:=
Arial,sans-serif">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:9.5pt;font-family:=
Arial,sans-serif">But I have error with=C2=A0NSUPDATE=C2=A0package</span></=
p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:9.5pt;font-family:=
Arial,sans-serif">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><b><i><u><span style=3D"font-size:9.5pt;fon=
t-family:Arial,sans-serif">root@neuberfran:~#
opkg install=C2=A0nsupdate</span></u></i></b><span style=3D"font-size:9.5pt=
;font-family:Arial,sans-serif"><br>
Unknown package &#39;nsupdate&#39;.<br>
Collected errors:</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:9.5pt;font-family:=
Arial,sans-serif">opkg_install_cmd:
Cannot install package=C2=A0nsupdate</span></p>

<p class=3D"MsoNormal">=C2=A0</p>

<p class=3D"MsoNormal">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt"><span style=3D"font=
-size:9.5pt;font-family:Arial,sans-serif;background-image:initial;backgroun=
d-repeat:initial">returning the link:=C2=A0</span><span style=3D"font-size:=
12pt;font-family:&#39;Times New Roman&#39;,serif"><a href=3D"http://mkaczan=
owski.com/golang-build-dynamic-dns-service-go/" target=3D"_blank"><span sty=
le=3D"font-size:9.5pt;font-family:Arial,sans-serif;background-image:initial=
;background-repeat:initial">http://mkaczanowski.com/golang-build-dynamic-dn=
s-service-go/</span></a></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:9.5pt;font-family:=
Arial,sans-serif">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:9.5pt;font-family:=
Arial,sans-serif">I see:<i>=C2=A0&quot;</i></span><i><span style=3D"font-si=
ze:11.5pt;font-family:&#39;Times New Roman&#39;,serif;color:rgb(102,102,102=
)">nsupdate=C2=A0to push updates on records. It
is a part of the bind project, so it can be found in=C2=A0<b>bind-tools</b>=
=C2=A0or=C2=A0<b>bind-client</b>packages.&quot;</span></i><span style=3D"fo=
nt-size:9.5pt;font-family:Arial,sans-serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:9.5pt;font-family:=
Arial,sans-serif">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><b><u><span style=3D"font-size:12pt;font-fa=
mily:&#39;Times New Roman&#39;,serif">root@neuberfran:~#
ping 8.8.8.8</span></u></b><span style=3D"font-size:12pt;font-family:&#39;T=
imes New Roman&#39;,serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">PING 8.8.8.8
(8.8.8.8): 56 data bytes</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">64 bytes from=C2=A0<a href=3D"http://8.8.8.=
8/" target=3D"_blank">8.8.8.8</a>:
seq=3D0 ttl=3D53 time=3D55.101 ms</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">64 bytes from=C2=A0<a href=3D"http://8.8.8.=
8/" target=3D"_blank">8.8.8.8</a>:
seq=3D1 ttl=3D53 time=3D32.649 ms</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">64 bytes from=C2=A0<a href=3D"http://8.8.8.=
8/" target=3D"_blank">8.8.8.8</a>:
seq=3D2 ttl=3D53 time=3D32.983 ms</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">^C</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">--- 8.8.8.8 ping
statistics ---</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">3 packets transmitted,
3 packets received, 0% packet loss</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">round-trip min/avg/max
=3D 32.649/40.244/55.101 ms</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><b><u><span style=3D"font-size:12pt;font-fa=
mily:&#39;Times New Roman&#39;,serif">root@neuberfran:~#
opkg install bind-client</span></u></b><span style=3D"font-size:12pt;font-f=
amily:&#39;Times New Roman&#39;,serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">Unknown package
&#39;bind-client&#39;.</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">Collected errors:</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">=C2=A0*
opkg_install_cmd: Cannot install package bind-client.</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><b><u><span style=3D"font-size:12pt;font-fa=
mily:&#39;Times New Roman&#39;,serif">root@neuberfran:~#
opkg install bind-tools</span></u></b><span style=3D"font-size:12pt;font-fa=
mily:&#39;Times New Roman&#39;,serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">Unknown package
&#39;bind-tools&#39;.</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">Collected errors:</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:&=
#39;Times New Roman&#39;,serif">=C2=A0*
opkg_install_cmd: Cannot install package bind-tools.</span></p></div>

--001a1145508060580605292256b0--
