Return-Path: <daniel.pavel19@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3C09E00815; Thu, 19 Feb 2015 05:43:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daniel.pavel19[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88E4DE0034A
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 05:43:39 -0800 (PST)
Received: by iecar1 with SMTP id ar1so9568321iec.0
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 05:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xrzayhS/Yzbl3HWEWfL5ITrEhAl6K2w4AGiD6ubSzfs=;
	b=mbJd24pNg3bSwSMzXfgJCzTwARormzynRDriYrCokS7mwWbKbhWVymhH0rABJ2Bp9S
	RrCbtPL34ZpecL5XN8OcVrJc+bW6u/u30Rvc7rb/SmEVrpBEhbcBf4Rm3t1vGSL6txLj
	wgnTx537aSCN1esPmMlDhEhSkYLWylIla/U86VSwIAhasOBcorDc0WJPkrS9AmEri97k
	iuueDAn9swjXD4fEOUD2uMK12VtSDmGV7SfSn97JQ+inWTdZpsOPCPBBJyl7jgj/LacN
	9yi4gUheSLOjhi6Tn2T/r6/4IynmxbYdZJ18PiLLDSl+Awzha7cshJ1MezszrXYnRcKW
	id7Q==
MIME-Version: 1.0
X-Received: by 10.50.50.233 with SMTP id f9mr9839679igo.38.1424353418650; Thu,
	19 Feb 2015 05:43:38 -0800 (PST)
Received: by 10.36.127.20 with HTTP; Thu, 19 Feb 2015 05:43:38 -0800 (PST)
Date: Thu, 19 Feb 2015 15:43:38 +0200
Message-ID: <CAB1xj1Kv33y+pw4RhwFNB2HCQFdTMroR6yUVAe+VYe0nwAD=-A@mail.gmail.com>
From: Pavel Daniel <daniel.pavel19@gmail.com>
To: yocto@yoctoproject.org
Subject: Busybox error
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
X-List-Received-Date: Thu, 19 Feb 2015 13:43:40 -0000
Content-Type: multipart/alternative; boundary=047d7bd76b5a8df7f5050f711f1e

--047d7bd76b5a8df7f5050f711f1e
Content-Type: text/plain; charset=UTF-8

Hi,

I'm trying to compile meta-ivi and I'm running through an error that I
cannot figure it out.

Here's the full log:

WARNING: busybox: alternative target (/etc/syslog.conf or
/etc/syslog.conf.busybox) does not exist, skipping...
WARNING: busybox: NOT adding alternative provide /etc/syslog.conf:
/etc/syslog.conf.busybox does not exist
*ERROR: Function failed: SYSTEMD_SERVICE_busybox-syslog value
busybox-syslog.service does not exist*
*ERROR: Logfile of failure stored in:
/home/danielpavel/Karanka/yocto/poky/build/tmp/work/cortexa9t2hf-vfp-neon-poky-linux-gnueabi/busybox/1.22.1-r32/temp/log.do_package.6545*
Log data follows:
| DEBUG: Executing python function sstate_task_prefunc
| DEBUG: Python function sstate_task_prefunc finished
| DEBUG: Executing python function do_package
| DEBUG: Executing python function package_get_auto_pr
| DEBUG: Python function package_get_auto_pr finished
| DEBUG: Executing python function perform_packagecopy
| WARNING: busybox: alternative target (/etc/syslog.conf or
/etc/syslog.conf.busybox) does not exist, skipping...
| DEBUG: Python function perform_packagecopy finished
| DEBUG: Executing python function split_and_strip_files
| DEBUG: runstrip: 'arm-poky-linux-gnueabi-strip' --remove-section=.comment
--remove-section=.note
'/home/danielpavel/Karanka/yocto/poky/build/tmp/work/cortexa9t2hf-vfp-neon-poky-linux-gnueabi/busybox/1.22.1-r32/package/bin/busybox.nosuid'
| DEBUG: Python function split_and_strip_files finished
| DEBUG: Executing python function fixup_perms
| DEBUG: Python function fixup_perms finished
| DEBUG: Executing python function populate_packages_updatealternatives
| NOTE: alt_link == alt_target: /etc/syslog.conf == /etc/syslog.conf --
correcting, this should not happen!
| WARNING: busybox: NOT adding alternative provide /etc/syslog.conf:
/etc/syslog.conf.busybox does not exist
| NOTE: adding update-alternatives calls to postinst/postrm for busybox
| NOTE: update-alternatives --install /bin/ping ping /bin/busybox.suid 50
| update-alternatives --install /bin/ping6 ping6 /bin/busybox.suid 50
| update-alternatives --install /bin/login login /bin/busybox.suid 50
| update-alternatives --install /usr/bin/passwd passwd /bin/busybox.suid 50
| update-alternatives --install /bin/su su /bin/busybox.suid 50
| update-alternatives --install /usr/bin/traceroute traceroute
/bin/busybox.suid 50
| update-alternatives --install /usr/bin/vlock vlock /bin/busybox.suid 50
|
| NOTE: update-alternatives --remove  ping /bin/busybox.suid
| update-alternatives --remove  ping6 /bin/busybox.suid
| update-alternatives --remove  login /bin/busybox.suid
| update-alternatives --remove  passwd /bin/busybox.suid
| update-alternatives --remove  su /bin/busybox.suid
| update-alternatives --remove  traceroute /bin/busybox.suid
| update-alternatives --remove  vlock /bin/busybox.suid
|
| DEBUG: Python function populate_packages_updatealternatives finished
| DEBUG: Executing python function populate_packages_updatercd
| DEBUG: Python function populate_packages_updatercd finished
| DEBUG: Executing python function systemd_populate_packages
| DEBUG: adding systemd calls to postinst/postrm for busybox-syslog
| DEBUG: Python function systemd_populate_packages finished
| DEBUG: Python function do_package finished
| ERROR: Function failed: SYSTEMD_SERVICE_busybox-syslog value
busybox-syslog.service does not exist
ERROR: Task 1140
(/home/danielpavel/Karanka/yocto/poky/meta/recipes-core/busybox/
busybox_1.22.1.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2031 tasks of which 2000 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/danielpavel/Karanka/yocto/poky/meta/recipes-core/busybox/
busybox_1.22.1.bb, do_package
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


I hope someone can help.
Thank you in advance.

Regards,
Daniel.

--047d7bd76b5a8df7f5050f711f1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to compile meta-ivi =
and I&#39;m running through an error that I cannot figure it out.</div><div=
><br></div><div>Here&#39;s the full log:=C2=A0</div><div><br></div><div><di=
v><font color=3D"#ff9900">WARNING: busybox: alternative target (/etc/syslog=
.conf or /etc/syslog.conf.busybox) does not exist, skipping...</font></div>=
<div><font color=3D"#ff9900">WARNING: busybox: NOT adding alternative provi=
de /etc/syslog.conf: /etc/syslog.conf.busybox does not exist</font></div><d=
iv><font color=3D"#ff0000"><b>ERROR: Function failed: SYSTEMD_SERVICE_busyb=
ox-syslog value busybox-syslog.service does not exist</b></font></div><div>=
<font color=3D"#ff0000"><b>ERROR: Logfile of failure stored in: /home/danie=
lpavel/Karanka/yocto/poky/build/tmp/work/cortexa9t2hf-vfp-neon-poky-linux-g=
nueabi/busybox/1.22.1-r32/temp/log.do_package.6545</b></font></div><div>Log=
 data follows:</div><div>| DEBUG: Executing python function sstate_task_pre=
func</div><div>| DEBUG: Python function sstate_task_prefunc finished</div><=
div>| DEBUG: Executing python function do_package</div><div>| DEBUG: Execut=
ing python function package_get_auto_pr</div><div>| DEBUG: Python function =
package_get_auto_pr finished</div><div>| DEBUG: Executing python function p=
erform_packagecopy</div><div>| WARNING: busybox: alternative target (/etc/s=
yslog.conf or /etc/syslog.conf.busybox) does not exist, skipping...</div><d=
iv>| DEBUG: Python function perform_packagecopy finished</div><div>| DEBUG:=
 Executing python function split_and_strip_files</div><div>| DEBUG: runstri=
p: &#39;arm-poky-linux-gnueabi-strip&#39; --remove-section=3D.comment --rem=
ove-section=3D.note &#39;/home/danielpavel/Karanka/yocto/poky/build/tmp/wor=
k/cortexa9t2hf-vfp-neon-poky-linux-gnueabi/busybox/1.22.1-r32/package/bin/b=
usybox.nosuid&#39;</div><div>| DEBUG: Python function split_and_strip_files=
 finished</div><div>| DEBUG: Executing python function fixup_perms</div><di=
v>| DEBUG: Python function fixup_perms finished</div><div>| DEBUG: Executin=
g python function populate_packages_updatealternatives</div><div>| NOTE: al=
t_link =3D=3D alt_target: /etc/syslog.conf =3D=3D /etc/syslog.conf -- corre=
cting, this should not happen!</div><div>| WARNING: busybox: NOT adding alt=
ernative provide /etc/syslog.conf: /etc/syslog.conf.busybox does not exist<=
/div><div>| NOTE: adding update-alternatives calls to postinst/postrm for b=
usybox</div><div>| NOTE: <span class=3D"" style=3D"white-space:pre">	</span=
>update-alternatives --install /bin/ping ping /bin/busybox.suid 50</div><di=
v>| <span class=3D"" style=3D"white-space:pre">	</span>update-alternatives =
--install /bin/ping6 ping6 /bin/busybox.suid 50</div><div>| <span class=3D"=
" style=3D"white-space:pre">	</span>update-alternatives --install /bin/logi=
n login /bin/busybox.suid 50</div><div>| <span class=3D"" style=3D"white-sp=
ace:pre">	</span>update-alternatives --install /usr/bin/passwd passwd /bin/=
busybox.suid 50</div><div>| <span class=3D"" style=3D"white-space:pre">	</s=
pan>update-alternatives --install /bin/su su /bin/busybox.suid 50</div><div=
>| <span class=3D"" style=3D"white-space:pre">	</span>update-alternatives -=
-install /usr/bin/traceroute traceroute /bin/busybox.suid 50</div><div>| <s=
pan class=3D"" style=3D"white-space:pre">	</span>update-alternatives --inst=
all /usr/bin/vlock vlock /bin/busybox.suid 50</div><div>|=C2=A0</div><div>|=
 NOTE: <span class=3D"" style=3D"white-space:pre">	</span>update-alternativ=
es --remove =C2=A0ping /bin/busybox.suid</div><div>| <span class=3D"" style=
=3D"white-space:pre">	</span>update-alternatives --remove =C2=A0ping6 /bin/=
busybox.suid</div><div>| <span class=3D"" style=3D"white-space:pre">	</span=
>update-alternatives --remove =C2=A0login /bin/busybox.suid</div><div>| <sp=
an class=3D"" style=3D"white-space:pre">	</span>update-alternatives --remov=
e =C2=A0passwd /bin/busybox.suid</div><div>| <span class=3D"" style=3D"whit=
e-space:pre">	</span>update-alternatives --remove =C2=A0su /bin/busybox.sui=
d</div><div>| <span class=3D"" style=3D"white-space:pre">	</span>update-alt=
ernatives --remove =C2=A0traceroute /bin/busybox.suid</div><div>| <span cla=
ss=3D"" style=3D"white-space:pre">	</span>update-alternatives --remove =C2=
=A0vlock /bin/busybox.suid</div><div>|=C2=A0</div><div>| DEBUG: Python func=
tion populate_packages_updatealternatives finished</div><div>| DEBUG: Execu=
ting python function populate_packages_updatercd</div><div>| DEBUG: Python =
function populate_packages_updatercd finished</div><div>| DEBUG: Executing =
python function systemd_populate_packages</div><div>| DEBUG: adding systemd=
 calls to postinst/postrm for busybox-syslog</div><div>| DEBUG: Python func=
tion systemd_populate_packages finished</div><div>| DEBUG: Python function =
do_package finished</div><div>| ERROR: Function failed: SYSTEMD_SERVICE_bus=
ybox-syslog value busybox-syslog.service does not exist</div><div>ERROR: Ta=
sk 1140 (/home/danielpavel/Karanka/yocto/poky/meta/recipes-core/busybox/<a =
href=3D"http://busybox_1.22.1.bb">busybox_1.22.1.bb</a>, do_package) failed=
 with exit code &#39;1&#39;</div><div><font color=3D"#ff0000">NOTE: Tasks S=
ummary: Attempted 2031 tasks of which 2000 didn&#39;t need to be rerun and =
1 failed.</font></div><div>Waiting for 0 running tasks to finish:</div><div=
><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 /home/danielpavel/=
Karanka/yocto/poky/meta/recipes-core/busybox/<a href=3D"http://busybox_1.22=
.1.bb">busybox_1.22.1.bb</a>, do_package</div><div>Summary: There were 2 WA=
RNING messages shown.</div><div>Summary: There were 2 ERROR messages shown,=
 returning a non-zero exit code.</div></div><div><br></div><div><br></div><=
div>I hope someone can help.</div><div>Thank you in advance.</div><div><br>=
</div><div>Regards,</div><div>Daniel.</div><div><br></div><div><br></div></=
div>

--047d7bd76b5a8df7f5050f711f1e--
