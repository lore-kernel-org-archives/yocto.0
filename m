Return-Path: <jaymin.dabhi@vivaldi.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F809E00D79; Mon, 12 Aug 2019 07:42:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,MIME_HEADER_CTYPE_ONLY,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [82.221.130.149 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.1 MIME_HEADER_CTYPE_ONLY 'Content-Type' found without required MIME
	*      headers
Received: from smtp.vivaldi.net (smtp.vivaldi.net [82.221.130.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9376DE00D59
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2019 07:42:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 5178F3F9D1
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2019 14:42:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net 5178F3F9D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
	t=1565620966; bh=qerDFelP7KrBZSnKvCIvTjdx/oIKzoQwp6LeC7DCa6c=;
	h=Date:From:To:Subject:From;
	b=nhZi5lsWiF35QRl0R9PnSKkR07No+CB+2/o2/5lavN6+0ZvD5sgCp4ojx8OkW/FAJ
	EmIPfIm0s+Kfkj40N0baF0bTPLtXKHTDlY+fFTh/67m/d252nIvcYpmwEFlAZu3ExW
	KrcDMIHRE9ThqmswkMESvybIUwNuBXvnAwn4QtuTEbkDRnc/F7AUAWdl3ao+rpG8fF
	zMA47Z87vuz3+xGLq5o/KTjKaGD4Vsa++wPbTjPaVi+nyo/v1t5p2CYxx9GXz7Ohri
	jUeRMySanVIRvmRrFLbFBSrH+CVtIieUBctEZnGicyjLiPaQu8R/rvWvR4MOPnLWdw
	PcV2TQW2O0a0Q==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo-new.viv.ext [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fl6RyGr95aI9 for <yocto@yoctoproject.org>;
	Mon, 12 Aug 2019 14:42:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net 812EF3F9D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
	t=1565620964; bh=qerDFelP7KrBZSnKvCIvTjdx/oIKzoQwp6LeC7DCa6c=;
	h=Date:From:To:Subject:From;
	b=W3FO88g66qu7e0fLZYo4Ae1T8hBzpnC5sKUVYIOlYUFkPZqCFue3AC0iXUyXCtoLC
	jMnfb/Hryqky5Z8/4Asn1+qLwGnKfao1SLpwLQj3uJSIbhe9o4MlcsPRkgCRF3Zh9l
	Hk5kj6EFFXrXz71vwbSFNkUZuCLaiHqQmZHXTd8yjDUtjy8HwywFDShKcvXXYaEV05
	yXGJVgH5/5z45I0bwk/cCO/vMVIk22gBbb5d+K4Iv0YKzwmusLE/hDFG7tcXvZdHP2
	CHzm3k+vAl+jBbVn1bAj1BNtUYSWp/KcF3SB2SKGTKk+y35KdWdSkXqq0m2XZrd83Z
	A45tYVzplv6mg==
Date: Mon, 12 Aug 2019 20:12:42 +0530
From: jaymin.dabhi@vivaldi.net
To: yocto@yoctoproject.org
Message-ID: <279ea8172bf6d37d284e8d5cb4efb077@vivaldi.net>
X-Sender: jaymin.dabhi@vivaldi.net
User-Agent: Roundcube Webmail/1.3.9
Subject: Segmentation fault | bitbake machine-image.bb | core dumped
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
X-List-Received-Date: Mon, 12 Aug 2019 14:42:48 -0000
X-Groupsio-MsgNum: 46265
Content-Type: multipart/mixed;
 boundary="=_0558c2a69676de7077664533021972d8"

--=_0558c2a69676de7077664533021972d8
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

Hello All,

Facing segmentation fault (core dumped) while doing bitbake.
I am using Yocto Jethro branch.

When I added python3-pip recipe (in local.conf) and started building 
image, segmentation fault occurred.
Although, I am able to bitbake python3-pip individually (i.e. bitbake 
python3-pip).
As per log my assumption is, core dumped is occurring at make_ext4fs 
execution.

Following are the error logs:

ERROR: Function failed: do_makesystem (log file is located at  
poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059)
ERROR: Logfile of failure stored in:  
poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059
Log data follows:
| DEBUG: Executing shell function do_makesystem
|  
poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/run.do_makesystem.15059: 
line 105: 15073 Segmentation fault      (core dumped) make_ext4fs -J -b 
1024 -s -a / -S  
poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs/etc/selinux/mls/contexts/files/file_contexts 
-l 768000000  
poky/build/tmp-glibc/deploy/images/apq8053-perf/apq8053-sysfs.ext4  
poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs
| WARNING:  
poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/run.do_makesystem.15059:1 
exit 139 from
|   make_ext4fs -J -b 1024 -s -a / -S  
poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs/etc/selinux/mls/contexts/files/file_contexts 
-l 768000000  
poky/build/tmp-glibc/deploy/images/apq8053-perf/apq8053-sysfs.ext4  
poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs
| ERROR: Function failed: do_makesystem (log file is located at  
poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059)
ERROR: Task 11 ( 
poky/meta-qti-bsp/recipes-products/images/machine-image.bb, 
do_makesystem) failed with exit code '1'


Whether python3-pip recipe is creating an issue or something else? 
(attached the python3-pip recipe file)
Please let me know.
Any suggestions are welcome.

Regards,
Jaymin

--=_0558c2a69676de7077664533021972d8
Content-Transfer-Encoding: base64
Content-Type: text/plain;
 name=python3-pip_6.1.1.bb
Content-Disposition: attachment;
 filename=python3-pip_6.1.1.bb;
 size=1148

U1VNTUFSWSA9ICJUaGUgUHlQQSByZWNvbW1lbmRlZCB0b29sIGZvciBpbnN0YWxsaW5nIFB5dGhv
biBwYWNrYWdlcyIKc0hPTUVQQUdFc3NzID0gImh0dHBzOi8vcHlwaS5weXRob24ub3JnL3B5cGkv
cGlwIgpTRUNUSU9OID0gImRldmVsL3B5dGhvbiIKTElDRU5TRSA9ICJNSVQiCkxJQ19GSUxFU19D
SEtTVU0gPSAiZmlsZTovL0xJQ0VOU0UudHh0O21kNT00NTY2NWI1MzAzMmMwMmIzNWUyOWRkYWI4
ZTYxZmE5MSIKClNSQ05BTUUgPSAicGlwIgpERVBFTkRTICs9ICJweXRob24zIHB5dGhvbjMtc2V0
dXB0b29scy1uYXRpdmUiCgpTUkNfVVJJID0gIiBcCiAgaHR0cDovL3B5cGkucHl0aG9uLm9yZy9w
YWNrYWdlcy9zb3VyY2UvcC8ke1NSQ05BTUV9LyR7U1JDTkFNRX0tJHtQVn0udGFyLmd6IFwKIgpT
UkNfVVJJW21kNXN1bV0gPSAiNmIxOWUwYTkzNGQ5ODJhNWE0Yjc5OGU5NTdjYjZkNDUiClNSQ19V
Uklbc2hhMjU2c3VtXSA9ICI4OWYzYjYyNmQyMjVlMDhlN2YyMGQ4NTA0NGFmYTQwZjYxMmViMzI4
NDQ4NDE2OTgxM2RjMmQwNjMxZjJhNTU2IgoKUyA9ICIke1dPUktESVJ9LyR7U1JDTkFNRX0tJHtQ
Vn0iCgppbmhlcml0IGRpc3R1dGlsczMKCkRJU1RVVElMU19JTlNUQUxMX0FSR1MgKz0gIi0taW5z
dGFsbC1saWI9JHtEfSR7bGliZGlyfS8ke1BZVEhPTl9ESVJ9L3NpdGUtcGFja2FnZXMiCgpkb19p
bnN0YWxsX3ByZXBlbmQoKSB7CiAgICBpbnN0YWxsIC1kICR7RH0vJHtsaWJkaXJ9LyR7UFlUSE9O
X0RJUn0vc2l0ZS1wYWNrYWdlcwp9CgojIFVzZSBzZXR1cHRvb2xzIHNpdGUucHkgaW5zdGVhZCwg
YXZvaWQgc2hhcmVkIHN0YXRlIGlzc3VlCmRvX2luc3RhbGxfYXBwZW5kKCkgewogICAgcm0gJHtE
fS8ke2xpYmRpcn0vJHtQWVRIT05fRElSfS9zaXRlLXBhY2thZ2VzL3NpdGUucHkKICAgIHJtICR7
RH0vJHtsaWJkaXJ9LyR7UFlUSE9OX0RJUn0vc2l0ZS1wYWNrYWdlcy9fX3B5Y2FjaGVfXy9zaXRl
LmNweXRob24tMzQucHljCn0KClJERVBFTkRTXyR7UE59ID0gIlwKICBweXRob24zLWNvbXBpbGUg
XAogIHB5dGhvbjMtaW8gXAogIHB5dGhvbjMtanNvbiBcCiAgcHl0aG9uMy1uZXRzZXJ2ZXIgXAog
IHB5dGhvbjMtc2V0dXB0b29scyBcCiAgcHl0aG9uMy11bml4YWRtaW4gXAogIHB5dGhvbjMteG1s
cnBjIFwKIgo=

--=_0558c2a69676de7077664533021972d8--
