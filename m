Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E13CE00CEA; Wed,  7 Dec 2016 06:58:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B680DE00C1C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 06:58:22 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 07 Dec 2016 06:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,310,1477983600"; d="scan'208";a="1078731613"
Received: from unknown (HELO [10.219.5.165]) ([10.219.5.165])
	by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2016 06:58:21 -0800
To: Sona Sarmadi <sona.sarmadi@enea.com>,
	"'mariano.lopez@intel.com'" <mariano.lopez@intel.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
References: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
	<0cfba38f-d090-68d0-5c09-a20a5f5e1973@linux.intel.com>
	<3230301C09DEF9499B442BBE162C5E48AC0CF8B7@SESTOEX04.enea.se>
	<3230301C09DEF9499B442BBE162C5E48AC0CF8F6@SESTOEX04.enea.se>
From: Mariano Lopez <mariano.lopez@linux.intel.com>
Message-ID: <d9a1a2ab-9791-f15d-24f2-ddbc31dbf0fa@linux.intel.com>
Date: Wed, 7 Dec 2016 08:58:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.0
MIME-Version: 1.0
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48AC0CF8F6@SESTOEX04.enea.se>
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
X-List-Received-Date: Wed, 07 Dec 2016 14:58:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 06/12/16 08:41, Sona Sarmadi wrote:
> Another qustion:
>
> We don't have recipes for libcurl, I guess both curl and libcurl CVEs are patched in the curl recipes, right?
> I think curl uses libcurl, and libcurl is built when building curl. 
>
> Those CVEs which are listed in the nvd.xml file under "cpe:/a:haxx:libcurl: are not detected and reported by cve-check tool.

In the case of libcurl, it is build using the curl recipe, and currently
cve-check class will look for BPN, so it won't check against libcurl.
Can you open a bug for this?

> [snip]


