Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57FC8E007F0
	for <yocto@yoctoproject.org>; Sat, 15 Feb 2014 22:10:00 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id kx10so13874729pab.21
	for <yocto@yoctoproject.org>; Sat, 15 Feb 2014 22:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=soJBMUvZtxhwx3aunTcU0b8ulRgl8vApqf1HCr5Jdxs=;
	b=iUxlk1AWbOFjMYMCsP8/TrWvk1ejumOG8KpnJ8dM8WEj+BPzbxoi8HgFQi8nqQfqdZ
	tLNMwlS6gva2Xa4dcxXFsJykT4AjHAruo4TCiwu4wMz2zNH1+vEqJvVLa3jmTdr2vTlA
	xV86CkmVQEuJGyVGoEYODlosTZ1Rdka+PJoKfmw3orWTe1oVM98tn/iRO4ukfzA+jBZl
	5buElIvPvASyONVTq/NQGjTCUzOPHCrJBVXAQ29wAEsU+LPL4KtrMmr9vuZ1uyesczhc
	e6wOzgXLR8C5cLerTE6Mnaa+Z8RWRSNA6nyzWARa0rhbZ8xWM3N5Ld4wpIisL/OMKVW/
	OEVQ==
X-Received: by 10.66.41.106 with SMTP id e10mr18955384pal.109.1392531000387;
	Sat, 15 Feb 2014 22:10:00 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	nz11sm84010921pab.6.2014.02.15.22.09.59 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 15 Feb 2014 22:09:59 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABhkJRdkG816YH8+ghUtwsV6MkaaTd0q2JXtjsqaHRjWYM4ePg@mail.gmail.com>
Date: Sat, 15 Feb 2014 22:09:57 -0800
Message-Id: <47700885-9D75-4CA5-AA01-FA5A95242C2C@gmail.com>
References: <CABhkJRdZ9zR+Pn8dWtNe2Xeob5QhcXTZPkNoNGgd_yHmbDzJKg@mail.gmail.com>
	<CAE_REAvKGCm4k=UZvG7UDe6updeBs-TYNGVa+BtoF4jUPFbwhQ@mail.gmail.com>
	<CABhkJRdrR2EeadeZHQBhmLei1Yb-T454F1bE7xZTyMK4n_zGzQ@mail.gmail.com>
	<5D91AAAA-D703-484D-943A-6E8D1FF6644A@gmail.com>
	<CABhkJRdkG816YH8+ghUtwsV6MkaaTd0q2JXtjsqaHRjWYM4ePg@mail.gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
X-Mailer: Apple Mail (2.1827)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: meta-java compilation failure
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
X-List-Received-Date: Sun, 16 Feb 2014 06:10:01 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5B7B1FC7-9817-4EB2-98D1-3ACC3CAB9C9B"

--Apple-Mail=_5B7B1FC7-9817-4EB2-98D1-3ACC3CAB9C9B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Feb 15, 2014, at 4:03 AM, Ashish Dalela <ashish.dalela@gmail.com> =
wrote:

> checking where jni_md.h is installed... /usr/local/classpath/include
> checking /usr/local/classpath/include/jni_md.h usability... no
> checking /usr/local/classpath/include/jni_md.h presence... no
> checking for /usr/local/classpath/include/jni_md.h... no
> configure: error: cannot find jni_md.h
> Configure failed. The contents of all config.log files follows to aid =
debugging
>=20

It seems to me that cacao is missing patch for supporting openjdk7, can =
you check if it has
this patch applied in sources=20

http://www.complang.tuwien.ac.at/hg/cacao/rev/a567bcb7f589

if not then you have to apply it

-Khem=

--Apple-Mail=_5B7B1FC7-9817-4EB2-98D1-3ACC3CAB9C9B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><br><div><div>On Feb 15, 2014, at 4:03 AM, Ashish =
Dalela &lt;<a =
href=3D"mailto:ashish.dalela@gmail.com">ashish.dalela@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">checking where jni_md.h is installed... =
/usr/local/classpath/include</div><div style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">checking /usr/local/classpath/include/jni_md.h usability... =
no</div><div style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">checking /usr/local/classpath/include/jni_md.h presence... =
no</div><div style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">checking for /usr/local/classpath/include/jni_md.h... no</div><div =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;">configure: error: cannot find =
jni_md.h</div><div style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">Configure failed. The contents of all config.log files follows to =
aid debugging</div><br =
class=3D"Apple-interchange-newline"></blockquote></div><br><div>It seems =
to me that cacao is missing patch for supporting openjdk7, can you check =
if it has</div><div>this patch applied in =
sources&nbsp;</div><div><br></div><div><a =
href=3D"http://www.complang.tuwien.ac.at/hg/cacao/rev/a567bcb7f589">http:/=
/www.complang.tuwien.ac.at/hg/cacao/rev/a567bcb7f589</a></div><div><br></d=
iv><div>if not then you have to apply =
it</div><div><br></div><div>-Khem</div></body></html>=

--Apple-Mail=_5B7B1FC7-9817-4EB2-98D1-3ACC3CAB9C9B--
