Return-Path: <13824125580@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA7BEE00B7D; Mon, 23 Jul 2018 02:19:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_LOCAL_DIGITS,
	FROM_LOCAL_HEX, HTML_MESSAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FROM_LOCAL_DIGITS From: localpart has long digit
	sequence
	*  0.0 FROM_LOCAL_HEX From: localpart has long hexadecimal sequence
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (13824125580[at]163.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 923 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Jul 2018 02:19:17 PDT
Received: from m13-43.163.com (m13-43.163.com [220.181.13.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DF7DE00B7D
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 02:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=HW8Yw
	wfjaWnv3oSBFRN0eicyd3MvNao/UVZSCGXt/gM=; b=FWYXmSiQ0tcDvrGInPRSu
	AKmOfa067hTiGyLbm7gYO8J5EOTT6Tw0Yg2X/TUT4Q7T6ybihYRlaxqszMOp+wha
	GaI0UtfaUhlOjdIx+d8VkPQwiieha/Gz9s1uE7vR1W4hiCx1BBRGVXd3Yncw/sxK
	wtgxeUFM5UMP640B+7tr84=
Received: from 13824125580$163.com ( [221.4.213.95] ) by
	ajax-webmail-wmsvr43 (Coremail) ; Mon, 23 Jul 2018 17:03:50 +0800 (CST)
X-Originating-IP: [221.4.213.95]
Date: Mon, 23 Jul 2018 17:03:50 +0800 (CST)
From: tugouxp <13824125580@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
X-CM-CTRLDATA: XxOTq2Zvb3Rlcl9odG09MjkxNTo2MQ==
MIME-Version: 1.0
Message-ID: <3fcef217.a96b.164c6616b92.Coremail.13824125580@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: K8GowAAnj_r2mVVbfwtOAA--.51118W
X-CM-SenderInfo: bprtmjyurskkiyq6il2tof0z/1tbiHg2MQlSIb6cp1wACs1
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: "Unable to find header curl/curlbuild.h" error on porting
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
X-List-Received-Date: Mon, 23 Jul 2018 09:19:19 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_159165_775127237.1532336630674"

------=_Part_159165_775127237.1532336630674
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGkgZm9sa3M6CgoKICAgaSBtZWV0IGEgY29tcGlsZXIgZXJyb3Igd2hlbiBjb21waWxlIHdpdGgg
Yml0YmFrZSwgbG9vayBhdCBmb2xsb3dpbmcgbG9ncy4KCgppdCBzZWVtcyB0aGlzIGVycm9yIGNh
bnQgcmVzdWx0IHRvIGZhaWx1cmUgdGhlIGNvbXBpbGUgcHJvY2VzcywgdGhlIGltYWdlIGZpbGUg
Y2FuIGJlIGdlbmVyYXRlZCBhbmQgcnVubmluZyBvaywgIGJ1dCBpIHdhcyBhIGJpdCB3b3JyeSBv
biB0aGlzIGZvciBpIGRvbnQgIGNvbmZpcm0gd2hldGhlciBpdCBoaW50cyBzb21lIGZhdGFsIGlz
c3Vlcy4Kc28sIGkgbmVlZCBoZWxwIHRvIGNsYXJpZnkgdGhpcyBlcnJvciwgdGhhbmtzLgoKClBh
cnNpbmcgb2YgOTYzIC5iYiBmaWxlcyBjb21wbGV0ZSAoMCBjYWNoZWQsIDk2MyBwYXJzZWQpLiAx
NDUyIHRhcmdldHMsIDE4MCBza2lwcGVkLCAwIG1hc2tlZCwgMCBlcnJvcnMuCk5PVEU6IFJlc29s
dmluZyBhbnkgbWlzc2luZyB0YXNrIHF1ZXVlIGRlcGVuZGVuY2llcwoKCkJ1aWxkIENvbmZpZ3Vy
YXRpb246CkJCX1ZFUlNJT04gICAgICAgICAgID0gIjEuMzYuMCIKQlVJTERfU1lTICAgICAgICAg
ICAgPSAieDg2XzY0LWxpbnV4IgpOQVRJVkVMU0JTVFJJTkcgICAgICA9ICJ1bml2ZXJzYWwiClRB
UkdFVF9TWVMgICAgICAgICAgID0gImFhcmNoNjQtcG9reS1saW51eCIKTUFDSElORSAgICAgICAg
ICAgICAgPSAidHVsaXAtbW96YXJ0IgpESVNUUk8gICAgICAgICAgICAgICA9ICJkaXN0cm8tdHVs
aXAtbW96YXJ0IgpESVNUUk9fVkVSU0lPTiAgICAgICA9ICJWMi41IgpUVU5FX0ZFQVRVUkVTICAg
ICAgICA9ICJhYXJjaDY0IgpUQVJHRVRfRlBVICAgICAgICAgICA9ICIiCm1ldGEgICAgICAgICAg
ICAgICAgIAptZXRhLXBva3kgICAgICAgICAgICAKbWV0YS15b2N0by1ic3AgICAgICAgPSAiZ2xp
YmMtZGV2OjQ1ZDcwYWFiOTEzYjA1NDY3N2EwMzJkNjdkMmExMmQxOTExMzlhOWYiCm1ldGEtdGlu
YSAgICAgICAgICAgID0gInRpbmEtZGV2LXdpdGgtZ2xpYmM6NWE2OWYwY2U5ZmQ5NjUxYWE0YWZk
ZDYyNjEwYzVjYWQ2NTE0MGM3NiIKCgpJbml0aWFsaXNpbmcgdGFza3M6IDEwMCUgfCMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI3wgVGltZTog
MDowMDoxMQpOT1RFOiBFeGVjdXRpbmcgU2V0U2NlbmUgVGFza3MKTk9URTogRXhlY3V0aW5nIFJ1
blF1ZXVlIFRhc2tzCkVSUk9SOiBjdXJsLTcuNTkuMC1yMCBkb19pbnN0YWxsOiBvZV9tdWx0aWxp
Yl9oZWFkZXI6IFVuYWJsZSB0byBmaW5kIGhlYWRlciBjdXJsL2N1cmxidWlsZC5oLgpXQVJOSU5H
OiBnc3RyZWFtZXIxLjAtcGx1Z2lucy1hdy0xLjguMi1yMCBkb19jb25maWd1cmU6IFFBIElzc3Vl
OiBnc3RyZWFtZXIxLjAtcGx1Z2lucy1hdzogY29uZmlndXJlIHdhcyBwYXNzZWQgdW5yZWNvZ25p
c2VkIG9wdGlvbnM6IC0tZGlzYWJsZS1leGFtcGxlcyAtLWVuYWJsZS1zdW54aWZic2luayAtLXdp
dGhvdXQtbGliaW50bC1wcmVmaXggLS1kaXNhYmxlLWRlYnVnIC0td2l0aG91dC14IC0tZW5hYmxl
LWZiZGV2MnNpbmsgLS13aXRob3V0LWxpYmljb252LXByZWZpeCBbdW5rbm93bi1jb25maWd1cmUt
b3B0aW9uXQpXQVJOSU5HOiB5b3V0dWJlLWRsLTIwMTguMDcuMDQtcjAgZG9fcG9wdWxhdGVfbGlj
OiB5b3V0dWJlLWRsOiBObyBnZW5lcmljIGxpY2Vuc2UgZmlsZSBleGlzdHMgZm9yOiBVbmxpY2Vu
c2UgaW4gYW55IHByb3ZpZGVyCldBUk5JTkc6IGltYWdlLXR1bGlwLW1vemFydC0xLjAtcjAgZG9f
cm9vdGZzOiBUaGUgbGljZW5zZSBsaXN0ZWQgVW5saWNlbnNlIHdhcyBub3QgaW4gdGhlIGxpY2Vu
c2VzIGNvbGxlY3RlZCBmb3IgcmVjaXBlIHlvdXR1YmUtZGwKV0FSTklORzogaW1hZ2UtdHVsaXAt
bW96YXJ0LTEuMC1yMCBkb19pbWFnZTogdmVyc2lvbiBpYW1nZSAtLT4gIHR1bGlwLW1vemFydC0y
MDE4MDcyMzE2MzcyOC1SMS4w

------=_Part_159165_775127237.1532336630674
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+SGkgZm9sa3M6PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj4mbmJzcDsgJm5ic3A7aSBtZWV0IGEgY29tcGlsZXIgZXJyb3Igd2hlbiBjb21waWxlIHdpdGgg
Yml0YmFrZSwgbG9vayBhdCBmb2xsb3dpbmcgbG9ncy48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2
Pml0IHNlZW1zIHRoaXMgZXJyb3IgY2FudCByZXN1bHQgdG8gZmFpbHVyZSB0aGUgY29tcGlsZSBw
cm9jZXNzLCB0aGUgaW1hZ2UgZmlsZSBjYW4gYmUgZ2VuZXJhdGVkIGFuZCBydW5uaW5nIG9rLCAm
bmJzcDtidXQgaSB3YXMgYSBiaXQgd29ycnkgb24gdGhpcyBmb3IgaSBkb250ICZuYnNwO2NvbmZp
cm0gd2hldGhlciBpdCBoaW50cyBzb21lIGZhdGFsIGlzc3Vlcy48L2Rpdj48ZGl2PnNvLCBpIG5l
ZWQgaGVscCB0byBjbGFyaWZ5IHRoaXMgZXJyb3IsIHRoYW5rcy48L2Rpdj48ZGl2Pjxicj48L2Rp
dj48ZGl2PlBhcnNpbmcgb2YgOTYzIC5iYiBmaWxlcyBjb21wbGV0ZSAoMCBjYWNoZWQsIDk2MyBw
YXJzZWQpLiAxNDUyIHRhcmdldHMsIDE4MCBza2lwcGVkLCAwIG1hc2tlZCwgMCBlcnJvcnMuPC9k
aXY+PGRpdj5OT1RFOiBSZXNvbHZpbmcgYW55IG1pc3NpbmcgdGFzayBxdWV1ZSBkZXBlbmRlbmNp
ZXM8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkJ1aWxkIENvbmZpZ3VyYXRpb246PC9kaXY+PGRp
dj5CQl9WRVJTSU9OICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgPSAiMS4zNi4w
IjwvZGl2PjxkaXY+QlVJTERfU1lTICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsg
Jm5ic3A7PSAieDg2XzY0LWxpbnV4IjwvZGl2PjxkaXY+TkFUSVZFTFNCU1RSSU5HICZuYnNwOyAm
bmJzcDsgJm5ic3A7PSAidW5pdmVyc2FsIjwvZGl2PjxkaXY+VEFSR0VUX1NZUyAmbmJzcDsgJm5i
c3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ID0gImFhcmNoNjQtcG9reS1saW51eCI8L2Rpdj48ZGl2
Pk1BQ0hJTkUgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7
PSAidHVsaXAtbW96YXJ0IjwvZGl2PjxkaXY+RElTVFJPICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZu
YnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyA9ICJkaXN0cm8tdHVsaXAtbW96YXJ0IjwvZGl2Pjxk
aXY+RElTVFJPX1ZFUlNJT04gJm5ic3A7ICZuYnNwOyAmbmJzcDsgPSAiVjIuNSI8L2Rpdj48ZGl2
PlRVTkVfRkVBVFVSRVMgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7PSAiYWFyY2g2NCI8L2Rp
dj48ZGl2PlRBUkdFVF9GUFUgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyA9ICIi
PC9kaXY+PGRpdj5tZXRhICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7
ICZuYnNwOyAmbmJzcDsmbmJzcDs8L2Rpdj48ZGl2Pm1ldGEtcG9reSAmbmJzcDsgJm5ic3A7ICZu
YnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOzwvZGl2PjxkaXY+bWV0YS15b2N0by1ic3AgJm5ic3A7
ICZuYnNwOyAmbmJzcDsgPSAiZ2xpYmMtZGV2OjQ1ZDcwYWFiOTEzYjA1NDY3N2EwMzJkNjdkMmEx
MmQxOTExMzlhOWYiPC9kaXY+PGRpdj5tZXRhLXRpbmEgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5i
c3A7ICZuYnNwOyAmbmJzcDs9ICJ0aW5hLWRldi13aXRoLWdsaWJjOjVhNjlmMGNlOWZkOTY1MWFh
NGFmZGQ2MjYxMGM1Y2FkNjUxNDBjNzYiPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5Jbml0aWFs
aXNpbmcgdGFza3M6IDEwMCUgfCMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjI3wgVGltZTogMDowMDoxMTwvZGl2PjxkaXY+Tk9URTogRXhlY3V0
aW5nIFNldFNjZW5lIFRhc2tzPC9kaXY+PGRpdj5OT1RFOiBFeGVjdXRpbmcgUnVuUXVldWUgVGFz
a3M8L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDI1NSwgMCwgMCk7Ij5FUlJPUjog
Y3VybC03LjU5LjAtcjAgZG9faW5zdGFsbDogb2VfbXVsdGlsaWJfaGVhZGVyOiBVbmFibGUgdG8g
ZmluZCBoZWFkZXIgY3VybC9jdXJsYnVpbGQuaC48L3NwYW4+PC9kaXY+PGRpdj5XQVJOSU5HOiBn
c3RyZWFtZXIxLjAtcGx1Z2lucy1hdy0xLjguMi1yMCBkb19jb25maWd1cmU6IFFBIElzc3VlOiBn
c3RyZWFtZXIxLjAtcGx1Z2lucy1hdzogY29uZmlndXJlIHdhcyBwYXNzZWQgdW5yZWNvZ25pc2Vk
IG9wdGlvbnM6IC0tZGlzYWJsZS1leGFtcGxlcyAtLWVuYWJsZS1zdW54aWZic2luayAtLXdpdGhv
dXQtbGliaW50bC1wcmVmaXggLS1kaXNhYmxlLWRlYnVnIC0td2l0aG91dC14IC0tZW5hYmxlLWZi
ZGV2MnNpbmsgLS13aXRob3V0LWxpYmljb252LXByZWZpeCBbdW5rbm93bi1jb25maWd1cmUtb3B0
aW9uXTwvZGl2PjxkaXY+V0FSTklORzogeW91dHViZS1kbC0yMDE4LjA3LjA0LXIwIGRvX3BvcHVs
YXRlX2xpYzogeW91dHViZS1kbDogTm8gZ2VuZXJpYyBsaWNlbnNlIGZpbGUgZXhpc3RzIGZvcjog
VW5saWNlbnNlIGluIGFueSBwcm92aWRlcjwvZGl2PjxkaXY+V0FSTklORzogaW1hZ2UtdHVsaXAt
bW96YXJ0LTEuMC1yMCBkb19yb290ZnM6IFRoZSBsaWNlbnNlIGxpc3RlZCBVbmxpY2Vuc2Ugd2Fz
IG5vdCBpbiB0aGUgbGljZW5zZXMgY29sbGVjdGVkIGZvciByZWNpcGUgeW91dHViZS1kbDwvZGl2
PjxkaXY+V0FSTklORzogaW1hZ2UtdHVsaXAtbW96YXJ0LTEuMC1yMCBkb19pbWFnZTogdmVyc2lv
biBpYW1nZSAtLSZndDsgJm5ic3A7dHVsaXAtbW96YXJ0LTIwMTgwNzIzMTYzNzI4LVIxLjA8L2Rp
dj48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJuZXRlYXNlZm9vdGVyIj48cD48YnIvPiZuYnNw
OzwvcD48L3NwYW4+

------=_Part_159165_775127237.1532336630674--