> It seems that this tool does not detect all CVEs, e.g. bind has some CVE patches but it is not reported, I tried all options below nothing is reported (no cve.log file):
> bitbake -c cve_check bind
> bitbake -k -c cve_check universe
> bitbake -k -c cve_check world
>
> There are some CVEs in bind (reported in nvd.xml file for our version cpe:/a:isc:bind:9.10.3"/> ) but cve.check-tool does not report them ex: (CVE-2016-2776). Do you know why?
>
>
> CVEs are reported for the following packages using e.g. "bitbake -k -c cve_check universe"
> or  "bitbake -c cve_check perl"
>  
> tmp/work/i586-poky-linux/perl/5.22.1-r0/cve/cve.log
> tmp/work/i586-poky-linux/foomatic-filters/4.0.17-r1/cve/cve.log
> tmp/work/i586-poky-linux/flex/2.6.0-r0/cve/cve.log
> tmp/work/i586-poky-linux/glibc/2.24-r0/cve/cve.log
> tmp/work/i586-poky-linux/unzip/1_6.0-r5/cve/cve.log
> tmp/work/i586-poky-linux/expat/2.2.0-r0/cve/cve.log
> tmp/work/i586-poky-linux/gnutls/3.5.3-r0/cve/cve.log
> tmp/work/i586-poky-linux/glibc-initial/2.24-r0/cve/cve.log
> tmp/work/i586-poky-linux/libxml2/2.9.4-r0/cve/cve.log
> tmp/work/i586-poky-linux/bzip2/1.0.6-r5/cve/cve.log
>
> We have more recipes which have CVE patches but they are not reported. 
> I have analyzed these; some of these CVEs are still marked as reserved on Mitre  and are not present in the nvd.xml files (although they are public (e.g. Busybox: 
> https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-2147).

cve-check-tool will only check against the database that got from the
nvd.xml files, and these files won't have information for not yet fully
disclosed CVEs, so that is why you will find these cases frequently in
OE recipes (Armin does a great job with CVEs).

>
> I don't understand why for instance bind CVEs are not detected and reported by cve-check tool?
> Is it because of cpe:/a:isc:bind? It looks for isc?

I need to check on this, unfortunately my proxies decided to not
download the database, I'll get back to you as soon as I can investigate
more.

>
> morty/poky/meta$ find . -name *CVE-201*.patch ./recipes-connectivity/ppp/ppp/fix-CVE-2015-3310.patch
>
> ./recipes-connectivity/bind/bind/CVE-2016-2776.patch ?
> ./recipes-connectivity/bind/bind/CVE-2016-1286_2.patch
> ./recipes-connectivity/bind/bind/CVE-2016-1285.patch
> ./recipes-connectivity/bind/bind/CVE-2016-1286_1.patch
> ./recipes-connectivity/bind/bind/CVE-2016-2088.patch
> ./recipes-connectivity/bind/bind/CVE-2016-2775.patch
>
> ./recipes-extended/unzip/unzip/CVE-2015-7696.patch
> ./recipes-extended/unzip/unzip/06-unzip60-alt-iconv-utf8_CVE-2015-1315.patch
> ./recipes-extended/unzip/unzip/CVE-2015-7697.patch
> ./recipes-extended/xinetd/xinetd/xinetd-CVE-2013-4342.patch
> ./recipes-extended/cpio/cpio-2.12/0001-Fix-CVE-2015-1197.patch
> ./recipes-extended/cracklib/cracklib/0001-Apply-patch-to-fix-CVE-2016-6318.patch
> ./recipes-extended/bzip2/bzip2-1.0.6/CVE-2016-3189.patch
> ./recipes-extended/grep/grep-2.5.1a/grep-CVE-2012-5667.patch
> ./recipes-extended/foomatic/foomatic-filters-4.0.17/CVE-2015-8327.patch
> ./recipes-extended/foomatic/foomatic-filters-4.0.17/CVE-2015-8560.patch
> ./recipes-multimedia/libtiff/files/CVE-2016-3945.patch
> ./recipes-multimedia/libtiff/files/CVE-2016-3623.patch
> ./recipes-multimedia/libtiff/files/CVE-2016-5323.patch
> ./recipes-multimedia/libtiff/files/CVE-2016-5321.patch
> ./recipes-multimedia/libtiff/files/CVE-2016-3991.patch
> ./recipes-multimedia/libtiff/files/CVE-2016-3622.patch
> ./recipes-multimedia/libtiff/files/CVE-2015-8781.patch
> ./recipes-multimedia/libtiff/files/CVE-2015-8784.patch
> ./recipes-multimedia/libtiff/files/CVE-2016-3186.patch
> ./recipes-multimedia/libtiff/files/CVE-2016-3990.patch
> ./recipes-multimedia/libtiff/files/CVE-2015-8665_8683.patch
> ./recipes-core/systemd/systemd/CVE-2016-7795.patch
> ./recipes-core/busybox/busybox/CVE-2016-2147_2.patch  <<< Reserved on Mitre: https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-2147
> ./recipes-core/busybox/busybox/CVE-2016-2147.patch
> ./recipes-core/busybox/busybox/CVE-2016-2148.patch <<< https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-2148
> ./recipes-devtools/elfutils/elfutils-0.148/elf_begin.c-CVE-2014-9447-fix.patch
> ./recipes-devtools/python/python3/CVE-2016-5636.patch
> ./recipes-devtools/python/python3/python3-fix-CVE-2016-1000110.patch
> ./recipes-devtools/python/python/CVE-2016-5636.patch
> ./recipes-devtools/python/python/python-fix-CVE-2016-1000110.patch
> ./recipes-devtools/qemu/qemu/0002-fix-CVE-2016-7423.patch
> ./recipes-devtools/qemu/qemu/0003-fix-CVE-2016-7908.patch
> ./recipes-devtools/perl/perl/perl-fix-CVE-2015-8607.patch
> ./recipes-devtools/perl/perl/perl-fix-CVE-2016-2381.patch
> ./recipes-devtools/perl/perl/perl-fix-CVE-2016-1238.patch
> ./recipes-devtools/perl/perl/perl-fix-CVE-2016-6185.patch
> ./recipes-devtools/gcc/gcc-6.2/CVE-2016-4490.patch
> ./recipes-devtools/flex/flex/CVE-2016-6354.patch
> ./recipes-bsp/grub/files/0001-Fix-CVE-2015-8370-Grub2-user-pass-vulnerability.patch
> ./recipes-support/nettle/nettle-2.7.1/CVE-2015-8804.patch
> ./recipes-support/nettle/nettle-2.7.1/CVE-2015-8803_8805.patch
> ./recipes-support/gnutls/gnutls/CVE-2016-7444.patch
> ./recipes-support/boost/boost/boost-CVE-2012-2677.patch
> ./recipes-support/gnupg/gnupg-1.4.7/GnuPG1-CVE-2012-6085.patch
> ./recipes-support/gnupg/gnupg-1.4.7/CVE-2013-4576.patch
> ./recipes-support/gnupg/gnupg-1.4.7/CVE-2013-4351.patch
> ./recipes-support/gnupg/gnupg-1.4.7/CVE-2013-4242.patch
>
> Thanks
> //Sona
>
>
>
>
>
>
>


