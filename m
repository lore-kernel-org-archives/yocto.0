Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7871BE0027E
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 12:47:47 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so490868yhf.35
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 12:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=xMfwRzdffDcr2crEsrRLwVlf2yJn1qi2Hl8pXrGEOEc=;
	b=MOcshomY1cBnN3DXNSsWsFOJLbW1QUYAhz9PeVFHOyW9Ik0XNfncoaGSaeA/m1IVQz
	/Nxs7jd9YsIyv8oY0DnjAeprH0w8UDTugmgIRY1+fxVPYqSWHU9Nf1CcrB+0p/Ju3brV
	UU1cqqj+mZe11R9JFKIRC1NQUAcJe/FIBoyyDkWkOkAyTOyDBD5s8ohdbivJLzG6cUkM
	U8fdgfanUcpKSK6xdpKGvILlWJEl4lYOoRuIhS5iGLhy6Rs1p9YGuSdrzb4WMIiVKaFd
	j1aPx37+WG5E1BQeMbJbXTKuk6oZkJIt99ndRPLj4uNLp4Ja5kRv/kkDhT4eiAVcIjyg
	oQPg==
Received: by 10.236.186.101 with SMTP id v65mr34658760yhm.23.1341949666605;
	Tue, 10 Jul 2012 12:47:46 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id n37sm33750182anq.0.2012.07.10.12.47.45
	(version=SSLv3 cipher=OTHER); Tue, 10 Jul 2012 12:47:45 -0700 (PDT)
Message-ID: <4FFC86E1.9020402@gmail.com>
Date: Tue, 10 Jul 2012 15:47:45 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: meta-baryon
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
X-List-Received-Date: Tue, 10 Jul 2012 19:47:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I took at look at the meta baryon NAS project and thought it was 
interesting and decided to build it on a n410 based miniITX motherboard.

I think I guessed correctly on how to integrate it in.
1. make the machine = n450 in local.conf
2. make distro = baryon in local.conf
3. add meta-baryon and meta-n450 layers to bblayer.conf
4. put the commercial license flag in local.conf.

The build was going good until I got into the webmin section below is 
the error.  I don't see an obvious problem (to me):

DEBUG: No locale files in this package
DEBUG: adding update-rc.d calls to postinst/postrm for webmin
DEBUG: LIBNAMES: pkg webmin-staticdev libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-zones libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-xinetd libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-webminlog libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-webmincron libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-webmin libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-usermin libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-useradmin libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-updown libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-tunnel libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-time libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-tcpwrappers libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-system-status libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-syslog-ng libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-syslog libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-status libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-sshd libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-software libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-smf libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-smart-status libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-shell libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-sgiexports libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-servers libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-samba libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-rbac libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-raid libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-quota libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-proftpd libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-proc libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-ppp-client libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-postgresql libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-phpini libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-passwd libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-pam libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-package-updates libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-nis libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-net libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-mysql libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-mount libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-mon libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-mediatomb libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-man libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-lvm libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-lpadmin libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-logrotate libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-ldap-useradmin libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-ldap-server libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-ldap-client libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-krb5 libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-ipsec libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-ipfw libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-ipfilter libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-inittab libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-init libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-inetd libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-idmapd libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-htaccess-htpasswd libs 0 bins 0 
sonames []
DEBUG: LIBNAMES: pkg webmin-module-hpuxexports libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-grub libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-format libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-firewall libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-file libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-fdisk libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-exports libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-dnsadmin libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-dhcpd libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-dfsadmin libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-custom libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-cron libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-change-user libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-bsdexports libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-bind8 libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-bandwidth libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-bacula-backup libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-backup-config libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-at libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-apache libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-ajaxterm libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-adsl-client libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-module-acl libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-locale libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-doc libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-dev libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin-dbg libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg webmin libs 0 bins 0 sonames []
NOTE: not generating shlibs
NOTE: DO PACKAGE QA
NOTE: Checking Package: webmin-module-zones
NOTE: Checking Package: webmin-module-xinetd
NOTE: Checking Package: webmin-module-webminlog
NOTE: Checking Package: webmin-module-webmincron
NOTE: Checking Package: webmin-module-webmin
NOTE: Checking Package: webmin-module-usermin
NOTE: Checking Package: webmin-module-useradmin
NOTE: Checking Package: webmin-module-updown
NOTE: Checking Package: webmin-module-tunnel
NOTE: Checking Package: webmin-module-time
NOTE: Checking Package: webmin-module-tcpwrappers
NOTE: Checking Package: webmin-module-system-status
NOTE: Checking Package: webmin-module-syslog-ng
NOTE: Checking Package: webmin-module-syslog
NOTE: Checking Package: webmin-module-status
NOTE: Checking Package: webmin-module-sshd
NOTE: Checking Package: webmin-module-software
NOTE: Checking Package: webmin-module-smf
NOTE: Checking Package: webmin-module-smart-status
NOTE: Checking Package: webmin-module-shell
NOTE: Checking Package: webmin-module-sgiexports
NOTE: Checking Package: webmin-module-servers
NOTE: Checking Package: webmin-module-samba
NOTE: Checking Package: webmin-module-rbac
NOTE: Checking Package: webmin-module-raid
NOTE: Checking Package: webmin-module-quota
NOTE: Checking Package: webmin-module-proftpd
NOTE: Checking Package: webmin-module-proc
NOTE: Checking Package: webmin-module-ppp-client
NOTE: Checking Package: webmin-module-postgresql
NOTE: Checking Package: webmin-module-phpini
NOTE: Checking Package: webmin-module-passwd
NOTE: Checking Package: webmin-module-pam
NOTE: Checking Package: webmin-module-package-updates
NOTE: Checking Package: webmin-module-nis
NOTE: Checking Package: webmin-module-net
NOTE: Checking Package: webmin-module-mysql
NOTE: Checking Package: webmin-module-mount
ERROR: Error executing a python function in 
/home/jim/meta-baryon/recipes-extended/webmin/webmin_1.570.bb:
KeyError: 'allarch'

ERROR: The stack trace of python calls that resulted in this 
exception/failure was:
ERROR:   File "do_package_qa", line 69, in <module>
ERROR:
ERROR:   File "do_package_qa", line 58, in do_package_qa
ERROR:
ERROR:   File "insane.bbclass", line 21, in package_qa_walk
ERROR:
ERROR:   File "insane.bbclass", line 25, in package_qa_check_arch
ERROR:
ERROR: The code that was being executed was:
ERROR:      0065:        bb.fatal("QA run found fatal errors. Please 
consider fixing them.")
ERROR:      0066:    bb.note("DONE with PACKAGE QA")
ERROR:      0067:
ERROR:      0068:
ERROR:  *** 0069:do_package_qa(d)
ERROR:      0070:
ERROR: (file: 'do_package_qa', lineno: 69, function: <module>)
ERROR:      0054: errorchecks.append(g[testmatrix[e]])
ERROR:      0055:
ERROR:      0056:        bb.note("Checking Package: %s" % package)
ERROR:      0057:        path = "%s/%s" % (pkgdest, package)
ERROR:  *** 0058:        if not package_qa_walk(path, warnchecks, 
errorchecks, skip, package, d):
ERROR:      0059:            walk_sane  = False
ERROR:      0060:        if not package_qa_check_rdepends(package, 
pkgdest, skip, d):
ERROR:      0061:            rdepends_sane = False
ERROR:      0062:
ERROR: (file: 'do_package_qa', lineno: 58, function: do_package_qa)
ERROR: Function failed: do_package_qa


