Return-Path: <dhkoshtidheeraj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16908E00C87; Wed, 21 Nov 2018 04:11:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dhkoshtidheeraj[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A18B5E00C71
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 04:11:13 -0800 (PST)
Received: by mail-it1-f176.google.com with SMTP id m15so8474833itl.4
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 04:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=WxHjiorLpkfup8DtCZhTTKs+BM6yVofZZfMHH01Z/wQ=;
	b=u0iFNqTYoloXppOrLhDqKlN93yTmn1o5ThqLsjaiJMalgL1fg3J2myRtBXzE9NI5ad
	IYV0QCuoblj62tYsLr1LDfCv6/xyso9rOiM67wOdAuT1MRyxwyBZLb0oXwtTJLn3IIZ/
	EeGxxTraVzK6xK5T0FU99l8en3aBUxy3VCxCghRKCJchhpJT/NXkoe5J3Q8eGMk0iOrU
	ai0Vm2rYx76I0DiFwo/FceVcpUcg0kIMZKmEuRZreqiYmib5E2a1u+zdr+loV4FYUQvc
	c1jqsn3TYwwKWUPLr2PBWGivbQWxODGctBAw2b4Rb4cgtGuE/jDPk76T1JPbLtJs81zo
	u/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=WxHjiorLpkfup8DtCZhTTKs+BM6yVofZZfMHH01Z/wQ=;
	b=c0r0LgbEO9txft3MEdyhqAIj2Mn6mp3JXppXG+4VKje1Frdn7XJdX2HvEhi7KJSx8b
	50FtxKSzwHsxcUEBfaV9QW+aFUMtJZjs6fSscZlmoM3kE3nisbVnfyotz3CYaS9oxRPl
	63apwRM8FA0E+RZHHJ7meKhYRWC5pocW+n4cxI/6cMp2P37wDCAw8LzRQx7O3P5vLuF9
	t1Qz7yIPiyMI47BwWJYx+Zx4PfM4fHOjlhmmKyA2c42X/Dr13z7rFabSu1apMyccEG1r
	W6c5zsAfuOU3dXyIfBvgqF76PVg2aRzVFXzhHJ+ys08XCN73ZJ2glcyCLa0qVLvraFvv
	griw==
X-Gm-Message-State: AA+aEWZfyCnYUcmVzFi+xVY/6TUaPQOPL2YrVTaefNXyVamxLWKvdTTx
	jPQCY7TvQ9tuSCaaBZFIfrwWh9h9bdCe0YFkp8muAL80
X-Google-Smtp-Source: AFSGD/WI8NcB50nj+0u6e1+WCQwo3Q5wz2VsBek570tTbvVG6J+SQNZFsyfVPYT6ZiplCll6S7Ov7iCFOyCTPZEMQ2c=
X-Received: by 2002:a24:eb0b:: with SMTP id h11mr5530697itj.138.1542802272805; 
	Wed, 21 Nov 2018 04:11:12 -0800 (PST)
MIME-Version: 1.0
From: Dheeraj koshti <dhkoshtidheeraj@gmail.com>
Date: Wed, 21 Nov 2018 17:41:01 +0530
Message-ID: <CAH9kmbeOS7eDDJAA631FiR-7h-cdOB0nu2iFpDy=smmq-Wdy5w@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 26 Nov 2018 08:06:43 -0800
Cc: dh ko <dhkoshtidheeraj@gmail.com>
Subject: Not able to access static port.
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
X-List-Received-Date: Wed, 21 Nov 2018 12:11:14 -0000
Content-Type: multipart/alternative; boundary="0000000000006dedd4057b2ba50a"

--0000000000006dedd4057b2ba50a
Content-Type: text/plain; charset="UTF-8"

Hi All,

I have one firmware [Reliagate 10-11] which has 'Yocto' running inside it.

It's 'eth0' port was having static IP 172.16.0.1 which was used to open
it's admin portal.

By mistake I made 'eth0' port DHCP and I am not able to open admin portal
since then.

I modified '/etc/network/interfaces' file for 'eth0' a below.
auto eth0
iface eth0 inet static
address 172.16.0.1
netmask 255.255.255.0

Still I am not able to ping the 172.16.0.1 IP.
Please advise me how should I proceed.

Thank you,
Dheeraj Koshti

--0000000000006dedd4057b2ba50a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"verdana, sans-serif">Hi All=
,</font><div><font face=3D"verdana, sans-serif"><br></font></div><div><font=
 face=3D"verdana, sans-serif">I have one firmware [Reliagate 10-11] which h=
as &#39;Yocto&#39; running inside it.</font></div><div><font face=3D"verdan=
a, sans-serif"><br></font></div><div><font face=3D"verdana, sans-serif">It&=
#39;s &#39;eth0&#39; port was having static IP 172.16.0.1 which was used to=
 open it&#39;s admin portal.</font></div><div><font face=3D"verdana, sans-s=
erif"><br></font></div><div><font face=3D"verdana, sans-serif">By mistake I=
 made &#39;eth0&#39; port DHCP and I am not able to open admin portal since=
 then.</font></div><div><font face=3D"verdana, sans-serif"><br></font></div=
><div><font face=3D"verdana, sans-serif">I modified &#39;/etc/network/inter=
faces&#39; file for &#39;eth0&#39; a below.</font></div><div><div><font siz=
e=3D"1" color=3D"#ff0000" face=3D"verdana, sans-serif">auto eth0</font></di=
v><div><font size=3D"1" color=3D"#ff0000" face=3D"verdana, sans-serif">ifac=
e eth0 inet static</font></div><div><font size=3D"1" color=3D"#ff0000" face=
=3D"verdana, sans-serif">address 172.16.0.1</font></div><div><font size=3D"=
1" color=3D"#ff0000" face=3D"verdana, sans-serif">netmask 255.255.255.0</fo=
nt></div></div><div><font size=3D"1" color=3D"#ff0000" face=3D"verdana, san=
s-serif"><br></font></div><div><font face=3D"verdana, sans-serif" color=3D"=
#000000">Still I am not able to ping the=C2=A0172.16.0.1 IP.</font></div><d=
iv><span style=3D"font-family:verdana,sans-serif">Please=C2=A0advise me how=
 should I proceed.</span><br></div><div><span style=3D"font-family:verdana,=
sans-serif"><br></span></div><div><span style=3D"font-family:verdana,sans-s=
erif">Thank you,</span></div><div><span style=3D"font-family:verdana,sans-s=
erif">Dheeraj Koshti</span></div></div></div>

--0000000000006dedd4057b2ba50a--
