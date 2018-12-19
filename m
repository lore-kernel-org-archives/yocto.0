Return-Path: <madoga@protonmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C699DE00C4E; Wed, 19 Dec 2018 06:23:32 -0800 (PST)
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
	*      [185.70.40.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
	[185.70.40.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59E38E00950
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2018 06:23:31 -0800 (PST)
Date: Wed, 19 Dec 2018 14:16:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1545229023;
	bh=cg9U7wcl3rWtcDV5h4iwYh5aWpSTA+dYsry9VfLSDYY=;
	h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
	b=GoZTZl7tnuJKFxoW8GfL5ku38dYnWq69PvpLcfjfIaKEgNE8ZkX3WClh1NBTQI1jM
	ZU8r7srCb3hjygmN8C7U8FJSq6FLHCQ63ztcZWIzf2FdePZAR/a92byNbu5JqYL+Eh
	zKJXaS8+V0xRd4lfBLeLhHoQWAHvSRJDrhmn1ePE=
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: madoga <madoga@protonmail.com>
Message-ID: <XUiyo-p85y5jWlEvuX3SKzdKso_dCC7pwaVE-iWM1CTnvLdxdNtRehegAyegvEpvIKigBIxGQvq91nJEDY_NVoPGRudYCwyCrmBF3ZNJSl0=@protonmail.com>
Feedback-ID: 0hd8diSz-ERuYTTSeMaMs35R2I6XUlWHNfgIdkRMsU8awNem8isLl5bIfhU0ez-0XmRosu-bJlGUk1AAdiucNQ==:Ext:ProtonMail
MIME-Version: 1.0
Subject: Error while using PSEUDO
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
X-List-Received-Date: Wed, 19 Dec 2018 14:23:32 -0000
Content-Type: multipart/alternative;
	boundary="b1_448877305a3d4f9fb6e890da41e9ee11"

--b1_448877305a3d4f9fb6e890da41e9ee11
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGVsbG8gZXZlcnlvbmUsCgpJIGFtIHRyeWluZyB0byB1c2UgcHNldWRvIGR1ZSB0byBJIG5lZWQg
dG8gc2V0IG15IGVudGlyZSByb290ZnMuIEkgd291bGQgbGlrZSB0byBhc2sgeW91IHNvbWUgcXVl
c3Rpb25zIGFib3V0IGhvdyB0byB1c2UgaXQsIGNvbnNpZGVyaW5nIHRoYXQgaXQgZG9lcyBub3Qg
c2VlbSB0byB3b3JrLiBJIGFtIGdvaW5nIHRvIGV4cGxhaW4gdGhlIHByb2Nlc3MgSSBoYXZlIGZv
bGxvd2VkOgoKSSBlbmFibGVkIFBTRVVET19ESVNBQkxFRCBhbmQgUFNFVURPX1BSRUZJWCBhdCBt
ZXRhL2NvbmYvYml0YmFrZS5jb25mOgpleHBvcnQgUFNFVURPX0RJU0FCTEVEID0gIjAiCgpleHBv
cnQgUFNFVURPX1BSRUZJWCA9ICIke1NUQUdJTkdfRElSX05BVElWRX0ke3ByZWZpeF9uYXRpdmV9
IgoKQWxzbywgRklMRVNZU1RFTV9QRVJNU19UQUJMRSB2YXJpYWJsZSBpcyBwb2ludGluZyB0byBt
eSBjdXN0b20gZnMtcGVybXMtY2xlLnR4dC4gSXQgaXMgZGVjbGFyZWQgYXQgYnVpbGQvY29uZi9s
b2NhbC5jb25mLiBEdXJpbmcgdGhlIGJ1aWxkaW5nIHByb2Nlc3MsIEkgcmVjZWl2ZSBjb25zdGFu
dGx5IHRoZXNlIGtpbmQgb2Ygd2FybmluZyBtZXNzYWdlcyBhYm91dCAiaG9zdCBjb250YW1pbmF0
aW9uIjoKV0FSTklORzogbGliZ2NjLTcuMy4wLXIwIGRvX3BhY2thZ2VfcWE6IFFBIElzc3VlOiBs
aWJnY2M6IC9saWJnY2MtIGRiZy91c3Ivc3JjL2RlYnVnL2xpYmdjYy83LjMuMC1yMC9nY2MtNy4z
LjAvYnVpbGQucG93ZXJwYy1jbGVwbS1saW51eC1nbnVzcGUucG93ZXJwYy1kaXN0cm8tbGludXgt
Z251c3BlL2djYy9pbnNuLWNvbnN0YW50cy5oIGlzIG93bmVkIGJ5IHVpZCAxMDAyLCB3aGljaCBp
cyB0aGUgc2FtZSBhcyB0aGUgdXNlciBydW5uaW5nIGJpdGJha2UuIFRoaXMgbWF5IGJlIGR1ZSB0
byBob3N0IGNvbnRhbWluYXRpb24gW2hvc3QtdXNlci1jb250YW1pbmF0ZWRdCgpXaGVuIGl0IGhh
cyBmaW5pc2hlZCwgSSBjaGVjayBteSByb290ZnMgb3IgcGFja2FnZXMnIGltYWdlIGZvbGRlciBh
bmQgcGVybWlzc2lvbnMgYXJlIGFsd2F5cyBzZXQgZXhhY3RseSBlcXVhbCBhcyB0aGUgdXNlciBy
dW5uaW5nIGJpdGJha2UuIFdoYXQgaXMgZ29pbmcgb24/IEhhdmUgSSBtaXNzZWQgc29tZXRoaW5n
PyBXaHkgbXkgZnMtcGVybXMudHh0IGlzIGlnbm9yZWQ/IEkgZGVidWdnZWQgcGFja2FnZS5iYmNs
YXNzIGFuZCBwYXJhbWV0ZXJzIGFyZSBwYXJzZWQgT0suLi4KCkkgaGF2ZSBhbHNvIHRyaWVkIHRv
IGRlY2xhcmUgTERfUFJFTE9BRCB2YXJpYWJsZSwgcG9pbnRpbmcgZGlyZWN0bHkgdG8gbXkgaG9z
dCBsaWJwc2V1ZG8uc28sIGJ1dCB0aGUgcmVzdWx0IGlzIHRoZSBzYW1lOgpMRF9QUkVMT0FEID0g
Ii91c3IvbGliL3g4Nl82NC1saW51eC9wc2V1ZG8vbGlicHNldWRvLnNvIgoKTERfUFJFRklYID0g
Ii91c3IvIgoKU2hvdWxkIEkgY2FsbCBmYWtlcm9vdCBzb21ld2hlcmUgaW4gdGhlIG1pZGRsZSBv
ZiB0aGUgcHJvY2Vzcz8KSXQgbG9va3MgbGlrZSBhbiBlYXN5IHByb2Nlc3MsIHJlYWRpbmcgWW9j
dG8ncyBtYW51YWwgYnV0IEkgdGhpbmsgSSBoYXZlIGZvcmdvdHRlbiBzb21ldGhpbmcuLi4gSSBo
b3BlIHNvbWVvbmUgaGFzIGhhZCB0aGUgc2FtZSBmYWlsdXJlLgoKVGhhbmsgeW91IQpCZXN0IFJl
Z2FyZHMsCk1hcmlv


--b1_448877305a3d4f9fb6e890da41e9ee11
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdj5IZWxsbyBldmVyeW9uZSwmbmJzcDs8YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5J
IGFtIHRyeWluZyB0byB1c2UgcHNldWRvIGR1ZSB0byBJIG5lZWQgdG8gc2V0IG15IGVudGlyZSBy
b290ZnMuIEkgd291bGQgbGlrZSB0byBhc2sgeW91IHNvbWUgcXVlc3Rpb25zIGFib3V0IGhvdyB0
byB1c2UgaXQsIGNvbnNpZGVyaW5nIHRoYXQgaXQgZG9lcyBub3Qgc2VlbSB0byB3b3JrLiBJIGFt
IGdvaW5nIHRvIGV4cGxhaW4gdGhlIHByb2Nlc3MgSSBoYXZlIGZvbGxvd2VkOiZuYnNwOzxicj48
L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkkgZW5hYmxlZCBQU0VVRE9fRElTQUJMRUQgYW5kIFBT
RVVET19QUkVGSVggYXQgbWV0YS9jb25mL2JpdGJha2UuY29uZjombmJzcDs8aT4mbmJzcDs8L2k+
PGJyPjwvZGl2PjxkaXY+PGk+ZXhwb3J0IFBTRVVET19ESVNBQkxFRCA9ICIwIjwvaT48aT48YnI+
PC9pPjwvZGl2PjxkaXY+PGk+ZXhwb3J0IFBTRVVET19QUkVGSVggPSAiJHtTVEFHSU5HX0RJUl9O
QVRJVkV9JHtwcmVmaXhfbmF0aXZlfSI8L2k+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+
QWxzbywgRklMRVNZU1RFTV9QRVJNU19UQUJMRSB2YXJpYWJsZSBpcyBwb2ludGluZyB0byBteSBj
dXN0b20gZnMtcGVybXMtY2xlLnR4dC4gSXQgaXMgZGVjbGFyZWQgYXQgYnVpbGQvY29uZi9sb2Nh
bC5jb25mLiBEdXJpbmcgdGhlIGJ1aWxkaW5nIHByb2Nlc3MsIEkgcmVjZWl2ZSBjb25zdGFudGx5
IHRoZXNlIGtpbmQgb2Ygd2FybmluZyBtZXNzYWdlcyBhYm91dCAiaG9zdCBjb250YW1pbmF0aW9u
Ijo8YnI+PC9kaXY+PGRpdj48aT5XQVJOSU5HOiBsaWJnY2MtNy4zLjAtcjAgZG9fcGFja2FnZV9x
YTogUUEgSXNzdWU6IGxpYmdjYzogL2xpYmdjYy0gZGJnL3Vzci9zcmMvZGVidWcvbGliZ2NjLzcu
My4wLXIwL2djYy03LjMuMC9idWlsZC5wb3dlcnBjLWNsZXBtLWxpbnV4LWdudXNwZS5wb3dlcnBj
LWRpc3Ryby1saW51eC1nbnVzcGUvZ2NjL2luc24tY29uc3RhbnRzLmggaXMgb3duZWQgYnkgdWlk
IDEwMDIsIHdoaWNoIGlzIHRoZSBzYW1lIGFzIHRoZSB1c2VyIHJ1bm5pbmcgYml0YmFrZS4gVGhp
cyBtYXkgYmUgZHVlIHRvIGhvc3QgY29udGFtaW5hdGlvbiBbaG9zdC11c2VyLWNvbnRhbWluYXRl
ZF08L2k+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+V2hlbiBpdCBoYXMgZmluaXNoZWQs
IEkgY2hlY2sgbXkgcm9vdGZzIG9yIHBhY2thZ2VzJyBpbWFnZSBmb2xkZXIgYW5kIHBlcm1pc3Np
b25zIGFyZSBhbHdheXMgc2V0IGV4YWN0bHkgZXF1YWwgYXMgdGhlIHVzZXIgcnVubmluZyBiaXRi
YWtlLiBXaGF0IGlzIGdvaW5nIG9uPyBIYXZlIEkgbWlzc2VkIHNvbWV0aGluZz8gV2h5IG15IGZz
LXBlcm1zLnR4dCBpcyBpZ25vcmVkPyBJIGRlYnVnZ2VkIHBhY2thZ2UuYmJjbGFzcyBhbmQgcGFy
YW1ldGVycyBhcmUgcGFyc2VkIE9LLi4uPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+SSBo
YXZlIGFsc28gdHJpZWQgdG8gZGVjbGFyZSBMRF9QUkVMT0FEIHZhcmlhYmxlLCBwb2ludGluZyBk
aXJlY3RseSB0byBteSBob3N0IGxpYnBzZXVkby5zbywgYnV0IHRoZSByZXN1bHQgaXMgdGhlIHNh
bWU6Jm5ic3A7PGJyPjwvZGl2PjxkaXY+PGk+TERfUFJFTE9BRCA9ICIvdXNyL2xpYi94ODZfNjQt
bGludXgvcHNldWRvL2xpYnBzZXVkby5zbyI8L2k+PGk+PGJyPjwvaT48L2Rpdj48ZGl2PjxpPkxE
X1BSRUZJWCA9ICIvdXNyLyI8L2k+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+U2hvdWxk
IEkgY2FsbCBmYWtlcm9vdCBzb21ld2hlcmUgaW4gdGhlIG1pZGRsZSBvZiB0aGUgcHJvY2Vzcz88
L2Rpdj48ZGl2Pkl0IGxvb2tzIGxpa2UgYW4gZWFzeSBwcm9jZXNzLCByZWFkaW5nIFlvY3RvJ3Mg
bWFudWFsIGJ1dCBJIHRoaW5rIEkgaGF2ZSBmb3Jnb3R0ZW4gc29tZXRoaW5nLi4uIEkgaG9wZSBz
b21lb25lIGhhcyBoYWQgdGhlIHNhbWUgZmFpbHVyZS48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+
PGRpdj5UaGFuayB5b3UhPC9kaXY+PGRpdj5CZXN0IFJlZ2FyZHMsPGJyPjwvZGl2PjxkaXY+TWFy
aW88YnI+PC9kaXY+



--b1_448877305a3d4f9fb6e890da41e9ee11--
