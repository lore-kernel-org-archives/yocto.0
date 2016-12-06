Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44A66E00CC3; Tue,  6 Dec 2016 06:45:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 197 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Dec 2016 06:45:05 PST
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3649E00CAE
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 06:45:05 -0800 (PST)
Received: from 1cEGwD-0006MQ-Vf by out10a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1cEGwE-0006NS-U5; Tue, 06 Dec 2016 06:41:46 -0800
Received: by emcmailer; Tue, 06 Dec 2016 06:41:46 -0800
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10a.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1cEGwD-0006MQ-Vf; Tue, 06 Dec 2016 06:41:45 -0800
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0294.000; Tue, 6 Dec 2016 15:41:41 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: 'Mariano Lopez' <mariano.lopez@linux.intel.com>,
	"'mariano.lopez@intel.com'" <mariano.lopez@intel.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: [yocto] cve-checker tool
Thread-Index: AdIwLntiYxJel4UHQ6ebcs09cROndQAEuizQADVV+gAHomiEgAALVEnA
Date: Tue, 6 Dec 2016 14:41:41 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48AC0CF8F6@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
	<0cfba38f-d090-68d0-5c09-a20a5f5e1973@linux.intel.com>
	<3230301C09DEF9499B442BBE162C5E48AC0CF8B7@SESTOEX04.enea.se>
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48AC0CF8B7@SESTOEX04.enea.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.1.188]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: Re: cve-checker tool
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
X-List-Received-Date: Tue, 06 Dec 2016 14:45:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Another qustion:

We don't have recipes for libcurl, I guess both curl and libcurl CVEs are p=
atched in the curl recipes, right?
I think curl uses libcurl, and libcurl is built when building curl.=20

Those CVEs which are listed in the nvd.xml file under "cpe:/a:haxx:libcurl:=
 are not detected and reported by cve-check tool.

//Sona=20

-----Original Message-----
From: Sona Sarmadi=20
Sent: den 6 december 2016 15:28
To: Mariano Lopez <mariano.lopez@linux.intel.com>; mariano.lopez@intel.com;=
 yocto@yoctoproject.org
Subject: RE: [yocto] cve-checker tool

Hi Mariano, all,

> If there is a version affected by a CVE it will look for a patch that=20
> solves that particular CVE using the the metadata in the patch format.
> For example, the current bind version is affected by CVE-2016-1285,=20
> but there is patch for that, so the cve-check class will find this and=20
> will generate a log file saying the vulnerability has been addressed.

It seems that this tool does not detect all CVEs, e.g. bind has some CVE pa=
tches but it is not reported, I tried all options below nothing is reported=
 (no cve.log file):
bitbake -c cve_check bind
bitbake -k -c cve_check universe
bitbake -k -c cve_check world

There are some CVEs in bind (reported in nvd.xml file for our version cpe:/=
a:isc:bind:9.10.3"/> ) but cve.check-tool does not report them ex: (CVE-201=
6-2776). Do you know why?


CVEs are reported for the following packages using e.g. "bitbake -k -c cve_=
check universe"
or  "bitbake -c cve_check perl"
=20
tmp/work/i586-poky-linux/perl/5.22.1-r0/cve/cve.log
tmp/work/i586-poky-linux/foomatic-filters/4.0.17-r1/cve/cve.log
tmp/work/i586-poky-linux/flex/2.6.0-r0/cve/cve.log
tmp/work/i586-poky-linux/glibc/2.24-r0/cve/cve.log
tmp/work/i586-poky-linux/unzip/1_6.0-r5/cve/cve.log
tmp/work/i586-poky-linux/expat/2.2.0-r0/cve/cve.log
tmp/work/i586-poky-linux/gnutls/3.5.3-r0/cve/cve.log
tmp/work/i586-poky-linux/glibc-initial/2.24-r0/cve/cve.log
tmp/work/i586-poky-linux/libxml2/2.9.4-r0/cve/cve.log
tmp/work/i586-poky-linux/bzip2/1.0.6-r5/cve/cve.log

