Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DCAFE00848; Thu, 22 Dec 2016 08:57:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1190DE0073D
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 08:57:21 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id w68so14685647pgw.3
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 08:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=240In50v4RJczS4cLpFFbuQLFEdpIJDcxFiL7xgxLN4=;
	b=i4XOZ18mcorniz38Ikts+FgUayg3YUh5O85a3PB1/RxJAQLzYgeU3tbZ9DJ8tcit1M
	+SMScB2VXtJEI7V5UV2qhZeJY9WRW4zQoUuaYrJQcDPF5Swg0jnD9MbaUNNIjQhLDwWO
	s4lbvrrtnZZimQiv1OdHrVQON3ht18uR5k2fFjH4V8QUQJoKVdAPfqHkO6EG1Cgwqvl6
	PG957OtU32oB24aC8smp053kh/pL4oOIDWNx83qkfEkVJv35DnsqGSLC4hR0CcUpqes0
	w9z7Yio5zZL+oFVBvbwP01nebAyfnttcJyepDN6D3sooANSIjCdpWmET6gGxACw3S0oO
	Vzvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=240In50v4RJczS4cLpFFbuQLFEdpIJDcxFiL7xgxLN4=;
	b=EX7S0spJPo6MDqM4HJi1sia1xGfzGylsV8idZXfKsScfzFF8SJ6MFUx5XQP1omw+SR
	Kvs6uYDzsOqAEDepptm6VnlVytm7OcjV8lJVfLxosSgjMpK9HZf3zjTe2uUbi8Ksom9x
	ZX00QXllqQM9ANLmy5Rp3AA0T0ueeBIuYnyl+IKIdYg0u7Xj7bbdp/fvdTlRn8VmtXIc
	FgthbxoMHDtQ+ABcwvCfpoBWQp0AS0u6JyJrvkN02YFXYSElbap/YF7FF/hclKWSxzqj
	3Jm9juqH0MT2fBpVesiDETqCs1Fbfl/2jxMDIOuDUrRHzQMSZ+mSZ1KMVVgJz+7PyJid
	u0+A==
X-Gm-Message-State: AIkVDXK60RkUogi6XCqB1Ej15dYwEgi0ZvSzc9WVRdgwpiPzR4/fiiQYfVq6itqn++HvMw==
X-Received: by 10.84.141.1 with SMTP id 1mr20962617plu.133.1482425841498;
	Thu, 22 Dec 2016 08:57:21 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:dc6c:df58:7743:431c?
	([2601:646:8882:b8c:dc6c:df58:7743:431c])
	by smtp.gmail.com with ESMTPSA id
	z29sm29793437pgc.11.2016.12.22.08.57.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Dec 2016 08:57:21 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Message-Id: <027229CB-5E4B-4F03-A114-8455817BD720@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Date: Thu, 22 Dec 2016 08:57:21 -0800
In-Reply-To: <CY4PR12MB1880B54FDAEE0F03B00ECA30A5910@CY4PR12MB1880.namprd12.prod.outlook.com>
To: Richard Zhang <richard.zhang@pica8.com>
References: <CY4PR12MB1880B54FDAEE0F03B00ECA30A5910@CY4PR12MB1880.namprd12.prod.outlook.com>
X-Mailer: Apple Mail (2.3259)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to use a kernel build path in developing libs
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
X-List-Received-Date: Thu, 22 Dec 2016 16:57:26 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_4325582B-2679-4D2A-8264-34580815887D"

--Apple-Mail=_4325582B-2679-4D2A-8264-34580815887D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Dec 22, 2016, at 12:23 AM, Richard Zhang <richard.zhang@pica8.com> =
wrote:
>=20
> hi all:
>=20
> I am trying to add some lib related with kernel.

Unless you are writing a kernel module, using raw kernel headers and =
sources is generally not a good choice. Moreover
kernel does not have APIs beyond headers it exports for user space to =
use. So I would suggest to rethink what you are trying
to do and may be you can use the exposed kernel APIs through kernel =
headers =20

> When I try to include the kernel build dir to the lib, i am not sure =
witch kernel build path should to be used :
> =
build/tmp/work/genericx86_64-poky-linux/linux-yocto/4.4.3/linux-genericx86=
_64-standard-build/
>=20
>=20
> Another question:
>=20
> When I want to develop an application  use yocto SDK.
> After I deploy a yocto SDK toolchain that image include full target,  =
could I use the kernel build path for compile software?

No, unless its a kernel module.
>=20
>=20
>=20
> Regard,
> Richard Zhang
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_4325582B-2679-4D2A-8264-34580815887D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 22, 2016, at 12:23 AM, Richard Zhang &lt;<a =
href=3D"mailto:richard.zhang@pica8.com" =
class=3D"">richard.zhang@pica8.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 12pt; font-family: Calibri, =
Arial, Helvetica, sans-serif;" class=3D""><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">hi all:</div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">I am trying to =
add some lib related with kernel.</div></div></div></blockquote><div><br =
class=3D""></div><div>Unless you are writing a kernel module, using raw =
kernel headers and sources is generally not a good choice. =
Moreover</div><div>kernel does not have APIs beyond headers it exports =
for user space to use. So I would suggest to rethink what you are =
trying</div><div>to do and may be you can use the exposed kernel APIs =
through kernel headers &nbsp;</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div id=3D"divtagdefaultwrapper" =
dir=3D"ltr" style=3D"font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
font-size: 12pt; font-family: Calibri, Arial, Helvetica, sans-serif;" =
class=3D""><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">When I try to include the kernel build dir to the lib, i am =
not sure witch kernel build path should to be used :</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">build/tmp/work/genericx86_64-poky-linux/linux-yocto/4.4.3/linux=
-genericx86_64-standard-build/</div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">Another question:</div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">When I want to =
develop an application&nbsp; use yocto SDK.</div><div style=3D"margin-top:=
 0px; margin-bottom: 0px;" class=3D"">After I deploy a yocto SDK<span =
class=3D"Apple-converted-space">&nbsp;</span><span =
class=3D"">toolchain</span><span =
class=3D"Apple-converted-space">&nbsp;</span>that image include full =
target,&nbsp; could I use the kernel build path for compile =
software?</div></div></div></blockquote><div><br class=3D""></div>No, =
unless its a kernel module.</div><div><blockquote type=3D"cite" =
class=3D""><div class=3D""><div id=3D"divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; font-size: =
12pt; font-family: Calibri, Arial, Helvetica, sans-serif;" class=3D""><div=
 style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><br class=3D""></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">Regard,</div><div style=3D"margin-top: 0px; margin-bottom: =
0px;" class=3D"">Richard Zhang<br class=3D""></div></div><span =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D"">yocto@yoctoproject.org</a><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_4325582B-2679-4D2A-8264-34580815887D--
