Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45B8FE0089B; Wed, 28 Jan 2015 03:18:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF641E00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 03:17:55 -0800 (PST)
Received: by mail-ob0-f178.google.com with SMTP id uz6so687296obc.9
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 03:17:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=u3r/h1fK2gxKh+ox0vraFkqP7V+aHwp/WAN7xp+DYxo=;
	b=JNDWGoShnPjVJ4FJrvgi+rtWbWTjF1WZoH+IRg6PrdiD8/lR+deUEk3fHwxAvzHEf6
	zUK+Emk1OfkZoWmcOJqa0cAdJlUyF7KlYKJBeDGAMyGR/4+WQIolSub60oDMqpI89DFl
	rvqIiuVAGhmnkPpt6MSImeLrTvDq9jdxn1SzRmpKrx09T+8JjjFsHBkv3v9zvrKD3Q6S
	aYYQr4y9cC7L8A/IjTSmXvLWvQXEfleQ9/IofSOXp0AJFcLEB07011s8azAj1MaVssT9
	viCb8cnPTq4EdLd1WGXwoaW5aA6diy/0ojoG5TKmqEz9mNhHlL2DxwnOt3shbXQ+eN5P
	5BrQ==
X-Gm-Message-State: ALoCoQnVeyVkG43cRjyEPfJlfyWOGJ9mYh7MUTSayOvOlZY8NHEXI4E2KcQaLs+wur5ZG4YIRuFu
X-Received: by 10.202.64.9 with SMTP id n9mr1672028oia.20.1422443874596; Wed,
	28 Jan 2015 03:17:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.130.80 with HTTP; Wed, 28 Jan 2015 03:17:34 -0800 (PST)
From: "Damian, Alexandru" <alexandru.damian@intel.com>
Date: Wed, 28 Jan 2015 11:17:34 +0000
Message-ID: <CAJ2CSBtmYoA+z-hWpUR=-99CTWssLjY74MUh1hm5+Oi70nG7sw@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: HEADSUP - CVE 2015-023 remote code execution in glibc
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
X-List-Received-Date: Wed, 28 Jan 2015 11:18:00 -0000
Content-Type: multipart/alternative; boundary=001a113dd708dbd218050db485ab

--001a113dd708dbd218050db485ab
Content-Type: text/plain; charset=UTF-8

More details

http://www.openwall.com/lists/oss-security/2015/01/27/9

redhat bug and patch

https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2015-0235

Do we need to open a bug to track this ?


-- 
Alex Damian
Yocto Project
SSG / OTC

--001a113dd708dbd218050db485ab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style><font face=3D"tahoma, s=
ans-serif">More details</font></div><div class=3D"gmail_default" style><fon=
t face=3D"tahoma, sans-serif"><br></font></div><div class=3D"gmail_default"=
 style><font face=3D"tahoma, sans-serif"><a href=3D"http://www.openwall.com=
/lists/oss-security/2015/01/27/9">http://www.openwall.com/lists/oss-securit=
y/2015/01/27/9</a></font><br clear=3D"all"></div><div class=3D"gmail_defaul=
t" style><font face=3D"tahoma, sans-serif"><br></font></div><div class=3D"g=
mail_default" style><font face=3D"tahoma, sans-serif">redhat bug and patch<=
/font></div><div class=3D"gmail_default" style><font face=3D"tahoma, sans-s=
erif"><br></font></div><div class=3D"gmail_default" style><font face=3D"tah=
oma, sans-serif"><a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3DC=
VE-2015-0235">https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-0235</=
a><br></font></div><div class=3D"gmail_default" style><font face=3D"tahoma,=
 sans-serif"><br></font></div><div class=3D"gmail_default" style><font face=
=3D"tahoma, sans-serif">Do we need to open a bug to track this ?</font></di=
v><div class=3D"gmail_default" style><br></div><div><br></div>-- <br><div c=
lass=3D"gmail_signature"><div dir=3D"ltr">Alex Damian<div>Yocto Project<br>=
</div><div>SSG / OTC=C2=A0</div></div></div>
</div>

--001a113dd708dbd218050db485ab--
