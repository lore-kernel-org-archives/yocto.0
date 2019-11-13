Return-Path: <ouyangxuan10@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6A54E00E0A; Tue, 12 Nov 2019 19:24:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HEXHASH_WORD,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ouyangxuan10[at]163.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [220.181.13.138 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
X-Greylist: delayed 910 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Nov 2019 19:24:35 PST
Received: from m13-138.163.com (m13-138.163.com [220.181.13.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 147FFE00DCE;
	Tue, 12 Nov 2019 19:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=rckuo
	dwnJ5aT6fkz+5+1FlqMFC2LfJTdZbhwp6maiaE=; b=Bqrh9xIGjenU6qFOp+RUT
	H4YJem+EZAcqhmIpjdn3Fyl1KNNESh025hmYnjc7pqCZb+48IWKOJ1qpoi19NE37
	X7oE7DBbbI0U9IHrSbrTeyVy/C5m8XTxYYuYUv6+uWR9F37WfTgxWJkTZ4/6d1fc
	EvCyGA0nw/yPDii5uj3jxU=
Received: from ouyangxuan10$163.com ( [106.120.127.15] ) by
	ajax-webmail-wmsvr138 (Coremail) ; Wed, 13 Nov 2019 11:09:15 +0800 (CST)
X-Originating-IP: [106.120.127.15]
Date: Wed, 13 Nov 2019 11:09:15 +0800 (CST)
From: www <ouyangxuan10@163.com>
To: "yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
	Copyright (c) 2002-2019 www.mailtech.cn 163com
X-CM-CTRLDATA: kMQG02Zvb3Rlcl9odG09MjM5Nzo1Ng==
MIME-Version: 1.0
Message-ID: <1f16aed3.34f0.16e62bc914f.Coremail.ouyangxuan10@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: isGowAC3xwPbc8tdTJSaAQ--.27370W
X-CM-SenderInfo: prx1t0pj0xt0irq6il2tof0z/1tbiLgZs2lSIlQlCNwACsp
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
X-List-Received-Date: Wed, 13 Nov 2019 03:24:36 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_51531_1040916157.1573614555471"

------=_Part_51531_1040916157.1573614555471
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
bg==

------=_Part_51531_1040916157.1573614555471
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+RGVhciBhbGwsPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj5XaGVuIEkgbW9kaWZ5IHRoZSBvcy1yZWxlYXNlIGZpbGUgaW4gbXkgeW9jdG8gcHJvamVjdCwg
aXQgYXBwZWFyIHNvbWUgZXJyb3IsIGFuZCBob3cgY2FuIEkgc29sdmUgaXQgPyZuYnNwO1dobyBj
YW4gZ2l2ZSBtZSBzb21lIGhlbHAgb3IgYWR2aWNlPyBUaGFuayB5b3WjoTwvZGl2PjxkaXY+SSBj
YXJyaWVkIG91dCB0aGUgcmVjb21tZW5kZWQgb3JkZXIgYW5kIGl0IGRpZG4ndCB3b3JrLjwvZGl2
PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGRpdj48aT5FUlJPUjogb3MtcmVsZWFzZS0xLjAtcjAgZG9f
Y29tcGlsZTogVGFza2hhc2ggbWlzbWF0Y2ggY2UxMzNmMDQ1ODYwOGUwM2FhNTUyMjRkZjI4MTU2
ZTUyM2U1NDkwMzExNWVmYmJjZDYyOTQ2Zjg0YTg2NzIwMSB2ZXJzdXMgNzI2OTg4MWYwZWIxNzU5
ZWQ0MjBhMmRiNGMwNGZiNDc3Y2Q4YzEyODhiYzVmODJkZjVjODE2MWJiOTI2ZWExZiBmb3IgL2hv
bWUvdGVtcC93YW5naHAvd3NwL2dpdF9zL2xvY2FsLXNvdXJjZS9vYm1jLXN1Z29uL2VudGl0eV9m
cnV1L21ldGEvcmVjaXBlcy1jb3JlL29zLXJlbGVhc2Uvb3MtcmVsZWFzZS5iYi5kb19jb21waWxl
PC9pPjwvZGl2PjxkaXY+PGk+RVJST1I6IFRhc2toYXNoIG1pc21hdGNoIGNlMTMzZjA0NTg2MDhl
MDNhYTU1MjI0ZGYyODE1NmU1MjNlNTQ5MDMxMTVlZmJiY2Q2Mjk0NmY4NGE4NjcyMDEgdmVyc3Vz
IDcyNjk4ODFmMGViMTc1OWVkNDIwYTJkYjRjMDRmYjQ3N2NkOGMxMjg4YmM1ZjgyZGY1YzgxNjFi
YjkyNmVhMWYgZm9yIC9ob21lL3RlbXAvd2FuZ2hwL3dzcC9naXRfcy9sb2NhbC1zb3VyY2Uvb2Jt
Yy1zdWdvbi9lbnRpdHlfZnJ1dS9tZXRhL3JlY2lwZXMtY29yZS9vcy1yZWxlYXNlL29zLXJlbGVh
c2UuYmIuZG9fY29tcGlsZTwvaT48L2Rpdj48ZGl2PjxpPkVSUk9SOiBXaGVuIHJlcGFyc2luZyAv
aG9tZS90ZW1wL3dhbmdocC93c3AvZ2l0X3MvbG9jYWwtc291cmNlL29ibWMtc3Vnb24vZW50aXR5
X2ZydXUvbWV0YS9yZWNpcGVzLWNvcmUvb3MtcmVsZWFzZS9vcy1yZWxlYXNlLmJiLmRvX2NvbXBp
bGUsIDwvaT48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigyNTUsIDIwNCwgMCk7Ij48aT50aGUgYmFz
ZWhhc2ggdmFsdWUgY2hhbmdlZCBmcm9tIDk5YTQyYTFhM2IxYTE1MWRlNjA0MjY3YjE1OTU1OGVj
YWYxMDMxYTNiZWM4OTE3ZGYxMzJjODEzMDJlNzI5YTUgdG8gNGYzMjg4YTg3NjNlMmUxYWY3OGU0
YjNjZGQ5YzBjMGNjYjNiMGQ1Yzc4YTMwNzNjMTg4YjIyMjAwZGYyYTliMC4gPC9pPjwvc3Bhbj48
aT5UaGUgbWV0YWRhdGEgaXMgbm90IGRldGVybWluaXN0aWMgYW5kIHRoaXMgbmVlZHMgdG8gYmUg
Zml4ZWQuPC9pPjwvZGl2PjxkaXY+PGk+RVJST1I6IFRoZSBmb2xsb3dpbmcgY29tbWFuZHMgbWF5
IGhlbHA6PC9pPjwvZGl2PjxkaXY+PGk+RVJST1I6ICQgYml0YmFrZSBvcy1yZWxlYXNlIC1jZG9f
Y29tcGlsZSAtU25vbmU8L2k+PC9kaXY+PGRpdj48aT5FUlJPUjogVGhlbjo8L2k+PC9kaXY+PGRp
dj48aT5FUlJPUjogJCBiaXRiYWtlIG9zLXJlbGVhc2UgLWNkb19jb21waWxlIC1TcHJpbnRkaWZm
PC9pPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGk+RVJST1I6IFdoZW4gcmVwYXJzaW5nIC9o
b21lL3RlbXAvd2FuZ2hwL3dzcC9naXRfcy9sb2NhbC1zb3VyY2Uvb2JtYy1zdWdvbi9lbnRpdHlf
ZnJ1dS9tZXRhL3JlY2lwZXMtY29yZS9vcy1yZWxlYXNlL29zLXJlbGVhc2UuYmIuZG9fY29tcGls
ZSwgPC9pPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDAsIDI1NSwgMCk7Ij48aT50aGUgYmFzZWhh
c2ggdmFsdWUgY2hhbmdlZCBmcm9tIDk5YTQyYTFhM2IxYTE1MWRlNjA0MjY3YjE1OTU1OGVjYWYx
MDMxYTNiZWM4OTE3ZGYxMzJjODEzMDJlNzI5YTUgdG8gNDdjMzAwMTJkYWE2YWE3N2JlMDlhOTNm
ZTIxZTY2OTk1MzYxZWYyNmI0NDg3MTExMDA1NjE3ZGI4Y2I0ZGU1OS4gVGhlIG1ldGFkYXRhIGlz
IG5vdCBkZXRlcm1pbmlzdGljIGFuZCB0aGlzIG5lZWRzIHRvIGJlIGZpeGVkLjwvaT48L3NwYW4+
PC9kaXY+PGRpdj48aT5FUlJPUjogVGhlIGZvbGxvd2luZyBjb21tYW5kcyBtYXkgaGVscDo8L2k+
PC9kaXY+PGRpdj48aT5FUlJPUjogJCBiaXRiYWtlIG9zLXJlbGVhc2UgLWNkb19jb21waWxlIC1T
bm9uZTwvaT48L2Rpdj48ZGl2PjxpPkVSUk9SOiBUaGVuOjwvaT48L2Rpdj48ZGl2PjxpPkVSUk9S
OiAkIGJpdGJha2Ugb3MtcmVsZWFzZSAtY2RvX2NvbXBpbGUgLVNwcmludGRpZmY8L2k+PC9kaXY+
PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj50aGFua3MsPC9kaXY+PGRpdj5CeXJvbjwvZGl2Pjwv
ZGl2Pjxicj48YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vmb290ZXIiPjxwPiZuYnNwOzwvcD48L3Nw
YW4+

------=_Part_51531_1040916157.1573614555471--
