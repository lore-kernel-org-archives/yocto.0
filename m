Received: from m157-178.yeah.net (m157-178.yeah.net [123.58.178.157])
 by mx.groups.io with SMTP id smtpd.web11.5331.1585646086656052284
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 02:14:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yeah.net header.s=s110527 header.b=adSlgRjt;
 spf=pass (domain: yeah.net, ip: 123.58.178.157, mailfrom: nus1998@yeah.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=UuL2h
	WTArdJRoAwmM7qYcex45ldbkpvEUhxOFW1Pnis=; b=adSlgRjtq3godC5iVvyO5
	/93GytDT8Ytbwv6e/17hj33x0cXPG/oXGGfG0uw90peGNuvk1M8zc0LIyRQptwjA
	h/mfLd2HXCXi2csJkFCuhjpap/f4rYXGkcPKE63zllnxR0DFoll1g2D9SCqCkv4Q
	NPAkcRNCDv1nYEtDYuLKDc=
Received: from nus1998$yeah.net ( [121.35.184.240] ) by ajax-webmail-app8
 (Coremail) ; Tue, 31 Mar 2020 17:14:38 +0800 (CST)
X-Originating-IP: [121.35.184.240]
Date: Tue, 31 Mar 2020 17:14:38 +0800 (CST)
X-CM-HeaderCharset: UTF-8
From: "nus1998" <nus1998@yeah.net>
To: "Ross Burton" <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] duplicate files in tmp
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn yeah
In-Reply-To: <CAAnfSTsvHjbhXMORbTJX0=WLDT2O0GB1HExU2=bua655Skcddw@mail.gmail.com>
References: <5f89ccfc.1f85d2.1712e3f6b72.Coremail.nus1998@yeah.net>
 <CAAnfSTsvHjbhXMORbTJX0=WLDT2O0GB1HExU2=bua655Skcddw@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <77e62f97.1f90e3.1712fdf0bc5.Coremail.nus1998@yeah.net>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: OVUQrADH3Or_CYNen4ADAA--.41630W
X-CM-SenderInfo: 5qxvimyzy65vtdko0vbw/1tbiDgX3MFszTRLJbQABse
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Content-Type: multipart/alternative; 
	boundary="----=_Part_7976854_2078811932.1585646078917"

------=_Part_7976854_2078811932.1585646078917
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

V2VsbCwgVWJ1bnR1IGRvZXNuJ3QgdGVsbCBhbnkgZGlmZmVyZW5jZSBiZXR3ZWVuIGEgbm9ybWFs
IGZpbGUgYW5kIGEgaGFyZCBsaW5rIGZpbGUgb24gZ3VpIGZpbGUgZXhwbG9yZSwgdmVyaWZpZWQg
YnkgImxzIC1pIi4gdGhhbmtzPGJyLz48YnIvPkIuUi48YnIvPk51cwpBdCAyMDIwLTAzLTMxIDE2
OjU4OjI2LCAiUm9zcyBCdXJ0b24iIDxyb3NzQGJ1cnRvbmluaS5jb20+IHdyb3RlOgo+T24gVHVl
LCAzMSBNYXIgMjAyMCBhdCAwOTo1NywgbnVzMTk5OCA8bnVzMTk5OEB5ZWFoLm5ldD4gd3JvdGU6
DQo+PiBXaGVuIEkgYml0YmFrZWQgdGhlIHN5c3RlbSwgSSBmb3VuZCB0aGVyZSBhcmUgYSBsb3Qg
b2YgZHVwbGljYXRlIGZpbGVzIGluIDxidWlsZD4vdG1wLCBmb3IgZXhhbXBsZSwgdGhlcmUgaXMg
YSBkaXJlY3RvcnkgbmFtZWQgInJlY2lwZS1zeXNyb290LW5hdGl2ZSIgaW4gZXZlcnkgcGFja2Fn
ZSwgd2hpY2ggZGlyZWN0b3J5IGlzIHNlcnZlcmFsIGh1bmRyZWRzIG9mIE1CIGluIHNpemUuIEkn
bSBjb25mdXNlZCB0aGF0IHdoeSBkb24ndCB1c2UgbGluayBmaWxlIHR5cGUgdG8gaW5zdGVhZCBv
ZiBkdXBsaWNhdGUgY29waWVzLCB3aGljaCBjYW4gc2F2ZSB0ZW5zIG9mIEdCIHNpemUuIEkga25v
dyB0aGF0IGRpc2sgY2FwYWNpdHkgc2hvdWxkIG5vdCBiZSBhIGNvbmNlcm4gYnV0IGl0J3MgYWx3
YXlzIHdlbGNvbWUgdG8gaGF2ZSBhIHNtYWxsIHNpemUgcHJvamVjdC4NCj4NCj5UaGV5IGFyZSBs
aW5rcywgYnV0IGhhcmRsaW5rcyBub3Qgc29mdGxpbmtzIGZvciBlZmZpY2llbmN5IGFuZCBldmVu
DQo+bGVzcyBkaXNrIHVzYWdlLg0KPg0KPlJvc3MNCg==

