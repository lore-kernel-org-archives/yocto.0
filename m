Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f196.google.com (mail-ie0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3D50E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:44:39 -0700 (PDT)
Received: by mail-ie0-f196.google.com with SMTP id 10so264377ied.7
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=0jPLOfsHmkdukHDndssyVvRlxxrbKRHprC3SZEYihYc=;
	b=ZM9abs5RnI6CE4x1VFcPasMoJj5oaQKJr4YPzN6vsnwO8CHeOaZaY7/F/ylWY3N6vc
	73yTHXF8PltxZfCwFHr0nq8YgQNrOYHdc5umN7XDkB7B5W6K6mR5MKDHv2hIjohCgpGi
	uVqsKJ0xzvQ54yvbTM2km46VYA28qxPBGtZ688v14LttMIxFJozgaHHOlqvYkItoQsJc
	du/SbgElx7qwxWwLzq/chc+y+IXsxknyj/hz1ODNfta0sen3/YMXAORlYupFECZPJzok
	WzcxC8S4VC/VoP7B/+ZTOBfna/CczO4LixAC00zWSMVtlUzMexYFxm5GyuAFCEQb0hy3
	r8cQ==
MIME-Version: 1.0
X-Received: by 10.50.41.5 with SMTP id b5mr9533757igl.58.1366382679187; Fri,
	19 Apr 2013 07:44:39 -0700 (PDT)
Received: by 10.50.53.212 with HTTP; Fri, 19 Apr 2013 07:44:39 -0700 (PDT)
Date: Fri, 19 Apr 2013 15:44:39 +0100
Message-ID: <CAM1ZcoW1aaZUZW=t2J+GbNjyYQQPjSpRoGfJC9u-dh2ZJXFQoQ@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: yocto@yoctoproject.org
Subject: libsnmp-dev in yocto built image
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
X-List-Received-Date: Fri, 19 Apr 2013 14:44:40 -0000
Content-Type: multipart/alternative; boundary=089e01176f7138b71004dab7c221

--089e01176f7138b71004dab7c221
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I want to include net-snmp in an image that I'm building with the Yocto
project (gumstix-console-image). When I add it net-snmp-client or server to
the local.conf I get this error when bitbake is creating the rootfs.


Processing perl-module-text-soundex...

error: Failed dependencies:

net-snmp-server = ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a

net-snmp-client = ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a

eglibc-binary-localedata-de-de.iso88591 is needed by
locale-base-de-de.iso-8859-1-2.13-r20.armv7a

/home/katu/gumstix-yocto/build/tmp/sysroots/i686-linux/usr/bin/perl-native/perl
is needed by dpkg-1.15.8.7-r16.4.armv7a


I also want to include libsnmp-dev to include the agent_module_config.h in
my development enviroment.

Could somebody please give me a hand with this?

Thanks a lot

--089e01176f7138b71004dab7c221
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div style>I want to include net-snmp in an image that =
I&#39;m building with the Yocto project (gumstix-console-image). When I add=
 it net-snmp-client or server to the local.conf I get this error when bitba=
ke is creating the rootfs.</div>
<div style><br></div><div style><div><br></div><div>Processing perl-module-=
text-soundex...</div><div><br></div><div>error: Failed dependencies:</div><=
div><br></div><div><span class=3D"" style=3D"white-space:pre">	</span>net-s=
nmp-server =3D ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a</div>
<div><br></div><div><span class=3D"" style=3D"white-space:pre">	</span>net-=
snmp-client =3D ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a</div>=
<div><br></div><div><span class=3D"" style=3D"white-space:pre">	</span>egli=
bc-binary-localedata-de-de.iso88591 is needed by locale-base-de-de.iso-8859=
-1-2.13-r20.armv7a</div>
<div><br></div><div><span class=3D"" style=3D"white-space:pre">	</span>/hom=
e/katu/gumstix-yocto/build/tmp/sysroots/i686-linux/usr/bin/perl-native/perl=
 is needed by dpkg-1.15.8.7-r16.4.armv7a</div><div><br></div><div><br></div=
>
<div style>I also want to include libsnmp-dev to include the=A0<span style=
=3D"color:rgb(51,51,51);font-size:13px;line-height:19px">agent_module_confi=
g.h in my development enviroment.</span></div><div style><span style=3D"col=
or:rgb(51,51,51);font-size:13px;line-height:19px"><br>
</span></div><div style><span style=3D"color:rgb(51,51,51);font-size:13px;l=
ine-height:19px">Could somebody please give me a hand with this?</span></di=
v><div style><span style=3D"color:rgb(51,51,51);font-size:13px;line-height:=
19px"><br>
</span></div><div style><span style=3D"color:rgb(51,51,51);font-size:13px;l=
ine-height:19px">Thanks a lot</span></div></div></div>

--089e01176f7138b71004dab7c221--
