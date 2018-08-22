Return-Path: <lbxhust@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8BC2E009AA; Tue, 21 Aug 2018 22:26:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [220.181.13.55 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lbxhust[at]163.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from m13-55.163.com (m13-55.163.com [220.181.13.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D56DE0095C
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 22:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=cQluC
	SBUc3xWUczTUCYaRb7NTO3YeXZBEpBv6C2ZXZg=; b=oO9ef5Q/yTYLh5G2BU3D4
	StTie3OfDcqzxlylX1sFNe7HhnJaK+jl3gRWCd3qPax5P8igsvLxPTb7Y+zHXC8V
	GOXTCBwsWXH9YraDs5uC9C5JtrQCAil2Al5Eo4j+HtsA9TDavpQiJgoQNXkJ8vMN
	lvADjHeFNY275wxzKlYdH8=
Received: from lbxhust$163.com ( [122.13.158.26] ) by ajax-webmail-wmsvr55
	(Coremail) ; Wed, 22 Aug 2018 13:26:55 +0800 (CST)
X-Originating-IP: [122.13.158.26]
Date: Wed, 22 Aug 2018 13:26:55 +0800 (CST)
From: benxi <lbxhust@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
X-CM-CTRLDATA: yIiY02Zvb3Rlcl9odG09MjI4NDo1Ng==
MIME-Version: 1.0
Message-ID: <138f4fa2.7168.1656019996d.Coremail.lbxhust@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: N8GowAB3Y8If9Hxb84mAAA--.54193W
X-CM-SenderInfo: xoe0x3lvw6il2tof0z/xtbB0Auq5FUME3+6aAABsz
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: [meta-raspberrypi] Id "s0" respawning too fast on Raspberry pi3
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
X-List-Received-Date: Wed, 22 Aug 2018 05:26:58 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_108604_1524393567.1534915615085"

------=_Part_108604_1524393567.1534915615085
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGVsbG8gRXZlcnlvbmUsCiAgICBJIGJ1aWxkIGEgcnBpLWh3dXAtaW1hZ2UgYW5kIHJ1biBpdCBv
biBteSByYXNwYmVycnkgcGkzKE1vZGVsIEIgVjEuMikuIEFmdGVyIHRoZSBzeXN0ZW0gYm9vdHMg
dXAsIEkga2VlcCBzZWVpbmcgc3VjaCBtZXNzYWdlOiAKICAgIElOSVQ6IElkICJTMCIgcmVzcGF3
bmluZyB0b28gZmFzdDogZGlzYWJsZWQgZm9yIDUgbWludXRlcy4KICAgIEkgbm90aWNlIHRoYXQg
eW9jdG8gYWRkcyB0aGUgZm9sbG93aW5nIGxpbmUgdG8gL2V0Yy9pbml0dGFiIHdoZW4gaW5zdGFs
bCBzeXN2aW5pdCwgc2luY2UgU2VyaWFsX0NvbnNvbGUgd2FzIHNldCBpbiByYXNwYmVycnlwaTMt
NjQuY29uZjoKICAgIFMwOjEyMzQ1OnJlc3Bhd246L2Jpbi9zdGFydF9nZXR0eSAxMTUyMDAgdHR5
UzAgdnQxMDIKICAgSSB0cnkgdG8gYWRkIEVOQUJMRV9VQVJUID0gIjEiIGluIGxvY2FsLmNvbmYg
YnV0IHRoZSBtZXNzYWdlIGtlZXBzIGNvbWluZy4gVGhlIG1lc3NhZ2UgY2FuIGJlIGVsaW1pbmF0
ZWQgYnkgY29tbWVudGluZyBvdXQgdGhlIGNvcnJlc3BvbmRpbmcgbGluZSBpbiAvZXRjL2luaXR0
YWIuCiAgIFNvLCBpcyB0aGlzIGEgYnVnIG9mIG1ldGEtcmFzcGJlcnJ5cGk/IElzIHRoZXJlIGFu
eXdheSB0byBmaXggaXQgd2l0aG91dCBtb2RpZnlpbmcgc3lzdmluaXQncyByZWNpcGVzIGFuZCAv
ZXRjL2luaXR0YWI/

------=_Part_108604_1524393567.1534915615085
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+SGVsbG8gRXZlcnlvbmUsPC9kaXY+PGRpdj4mbmJzcDsg
Jm5ic3A7IEkgYnVpbGQgYSBycGktaHd1cC1pbWFnZSBhbmQgcnVuIGl0IG9uIG15IHJhc3BiZXJy
eSBwaTMoTW9kZWwgQiBWMS4yKS4gQWZ0ZXIgdGhlIHN5c3RlbSBib290cyB1cCwgSSBrZWVwIHNl
ZWluZyBzdWNoIG1lc3NhZ2U6Jm5ic3A7PC9kaXY+PGRpdiBzdHlsZT0iYm94LXNpemluZzogYm9y
ZGVyLWJveDsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4tYm90dG9tOiAxNnB4OyBjb2xvcjogcmdi
KDM2LCA0MSwgNDYpOyBmb250LWZhbWlseTogLWFwcGxlLXN5c3RlbSwgc3lzdGVtLXVpLCAmcXVv
dDtTZWdvZSBVSSZxdW90OywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJnF1b3Q7QXBw
bGUgQ29sb3IgRW1vamkmcXVvdDssICZxdW90O1NlZ29lIFVJIEVtb2ppJnF1b3Q7LCAmcXVvdDtT
ZWdvZSBVSSBTeW1ib2wmcXVvdDs7Ij4mbmJzcDsgJm5ic3A7Jm5ic3A7SU5JVDogSWQgIlMwIiBy
ZXNwYXduaW5nIHRvbyBmYXN0OiBkaXNhYmxlZCBmb3IgNSBtaW51dGVzLjwvZGl2PjxkaXYgc3R5
bGU9ImJveC1zaXppbmc6IGJvcmRlci1ib3g7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRv
bTogMTZweDsgY29sb3I6IHJnYigzNiwgNDEsIDQ2KTsgZm9udC1mYW1pbHk6IC1hcHBsZS1zeXN0
ZW0sIHN5c3RlbS11aSwgJnF1b3Q7U2Vnb2UgVUkmcXVvdDssIEhlbHZldGljYSwgQXJpYWwsIHNh
bnMtc2VyaWYsICZxdW90O0FwcGxlIENvbG9yIEVtb2ppJnF1b3Q7LCAmcXVvdDtTZWdvZSBVSSBF
bW9qaSZxdW90OywgJnF1b3Q7U2Vnb2UgVUkgU3ltYm9sJnF1b3Q7OyI+Jm5ic3A7ICZuYnNwOyBJ
IG5vdGljZSB0aGF0IHlvY3RvIGFkZHMgdGhlIGZvbGxvd2luZyBsaW5lIHRvIC9ldGMvaW5pdHRh
YiB3aGVuIGluc3RhbGwgc3lzdmluaXQsIHNpbmNlIFNlcmlhbF9Db25zb2xlIHdhcyBzZXQgaW4g
cmFzcGJlcnJ5cGkzLTY0LmNvbmY6PC9kaXY+PGRpdiBzdHlsZT0iYm94LXNpemluZzogYm9yZGVy
LWJveDsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4tYm90dG9tOiAxNnB4OyBjb2xvcjogcmdiKDM2
LCA0MSwgNDYpOyBmb250LWZhbWlseTogLWFwcGxlLXN5c3RlbSwgc3lzdGVtLXVpLCAmcXVvdDtT
ZWdvZSBVSSZxdW90OywgSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiwgJnF1b3Q7QXBwbGUg
Q29sb3IgRW1vamkmcXVvdDssICZxdW90O1NlZ29lIFVJIEVtb2ppJnF1b3Q7LCAmcXVvdDtTZWdv
ZSBVSSBTeW1ib2wmcXVvdDs7Ij4mbmJzcDsgJm5ic3A7IFMwOjEyMzQ1OnJlc3Bhd246L2Jpbi9z
dGFydF9nZXR0eSAxMTUyMDAgdHR5UzAgdnQxMDI8L2Rpdj48ZGl2IHN0eWxlPSJib3gtc2l6aW5n
OiBib3JkZXItYm94OyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0b206IDE2cHg7IGNvbG9y
OiByZ2IoMzYsIDQxLCA0Nik7IGZvbnQtZmFtaWx5OiAtYXBwbGUtc3lzdGVtLCBzeXN0ZW0tdWks
ICZxdW90O1NlZ29lIFVJJnF1b3Q7LCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAmcXVv
dDtBcHBsZSBDb2xvciBFbW9qaSZxdW90OywgJnF1b3Q7U2Vnb2UgVUkgRW1vamkmcXVvdDssICZx
dW90O1NlZ29lIFVJIFN5bWJvbCZxdW90OzsiPiZuYnNwOyAmbmJzcDtJIHRyeSB0byBhZGQgRU5B
QkxFX1VBUlQgPSAiMSIgaW4gbG9jYWwuY29uZiBidXQgdGhlIG1lc3NhZ2Uga2VlcHMgY29taW5n
LiBUaGUgbWVzc2FnZSBjYW4gYmUgZWxpbWluYXRlZCBieSBjb21tZW50aW5nIG91dCB0aGUgY29y
cmVzcG9uZGluZyBsaW5lIGluIC9ldGMvaW5pdHRhYi48L2Rpdj48ZGl2IHN0eWxlPSJib3gtc2l6
aW5nOiBib3JkZXItYm94OyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0b206IDE2cHg7IGNv
bG9yOiByZ2IoMzYsIDQxLCA0Nik7IGZvbnQtZmFtaWx5OiAtYXBwbGUtc3lzdGVtLCBzeXN0ZW0t
dWksICZxdW90O1NlZ29lIFVJJnF1b3Q7LCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAm
cXVvdDtBcHBsZSBDb2xvciBFbW9qaSZxdW90OywgJnF1b3Q7U2Vnb2UgVUkgRW1vamkmcXVvdDss
ICZxdW90O1NlZ29lIFVJIFN5bWJvbCZxdW90OzsiPiZuYnNwOyAmbmJzcDtTbywgaXMgdGhpcyBh
IGJ1ZyBvZiBtZXRhLXJhc3BiZXJyeXBpPyBJcyB0aGVyZSBhbnl3YXkgdG8gZml4IGl0IHdpdGhv
dXQgbW9kaWZ5aW5nIHN5c3Zpbml0J3MgcmVjaXBlcyBhbmQgL2V0Yy9pbml0dGFiPzwvZGl2Pjwv
ZGl2Pjxicj48YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vmb290ZXIiPjxwPiZuYnNwOzwvcD48L3Nw
YW4+

------=_Part_108604_1524393567.1534915615085--
