Return-Path: <john.williams@xilinx.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0188.outbound.messaging.microsoft.com [213.199.154.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DB65E00740
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 20:29:19 -0700 (PDT)
Received: from mail200-db8-R.bigfish.com (10.174.8.252) by
	DB8EHSOBE042.bigfish.com (10.174.4.105) with Microsoft SMTP Server id
	14.1.225.23; Tue, 12 Mar 2013 03:29:17 +0000
Received: from mail200-db8 (localhost [127.0.0.1])	by
	mail200-db8-R.bigfish.com (Postfix) with ESMTP id 7EFA79800E4	for
	<yocto@yoctoproject.org>; Tue, 12 Mar 2013 03:29:17 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: 5
X-BigFish: VPS5(zz4015I9db4mzz1f42h1ee6h1de0h1202h1e76h1d1ah1d2ahzzz2fh95h668h839h944hd24hf0ah119dh1220h1288h12a5h12a9h12bdh137ah13b6h1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah906i1155h)
Received-SPF: pass (mail200-db8: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=john.williams@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail200-db8 (localhost.localdomain [127.0.0.1]) by mail200-db8
	(MessageSwitch) id 1363058955604936_1797;
	Tue, 12 Mar 2013 03:29:15 +0000 (UTC)
Received: from DB8EHSMHS005.bigfish.com (unknown [10.174.8.249])	by
	mail200-db8.bigfish.com (Postfix) with ESMTP id 87BF4DC0045	for
	<yocto@yoctoproject.org>; Tue, 12 Mar 2013 03:29:15 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by DB8EHSMHS005.bigfish.com
	(10.174.4.15) with Microsoft SMTP Server id 14.1.225.23;
	Tue, 12 Mar 2013 03:29:14 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]
	helo=xsj-smtp1.xilinx.com)	by xsj-gw1 with esmtp (Exim
	4.63)	(envelope-from
	<john.williams@xilinx.com>)	id 1UFFtq-0006Dn-8m	for
	yocto@yoctoproject.org; Mon, 11 Mar 2013 20:29:14 -0700
From: John Williams <john.williams@xilinx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: cleansstate issues on NFS?
Thread-Index: Ac4estGCIEuh5STvSCuAse5OrpCBnQ==
Date: Tue, 12 Mar 2013 03:29:12 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.162.21]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <c75f2cca-209c-45a7-b8c9-66478f1b8656@DB8EHSMHS005.ehs.local>
X-OriginatorOrg: xilinx.com
Cc: John Williams <jwilliams@xilinx.com>
Subject: cleansstate issues on NFS?
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
X-List-Received-Date: Tue, 12 Mar 2013 03:29:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am seeing consistent failures for the cleansstate task on native packages=
, e.g. popt-native, dpkg-native etc, on NFS-mounted volumes.

 I am using RHEL 5.6 which I realize is not a supported distro, but I don't=
 think this is the root cause.

Various ML archives show people seeing this problem when doing a Yocto buil=
d on an NFS mount, which is exactly my situation here.

If I rerun on the same host but on a locally mounted drive, it is fine.

Log is below, any suggestions on how to debug or resolve would be greatly a=
ppreciated.

Thanks,

John


$ bitbake popt-native -c cleansstate
...

NOTE: Running task 1 of 2 (ID: 0, virtual:native:/home/jwilliams/yocto/xlnx=
/poky/meta/recipes-support/popt/popt_1.16.bb, do_clean)
NOTE: package popt-native-1.16-r0: task do_clean: Started
ERROR: Error executing a python function in /home/jwilliams/yocto/xlnx/poky=
/meta/recipes-support/popt/popt_1.16.bb:
OSError: [Errno 39] Directory not empty: '/home/jwilliams/yocto/xlnx/demo-m=
icroblaze/tmp/work/x86_64-linux/popt-native-1.16-r0/temp'

ERROR: The stack trace of python calls that resulted in this exception/fail=
ure was:
ERROR:   File "do_clean", line 16, in <module>
ERROR:
ERROR:   File "do_clean", line 6, in do_clean
ERROR:
ERROR:   File "/home/jwilliams/yocto/xlnx/poky/meta/lib/oe/path.py", line 9=
6, in remove
ERROR:     shutil.rmtree(name)
ERROR:
ERROR:   File "/home/jwilliams/local/lib/python2.7/shutil.py", line 245, in=
 rmtree
ERROR:     rmtree(fullname, ignore_errors, onerror)
ERROR:
ERROR:   File "/home/jwilliams/local/lib/python2.7/shutil.py", line 254, in=
 rmtree
ERROR:     onerror(os.rmdir, path, sys.exc_info())
ERROR:
ERROR:   File "/home/jwilliams/local/lib/python2.7/shutil.py", line 252, in=
 rmtree
ERROR:     os.rmdir(path)
ERROR:
ERROR: The code that was being executed was:
ERROR:      0012:       for f in (d.getVar('CLEANFUNCS', True) or '').split=
():
ERROR:      0013:               bb.build.exec_func(f, d)
ERROR:      0014:
ERROR:      0015:
ERROR:  *** 0016:do_clean(d)
ERROR:      0017:
ERROR: (file: 'do_clean', lineno: 16, function: <module>)
ERROR:      0002:def do_clean(d):
ERROR:      0003:       """clear the build and temp directories"""
ERROR:      0004:       dir =3D d.expand("/home/jwilliams/yocto/xlnx/demo-m=
icroblaze/tmp/work/x86_64-linux/popt-native-1.16-r0")
ERROR:      0005:       bb.note("Removing " + dir)
ERROR:  *** 0006:       oe.path.remove(dir)
ERROR:      0007:
ERROR:      0008:       dir =3D "%s.*" % bb.data.expand(d.getVar('STAMP'), =
d)
ERROR:      0009:       bb.note("Removing " + dir)
ERROR:      0010:       oe.path.remove(dir)
ERROR: (file: 'do_clean', lineno: 6, function: do_clean)
ERROR: Function failed: do_clean
NOTE: package popt-native-1.16-r0: task do_clean: Failed
ERROR: Task 0 (virtual:native:/home/jwilliams/yocto/xlnx/poky/meta/recipes-=
support/popt/popt_1.16.bb, do_clean) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be rerun a=
nd 1 failed.

Summary: 1 task failed:
  virtual:native:/home/jwilliams/yocto/xlnx/poky/meta/recipes-support/popt/=
popt_1.16.bb, do_clean
Summary: There was 1 WARNING message shown.
Summary: There were 37 ERROR messages shown, returning a non-zero exit code=
.




This email and any attachments are intended for the sole use of the named r=
ecipient(s) and contain(s) confidential information that may be proprietary=
, privileged or copyrighted under applicable law. If you are not the intend=
ed recipient, do not read, copy, or forward this email message or any attac=
hments. Delete this email message and any attachments immediately.



