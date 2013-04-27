Return-Path: <petertornel@yahoo.com>
Received: from nm12.bullet.mail.bf1.yahoo.com (nm12.bullet.mail.bf1.yahoo.com
	[98.139.212.171])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4998EE0137F
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 09:37:05 -0700 (PDT)
Received: from [98.139.215.143] by nm12.bullet.mail.bf1.yahoo.com with NNFMP;
	27 Apr 2013 16:37:04 -0000
Received: from [98.139.215.250] by tm14.bullet.mail.bf1.yahoo.com with NNFMP;
	27 Apr 2013 16:37:04 -0000
Received: from [127.0.0.1] by omp1063.mail.bf1.yahoo.com with NNFMP;
	27 Apr 2013 16:37:04 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 405406.93762.bm@omp1063.mail.bf1.yahoo.com
Received: (qmail 64789 invoked by uid 60001); 27 Apr 2013 16:30:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1367080224; bh=94cOyvAU7GrmFrn5hwuf/f4GyaHeyoDyJYw3mtDJSu0=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=ctFro5LEz51T8uN6H4tfoTuDaRrLRHAsI5YeaI1qcTuruda8Je/8u630W82dXyGNw4KsqlyRrXTh4+n/NEXg5WBjd2jJwSZtKbz8krCFpnDJ3MWNTnBTVPpbCFBcIsZ7o2bXOuSa35dFVm+SnLK++vkFg8sDGDN6Q4vkIJa24hk=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=FWm0h12OHqK3Bkn9qLxU96FUkZhrGQFU55uPz9jBwDTYkRMlxwFz9vb006D/b2QH2gb+lIthwBU/ug4maDAAIPkdzIqXscdeigCBy6ONa4UMZ7Y0gHydzVq8U0AkI14p9hDuHvanm/OXQe09ujlXbeJYrwE3S4RKsIAKiLuMfiM=;
X-YMail-OSG: 7ffBjkcVM1lwNjwv3WS44enZlWW6dmrsv3mhDOOMg8.vH8.
	4FThRaUkanxiPZ0vAJQXoG.lOEF8relBUmgd.TmYw2KSLGJPwdQTNaXkZocK
	MkcvWJHa5HuQ9tU212QdyJAunVhKnEXZSuDGVBU1KGunzxCH6C6K6GhcTIan
	KLjjo63z_qldkDLXSO8L1udZrhuDZlXi_5IjQ10M3WL9V2oixcn4M29QUPz.
	KoG5DYpmLc5Ji3NlJCepz.WI6ly0TFYDR1HmD7X_it7JlZrRtXeN9fUa7jWk
	PI2ft5rd9eIDa29VOihbSw7ZrjwXBumilrNyPodcdm47Jf._Oj8vb0iSW5qy
	C0ebmmF5Mw_wXVr3T_B0dBhBUT4qdMi0j2orxYknakMwi4MWtT0tMA23fQZu
	rcWNWdKx4ofFiW9lq1nDQO4t5aFfuMkgtMOk2kYNSo7Mjx4EEaAWC
Received: from [68.46.169.75] by web161503.mail.bf1.yahoo.com via HTTP;
	Sat, 27 Apr 2013 09:30:24 PDT
X-Rocket-MIMEInfo: 002.001,
	wqDCoMKgIAoKSGVsbG8sCgpTb21ldGltZXMgSSBmZWVsIHRoZSBuZWVkIHRvIGNsZWFuIGV2ZXJ5dGhpbmcgYmVmb3JlIGJ1aWxkaW5nLCBidXQgSSBkb24ndCB3YW50IAp0byBqdXN0IHJtIG15IHByb2plY3QgZGlyZWN0b3J5IHNpbmNlIEkgd2FudCB0byBrZWVwIG15IGNvbmYgZmlsZXMuwqAgV2hhdCBiaXRiYWtlIGNvbW1hbmQgY2FuIEkgcnVuIHRvIGdldCBiYWNrIHRvIGEgcHJpc3RpbmUgc3RhdGUgKHNhbWUgYXMgCmFmdGVyIGNyZWF0aW5nIHByb2plY3QgZGlyZWN0b3J5IGFuZCBtb2RpZnlpbmcgbXkBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.141.536
Message-ID: <1367080224.63818.YahooMailNeo@web161503.mail.bf1.yahoo.com>
Date: Sat, 27 Apr 2013 09:30:24 -0700 (PDT)
From: Peter Tornel <petertornel@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: how to clear all?
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
X-List-Received-Date: Sat, 27 Apr 2013 16:37:05 -0000
Content-Type: multipart/alternative;
	boundary="1524547028-733029375-1367080224=:63818"

--1524547028-733029375-1367080224=:63818
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

=A0=A0=A0 =0A=0AHello,=0A=0ASometimes I feel the need to clean everything b=
efore building, but I don't want =0Ato just rm my project directory since I=
 want to keep my conf files.=A0 What bitbake command can I run to get back =
to a pristine state (same as =0Aafter creating project directory and modify=
ing my conf files)?=A0 =0A=0A=0ARegards,=0A=0APeter=A0=A0=A0 =0A

--1524547028-733029375-1367080224=:63818
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><span class=3D"tab">&=
nbsp;&nbsp;&nbsp; </span><br><div>Hello,</div><div><br><span></span></div><=
div style=3D"color:rgb(0, 0, 0);font-size:16px;font-family:times new roman,=
 new york, times, serif;background-color:transparent;font-style:normal;"><s=
pan>Sometimes=0A I feel the need to clean everything before building, but I=
 don't want =0Ato just rm my project directory since I want to keep my conf=
 files.&nbsp; </span><span>What=0A bitbake command can I run to get back to=
 a pristine state (same as =0Aafter creating project directory and modifyin=
g my conf files)?&nbsp; <br></span></div><div style=3D"color:rgb(0, 0, 0);f=
ont-size:16px;font-family:times new roman, new york, times, serif;backgroun=
d-color:transparent;font-style:normal;"><br><span></span></div><div style=
=3D"color:rgb(0, 0, 0);font-size:16px;font-family:times new roman, new york=
, times, serif;background-color:transparent;font-style:normal;"><span>Regar=
ds,</span></div><div style=3D"color:rgb(0, 0, 0);font-size:16px;font-family=
:times new roman, new york, times, serif;background-color:transparent;font-=
style:normal;"><span><br>Peter</span></div><span class=3D"tab">&nbsp;&nbsp;=
&nbsp; </span><div></div></div></body></html>

--1524547028-733029375-1367080224=:63818--
