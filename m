Return-Path: <andrei@gherzan.ro>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3538BE013FB
	for <yocto@yoctoproject.org>; Sat, 19 May 2012 14:51:24 -0700 (PDT)
Received: by obbef5 with SMTP id ef5so8696404obb.35
	for <yocto@yoctoproject.org>; Sat, 19 May 2012 14:51:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:from:date:message-id:subject:to:cc
	:content-type:x-gm-message-state;
	bh=kEfxSv0/gp1lG53/+u8+3k6Fz3B26BJeg5316nPkByk=;
	b=maN+ACEUGr/lvlJdlw0jyYMm9QV/TWCmnS4DqPfjSrX9MlePZs9m1QL29jmvu6hIFc
	ZOGX92t+K710BoWWyehaFLZp3Lvz63jr4T1eeUyRgYLAOBYtAh2GLiIy5ComjQD5m+PG
	AybWMKrF4l1np/04ZrjBX5sLQOblpbSRbr50VjbQJ+c0C85dF3UXwmek4+o/k7LEhvN/
	nutoBLh2h07LDqzxwbyTM2+vu05tEohoio6dGjtL8iXdvuNzu43HdCLS2VU0ZNxtyTTf
	C4qiiRvIhpec9Ye8bKsJ/cuD7FfjgMXrm8zxwHa64xMKknP9Lgv/bgKh1+SN1m23D0AI
	tQgQ==
Received: by 10.50.135.37 with SMTP id pp5mr3683613igb.33.1337464283322; Sat,
	19 May 2012 14:51:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.25.18 with HTTP; Sat, 19 May 2012 14:51:02 -0700 (PDT)
X-Originating-IP: [79.117.116.178]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 20 May 2012 00:51:02 +0300
Message-ID: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
To: yocto@yoctoproject.org, poky@yoctoproject.org
X-Gm-Message-State: ALoCoQktQWHoBk3mPz6aSz8hI2OV103TKejmgCDlIUM71cewE7jub6OL4QSA2yp16E3OmPDsvxx3
Subject: RaspberryPi Layer
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
X-List-Received-Date: Sat, 19 May 2012 21:51:24 -0000
Content-Type: multipart/alternative; boundary=e89a8f83a12f81da5e04c06aab2e

--e89a8f83a12f81da5e04c06aab2e
Content-Type: text/plain; charset=ISO-8859-1

After an exchange of messages with Richard, Saul and John Willis (he
already started a layer for oe and did a good job in it) i want to announce
that i started start a fork from his layer and with Florin Sarbu will
prepare a layer for RaspberryPi to work upon poky.
Until a stable version of this layer we will keep this layer on bitbucket:
https://bitbucket.org/agherzan/meta-raspberrypi.
I don't know if a mailing list is needed but if there are any others who
want to contribute on this, we can adopt meta-fsl-arm's solution of a
google group and use it as a way of communicating.

Waiting for feedback and hope there will be others to come along.

@g

--e89a8f83a12f81da5e04c06aab2e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

After an exchange of messages with Richard, Saul and John Willis (he alread=
y started a layer for oe and did a good job in it) i want to announce that =
i started start a fork from his layer and with Florin Sarbu will prepare a =
layer for RaspberryPi to work upon poky.=A0<div>


Until a stable version of this layer we will keep this layer on bitbucket:=
=A0<a href=3D"https://bitbucket.org/agherzan/meta-raspberrypi" target=3D"_b=
lank">https://bitbucket.org/agherzan/meta-raspberrypi</a>.=A0</div><div>I d=
on&#39;t know if a mailing list is needed but if there are any others who w=
ant to contribute on this, we can adopt meta-fsl-arm&#39;s solution of a go=
ogle group and use it as a way of=A0communicating.=A0</div>


<div><br></div><div>Waiting for feedback and hope there will be others to c=
ome along.=A0<br clear=3D"all"><div style=3D"text-align:center"></div><div =
style=3D"text-align:center"><div align=3D"left"><font color=3D"#333333" fac=
e=3D"Arial"><br>


</font></div><div align=3D"left"><font color=3D"#333333" face=3D"Arial">@g<=
/font></div></div><br>
</div>

--e89a8f83a12f81da5e04c06aab2e--
