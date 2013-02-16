Return-Path: <scancool@yahoo.com>
Received: from nm9.bullet.mail.bf1.yahoo.com (nm9.bullet.mail.bf1.yahoo.com
	[98.139.212.168])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CE52CE00550
	for <yocto@yoctoproject.org>; Sat, 16 Feb 2013 08:01:44 -0800 (PST)
Received: from [98.139.212.148] by nm9.bullet.mail.bf1.yahoo.com with NNFMP;
	16 Feb 2013 16:01:43 -0000
Received: from [98.139.212.238] by tm5.bullet.mail.bf1.yahoo.com with NNFMP;
	16 Feb 2013 16:01:43 -0000
Received: from [127.0.0.1] by omp1047.mail.bf1.yahoo.com with NNFMP;
	16 Feb 2013 16:01:43 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 808526.75420.bm@omp1047.mail.bf1.yahoo.com
Received: (qmail 17412 invoked by uid 60001); 16 Feb 2013 16:01:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1361030503; bh=SMUbMoxf/+EIDOfoOoP9WwH126BROi7981agDGvDMPg=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=MO/5QOA5eaYDPV4qfLM8XxfJORkoXlwXbNxid8GZNDb/mb5MdBJevjUIOaaKeBOyJoIwj+5p3hnayO0YAY2eYtCeOSZx94X60/uc1x0vdrT+UW4l9ekJlWAQ0uVUCRzJBI344DSpKNgxAgcla8xsebhu8Ll6mm3gLaDwUZWNfgw=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=HinY3Wwf6yrbC+cLgXjTIlAHWWWvBdw1Hns+ij/eolMKUncjpp4VtIEnxlZiX7V9RbSFoFw7w4VZwNr2hTlEF6NauuWy+rxK/TNcKONwLTVyw5/5UXaGVSEzL+N83QwMuKv+gYJ3GH6HWYNJKqnNI9xR8+/eE5Ezp7LfU9fEhZ8=;
X-YMail-OSG: JovlOskVM1m6tGzvF_X_T2_EqaBWdOVSrSY9K5GjZ7F01KU
	YharxgNFpO7KV7OL4IauN3GjQKql42X4NvMbYHkkHsw2t_4HE5Z3au9T.1kL
	IQdoTsZxyfOUVAxVdHsEqOJl6zc01XZiNl0J3FjK1DO1OfdBeOjM4lZLxx.K
	MI1PAVQ.RR6GpJBTvW2v.LgfYCn3voS70YWxqiRIhgxIwv1Pe7QhlcMP_xsF
	phFZwlXTN.C9KMtfd7aEAmTInmiDwMQRV8.nG5cVaj.8tDny8XRRJOC5o.Ri
	fgqvKPl0zfSQ5n3XgQCbdKY4xxfTIKgzUUMM.0LfZ8MzrOs_kSXwb5V8NUct
	Xv5oHQW9Ri5ikW4JnK4diqF2XsfqjNkCQ2Ox0tC2Tx5ZF1fU_w41g9C.lzIy
	6T7MkUuMZltKQSxT8olvkR6skq_TiP5utxJQwoAH04RkzZoP6jT29huw6LF3
	ixuRwRvQeBo04kghbGIT_VxNAFgANn8hIzPF1hOTzqwdYyQr_jSyFSAqzNN.
	U87xZ3lM_Cx0VxQ--
Received: from [68.226.113.30] by web140005.mail.bf1.yahoo.com via HTTP;
	Sat, 16 Feb 2013 08:01:43 PST
X-Rocket-MIMEInfo: 001.001,
	DQpJJ20gdXNpbmcgeW9jdG8gdG8gY3JlYXRlIGEgKi5zZGNhcmQgaW1hZ2UsIGFuZCB3aGVuIEkgdHJhbnNmZXIgdG8gdGhlIHNkIGNhcmQgaXQgY3JlYXRlcyBhIHBhcnRpdGlvbiBjYWxsIE9uVHJhY2sgRE02IEF1eDMsIHdoYXQgaXMgdGhhdD8gYW5kIGhvdyBpdCBjYW4gYmUgcmVhZD8NCg0KwqDCoCBEZXZpY2UgQm9vdMKgwqDCoMKgwqAgU3RhcnTCoMKgwqDCoMKgwqDCoMKgIEVuZMKgwqDCoMKgwqAgQmxvY2tzwqDCoCBJZMKgIFN5c3RlbQ0KL2Rldi9zZGIxwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyMDQBMAEBAQE-
X-Mailer: YahooMailClassic/15.1.2 YahooMailWebService/0.8.133.508
Message-ID: <1361030503.17218.YahooMailClassic@web140005.mail.bf1.yahoo.com>
Date: Sat, 16 Feb 2013 08:01:43 -0800 (PST)
From: Andre Bella <scancool@yahoo.com>
To: yocto@yoctoproject.org
In-Reply-To: <1360893779.9004.YahooMailClassic@web140006.mail.bf1.yahoo.com>
MIME-Version: 1.0
Subject: What's OnTrack DM6 Aux3 partition?
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
X-List-Received-Date: Sat, 16 Feb 2013 16:01:45 -0000
Content-Type: multipart/alternative;
	boundary="967802534-1743525445-1361030503=:17218"

--967802534-1743525445-1361030503=:17218
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


I'm using yocto to create a *.sdcard image, and when I transfer to the sd c=
ard it creates a partition call OnTrack DM6 Aux3, what is that? and how it =
can be read?

=A0=A0 Device Boot=A0=A0=A0=A0=A0 Start=A0=A0=A0=A0=A0=A0=A0=A0 End=A0=A0=
=A0=A0=A0 Blocks=A0=A0 Id=A0 System
/dev/sdb1=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2048=A0=A0=A0=A0=A0=A0 10239=A0=
=A0=A0=A0=A0=A0=A0 4096=A0=A0 53=A0 OnTrack DM6 Aux3
/dev/sdb2=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 10240=A0=A0=A0=A0 6639615=A0=A0=A0=
=A0 3314688=A0=A0 83=A0 Linux

I'm asking cause I will like to put a new uImage there,=20

--967802534-1743525445-1361030503=:17218
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;"><br>I'm using yocto to create a *.sdcard imag=
e, and when I transfer to the sd card it creates a partition call OnTrack D=
M6 Aux3, what is that? and how it can be read?<br><br>&nbsp;&nbsp; Device B=
oot&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; End&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Blocks&nbsp;&nbsp; Id&nbsp; =
System<br>/dev/sdb1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; 2048&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10239&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; 4096&nbsp;&nbsp; 53&nbsp; OnTrack DM6 Aux3<br>/dev=
/sdb2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10240&nbs=
p;&nbsp;&nbsp;&nbsp; 6639615&nbsp;&nbsp;&nbsp;&nbsp; 3314688&nbsp;&nbsp; 83=
&nbsp; Linux<br><br>I'm asking cause I will like to put a new uImage there,=
 <br></td></tr></table>

--967802534-1743525445-1361030503=:17218--
