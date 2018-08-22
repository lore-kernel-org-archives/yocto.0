Return-Path: <lbxhust@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5BF8E009AA; Tue, 21 Aug 2018 21:40:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lbxhust[at]163.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [220.181.13.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Aug 2018 21:40:02 PDT
Received: from m13-55.163.com (m13-55.163.com [220.181.13.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA9A7E0095C
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 21:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=TDhBy
	K5Q/bLp6TMWubPzeQxs/4lFhRZ1Ruj74sXx8HQ=; b=KhaYu3ayXOZNcYP6V2LpU
	csiLUYp7+MgUSA5A/KeEa+takJMOETB12X+VGDnE/r9Nv8LQgn6cPgn1KEeq1xAo
	kdC8OFxzIhLwBLTTyVdhtw41YoxP+InFVrx2FyReCDvVrX+VVgcmjLuSdDgnK+F+
	jaHXTazuzj7YcMdj79jwSI=
Received: from lbxhust$163.com ( [122.13.158.26] ) by ajax-webmail-wmsvr55
	(Coremail) ; Wed, 22 Aug 2018 12:24:50 +0800 (CST)
X-Originating-IP: [122.13.158.26]
Date: Wed, 22 Aug 2018 12:24:50 +0800 (CST)
From: benxi  <lbxhust@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
X-CM-CTRLDATA: gJqU6GZvb3Rlcl9odG09MjM2Njo1Ng==
MIME-Version: 1.0
Message-ID: <32f124db.694c.1655fe0c5fe.Coremail.lbxhust@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: N8GowAB3ZMOS5Xxb6n2AAA--.64284W
X-CM-SenderInfo: xoe0x3lvw6il2tof0z/xtbBLRKq5FO-759ZtgAAsC
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Id "s0" respawning too fast on Raspberry pi3
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
X-List-Received-Date: Wed, 22 Aug 2018 04:40:06 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_100887_1519967225.1534911890942"

------=_Part_100887_1519967225.1534911890942
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

------=_Part_100887_1519967225.1534911890942
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9ImxpbmUtaGVpZ2h0OjEuNztjb2xvcjojMDAw
MDAwO2ZvbnQtc2l6ZToxNHB4O2ZvbnQtZmFtaWx5OkFyaWFsIj48ZGl2PkhlbGxvIEV2ZXJ5b25l
LDwvZGl2PjxkaXY+Jm5ic3A7ICZuYnNwOyBJIGJ1aWxkIGEgcnBpLWh3dXAtaW1hZ2UgYW5kIHJ1
biBpdCBvbiBteSByYXNwYmVycnkgcGkzKE1vZGVsIEIgVjEuMikuIEFmdGVyIHRoZSBzeXN0ZW0g
Ym9vdHMgdXAsIEkga2VlcCBzZWVpbmcgc3VjaCBtZXNzYWdlOiZuYnNwOzwvZGl2PjxkaXYgc3R5
bGU9ImJveC1zaXppbmc6IGJvcmRlci1ib3g7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRv
bTogMTZweDsgY29sb3I6IHJnYigzNiwgNDEsIDQ2KTsgZm9udC1mYW1pbHk6IC1hcHBsZS1zeXN0
ZW0sIHN5c3RlbS11aSwgJnF1b3Q7U2Vnb2UgVUkmcXVvdDssIEhlbHZldGljYSwgQXJpYWwsIHNh
bnMtc2VyaWYsICZxdW90O0FwcGxlIENvbG9yIEVtb2ppJnF1b3Q7LCAmcXVvdDtTZWdvZSBVSSBF
bW9qaSZxdW90OywgJnF1b3Q7U2Vnb2UgVUkgU3ltYm9sJnF1b3Q7OyI+Jm5ic3A7ICZuYnNwOyZu
YnNwO0lOSVQ6IElkICJTMCIgcmVzcGF3bmluZyB0b28gZmFzdDogZGlzYWJsZWQgZm9yIDUgbWlu
dXRlcy48L2Rpdj48ZGl2IHN0eWxlPSJib3gtc2l6aW5nOiBib3JkZXItYm94OyBtYXJnaW4tdG9w
OiAwcHg7IG1hcmdpbi1ib3R0b206IDE2cHg7IGNvbG9yOiByZ2IoMzYsIDQxLCA0Nik7IGZvbnQt
ZmFtaWx5OiAtYXBwbGUtc3lzdGVtLCBzeXN0ZW0tdWksICZxdW90O1NlZ29lIFVJJnF1b3Q7LCBI
ZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmLCAmcXVvdDtBcHBsZSBDb2xvciBFbW9qaSZxdW90
OywgJnF1b3Q7U2Vnb2UgVUkgRW1vamkmcXVvdDssICZxdW90O1NlZ29lIFVJIFN5bWJvbCZxdW90
OzsiPiZuYnNwOyAmbmJzcDsgSSBub3RpY2UgdGhhdCB5b2N0byBhZGRzIHRoZSBmb2xsb3dpbmcg
bGluZSB0byAvZXRjL2luaXR0YWIgd2hlbiBpbnN0YWxsIHN5c3Zpbml0LCBzaW5jZSBTZXJpYWxf
Q29uc29sZSB3YXMgc2V0IGluIHJhc3BiZXJyeXBpMy02NC5jb25mOjwvZGl2PjxkaXYgc3R5bGU9
ImJveC1zaXppbmc6IGJvcmRlci1ib3g7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTog
MTZweDsgY29sb3I6IHJnYigzNiwgNDEsIDQ2KTsgZm9udC1mYW1pbHk6IC1hcHBsZS1zeXN0ZW0s
IHN5c3RlbS11aSwgJnF1b3Q7U2Vnb2UgVUkmcXVvdDssIEhlbHZldGljYSwgQXJpYWwsIHNhbnMt
c2VyaWYsICZxdW90O0FwcGxlIENvbG9yIEVtb2ppJnF1b3Q7LCAmcXVvdDtTZWdvZSBVSSBFbW9q
aSZxdW90OywgJnF1b3Q7U2Vnb2UgVUkgU3ltYm9sJnF1b3Q7OyI+Jm5ic3A7ICZuYnNwOyBTMDox
MjM0NTpyZXNwYXduOi9iaW4vc3RhcnRfZ2V0dHkgMTE1MjAwIHR0eVMwIHZ0MTAyPC9kaXY+PGRp
diBzdHlsZT0iYm94LXNpemluZzogYm9yZGVyLWJveDsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4t
Ym90dG9tOiAxNnB4OyBjb2xvcjogcmdiKDM2LCA0MSwgNDYpOyBmb250LWZhbWlseTogLWFwcGxl
LXN5c3RlbSwgc3lzdGVtLXVpLCAmcXVvdDtTZWdvZSBVSSZxdW90OywgSGVsdmV0aWNhLCBBcmlh
bCwgc2Fucy1zZXJpZiwgJnF1b3Q7QXBwbGUgQ29sb3IgRW1vamkmcXVvdDssICZxdW90O1NlZ29l
IFVJIEVtb2ppJnF1b3Q7LCAmcXVvdDtTZWdvZSBVSSBTeW1ib2wmcXVvdDs7Ij4mbmJzcDsgJm5i
c3A7SSB0cnkgdG8gYWRkIEVOQUJMRV9VQVJUID0gIjEiIGluIGxvY2FsLmNvbmYgYnV0IHRoZSBt
ZXNzYWdlIGtlZXBzIGNvbWluZy4gVGhlIG1lc3NhZ2UgY2FuIGJlIGVsaW1pbmF0ZWQgYnkgY29t
bWVudGluZyBvdXQgdGhlIGNvcnJlc3BvbmRpbmcgbGluZSBpbiAvZXRjL2luaXR0YWIuPC9kaXY+
PGRpdiBzdHlsZT0iYm94LXNpemluZzogYm9yZGVyLWJveDsgbWFyZ2luLXRvcDogMHB4OyBtYXJn
aW4tYm90dG9tOiAxNnB4OyBjb2xvcjogcmdiKDM2LCA0MSwgNDYpOyBmb250LWZhbWlseTogLWFw
cGxlLXN5c3RlbSwgc3lzdGVtLXVpLCAmcXVvdDtTZWdvZSBVSSZxdW90OywgSGVsdmV0aWNhLCBB
cmlhbCwgc2Fucy1zZXJpZiwgJnF1b3Q7QXBwbGUgQ29sb3IgRW1vamkmcXVvdDssICZxdW90O1Nl
Z29lIFVJIEVtb2ppJnF1b3Q7LCAmcXVvdDtTZWdvZSBVSSBTeW1ib2wmcXVvdDs7Ij4mbmJzcDsg
Jm5ic3A7U28sIGlzIHRoaXMgYSBidWcgb2YgbWV0YS1yYXNwYmVycnlwaT8gSXMgdGhlcmUgYW55
d2F5IHRvIGZpeCBpdCB3aXRob3V0IG1vZGlmeWluZyBzeXN2aW5pdCdzIHJlY2lwZXMgYW5kIC9l
dGMvaW5pdHRhYj88L2Rpdj48L2Rpdj48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJuZXRlYXNl
Zm9vdGVyIj48cD4mbmJzcDs8L3A+PC9zcGFuPg==

------=_Part_100887_1519967225.1534911890942--
