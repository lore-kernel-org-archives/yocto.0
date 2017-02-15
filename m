Return-Path: <warren@wjh.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90A9BE00992; Wed, 15 Feb 2017 12:45:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_BASE64_BLANKS,
	RCVD_IN_DNSWL_LOW, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.70.40.18 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28629E00970
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 12:45:24 -0800 (PST)
Date: Wed, 15 Feb 2017 15:45:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wjh.io;
	s=protonmail; t=1487191522;
	bh=0dlhIOYCk7WZGjy9wriXagJfHrn7qxRDII9nEfPouyY=;
	h=To:From:Reply-To:Subject:Feedback-ID:From;
	b=kZLeRmDukHsyPx9CzE5KgDxDvlQR8bjIWb41gydb4ccPtsBWSfNbOC2fe1O0njNiY
	14TVNVBTabJi40EB4u5R1bSvWg53ygzw12PUjR8oOMBQet1GlH5GzNw/GOJ32ZT6Y6
	TaMAIta+k2waKaKLj4LEDKSIB32lqd0AFs9DZNlU=
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Warren Harper <warren@wjh.io>
Message-ID: <Y-XTOTj7nR2t5aC4LKsszCCny77eRfSZ5tmA0yHZxSv0gK95NP2M2aoluJLTfaWtbGr78g8O2-UyvdFFfI2SPUSyo2hLI_xjAiOJYhujYxY=@wjh.io>
Feedback-ID: pUxpNEkz39LPq73zbOs5WZECxPMzFCqaoaikDmNWgJzGNVQEvpqUrG-wn1WyXI2c-MCwqkp-g1g45wTPS63Ncg==:Ext:ProtonMail
MIME-Version: 1.0
Subject: error: Can't install libxl-dev-1.0-r0@cortexa9hf_neon: no package provides libxl = 1.0-r0
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Warren Harper <warren@wjh.io>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Feb 2017 20:45:28 -0000
Content-Type: multipart/alternative;
	boundary="b1_f64c12bbe2cdad73f53f1e4265fdfec4"

--b1_f64c12bbe2cdad73f53f1e4265fdfec4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SSBhbSBoYXZpbmcgdHJvdWJsZSB3cml0aW5nIGEgcmVjaXBlIGFuZCBpbmNsdWRpbmcgbGlieGwt
ZGV2IGl0IGluIGFuIGltYWdlLgoKVGhlIHJlY2lwZSBpcyBsaWJ4bF8xLjAuYmI6CmBgYApTVU1N
QVJZID0gIkEgQysrIEV4Y2VsIExpYnJhcnkgdG8gcmVhZC93cml0ZSB4bHMveGx4cyBmaWxlcyIK
REVTQ1JJUFRJT04gPSAiQSBDKysgRXhjZWwgTGlicmFyeSB0byByZWFkL3dyaXRlIHhscy94bHhz
IGZpbGVzIgpMSUNFTlNFID0gIk1JVCIKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vQ09QWUlO
RzttZDU9MmFlZTBiZTI2NzhlZTkwZmQzMjdjYzE4NjgyNjQzOGUiCgpTUkNfVVJJID0gIlwKZmls
ZTovL0NPUFlJTkcgXApmaWxlOi8vbGlieGwuc28gXAoiCgpTID0gIiR7V09SS0RJUn0iCgpkb19p
bnN0YWxsKCkgewppbnN0YWxsIC1kICIke0R9JHtsaWJkaXJ9IgppbnN0YWxsICIke1dPUktESVJ9
L2xpYnhsLnNvIiAiJHtEfSR7bGliZGlyfSIgLW0gMDY0NAp9CmBgYAoKV2hlbiBJIHJ1biB0aGUg
Y29tbWFuZCB0byB0aGUgYnVpbGQgdGhlIGltYWdlIEkgZ2V0IHRoZSBmb2xsb3dpbmcgZXJyb3Ig
ZHVyaW5nIHRoZSBkb19yb290ZnMgdGFzazoKQ29tcHV0aW5nIHRyYW5zYWN0aW9uLi4uZXJyb3I6
IENhbid0IGluc3RhbGwgbGlieGwtZGV2LTEuMC1yMEBjb3J0ZXhhOWhmX25lb246IG5vIHBhY2th
Z2UgcHJvdmlkZXMgbGlieGwgPSAxLjAtcjAKCldoYXQgaXMgY2F1c2luZyB0aGUgYWJvdmUgaXNz
dWU/CgpUaGFua3MsCgpXYXJyZW4gSGFycGVyClNvZnR3YXJlIEVuZ2luZWVyCndhcnJlbkB3amgu
aW8=


