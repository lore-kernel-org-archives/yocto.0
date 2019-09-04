Return-Path: <vygu@protonmail.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DA83E00DF3; Wed,  4 Sep 2019 01:52:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vygu[at]protonmail.ch)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [185.70.40.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 358 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Sep 2019 01:52:10 PDT
Received: from mail-40130.protonmail.ch (mail-40130.protonmail.ch
	[185.70.40.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FF5AE00DE2
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 01:52:10 -0700 (PDT)
Date: Wed, 04 Sep 2019 08:46:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=default; t=1567586769;
	bh=lT1swTEWaeZPrXecUopEulC9Pn5FhRnX3lp9nzZjKnw=;
	h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
	b=J0G5GXcXGLyCvTQnDuWUTdWYQhoUsOerlh5jeBkn0GhwZgBKHYkWPbzNZnF/HLHRn
	nZUCt+lCdQDEkX8o1644s6npL9Rtuh00OwWigrEEz31ydXAxDAIgxhDFWf+eKEXTsw
	RPvvw34UecQ5xIRsz+C3tmmRo+shxiUaDabBBMt4=
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: vygu <vygu@protonmail.ch>
Message-ID: <FccdzQfHvG4ZvcaMVpyN8tzbQBVkjLqPwkEVc0rvnUUOU4LL_9R5rzs6Ap_SXPo8N4orBveg5fX-ploC3XwWtvadKbUVOKMnTY6xshfOEos=@protonmail.ch>
Feedback-ID: zBs-L8wQuKBorWEbLVdJJa3lLTcCv3Htc-27OHD_QG0eSCsj-lmyvhEbqA6BLcl_zRuO8x5lF36uIcXEqZFTgQ==:Ext:ProtonMail
MIME-Version: 1.0
Subject: perf.bb on poky master branch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: vygu <vygu@protonmail.ch>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Sep 2019 08:52:12 -0000
Content-Type: multipart/alternative;
	boundary="b1_6a52cecc603a8834efcae1dff1399e1f"

--b1_6a52cecc603a8834efcae1dff1399e1f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGVsbG8sCgpKdXN0IHRvIHNpZ25hbCB0aGVyZSBhcmUgc2V2ZXJhbCBtaXN0YWtlcyB3aXRoIHRo
ZSByZWNpcGUgInBlcmYuYmIiIGZyb20gcG9reSBvbiBtYXN0ZXIgKGN1cnJlbnRseTogZTJiZGUw
MDliMzI1YjQwNjQxNDA3ZWNmNTBmNTRlZDhjNDE3MjZkNikKCi0gSWYgIlB5dGhvbiAzIGlzIG5v
dCB5ZXQgc3VwcG9ydGVkIiBieSAicGVyZiIgc291cmNlcywgaXQgY2F1c2VzIGFuIGlzc3VlIGR1
cmluZyB0aGUgZG9fY29tcGlsZSB0YXNrCi0gVGhlIGxhc3QgImluc3RhbGwiIGluIHRoZSBkb19j
b25maWd1cmVfcHJlcGVuZCB0YXNrIGFib3V0ICJ0b29scy9pbmNsdWRlL2xpbnV4L2JpdHMuaCIg
ZG9lcyBub3Qgd29yayB3aXRoIGEgbGludXgga2VybmVsIDQuNSB0byA0LjE4IGJlY2F1c2UgdGhp
cyBmaWxlIGRvZXMgbm90IGV4aXN0ClstIFRoZSB1c2FnZSBvZiBfcHJlcGVuZCBvciBfYXBwZW5k
IGluIHRoaXMgYmIgZmlsZSBkb2VzIG5vdCBoZWxwIHRvIGNyZWF0ZSBhIGJiYXBwZW5kXQoKVnln
dQ==


--b1_6a52cecc603a8834efcae1dff1399e1f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdj5IZWxsbyw8YnI+PGJyPkp1c3QgdG8gc2lnbmFsIHRoZXJlIGFyZSBzZXZlcmFsIG1pc3Rh
a2VzIHdpdGggdGhlIHJlY2lwZSAicGVyZi5iYiIgZnJvbSBwb2t5IG9uIG1hc3RlciAoY3VycmVu
dGx5OiBlMmJkZTAwOWIzMjViNDA2NDE0MDdlY2Y1MGY1NGVkOGM0MTcyNmQ2KTxicj48YnI+LSBJ
ZiAiUHl0aG9uIDMgaXMgbm90IHlldCBzdXBwb3J0ZWQiIGJ5ICJwZXJmIiBzb3VyY2VzLCBpdCBj
YXVzZXMgYW4gaXNzdWUgZHVyaW5nIHRoZSBkb19jb21waWxlIHRhc2s8YnI+LSBUaGUgbGFzdCAi
aW5zdGFsbCIgaW4gdGhlIGRvX2NvbmZpZ3VyZV9wcmVwZW5kIHRhc2sgYWJvdXQgInRvb2xzL2lu
Y2x1ZGUvbGludXgvYml0cy5oIiBkb2VzIG5vdCB3b3JrIHdpdGggYSBsaW51eCBrZXJuZWwgNC41
IHRvIDQuMTggYmVjYXVzZSB0aGlzIGZpbGUgZG9lcyBub3QgZXhpc3Q8L2Rpdj48ZGl2PlstIFRo
ZSB1c2FnZSBvZiBfcHJlcGVuZCBvciBfYXBwZW5kIGluIHRoaXMgYmIgZmlsZSBkb2VzIG5vdCBo
ZWxwIHRvIGNyZWF0ZSBhIGJiYXBwZW5kXTxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2IGNs
YXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jayI+PGRpdiBjbGFzcz0icHJvdG9ubWFpbF9z
aWduYXR1cmVfYmxvY2stdXNlciBwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay1lbXB0eSI+PGJy
PjwvZGl2PjxkaXYgY2xhc3M9InByb3Rvbm1haWxfc2lnbmF0dXJlX2Jsb2NrLXByb3RvbiI+Vnln
dTxicj48L2Rpdj48L2Rpdj48ZGl2Pjxicj48L2Rpdj4=



--b1_6a52cecc603a8834efcae1dff1399e1f--
