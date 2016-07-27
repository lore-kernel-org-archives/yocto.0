Return-Path: <jan.lindaker@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00183E00E4F; Wed, 27 Jul 2016 01:33:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 437 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Jul 2016 01:33:11 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD25CE00E44
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 01:33:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 4767E18186
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 10:25:53 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id nY0RaCWcm9uv for <yocto@yoctoproject.org>;
	Wed, 27 Jul 2016 10:25:51 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bastet.se.axis.com (Postfix) with ESMTP id CF7BF18181
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 10:25:51 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id BC8161B43
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 10:25:51 +0200 (CEST)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id AC54B1B40
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 10:25:51 +0200 (CEST)
Received: from XBOX02.axis.com (xbox02.axis.com [10.0.5.16])
	by seth.se.axis.com (Postfix) with ESMTP id AA72F443
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 10:25:51 +0200 (CEST)
Received: from XBOX01.axis.com (10.0.5.15) by XBOX02.axis.com (10.0.5.16) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Wed, 27 Jul 2016 10:25:51 +0200
Received: from XBOX01.axis.com ([fe80::29b8:9a78:62b3:f680]) by
	XBOX01.axis.com ([fe80::29b8:9a78:62b3:f680%22]) with mapi id
	15.00.1156.000; Wed, 27 Jul 2016 10:25:51 +0200
From: =?utf-8?B?SmFuIExpbmTDpWtlcg==?= <jan.lindaker@axis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Missing files in rootfs when adding links /bin ->/usr/bin and
	/lib -> /usr/lib  in recipe base-files
