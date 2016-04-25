Return-Path: <amarnath.valluri@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF63AE00CB4; Sun, 24 Apr 2016 23:43:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAB75E00C86
	for <yocto@yoctoproject.org>; Sun, 24 Apr 2016 23:43:16 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 24 Apr 2016 23:43:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,531,1455004800"; 
	d="scan'208,217";a="691716585"
Received: from avalluri-gigabyte.fi.intel.com (HELO [10.237.72.170])
	([10.237.72.170])
	by FMSMGA003.fm.intel.com with ESMTP; 24 Apr 2016 23:43:15 -0700
To: yocto@yoctoproject.org
From: Amarnath Valluri <amarnath.valluri@intel.com>
Message-ID: <571DBD45.5070607@intel.com>
Date: Mon, 25 Apr 2016 09:46:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: Enable a recipe/package only when other dependent recipe/package is part of image.
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
X-List-Received-Date: Mon, 25 Apr 2016 06:43:20 -0000
Content-Type: multipart/alternative;
	boundary="------------040008020200040106060306"

--------------040008020200040106060306
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8sCgpJIGhhdmUgbXkgb3duIGxheWVyLCB0aGF0IHByb3ZpZGVzIGNvbmZpZ3VyYXRpb24g
cGFja2FnZXMgZm9yIGNvcmUgTGludXggCmNvbXBvbmVudHMsIGZvciBleGFtcGxlIOKAmGNvbm5t
YW4tY29uZuKAmSBmb3Ig4oCYY29ubm1hbuKAmSBwYWNrYWdlLgoKSSB3b3VsZCBsaWtlIHRvIHBy
b3ZpZGUgYSBwYWtjYWdlZ3JvdXAtY29uZmlnLCB0aGF0IHNob3VsZCBhdXRvbWF0aWNhbGx5IApz
ZWxlY3QgdGhlIGNvbmZpZ3VyYXRpb24gcGFja2FnZXMgdGhhdCBhcmUgcGFydCBvZiBpbWFnZSBj
b25maWd1cmF0aW9uLiAKU2F5IGlmIOKAmGNvbm5tYW7igJkgaXMgcGFydCBvZiBpbWFnZSB0aGVu
IGl0IHNob3VsZCBhZGQg4oCYY29ubm1hbi1jb25m4oCZIHRvIAppdHMgUkRFUEVORFNfJHtQTn0u
CgoKRm9yIHRoaXMgSSB0cmllZCB0byB1c2Ug4oCYb2UucGFja2FnZWRhdGEucGtnbWFw4oCZLCB0
byBjaGVjayBpZiB0aGUgY29yZSAKY29tcG9uZW50IGV4aXN0cyBhcyBiZWxvdzoKCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCgpkZWYgY2hlY2tfaWZfZW5hYmxlZChjb21wLCB0cnVldmFsLCBkKToKCiAgICBpbXBvcnQg
b2UucGFja2FnZWRhdGEKCiAgICBwa2dtYXAgPSBvZS5wYWNrYWdlZGF0YS5wa2dtYXAoZCkKCiAg
IGlmIHBrZ21hcCBpcyBub3QgTm9uZSBhbmQgcGtnbWFwLmdldChjb21wKSBpcyBub3QgTm9uZToK
ICAgICAgcmV0dXJuIHRydWV2YWwKCiAgICByZXR1cm4g4oCc4oCdCgpSREVQRU5EU18ke1BOfSA9
IOKAnCBcCiAgICAke0BjaGVja19pZl9lbmFibGVkKOKAnGNvbm5tYW7igJ0sIOKAnGNvbm5tYW4t
Y29uZuKAnSwgZCl9IFwK4oCcCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKVGhpcyB3b3JrcyBhcyBleHBlY3RlZCB3aGVuIHRoZSBw
YWNrYWdlZGF0YSBpcyBhdmFpbGFibGUsIGkuZS4sIGltYWdlIGlzIApidWlsZCBhdCBsZWFzdCBv
bmNlIGZpcnN0LCB0aGVuIG15IGxheWVyIGlzIGFkZGVkIHRvIEJCTEFZRVJTIGFuZCB0aGVuIApy
ZWJ1aWxkIHRoZSBpbWFnZS4KCkJ1dCB0aGlzIGZhaWxzIHdoZW4gdGhlcmUgaXMgbm8gcGFja2Fn
ZWRhdGEgY2FjaGUgYXZhaWxhYmxlLgoKQ2FuIHNvbWVvbmUgaGVscCBtZSB0byByZXNvbHZlIHRo
aXMgcHJvcGVybHkuCgoKVGhhbmtzLApBbWFybmF0aAoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIEZpbmxh
bmQgT3kKUmVnaXN0ZXJlZCBBZGRyZXNzOiBQTCAyODEsIDAwMTgxIEhlbHNpbmtpIApCdXNpbmVz
cyBJZGVudGl0eSBDb2RlOiAwMzU3NjA2IC0gNCAKRG9taWNpbGVkIGluIEhlbHNpbmtpIAoKVGhp
cyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgbWF0
ZXJpYWwgZm9yCnRoZSBzb2xlIHVzZSBvZiB0aGUgaW50ZW5kZWQgcmVjaXBpZW50KHMpLiBBbnkg
cmV2aWV3IG9yIGRpc3RyaWJ1dGlvbgpieSBvdGhlcnMgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4g
SWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkCnJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3QgdGhl
IHNlbmRlciBhbmQgZGVsZXRlIGFsbCBjb3BpZXMuCg==