------=_Part_7976854_2078811932.1585646078917
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

V2VsbCwgVWJ1bnR1IGRvZXNuJ3QgdGVsbCBhbnkgZGlmZmVyZW5jZSBiZXR3ZWVuIGEgbm9ybWFs
IGZpbGUgYW5kIGEgaGFyZCBsaW5rIGZpbGUgb24gZ3VpIGZpbGUgZXhwbG9yZSwgdmVyaWZpZWQg
YnkgImxzIC1pIi4gdGhhbmtzJmx0O2JyLyZndDsmbHQ7YnIvJmd0O0IuUi4mbHQ7YnIvJmd0O051
czxicj5BdCAyMDIwLTAzLTMxIDE2OjU4OjI2LCAiUm9zcyBCdXJ0b24iICZsdDtyb3NzQGJ1cnRv
bmluaS5jb20mZ3Q7IHdyb3RlOjxicj4mZ3Q7T24gVHVlLCAzMSBNYXIgMjAyMCBhdCAwOTo1Nywg
bnVzMTk5OCAmbHQ7bnVzMTk5OEB5ZWFoLm5ldCZndDsgd3JvdGU6PGJyPiZndDsmZ3Q7IFdoZW4g
SSBiaXRiYWtlZCB0aGUgc3lzdGVtLCBJIGZvdW5kIHRoZXJlIGFyZSBhIGxvdCBvZiBkdXBsaWNh
dGUgZmlsZXMgaW4gJmx0O2J1aWxkJmd0Oy90bXAsIGZvciBleGFtcGxlLCB0aGVyZSBpcyBhIGRp
cmVjdG9yeSBuYW1lZCAicmVjaXBlLXN5c3Jvb3QtbmF0aXZlIiBpbiBldmVyeSBwYWNrYWdlLCB3
aGljaCBkaXJlY3RvcnkgaXMgc2VydmVyYWwgaHVuZHJlZHMgb2YgTUIgaW4gc2l6ZS4gSSdtIGNv
bmZ1c2VkIHRoYXQgd2h5IGRvbid0IHVzZSBsaW5rIGZpbGUgdHlwZSB0byBpbnN0ZWFkIG9mIGR1
cGxpY2F0ZSBjb3BpZXMsIHdoaWNoIGNhbiBzYXZlIHRlbnMgb2YgR0Igc2l6ZS4gSSBrbm93IHRo
YXQgZGlzayBjYXBhY2l0eSBzaG91bGQgbm90IGJlIGEgY29uY2VybiBidXQgaXQncyBhbHdheXMg
d2VsY29tZSB0byBoYXZlIGEgc21hbGwgc2l6ZSBwcm9qZWN0Ljxicj4mZ3Q7PGJyPiZndDtUaGV5
IGFyZSBsaW5rcywgYnV0IGhhcmRsaW5rcyBub3Qgc29mdGxpbmtzIGZvciBlZmZpY2llbmN5IGFu
ZCBldmVuPGJyPiZndDtsZXNzIGRpc2sgdXNhZ2UuPGJyPiZndDs8YnI+Jmd0O1Jvc3M8YnI+

------=_Part_7976854_2078811932.1585646078917--
