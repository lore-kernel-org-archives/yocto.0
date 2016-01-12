Return-Path: <neuberfran@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 127D7E00ACE; Tue, 12 Jan 2016 13:02:54 -0800 (PST)
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
	*      [209.85.213.54 listed in list.dnswl.org]
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65CF3E00A9C
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 13:02:50 -0800 (PST)
Received: by mail-vk0-f54.google.com with SMTP id a123so219967646vkh.1
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 13:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Pi5+lLRTOwgareN0CH6xCyV0MRnDSBKPk1Ier3hYktc=;
	b=OI8JbHyC42JavVziqIxZbEIJh3agJ63MMLq3FR2yrCnyUcy1+S3uysQz3X0GMzw/Dz
	ZfuD0m81s8Bk1Vy/0wd15uiTgDvEBjVyl4ceZ9rb65JkcQDaNpAl0lp9NNHcdH8oibz+
	3LwP96140oZFbNRL/RFsRdYOTR+P1otQjYVogxDC8lcnN49ysHs8qN6CHJY3sYlQn8nj
	ZbrKk1xT9gcK/5v7zVfFaSdY+Fo5bSBg7/EveYWlAuQS/P0vccwOD2gmVly1Tzxc7zSL
	VOB+vfxOMQXMkUHI8RfFDxxQ1J6vDNEtYEF6A+zhYRqZ7qhVAoCldZyxo/1LsR+EIn10
	YR5Q==
MIME-Version: 1.0
X-Received: by 10.31.49.210 with SMTP id x201mr27911278vkx.81.1452632570261;
	Tue, 12 Jan 2016 13:02:50 -0800 (PST)
Received: by 10.31.47.71 with HTTP; Tue, 12 Jan 2016 13:02:49 -0800 (PST)
Received: by 10.31.47.71 with HTTP; Tue, 12 Jan 2016 13:02:49 -0800 (PST)
In-Reply-To: <CABWL1PkzESEV1Xmb=R85UfrSTicCJX-NZ-5vPQ3s8tUBQ9SFUA@mail.gmail.com>
References: <CABWL1PkzESEV1Xmb=R85UfrSTicCJX-NZ-5vPQ3s8tUBQ9SFUA@mail.gmail.com>
Date: Tue, 12 Jan 2016 18:02:49 -0300
Message-ID: <CABWL1PndDpdT1oV7EPcTTZ4gs=M0kqKez1NsgDNyHdUcveJULw@mail.gmail.com>
From: neuber sousa <neuberfran@gmail.com>
To: yocto@yoctoproject.org, zhenmingx.zhao@intel.com
Subject: Re: NSUPDATE Package in intel edison with yocto version 159
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
X-List-Received-Date: Tue, 12 Jan 2016 21:02:54 -0000
Content-Type: multipart/alternative; boundary=001a1143873e56f7c00529296098

--001a1143873e56f7c00529296098
Content-Type: text/plain; charset=UTF-8

ask for personal help me please
Em 12/01/2016 10:38, "neuber sousa" <neuberfran@gmail.com> escreveu:

> I'm trying to to this:
> http://mkaczanowski.com/golang-build-dynamic-dns-service-go/
>
>
>
> But I have error with NSUPDATE package
>
>
>
> *root@neuberfran:~# opkg install nsupdate*
> Unknown package 'nsupdate'.
> Collected errors:
>
> opkg_install_cmd: Cannot install package nsupdate
>
>
>
>
>
> returning the link:
> http://mkaczanowski.com/golang-build-dynamic-dns-service-go/
>
>
>
> I see:* "**nsupdate to push updates on records. It is a part of the bind
> project, so it can be found in bind-tools or bind-clientpackages."*
>
>
>
> *root@neuberfran:~# ping 8.8.8.8*
>
> PING 8.8.8.8 (8.8.8.8): 56 data bytes
>
> 64 bytes from 8.8.8.8: seq=0 ttl=53 time=55.101 ms
>
> 64 bytes from 8.8.8.8: seq=1 ttl=53 time=32.649 ms
>
> 64 bytes from 8.8.8.8: seq=2 ttl=53 time=32.983 ms
>
> ^C
>
> --- 8.8.8.8 ping statistics ---
>
> 3 packets transmitted, 3 packets received, 0% packet loss
>
> round-trip min/avg/max = 32.649/40.244/55.101 ms
>
> *root@neuberfran:~# opkg install bind-client*
>
> Unknown package 'bind-client'.
>
> Collected errors:
>
>  * opkg_install_cmd: Cannot install package bind-client.
>
> *root@neuberfran:~# opkg install bind-tools*
>
> Unknown package 'bind-tools'.
>
> Collected errors:
>
>  * opkg_install_cmd: Cannot install package bind-tools.
>

--001a1143873e56f7c00529296098
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">ask for personal help me please</p>
<div class=3D"gmail_quote">Em 12/01/2016 10:38, &quot;neuber sousa&quot; &l=
t;<a href=3D"mailto:neuberfran@gmail.com">neuberfran@gmail.com</a>&gt; escr=
eveu:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"lt=
r"><p class=3D"MsoNormal" style=3D"margin-bottom:0.0001pt;background-image:=
initial;background-repeat:initial"><span style=3D"font-size:9.5pt;font-fami=
ly:Arial,sans-serif">I&#39;m trying to to
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
</blockquote></div>

--001a1143873e56f7c00529296098--
