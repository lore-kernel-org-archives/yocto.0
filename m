Subject: Excluding kernel configuration fragment
To: yocto@lists.yoctoproject.org
From: "Fred Baksik" <fdk17@ftml.net>
X-Originating-Location: Ann Arbor, Michigan, US (68.40.190.43)
X-Originating-Platform: Linux Firefox 74
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Mar 2020 11:41:35 -0700
Message-ID: <tyiw.1584470495253597159.He3i@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZUAPHfXtusOqLPVdgS6b"

--ZUAPHfXtusOqLPVdgS6b
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

What is the best way of excluding a kernel configuration fragment?

I am trying to disable sound support in the kernel.=C2=A0 I can create a f=
ragment for this but then this conflicts with the other existing fragments.
For example when using meta-intel and removing sound support then you will=
 receive warnings like:

WARNING: linux-intel-4.19.73+gitAUTOINC+a7cb57afb9_ca05e9cd64-r0 do_kernel=
_configcheck: [kernel config]: specified values did not make it into the ke=
rnel's final configuration:

---------- CONFIG_USB_AUDIO -----------------
Config: CONFIG_USB_AUDIO
From: /.../build_corei7-64/tmp/work-shared/intel-corei7-64/kernel-source/.=
kernel-meta/configs/v4.19/standard/intel/features/usb/usb-gadgets.cfg
Requested value:=C2=A0 CONFIG_USB_AUDIO=3Dm
Actual value:

I haven't had much luck with the documentation finding how to prune machin=
e features and fragments; I may just misunderstand how this is supposed to =
be done.

--ZUAPHfXtusOqLPVdgS6b
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

What is the best way of excluding a kernel configuration fragment?<br /><br=
 />I am trying to disable sound support in the kernel.&nbsp; I can create a=
 fragment for this but then this conflicts with the other existing fragment=
s.<br />For example when using meta-intel and removing sound support then y=
ou will receive warnings like:<br /><br />WARNING: linux-intel-4.19.73+gitA=
UTOINC+a7cb57afb9_ca05e9cd64-r0 do_kernel_configcheck: [kernel config]: spe=
cified values did not make it into the kernel's final configuration:<br /><=
br />---------- CONFIG_USB_AUDIO -----------------<br />Config: CONFIG_USB_=
AUDIO<br />From: /.../build_corei7-64/tmp/work-shared/intel-corei7-64/kerne=
l-source/.kernel-meta/configs/v4.19/standard/intel/features/usb/usb-gadgets=
.cfg<br />Requested value:&nbsp; CONFIG_USB_AUDIO=3Dm<br />Actual value:&nb=
sp;&nbsp; <br /><br />I haven't had much luck with the documentation findin=
g how to prune machine features and fragments; I may just misunderstand how=
 this is supposed to be done.

--ZUAPHfXtusOqLPVdgS6b--
