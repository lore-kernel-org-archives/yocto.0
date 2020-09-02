Subject: How to integrate kernel-module in yocto-dunfell? #yocto #dunfell #apt #tx2 #kernel
To: yocto@lists.yoctoproject.org
From: kilian.brandt@tu-dresden.de
X-Originating-Location: DE (141.30.136.187)
X-Originating-Platform: Windows Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Sep 2020 04:13:48 -0700
Message-ID: <9QZb.1599045228761498654.9opf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Srm8uGIJHucgCFdlQ7bW"

--Srm8uGIJHucgCFdlQ7bW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey community,

I'm trying to use this library [can-isotp][1] on a Jetson TX2 Board. The v=
ersion of the running OS is: 0.0.8 (dunfell).

From the docs of the library I get the following instructions:

```
DOWNLOAD and BUILD

1. Download repository and enter the repositories root directory

     git clone https://github.com/hartkopp/can-isotp.git

     cd can-isotp

2. Build ISO-TP kernel module

  Ensure build dependencies are installed. E.g. for Debian (or Ubuntu):

     sudo apt-get install build-essential linux-headers-$(uname -r)

  To build:

     (you need to be in the repositories root path)

     make

  To install (optional):

     sudo make modules_install

3. When the PF_CAN core module is loaded ('modprobe can') the ISO-TP modul=
e
  can be loaded into the kernel with

      insmod ./net/can/can-isotp.ko

  When the can-isotp.ko module has been installed into the Linux Kernels
  modules directory (e.g. with 'make modules_install') the module should
  load automatically when opening a CAN_ISOTP socket.
```

I have some questions about that procedure. Can anybody give me an hint on=
 how to install this module? Do I have to create a completly new yocto imag=
e or is there any way to install kernel modules afterwards? I tried to copy=
 the folder onto the TX2 and install it by hand, but (as to be expected) th=
e make command is not found.

I would really appreciate any help ! Best regards,

[1]: https://github.com/hartkopp/can-isotp

--Srm8uGIJHucgCFdlQ7bW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey community,&nbsp;<br /><br />
<div>I'm trying to use this library [can-isotp][1] on a Jetson TX2 Board. =
The version of the running OS is: 0.0.8 (dunfell).&nbsp;</div>
<div>&nbsp;</div>
<div>From the docs of the library I get the following instructions:</div>
<div>&nbsp;</div>
<div>```</div>
<div>
<pre style=3D"font-family: SFMono-Regular, Consolas, 'Liberation Mono', Me=
nlo, monospace; font-size: 12px; margin-bottom: 0px; color: #24292e; backgr=
ound-color: #ffffff; white-space: pre-wrap;">DOWNLOAD and BUILD

1. Download repository and enter the repositories root directory

      git clone <a style=3D"color: #0366d6;" href=3D"https://github.com/ha=
rtkopp/can-isotp.git">https://github.com/hartkopp/can-isotp.git</a>

      cd can-isotp

2. Build ISO-TP kernel module

   Ensure build dependencies are installed. E.g. for Debian (or Ubuntu):

      sudo apt-get install build-essential linux-headers-$(uname -r)

   To build:

      (you need to be in the repositories root path)

      make

   To install (optional):

      sudo make modules_install


3. When the PF_CAN core module is loaded ('modprobe can') the ISO-TP modul=
e
   can be loaded into the kernel with

       insmod ./net/can/can-isotp.ko

   When the can-isotp.ko module has been installed into the Linux Kernels
   modules directory (e.g. with 'make modules_install') the module should
   load automatically when opening a CAN_ISOTP socket.</pre>
</div>
<div>```</div>
<div><br />I have some questions about that procedure. Can anybody give me=
 an hint on how to install this module? Do I have to create a completly new=
 yocto image or is there any way to install kernel modules afterwards? I tr=
ied to copy the folder onto the TX2 and install it by hand, but (as to be e=
xpected) the make command is not found.&nbsp;<br /><br />I would really app=
reciate any help ! Best regards,&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp; [1]: https://github.com/hartkopp/can-isotp</div>

--Srm8uGIJHucgCFdlQ7bW--