We have more recipes which have CVE patches but they are not reported.=20
I have analyzed these; some of these CVEs are still marked as reserved on M=
itre  and are not present in the nvd.xml files (although they are public (e=
.g. Busybox:=20
https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-2147).

I don't understand why for instance bind CVEs are not detected and reported=
 by cve-check tool?
Is it because of cpe:/a:isc:bind? It looks for isc?

morty/poky/meta$ find . -name *CVE-201*.patch ./recipes-connectivity/ppp/pp=
p/fix-CVE-2015-3310.patch

./recipes-connectivity/bind/bind/CVE-2016-2776.patch ?
./recipes-connectivity/bind/bind/CVE-2016-1286_2.patch
./recipes-connectivity/bind/bind/CVE-2016-1285.patch
./recipes-connectivity/bind/bind/CVE-2016-1286_1.patch
./recipes-connectivity/bind/bind/CVE-2016-2088.patch
./recipes-connectivity/bind/bind/CVE-2016-2775.patch

./recipes-extended/unzip/unzip/CVE-2015-7696.patch
./recipes-extended/unzip/unzip/06-unzip60-alt-iconv-utf8_CVE-2015-1315.patc=
h
./recipes-extended/unzip/unzip/CVE-2015-7697.patch
./recipes-extended/xinetd/xinetd/xinetd-CVE-2013-4342.patch
./recipes-extended/cpio/cpio-2.12/0001-Fix-CVE-2015-1197.patch
./recipes-extended/cracklib/cracklib/0001-Apply-patch-to-fix-CVE-2016-6318.=
patch
./recipes-extended/bzip2/bzip2-1.0.6/CVE-2016-3189.patch
./recipes-extended/grep/grep-2.5.1a/grep-CVE-2012-5667.patch
./recipes-extended/foomatic/foomatic-filters-4.0.17/CVE-2015-8327.patch
./recipes-extended/foomatic/foomatic-filters-4.0.17/CVE-2015-8560.patch
./recipes-multimedia/libtiff/files/CVE-2016-3945.patch
./recipes-multimedia/libtiff/files/CVE-2016-3623.patch
./recipes-multimedia/libtiff/files/CVE-2016-5323.patch
./recipes-multimedia/libtiff/files/CVE-2016-5321.patch
./recipes-multimedia/libtiff/files/CVE-2016-3991.patch
./recipes-multimedia/libtiff/files/CVE-2016-3622.patch
./recipes-multimedia/libtiff/files/CVE-2015-8781.patch
./recipes-multimedia/libtiff/files/CVE-2015-8784.patch
./recipes-multimedia/libtiff/files/CVE-2016-3186.patch
./recipes-multimedia/libtiff/files/CVE-2016-3990.patch
./recipes-multimedia/libtiff/files/CVE-2015-8665_8683.patch
./recipes-core/systemd/systemd/CVE-2016-7795.patch
./recipes-core/busybox/busybox/CVE-2016-2147_2.patch  <<< Reserved on Mitre=
: https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-2147
./recipes-core/busybox/busybox/CVE-2016-2147.patch
./recipes-core/busybox/busybox/CVE-2016-2148.patch <<< https://www.cve.mitr=
e.org/cgi-bin/cvename.cgi?name=3DCVE-2016-2148
./recipes-devtools/elfutils/elfutils-0.148/elf_begin.c-CVE-2014-9447-fix.pa=
tch
./recipes-devtools/python/python3/CVE-2016-5636.patch
./recipes-devtools/python/python3/python3-fix-CVE-2016-1000110.patch
./recipes-devtools/python/python/CVE-2016-5636.patch
./recipes-devtools/python/python/python-fix-CVE-2016-1000110.patch
./recipes-devtools/qemu/qemu/0002-fix-CVE-2016-7423.patch
./recipes-devtools/qemu/qemu/0003-fix-CVE-2016-7908.patch
./recipes-devtools/perl/perl/perl-fix-CVE-2015-8607.patch
./recipes-devtools/perl/perl/perl-fix-CVE-2016-2381.patch
./recipes-devtools/perl/perl/perl-fix-CVE-2016-1238.patch
./recipes-devtools/perl/perl/perl-fix-CVE-2016-6185.patch
./recipes-devtools/gcc/gcc-6.2/CVE-2016-4490.patch
./recipes-devtools/flex/flex/CVE-2016-6354.patch
./recipes-bsp/grub/files/0001-Fix-CVE-2015-8370-Grub2-user-pass-vulnerabili=
ty.patch
./recipes-support/nettle/nettle-2.7.1/CVE-2015-8804.patch
./recipes-support/nettle/nettle-2.7.1/CVE-2015-8803_8805.patch
./recipes-support/gnutls/gnutls/CVE-2016-7444.patch
./recipes-support/boost/boost/boost-CVE-2012-2677.patch
./recipes-support/gnupg/gnupg-1.4.7/GnuPG1-CVE-2012-6085.patch
./recipes-support/gnupg/gnupg-1.4.7/CVE-2013-4576.patch
./recipes-support/gnupg/gnupg-1.4.7/CVE-2013-4351.patch
./recipes-support/gnupg/gnupg-1.4.7/CVE-2013-4242.patch

Thanks
//Sona








