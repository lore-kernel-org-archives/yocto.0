Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CE914C81234
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 02:46:13 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Dec 2010 00:46:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="359234533"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 09 Dec 2010 00:46:12 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 9 Dec 2010 16:44:40 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 9 Dec 2010
	16:44:39 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>, "Cui, 
	Dexuan" <dexuan.cui@intel.com>
Date: Thu, 9 Dec 2010 16:44:38 +0800
Thread-Topic: Add extra parameters for qemu script
Thread-Index: AcuXfVAo/k6TXiftRdSjnzeoSRwwQw==
Message-ID: <789F9655DD1B8F43B48D77C5D30659733104D391@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Add extra parameters for qemu script
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Dec 2010 08:46:14 -0000
X-Groupsio-MsgNum: 514
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_789F9655DD1B8F43B48D77C5D30659733104D391shsmsx501ccrcor_"

--_002_789F9655DD1B8F43B48D77C5D30659733104D391shsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Scott

The patch is in the attachment for your review. Below is some notes:

1) Basically I wouldn't like to change any logic of the original code.
2) -serial stdio and -nographic options are removed since they're be covere=
d by the extra parameters.
3) User input would be $poky-qemu qemux86 "<-nographic -m 300>"
4) -m input will be checked still. If it exceeds 128 for arm, it will be ch=
anged back to
   128M, same logic as before. And after parsing, -m option will be removed=
 and replaced by
    Kernel options mem=3D128M for avoiding some instability issue.

Generally I modified very few, just add an extra parameters with least intr=
usion of
Current logic.

Any comments are welcomed.=20
I will conduct more test with latest code in parallel.

Thanks a lot for your help!
 criping

--_002_789F9655DD1B8F43B48D77C5D30659733104D391shsmsx501ccrcor_
Content-Type: application/octet-stream; name="qemu_extra_options.patch"
Content-Description: qemu_extra_options.patch
Content-Disposition: attachment; filename="qemu_extra_options.patch";
	size=3652; creation-date="Thu, 09 Dec 2010 16:32:51 GMT";
	modification-date="Fri, 10 Dec 2010 08:28:05 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL3NjcmlwdHMvcG9reS1xZW11IGIvc2NyaXB0cy9wb2t5LXFlbXUKaW5kZXgg
