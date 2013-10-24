Return-Path: <joaohf@gmail.com>
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5687EE01760
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 05:19:50 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id hn9so2425350wib.17
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 05:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uJjqN1RImg7kDqclvnfUNLFq8NzzG2b9u0uCgIqzFyw=;
	b=m8325MeNBkkRqEgfdReonCH3qQufNczeAALpBT4B/oWwulw1kj0PA16M+iJoiKRaJV
	hIse7lLVOz6ClqVX51lPNFcptXdK4+mtGYq15LjVGyaX+PNZn4LlB37GcoctZc5YtU5J
	9nFWr8tc5ILxhc2A2FhAfT2gbhVTj0OxkddFmBXRF+qWIRSHVZFrnCpJg6J5SxJoN2fQ
	6r3zX+4THZxCML69d5SIdGkLisvQWAPUtZsXmB9RKJX0BaYvNcd+BDB7P4DtPHAW0VAQ
	5bCrHfzi2Bdfghx7Am53rVnU8d/M6uf7zAEiJpV+nf+9HRS/KN8Xz1epCO1jBTu13JnV
	lMwA==
MIME-Version: 1.0
X-Received: by 10.194.235.138 with SMTP id um10mr2412236wjc.30.1382617189071; 
	Thu, 24 Oct 2013 05:19:49 -0700 (PDT)
Received: by 10.216.90.132 with HTTP; Thu, 24 Oct 2013 05:19:49 -0700 (PDT)
Date: Thu, 24 Oct 2013 10:19:49 -0200
Message-ID: <CANFVK7_z4+5t5NoK-PiRyRJUSEgMZ=OJGQXQ0VoHK9Pc9t--aw@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: where is dirsize and ksize tools?
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
X-List-Received-Date: Thu, 24 Oct 2013 12:19:51 -0000
Content-Type: multipart/alternative; boundary=089e01419acc6a40f004e97ba67f

--089e01419acc6a40f004e97ba67f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I'm using dora. So the dev-manual says:

"
To help you see where you currently are with kernel and root filesystem
sizes, you can use two tools
found in the Source Directory [16] in the scripts directory:
=E2=80=A2 ksize.py: Reports component sizes for the kernel build objects.
=E2=80=A2 dirsize.py: Reports component sizes for the root filesystem."

But I can't find ksize.py and dirsize.py in the poky.

Thanks

PS:
I have these two tools because I got from: git://
git.infradead.org/users/dvhart/tinytools.git

--=20
Jo=C3=A3o Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil

--089e01419acc6a40f004e97ba67f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><br></div>Hello,<br><br></div><div>I&#=
39;m using dora. So the dev-manual says:<br></div><br>&quot;<br>To help you=
 see where you currently are with kernel and root filesystem sizes, you can=
 use two tools<br>
found in the Source Directory [16] in the scripts directory:<br>=E2=80=A2 k=
size.py: Reports component sizes for the kernel build objects.<br>=E2=80=A2=
 dirsize.py: Reports component sizes for the root filesystem.&quot;<br><br>=
</div>But I can&#39;t find ksize.py and dirsize.py in the poky.<br>
<br></div><div>Thanks<br><br></div><div>PS:<br></div>I have these two tools=
 because I got from: git://<a href=3D"http://git.infradead.org/users/dvhart=
/tinytools.git">git.infradead.org/users/dvhart/tinytools.git</a><br clear=
=3D"all">
<div><div><div><div><br>-- <br><div dir=3D"ltr">Jo=C3=A3o Henrique Ferreira=
 de Freitas - <a href=3D"http://joaohf_at_gmail.com" target=3D"_blank">joao=
hf_at_gmail.com</a><br>Campinas-SP-Brasil</div>
</div></div></div></div></div>

--089e01419acc6a40f004e97ba67f--
