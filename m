Return-Path: <f@rtfs.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38B70E00994; Thu, 25 Oct 2018 09:27:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.rsk6.de (h1435773.stratoserver.net [85.214.108.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 045CBE008E3
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 09:26:58 -0700 (PDT)
Received: from [10.65.102.85] (x52717955.dyn.telefonica.de [82.113.121.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.rsk6.de (Postfix) with ESMTPSA id 2E2C92526925
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 18:26:57 +0200 (CEST)
Date: Thu, 25 Oct 2018 18:26:54 +0200
User-Agent: K-9 Mail for Android
MIME-Version: 1.0
To: yocto@yoctoproject.org
From: Fabian Sturm <f@rtfs.org>
Message-ID: <DC6E5323-DBE6-4638-9CE8-6C2C5B083E58@rtfs.org>
Subject: Using dpkg-buildpackage within Yocto image
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
X-List-Received-Date: Thu, 25 Oct 2018 16:27:00 -0000
Content-Type: multipart/alternative;
	boundary="----8E4VLSINBIQMBEON38FYCC67TORTZ7"
Content-Transfer-Encoding: 7bit

------8E4VLSINBIQMBEON38FYCC67TORTZ7
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,


I would like to be able to build debian packages on yocto itself=2E This m=
eans I would call something like this:=C2=A0


=C2=A0=C2=A0=C2=A0 dpkg-buildpackage -us -uc -rfakeroot


This already does not work, since fakeroot does not exist in the image=2E =
It seems there was an older recipe for this but I can't find it in newer re=
leases (sumo)=2E

If I build without -rfakeroot as root user I get a step further but then I=
 get:


=C2=A0=C2=A0=C2=A0 dpkg-checkbuilddeps: error: Unmet build dependencies: d=
ebhelper (>=3D 9) dh-systemd


I unfortunately could not find the right recipes which would provide those=
 files=2E Am I missing something?


Thanks in advance,

Fabian


--=20
von unterwegs

------8E4VLSINBIQMBEON38FYCC67TORTZ7
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,<br><br><br>I would like to be able to build debian packages on yocto=
 itself=2E This means I would call something like this:=C2=A0<br><br><br>=
=C2=A0=C2=A0=C2=A0 dpkg-buildpackage -us -uc -rfakeroot<br><br><br>This alr=
eady does not work, since fakeroot does not exist in the image=2E It seems =
there was an older recipe for this but I can't find it in newer releases (s=
umo)=2E<br><br>If I build without -rfakeroot as root user I get a step furt=
her but then I get:<br><br><br>=C2=A0=C2=A0=C2=A0 dpkg-checkbuilddeps: erro=
r: Unmet build dependencies: debhelper (&gt;=3D 9) dh-systemd<br><br><br>I =
unfortunately could not find the right recipes which would provide those fi=
les=2E Am I missing something?<br><br><br>Thanks in advance,<br><br>Fabian<=
br><br><br>-- <br>von unterwegs

------8E4VLSINBIQMBEON38FYCC67TORTZ7--
