Return-Path: <madoga@protonmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E4F4E00BBC; Thu, 14 Feb 2019 08:35:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madoga[at]protonmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [185.70.40.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 307 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Feb 2019 08:35:36 PST
Received: from mail-40135.protonmail.ch (mail-40135.protonmail.ch
	[185.70.40.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F787E00B43
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 08:35:36 -0800 (PST)
Date: Thu, 14 Feb 2019 16:30:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1550161828;
	bh=DyA1rB1bXhiMIsk8FRWIqtbc6WyQj95u/phXkFn6kI8=;
	h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
	b=e3YvHqRQbGBFKbViPAJg4L9xb6u3qUhGj+KOirzgutqwHYEFF8i0EjL9MIX1nsXUy
	D0TeKISx3KQ5OyanCkH7Hu1pFd1Dnz35G4Ol6ESBgM1qT6eka7MunoPJ18hyYj4MPm
	Io2RUu25PyFNrb6ZLj/LVebxvHYJjAurAoc82OsI=
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: madoga <madoga@protonmail.com>
Message-ID: <IwCSBa8UNgIfRzldVTE4xVmfnQsdsbhPhxR3hNKJSg5WGpUoVUnaS-rwOcCQ-oDgZiMhl75IKCl6BTdjUzZQTK0QLtDDFLNOUdX5SgOJezg=@protonmail.com>
Feedback-ID: 0hd8diSz-ERuYTTSeMaMs35R2I6XUlWHNfgIdkRMsU8awNem8isLl5bIfhU0ez-0XmRosu-bJlGUk1AAdiucNQ==:Ext:ProtonMail
MIME-Version: 1.0
Subject: Two recipes install the same file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: madoga <madoga@protonmail.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Feb 2019 16:35:37 -0000
Content-Type: multipart/alternative;
	boundary="b1_ada29549ddc07ce6b27aaa877f0bef46"

--b1_ada29549ddc07ce6b27aaa877f0bef46
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGVsbG8gZXZlcnlvbmUsCgpJIGhhdmUgYW4gaXNzdWUgd2hpbGUgSSdtIHRyeWluZyB0byBvdmVy
d3JpdGUgc29tZSBmaWxlcyB0aGF0IHR3byByZWNpcGVzIGFyZSBpbnN0YWxsaW5nLiBUYXNrIGRv
X3Jvb3RmcyBmYWlscyBhbmQgSSB3YW50IHRvIGFzayBhYm91dCB0aGUgYmVzdCB3YXkgdG8gc29s
dmUgdGhpczoKCi0tLS0tLS0tLS0tLS0KRXJyb3I6IFRyYW5zYWN0aW9uIGNoZWNrIGVycm9yOgoK
ICBmaWxlIC9hcHAvZWNvbmZpZy54bWwgY29uZmxpY3RzIGJldHdlZW4gYXR0ZW1wdGVkIGluc3Rh
bGxzIG9mIHRlc3RzLTEuMC1yMCBhbmQgZXJyb3ItMS4wLXIwCgogIGZpbGUgL2FwcC9jb250cm9s
bGVyLnhtbCBjb25mbGljdHMgYmV0d2VlbiBhdHRlbXB0ZWQgaW5zdGFsbHMgb2YgdGVzdHMtMS4w
LXIwIGFuZCBjb250cm9sbGVyLTEuMC1yMAoKICBmaWxlIC9hcHAvdXNlcl9tb2RlLnhtbCBjb25m
bGljdHMgYmV0d2VlbiBhdHRlbXB0ZWQgaW5zdGFsbHMgb2YgbW9kZS0xLjAtcjAgYW5kIHRlc3Rz
LTEuMC1yMAoKRXJyb3IgU3VtbWFyeQotLS0tLS0tLS0tLS0tCiBXaGVuIEkgbGF1bmNoIGJpdGJh
a2Ugd2l0aCBhIGNvbmNyZXRlIGltYWdlIHRoaXMgZXJyb3IgYXBwZWFycyBhbmQgSSBkb24ndCBr
bm93IGhvdyBJIGNhbiBnaXZlICJwcmlvcml0eSIgdG8gYSByZWNpcGUuIEkgaGF2ZSBmb3VuZCBz
b21ldGhpbmcgYWJvdXQgY3JlYXRlIC5iYmFwcGVuZCBmaWxlLi4uCgpUaGFuayB5b3UsCk1hcmlv


--b1_ada29549ddc07ce6b27aaa877f0bef46
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdj5IZWxsbyBldmVyeW9uZSw8YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGhhdmUg
YW4gaXNzdWUgd2hpbGUgSSdtIHRyeWluZyB0byBvdmVyd3JpdGUgc29tZSBmaWxlcyB0aGF0IHR3
byByZWNpcGVzIGFyZSBpbnN0YWxsaW5nLiBUYXNrIDxiPmRvX3Jvb3RmczwvYj4gZmFpbHMgYW5k
IEkgd2FudCB0byBhc2sgYWJvdXQgdGhlIGJlc3Qgd2F5IHRvIHNvbHZlIHRoaXM6Jm5ic3A7PGJy
PjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+LS0tLS0tLS0tLS0tLTxicj48L2Rpdj48ZGl2Pjxp
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDE0cHgiPkVycm9yOiBUcmFuc2FjdGlvbiBjaGVjayBl
cnJvcjo8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTRweCI+PGJyPjwvc3Bhbj48L2k+
PC9kaXY+PGRpdj48aT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxNHB4Ij4mbmJzcDsgZmlsZSAv
YXBwL2Vjb25maWcueG1sIGNvbmZsaWN0cyBiZXR3ZWVuIGF0dGVtcHRlZCBpbnN0YWxscyBvZiB0
ZXN0cy0xLjAtcjAgYW5kIGVycm9yLTEuMC1yMDwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OiAxNHB4Ij48YnI+PC9zcGFuPjwvaT48L2Rpdj48ZGl2PjxpPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6IDE0cHgiPiZuYnNwOyBmaWxlIC9hcHAvY29udHJvbGxlci54bWwgY29uZmxpY3RzIGJldHdl
ZW4gYXR0ZW1wdGVkIGluc3RhbGxzIG9mIHRlc3RzLTEuMC1yMCBhbmQgY29udHJvbGxlci0xLjAt
cjA8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTRweCI+PGJyPjwvc3Bhbj48L2k+PC9k
aXY+PGRpdj48aT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxNHB4Ij4mbmJzcDsgZmlsZSAvYXBw
L3VzZXJfbW9kZS54bWwgY29uZmxpY3RzIGJldHdlZW4gYXR0ZW1wdGVkIGluc3RhbGxzIG9mIG1v
ZGUtMS4wLXIwIGFuZCB0ZXN0cy0xLjAtcjA8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTog
MTRweCI+PGJyPjwvc3Bhbj48L2k+PC9kaXY+PGRpdj48aT48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OiAxNHB4Ij5FcnJvciBTdW1tYXJ5PC9zcGFuPjwvaT48YnI+PC9kaXY+PGRpdj4tLS0tLS0tLS0t
LS0tPGJyPjwvZGl2PjxkaXY+Jm5ic3A7V2hlbiBJIGxhdW5jaCBiaXRiYWtlIHdpdGggYSBjb25j
cmV0ZSBpbWFnZSB0aGlzIGVycm9yIGFwcGVhcnMgYW5kIEkgZG9uJ3Qga25vdyBob3cgSSBjYW4g
Z2l2ZSAicHJpb3JpdHkiIHRvIGEgcmVjaXBlLiBJIGhhdmUgZm91bmQgc29tZXRoaW5nIGFib3V0
IGNyZWF0ZSAuYmJhcHBlbmQgZmlsZS4uLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+VGhhbmsg
eW91LDxicj48L2Rpdj48ZGl2Pk1hcmlvPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdiBjbGFzcz0i
cHJvdG9ubWFpbF9zaWduYXR1cmVfYmxvY2siPjxkaXYgY2xhc3M9InByb3Rvbm1haWxfc2lnbmF0
dXJlX2Jsb2NrLXVzZXIgcHJvdG9ubWFpbF9zaWduYXR1cmVfYmxvY2stZW1wdHkiPjxicj48L2Rp
dj48ZGl2IGNsYXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay1wcm90b24iPjxicj48L2Rp
dj48L2Rpdj48ZGl2Pjxicj48L2Rpdj4=



--b1_ada29549ddc07ce6b27aaa877f0bef46--
