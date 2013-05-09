Return-Path: <petertornel@yahoo.com>
Received: from nm12.bullet.mail.bf1.yahoo.com (nm12.bullet.mail.bf1.yahoo.com
	[98.139.212.171])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0C87CE0047F
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 09:59:02 -0700 (PDT)
Received: from [98.139.212.144] by nm12.bullet.mail.bf1.yahoo.com with NNFMP;
	09 May 2013 16:59:02 -0000
Received: from [98.139.212.230] by tm1.bullet.mail.bf1.yahoo.com with NNFMP;
	09 May 2013 16:59:02 -0000
Received: from [127.0.0.1] by omp1039.mail.bf1.yahoo.com with NNFMP;
	09 May 2013 16:59:02 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 185165.87647.bm@omp1039.mail.bf1.yahoo.com
Received: (qmail 41098 invoked by uid 60001); 9 May 2013 16:59:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1368118742; bh=SuDG7loP/ZuAxU+4D7drix7qcRdLT9FWm4Sdh5uw3Fg=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=FPd+Q6TBnwTUQ0UlLC/8OSmmmzxPPFfIGfLDww43RKzgZ5TdN55vcSSC0d29KfWH5O4qHyZzutvDn95IfXTmZwBCNWXkbZPZHBSKWe7rIdlynv6buVInQFcJswkkpS32BJJwsI1zRVr+nG7AurrSxBZbBYtAyQO7dpn62q4y4rw=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=4rOvHNjYKVKGXfO28wH77TNZ7Vp8BdfpLpjdCI/uGaYar2e7EbIC3keAvwqQ/AU/ZE+VZ/dyB/vhQvRg+gGKs8iurPba4FWhsMgxK2wu3zfpo5HsxLR5KqBt49xL4XpUwq/S7Mag5iYyTVQwaB8+pTmR+J2gle3854TXK3+cd0E=;
X-YMail-OSG: oYzP6NUVM1m4SmWl6tPRyCLZp7GTM5rDnFqPPX3quvS1oEr
	4UBYdA9UIhvqNJ2JNxhDmInv_cNUvTzp4CEAfxkCFvhffPWhfScKdX3usC2i
	aZR1u0KVJJPWnMOeYrhQ4zbJywrA38.Y6fkZcbOQffvI2WiW9SuY.zOldDH6
	rseu0XX9.YtKBtYg23_4GVdXjlcTLkL9X1MfWD8o6yBSnknlxRZunxYt84n7
	pAFzFfFYQpKK9rhCrt0gANZ0t5g4pGK0uC8KCaEtKbLIc1lTTRrVSo_zJG4c
	1.FLJwex9_azzekOel43xhn3eGhjpv1vMdKC9eVzaMa9IVczmlnj3V0.PO27
	eIgwmcYfeEvn0pIqISWrparfVY6lPEIDeyHzW2b0xRSuGeYEVWD9tWwfle4c
	N3nRDO9tAOBmcMIOwv6p2r.3.CwoGQJwBdd3n4_fnY3w5XolEsfQBNiza6Ue
	CmgtfkkulUkdyg8D2
Received: from [68.46.169.75] by web161506.mail.bf1.yahoo.com via HTTP;
	Thu, 09 May 2013 09:59:02 PDT
X-Rocket-MIMEInfo: 002.001,
	d2l0aCBHVUkuwqAgCgpUaGFua3MKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCiBGcm9tOiBQZXRlciBUb3JuZWwgPHBldGVydG9ybmVsQHlhaG9vLmNvbT4KVG86ICJ5b2N0b0B5b2N0b3Byb2plY3Qub3JnIiA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4gClNlbnQ6IFRodXJzZGF5LCBNYXkgOSwgMjAxMyAxMjoyOSBQTQpTdWJqZWN0OiBbeW9jdG9dIFBsZWFzZSBwb2ludCBtZSB0byB0aGUgYmluYXJ5IHRoYXQgaGFzIHRoZSBiZXN0IGNoYW5jZSBvZiBib290aW5nIGEgZHVhbCBjb3JlLi4BMAEBAQE-
X-Mailer: YahooMailWebService/0.8.141.536
References: <1368116989.87405.YahooMailNeo@web161503.mail.bf1.yahoo.com>
Message-ID: <1368118742.36231.YahooMailNeo@web161506.mail.bf1.yahoo.com>
Date: Thu, 9 May 2013 09:59:02 -0700 (PDT)
From: Peter Tornel <petertornel@yahoo.com>
To: Peter Tornel <petertornel@yahoo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <1368116989.87405.YahooMailNeo@web161503.mail.bf1.yahoo.com>
MIME-Version: 1.0
Subject: Re: Please point me to the binary that has the best chance of	booting a dual core...
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Peter Tornel <petertornel@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 May 2013 16:59:03 -0000
Content-Type: multipart/alternative;
	boundary="-537478627-1545332052-1368118742=:36231"

---537478627-1545332052-1368118742=:36231
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

with GUI.=A0 =0A=0AThanks=0A=0A=0A=0A=0A________________________________=0A=
 From: Peter Tornel <petertornel@yahoo.com>=0ATo: "yocto@yoctoproject.org" =
<yocto@yoctoproject.org> =0ASent: Thursday, May 9, 2013 12:29 PM=0ASubject:=
 [yocto] Please point me to the binary that has the best chance of booting =
a dual core...=0A =0A=0A=0AAtom netbook from a FLASH drive.=A0 Thanks=0A=0A=
Pete=0A=0A=0A_______________________________________________=0Ayocto mailin=
g list=0Ayocto@yoctoproject.org=0Ahttps://lists.yoctoproject.org/listinfo/y=
octo

---537478627-1545332052-1368118742=:36231
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt">with GUI.&nbsp; <br><=
br>Thanks<br><div><span><br></span></div><div><br></div>  <div style=3D"fon=
t-family: times new roman, new york, times, serif; font-size: 12pt;"> <div =
style=3D"font-family: times new roman, new york, times, serif; font-size: 1=
2pt;"> <div dir=3D"ltr"> <hr size=3D"1">  <font face=3D"Arial" size=3D"2"> =
<b><span style=3D"font-weight:bold;">From:</span></b> Peter Tornel &lt;pete=
rtornel@yahoo.com&gt;<br> <b><span style=3D"font-weight: bold;">To:</span><=
/b> "yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt; <br> <b><span s=
tyle=3D"font-weight: bold;">Sent:</span></b> Thursday, May 9, 2013 12:29 PM=
<br> <b><span style=3D"font-weight: bold;">Subject:</span></b> [yocto] Plea=
se point me to the binary that has the best chance of=0A=09booting a dual c=
ore...<br> </font> </div> <div class=3D"y_msg_container"><br><div id=3D"yiv=
6760086426"><div><div style=3D"color:#000;background-color:#fff;font-family=
:times new roman, new york, times, serif;font-size:12pt;">Atom netbook from=
 a FLASH drive.&nbsp; Thanks<br><br>Pete<br><br><div></div></div></div></di=
v><br>_______________________________________________<br>yocto mailing list=
<br><a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yocto=
project.org">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/=
listinfo/yocto</a><br><br><br></div> </div> </div>  </div></body></html>

---537478627-1545332052-1368118742=:36231--
