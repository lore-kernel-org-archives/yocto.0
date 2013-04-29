Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2136CE0137F
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 02:02:16 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id m1so5162457wea.40
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 02:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=LC0jASNkLsENaaFGe2F/DSthawdm9fDIxuE9mMExPLM=;
	b=od0MzJJ2V3OWMTKQ0GPZcY5icLCQuoUDz3q7G/LesZRXwK8gXdojKbwo7OzOqTZxLl
	QRxrSzdo/cnHGwrNunt+nVZdb2XLrHWozOR0wxi9jVzMj6V5CEaeinwcAROp9b1cXCBu
	FHphUhQfJJ+PPbV25GPSU8oJhzIkSN5xyPhhQ8M9WDGrnD1SkJFVY2I0n32hQ/t+muih
	wrkPoQrYp1MdOwbHGaqU3n292Q7hKq/7JM6c2QaE/ND8rV69fZNypbdTJqhUP50kVSZC
	Hr+AAS2PVhH+q/22s1Mhp7qiCKSr+RbIXftAgLrtBWAYxSYa01ZqMNLZeC4jzgqxuVTk
	KVOA==
X-Received: by 10.180.37.101 with SMTP id x5mr16188815wij.0.1367226135700;
	Mon, 29 Apr 2013 02:02:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.40.163 with HTTP; Mon, 29 Apr 2013 02:01:54 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 29 Apr 2013 11:01:54 +0200
Message-ID: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 09:02:17 -0000
Content-Type: multipart/alternative; boundary=e89a8f646ff3256dfe04db7c24ca

--e89a8f646ff3256dfe04db7c24ca
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am trying to build<http://gumstix.org/software-development/yocto-project.html>a
bitbake target for my Overo
Series RobOvero board(PCB 30019-R3277). In poky build directory when i give
the command *bitbake gumstix-console-image* i get an error:* **
ERROR: Nothing PROVIDES 'gumstix-console-image'.
**
 *

Previously when i built core-image-minimal. it successfully runs and i am
able to run with qemu emulator.

I do not know why poky throws *Nothing Provides* error.

Any Ideas where i am doing wrong?

-- 
Regards,
Zafrullah Syed

--e89a8f646ff3256dfe04db7c24ca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am trying to <a href=3D"http:=
//gumstix.org/software-development/yocto-project.html">build</a> a bitbake =
target for my=A0<span style=3D"font-family:arial,sans-serif;font-size:13px"=
>Overo Series RobOvero board(PCB 30019-R3277). In poky build directory when=
 i give the command=A0</span><i>bitbake gumstix-console-image</i><span styl=
e=3D"color:rgb(51,51,51);font-family:&#39;Segoe UI&#39;,Arial,Helvetica,san=
s-serif;font-size:12px;line-height:18px">=A0</span>i get an error:<i>=A0</i=
><i><div style=3D"display:inline!important">

ERROR: Nothing PROVIDES &#39;gumstix-console-image&#39;.</div></i><i><br>=
=A0</i></div><div><br></div><div>Previously when i built core-image-minimal=
. it successfully runs and i am able to run with qemu emulator. =A0</div><d=
iv>

<br></div><div style>I do not know why poky throws <i>Nothing Provides</i> =
error.</div><div style><br></div><div style>Any Ideas where i am doing wron=
g?</div><div><br></div><div>-- <br><span style=3D"font-family:arial,sans-se=
rif;font-size:13px;border-collapse:collapse;color:rgb(136,136,136)">Regards=
,<br>

Zafrullah Syed</span><div><font color=3D"#888888" face=3D"arial, sans-serif=
"><span style=3D"border-collapse:collapse"><br></span></font></div>
</div></div>

--e89a8f646ff3256dfe04db7c24ca--
