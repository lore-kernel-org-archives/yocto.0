Return-Path: <umamahesh.y@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5E04E009C2; Fri,  7 Jul 2017 01:01:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_HTML_ONLY,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.8.186.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Jul 2017 01:01:11 PDT
Received: from GWS08.hcl.com (gws08.hcl.com [192.8.186.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC55AE00718
	for <yocto@yoctoproject.org>; Fri,  7 Jul 2017 01:01:11 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.40,321,1496082600"; d="scan'208,217";a="67306279"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS08.hcl.com with ESMTP/TLS/AES128-SHA; 07 Jul 2017 13:30:00 +0530
Received: from CHN-HCLT-CSHT07.HCLT.CORP.HCL.IN (10.150.12.32) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Fri, 7 Jul 2017 13:29:59 +0530
Received: from CHN-HCLT-MBS02.HCLT.CORP.HCL.IN ([fe80::45e7:d7f7:b243:fdd9])
	by CHN-HCLT-CSHT07.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0339.000;
	Fri, 7 Jul 2017 13:29:59 +0530
From: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Wifi on wandboard with Yoct0 Morty
Thread-Index: AdL29weARh2ivtCESiyf/rbwmNIfeA==
Date: Fri, 7 Jul 2017 07:59:59 +0000
Message-ID: <7238EEDF8C36444C95B21A966F50FB8851DB30BD@CHN-HCLT-MBS02.HCLT.CORP.HCL.IN>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.113]
MIME-Version: 1.0
Subject: Wifi on wandboard with Yoct0 Morty
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
X-List-Received-Date: Fri, 07 Jul 2017 08:01:16 -0000
Content-Language: en-GB
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: base64

PGh0bWwgZGlyPSJsdHIiPgo8aGVhZD4KPG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBj
b250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9a29pOC1yIj4KPHN0eWxlIHR5cGU9InRleHQvY3Nz
IiBpZD0ib3dhUGFyYVN0eWxlIj5QIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO308L3N0
eWxlPgo8L2hlYWQ+Cjxib2R5IGZwc3R5bGU9IjEiIG9jc2k9IjAiPgo8ZGl2IHN0eWxlPSJkaXJl
Y3Rpb246IGx0cjtmb250LWZhbWlseTogVGFob21hO2NvbG9yOiAjMDAwMDAwO2ZvbnQtc2l6ZTog
MTBwdDsiPkhpCjxicj4KSSBhbSB0cnlpbmcgdG8gYnJpbmcgdXAgV2lmaSBvbiB3YW5kYm9hcmQg
UmV2IEMxIGFuZCB1c2luZyBZb2N0byBNb3J0eSB2ZXJzaW9uKDIuMi4yKSAsIEkgZG93bmxvYWRl
ZCB0aGUgZmlybXdhcmUgYmluIGZpbGVzIGZyb20gZm9sbG93aW5nCjxicj4KPGJyPgp3Z2V0IC1j
IDxhIGNsYXNzPSJwb3N0bGluayIgaHJlZj0iaHR0cHM6Ly9naXQua2VybmVsLm9yZy9jZ2l0L2xp
bnV4L2tlcm5lbC9naXQvZmlybXdhcmUvbGludXgtZmlybXdhcmUuZ2l0L3BsYWluL2JyY20vYnJj
bWZtYWM0MzMwLXNkaW8uYmluIj4KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9jZ2l0L2xpbnV4L2tl
cm5lIC4uLiAwLXNkaW8uYmluPC9hPjxicj4Kd2dldCAtYyA8YSBjbGFzcz0icG9zdGxpbmsiIGhy
ZWY9Imh0dHBzOi8vcmNuLWVlLmNvbS9yZXBvcy9naXQvbWV0YS1mc2wtYXJtLWV4dHJhL3JlY2lw
ZXMtYnNwL2Jyb2FkY29tLW52cmFtLWNvbmZpZy9maWxlcy93YW5kYm9hcmQvYnJjbWZtYWM0MzMw
LXNkaW8udHh0Ij4KaHR0cHM6Ly9yY24tZWUuY29tL3JlcG9zL2dpdC9tZXRhLWZzbC1hIC4uLiAw
LXNkaW8udHh0PC9hPjxicj4KPGJyPgpDcmVhdGVkIGEgZm9sZGVyIGZpcm13YXJlL2JyY20gdW5k
ZXIgdG1wL3dvcmsvd2FuZGJvYXJkLWZzbGMtbGludXgtZ251ZWFiaS9jb3JlLWltYWdlLW1pbmlt
YWwvMS4wLXIwL3Jvb3Rmcy9saWI8YnI+Cjxicj4KRW5hYmxlZCB0aGUgZHJpdmVycyw8YnI+Cjxi
cj4KJmx0OyomZ3Q7IEJyb2FkY29tIEZ1bGxNQUMgd2lyZWxlc3MgY2FyZHMgc3VwcG9ydCCBIIEg
PGJyPgqBIIEgWypdIFNESU8gYnVzIGludGVyZmFjZSBzdXBwb3J0IDxicj4KPGJyPgpBdCB0aGUg
dGFyZ2V0IGdldHRpbmcgZm9sbG93aW5nIGVycm9ycyw8YnI+Cjxicj4Kcm9vdEB3YW5kYm9hcmQ6
fiMgZG1lc2cgfCBncmVwIGJyY208YnI+ClsgMS43MzkzMzNdIGJyY21mbWFjX3NkaW8gbW1jMTow
MDAxOjE6IERpcmVjdCBmaXJtd2FyZSBsb2FkIGZvciBicmNtL2JyY21mbWFjNDMzMC1zZGlvLmJp
biBmYWlsZWQgd2l0aCBlcnJvciAtMjxicj4KWyAxLjc0ODIwMF0gYnJjbWZtYWNfc2RpbyBtbWMx
OjAwMDE6MTogRmFsbGluZyBiYWNrIHRvIHVzZXIgaGVscGVyPGJyPgpbIDYyLjc4Mzg3OV0gYnJj
bWZtYWM6IGJyY21mX3NkaW9faHRjbGs6IEhUIEF2YWlsIHRpbWVvdXQgKDEwMDAwMDApOiBjbGtj
dGwgMHg1MDxicj4KWyA2My43OTM5NjNdIGJyY21mbWFjOiBicmNtZl9zZGlvX2h0Y2xrOiBIVCBB
dmFpbCB0aW1lb3V0ICgxMDAwMDAwKTogY2xrY3RsIDB4NTA8YnI+CnJvb3RAd2FuZGJvYXJkOn4j
IDxicj4KPGJyPgo8YnI+ClBsZWFzZSBzdWdnZXN0PC9kaXY+CjxzcGFuIHN0eWxlPSJGT05ULUZB
TUlMWTogJ0FyaWFsJywnc2Fucy1zZXJpZic7IENPTE9SOiBncmF5OyBGT05ULVNJWkU6IDcuNXB0
OyBtc28tZmFyZWFzdC1mb250LWZhbWlseTogJ1RpbWVzIE5ldyBSb21hbiciPg0KPFAgc3R5bGU9
Ik1BUkdJTjogMGluIDBpbiAwcHQiIGNsYXNzPU1zb05vcm1hbD48YnI+PGJyPjxmb250IHN0eWxl
PSJGT05ULUZBTUlMWTogJ0FyaWFsJywnc2Fucy1zZXJpZic7IENPTE9SOiBncmF5OyBGT05ULVNJ
WkU6IDlweCI+OjpESVNDTEFJTUVSOjo8YnI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLTwvZm9udD48L1A+DQo8UCBzdHlsZT0iTUFSR0lOOiAwaW4gMGluIDBwdCIgY2xhc3M9TXNv
Tm9ybWFsPjxmb250IHN0eWxlPSJGT05ULUZBTUlMWTogJ0FyaWFsJywnc2Fucy1zZXJpZic7IENP
TE9SOiBncmF5OyBGT05ULVNJWkU6IDExcHgiPlRoZSBjb250ZW50cyBvZiB0aGlzIGUtbWFpbCBh
bmQgYW55IGF0dGFjaG1lbnQocykgYXJlIGNvbmZpZGVudGlhbCBhbmQgaW50ZW5kZWQgZm9yIHRo
ZSBuYW1lZCByZWNpcGllbnQocykgb25seS48YnI+RS1tYWlsIHRyYW5zbWlzc2lvbiBpcyBub3Qg
Z3VhcmFudGVlZCB0byBiZSBzZWN1cmUgb3IgZXJyb3ItZnJlZSBhcyBpbmZvcm1hdGlvbiBjb3Vs
ZCBiZSBpbnRlcmNlcHRlZCwgY29ycnVwdGVkLCA8YnI+bG9zdCwgZGVzdHJveWVkLCBhcnJpdmUg
bGF0ZSBvciBpbmNvbXBsZXRlLCBvciBtYXkgY29udGFpbiB2aXJ1c2VzIGluIHRyYW5zbWlzc2lv
bi4gVGhlIGUgbWFpbCBhbmQgaXRzIGNvbnRlbnRzIDxicj4od2l0aCBvciB3aXRob3V0IHJlZmVy
cmVkIGVycm9ycykgc2hhbGwgdGhlcmVmb3JlIG5vdCBhdHRhY2ggYW55IGxpYWJpbGl0eSBvbiB0
aGUgb3JpZ2luYXRvciBvciBIQ0wgb3IgaXRzIGFmZmlsaWF0ZXMuIDxicj5WaWV3cyBvciBvcGlu
aW9ucywgaWYgYW55LCBwcmVzZW50ZWQgaW4gdGhpcyBlbWFpbCBhcmUgc29sZWx5IHRob3NlIG9m
IHRoZSBhdXRob3IgYW5kIG1heSBub3QgbmVjZXNzYXJpbHkgcmVmbGVjdCB0aGUgPGJyPnZpZXdz
IG9yIG9waW5pb25zIG9mIEhDTCBvciBpdHMgYWZmaWxpYXRlcy4gQW55IGZvcm0gb2YgcmVwcm9k
dWN0aW9uLCBkaXNzZW1pbmF0aW9uLCBjb3B5aW5nLCBkaXNjbG9zdXJlLCBtb2RpZmljYXRpb24s
IDxicj5kaXN0cmlidXRpb24gYW5kIC8gb3IgcHVibGljYXRpb24gb2YgdGhpcyBtZXNzYWdlIHdp
dGhvdXQgdGhlIHByaW9yIHdyaXR0ZW4gY29uc2VudCBvZiBhdXRob3JpemVkIHJlcHJlc2VudGF0
aXZlIG9mIDxicj5IQ0wgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGhhdmUgcmVjZWl2
ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBwbGVhc2UgZGVsZXRlIGl0IGFuZCBub3RpZnkgdGhlIHNl
bmRlciBpbW1lZGlhdGVseS4gPGJyPkJlZm9yZSBvcGVuaW5nIGFueSBlbWFpbCBhbmQvb3IgYXR0
YWNobWVudHMsIHBsZWFzZSBjaGVjayB0aGVtIGZvciB2aXJ1c2VzIGFuZCBvdGhlciBkZWZlY3Rz
LjwvZm9udD48L1A+DQo8UCBzdHlsZT0iTUFSR0lOOiAwaW4gMGluIDBwdCIgY2xhc3M9TXNvTm9y
bWFsPjxmb250IHN0eWxlPSJGT05ULUZBTUlMWTogJ0FyaWFsJywnc2Fucy1zZXJpZic7IENPTE9S
OiBncmF5OyBGT05ULVNJWkU6IDExcHgiPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS08L2ZvbnQ+PC9zcGFuPjwvUD48L2JvZHk+CjwvaHRtbD4K


