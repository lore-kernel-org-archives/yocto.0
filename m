Return-Path: <joelparker27@yahoo.com>
Received: from nm40-vm1.bullet.mail.bf1.yahoo.com
	(nm40-vm1.bullet.mail.bf1.yahoo.com [72.30.239.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7066E0098D
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 05:50:03 -0800 (PST)
Received: from [98.139.212.151] by nm40.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 13:50:02 -0000
Received: from [98.139.212.240] by tm8.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 13:50:02 -0000
Received: from [127.0.0.1] by omp1049.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 13:50:02 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 664292.30763.bm@omp1049.mail.bf1.yahoo.com
Received: (qmail 6767 invoked by uid 60001); 4 Mar 2014 13:50:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1393941002; bh=Eq+kcfTDWW6ZzolhSQ2Tz1ZQF+Dnoefj7nVqsJn7nBc=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=r/X8/O34LK/H4ch38y49rbJzPA/bWK3+We2XumDcqseljdi1spi7lKuE4Tga7ukSULNFu4LQJN8RBpUjcOnlPPyflheArVUxsjz3eV5dxbR+Yk0ag38XwzgS4n52YWwJtyaK/xHQqBiHjODBJneVK7mcNVkcUAeX++9vuTPe9C0=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=rDU7xavR53lQ5lYpgbg2fgeKDifZ0hHJtiYpdP3OAC3CQrVbSR6lPsUNdVSmKk3+FNG+dhxYY6bsMGR/OCcKkR64waT7z85FOI3bzpNws/mt+pWdPVsA5VSjT8oIE4iGtbQIhqxlB0KCr4KG6Her2p6zKjiqZRlRlE25fleV9cM=;
X-YMail-OSG: JJ7K30EVM1lrPIfPj75l0rBivtEEU87PXLLm7oohpU0K_5k
	3I9mis8kHqSa_grHytA1975QZbQQrMNkEaLbigBzzOnSe0RDdrlMOTarWV.A
	cE1sqBMujzZ6qAFHwjoUmhAA8fGbIKeR1lS6zXp3SHvxP7XgCwPdkGgqAqgZ
	lM_oNXJV_9hmOLx0H9l8d_O6gVwLdNRNCaQNfoDpToGjzELr1P.Cpwr6Qjci
	A74eMiyV1SLTuM6qZ_ScO.oeICy7QGOEZv6lVrFgYUz3N7JTgZUTJR9Vgjtr
	sF.AaMrzTNfX7iGOngBbXJxoygqtCgyQ7t9i_4rXXiKR7bIw5sNXRUGsFzRB
	RyEytmgR0RO2C3A90Is7X2v5_eSNABl8lA_b1o_d5bXfnVy8gpXWjSkQrzXG
	wJBInLG4g1sJOZmaGUGsb7MWtafC.VG3brsEBI9cvLI9byF0QmNE3atEyQet
	m.rh2cvgd2mrxWG1Ry2lAQrxfBIznkJ8oVoBnMyHBgC6t5e35SoGZY30B.J.
	MsiGOyhn1SLkN4C8H6YRV1r0GXJaSJIsoKJX6dLv7Luw6i8ro0B_wme.2Myc
	nklp0kxDVQ_riRl0X
Received: from [71.41.161.30] by web163105.mail.bf1.yahoo.com via HTTP;
	Tue, 04 Mar 2014 05:50:02 PST
X-Rocket-MIMEInfo: 002.001,
	SSBoYXZlIGFuIEltYWdlIGZvciB0aGUgd2FuZGJvYXJkLXNvbG8gYW5kIGFtIHRyeWluZyB0byBmaWd1cmUgb3V0IHRoZSBjb3JyZWN0IHBhY2thZ2UgbmFtZXMuIEZvciBleGFtcGxlOgoKSU1BR0VfRkVBVFVSRVMgKz0gInNwbGFzaCBzc2gtc2VydmVyLWRyb3BiZWFyIgoKd2hlcmUgZG8gSSBnZXQgdGhlIG5hbWUgc3NoLXNlcnZlci1kcm9wYmVhciA_IEkgYW0gdHJ5aW5nIHRvIGFkZCBzdXBwb3J0IGZvciBodHRwZCwgaWNvbnYgYW5kIGRldiBsaWJyYXJ5LCBhbmQgc3FsaXRlMyBhbmQgZGV2IGxpYnJhcnkBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.177.636
Message-ID: <1393941002.38518.YahooMailNeo@web163105.mail.bf1.yahoo.com>
Date: Tue, 4 Mar 2014 05:50:02 -0800 (PST)
From: Joel Parker <joelparker27@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Add Packages to Recipie
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Joel Parker <joelparker27@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Mar 2014 13:50:04 -0000
Content-Type: multipart/alternative;
	boundary="196471698-593803752-1393941002=:38518"

--196471698-593803752-1393941002=:38518
Content-Type: text/plain; charset=us-ascii

I have an Image for the wandboard-solo and am trying to figure out the correct package names. For example:

IMAGE_FEATURES += "splash ssh-server-dropbear"

where do I get the name ssh-server-dropbear ? I am trying to add support for httpd, iconv and dev library, and sqlite3 and dev library, what would I put for the feature names ?

-- Joel Parker

--196471698-593803752-1393941002=:38518
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div>I have an Image for the wandboard-solo and am trying to figure out the correct package names. For example:</div><div><br></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;">IMAGE_FEATURES += "splash ssh-server-dropbear"</div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><br></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;">where do I get the name ssh-server-dropbear ? I am
 trying to add support for httpd, iconv and dev library, and sqlite3 and dev library, what would I put for the feature names ?</div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><br></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;">-- Joel Parker<br></div></div></body></html>

--196471698-593803752-1393941002=:38518--
