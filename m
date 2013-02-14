Return-Path: <scancool@yahoo.com>
Received: from nm3.bullet.mail.bf1.yahoo.com (nm3.bullet.mail.bf1.yahoo.com
	[98.139.212.162])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id EB686E006C2
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 08:02:42 -0800 (PST)
Received: from [98.139.215.141] by nm3.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 16:02:42 -0000
Received: from [98.139.212.204] by tm12.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 16:02:42 -0000
Received: from [127.0.0.1] by omp1013.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 16:02:42 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 250138.87478.bm@omp1013.mail.bf1.yahoo.com
Received: (qmail 70311 invoked by uid 60001); 14 Feb 2013 16:02:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1360857762; bh=MjzuOP3yHZYQssFOax8jbF9DRf73GacVGN/DPDqKVho=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:MIME-Version:Content-Type;
	b=hemoyl8awjlnXojo4+1XcrSQ02E3QLrr38I2AKoPXQ5ECSnuQCzZrOofDQX9zrm6UBG+EiWZfkE4PxCpaV6voPlLT6cbjHJ6QToXY2tmoiLOjWH1xwy+lO0KJtE68VkgNEBj0gIvPYu2o83rjCve0ypxeAw+wZwBEZbsR1S/1sw=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:MIME-Version:Content-Type;
	b=uyRQ1z22bWfTa34VPrTW7RyyC104uoTizu66ZbzSSjp7aBfMx+uZXh3NiwmWKQGRxsV3lQqhEAMiU79Po6fk8atro/sQmEQmKA/ANaEIpbwqlv3t1/hRVXJYrYcmsP5UgLsNhmp9VQk2JSd3+gdVb6OuX7w5FV5jMf8f0hkuLJs=;
X-YMail-OSG: 3Z6dmyoVM1kUCMDOQ2oC1WJy0TzMNOXRYtpliGKhLMLE5Tq
	_j7o.j2WJApEaRCcT.AYXjEFWei1mfJuEfMQy2jCzmb2jrfac7sVCnAZsq6Q
	P1SiZOZhB2LthPc7yBGoqDnKZOR2k6P7avPwbcN_t_UTXLVHm4jI67gKPK4P
	n55bjMjYYbqEkvFNJtdKrPfOYLjd4hQAyhuWXqcSbTKzZJXAUw9TIrmP9P3g
	Vu1nsd_yl5hCuD44sHX6u1.dIL.M0Tt10srJpR24llzf4K.XWgFn59YMVfpK
	7XdqtUquBftfq.jEAnElcdGKXu5xHLf2gLWWRWU5qnxkj6nHN8yxi4VWd097
	NPpdi6Q_6p0bTtKHxU4sf38ey.QdJ1AmslhgjfSo66e1Y0in6QRaDycwTrxO
	I.TuIPLlIk9OUUZndXwVKVjtJVyNujCIz4TF82PjO5xy20OQrkzYhmWBfRiY
	VxLZacjjSq9AsuLdY_CW0JnnFLUYGqL45lkJOpQZnS6jn75Sl6w--
Received: from [64.62.111.10] by web140003.mail.bf1.yahoo.com via HTTP;
	Thu, 14 Feb 2013 08:02:42 PST
X-Rocket-MIMEInfo: 001.001,
	SGVsbG8gDQrCoEkgaGFkIHVzZWQgYnVpbGRyb290IGluIHRoZSBwYXNzIGFuZCBJIGxpa2UgaXQgY2F1c2UgaXMgdmVyeSBlYXN5IHRvIHVzZSwgYnV0IEknbSBtb3ZpbmcgdG8geW9jdG8gY2F1c2UgaXQgaGFzIG1vcmUgYXBwbGljYXRpb25zIHRoYW4gYnVpbGRyb290LCBpbiBidWlsZHJvb3QgeW91IGNhbiBzZWxlY3QgdGhlIHBhY2thZ2VzIHlvdSB3YW50IHRvIGFkZCBieSBnb2luZyB0byBtZW51Y29uZmlnLCBob3cgZG8gSSBzZWxlY3QgdGhlIHBhY2thZ2VzIEkgd2FuIHRvIGFkZCBpbiB5b2N0bywgZm8BMAEBAQE-
X-Mailer: YahooMailClassic/15.1.2 YahooMailWebService/0.8.133.508
Message-ID: <1360857762.68234.YahooMailClassic@web140003.mail.bf1.yahoo.com>
Date: Thu, 14 Feb 2013 08:02:42 -0800 (PST)
From: Andre Bella <scancool@yahoo.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Subject: select installation packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Feb 2013 16:02:43 -0000
Content-Type: multipart/alternative;
	boundary="-230932972-1210837894-1360857762=:68234"

---230932972-1210837894-1360857762=:68234
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hello=20
=A0I had used buildroot in the pass and I like it cause is very easy to use=
, but I'm moving to yocto cause it has more applications than buildroot, in=
 buildroot you can select the packages you want to add by going to menuconf=
ig, how do I select the packages I wan to add in yocto, for example if I wa=
n to add nano or gstreamer, from the guide I seen you just type bitbake -b =
nano, but is there a menuconfig on yocto where you can select the package y=
ou want to add before you build the image?
thanks,

---230932972-1210837894-1360857762=:68234
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;">Hello <br>&nbsp;I had used buildroot in the p=
ass and I like it cause is very easy to use, but I'm moving to yocto cause =
it has more applications than buildroot, in buildroot you can select the pa=
ckages you want to add by going to menuconfig, how do I select the packages=
 I wan to add in yocto, for example if I wan to add nano or gstreamer, from=
 the guide I seen you just type bitbake -b nano, but is there a menuconfig =
on yocto where you can select the package you want to add before you build =
the image?<br>thanks,<br></td></tr></table>

---230932972-1210837894-1360857762=:68234--
