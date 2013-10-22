Return-Path: <p.patat@gmail.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9590AE0163E
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 06:48:47 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id l12so5754535wiv.14
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 06:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=zTQLLowTaXMpPLXwToJO3XhpnQ46CO0Za37c6NGm+bs=;
	b=KaDa4s1wkTVmHarKOaeMFSaJC1Dhe4SZX4Hf4TPN1CtOSQhIYtK3jKFCX1hMN/KYtO
	DtPNgVdvFmOs1SpLVQZBdHHmTuXEZWQx3KFD8mWW7ugCFf7u5sxAXqwDGljH0/JRCPxB
	UdUMQSMAkAe+J2YsI3YR6DMd7fpCK1UHLL6a8aKAVZk906UMCd5j9x3A/zersQfBzjw8
	97pdlW8ZllZqzOAvYna85zWbWbErj52VlCAqrH64LStDRwzGtRGnephEIRBC8KaiRmkW
	MVstyT/4zsXzOGEODqZZZ6Q1HKpgAyKDqK6Z8+Ru8YAXCISpu6kRKg2FNw9AEbFue+MF
	dDcA==
X-Received: by 10.194.118.169 with SMTP id kn9mr1914994wjb.71.1382449726135;
	Tue, 22 Oct 2013 06:48:46 -0700 (PDT)
MIME-Version: 1.0
Sender: p.patat@gmail.com
Received: by 10.194.19.225 with HTTP; Tue, 22 Oct 2013 06:48:26 -0700 (PDT)
From: patrick patat <patrick.patat@innotis.org>
Date: Tue, 22 Oct 2013 15:48:26 +0200
X-Google-Sender-Auth: -otU1OLRQYBcRKbun9T2BtlUkrI
Message-ID: <CAF+NyK5UinxiRecimtV3fpFrGuKsu9jQ60nyskfgR60tTYdJ_A@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: perl module Crypt-OpenSSL-RSA
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
X-List-Received-Date: Tue, 22 Oct 2013 13:48:47 -0000
Content-Type: multipart/alternative; boundary=089e01176463d8a25104e954a8ba

--089e01176463d8a25104e954a8ba
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I'm trying to create a recipe for perl module Crypt-OpenSSL-RSA, I'm using
inherit cpan to do it. Build and install is working but at run time I have
the following error:

Can't load
'/usr/lib/perl/vendor_perl/5.14.3//auto/Crypt/OpenSSL/RSA/RSA.so' for
module Crypt::OpenSSL::RSA:
/usr/lib/perl/vendor_perl/5.14.3//auto/Crypt/OpenSSL/RSA/RSA.so: undefined
symbol: RSA_public_encrypt at /usr/lib/perl/5.14.3//.

After some research I found this in configure log :
Note (probably harmless): No library found for -lcrypto

Because of this -lcrypto as been remove in Makefile, if I manually edit
Makefile to add -lcrypto and rebuild I don't have undefined symbol error.

Does anybody know if there is a better way than a sed in Makefile to fix
the problem?

you can find the recipe here http://pastebin.com/u2fd9MJq

Thanks,

Pat

--089e01176463d8a25104e954a8ba
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">Hello,</span><div style=3D"font-family:arial,sans-serif;font-size:13px"><=
br><div>I&#39;m trying to create a recipe for perl module=A0Crypt-OpenSSL-R=
SA, I&#39;m using inherit cpan to do it. Build and install is working but a=
t run time I have the following error:</div>

<div><br></div><div>Can&#39;t load &#39;/usr/lib/perl/vendor_perl/5.14.3//a=
uto/Crypt/OpenSSL/RSA/RSA.so&#39; for module Crypt::OpenSSL::RSA: /usr/lib/=
perl/vendor_perl/5.14.3//auto/Crypt/OpenSSL/RSA/RSA.so: undefined symbol: R=
SA_public_encrypt at /usr/lib/perl/5.14.3//.<br>

</div><div><br></div><div>After some research I found this in configure log=
 :=A0</div><div>Note (probably harmless): No library found for -lcrypto<br>=
</div><div><br></div><div>Because of this -lcrypto as been remove in Makefi=
le, if I manually edit Makefile to add -lcrypto and rebuild I don&#39;t hav=
e undefined symbol error.</div>

<div><br></div><div>Does anybody know if there is a better way than a sed i=
n Makefile to fix the problem?</div><div><br></div><div>you can find the re=
cipe here=A0<a href=3D"http://pastebin.com/u2fd9MJq" target=3D"_blank">http=
://pastebin.com/u2fd9MJq</a></div>

<div><br></div><div>Thanks,</div><div><br></div><div>Pat</div></div></div>

--089e01176463d8a25104e954a8ba--
