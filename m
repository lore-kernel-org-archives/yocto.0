Return-Path: <Ben.Warren@spidercloud.com>
Received: from berg.int.copivia.com (mailgate1.spidercloud.com [209.49.242.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56234E0051D
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 14:53:33 -0700 (PDT)
Received: from mailx.spidercloud.com ([10.1.1.225])
	by berg.int.copivia.com (8.13.8/8.13.8) with ESMTP id r4GLrX8V011814
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 14:53:33 -0700
Received: from sofia.us.spidercloud.com ([10.1.1.225]) by
	sofia.us.spidercloud.com ([10.1.1.225]) with mapi;
	Thu, 16 May 2013 14:53:33 -0700
From: Ben Warren <Ben.Warren@spidercloud.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 16 May 2013 14:53:33 -0700
Thread-Topic: Problem with Python in pre-built SDK
Thread-Index: Ac5Sf876qqG/2twFQmyiEHxPhYBdvw==
Message-ID: <C7D08B87-2D4D-4CBD-BC91-379B187C2AEE@spidercloud.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Problem with Python in pre-built SDK
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
X-List-Received-Date: Thu, 16 May 2013 21:53:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm having other Yocto problems using the stock Ubuntu x86_64 toolchain, so=
 decided to install one using the instructions in section 2.1.2 (Using a Cr=
oss-Toolchain Tarball) of the "Yocto Project Application Developer's Guide"=
.

These are the commands I used:

$ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/toolchain=
/x86_64/poky-eglibc-x86_64-x86_64-toolchain-gmae-1.4.sh
$ sudo sh poky-eglibc-x86_64-x86_64-toolchain-gmae-1.4.sh

and installed at the default (/opt/poky/1.4)

Now, I go through the usual steps:

=3D=3D=3D=3D=3D=3D=3D=3D
ben@ubuntu-scw:~$ cd /opt/poky
ben@ubuntu-scw:/opt/poky$ . oe-init-build-env ../scw-appscard-build/

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-toolchain-sdk
    adt-installer
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86=
'
=3D=3D=3D=3D=3D=3D=3D=3D

At this point, I guess I need to source the SDK environment file so poky kn=
ows where the toolchain is?

=3D=3D=3D=3D=3D=3D=3D=3D
ben@ubuntu-scw:/opt/scw-appscard-build$ . /opt/poky/1.4/environment-setup-x=
86_64-poky-linux
=3D=3D=3D=3D=3D=3D=3D=3D

Then I try to build something

=3D=3D=3D=3D=3D=3D=3D=3D
ben@ubuntu-scw:/opt/scw-appscard-build$ MACHINE=3Dscw-appscard bitbake kvm-=
image-minimal
Traceback (most recent call last):
  File "<string>", line 1, in <module>
ImportError: No module named distutils.version
Traceback (most recent call last):
  File "/opt/poky/bitbake/bin/bitbake", line 34, in <module>
    import bb
  File "/opt/poky/bitbake/lib/bb/__init__.py", line 75, in <module>
    import bb.msg
  File "/opt/poky/bitbake/lib/bb/msg.py", line 32, in <module>
    import bb.event
  File "/opt/poky/bitbake/lib/bb/event.py", line 34, in <module>
    import bb.utils
  File "/opt/poky/bitbake/lib/bb/utils.py", line 22, in <module>
    import re, fcntl, os, string, stat, shutil, time
ImportError: No module named fcntl
=3D=3D=3D=3D=3D=3D=3D=3D

So it looks like the Python included with the SDK is crippled or mis-config=
ured:

=3D=3D=3D=3D=3D=3D=3D=3D
ben@ubuntu-scw:/opt/scw-appscard-build$ which python
/opt/poky/1.4/sysroots/x86_64-pokysdk-linux/usr/bin/python
ben@ubuntu-scw:/opt/scw-appscard-build$ python
Python 2.7.3 (default, Apr 19 2013, 00:50:43)=20
[GCC 4.7.2] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import fcntl
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: No module named fcntl
>>>=20
=3D=3D=3D=3D=3D=3D=3D=3D

Without sourcing the SDK environment file:

=3D=3D=3D=3D=3D=3D=3D=3D
ben@ubuntu-scw:~$ which python
/usr/bin/python
ben@ubuntu-scw:~$ python
Python 2.7.3 (default, Sep 26 2012, 21:51:14)=20
[GCC 4.7.2] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import fcntl
>>>
=3D=3D=3D=3D=3D=3D=3D=3D

Am I following the playbook correctly?  Does this Python need an explicit P=
YTHONPATH or something like that?
Note that I'm using poky at the 'Dylan 9.0' tag and have Ubuntu 12.10 x86_6=
4 on the host.

thanks,
Ben





