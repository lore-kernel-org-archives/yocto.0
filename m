Return-Path: <ouyangxuan10@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 611B1E00E0E; Tue, 12 Nov 2019 20:21:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HEXHASH_WORD,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [220.181.13.138 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ouyangxuan10[at]163.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from m13-138.163.com (m13-138.163.com [220.181.13.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4A07E0053F
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 20:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=f4uPk
	rg2POMTtEGEr6BMT5/p0DIxjCBBVjKUXcNUv7c=; b=L52ikJlsjhJkNihxCTKN+
	XhrGFbwGNH/6BfiAFhCnf6pBoMEniBxDQ4/OIi9bU9Q8p2Qz5IDB9euyZ/W1zEto
	Vk6St3KKeF1As+JLgwefS1oKi+tiu6ayLSi2YUF+BDKCgp5vjuetPYSy050NVszI
	wmnSn3UXLrEkm9PVJ58Vag=
Received: from ouyangxuan10$163.com ( [106.120.127.15] ) by
	ajax-webmail-wmsvr138 (Coremail) ; Wed, 13 Nov 2019 12:20:57 +0800 (CST)
X-Originating-IP: [106.120.127.15]
Date: Wed, 13 Nov 2019 12:20:57 +0800 (CST)
From: www <ouyangxuan10@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
	Copyright (c) 2002-2019 www.mailtech.cn 163com
X-CM-CTRLDATA: Oct4j2Zvb3Rlcl9odG09MjY0OTo1Ng==
MIME-Version: 1.0
Message-ID: <7e909544.3fb7.16e62fe3433.Coremail.ouyangxuan10@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: isGowACnNXCphMtdIqSaAQ--.54034W
X-CM-SenderInfo: prx1t0pj0xt0irq6il2tof0z/1tbiJgts2lv2ZcoKzwACse
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Mailman-Approved-At: Mon, 18 Nov 2019 01:40:04 -0800
Subject: :how to solve the basehash value changed from 'xxx' to 'aaaa' ?
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
X-List-Received-Date: Wed, 13 Nov 2019 04:21:00 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_61753_1318469710.1573618857010"

------=_Part_61753_1318469710.1573618857010
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

RGVhciBhbGwsCgoKV2hlbiBJIG1vZGlmeSB0aGUgb3MtcmVsZWFzZSBmaWxlIGluIG15IHlvY3Rv
IHByb2plY3QsIGl0IGFwcGVhciBzb21lIGVycm9yLCBhbmQgaG93IGNhbiBJIHNvbHZlIGl0ID8g
V2hvIGNhbiBnaXZlIG1lIHNvbWUgaGVscCBvciBhZHZpY2U/IFRoYW5rIHlvdaOhCkkgY2Fycmll
ZCBvdXQgdGhlIHJlY29tbWVuZGVkIG9yZGVyIGFuZCBpdCBkaWRuJ3Qgd29yay4KCgpFUlJPUjog
b3MtcmVsZWFzZS0xLjAtcjAgZG9fY29tcGlsZTogVGFza2hhc2ggbWlzbWF0Y2ggY2UxMzNmMDQ1
ODYwOGUwM2FhNTUyMjRkZjI4MTU2ZTUyM2U1NDkwMzExNWVmYmJjZDYyOTQ2Zjg0YTg2NzIwMSB2
ZXJzdXMgNzI2OTg4MWYwZWIxNzU5ZWQ0MjBhMmRiNGMwNGZiNDc3Y2Q4YzEyODhiYzVmODJkZjVj
ODE2MWJiOTI2ZWExZiBmb3IgL2hvbWUvdGVtcC93YW5naHAvd3NwL2dpdF9zL2xvY2FsLXNvdXJj
ZS9vYm1jLXN1Z29uL2VudGl0eV9mcnV1L21ldGEvcmVjaXBlcy1jb3JlL29zLXJlbGVhc2Uvb3Mt
cmVsZWFzZS5iYi5kb19jb21waWxlCkVSUk9SOiBUYXNraGFzaCBtaXNtYXRjaCBjZTEzM2YwNDU4
NjA4ZTAzYWE1NTIyNGRmMjgxNTZlNTIzZTU0OTAzMTE1ZWZiYmNkNjI5NDZmODRhODY3MjAxIHZl
cnN1cyA3MjY5ODgxZjBlYjE3NTllZDQyMGEyZGI0YzA0ZmI0NzdjZDhjMTI4OGJjNWY4MmRmNWM4
MTYxYmI5MjZlYTFmIGZvciAvaG9tZS90ZW1wL3dhbmdocC93c3AvZ2l0X3MvbG9jYWwtc291cmNl
L29ibWMtc3Vnb24vZW50aXR5X2ZydXUvbWV0YS9yZWNpcGVzLWNvcmUvb3MtcmVsZWFzZS9vcy1y
ZWxlYXNlLmJiLmRvX2NvbXBpbGUKRVJST1I6IFdoZW4gcmVwYXJzaW5nIC9ob21lL3RlbXAvd2Fu
Z2hwL3dzcC9naXRfcy9sb2NhbC1zb3VyY2Uvb2JtYy1zdWdvbi9lbnRpdHlfZnJ1dS9tZXRhL3Jl
Y2lwZXMtY29yZS9vcy1yZWxlYXNlL29zLXJlbGVhc2UuYmIuZG9fY29tcGlsZSwgdGhlIGJhc2Vo
YXNoIHZhbHVlIGNoYW5nZWQgZnJvbSA5OWE0MmExYTNiMWExNTFkZTYwNDI2N2IxNTk1NThlY2Fm
MTAzMWEzYmVjODkxN2RmMTMyYzgxMzAyZTcyOWE1IHRvIDRmMzI4OGE4NzYzZTJlMWFmNzhlNGIz
Y2RkOWMwYzBjY2IzYjBkNWM3OGEzMDczYzE4OGIyMjIwMGRmMmE5YjAuIFRoZSBtZXRhZGF0YSBp
cyBub3QgZGV0ZXJtaW5pc3RpYyBhbmQgdGhpcyBuZWVkcyB0byBiZSBmaXhlZC4KRVJST1I6IFRo
ZSBmb2xsb3dpbmcgY29tbWFuZHMgbWF5IGhlbHA6CkVSUk9SOiAkIGJpdGJha2Ugb3MtcmVsZWFz
ZSAtY2RvX2NvbXBpbGUgLVNub25lCkVSUk9SOiBUaGVuOgpFUlJPUjogJCBiaXRiYWtlIG9zLXJl
bGVhc2UgLWNkb19jb21waWxlIC1TcHJpbnRkaWZmCgoKRVJST1I6IFdoZW4gcmVwYXJzaW5nIC9o
b21lL3RlbXAvd2FuZ2hwL3dzcC9naXRfcy9sb2NhbC1zb3VyY2Uvb2JtYy1zdWdvbi9lbnRpdHlf
ZnJ1dS9tZXRhL3JlY2lwZXMtY29yZS9vcy1yZWxlYXNlL29zLXJlbGVhc2UuYmIuZG9fY29tcGls
ZSwgdGhlIGJhc2VoYXNoIHZhbHVlIGNoYW5nZWQgZnJvbSA5OWE0MmExYTNiMWExNTFkZTYwNDI2
N2IxNTk1NThlY2FmMTAzMWEzYmVjODkxN2RmMTMyYzgxMzAyZTcyOWE1IHRvIDQ3YzMwMDEyZGFh
NmFhNzdiZTA5YTkzZmUyMWU2Njk5NTM2MWVmMjZiNDQ4NzExMTAwNTYxN2RiOGNiNGRlNTkuIFRo
ZSBtZXRhZGF0YSBpcyBub3QgZGV0ZXJtaW5pc3RpYyBhbmQgdGhpcyBuZWVkcyB0byBiZSBmaXhl
ZC4KRVJST1I6IFRoZSBmb2xsb3dpbmcgY29tbWFuZHMgbWF5IGhlbHA6CkVSUk9SOiAkIGJpdGJh
a2Ugb3MtcmVsZWFzZSAtY2RvX2NvbXBpbGUgLVNub25lCkVSUk9SOiBUaGVuOgpFUlJPUjogJCBi
aXRiYWtlIG9zLXJlbGVhc2UgLWNkb19jb21waWxlIC1TcHJpbnRkaWZmCgoKdGhhbmtzLApCeXJv
bgoK

------=_Part_61753_1318469710.1573618857010
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9ImxpbmUtaGVpZ2h0OiAxLjc7Ij48ZGl2PkRl
YXIgYWxsLDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+V2hlbiBJIG1vZGlmeSB0aGUgb3MtcmVs
ZWFzZSBmaWxlIGluIG15IHlvY3RvIHByb2plY3QsIGl0IGFwcGVhciBzb21lIGVycm9yLCBhbmQg
aG93IGNhbiBJIHNvbHZlIGl0ID8mbmJzcDtXaG8gY2FuIGdpdmUgbWUgc29tZSBoZWxwIG9yIGFk
dmljZT8gVGhhbmsgeW91o6E8L2Rpdj48ZGl2PkkgY2FycmllZCBvdXQgdGhlIHJlY29tbWVuZGVk
IG9yZGVyIGFuZCBpdCBkaWRuJ3Qgd29yay48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PjxkaXY+
PGk+RVJST1I6IG9zLXJlbGVhc2UtMS4wLXIwIGRvX2NvbXBpbGU6IFRhc2toYXNoIG1pc21hdGNo
IGNlMTMzZjA0NTg2MDhlMDNhYTU1MjI0ZGYyODE1NmU1MjNlNTQ5MDMxMTVlZmJiY2Q2Mjk0NmY4
NGE4NjcyMDEgdmVyc3VzIDcyNjk4ODFmMGViMTc1OWVkNDIwYTJkYjRjMDRmYjQ3N2NkOGMxMjg4
YmM1ZjgyZGY1YzgxNjFiYjkyNmVhMWYgZm9yIC9ob21lL3RlbXAvd2FuZ2hwL3dzcC9naXRfcy9s
b2NhbC1zb3VyY2Uvb2JtYy1zdWdvbi9lbnRpdHlfZnJ1dS9tZXRhL3JlY2lwZXMtY29yZS9vcy1y
ZWxlYXNlL29zLXJlbGVhc2UuYmIuZG9fY29tcGlsZTwvaT48L2Rpdj48ZGl2PjxpPkVSUk9SOiBU
YXNraGFzaCBtaXNtYXRjaCBjZTEzM2YwNDU4NjA4ZTAzYWE1NTIyNGRmMjgxNTZlNTIzZTU0OTAz
MTE1ZWZiYmNkNjI5NDZmODRhODY3MjAxIHZlcnN1cyA3MjY5ODgxZjBlYjE3NTllZDQyMGEyZGI0
YzA0ZmI0NzdjZDhjMTI4OGJjNWY4MmRmNWM4MTYxYmI5MjZlYTFmIGZvciAvaG9tZS90ZW1wL3dh
bmdocC93c3AvZ2l0X3MvbG9jYWwtc291cmNlL29ibWMtc3Vnb24vZW50aXR5X2ZydXUvbWV0YS9y
ZWNpcGVzLWNvcmUvb3MtcmVsZWFzZS9vcy1yZWxlYXNlLmJiLmRvX2NvbXBpbGU8L2k+PC9kaXY+
PGRpdj48aT5FUlJPUjogV2hlbiByZXBhcnNpbmcgL2hvbWUvdGVtcC93YW5naHAvd3NwL2dpdF9z
L2xvY2FsLXNvdXJjZS9vYm1jLXN1Z29uL2VudGl0eV9mcnV1L21ldGEvcmVjaXBlcy1jb3JlL29z
LXJlbGVhc2Uvb3MtcmVsZWFzZS5iYi5kb19jb21waWxlLDwvaT48c3BhbiBzdHlsZT0iY29sb3I6
IHJnYigwLCAwLCAwKTsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjA0LCAwKTsiPjxpPiZu
YnNwOzwvaT48aT50aGUgYmFzZWhhc2ggdmFsdWUgY2hhbmdlZCBmcm9tIDk5YTQyYTFhM2IxYTE1
MWRlNjA0MjY3YjE1OTU1OGVjYWYxMDMxYTNiZWM4OTE3ZGYxMzJjODEzMDJlNzI5YTUgdG8gNGYz
Mjg4YTg3NjNlMmUxYWY3OGU0YjNjZGQ5YzBjMGNjYjNiMGQ1Yzc4YTMwNzNjMTg4YjIyMjAwZGYy
YTliMC48L2k+PC9zcGFuPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDI1NSwgMjA0LCAwKTsiPjxp
PiZuYnNwOzwvaT48L3NwYW4+PGk+VGhlIG1ldGFkYXRhIGlzIG5vdCBkZXRlcm1pbmlzdGljIGFu
ZCB0aGlzIG5lZWRzIHRvIGJlIGZpeGVkLjwvaT48L2Rpdj48ZGl2PjxpPkVSUk9SOiBUaGUgZm9s
bG93aW5nIGNvbW1hbmRzIG1heSBoZWxwOjwvaT48L2Rpdj48ZGl2PjxpPkVSUk9SOiAkIGJpdGJh
a2Ugb3MtcmVsZWFzZSAtY2RvX2NvbXBpbGUgLVNub25lPC9pPjwvZGl2PjxkaXY+PGk+RVJST1I6
IFRoZW46PC9pPjwvZGl2PjxkaXY+PGk+RVJST1I6ICQgYml0YmFrZSBvcy1yZWxlYXNlIC1jZG9f
Y29tcGlsZSAtU3ByaW50ZGlmZjwvaT48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PjxpPkVSUk9S
OiBXaGVuIHJlcGFyc2luZyAvaG9tZS90ZW1wL3dhbmdocC93c3AvZ2l0X3MvbG9jYWwtc291cmNl
L29ibWMtc3Vnb24vZW50aXR5X2ZydXUvbWV0YS9yZWNpcGVzLWNvcmUvb3MtcmVsZWFzZS9vcy1y
ZWxlYXNlLmJiLmRvX2NvbXBpbGUsJm5ic3A7PC9pPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDAs
IDAsIDApOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyMDQsIDApOyI+PGk+dGhlIGJhc2Vo
YXNoIHZhbHVlIGNoYW5nZWQgZnJvbSA5OWE0MmExYTNiMWExNTFkZTYwNDI2N2IxNTk1NThlY2Fm
MTAzMWEzYmVjODkxN2RmMTMyYzgxMzAyZTcyOWE1IHRvIDQ3YzMwMDEyZGFhNmFhNzdiZTA5YTkz
ZmUyMWU2Njk5NTM2MWVmMjZiNDQ4NzExMTAwNTYxN2RiOGNiNGRlNTkuIFRoZSBtZXRhZGF0YSBp
cyBub3QgZGV0ZXJtaW5pc3RpYyBhbmQgdGhpcyBuZWVkcyB0byBiZSBmaXhlZC48L2k+PC9zcGFu
PjwvZGl2PjxkaXY+PGk+RVJST1I6IFRoZSBmb2xsb3dpbmcgY29tbWFuZHMgbWF5IGhlbHA6PC9p
PjwvZGl2PjxkaXY+PGk+RVJST1I6ICQgYml0YmFrZSBvcy1yZWxlYXNlIC1jZG9fY29tcGlsZSAt
U25vbmU8L2k+PC9kaXY+PGRpdj48aT5FUlJPUjogVGhlbjo8L2k+PC9kaXY+PGRpdj48aT5FUlJP
UjogJCBiaXRiYWtlIG9zLXJlbGVhc2UgLWNkb19jb21waWxlIC1TcHJpbnRkaWZmPC9pPjwvZGl2
PjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+dGhhbmtzLDwvZGl2PjxkaXY+Qnlyb248L2Rpdj48
L2Rpdj48YnIgc3R5bGU9ImZvbnQtZmFtaWx5OiBIZWx2ZXRpY2EsICZxdW90O01pY3Jvc29mdCBZ
YWhlaSZxdW90OywgdmVyZGFuYTsiPjwvZGl2Pjxicj48YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vm
b290ZXIiPjxwPiZuYnNwOzwvcD48L3NwYW4+

------=_Part_61753_1318469710.1573618857010--
