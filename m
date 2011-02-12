Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 80C1F4C80053
	for <yocto@yoctoproject.org>; Fri, 11 Feb 2011 23:05:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Feb 2011 21:05:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,460,1291622400"; d="scan'208";a="886816163"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 11 Feb 2011 21:05:51 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 12 Feb 2011 13:05:46 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sat, 12 Feb 2011 13:05:44 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"mark.hatle@windriver.com" <mark.hatle@windriver.com>
Date: Sat, 12 Feb 2011 13:05:40 +0800
Thread-Topic: Master build error caused a small typo by commit today :
	fetch2: unpack revision
Thread-Index: AcvKcn5yiZZjPBwLS0ep3sKVS3OvqA==
Message-ID: <789F9655DD1B8F43B48D77C5D30659733294D0BE@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Master build error caused a small typo by commit today : fetch2: unpack revision
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
X-List-Received-Date: Sat, 12 Feb 2011 05:05:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all

Just found a small typo which caused built error today. The "%d" (file) sho=
uld be changed to "%s", otherwise, compile error.

Anybody could help to modify the small bug if you're happening sending patc=
hes.

Thanks a lot for your help!
criping





author	Mark Hatle <mark.hatle@windriver.com>	2011-02-11 17:43:54 (GMT)
committer	 Richard Purdie <richard.purdie@linuxfoundation.org>	2011-02-12 0=
0:30:29 (GMT)
commit	3faa635fd408695dd5b754fda3f6060dd670b81d (patch) (side-by-side diff)
tree	d0ba5d2d4acca9f7748029116f3a74877ee899c9
parent	e56f63a2843e5a7d70fd60e0aaed4d962a277da7 (diff)
download	poky-3faa635fd408695dd5b754fda3f6060dd670b81d.zip
poky-3faa635fd408695dd5b754fda3f6060dd670b81d.tar.gz
poky-3faa635fd408695dd5b754fda3f6060dd670b81d.tar.bz2



@@ -706,17 +720,17 @@ class FetchMethod(object):
                             destdir =3D "."
                         elif not os.access("%s/%s" % (rootdir, destdir), o=
s.F_OK):
                             os.makedirs("%s/%s" % (rootdir, destdir))
-                    cmd =3D 'cp -pPR %s %s/%s/' % (file, rootdir, destdir)
+                    #cmd =3D 'cp -pPR %s %s/%s/' % (file, rootdir, destdir=
)
+                    cmd =3D 'tar -cf - -C "%d" -ps . | tar -xf - -C "%s/%s=
/"' % (file, rootdir, destdir)





