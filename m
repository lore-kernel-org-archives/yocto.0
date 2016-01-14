Return-Path: <k870818319@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FEBAE00B83; Thu, 14 Jan 2016 01:59:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_50,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k870818319[at]outlook.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4905]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.90.155 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Jan 2016 01:59:07 PST
Received: from SNT004-OMC3S16.hotmail.com (snt004-omc3s16.hotmail.com
	[65.55.90.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23F2BE0090A
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 01:59:07 -0800 (PST)
Received: from SNT150-W43 ([65.55.90.136]) by SNT004-OMC3S16.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Thu, 14 Jan 2016 01:58:04 -0800
X-TMN: [EpqkVmTowZugSIZ4s4v81hh8lw27O1CI]
X-Originating-Email: [k870818319@outlook.com]
Message-ID: <SNT150-W43B1B9FC32074EB6CC85B582CC0@phx.gbl>
From: RayBloodworth <k870818319@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 14 Jan 2016 09:58:04 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 14 Jan 2016 09:58:04.0663 (UTC)
	FILETIME=[0FCC0870:01D14EB2]
Subject: How to change the order of package installation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Jan 2016 09:59:10 -0000
Content-Type: multipart/alternative;
	boundary="_3006338e-5bcd-4337-81b4-6d6c24420477_"

--_3006338e-5bcd-4337-81b4-6d6c24420477_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGksIGV2ZXJ5b25lDQogICBJJ20gdXNpbmcgdGhlIGRpenp5IGJyYW5jaCBvZiBmcmVlc2NhbGUg
eW9jdG8gcHJvamVjdCB0byBidWlsZCBpbWFnZS4gV2hlbiBkb19yb290ZnMgaXMgZG9uZSwgSSBm
b3VuZCB0aGF0IHBhY2thZ2UgImJhc2UtZmlsZXMiIHdhc24ndCB0aGUgZmlyc3Qgb3JkZXIgb2Yg
aW5zdGFsbGF0aW9uLiAgICBTaW5jZSBJIHdhbnQgZG8gc29tZSBtb2RpZnkgbGlrZSAiL2JpbiAt
PiAvdXNyL2JpbiIgaW4gImJhc2UtZmlsZXMiLCBwYWNrYWdlICJiYXNlLWZpbGVzIiBtdXN0IGJl
IHRoZSBmaXJzdCBvcmRlciBvZiBpbnN0YWxsYXRpb24uICAgQ291bGQgYW55b25lIGhlbHAgbWUg
d2l0aCB0aGlzIGlzc3VlPw0KQmVzdCByZWdhcmRzLFJheSAJCSAJICAgCQkgIA==

--_3006338e-5bcd-4337-81b4-6d6c24420477_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxzdHlsZT48IS0tDQouaG1tZXNzYWdlIFANCnsNCm1hcmdpbjowcHg7
DQpwYWRkaW5nOjBweA0KfQ0KYm9keS5obW1lc3NhZ2UNCnsNCmZvbnQtc2l6ZTogMTJwdDsNCmZv
bnQtZmFtaWx5Os6iyO3RxbraDQp9DQotLT48L3N0eWxlPjwvaGVhZD4NCjxib2R5IGNsYXNzPSdo
bW1lc3NhZ2UnPjxkaXYgZGlyPSdsdHInPkhpLCBldmVyeW9uZTxkaXY+PGJyPjwvZGl2PjxkaXY+
Jm5ic3A7ICZuYnNwO0knbSB1c2luZyB0aGUgZGl6enkgYnJhbmNoIG9mIGZyZWVzY2FsZSB5b2N0
byBwcm9qZWN0IHRvIGJ1aWxkIGltYWdlLiBXaGVuIGRvX3Jvb3RmcyBpcyBkb25lLCBJIGZvdW5k
IHRoYXQgcGFja2FnZSAiYmFzZS1maWxlcyIgd2Fzbid0IHRoZSBmaXJzdCBvcmRlciBvZiBpbnN0
YWxsYXRpb24uJm5ic3A7PC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7U2luY2UgSSB3YW50IGRvIHNv
bWUgbW9kaWZ5IGxpa2UgIi9iaW4gLSZndDsgL3Vzci9iaW4iIGluICJiYXNlLWZpbGVzIiwmbmJz
cDs8c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxMnB0OyI+cGFja2FnZSAiYmFzZS1maWxlcyI8L3Nw
YW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTJwdDsiPiZuYnNwO211c3QgYmUgdGhlIGZpcnN0
IG9yZGVyIG9mIGluc3RhbGxhdGlvbi48L3NwYW4+PC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7Q291
bGQgYW55b25lIGhlbHAgbWUgd2l0aCB0aGlzIGlzc3VlPzwvZGl2PjxkaXY+PGJyPjwvZGl2Pjxk
aXY+QmVzdCByZWdhcmRzLDwvZGl2PjxkaXY+UmF5PC9kaXY+IAkJIAkgICAJCSAgPC9kaXY+PC9i
b2R5Pg0KPC9odG1sPg==

--_3006338e-5bcd-4337-81b4-6d6c24420477_--
