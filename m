Return-Path: <aurele.traynard@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21813E0080C; Fri,  6 Feb 2015 07:55:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (aurele.traynard[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2280E00757
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 07:55:15 -0800 (PST)
Received: by mail-wi0-f182.google.com with SMTP id n3so3422406wiv.3
	for <yocto@yoctoproject.org>; Fri, 06 Feb 2015 07:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=BC7lpsOv0LevGu7BamnRpX4hsDGjCeXt8FifXwkAn9Q=;
	b=IHrkbbmc819m3MfrRKwVzVBlj5mJRs3yP81s7GlvBWbW7vMex08DgPmw/2rk1hF1xj
	8o3iVjGfjZf6fKp73vR0OVSHPIcOx8CVMnCshjC1gF4sH6lXFmwvdWtHP97wP1V+Yaj1
	yp/6r3f+M7rirbb0pLBEKq8G3GTMu8PmPDbJpaYVw7rLOT6QbgYkRBeLuUypqj1h31rp
	LXNuVu5jSjH30Ck8gDyvVKw5gY/Vq/CW9TbMFjRnzPtdPwBqoGDX/gU1d6FKdyppxlP8
	MA9ztjnXIRlYP23LL2bN1Yin7DuIS81zRHbh1yLuM5q9bglWh8RCXKKCDKpM6G/MlFRp
	CinQ==
MIME-Version: 1.0
X-Received: by 10.180.206.66 with SMTP id lm2mr4812871wic.38.1423238107919;
	Fri, 06 Feb 2015 07:55:07 -0800 (PST)
Received: by 10.216.227.129 with HTTP; Fri, 6 Feb 2015 07:55:07 -0800 (PST)
Date: Fri, 6 Feb 2015 16:55:07 +0100
Message-ID: <CAKdxkf8Hz0p__1UpZ9+v9nedE7uNb7ajQ+ykUpaZ-_1mc6BhyA@mail.gmail.com>
From: Aurele Traynard <aurele.traynard@gmail.com>
To: yocto@yoctoproject.org
Subject: replace etc/network/interfaces with symbolic link
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
X-List-Received-Date: Fri, 06 Feb 2015 15:55:26 -0000
Content-Type: multipart/alternative; boundary=001a11c262ccda7b97050e6d71c3

--001a11c262ccda7b97050e6d71c3
Content-Type: text/plain; charset=UTF-8

Hi,

I'm trying to find a clean way to replace /etc/network/interfaces with a
symbolic link. (it comes with init-ifupdown recipe)
I tried with  a bbappend but nothing appear in final filesystem and
/etc/network/interfaces still exists...

I'm sure the following code is completely wrong, but I don't know how to do
this with the right way...
do_install_append () {
    mkdir -p datas/network

    install -d 0755 ${D}/datas
    install -d 0755 ${D}/datas/network
    install -m 0755 ${D}${sysconfdir}/network/interfaces ${D}/datas/network
    #mv ${D}${sysconfdir}/network/interfaces ${D}/datas/network
    rm ${D}${sysconfdir}/network/interfaces
    ln -sf /datas/network/interfaces ${D}${sysconfdir}/network/interfaces

}
FILES_${PN} += "/datas/ /datas/network/interfaces"

thanks for any help

--001a11c262ccda7b97050e6d71c3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I&#39;m trying to find a c=
lean way to replace /etc/network/interfaces with a symbolic link. (it comes=
 with init-ifupdown recipe)</div>I tried with=C2=A0 a bbappend but nothing =
appear in final filesystem and /etc/network/interfaces still exists...<br><=
/div><br><div><div>I&#39;m sure the following code is completely wrong, but=
 I don&#39;t know how to do this with the right way...<br>do_install_append=
 () {<br>=C2=A0=C2=A0=C2=A0 mkdir -p datas/network<br>=C2=A0=C2=A0=C2=A0 <b=
r>=C2=A0=C2=A0=C2=A0 install -d 0755 ${D}/datas<br>=C2=A0=C2=A0=C2=A0 insta=
ll -d 0755 ${D}/datas/network<br>=C2=A0=C2=A0=C2=A0 install -m 0755 ${D}${s=
ysconfdir}/network/interfaces ${D}/datas/network<br>=C2=A0=C2=A0=C2=A0 #mv =
${D}${sysconfdir}/network/interfaces ${D}/datas/network <br>=C2=A0=C2=A0=C2=
=A0 rm ${D}${sysconfdir}/network/interfaces<br>=C2=A0=C2=A0=C2=A0 ln -sf /d=
atas/network/interfaces ${D}${sysconfdir}/network/interfaces<br>=C2=A0=C2=
=A0=C2=A0 <br>}<br>FILES_${PN} +=3D &quot;/datas/ /datas/network/interfaces=
&quot;<br><br></div><div>thanks for any help<br><br></div></div></div>

--001a11c262ccda7b97050e6d71c3--
