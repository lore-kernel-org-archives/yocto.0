Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABC464C80FBE
	for <yocto@yoctoproject.org>; Thu, 16 Dec 2010 21:40:37 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 19:40:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="869173613"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 19:40:36 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 11:39:24 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 17 Dec 2010 11:39:23 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Lock, Joshua" <joshua.lock@intel.com>
Date: Fri, 17 Dec 2010 11:39:22 +0800
Thread-Topic: Help to review installer bb class file
Thread-Index: Acudm/3gpIFanIWjRiOh+nrZt2+aHQ==
Message-ID: <789F9655DD1B8F43B48D77C5D30659733142A944@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Help to review installer bb class file
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
X-List-Received-Date: Fri, 17 Dec 2010 03:40:37 -0000
X-Groupsio-MsgNum: 616
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_789F9655DD1B8F43B48D77C5D30659733142A944shsmsx501ccrcor_"

--_002_789F9655DD1B8F43B48D77C5D30659733142A944shsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica and Josh

This is a simple bb class file for generating installer tarball. And thanks=
 for Lianhao/ke/Dexuan...'s
help which saves me lots of efforts...

It contains below steps:

1. fetch opkg source tarball to download location  and  copy other six file=
s (opkg conf, scripts, user conf) to workdir (do_fetch)
2. unpacking  opkg source tarball to workdir (do_unpack). {So accordingly, =
in installer script, I will remove the untar step}
3. when do_install, tar the the opkg source file directory as well as other=
 six files and copy it to sdk output directory (tmp/deploy/sdk)

After bitbaking, adt-installer.tar.bz2 will be in ${build}/tmp/deploy/sdk a=
nd untar it. User can untar the tarball and running yocto_install installat=
ion script.

I only attach bb file in the attachment. For installer, after RP's review, =
I will merge it into the final patch together with this bb file.
If you're interest about the current installer implementation, please fetch=
 it @=20
http://llu-piketon.sh.intel.com/installer.tar


Any comments are highly appreciated. Actually I am not very sure about many=
 options in bb file.


Thanks & Regards,
criping

--_002_789F9655DD1B8F43B48D77C5D30659733142A944shsmsx501ccrcor_
Content-Type: application/octet-stream; name="installer_bb.patch"
Content-Description: installer_bb.patch
Content-Disposition: attachment; filename="installer_bb.patch"; size=1548;
	creation-date="Fri, 17 Dec 2010 11:00:13 GMT";
	modification-date="Sat, 18 Dec 2010 02:57:46 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1kZXZ0b29scy9pbnN0YWxsZXIvYWR0LWluc3RhbGxl
cl8xLjAuYmIgYi9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvaW5zdGFsbGVyL2FkdC1pbnN0YWxsZXJf
MS4wLmJiCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLjc5NmQ1OGIKLS0tIC9k
ZXYvbnVsbAorKysgYi9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvaW5zdGFsbGVyL2FkdC1pbnN0YWxs
ZXJfMS4wLmJiCkBAIC0wLDAgKzEsNDkgQEAKK0RFU0NSSVBUSU9OID0gIk1ldGEgcGFja2FnZSBm
b3IgY3JlYXRpbmcgc2RrIGluc3RhbGxlciB0YXJiYWxsIgorTElDX0ZJTEVTX0NIS1NVTSA9ICJm
aWxlOi8vJHtQT0tZQkFTRX0vTElDRU5TRTttZDU9M2Y0MGQ3OTk0Mzk3MTA5Mjg1ZWM3YjgxZmRl
YjNiNTggXAorICAgICAgICAgICAgICAgICAgICBmaWxlOi8vJHtQT0tZQkFTRX0vbWV0YS9DT1BZ
SU5HLk1JVDttZDU9M2RhOWNmYmNiNzg4YzgwYTAzODQzNjFiNGRlMjA0MjAiCitMSUNFTlNFID0g
Ik1JVCIKKworQUxMT1dfRU1QVFkgPSAiMSIKKworUEFDS0FHRVMgPSAiIgorUEFDS0FHRV9BUkNI
ID0gImFsbCIKKworUFIgPSAicjAiCisKK0FEVF9ERVBMT1kgPSAiJHtUTVBESVJ9L2RlcGxveS9z
ZGsvIgorQURUX0RJUiA9ICIke1dPUktESVJ9L2FkdC1pbnN0YWxsZXIvIgorCitTID0gIiR7V09S
S0RJUn0iCisKK1NSQ19VUkkgPSAiaHR0cDovL29wa2cuZ29vZ2xlY29kZS5jb20vZmlsZXMvb3Br
Zy0wLjEuOC50YXIuZ3ogXAorICAgICAgICAgICBmaWxlOi8veW9jdG9faW5zdGFsbGVyIFwKKyAg
ICAgICAgICAgZmlsZTovL3lvY3RvX2luc3RhbGxlcl9pbnRlcm5hbCBcCisgICAgICAgICAgIGZp
bGU6Ly91dGlsIFwKKyAgICAgICAgICAgZmlsZTovL3lvY3RvX2luc3RhbGxlci5jb25mIFwKKyAg
ICAgICAgICAgZmlsZTovL29wa2ctc2RrLXg4Nl82NC5jb25mIFwKKyAgICAgICAgICAgZmlsZTov
L29wa2ctc2RrLWk1ODYuY29uZiBcCisJICAiCisKKworZG9faW5zdGFsbCgpIHsKKwlta2RpciAt
cCAke0FEVF9ERVBMT1l9CisJcm0gLWYgJHtBRFRfREVQTE9ZfS9hZHQtaW5zdGFsbGVyLnRhci5i
ejIKKwlybSAtcmYgJHtBRFRfRElSfQorCW1rZGlyIC1wICR7QURUX0RJUn0gCisJbXYgJHtXT1JL
RElSfS9vcGtnLSogJHtBRFRfRElSfQorCW12IHlvY3RvXyogJHtBRFRfRElSfQorCW12IHV0aWwg
JHtBRFRfRElSfQorCXRhciBjZmogYWR0X2luc3RhbGxlci50YXIuYnoyIGFkdC1pbnN0YWxsZXIK
KwljcCBhZHRfaW5zdGFsbGVyLnRhci5iejIgJHtBRFRfREVQTE9ZfQorfQorCitkb19wYXRjaFtu
b2V4ZWNdID0gIjEiCitkb19jb25maWd1cmVbbm9leGVjXSA9ICIxIgorZG9fY29tcGlsZVtub2V4
ZWNdID0gIjEiCitkb19wYWNrYWdlW25vZXhlY10gPSAiMSIKK2RvX3BhY2thZ2Vfd3JpdGVbbm9l
eGVjXSA9ICIxIgorZG9fcGFja2FnZV93cml0ZV9pcGtbbm9leGVjXSA9ICIxIgorZG9fcGFja2Fn
ZV93cml0ZV9ycG1bbm9leGVjXSA9ICIxIgorZG9fcGFja2FnZV93cml0ZV9kZWJbbm9leGVjXSA9
ICIxIgorCisK

--_002_789F9655DD1B8F43B48D77C5D30659733142A944shsmsx501ccrcor_--
