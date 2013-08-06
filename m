Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 800C2E0156E
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 21:43:56 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id ma3so4212105pbc.35
	for <yocto@yoctoproject.org>; Mon, 05 Aug 2013 21:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ohVcvFuSGblQc1fDt2snD5bJgSJIGx2cEgD/SgC87Qw=;
	b=X3kP8YrqsHye3rhq3FKk3kgmory10d9l2GICxFKSI6MOiuaQgpRU0ZhQmkw3wJR7nK
	2f+N0sPdAytD10M4JsxW0QlaTedcTq71zflkp6CM200VGGCtwhBGUhnz+Vx1n3bkfvMk
	nouPL+I2CBhfcxTaciUcldKCIDDFH7LcVxCQexwhvCzwvtY7ZOAe+sGEFKgAMmi8X/xY
	7m7zNwT4md//pzmm6kif4YQRYvwJdZFZ6j/gXoGiYOVeUgstFloBRLmHLKMe4/c1PagL
	Pw9W7ldoRzxZK6wCSn9spdyrdWpW+DdmKwoVGVNWnJS8vdPJ/ChmOY0f4dh2dZkMqmcq
	OZvA==
X-Received: by 10.66.163.199 with SMTP id yk7mr1009962pab.136.1375764236017;
	Mon, 05 Aug 2013 21:43:56 -0700 (PDT)
Received: from gourish-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id ll5sm1422040pab.19.2013.08.05.21.43.54
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 05 Aug 2013 21:43:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALgcdhiOgJ-sL4nDNEr+HbfoRDH7GHOhmXUhmS-UYO4tjfdf1Q@mail.gmail.com>
Date: Mon, 5 Aug 2013 21:43:53 -0700
Message-Id: <37436E37-302E-470D-9840-D309BA110F46@gmail.com>
References: <CALgcdhiOgJ-sL4nDNEr+HbfoRDH7GHOhmXUhmS-UYO4tjfdf1Q@mail.gmail.com>
To: James Nuss <jamesnuss@nanometrics.ca>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: eglibc and Oracle embedded JRE compatibility
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
X-List-Received-Date: Tue, 06 Aug 2013 04:43:57 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BCB888C8-FF80-494E-8B57-64A3E9DB4878"

--Apple-Mail=_BCB888C8-FF80-494E-8B57-64A3E9DB4878
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Jul 29, 2013, at 11:20 AM, James Nuss <jamesnuss@nanometrics.ca> =
wrote:

> Does anybody know if eglibc is supported as a libc implementation for =
Oracle's embedded JRE?
> Since Yocto only supports eglibc rather than GNU glibc [1], I'd like =
to know if there are any issues running Oracle's embedded JRE on a Yocto =
build.

nothing to worry there. eglibc is no different then glibc, its a =
superset actually.

>=20
> I can see that the meta-oracle-java [2] layer provides a recipe to =
install the i586 and x64 JRE binaries so this is a good sign that it is =
at least supported on those archs.
> However I would like to know if it will work specifically on ARM arch.

you need java8 IIRC for arm and meta-oracle-java is supporting java7 at =
present.


>=20
>=20
> [1] =
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#using=
poky-components-bitbake
> [2] git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java
>=20
> Regards.
> James
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_BCB888C8-FF80-494E-8B57-64A3E9DB4878
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Jul 29, 2013, at 11:20 AM, James Nuss &lt;<a href="mailto:jamesnuss@nanometrics.ca">jamesnuss@nanometrics.ca</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><font face="courier new,monospace">Does anybody know if eglibc is supported as a libc implementation for Oracle's embedded JRE?<br>Since Yocto only supports eglibc rather than GNU glibc [1], I'd like to know if there are any issues running Oracle's embedded JRE on a Yocto build.<br></font></blockquote><div><br></div><div>nothing to worry there. eglibc is no different then glibc, its a superset actually.</div><br><blockquote type="cite"><font face="courier new,monospace">
<br>I can see that the meta-oracle-java [2] layer provides a recipe to install the i586 and x64 JRE binaries so this is a good sign that it is at least supported on those archs.<br>However I would like to know if it will work specifically on ARM arch.<br></font></blockquote><div><br></div><div>you need java8 IIRC for arm and meta-oracle-java is supporting java7 at present.</div><div><br></div><br><blockquote type="cite"><font face="courier new,monospace">
<br><br>[1] <a href="http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#usingpoky-components-bitbake">http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#usingpoky-components-bitbake</a><br>
[2] <a href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java">git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java</a><br><br>Regards.<br>James<br></font>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_BCB888C8-FF80-494E-8B57-64A3E9DB4878--
