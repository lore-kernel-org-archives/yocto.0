Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79DF5E0152B
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 10:31:43 -0700 (PDT)
Received: by mail-pb0-f51.google.com with SMTP id um15so8723454pbc.10
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 10:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=FriXyLVl7NuuHgYtLSH7KYCopuqFD2BatbBQrQZRYP4=;
	b=bTunGC/LOK8sr3roUkeyvgNk8ZwvIRdcOqi4eWaSpjnruf69QYm7d05R63ryG5+6y7
	PyMHURz96AzYQYtVTcJUrLazV7AnUOQkcU8CA4STqnVfkxaQcLQwrytigqzBqXz5VD/6
	fp8EEGfY4IVjV8qMCF8+35PEruXhxw+TxRr8GRqaAEAb4OBgtoH8+MAuYYyxwAefvcAE
	ngn+odM39UGIOpK/X0QK6dWw+G8TA4WmnicMyw6mS6yHGxqkvzZELy53kchkXPatUwSk
	TVZkwOMTqPDgghtkcc+BXXpHVhwF+P1uUVOcpK7p8JzMph4L8fiRQiAhjE9FvjCTwTFv
	b4Og==
X-Received: by 10.68.104.196 with SMTP id gg4mr38429421pbb.25.1374600703052;
	Tue, 23 Jul 2013 10:31:43 -0700 (PDT)
Received: from ddeviny-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id bp12sm5206142pac.1.2013.07.23.10.31.39
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 23 Jul 2013 10:31:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
Date: Tue, 23 Jul 2013 10:31:38 -0700
Message-Id: <5397EB6B-0A0C-44D7-A762-1966460DFD41@gmail.com>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 23 Jul 2013 17:31:48 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_120D2D1B-B418-456C-80FE-803BC7EAA848"

--Apple-Mail=_120D2D1B-B418-456C-80FE-803BC7EAA848
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Jul 23, 2013, at 7:13 AM, Brian Hutchinson <b.hutchman@gmail.com> =
wrote:

> WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to =
install files into a shared area when those files already exist. Those =
files and their manifest location are:
>    =
/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-lin=
ux/nativesdk-packagegroup-sdk-host
>    Matched in =
manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
>    =
/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-lin=
ux/runtime/nativesdk-packagegroup-sdk-host.packaged
>    Matched in =
manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
>    =
/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-lin=
ux/runtime/nativesdk-packagegroup-sdk-host
>    Matched in =
manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
>    =
/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-lin=
ux/runtime-reverse/nativesdk-packagegroup-sdk-host
>    Matched in =
manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> Please verify which package should provide the above files.
>=20
>=20
> Should I be worried or do I need to do something about the =
nativesdk-packagegroup-sdk-host warnings?
>=20

since they are getting installed on all-*-*,  I wouldn't be too much =
worried. but it would be interesting to see if these files are different =
in anyway=

--Apple-Mail=_120D2D1B-B418-456C-80FE-803BC7EAA848
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Jul 23, 2013, at 7:13 AM, Brian Hutchinson &lt;<a =
href=3D"mailto:b.hutchman@gmail.com">b.hutchman@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><div>WARNING: The recipe =
nativesdk-packagegroup-sdk-host is trying to install files into a shared =
area when those files already exist. Those files and their manifest =
location are:</div><div>&nbsp; =
&nbsp;/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokys=
dk-linux/nativesdk-packagegroup-sdk-host</div><div>&nbsp; &nbsp;Matched =
in =
manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata</div><div>&nbs=
p; =
&nbsp;/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokys=
dk-linux/runtime/nativesdk-packagegroup-sdk-host.packaged</div><div>&nbsp;=
 &nbsp;Matched in =
manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata</div><div>&nbs=
p; =
&nbsp;/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokys=
dk-linux/runtime/nativesdk-packagegroup-sdk-host</div><div>&nbsp; =
&nbsp;Matched in =
manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata</div><div>&nbs=
p; =
&nbsp;/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokys=
dk-linux/runtime-reverse/nativesdk-packagegroup-sdk-host</div><div>&nbsp; =
&nbsp;Matched in =
manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata</div><div>Plea=
se verify which package should provide the above files.</div></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><br></div><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><br></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; ">Should =
I be worried or do I need to do something about the =
nativesdk-packagegroup-sdk-host warnings?</div><br =
class=3D"Apple-interchange-newline"></blockquote></div><br><div>since =
they are getting installed on all-*-*, &nbsp;I wouldn't be too much =
worried. but it would be interesting to see if these files are different =
in anyway</div></body></html>=

--Apple-Mail=_120D2D1B-B418-456C-80FE-803BC7EAA848--
