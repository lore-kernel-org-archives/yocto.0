Return-Path: <farzanemostafa@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D60EE00927; Sun, 25 Mar 2018 06:03:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (farzanemostafa[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.134.123 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0106]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic315-13.consmr.mail.bf2.yahoo.com
	(sonic315-13.consmr.mail.bf2.yahoo.com [74.6.134.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6640FE00791
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2018 06:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1521982980; bh=k/T/1bbP7p+eM/aK5kyA6scFZw5Gst8LzTY0hxxfh5g=;
	h=Date:From:To:Subject:References:From:Subject;
	b=N7cA3M3K41jxdu/RAM3NtpWGtsQZBFK6eK7ewh4f6SqRspUrNo5MtWKWygQ0lAp9KV4KVdduN9ixHFJE6QHrJCX5JaLUu1boIaDuRE/PHX0QdfTuZo8naFs4m5LgGHou9b1xcbVdsn4mDDEaM8kOT4q4aJvmfQPTTBBjEcEfeCijT3zSkt6Eyzjv5MVIlFq8wFnAT6GUKIBwls5+nTAHkR5anPpkFZ2LkHLnsxMxGEzW6AOx59H++9WBVdjWKHe4eSqDY5EGZVp+eh4k725aH5dXLscq1mjL5KzSqXGOWJlX7QOZtKQxidOfvXyfk10OwFyf6aPJlmTLOVSrxcgpgw==
X-YMail-OSG: MZ7DBHgVM1lzym8QIvALEorfnI3Pf9svEcjP3JhWN3LsgLCm7r8ziR9ta3qooZu
	6BgCb9hQpviEWV3X38x4WDmAsbiU05kWG9HpTvUnnsr2EoQ1fCqjgEPu21qqaVSjtqUCJtVy_tmn
	WmR1nxmyVYFraRys2d99E7P4htJv4ZtBwe2A7RvGc06FbT67i875Z7fgw0WxSjquFob.H2bnU6No
	tLr1ylXC1ZIWRdpbpk7vUOyyBDp.fdhZ0mPUuF2y2eq_8Zjcs05G76ktHfhWQPn366uE6m4R0jGF
	QfCNVyRQn3hm1vd2FLabsPRHoctZ_q2VVqfO1ys1K_cipnGNEvs5DgcdvJzDncutmUs5C9l11lZa
	m.1V10QoL8gt.rUf5zI4xvKviIIRhhhoTe4BV6mX8B5lOJUT.SefwFwo.kHAaDnm_T1hHR1sqxBv
	vbH5S5YM37dnDrpvOOKsBuLH4elrESee5TAV1bMMWzmsa6knoLxJWf2OE2.3q3JDJabsHCA--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic315.consmr.mail.bf2.yahoo.com with HTTP;
	Sun, 25 Mar 2018 13:03:00 +0000
Date: Sun, 25 Mar 2018 13:01:33 +0000 (UTC)
From: Mostafa Farzane <farzanemostafa@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <140452140.145707.1521982893662@mail.yahoo.com>
MIME-Version: 1.0
References: <140452140.145707.1521982893662.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11643 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186
	Safari/537.36
Subject: how to add libsrtp and libsrtp-staticdev to sdk
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
X-List-Received-Date: Sun, 25 Mar 2018 13:03:02 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_145706_390187665.1521982893661"

------=_Part_145706_390187665.1521982893661
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,I need to add libsrtp to my sdk. I want both static and dynamic library =
in sdk. I added "libsrtp libsrtp-staticdev" to "IMAGE_INSTALL" but getting =
the following error:
=C2=A0=C2=A0=C2=A0=C2=A0Collected errors:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0* ca=
lculate_dependencies_for: Cannot satisfy the following dependencies for lib=
srtp-staticdev:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*=C2=A0 =C2=A0 =C2=A0 libsrtp =
(=3D 1.5.2-r0) *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0* opkg_solver_install: Cannot=
 install package libsrtp-staticdev.

------=_Part_145706_390187665.1521982893661
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div>Hi,</div><div>I need to add libsrtp to my sdk. I want both static and dynamic library in sdk. I added "libsrtp libsrtp-staticdev" to "IMAGE_INSTALL" but getting the following error:</div><div><br><div>&nbsp;&nbsp;&nbsp;&nbsp;Collected errors:</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* calculate_dependencies_for: Cannot satisfy the following dependencies for libsrtp-staticdev:</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp; &nbsp; &nbsp; libsrtp (= 1.5.2-r0) *</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* opkg_solver_install: Cannot install package libsrtp-staticdev.</div><div><br></div></div></div></body></html>

------=_Part_145706_390187665.1521982893661--
