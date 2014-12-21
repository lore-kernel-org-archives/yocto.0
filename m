Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2702CE009E2; Sun, 21 Dec 2014 06:54:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DEB0E00830
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 06:54:40 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id sBLEsdVJ013278
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 01:24:39 +1030
Message-Id: <e1395fc26b87e519e6a5f7dfcd95b8c51a3f6874@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Mon, 22 Dec 2014 01:24:39 +1030
MIME-Version: 1.0
Subject: runqemu-extract-sdk does not provide all required libraries in rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 21 Dec 2014 14:54:44 -0000
Content-Type: multipart/alternative;
	boundary="=_87c93e16f987f45fb7b48f7717fc9242"

--=_87c93e16f987f45fb7b48f7717fc9242
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0A=0A=09I am using poky 1.6.2.=C2=A0 If I create a rootfs using ADT I c=
an Use=0AEclipse to test against qemu all OK but this is not the traget=
 rootfs=0Aso its use is limited If I create a rootfs using $ bitbake ima=
ge -c=0Apopulate_sdk then run the shell script, the rootfs created has a=
ll=0Athe required libraries, but it does not create a directory called=
=0Apseudo_state, and qemu fails to work because of this. If I create a=
=0Arootfs with runqemu-extract-sdk on the image I created using $=0Abita=
bke image, the resulting rootfs has the required pseudo_state=0Adirector=
y but is missing crucial libraries. =0A The missing libraries are crt1.o=
, crti.o, ctrn.o, crtbegin.o,=0Acrtend.o, crtn.o, libc.so, libc_nonshare=
d.a, libgcc.a, libgcc_s.so,=0Alibgcc_s.so.1.=C2=A0 =0A I can import thes=
e libraries from the rootfs created by running teh=0Apopulate_sdk script=
, but I get an error: =C2=A0compatibility issue----=0AMessage sent via A=
dam Internet WebMail - http://www.adam.com.au/

--=_87c93e16f987f45fb7b48f7717fc9242
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><p>I am using poky 1.6.2.=C2=A0</p>=0A<div>If I create a roo=
tfs using ADT I can Use Eclipse to test against qemu all OK but this is=
 not the traget rootfs so its use is limited</div>=0A<div>If I create a=
 rootfs using $ bitbake image -c populate_sdk then run the shell script,=
 the rootfs created has all the required libraries, but it does not crea=
te a directory called pseudo_state, and qemu fails to work because of th=
is.</div>=0A<div>If I create a rootfs with runqemu-extract-sdk on the im=
age I created using $ bitabke image, the resulting rootfs has the requir=
ed pseudo_state directory but is missing crucial libraries.</div>=0A<div=
><br /></div>=0A<div>The missing libraries are</div>=0A<div>crt1.o, crti=
o, ctrn.o, crtbegin.o, crtend.o, crtn.o, libc.so, libc_nonshared.a, lib=
gcc.a, libgcc_s.so, libgcc_s.so.1.=C2=A0</div>=0A<div><br /></div>=0A<di=
v>I can import these libraries from the rootfs created by running teh po=
pulate_sdk script, but I get an error: =C2=A0compatibility issue</div>--=
-- Message sent via Adam Internet WebMail  - http://www.adam.com.au/</bo=
dy></html>

--=_87c93e16f987f45fb7b48f7717fc9242--
