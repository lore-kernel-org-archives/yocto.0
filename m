Return-Path: <w@tolkien.email>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C366AE00D44; Tue, 28 May 2019 22:55:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_BASE64_BLANKS,
	RCVD_IN_DNSWL_LOW, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [185.70.40.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 599 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 May 2019 22:55:37 PDT
Received: from mail-40132.protonmail.ch (mail-40132.protonmail.ch
	[185.70.40.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 483EAE00D42
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 22:55:37 -0700 (PDT)
Date: Wed, 29 May 2019 05:39:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tolkien.email;
	s=protonmail; t=1559108391;
	bh=D4FUMq2f+4K5y07A4Sf6s8yh4WXFHuhjdS4ZslZQvSs=;
	h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
	b=cfP1x8P98lBBBj4GzZ0Fy9x5MtkTIAeK7XWfawbJRT8X+2n467OU/rN3Qd5T4ar0e
	eBGMdn4EIl1S2Uy11A+s/AmSqa30SHi+xPcFlqnQ7Fsccoq9oCoUl87YUpd+kQqy3/
	jo6DlaC+barb0yRS4Vl8XYhxD1g8lNTIakagfzLo=
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Wolfgang Tolkien <w@tolkien.email>
Message-ID: <DFPOuM_x6A-_tMJNQT0POpKQ8-xtXAeM-DRSWFmkUQVMSS_aeQgWvUiU00Rg_Q6WjYSLZzQHN1A5GUUf0y0nCQ9zMNHl_TOiaF24Ai_aR3A=@tolkien.email>
Feedback-ID: ViJOJooDpCW9ZJDpR0_AgFeSbLYnIh1UKu2DLqxShSUVxesnK5QhckaNHn9X6OllezKyU4UDbY3NFvyzyU-gCg==:Ext:ProtonMail
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 31 May 2019 09:25:16 -0700
Subject: Yocto 2.7: basehash / taskhash mismatch when disabling uninative
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Wolfgang Tolkien <w@tolkien.email>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 May 2019 05:55:39 -0000
Content-Type: multipart/alternative;
	boundary="b1_06cf76fecd046a51cd0cbfe5e0d355ac"

--b1_06cf76fecd046a51cd0cbfe5e0d355ac
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGkgdGhlcmUsCgpJJ20gdXBncmFkaW5nIGZyb20gWW9jdG8gMi41ICB0byAyLjcuIEkgaGF2ZSBh
IHJlY2lwZSB0aGF0IChmb3IgbGVnYWN5IHJlYXNvbi0pIGJ1aWxkcyBhIDMyYml0ICItbmF0aXZl
IiBleGVjdXRhYmxlLiBJIGFtIGRpc2FibGluZyB1bmluYXRpdmUgYnkgc2V0dGluZwoKU1NUQVRF
UE9TVFVOUEFDS0ZVTkNTX3JlbW92ZSA9ICJ1bmluYXRpdmVfY2hhbmdlaW50ZXJwIgoKVGhpcyB3
b3JrZWQgd2VsbCB3aXRoIFlvY3RvIDIuNSwgYnV0IHdpdGggWW9jdG8gMi43IEknbSBnZXR0aW5n
CgpFUlJPUjogV2hlbiByZXBhcnNpbmcgdmlydHVhbDpuYXRpdmU6bXktMzJiaXQtcmVjaXBlXzEu
MC5iYi5kb19wb3B1bGF0ZV9zeXNyb290LCB0aGUgYmFzZWhhc2ggdmFsdWUgY2hhbmdlZCBmcm9t
IDxiZWZvcmU+IHRvIDxhZnRlcj4KCkVSUk9SOiBXaGVuIHJlcGFyc2luZyB2aXJ0dWFsOm5hdGl2
ZTpteS0zMmJpdC1yZWNpcGVfMS4wLmJiLmRvX3BvcHVsYXRlX2xpYywgdGhlIGJhc2VoYXNoIHZh
bHVlIGNoYW5nZWQgZnJvbSA8YmVmb3JlPiB0byA8YWZ0ZXI+CgpFUlJPUjogbXktMzJiaXQtcmVj
aXBlLW5hdGl2ZS0xLjAtcjAgZG9fcG9wdWxhdGVfc3lzcm9vdDogVGFza2hhc2ggbWlzbWF0Y2gg
PGhhc2gxPiB2ZXJzdXMgPGhhc2gyPiBmb3IgdmlydHVhbDpuYXRpdmU6bXktMzJiaXQtcmVjaXBl
XzEuMC5iYi5kb19wb3B1bGF0ZV9zeXNyb290CgpbLi4uIGxvdHMgb2YgdGhlc2UuLi5dCgpBbnkg
cG9pbnRlcnMgd291bGQgYmUgYXBwcmVjaWF0ZWQhCgpUaGFua3MsCgpXb2xmZ2FuZw==


--b1_06cf76fecd046a51cd0cbfe5e0d355ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IG1lbmxvLCBjb25zb2xhcywgY291cmllciBu
ZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJpZjsiPkhpIHRoZXJlLDwvc3Bhbj48c3BhbiBzdHlsZT0i
Zm9udC1mYW1pbHk6IG1lbmxvLCBjb25zb2xhcywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fu
cy1zZXJpZjsiPjxicj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6
IG1lbmxvLCBjb25zb2xhcywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJpZjsiPjxi
cj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IG1lbmxvLCBjb25z
b2xhcywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJpZjsiPkknbSB1cGdyYWRpbmcg
ZnJvbSBZb2N0byAyLjUmbmJzcDsgdG8gMi43LiBJIGhhdmUgYSByZWNpcGUgdGhhdCAoZm9yIGxl
Z2FjeSByZWFzb24tKSBidWlsZHMgYSAzMmJpdCAiLW5hdGl2ZSIgZXhlY3V0YWJsZS4gSSBhbSBk
aXNhYmxpbmcgdW5pbmF0aXZlIGJ5IHNldHRpbmc8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtZmFt
aWx5OiBtZW5sbywgY29uc29sYXMsIGNvdXJpZXIgbmV3LCBtb25vc3BhY2UsIHNhbnMtc2VyaWY7
Ij48YnI+PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBtZW5sbywg
Y29uc29sYXMsIGNvdXJpZXIgbmV3LCBtb25vc3BhY2UsIHNhbnMtc2VyaWY7Ij48YnI+PC9zcGFu
PjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBtZW5sbywgY29uc29sYXMsIGNv
dXJpZXIgbmV3LCBtb25vc3BhY2UsIHNhbnMtc2VyaWY7Ij5TU1RBVEVQT1NUVU5QQUNLRlVOQ1Nf
cmVtb3ZlID0gInVuaW5hdGl2ZV9jaGFuZ2VpbnRlcnAiPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250
LWZhbWlseTogbWVubG8sIGNvbnNvbGFzLCBjb3VyaWVyIG5ldywgbW9ub3NwYWNlLCBzYW5zLXNl
cmlmOyI+PGJyPjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogbWVu
bG8sIGNvbnNvbGFzLCBjb3VyaWVyIG5ldywgbW9ub3NwYWNlLCBzYW5zLXNlcmlmOyI+PGJyPjwv
c3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogbWVubG8sIGNvbnNvbGFz
LCBjb3VyaWVyIG5ldywgbW9ub3NwYWNlLCBzYW5zLXNlcmlmOyI+VGhpcyB3b3JrZWQgd2VsbCB3
aXRoIFlvY3RvIDIuNSwgYnV0IHdpdGggWW9jdG8gMi43IEknbSBnZXR0aW5nIDwvc3Bhbj48c3Bh
biBzdHlsZT0iZm9udC1mYW1pbHk6IG1lbmxvLCBjb25zb2xhcywgY291cmllciBuZXcsIG1vbm9z
cGFjZSwgc2Fucy1zZXJpZjsiPjxicj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9u
dC1mYW1pbHk6IG1lbmxvLCBjb25zb2xhcywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fucy1z
ZXJpZjsiPjxicj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IG1l
bmxvLCBjb25zb2xhcywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJpZjsiPkVSUk9S
OiBXaGVuIHJlcGFyc2luZyB2aXJ0dWFsOm5hdGl2ZTpteS0zMmJpdC1yZWNpcGVfMS4wLmJiLmRv
X3BvcHVsYXRlX3N5c3Jvb3QsIHRoZSBiYXNlaGFzaCB2YWx1ZSBjaGFuZ2VkIGZyb20gJmx0O2Jl
Zm9yZSZndDsgdG8gJmx0O2FmdGVyJmd0Ozwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6
IG1lbmxvLCBjb25zb2xhcywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJpZjsiPjxi
cj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IG1lbmxvLCBjb25z
b2xhcywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJpZjsiPkVSUk9SOiBXaGVuIHJl
cGFyc2luZyB2aXJ0dWFsOm5hdGl2ZTpteS0zMmJpdC1yZWNpcGVfMS4wLmJiLmRvX3BvcHVsYXRl
X2xpYywgdGhlIGJhc2VoYXNoIHZhbHVlIGNoYW5nZWQgZnJvbSAmbHQ7YmVmb3JlJmd0OyB0byAm
bHQ7YWZ0ZXImZ3Q7PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogbWVubG8sIGNvbnNv
bGFzLCBjb3VyaWVyIG5ldywgbW9ub3NwYWNlLCBzYW5zLXNlcmlmOyI+PGJyPjwvc3Bhbj48L2Rp
dj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogbWVubG8sIGNvbnNvbGFzLCBjb3VyaWVy
IG5ldywgbW9ub3NwYWNlLCBzYW5zLXNlcmlmOyI+RVJST1I6IG15LTMyYml0LXJlY2lwZS1uYXRp
dmUtMS4wLXIwIGRvX3BvcHVsYXRlX3N5c3Jvb3Q6IFRhc2toYXNoIG1pc21hdGNoICZsdDtoYXNo
MSZndDsgdmVyc3VzICZsdDtoYXNoMiZndDsgZm9yIHZpcnR1YWw6bmF0aXZlOm15LTMyYml0LXJl
Y2lwZV8xLjAuYmIuZG9fcG9wdWxhdGVfc3lzcm9vdDwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1m
YW1pbHk6IG1lbmxvLCBjb25zb2xhcywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJp
ZjsiPjxicj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IG1lbmxv
LCBjb25zb2xhcywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJpZjsiPlsuLi4gbG90
cyBvZiB0aGVzZS4uLl08L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBtZW5sbywgY29u
c29sYXMsIGNvdXJpZXIgbmV3LCBtb25vc3BhY2UsIHNhbnMtc2VyaWY7Ij48YnI+PC9zcGFuPjwv
ZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBtZW5sbywgY29uc29sYXMsIGNvdXJp
ZXIgbmV3LCBtb25vc3BhY2UsIHNhbnMtc2VyaWY7Ij48YnI+PC9zcGFuPjwvZGl2PjxkaXY+PHNw
YW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBtZW5sbywgY29uc29sYXMsIGNvdXJpZXIgbmV3LCBtb25v
c3BhY2UsIHNhbnMtc2VyaWY7Ij5BbnkgcG9pbnRlcnMgd291bGQgYmUgYXBwcmVjaWF0ZWQhPC9z
cGFuPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogbWVubG8sIGNvbnNvbGFzLCBjb3VyaWVyIG5l
dywgbW9ub3NwYWNlLCBzYW5zLXNlcmlmOyI+PGJyPjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0
eWxlPSJmb250LWZhbWlseTogbWVubG8sIGNvbnNvbGFzLCBjb3VyaWVyIG5ldywgbW9ub3NwYWNl
LCBzYW5zLXNlcmlmOyI+PGJyPjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LWZh
bWlseTogbWVubG8sIGNvbnNvbGFzLCBjb3VyaWVyIG5ldywgbW9ub3NwYWNlLCBzYW5zLXNlcmlm
OyI+VGhhbmtzLDwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IG1lbmxvLCBjb25zb2xh
cywgY291cmllciBuZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJpZjsiPjxicj48L3NwYW4+PC9kaXY+
PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IG1lbmxvLCBjb25zb2xhcywgY291cmllciBu
ZXcsIG1vbm9zcGFjZSwgc2Fucy1zZXJpZjsiPldvbGZnYW5nPC9zcGFuPjxzcGFuIHN0eWxlPSJm
b250LWZhbWlseTogbWVubG8sIGNvbnNvbGFzLCBjb3VyaWVyIG5ldywgbW9ub3NwYWNlLCBzYW5z
LXNlcmlmOyI+PGJyPjwvc3Bhbj48L2Rpdj48ZGl2Pjxicj48L2Rpdj4=



--b1_06cf76fecd046a51cd0cbfe5e0d355ac--
