Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E6AD24C80039
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 11:13:48 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB2HDlR4012218
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 2 Dec 2010 09:13:47 -0800 (PST)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.1.206]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.01.0255.000;
	Thu, 2 Dec 2010 09:13:47 -0800
From: "Hatle, Mark" <mark.hatle@windriver.com>
To: "'lianhao.lu@intel.com'" <lianhao.lu@intel.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: [yocto] why cp in do_install() change file permission mode?
Thread-Index: AcuSCgEqLCrx7zmuQC2aEx+1L8oOfgAOj1n/
Date: Thu, 2 Dec 2010 17:13:45 +0000
Message-ID: <154B64CD119D7843A9EC39EC45EE7CD8038643@ALA-MBA.corp.ad.wrs.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1B90B6C267@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.82.31]
MIME-Version: 1.0
Subject: Re: why cp in do_install() change file permission mode?
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
X-List-Received-Date: Thu, 02 Dec 2010 17:13:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry for the brief response, but...

Do_install is performed under 'pseudo'.  Pseudo is a ld_preload that interc=
epts calls and captures permissions, users and groups settings to allow roo=
t-like actions to occur.

In order for the sstate components to be easily copied and manipulated outs=
ide of pseudo control, permissions are modified.

If you look at the produced package/filesystem image the permissions/owner/=
group will be as expected.  If you don't see that behavior then we should i=
nvestigate.

Note pseudo only captures the attributes as set.  So if cp, install, etc do=
esn't set it -- pseudo won't capture it.

----- Original Message -----
From: Lu, Lianhao [mailto:lianhao.lu@intel.com]
Sent: Thursday, December 02, 2010 02:16 AM=0A=
To: yocto@yoctoproject.org <yocto@yoctoproject.org>
Subject: [yocto] why cp in do_install() change file permission mode?

Hi fellows,

Could anyone tell me why does the cp in do_install() change the file permis=
sion mode? Thanks!

do_install () {
	rm -rf ${D}${installed_dir}
	install -d ${D}${installed_dir}
	cp -rp ${S}/* ${D}${installed_dir}
}

After "bitbake xxx -c install", I found the file under ${D}${installed_dir}=
 had the permission mode of 0744 while the corresponding file under directo=
ry ${S} had the mode of 0644. Why did this happen? How to avoid this kind o=
f mode change? Thanks!

Best Regards
-Lianhao Lu
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

