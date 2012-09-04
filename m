Return-Path: <munoz0raul@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D493AE014AA
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 10:14:45 -0700 (PDT)
Received: by lagr15 with SMTP id r15so5013820lag.35
	for <yocto@yoctoproject.org>; Tue, 04 Sep 2012 10:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=WRdhh1c5Drpp/0V8V4GjSXQ3g2yKpdaze4VFGKxyqJA=;
	b=fg7U14F+O0PK60qx6q46W5x59rVt4/UvtEeCpYUu+XfDQmnHz4b8fhYs08wsuv/3Fa
	glO62CsU3WCP0zWWgjM+6pW4ddKWzJc4/HIZKPaii4elM3AGQTnDWhSF4NB0Qr4K1Uei
	M9sL8a6AsH8LazMHZiXxWnm1PGA6HeBRVkJh4IHNg96O9CTrLRRrwNiHTWw4i+GmWurT
	4VvALhAZp7rLTzCs+A4FysCoWQBhl+Km/9izlUcDBuqoH3HIienKzAwTCkMCqkWWTgY7
	8Yp/+HeSFQUv3KTMX3kCk6caqBTKG+5KSHuP39nyjc1laM8IXmGd1rwjds+X0lGNl7Gj
	XVuA==
MIME-Version: 1.0
Received: by 10.152.148.1 with SMTP id to1mr17527140lab.34.1346778884547; Tue,
	04 Sep 2012 10:14:44 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Tue, 4 Sep 2012 10:14:44 -0700 (PDT)
Date: Tue, 4 Sep 2012 14:14:44 -0300
Message-ID: <CANmVirh4JJnAyuJxnxMQbBuOB79dGsi6p_SRnn_HD8AZShsxKg@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: yocto@yoctoproject.org
Subject: Create a .bb for my aplication
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
X-List-Received-Date: Tue, 04 Sep 2012 17:14:46 -0000
Content-Type: multipart/alternative; boundary=e89a8f22c34f0125e304c8e3650b

--e89a8f22c34f0125e304c8e3650b
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,
I have some files that compose my application, and I want to put this files
in the "/home/prjs" folder, I know That I need to install the prjs folder
and the other files in this folder.

What I dont know first, How to create a .bb file!

And another question.

I saw that if I do some things like this:

install -m 0644 ${WORKDIR}/fstab ${D}${sysconfdir}/fstab

I will copy the file fstab in /etc/ folder.

How I can know that {sysconfdir} correspond to /etc/ folder?

And If it is correct how to know for what /home/ folder correspond {???}.

plz Can some one try to tell me???

Thanks For All Help!

--=20
*Raul Rosetto Mu=F1oz*

--e89a8f22c34f0125e304c8e3650b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div><div>Hello,</div><div>I have some files that compose my application, a=
nd I want to put this files in the &quot;/home/prjs&quot; folder, I know Th=
at I need to install the prjs folder and the other files in this folder.</d=
iv>
<div><br></div><div>What I dont know first, How to create a .bb file!</div>=
<div><br></div><div>And another question.</div><div><br></div><div>I saw th=
at if I do some things like this:</div><div><br></div><div>install -m 0644 =
${WORKDIR}/fstab ${D}${sysconfdir}/fstab</div>
<div><br></div><div>I will copy the file fstab in /etc/ folder.</div><div><=
br></div><div>How I can know that {sysconfdir} correspond to /etc/ folder?<=
/div><div><br></div><div>And If it is correct how to know for what /home/ f=
older correspond {???}.</div>
<div><br></div><div>plz Can some one try to tell me???</div><div><br></div>=
<div>Thanks For All Help!</div><div><br></div>-- <br><b>Raul Rosetto Mu=F1o=
z</b><br>
</div>

--e89a8f22c34f0125e304c8e3650b--