YmMzMTJlMC4uZGNhZjZhMyAxMDA3NTUKLS0tIGEvc2NyaXB0cy9wb2t5LXFlbXUKKysrIGIvc2Ny
aXB0cy9wb2t5LXFlbXUKQEAgLTI3LDEzICsyNywxMyBAQCB1c2FnZSgpIHsKICAgICBlY2hvICIg
IFJPT1RGUyAtIHRoZSByb290ZnMgaW1hZ2UgZmlsZSBvciBuZnNyb290IGRpcmVjdG9yeSB0byB1
c2UiCiAgICAgZWNobyAiICBNQUNISU5FPXh5eiAtIHRoZSBtYWNoaW5lIG5hbWUgKG9wdGlvbmFs
LCBhdXRvZGV0ZWN0ZWQgZnJvbSBLRVJORUwgZmlsZW5hbWUgaWYgdW5zcGVjaWZpZWQpIgogICAg
IGVjaG8gIiAgQWRkaXRpb25hbCBRRU1VIGNvbW1hbmQtbGluZSBvcHRpb25zIGNhbiBiZSBwYXNz
ZWQgd2l0aDoiCi0gICAgZWNobyAiICAgIG5vZ3JhcGhpYyAtIGRpc2FibGVzIHZpZGVvIGNvbnNv
bGUiCi0gICAgZWNobyAiICAgIHNlcmlhbCAtIGVuYWJsZXMgYSBzZXJpYWwgY29uc29sZSBvbiAv
ZGV2L3R0eVMwIgorICAgIGVjaG8gIiAgICBcIjxleHRyYS1xZW11LW9wdGlvbnM+XCIgLSBlbmFi
bGVzIGV4dHJhIHFlbXUgb3B0aW9ucyIKICAgICBlY2hvICIiCiAgICAgZWNobyAiRXhhbXBsZXM6
IgogICAgIGVjaG8gIiAgJDAgcWVtdWFybSIKICAgICBlY2hvICIgICQwIHFlbXV4ODYtNjQgcG9r
eS1pbWFnZS1zYXRvIGV4dDMiCiAgICAgZWNobyAiICAkMCBwYXRoL3RvL2J6SW1hZ2UtcWVtdXg4
Ni5iaW4gcGF0aC90by9uZnNyb290ZGlyLyBzZXJpYWwiCisgICAgZWNobyAiICAkMCBxZW11eDg2
IFwiPC1ub2dyYXBoaWMgLW0gMjU2IC1zZXJpYWwgc3RkaW8+XCIiCiAgICAgZXhpdCAxCiB9CiAK
QEAgLTQ2LDcgKzQ2LDcgQEAgS0VSTkVMPSIiCiBGU1RZUEU9IiIKIFJPT1RGUz0iIgogTEFaWV9S
T09URlM9IiIKLVNDUklQVF9RRU1VX09QVD0iIgorU0NSSVBUX1FFTVVfRVhUUkFfT1BUPSIiCiBT
Q1JJUFRfS0VSTkVMX09QVD0iIgogCiBUTVBESVI9IiIKQEAgLTExNywxMiArMTE3LDEzIEBAIHdo
aWxlIFsgJGkgLWxlICQjIF07IGRvCiAgICAgICAgICAgICAgICAgdXNhZ2UKICAgICAgICAgICAg
IGZpCiAgICAgICAgICAgICA7OwotICAgICAgICAibm9ncmFwaGljIikKLSAgICAgICAgICAgIFND
UklQVF9RRU1VX09QVD0iJFNDUklQVF9RRU1VX09QVCAtbm9ncmFwaGljIgotICAgICAgICAgICAg
OzsKLSAgICAgICAgInNlcmlhbCIpCi0gICAgICAgICAgICBTQ1JJUFRfUUVNVV9PUFQ9IiRTQ1JJ
UFRfUUVNVV9PUFQgLXNlcmlhbCBzdGRpbyIKLSAgICAgICAgICAgIFNDUklQVF9LRVJORUxfT1BU
PSIkU0NSSVBUX0tFUk5FTF9PUFQgY29uc29sZT10dHlTMCIKKyAgICAgICAgXDwqXD4pCisgICAg
ICAgICAgICBTQ1JJUFRfUUVNVV9FWFRSQV9PUFQ9JGFyZworICAgICAgICAgICAgc2VyaWFsX29w
dGlvbj1gZXhwciAiJFNDUklQVF9RRU1VX0VYVFJBX09QVCIgOiAnLipcKC1zZXJpYWxbWzpzcGFj
ZTpdXSAqc3RkaW9cKSdgCisjaWYgLXNlcmlhbCBzdGRpbyBvcHRpb24gaXMgYWRkZWQsIHdlIG5l
ZWQgdG8gYWRkIGFuIGV4dHJhIG9wdGlvbiBpbiAkU0NSSVBUX0tFUk5FTF9PUFQKKyAgICAgICAg
ICAgIGlmIFsgISAteiAiJHNlcmlhbF9vcHRpb24iIF07IHRoZW4KKyAgICAgICAgICAgICAgU0NS
SVBUX0tFUk5FTF9PUFQ9IiRTQ1JJUFRfS0VSTkVMX09QVCBjb25zb2xlPXR0eVMwIgorICAgICAg
ICAgICAgZmkKICAgICAgICAgICAgIDs7CiAgICAgICAgICopCiAgICAgICAgICAgICAjIEEgZGly
ZWN0b3J5IG5hbWUgaXMgYW4gbmZzIHJvb3RmcwpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9wb2t5LXFl
bXUtaW50ZXJuYWwgYi9zY3JpcHRzL3Bva3ktcWVtdS1pbnRlcm5hbAppbmRleCA2MmMxMDQwLi5l
YTM5Nzg2IDEwMDc1NQotLS0gYS9zY3JpcHRzL3Bva3ktcWVtdS1pbnRlcm5hbAorKysgYi9zY3Jp
cHRzL3Bva3ktcWVtdS1pbnRlcm5hbApAQCAtMjksNiArMjksMjMgQEAKICMgICBST09URlMgLSB0
aGUgZGlzayBpbWFnZSBmaWxlIHRvIHVzZQogIwogCittZW1fc2l6ZT0tMQorCisjR2V0IHJpZCBv
ZiA8PiBhbmQgZ2V0IHRoZSBjb250ZW50cyBvZiBleHRyYSBxZW11IHJ1bm5pbmcgcGFyYW1zCitT
Q1JJUFRfUUVNVV9FWFRSQV9PUFQ9YGVjaG8gJFNDUklQVF9RRU1VX0VYVFJBX09QVCB8IHNlZCAt
ZSAncy88Ly8nIC1lICdzLz4vLydgCisjaWYgdXNlciBzZXQgcWVtdSBtZW1vcnksIGVnOiAtbSAy
NTYgaW4gcWVtdSBleHRyYSBwYXJhbXMsIHdlIG5lZWQgdG8gZG8gc29tZSAKKyMgdmFsaWRhdGlv
biBjaGVjaworbWVtX3NldD1gZXhwciAiJFNDUklQVF9RRU1VX0VYVFJBX09QVCIgOiAnLipcKC1t
W1s6c3BhY2U6XV0gKlswLTldKlwpJ2AKK2lmIFsgISAteiAiJG1lbV9zZXQiIF0gOyB0aGVuCisj
R2V0IG1lbW9yeSBzZXR0aW5nIHNpemUgZnJvbSB1c2VyIGlucHV0CisgIG1lbV9zaXplPWBlY2hv
ICRtZW1fc2V0IHwgc2VkICdzLy1tW1s6c3BhY2U6XV0gKi8vJ2AKKyAgZWNobyAiJFNDUklQVF9R
RU1VX0VYVFJBX09QVCIKK2ZpCisKK2lmIFsgJG1lbV9zaXplIC1ndCAwIF07IHRoZW4KKyAgUUVN
VV9NRU1PUlk9IiRtZW1fc2l6ZSJNCitmaQorCiBpZiBbIC16ICIkUUVNVV9NRU1PUlkiIF07IHRo
ZW4KICAgICBjYXNlICIkTUFDSElORSIgaW4KICAgICAgICAgInFlbXV4ODYiKQpAQCAtNjAsNiAr
NzcsNyBAQCBpZiBbICIkTUFDSElORSIgPSAicWVtdWFybSIgXTsgdGhlbgogICAgICAgICBlY2hv
ICJXQVJOSU5HOiBxZW11YXJtIGRvZXMgbm90IHN1cHBvcnQgPiAxMjhNIG9mIFJBTS4iCiAgICAg
ICAgIGVjaG8gIioqKiBDaGFuZ2luZyBRRU1VX01FTU9SWSB0byBkZWZhdWx0IG9mIDEyOE0gKioq
IgogICAgICAgICBRRU1VX01FTU9SWT0iMTI4TSIKKyAgICAgICAgU0NSSVBUX1FFTVVfRVhUUkFf
T1BUPWBlY2hvICRTQ1JJUFRfUUVNVV9FWFRSQV9PUFQgfCBzZWQgLWUgInMvJG1lbV9zZXQvLW0g
MTI4LyIgYAogICAgIGZpCiBmaQogCkBAIC00NDEsOCArNDU5LDggQEAgZmkKIAogZWNobyAiUnVu
bmluZyAkUUVNVS4uLiIKICMgLW5vLXJlYm9vdCBpcyBhIG1hbmRhdG9yeSBvcHRpb24gLSBzZWUg
YnVnICMxMDAKLWVjaG8gJFFFTVVCSU4gLWtlcm5lbCAkS0VSTkVMICRRRU1VT1BUSU9OUyAkU0VS
SUFMT1BUUyAtbm8tcmVib290ICRTQ1JJUFRfUUVNVV9DTURMSU5FX09QVCAtLWFwcGVuZCAnIick
S0VSTkNNRExJTkUgJFNDUklQVF9LRVJORUxfT1BUJyInCi0kUUVNVUJJTiAta2VybmVsICRLRVJO
RUwgJFFFTVVPUFRJT05TICRTRVJJQUxPUFRTIC1uby1yZWJvb3QgJFNDUklQVF9RRU1VX09QVCAt
LWFwcGVuZCAiJEtFUk5DTURMSU5FICRTQ1JJUFRfS0VSTkVMX09QVCIgfHwgL2Jpbi90cnVlCitl
Y2hvICRRRU1VQklOIC1rZXJuZWwgJEtFUk5FTCAkUUVNVU9QVElPTlMgJFNFUklBTE9QVFMgLW5v
LXJlYm9vdCAkU0NSSVBUX1FFTVVfRVhUUkFfT1BUIC0tYXBwZW5kICciJyRLRVJOQ01ETElORSAk
U0NSSVBUX0tFUk5FTF9PUFQnIicKKyRRRU1VQklOIC1rZXJuZWwgJEtFUk5FTCAkUUVNVU9QVElP
TlMgJFNFUklBTE9QVFMgLW5vLXJlYm9vdCAkU0NSSVBUX1FFTVVfRVhUUkFfT1BUIC0tYXBwZW5k
ICIkS0VSTkNNRExJTkUgJFNDUklQVF9LRVJORUxfT1BUIiB8fCAvYmluL3RydWUKIAogY2xlYW51
cAogCg==

--_002_789F9655DD1B8F43B48D77C5D30659733104D391shsmsx501ccrcor_--