--------------040008020200040106060306
MIME-Version: 1.0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+CiAgPGhlYWQ+CgogICAgPG1ldGEgaHR0cC1lcXVpdj0iY29udGVudC10eXBlIiBjb250
ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPgogIDwvaGVhZD4KICA8Ym9keSBiZ2NvbG9y
PSIjRkZGRkZGIiB0ZXh0PSIjMDAwMDAwIj4KICAgIDxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj5IZWxsbyw8bzpwPjwvbzpwPjwvc3Bhbj48L3A+CiAgICA8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+PG86cD48L286cD5JIGhhdmUgbXkgb3duCiAg
ICAgICAgbGF5ZXIsIHRoYXQgcHJvdmlkZXMgY29uZmlndXJhdGlvbiBwYWNrYWdlcyBmb3IgY29y
ZSBMaW51eAogICAgICAgIGNvbXBvbmVudHMsIGZvciBleGFtcGxlIOKAmGNvbm5tYW4tY29uZuKA
mSBmb3Ig4oCYY29ubm1hbuKAmSBwYWNrYWdlLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4KICAgIDxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5JIHdvdWxkIGxpa2UgdG8gcHJv
dmlkZSBhCiAgICAgICAgcGFrY2FnZWdyb3VwLWNvbmZpZywgdGhhdCBzaG91bGQgYXV0b21hdGlj
YWxseSBzZWxlY3QgdGhlCiAgICAgICAgY29uZmlndXJhdGlvbiBwYWNrYWdlcyB0aGF0IGFyZSBw
YXJ0IG9mIGltYWdlIGNvbmZpZ3VyYXRpb24uIFNheQogICAgICAgIGlmIOKAmGNvbm5tYW7igJkg
aXMgcGFydCBvZiBpbWFnZSB0aGVuIGl0IHNob3VsZCBhZGQg4oCYY29ubm1hbi1jb25m4oCZCiAg
ICAgICAgdG8gaXRzIFJERVBFTkRTXyR7UE59LsKgIDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4KICAg
IDxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj48YnI+CiAgICAgICAgRm9y
IHRoaXMgSSB0cmllZCB0byB1c2Ug4oCYb2UucGFja2FnZWRhdGEucGtnbWFw4oCZLCB0byBjaGVj
ayBpZiB0aGUKICAgICAgICBjb3JlIGNvbXBvbmVudCBleGlzdHMgYXMgYmVsb3c6PG86cD48L286
cD48L3NwYW4+PC9wPgogICAgPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
Pi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tPG86cD48L286cD48L3NwYW4+PC9wPgogICAgPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPmRlZiBjaGVja19pZl9lbmFibGVkKGNvbXAsCiAgICAgICAg
dHJ1ZXZhbCwgZCk6PG86cD48L286cD48L3NwYW4+PC9wPgogICAgPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPsKgwqAgaW1wb3J0IG9lLnBhY2thZ2VkYXRhPG86cD48L286
cD48L3NwYW4+PC9wPgogICAgPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PsKgwqAgcGtnbWFwID0KICAgICAgICBvZS5wYWNrYWdlZGF0YS5wa2dtYXAoZCk8bzpwPjwvbzpw
Pjwvc3Bhbj48L3A+CiAgICA8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
PG86cD7CoDwvbzpwPsKgIGlmIHBrZ21hcCBpcwogICAgICAgIG5vdCBOb25lIGFuZCBwa2dtYXAu
Z2V0KGNvbXApIGlzIG5vdCBOb25lOjxvOnA+PC9vOnA+PC9zcGFuPjxzcGFuCiAgICAgICAgbGFu
Zz0iRU4tVVMiPjxicj4KICAgICAgICDCoMKgwqDCoCByZXR1cm4gdHJ1ZXZhbDxvOnA+PC9vOnA+
PC9zcGFuPgogICAgPC9wPgogICAgPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPsKgIMKgcmV0dXJuIOKAnOKAnTxvOnA+PC9vOnA+PC9zcGFuPjwvcD4KICAgIDxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5SREVQRU5EU18ke1BOfSA9IOKAnCBcPG86
cD48L286cD48L3NwYW4+PHNwYW4KICAgICAgICBsYW5nPSJFTi1VUyI+PGJyPgogICAgICAgIMKg
wqAgJHtAY2hlY2tfaWZfZW5hYmxlZCjigJxjb25ubWFu4oCdLCDigJxjb25ubWFuLWNvbmbigJ0s
IGQpfSBcPG86cD48L286cD48L3NwYW4+PHNwYW4KICAgICAgICBsYW5nPSJFTi1VUyI+PGJyPgog
ICAgICAgIOKAnDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4KICAgIDxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxvOnA+PC9vOnA+PC9zcGFuPjwvcD4KICAgIDxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5UaGlzIHdvcmtzIGFzIGV4cGVjdGVkIHdo
ZW4KICAgICAgICB0aGUgcGFja2FnZWRhdGEgaXMgYXZhaWxhYmxlLCBpLmUuLCBpbWFnZSBpcyBi
dWlsZCBhdCBsZWFzdCBvbmNlCiAgICAgICAgZmlyc3QsIHRoZW4gbXkgbGF5ZXIgaXMgYWRkZWQg
dG8gQkJMQVlFUlMgYW5kIHRoZW4gcmVidWlsZCB0aGUKICAgICAgICBpbWFnZS48bzpwPjwvbzpw
Pjwvc3Bhbj48L3A+CiAgICA8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
QnV0IHRoaXMgZmFpbHMgd2hlbiB0aGVyZSBpcwogICAgICAgIG5vIHBhY2thZ2VkYXRhIGNhY2hl
IGF2YWlsYWJsZS48bzpwPjwvbzpwPjwvc3Bhbj48L3A+CiAgICA8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyI+Q2FuIHNvbWVvbmUgaGVscCBtZSB0bwogICAgICAgIHJlc29s
dmUgdGhpcyBwcm9wZXJseS48bzpwPjwvbzpwPjwvc3Bhbj48L3A+CiAgICA8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+PG86cD48YnI+CiAgICAgICAgPC9vOnA+PC9zcGFu
PjwvcD4KICAgIDxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5UaGFua3Ms
PC9zcGFuPjxzcGFuCiAgICAgICAgbGFuZz0iRU4tVVMiPjxicj4KICAgICAgICBBbWFybmF0aDwv
c3Bhbj48L3A+CiAgPHA+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPgpJbnRlbCBGaW5sYW5kIE95PGJyPgpSZWdp
c3RlcmVkIEFkZHJlc3M6IFBMIDI4MSwgMDAxODEgSGVsc2lua2kgPGJyPgpCdXNpbmVzcyBJZGVu
dGl0eSBDb2RlOiAwMzU3NjA2IC0gNCA8YnI+CkRvbWljaWxlZCBpbiBIZWxzaW5raSA8L3A+Cgo8
cD5UaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlh
bCBtYXRlcmlhbCBmb3I8YnI+CnRoZSBzb2xlIHVzZSBvZiB0aGUgaW50ZW5kZWQgcmVjaXBpZW50
KHMpLiBBbnkgcmV2aWV3IG9yIGRpc3RyaWJ1dGlvbjxicj4KYnkgb3RoZXJzIGlzIHN0cmljdGx5
IHByb2hpYml0ZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZDxicj4KcmVjaXBpZW50LCBw
bGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy48L3A+PC9ib2R5
Pgo8L2h0bWw+Cg==

--------------040008020200040106060306--