Thread-Index: AQHR59ikdOiLZdjWyEOe7SPrA6Onzw==
Date: Wed, 27 Jul 2016 08:25:51 +0000
Message-ID: <1469607951109.50216@axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Subject: Missing files in rootfs when adding links /bin ->/usr/bin and /lib -> /usr/lib in recipe base-files
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
X-List-Received-Date: Wed, 27 Jul 2016 08:33:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSdtIHRyeWluZyB0b8KgCgpXaGVuIGNoYW5naW5nIHBhY2thZ2UgYmFzZS1maWxlcywgc28gdGhh
dCB0aGUgL2JpbiBkaXJlY3RvcnkgaXMgc29mdCBsaW5rZWQgdG8gL3Vzci9iaW4gYW5kIHRoZSAv
bGliIGRpcmVjdG9yeSBpcyBzb2Z0IGxpbmtlZCB0byAvdXNyL2xpYiwgdGhlIHJlc3VsdGluZyBp
bWFnZS9yb290ZnMgZGlyZWN0b3J5IHN0cnVjdHVyZSBpcyBtaXNzaW5nIGEgbG90IG9mIGZpbGVz
LCBtb3N0IG9mIHdoaWNoIGFyZSB1bnJlbGF0ZWQgdG8gYW55IG9mIHRoZSAgZGlyZWN0b3JpZXMg
bWVudGlvbmVkIGFib3ZlLiBFLmcuIGZpbGU6Ly9ldGMvZnN0YWIgaXMgbWlzc2luZy4gV2hlbiBp
bnNwZWN0aW5nIHRoZSBiYXNlLWZpbGVzIC5ycG0gaXQgY29udGFpbnMgdGhlIGZpbGUgc3RydWN0
dXJl4oCLIHRoYXQgaXMgZXhwZWN0ZWQuIEZvciBzb21lIHJlYXNvbiB0aGUgcGFja2FnZSBpbnN0
YWxsIG9yZGVyIGNoYW5nZXMgd2hlbiBidWlsZGluZyByb290ZnMgd2hlbiB0aGUgbGlua3MgZnJv
bSAvbGliIGFuZCAvdXNyIGFyZSBwcmVzZW50LgoKSSBrbm93IHRvbyBsaXR0bGUgYWJvdXQgWW9j
dG8va2VybmVsIGltYWdlIGJ1aWxkaW5nIHRvIGJlIGFibGUgdG8gZGVidWcgdGhpcyBlZmZlY3Rp
dmVseSwgc2luY2UgdGhlcmUgaXMgbm8gZXJyb3JzIHJlcG9ydGVkIGFuZCB0aGUgYnVpbGQgcHJv
Y2VzcyBpcyBxdWl0ZSBjb21wbGV4LiBBbnkgc29sdXRpb25zIG9yIGhlbHAgd2l0aCB3aGVyZSB0
byBjb250aW51ZSBteSBpbnZlc3RpZ2F0aW9ucyB3b3VsZCBiZSBoaWdobHkgYXBwcmVjaWF0ZWQu
CgpBY3Rpb25zIHRvIHJlcHJvZHVjZToKSSBmaXJzdCBkZXRlY3RlZCB0aGUgcHJvYmxlbSBpbiBh
biBhZGFwdGF0aW9uIG9mIFlvY3RvLCBidXQgSSBoYXZlIHJlcHJvZHVjZWQgaXQgaW4gdGhlIHBy
b2plY3QgZGVzY3JpYmVkIGluIHRoZSBxdWljayBzdGFydDogaHR0cDovL3d3dy55b2N0b3Byb2pl
Y3Qub3JnL2RvY3MvMS44L3lvY3RvLXByb2plY3QtcXMveW9jdG8tcHJvamVjdC1xcy5odG1sCgox
LiBTZXQgdXAgYSBuZXcgWW9jdG8gcHJvamVjdCBhcyBkZXNjcmliZWQgaW4gdGhlIGxpbmsgYWJv
dmUKMi4gU2V0IHVwIGEgbmV3IGxheWVyIHdpdGggYSAuYmJhcHBlbmRmaWxlIGFzIGZvbGxvd3MK
Ci0tIC4uL3JlY2VwaWVzLWxpbmtkaXIvYmFzZS1maWxlcy9iYXNlLWZpbGVzXyUuYmJhcHBlbmQg
LS0tLS0tLS0tLS0tLS0tLS0tLQpkaXJzNzU1X3JlbW92ZSA9ICIvYmluIC9saWIiCgpkb19pbnN0
YWxsX2V4dHJhX2xpbmtzKCkgewrCoCDCoCBsbiAtc3J2ZiAke0R9L3Vzci9iaW4gJHtEfS9iaW4K
wqAgwqAgbG4gLXNydmYgJHtEfS91c3IvbGliICR7RH0vbGliCn0KCmFkZHRhc2sgaW5zdGFsbF9l
eHRyYV9saW5rcyBhZnRlciBkb19pbnN0YWxsIGJlZm9yZSBkb19wb3B1bGF0ZV9zeXNyb290IGRv
X3BhY2thZwoKLS0gLi4vbWV0YS1saW5rZGlyL2NvbmYvbGF5ZXIuY29uZiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiMgV2UgaGF2ZSBhIGNvbmYgYW5kIGNsYXNzZXMg
ZGlyZWN0b3J5LCBhZGQgdG8gQkJQQVRIwqAKQkJQQVRIID0uICIke0xBWUVSRElSfToiwqAKIyBX
ZSBoYXZlIGEgcGFja2FnZXMgZGlyZWN0b3J5LCBhZGQgdG8gQkJGSUxFU8KgCkJCRklMRVMgKz0g
IiR7TEFZRVJESVJ9L3JlY2lwZXMtKi8qLyouYmIgXMKgCsKgIMKgIMKgIMKgIMKgIMKgICR7TEFZ
RVJESVJ9L3JlY2lwZXMtKi8qLyouYmJhcHBlbmQiCsKgIMKgIMKgIMKgIMKgIMKgwqAKQkJGSUxF
X0NPTExFQ1RJT05TICs9ICJsaW5rZGlyIsKgCkJCRklMRV9QQVRURVJOX2xpbmtkaXIgOj0gIl4k
e0xBWUVSRElSfS8iwqAKQkJGSUxFX1BSSU9SSVRZX2xpbmtkaXIgOj0gIjYiCgotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KCjMuIEJ1aWxkIHRoZSBzb2Z0d2FyZQokIGJpdGJha2UgY29yZS1pbWFnZS1zYXRv
Cgo0LiBJbnNwZWN0IHRoZSAucnBtCnJwbSAtbHZwcSAuL3RtcC93b3JrL3FlbXV4ODYtcG9reS1s
aW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvZGVwbG95LXJwbXMvcWVtdXg4Ni9iYXNlLWZpbGVz
LWRldi0zLjAuMTQtcjg5LnFlbXV4ODYucnBtCk5vdGUgdGhhdDogL2JpbiAtPiAvdXNyL2Jpbiwg
L2xpYiAtPiAvdXNlci9saWIgYW5kIHRoYXQgL2V0Yy9mc3RhYiBpcyBwcmVzZW50Cgo1LiBTYXZl
IHRoZSBnZW5lcmF0ZWQgZmlsZS1zdHJ1Y3V0cmUKJCBwdXNoZCAuL3RtcC93b3JrL3FlbXV4ODYt
cG9reS1saW51eC9jb3JlLWltYWdlLXNhdG8vMS4wLXIwL3Jvb3RmcwokIExDX0FMTD1DIGZpbmQg
LiAtZXhlYyAic3RhdCAtYyAnJU4nIHt9IFw7IiA+IC90bXAveW9jdG9fbGlua19mcy50eHQKJCBw
b3BkCgo2LiBTYXZlIHRoZSBidWlsZCBsb2cgZnJvbSByb290ZnMgYnVpbGQKJCBjcCAudG1wL3dv
cmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAtcjAvdGVtcC9sb2cuZG9f
cm9vdGZzIC90bXAvbG9nLmRvX3Jvb3Rmcy5saW5rCgo3LiBUbyBiZSBhYmxlIHRvIGNvbXBhcmUg
d2l0aCB0aGUgb3JpZ2luYWwgZmlsZXN5c3RlbSwgZGlzYWJsZSB0aGUgY2hhbmdlcyBpbiB0aGUg
LmJiLWFwcGVuZCBmaWxlLCBpLmUuIGVkaXQgaXQgdG8gbG9vayBsaWtlIHRoaXM6Ci0tIC4uL3Jl
Y2VwaWVzLWxpbmtkaXIvYmFzZS1maWxlcy9iYXNlLWZpbGVzXyUuYmJhcHBlbmQgLS0tLS0tLS0t
LS0tLS0tLS0tLQojIGRpcnM3NTVfcmVtb3ZlID0gIi9iaW4gL2xpYiIKCmRvX2luc3RhbGxfZXh0
cmFfbGlua3MoKSB7CsKgIMKgIGxuIC1zcnZmICR7RH0vdXNyL2JpbiAke0R9L2JpbgrCoCDCoCBs
biAtc3J2ZiAke0R9L3Vzci9saWIgJHtEfS9saWIKfQoKIyBhZGR0YXNrIGluc3RhbGxfZXh0cmFf
bGlua3MgYWZ0ZXIgZG9faW5zdGFsbCBiZWZvcmUgZG9fcG9wdWxhdGVfc3lzcm9vdCBkb19wYWNr
YWcKCjguIFJlYnVpbGQgdGhlIHByb2plY3QKJCBiaXRiYWtlIC1jIGNsZWFuYWxsIGJhc2UtZmls
ZXMKJCBiaXRiYWtlIGNvcmUtaW1hZ2Utc2F0bwoKOS4gSW5zcGVjdCB0aGUgLnJwbQpycG0gLWx2
cHEgLi90bXAvd29yay9xZW11eDg2LXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2Rl
cGxveS1ycG1zL3FlbXV4ODYvYmFzZS1maWxlcy1kZXYtMy4wLjE0LXI4OS5xZW11eDg2LnJwbQpO
b3RlIHRoYXQ6IC9iaW4gYW5kIC9saWIgYXJlIG5vcm1hbCBkaXJlY3RvcmllcyBhbmQgdGhhdCAv
ZXRjL2ZzdGFiIGlzIHByZXNlbnQKCjEwLiBTYXZlIHRoZSBnZW5lcmF0ZWQgZmlsZS1zdHJ1Y3V0
cmUKJCBwdXNoZCAuL3RtcC93b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3JlLWltYWdlLXNhdG8v
MS4wLXIwL3Jvb3RmcwokIExDX0FMTD1DIGZpbmQgLiAtZXhlYyAic3RhdCAtYyAnJU4nIHt9IFw7
IiA+IC90bXAveW9jdG9fb3JpZ19mcy50eHQKJCBwb3BkCgoxMS4gU2F2ZSB0aGUgYnVpbGQgbG9n
IGZyb20gcm9vdGZzIGJ1aWxkCiQgY3AgLnRtcC93b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3Jl
LWltYWdlLXNhdG8vMS4wLXIwL3RlbXAvbG9nLmRvX3Jvb3RmcyAvdG1wL2xvZy5kb19yb290ZnMu
b3JpZwoKMTIuIENvbXBhcmUgdGhlIGRpZmZlcmVuY2UgYW5kIG5vdGUgdGhhdCBmaWxlcyBhcmUg
ZXhjbHVzaXZlbHkgbWlzc2luZyBmcm9tIHRoZSBidWlsZCB3aGVyZSB0aGUgc29mdC1saW5rcyB3
aGVyZSBhZGRlZC4KJCDCoGRpZmYgL3RtcC95b2N0b19vcmlnX2ZzLnR4dCAvdG1wL3lvY3RvX2xp
bmtzX2ZzLnR4dAoyZDEKPCAnLi9wcm9jJwoxNmQxNAo8ICcuL3Vzci9zaGFyZS9pbmZvJwozNjQz
ZDM2NDAKPCAnLi91c3Ivc2hhcmUvZGljdCcKNTA2OCw1MDcwZDUwNjQKPCAnLi91c3Ivc2hhcmUv
ZGJ1cy0xL2ludGVyZmFjZXMvb3JnLmZyZWVkZXNrdG9wLkNvbnNvbGVLaXQuU2VhdC54bWwnCjwg
Jy4vdXNyL3NoYXJlL2RidXMtMS9pbnRlcmZhY2VzL29yZy5mcmVlZGVza3RvcC5Db25zb2xlS2l0
LlNlc3Npb24ueG1sJwo8ICcuL3Vzci9zaGFyZS9kYnVzLTEvaW50ZXJmYWNlcy9vcmcuZnJlZWRl
c2t0b3AuQ29uc29sZUtpdC5NYW5hZ2VyLnhtbCcKNTA3NWQ1MDY4CjwgJy4vdXNyL3NoYXJlL2Ri
dXMtMS9zeXN0ZW0tc2VydmljZXMvb3JnLmZyZWVkZXNrdG9wLkNvbnNvbGVLaXQuc2VydmljZScK
NTM4MmQ1Mzc0CjwgJy4vdXNyL3NoYXJlL21hbicKNTM4NmQ1Mzc3CjwgJy4vdXNyL3NyYycKNTQ4
OGQ1NDc4CjwgJy4vdXNyL2Jpbi9jay1sYXVuY2gtc2Vzc2lvbicKNTYwM2Q1NTkyCjwgJy4vdXNy
L2Jpbi9jay1saXN0LXNlc3Npb25zJwo1Njc0ZDU2NjIKPCAnLi91c3IvYmluL2NrLWhpc3Rvcnkn
CjU3MDhkNTY5NQo8ICcuL3Vzci9zYmluL2NrLWxvZy1zeXN0ZW0tcmVzdGFydCcKNTcxMGQ1Njk2
CjwgJy4vdXNyL3NiaW4vY2stbG9nLXN5c3RlbS1zdG9wJwo1NzU4ZDU3NDMKPCAnLi91c3Ivc2Jp
bi9jay1sb2ctc3lzdGVtLXN0YXJ0Jwo1NzcxZDU3NTUKPCAnLi91c3Ivc2Jpbi9jb25zb2xlLWtp
dC1kYWVtb24nCjYxMTlkNjEwMgo8ICcuL3Vzci9saWIvbGliY2stY29ubmVjdG9yLnNvLjAuMC4w
Jwo2Mjg3ZDYyNjkKPCAnLi91c3IvbGliL2xpYmNrLWNvbm5lY3Rvci5zby4wJyAtPiAnbGliY2st
Y29ubmVjdG9yLnNvLjAuMC4wJwo3NTcwLDc1NzFkNzU1MQo8ICcuL3Vzci9saWIvQ29uc29sZUtp
dC9zY3JpcHRzL2NrLXN5c3RlbS1zdG9wJwo8ICcuL3Vzci9saWIvQ29uc29sZUtpdC9zY3JpcHRz
L2NrLXN5c3RlbS1yZXN0YXJ0Jwo3NTk3LDc1OTlkNzU3Ngo8ICcuL3Vzci9saWIvY29uc29sZWtp
dC9jay1nZXQteDExLWRpc3BsYXktZGV2aWNlJwo8ICcuL3Vzci9saWIvY29uc29sZWtpdC9jay1n
ZXQteDExLXNlcnZlci1waWQnCjwgJy4vdXNyL2xpYi9jb25zb2xla2l0L2NrLWNvbGxlY3Qtc2Vz
c2lvbi1pbmZvJwo3NzM5LDc3NDBkNzcxNQo8ICcuL2RldicKPCAnLi9ydW4nCjc4MTIsNzgxM2Q3
Nzg2CjwgJy4vaG9tZScKPCAnLi9ob21lL3Jvb3QnCjc4MThkNzc5MAo8ICcuL2V0Yy9uc3N3aXRj
aC5jb25mJwo3ODIzZDc3OTQKPCAnLi9ldGMvZGVmYXVsdC91c2JkJwo3OTEwZDc4ODAKPCAnLi9l
dGMvZnN0YWInCjc5MzZkNzkwNQo8ICcuL2V0Yy9ob3N0bmFtZScKNzk4M2Q3OTUxCjwgJy4vZXRj
L21vdGQnCjgwMjBkNzk4Nwo8ICcuL2V0Yy9wcm9maWxlJwo4MDg2ZDgwNTIKPCAnLi9ldGMvbXRh
YicgLT4gJy9wcm9jL21vdW50cycKODA5OGQ4MDYzCjwgJy4vZXRjL2ZpbGVzeXN0ZW1zJwo4MTM4
ZDgxMDIKPCAnLi9ldGMvaXNzdWUubmV0Jwo4MTYzZDgxMjYKPCAnLi9ldGMvaG9zdC5jb25mJwo4
MjI3ZDgxODkKPCAnLi9ldGMvZGJ1cy0xL3N5c3RlbS5kL0NvbnNvbGVLaXQuY29uZicKODQzNGQ4
Mzk1CjwgJy4vZXRjL2lzc3VlJwo4NDQ2ZDg0MDYKPCAnLi9ldGMvQ29uc29sZUtpdC9zZWF0cy5k
LzAwLXByaW1hcnkuc2VhdCcKODQ2MCw4NDY1ZDg0MTkKPCAnLi9ldGMvaW5wdXRyYycKPCAnLi9l
dGMvc2tlbCcKPCAnLi9ldGMvc2tlbC8uYmFzaHJjJwo8ICcuL2V0Yy9za2VsLy5wcm9maWxlJwo8
ICcuL3RtcCcKPCAnLi9zeXMnCjg1MzNkODQ4Ngo8ICcuL21lZGlhJwo4NTM1ZDg0ODcKPCAnLi92
YXIvbG9jaycgLT4gJy4uL3J1bi9sb2NrJwo4NTQ0LDg1NDljODQ5Ngo8ICcuL3Zhci92b2xhdGls
ZScKPCAnLi92YXIvcnVuJyAtPiAnLi4vcnVuJwo8ICcuL3Zhci90bXAnIC0+ICd2b2xhdGlsZS90
bXAnCjwgJy4vdmFyL2JhY2t1cHMnCjwgJy4vdmFyL2xvY2FsJwo8ICcuL3Zhci9sb2cnIC0+ICd2
b2xhdGlsZS9sb2cnCi0tLQo+ICcuL3Zhci9sb2cnCjg1NjJkODUwOAo8ICcuL3Zhci9saWIvbWlz
YycKCjEzLiBOb3RlIHRoYXQgdGhlIHBhY2thZ2UgaW5zdGFsbCBvcmRlciAoZm9yIHNvbWUgc3Ry
YW5nZSByYXNvbikgaGFzIGNoYW5nZWQgYnkgY29tcGFyaW5nIHRoZSByb290ZnMtbG9ncwpkaWZm
IC90bXAvbG9nLmRvX3Jvb3RmcwoudG1wL3dvcmsvcTE3NzUtcG9reS1saW51eC9heGlzLWltYWdl
LWN2cC8xLjAtcjAvdGVtcC9sb2cuZG9fcm9vdGZzCgoKQ29uY2x1c2lvbi9FeHBlY3RlZCByZXN1
bHRzCj09PT09PT09PT0KClRoZSByZXN1bHRpbmcgZmlsZS1zeXN0ZW0gaXMgbm90IHRoZSBpbnRl
bmRlZCB3aXRoIG1hbnkgbWlzc2luZyBmaWxlcyAocmVnYXJkbGVzcyBvZiBpZiB0aGVyZSBhcmUg
YnVncyBpbiBZb2N0bywgdGhlIHBhY2thZ2VzLCBvciB0aGF0IHRoZSBjaGFuZ2UgbWFkZSBpcyBu
b3QgcG9zc2libGUgdG8gZG8gZm9yIHRlY2huaWNhbCByZWFzb25zKS4gUmVnYXJkbGVzcyBvZiB0
aGUgcm9vdCBjYXVzZSBvZiB0aGUgYmFkIGZpbGUtc3lzdGVtLCBubyAgZXJyb3IgbWVzc2FnZXMg
YXJlIHByZXNlbnRlZCBieSBZb2N0byBvciB0aGUgcGFja2FnZSBpbnN0YWxsYXRpb24gcHJvY2Vz
cy4gSXQgaXMgdW5jbGVhciBmb3IgbWUgd2hldGhlciB0aGUgbGF0dGVyIGRlcGVuZHMgb24gYnVn
cyBpbiB0aGUgcnBtIHBhY2thZ2luZyBzeXN0ZW0sIHRoZSBwYWNrYWdlcyBvciB0aGF0IFlvY3Rv
IGVhdHMgdGhlIGVycm9yIHJlcG9ydGluZyBmcm9tIHJwbS4KCi9CZXN0IHJlZ2FyZHMgSmFuCgoK
ICAg