--b1_f64c12bbe2cdad73f53f1e4265fdfec4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdj5JIGFtIGhhdmluZyB0cm91YmxlIHdyaXRpbmcgYSByZWNpcGUgYW5kIGluY2x1ZGluZyBs
aWJ4bC1kZXYgaXQgaW4gYW4gaW1hZ2UuPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+VGhl
IHJlY2lwZSBpcyBsaWJ4bF8xLjAuYmI6PGJyPjwvZGl2PjxkaXY+YGBgPGJyPjwvZGl2PjxkaXY+
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IFNVTU1BUlkgPSAiQSBDKysgRXhjZWwgTGlicmFyeSB0
byByZWFkL3dyaXRlIHhscy94bHhzIGZpbGVzIjxicj48L2Rpdj48ZGl2PiZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyBERVNDUklQVElPTiA9ICJBIEMrKyBFeGNlbCBMaWJyYXJ5IHRvIHJlYWQvd3Jp
dGUgeGxzL3hseHMgZmlsZXMiPGJyPjwvZGl2PjxkaXY+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
IExJQ0VOU0UgPSAiTUlUIjxicj48L2Rpdj48ZGl2PiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBM
SUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HO21kNT0yYWVlMGJlMjY3OGVlOTBmZDMy
N2NjMTg2ODI2NDM4ZSI8YnI+PC9kaXY+PGRpdj4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDs8YnI+
PC9kaXY+PGRpdj4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgU1JDX1VSSSA9ICJcPGJyPjwvZGl2
PjxkaXY+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IGZp
bGU6Ly9DT1BZSU5HIFw8YnI+PC9kaXY+PGRpdj4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsgZmlsZTovL2xpYnhsLnNvIFw8YnI+PC9kaXY+PGRpdj4mbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgIjxicj48L2Rpdj48
ZGl2PiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA8YnI+PC9kaXY+
PGRpdj4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgUyA9ICIke1dPUktESVJ9Ijxicj48L2Rpdj48
ZGl2PiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOzxicj48L2Rpdj48ZGl2PiZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyBkb19pbnN0YWxsKCkgezxicj48L2Rpdj48ZGl2PiZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBpbnN0YWxsIC1kICIke0R9JHtsaWJkaXJ9Ijxicj48
L2Rpdj48ZGl2PiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBpbnN0
YWxsICIke1dPUktESVJ9L2xpYnhsLnNvIiAiJHtEfSR7bGliZGlyfSIgLW0gMDY0NDxicj48L2Rp
dj48ZGl2PiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyB9PGJyPjwvZGl2PjxkaXY+YGBgPGJyPjwv
ZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+V2hlbiBJIHJ1biB0aGUgY29tbWFuZCB0byB0aGUgYnVp
bGQgdGhlIGltYWdlIEkgZ2V0IHRoZSBmb2xsb3dpbmcgZXJyb3IgZHVyaW5nIHRoZSBkb19yb290
ZnMgdGFzazo8YnI+PC9kaXY+PGRpdj4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgQ29tcHV0aW5n
IHRyYW5zYWN0aW9uLi4uZXJyb3I6IENhbid0IGluc3RhbGwgbGlieGwtZGV2LTEuMC1yMEBjb3J0
ZXhhOWhmX25lb246IG5vIHBhY2thZ2UgcHJvdmlkZXMgbGlieGwgPSAxLjAtcjA8YnI+PC9kaXY+
PGRpdj48YnI+PC9kaXY+PGRpdj5XaGF0IGlzIGNhdXNpbmcgdGhlIGFib3ZlIGlzc3VlPzxicj48
L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PlRoYW5rcyw8YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+
PGRpdj5XYXJyZW4gSGFycGVyPGJyPjwvZGl2PjxkaXY+U29mdHdhcmUgRW5naW5lZXI8YnI+PC9k
aXY+PGRpdj48YSBocmVmPSJtYWlsdG86d2FycmVuQHdqaC5pbyI+d2FycmVuQHdqaC5pbzwvYT48
YnI+PC9kaXY+



--b1_f64c12bbe2cdad73f53f1e4265fdfec4--
