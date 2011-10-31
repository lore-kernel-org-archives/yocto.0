Return-Path: <miketsukerman@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02141E012F3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 03:57:22 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyc15 with SMTP id 15so1815208gyc.35
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 03:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=U5b0LMVW4c7Zp8wlV7lk/eBt6EHCJJx9iubCSOTijB4=;
	b=RTvpRpRi2OMmgHYI5uE8+83QJgxC7Jv5niYdYvw0LMSL0wEKNpYZKKD4wtW6j305+m
	4DZ4kHnpBg9Ud4+ZudZrxtNBIyPxWWJkleKKONdYHZrfZyWQ9gJkG/4Fs+pJd4fSApUX
	6aoCeCgAisTFpdWJnW/DNSCinucg5v7Nuf2lg=
MIME-Version: 1.0
Received: by 10.68.208.229 with SMTP id mh5mr22772353pbc.124.1320058641762;
	Mon, 31 Oct 2011 03:57:21 -0700 (PDT)
Received: by 10.68.52.202 with HTTP; Mon, 31 Oct 2011 03:57:21 -0700 (PDT)
Date: Mon, 31 Oct 2011 13:57:21 +0300
Message-ID: <CALs2vtdUjnMxtTfhqPB2Teui4ZKmzzxRWfBxgU=qG9giUFAwrg@mail.gmail.com>
From: Mike Tsukerman <miketsukerman@gmail.com>
To: yocto@yoctoproject.org
Subject: root paths in packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 31 Oct 2011 10:57:23 -0000
Content-Type: multipart/alternative; boundary=14dae9c09a8a6cc97204b0961a2b

--14dae9c09a8a6cc97204b0961a2b
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I've build rpm packages and met some interesting things.
In the rpm all scripts and files include root paths from machine that i've
build on.
how can i change that?

-- 
Best regards, Mike Tsukerman

jabber: miketsukerman@gmail.com
jabber: warzon@jabnet.org
skype: w_a_r_z_o_n

--14dae9c09a8a6cc97204b0961a2b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<div><br></div><div>I&#39;ve build rpm packages and met some interest=
ing things.=A0</div><div>In the rpm all scripts and files include root path=
s from machine that i&#39;ve build on.</div><div>how can i change that?</di=
v>
<div><div><br></div>-- <br><font style=3D"color:rgb(51, 51, 51)" size=3D"2"=
>Best regards, Mike Tsukerman<br><br><span style=3D"color:rgb(0, 0, 0)">jab=
ber</span>: <a href=3D"mailto:miketsukerman@gmail.com" target=3D"_blank">mi=
ketsukerman@gmail.com</a><br>
<span style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:warzon@=
jabnet.org" target=3D"_blank">warzon@jabnet.org</a><br><span style=3D"color=
:rgb(0, 0, 0)">skype</span>: w_a_r_z_o_n</font><br><br>
</div>

--14dae9c09a8a6cc97204b0961a2b--
