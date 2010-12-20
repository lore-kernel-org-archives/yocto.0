Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64B214C810E8
	for <yocto@yoctoproject.org>; Mon, 20 Dec 2010 01:49:05 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Dec 2010 23:48:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,200,1291622400"; d="scan'208";a="869972727"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 19 Dec 2010 23:48:33 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 20 Dec 2010 15:48:26 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 20 Dec 2010 15:48:27 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 20 Dec 2010 15:48:25 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>, "Lock, 
	Joshua" <joshua.lock@intel.com>
Date: Mon, 20 Dec 2010 15:48:23 +0800
Thread-Topic: Help to review installer bb class file
Thread-Index: Acudm/3gpIFanIWjRiOh+nrZt2+aHQCVBRrAAAp0uQA=
Message-ID: <789F9655DD1B8F43B48D77C5D30659733142B1C3@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733142A944@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659733142AF19@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659733142AF19@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help to review installer bb class file
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
X-List-Received-Date: Mon, 20 Dec 2010 07:49:05 -0000
X-Groupsio-MsgNum: 635
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_789F9655DD1B8F43B48D77C5D30659733142B1C3shsmsx501ccrcor_"

--_002_789F9655DD1B8F43B48D77C5D30659733142B1C3shsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all=20

I fix some bugs according to Lianhao, ke and dongxiao's input. This is the=
=20
new patch which includes below modifications:

1) add downloading file chksum
2) Use fakeroot to tar the installer tarball to make sure the files owners =
are root.
3) use cp instead of mv so that re-do bitbake will not cause error.


Thanks a lot!

Regards,
criping


> -----Original Message-----
> From: Ke, Liping
> Sent: Monday, December 20, 2010 10:47 AM
> To: Ke, Liping; Zhang, Jessica; Lu, Lianhao; Lock, Joshua
> Cc: yocto@yoctoproject.org
> Subject: RE: Help to review installer bb class file
>=20
> Hi, all
>=20
> Apart from Ke's suggestion that I need to add chksum for download file,
> any other feedbacks?
>=20
> Thanks& Regards,
> criping
>=20
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Ke, Liping
> > Sent: Friday, December 17, 2010 11:39 AM
> > To: Zhang, Jessica; Lu, Lianhao; Lock, Joshua
> > Cc: yocto@yoctoproject.org
> > Subject: [yocto] Help to review installer bb class file
> >
> > Hi, Jessica and Josh
> >
> > This is a simple bb class file for generating installer tarball. And
> > thanks for Lianhao/ke/Dexuan...'s help which saves me lots of
> efforts...
> >
> > It contains below steps:
> >
> > 1. fetch opkg source tarball to download location  and  copy other
> six
> > files (opkg conf, scripts, user conf) to workdir (do_fetch) 2.
> > unpacking  opkg source tarball to workdir (do_unpack). {So
> accordingly,
> > in installer script, I will remove the untar step} 3. when do_install,
> > tar the the opkg source file directory as well as other six files and
> > copy it to sdk output directory (tmp/deploy/sdk)
> >
> > After bitbaking, adt-installer.tar.bz2 will be in
> > ${build}/tmp/deploy/sdk and untar it. User can untar the tarball and
> > running yocto_install installation script.
> >
> > I only attach bb file in the attachment. For installer, after RP's
> > review, I will merge it into the final patch together with this bb
> file.
> > If you're interest about the current installer implementation, please
> > fetch it @ http://llu-piketon.sh.intel.com/installer.tar
> >
> >
> > Any comments are highly appreciated. Actually I am not very sure
> about
> > many options in bb file.
> >
> >
> > Thanks & Regards,
> > criping

--_002_789F9655DD1B8F43B48D77C5D30659733142B1C3shsmsx501ccrcor_
Content-Type: application/octet-stream; name="installerbb.patch"
Content-Description: installerbb.patch
Content-Disposition: attachment; filename="installerbb.patch"; size=1713;
	creation-date="Mon, 20 Dec 2010 15:45:35 GMT";
	modification-date="Tue, 21 Dec 2010 07:40:29 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1kZXZ0b29scy9pbnN0YWxsZXIvYWR0LWluc3RhbGxl
cl8xLjAuYmIgYi9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvaW5zdGFsbGVyL2FkdC1pbnN0YWxsZXJf
MS4wLmJiCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLmNjMjEyMzgKLS0tIC9k
ZXYvbnVsbAorKysgYi9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvaW5zdGFsbGVyL2FkdC1pbnN0YWxs
ZXJfMS4wLmJiCkBAIC0wLDAgKzEsNTAgQEAKK0RFU0NSSVBUSU9OID0gIk1ldGEgcGFja2FnZSBm
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
L29wa2ctc2RrLWk1ODYuY29uZiBcCisJICAiCitTUkNfVVJJW21kNXN1bV0gPSAiNWU4ODhkZDQ2
YTI1MmNjMjI2ODZiNzMyZmJlNDg2YjMiCitTUkNfVVJJW3NoYTI1NnN1bV0gPSAiZGVkOGYxNmY1
NWE2NDE2NzJmZTEzNDQ4NDI5OThkZWY1ZjUxNjNkN2ViYmQ1ZDU4YWIxNWM1NGIwNDkyNzY2MCIK
KworZmFrZXJvb3QgZG9faW5zdGFsbCAoKSB7CisJbWtkaXIgLXAgJHtBRFRfREVQTE9ZfQorCXJt
IC1mICR7QURUX0RFUExPWX0vYWR0LWluc3RhbGxlci50YXIuYnoyCisJcm0gLXJmICR7QURUX0RJ
Un0KKwlta2RpciAtcCAke0FEVF9ESVJ9IAorCWNwIC1yICR7V09SS0RJUn0vb3BrZy0qICR7QURU
X0RJUn0KKwljcCB5b2N0b18qICR7QURUX0RJUn0KKwljcCB1dGlsICR7QURUX0RJUn0KKwl0YXIg
Y2ZqICR7V09SS0RJUn0vYWR0X2luc3RhbGxlci50YXIuYnoyIGFkdC1pbnN0YWxsZXIKKwljcCBh
ZHRfaW5zdGFsbGVyLnRhci5iejIgJHtBRFRfREVQTE9ZfQorfQorCitkb19wYXRjaFtub2V4ZWNd
ID0gIjEiCitkb19jb25maWd1cmVbbm9leGVjXSA9ICIxIgorZG9fY29tcGlsZVtub2V4ZWNdID0g
IjEiCitkb19wYWNrYWdlW25vZXhlY10gPSAiMSIKK2RvX3BhY2thZ2Vfd3JpdGVbbm9leGVjXSA9
ICIxIgorZG9fcGFja2FnZV93cml0ZV9pcGtbbm9leGVjXSA9ICIxIgorZG9fcGFja2FnZV93cml0
ZV9ycG1bbm9leGVjXSA9ICIxIgorZG9fcGFja2FnZV93cml0ZV9kZWJbbm9leGVjXSA9ICIxIgor
CisK

--_002_789F9655DD1B8F43B48D77C5D30659733142B1C3shsmsx501ccrcor_--
