Return-Path: <azizbahri90@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46021E002AA; Sat, 21 Jun 2014 05:20:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (azizbahri90[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.54 listed in list.dnswl.org]
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3F61E00288
	for <yocto@yoctoproject.org>; Sat, 21 Jun 2014 05:19:59 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id eb12so8566430oac.27
	for <yocto@yoctoproject.org>; Sat, 21 Jun 2014 05:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SZ7ZgNUsG96iD8/ijY9fsWRuTDhXaHImJKApStUGofM=;
	b=dpu/8XGxiACZt9gl6ZQkR6v0IqnjuLXRZaYb3TBllR+gYyAygsw/+pay1WG7qnmI0o
	fWYWqJJuOf7xWrmUNyrf3wBzurZRN9TlpnrpvNiH3ebwwehcNVqiJCRDC91f8+K8l9+h
	fdakCgiqo+JFI2V3J1aS88dtU3mwb94YbhnteIGFZxLpJCeDUoUD42/cq/NHtUo9Vk/G
	DK6sJs2kyrx8dxNwREM7wQfopDtii11ey4OM/EHoW98bO+Y0sJKdgLKNThhzG8yZm6p6
	3jiEVqFqL50WBa0uLAySlOdXNcToLrcmtbsoLNve3O8Wb4Cr7/M5KouHpfR99a/nO9Lu
	yPhA==
MIME-Version: 1.0
X-Received: by 10.182.3.36 with SMTP id 4mr9800346obz.56.1403353198543; Sat,
	21 Jun 2014 05:19:58 -0700 (PDT)
Received: by 10.202.171.78 with HTTP; Sat, 21 Jun 2014 05:19:58 -0700 (PDT)
Date: Sat, 21 Jun 2014 13:19:58 +0100
Message-ID: <CAKxgB25HkSQ_Jt9+kM=5_ZtRPqEsNGGZfS4dO_W=TPCcc551oQ@mail.gmail.com>
From: Aziz Bahri <azizbahri90@gmail.com>
To: yocto@yoctoproject.org
Subject: P2P Communication
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
X-List-Received-Date: Sat, 21 Jun 2014 12:20:03 -0000
Content-Type: multipart/alternative; boundary=001a1134c62ce4c94f04fc57a0a1

--001a1134c62ce4c94f04fc57a0a1
Content-Type: text/plain; charset=UTF-8

I have two intel embedded devices with functioning WiFis, I am wondering
how to get P2P wifi connection between the two?

so far i have tried following guide on WiFi direct, with no sucess, is
there a better way of doing this?

http://riya80211.blogspot.ie/2013/07/p2p-configuration-of-wpasupplicant-in.html

the devices both has wpa_supplicant v2.0, but none has the p2p capabilities
enabled,  the guide suggests that i must recompile it with the following
settings enabled, but when i recompile it, i run into problems.

CONFIG_WPS=y
CONFIG_WPS2=y
CONFIG_P2P=y
CONFIG_AP=y

the new recompiled wpa_supplicant gives me the following errors when i
run  ./wpa_supplicant -i wlan2 -c /etc/p2p.conf -Dnl80211

first, libnl.s0.1 shared library not found,i figured libnl installed
in the system is libnl3, so i compile libnl1, this error went away.
then i run wpa_supplicant again with same settings i get "rfkill
cannot open rfkill control device" . and i have no idea how to fix
this.

--001a1134c62ce4c94f04fc57a0a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif;color:rgb(0,0,0)">I have two intel embedded devices with=
 functioning WiFis, I am wondering how to get P2P wifi connection between t=
he two? <br>
<br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif;color:rgb(0,0,0)">so far i have tried following guide on WiFi d=
irect, with no sucess, is there a better way of doing this?<br><br><a href=
=3D"http://riya80211.blogspot.ie/2013/07/p2p-configuration-of-wpasupplicant=
-in.html">http://riya80211.blogspot.ie/2013/07/p2p-configuration-of-wpasupp=
licant-in.html</a> <br>
<br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif;color:rgb(0,0,0)">the devices both has wpa_supplicant v2.0, but=
 none has the p2p capabilities enabled,=C2=A0 the guide suggests that i mus=
t recompile it with the following settings enabled, but when i recompile it=
, i run into problems.<br>
<pre style=3D"color:rgb(153,0,0);font-family:inherit"><span style=3D"font-s=
ize:small">CONFIG_WPS=3Dy
CONFIG_WPS2=3Dy
CONFIG_P2P=3Dy
CONFIG_AP=3Dy<br><font color=3D"#000000"><br>the new recompiled wpa_supplic=
ant gives me the following errors when i run  </font></span><span style=3D"=
font-size:small"><font color=3D"#000000"><span style=3D"color:purple">./wpa=
_supplicant -i wlan2 -c /etc/p2p.conf -Dnl80211<br>
<br></span>first, libnl.s0.1 shared library not found,i figured libnl insta=
lled in the system is libnl3, so i compile libnl1, this error went away.<br=
>then i run wpa_supplicant again with same settings i get &quot;rfkill cann=
ot open rfkill control device&quot; . and i have no idea how to fix this.</=
font><br>
</span></pre></div></div>

--001a1134c62ce4c94f04fc57a0a1--
