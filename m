Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCC99E00860; Tue, 20 Jan 2015 07:51:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 916BCE004FF
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 07:51:55 -0800 (PST)
Received: by mail-we0-f169.google.com with SMTP id p10so14944999wes.0
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 07:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=CrgcCccVo3ppE0kzR89jhsnbP1mvqN0rLOD2ZxKLD5c=;
	b=WJyOfr5z0jTzexiDdIic5I03uSg/7+p6YdlWcBuPUtSyEXA2ml1f9I2IgJBDl8ZTZi
	V2OnxY10OBUM53dCUuE95Rveom0dZbsXSSwNWqA0fvPG62H6sPM+PeZH0FL2IzPTViMt
	XweAzST60kFlRC2nTllCjM+m+HhyTT7z2TE5ugqhZjlhvck6KlW4T4vBndp7+EuJm50z
	TmWnbatkHXiw+if/p/eJTnzITk5MqiuZIouV/oz8bi+wfx2heFWOW1vIQxDnzLEDbtjr
	HblSDYy9jPHxkuhjJMZd9YJ9rNaAeWHulqFRLcOmgUBgLszRCkWDp2vKxYmYQEAWFecu
	MxnQ==
X-Received: by 10.194.76.73 with SMTP id i9mr17465056wjw.93.1421769114333;
	Tue, 20 Jan 2015 07:51:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.32.85 with HTTP; Tue, 20 Jan 2015 07:51:34 -0800 (PST)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Tue, 20 Jan 2015 16:51:34 +0100
Message-ID: <CAEfap_BzExHr+4kmaf9U1c1BSu5SZj6MtCy9PET893FG6jbpCg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: QT: libssl.so: undefined reference to `EVP_idea_cbc@OPENSSL_1.0.0' - QQuickView problem
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
X-List-Received-Date: Tue, 20 Jan 2015 15:51:58 -0000
Content-Type: multipart/alternative; boundary=047d7bb03bda033932050d176bce

--047d7bb03bda033932050d176bce
Content-Type: text/plain; charset=UTF-8

Hi *,

I hope someone can help me with that.
Working under ubuntu 14.10 using qtcreator 3.2.2 trying to compile qt 5.2
code - very simple UI application - against poky 1.6.1 sysroot. So
basically nothing strange/hard in that. But once I subclass QQuickView
anywhere in the application i get this linker error:


*/opt/poky/1.6.1/sysroots/i586-poky-linux/usr/lib/libssl.so: undefined
reference to `EVP_idea_cbc@OPENSSL_1.0.0'*

If I use QWidget instead of QQuickView in the same class as public
subclass, it compiles fine.

I have no idea how to get this fixed :(

-lssl -lcrypto are already linked in .pro file like that:
LIBS += -lssl -lcrypto

Internet search did not bring anything up. Any hints would be more than
welcome!

thank you and best regards
simon :-)

--047d7bb03bda033932050d176bce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi *, <br><br>I hope someone can help me with th=
at. <br>Working under ubuntu 14.10 using qtcreator 3.2.2 trying to compile =
qt 5.2 code - very simple UI application - against poky 1.6.1 sysroot. So b=
asically nothing strange/hard in that. But once I subclass QQuickView anywh=
ere in the application i get this linker error:<br><br><b>/opt/poky/1.6.1/s=
ysroots/i586-poky-linux/usr/lib/libssl.so: undefined reference to `EVP_idea=
_cbc@OPENSSL_1.0.0&#39;<br></b></div><div><br></div><div>If I use QWidget i=
nstead of QQuickView in the same class as public subclass, it compiles fine=
.<br></div><div><br>I have no idea how to get this fixed :(<br></div><div><=
br>-lssl -lcrypto are already linked in .pro file like that:<br>LIBS +=3D -=
lssl -lcrypto<br><br></div><div>Internet search did not bring anything up. =
Any hints would be more than welcome!<br></div><div><br></div>thank you and=
 best regards<br></div>simon :-)<br></div>

--047d7bb03bda033932050d176bce--
