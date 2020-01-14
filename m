Received: from mail.inango-sw.com (mail.inango-sw.com [178.238.230.57])
 by mx.groups.io with SMTP id smtpd.web09.11830.1579009827814156017
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 05:50:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inango-systems.com header.s=45a440e0-d841-11e8-b985-5fcc721607e0 header.b=Rkez6BBQ;
 spf=pass (domain: inango-systems.com, ip: 178.238.230.57, mailfrom: n.merinov@inango-systems.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id AA0AD10807B0
	for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2020 15:50:25 +0200 (IST)
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 2J21P2qssn1Q; Tue, 14 Jan 2020 15:50:25 +0200 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id 1B4BA1080790;
	Tue, 14 Jan 2020 15:50:25 +0200 (IST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.inango-sw.com 1B4BA1080790
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inango-systems.com;
	s=45A440E0-D841-11E8-B985-5FCC721607E0; t=1579009825;
	bh=Es0D0rKP/+YYLc8wAPnqQRYyf9Jn7iYwE2XFrfxfUhk=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=Rkez6BBQ1iBkNCi20FDvMEpItop6PBVFLIgObF7ZuSm7F5pIsm5GdOLneLvfdxVLw
	 XCEFVtTEgEYTP7WXfsfbZ2Iz72WwHWmBo710oU/ehV02I+5L2CVBK9J0DqZ3GmIhY1
	 q8d/zEdCn2N3TQPbpt6hVR9BLlRTtuQNj+sfnndw69GvuBbXt3pKqY1v1R9vq3pbkY
	 62JSO/rs65gVvchMEy35qFdcoWeUQxIVfBbplzHiriJIdBBUTbbKXrUKM8SarkPktd
	 O5oxwAHpaYwJSmzt9Hg1H7qtgz+lRAw4B/pfjS5gN6qskj5+SVGF1YtvTFs583QZIS
	 vOMxFUFsreEBQ==
X-Virus-Scanned: amavisd-new at inango-sw.com
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id EhTD6TUJpkxb; Tue, 14 Jan 2020 15:50:25 +0200 (IST)
Received: from mail.inango-sw.com (mail.inango-sw.com [172.17.220.3])
	by mail.inango-sw.com (Postfix) with ESMTP id F1D3D108022D;
	Tue, 14 Jan 2020 15:50:24 +0200 (IST)
Date: Tue, 14 Jan 2020 15:50:24 +0200 (IST)
From: "Nikolay Merinov" <n.merinov@inango-systems.com>
To: yocto@lists.yoctoproject.org
Cc: b shehter <b.shehter@inango-systems.com>
Message-ID: <1049160807.70313.1579009824837.JavaMail.zimbra@inango-systems.com>
Subject: Switching to OpenSSL 1.1.1 in Yocto Morty release
MIME-Version: 1.0
X-Originating-IP: [172.17.220.3]
X-Mailer: Zimbra 8.8.15_GA_3888 (ZimbraWebClient - [unknown] (Linux)/8.8.15_GA_3890)
Thread-Index: xu+chvCS3wC9tB3kfcEPymKSAzYquQ==
Thread-Topic: Switching to OpenSSL 1.1.1 in Yocto Morty release
X-Groupsio-MsgNum: 47954
Content-Type: multipart/related; boundary="htGIDD7vWB6royCfPBE0"

--htGIDD7vWB6royCfPBE0
Content-Type: multipart/alternative; 
	boundary="=_6687a722-3fbb-4753-bf62-6e07e2f15afe"

--=_6687a722-3fbb-4753-bf62-6e07e2f15afe
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi, 

Our company interested in updating an old Yocto releases (especially the Morty release) to use the OpenSSL version 1.1.1. 

Can Yocto Project integrate all necessary changes if Inango prepares all required modification to compile all the code that exists in Poky Morty distribution with OpenSSL 1.1.1b (version used for Thud release)? 

Regards, 
Nikolai 
-- 
[ http://inango.com/ |   ] 
Nikolai Merinov 
Architect, Arch Group 
[ mailto:n.merinov@inango-systems.com | n.merinov@inango-systems.com ] 
T +7 343 298 0147 C +7 912 229 2564 
[ http://inango.com/ | inango.com ] [ https://www.linkedin.com/company/inango ] 

--=_6687a722-3fbb-4753-bf62-6e07e2f15afe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family: arial, helvetica, sans-=
serif; font-size: 12pt; color: #000000"><div style=3D"font-family: arial, h=
elvetica, sans-serif; font-size: 12pt; color: #000000"><div>Hi,</div><div><=
br data-mce-bogus=3D"1"/></div><div>Our company interested in updating an o=
ld Yocto releases (especially the Morty release) to use the OpenSSL version=
 1.1.1.</div><div><br data-mce-bogus=3D"1"/></div><div>Can Yocto Project in=
tegrate all necessary changes if Inango prepares all required modification =
to compile all the code that exists in Poky Morty distribution with OpenSSL=
 1.1.1b (version used for Thud release)?<br data-mce-bogus=3D"1"/></div><di=
v><br data-mce-bogus=3D"1"/></div>Regards,<br/>Nikolai<br/><div data-marker=
=
=3D"__SIG_POST__">-- <br/></div><div><div style=3D"margin-bottom:7px;font-=
family:sans-serif"><a href=3D"http://inango.com" target=3D"_blank" rel=3D"n=
ofollow noopener noreferrer"><img src=3D"cid:attach_0_15E9C512B0290A86_2075=
@groups.io"/> </a>
      </div><div style=3D"color:#333333;padding-left:13px;font-family:sans=
-serif;font-size:13px;line-height:14px">
        <div style=3D"font-weight:bold">Nikolai Merinov</div>
        <div>Architect, Arch Group</div>
        <div style=3D"font-size:11px"><a href=3D"mailto:n.merinov@inango-s=
ystems.com" target=3D"_blank" rel=3D"nofollow noopener noreferrer">n.merino=
v@inango-systems.com</a><br/></div>
        <div style=3D"font-size:11px;line-height:15px;padding-left:5px">T =
+7 343 298 0147 C +7 912 229 2564</div>
      </div><div style=3D"margin-left:13px;font-family:sans-serif;font-siz=
e:11px;line-height:14px">
        <a href=3D"http://inango.com" style=3D"color:rgb( 244 , 139 , 0 );=
font-weight:bold;margin-right:5px" target=3D"_blank" rel=3D"nofollow noopen=
er noreferrer">inango.com</a><a href=3D"https://www.linkedin.com/company/in=
ango" target=3D"_blank" rel=3D"nofollow noopener noreferrer"><img src=3D"ci=
d:attach_1_15E9C512B03408FA_2075@groups.io" alt=3D"Inango on LinkedIn" styl=
e=3D"vertical-align:top"/></a><br/></div></div></div></div></body></html>

--=_6687a722-3fbb-4753-bf62-6e07e2f15afe--

--htGIDD7vWB6royCfPBE0
Content-Id: <attach_0_15E9C512B0290A86_2075@groups.io>
X-Attachment-Id: attach_0_15E9C512B0290A86_2075@groups.io
Content-Type: image/png; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

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

--htGIDD7vWB6royCfPBE0
Content-Id: <attach_1_15E9C512B03408FA_2075@groups.io>
X-Attachment-Id: attach_1_15E9C512B03408FA_2075@groups.io
Content-Type: image/png; name="dummyfile.1.part"
Content-Disposition: inline; filename="dummyfile.1.part"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAADgAAAAQCAYAAABDebxFAAAB5ElEQVRIid2VwXGrMBCG0wejO6MG
TAMeCmDUgGkANWAqQAUEDsnRNGAuvu683FWBqUAV/Dkkq7GIIJDkzXPezuyMsCzxf9pfywP+83j4
1wLWRF0foVSxOuv66NfePWDXtRAi2ZxEBOAdkMmttR9eoHWFvj99KmRpjy3R96egCsY0XnRZHiBl
uh1w+iMHEUGIBFKmcM4tCpvbY2swkFJF8MwaboG/DcgnuqYqfxtQiARZtvuaRefEWWsD6/GYiKBU
gTzfe/ve7uGcQ1keoFSBsjxgHK/QuoKUKaRMoXXlHWGtRVkeIEQCrSs/ngJm2Q7GNFCqgBAJjGmg
deXXGdME9t1kUZ6bO61xvAb/Y5FSpnh5+RO9NwwwV5Up4PQZAMbx6jOm98uAxjQYhnN0Ls/3ftz3
p6ALdl3rT12IBG376MdSpkE11wAC8IfH1+hHANleS9VlQSw4lrew/G7ea20Fp+sXAbuuBREFGYPg
iM3dAvX9KWgSXddiGM7QugIR4fn5Kai8c85DrwGMWXIRMNaJtgJyA2LbXS6XwIZsKaUKOOdmv2t3
DTiOVy88z/cgoqCZZNkOw3AG8NZFeS7LdqjrYxSI9+EKE9GH+z3bZO451n7YY8UBfgGgcy7ozGuS
7zPwCwC/G688sUFG/tfqsAAAAABJRU5ErkJggg==

--htGIDD7vWB6royCfPBE0--
