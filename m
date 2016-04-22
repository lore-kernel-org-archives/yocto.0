Return-Path: <mosipov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 126DAE00F3E; Fri, 22 Apr 2016 03:02:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mosipov[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6ACEE00CCC
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 03:02:21 -0700 (PDT)
Received: by mail-vk0-f50.google.com with SMTP id n67so113101597vkf.3
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 03:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=GlK8oYZbIkBU/+HgkurNq8A+4NSFomcwBuBJ2VbV8NI=;
	b=mm48Ntw5Q4MSjnqm622Kf+SXVvIDVZNA6Y8BJRn6/xOJsxcmorZ6dSczaHlBlZSaVo
	sivyQy5bKlqiixBrcMsByhKVjxrVS//lw8WoQ6dHe3Z940ISBHEdV8X57hD7v5anIoyK
	Ez+9ynxt6S9r5uANLrTbfzW7D+MRVRFXSwJ6UNSIle7GteJZKdEdsU399jNFe91Klp9k
	bHDr0Qd+/VKpTTey7KpoDtJEciZuCeODDrX3rOxaaliTCOW1iLaDs8v4k8npre9+HMDc
	B/DfNnHjC8zhSSmto+H5fgdaxrlABNHMYOLBcntekCPv7JO7tzBQop1QgG4iy0r20oPi
	yoJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=GlK8oYZbIkBU/+HgkurNq8A+4NSFomcwBuBJ2VbV8NI=;
	b=CS67wZYQHfHmr0GrychHsF/bGg19/AMxAyhTKulTffAkjKFt1Sy15U35VLIUtu9I4v
	OrMR1/uzdiSqU0z1+v8P8wbLlzZsDtqv7zrGs4QXYL+AzupE4XdFIUngJEGKHqHyxTX3
	ltg8cJ5TorVOMimcsxXXGlsoQUkBdfFLZNZWNblIyRQXwpKgxNLfeP0cnunipC5wTNtr
	RNh6naJ6HQqavNrSYQFKXyRzX+4YPIJPTHH8b4D4XOQabQy6PmPQ5aB9UXRj9cBR5qkJ
	JI1XJZImaCynYyURoSYX/WfaF1iKvG4x4hemq9Y0tDAvbqWrjWeUMN8BBNNlcUSCiD50
	x06A==
X-Gm-Message-State: AOPr4FV4sry5fXrbIzeVLA3xCHu1R8lUexJqidLAmTAI8hRf9xC66sHxYWiBrGsdyStLY0avWtnd6ZVjjwQ2Pw==
MIME-Version: 1.0
X-Received: by 10.176.1.105 with SMTP id 96mr2259111uak.137.1461319340868;
	Fri, 22 Apr 2016 03:02:20 -0700 (PDT)
Received: by 10.31.53.8 with HTTP; Fri, 22 Apr 2016 03:02:20 -0700 (PDT)
Date: Fri, 22 Apr 2016 12:02:20 +0200
Message-ID: <CADr-XUQL0biEm6dpSUXtBCXRKsaPq5XBP0719r9ojiBpQo_hKg@mail.gmail.com>
From: Maxim Osipov <mosipov@gmail.com>
To: yocto@yoctoproject.org
Subject: udev-cache problems
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
X-List-Received-Date: Fri, 22 Apr 2016 10:02:26 -0000
Content-Type: multipart/alternative; boundary=001a1142fcb4374b8405310fec6f

--001a1142fcb4374b8405310fec6f
Content-Type: text/plain; charset=UTF-8

Hi all,

I've a poky/Yocto 1.8 system for an imx6 board equipped with U-Blox SARA-U2
GSM/GPRS module connected via USB. The modem is seen as
several /dev/ttyACM* devices. I use ofono 1.16 to work with the modem.
After startup ofono doesn't detect the modem - it starts
to identify the modem if I restart manually udev daemon (by calling
/etc/init.d/udev restart).
Problem with ofono modem detection during startup disappears if I disable
udev-cache in /etc/default/udev-cache:
by commenting out DEVCACHE variable.

So I've analyzed /etc/init.d/udev and udev-cache scripts.
In my opinion the udev script has problems:

* One funny thing appears during system startup.
First udev computes system configuration and compares it with cached one.
And they are identical! So udev decides that its cache is correct and sets
the flag not_first_boot which leads to call of udevadm command with a lot
of --subsystem-nomatch options (option '--subsystem-nomatch=tty' causes
problems with ofono detection of ttyACM*). But during script execution it
seems that system configuration changes (have a look at trace below - it
seems that /dev/ttyACM* appear after system configuration computation).

*) Ok. Let's restart udev manually. Now udev detects that stored udev-cache
is not correct and it creates file /dev/shm/udev-regen as a flag to
regenerate the cache. But it will be regenerated during subsequent call of
/etc/init.d/udev (it calls internally /etc/init.d/udev-cache script).
Definitely, in case of HW (cold) reboot this flag will disappear,
so as a result /etc/udev-cache.tar.gz file will not be regenerated.

Is there any fix solving properly described problems (except workarounds
like disabling udev-cache or removal of option --subsystem-nomatch=tty from
'udevadm trigger --action=add' call)?

Kind regards,
Maxim.

usb 1-1.3: new high-speed USB device number 3 using ci_hdrc
+ export TZ=/etc/localtime
+ TZ=/etc/localtime
+ '[' -d /sys/class ']'
+ '[' -r /proc/mounts ']'
+ '[' -x /lib/udev/udevd ']'
+ SYSCONF_CACHED=/etc/udev/cache.data
+ SYSCONF_TMP=/dev/shm/udev.cache
+ DEVCACHE_REGEN=/dev/shm/udev-regen
+ CMP_FILE_LIST='/proc/version /proc/cmdline /proc/devices'
+ '[' -f /proc/atags ']'
+ META_FILE_LIST='lib/udev/rules.d/* etc/udev/rules.d/*'
+ '[' -f /etc/default/udev-cache ']'
+ . /etc/default/udev-cache
++ DEVCACHE=/etc/udev-cache.tar.gz
++ PROBE_PLATFORM_BUS=yes
+ '[' -f /etc/udev/udev.conf ']'
+ . /etc/udev/udev.conf
++ udev_run=/var/run/udev
+ '[' -f /etc/default/rcS ']'
+ . /etc/default/rcS
++ TMPTIME=0
++ SULOGIN=no
++ DELAYLOGIN=no
++ UTC=yes
++ VERBOSE=no
++ EDITMOTD=no
++ ENABLE_ROOTFS_FSCK=no
++ FSCKFIX=yes
++ VOLATILE_ENABLE_CACHE=yes
++ ROOTFS_READ_ONLY=no
+ case "$1" in
+cdc_acm 1-1.3:1.0: ttyACM0: USB ACM device
export ACTION=add
+ ACTION=add
+ echo 'Starting udev'
Startincdc_acm 1-1.3:1.2: ttyACM1: USB ACM device
g udev
+ grep -q devtmpfs /proc/filesystems
+ LANG=C
+ awk '$2 == "/dev" && ($3 == "devtmpfs")cdc_acm 1-1.3:1.4: ttyACM2: USB
ACM device
{ exit 1 }' /proc/mounts
+ '[' -e /dev/pts ']'
+ mkdir -m 0755cdc_acm 1-1.3:1.6: ttyACM3: USB ACM device
/dev/pts
+ '[' -e /dev/shm ']'
+ mkdir -m 1777 /dev/shm
+ mkdcdc_acm 1-1.3:1.8: ttyACM4: USB ACM device
ir -m 1777 -p /var/volatile/tmp
+ '[' /etc/udev-cache.tar.gz '!=cdc_acm 1-1.3:1.10: ttyACM5: USB ACM device
' '' ']'
+ '[' -e /etc/udev-cache.tar.gz ']'
+ sysconf_cmd
+ ccdc_acm 1-1.3:1.12: ttyACM6: USB ACM device
at -- /proc/version /proc/cmdline /proc/devices
+ awk -F/ '{print $1 " " $NF;}'
+ stat -c '%s %Y %n' -- lib/udev/rules.d/40-usb_modeswitch.rules
lib/udev/rules.d/42-usb-hid-pm.rules
lib/udev/rules.d/50-udev-default.rules
lib/udev/rules.d/60-cdrom_id.rules lib/udev/rules.d/60-persistent-als2
lib/udev/rules.d/75-tty-description.rules
lib/udev/rules.d/78-sound-card.rules lib/udev/rules.d/80-drivers.rules
lib/udev/rules.d/85-regulatory.rules
lib/udev/rules.d/95-keyboard-force-release.rules lib/udev/rus
+ cmp /etc/udev/cache.data /dev/shm/udev.cache
+ tar xmf /etc/udev-cache.tar.gz -C / -m
+ not_first_boot=1
+ '[' no '!=' no ']'
+ '[' -e /dev/shm/udev.cache ']'
+ rm -f /dev/shm/udev.cache
+ '[' -e /dev/shm/udev-regen ']'
+ kill_udevd
+ '[' -e /proc/sys/kernel/hotplug ']'
+ echo -e '\000'
+ /lib/udev/udevd -d
+ udevadm control --env=STARTUP=1
+ '[' 1 '!=' '' ']'
+ '[' yes '!=' yes ']'
+ PLATFORM_BUS_NOMATCH=
+ udevadm trigger --action=add --subsystem-nomatch=tty
--subsystem-nomatch=mem --subsystem-nomatch=vc
--subsystem-nomatch=vtconsole --subsystem-nomatch=misc
--subsystem-nomatch=dcon --subsystem-nomatch=pci_bus x
+ exit 0
+ udevadm settle --timeout=3

--001a1142fcb4374b8405310fec6f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div>I&#39;ve a poky/Yocto 1.8=
 system for an imx6 board equipped with U-Blox =20
SARA-U2 GSM/GPRS module connected via USB. The modem is seen as <br>several=
 /dev/ttyACM* devices. I use ofono 1.16 to work with the modem. After start=
up ofono doesn&#39;t detect the modem - it starts<br>to identify the modem =
if I restart manually udev daemon (by calling /etc/init.d/udev restart).=C2=
=A0<div>Problem with ofono modem detection during startup disappears if I d=
isable udev-cache in /etc/default/udev-cache:<br>by commenting out DEVCACHE=
 variable.<br><br>So I&#39;ve analyzed /etc/init.d/udev and udev-cache scri=
pts.<br>In my opinion the udev script has problems:<br><br>* One funny thin=
g appears during system startup.<br>First udev computes system configuratio=
n and compares it with cached one. And they are identical! So udev decides =
that its cache is correct and sets the flag not_first_boot which leads to c=
all of udevadm command with a lot of --subsystem-nomatch options (option &#=
39;--subsystem-nomatch=3Dtty&#39; causes problems with ofono detection of t=
tyACM*). But during script execution it seems that system configuration cha=
nges (have a look at trace below - it seems that /dev/ttyACM* appear after =
system configuration computation).<br><br><div class=3D"">*) Ok. Let&#39;s =
restart udev manually. Now udev detects that stored udev-cache is not corre=
ct and it creates file /dev/shm/udev-regen as a flag to regenerate the cach=
e. But it will be regenerated during subsequent call of /etc/init.d/udev (i=
t calls internally /etc/init.d/udev-cache script).<br>Definitely, in case o=
f HW (cold) reboot this flag will disappear,<br>so as a result /etc/udev-ca=
che.tar.gz file will not be regenerated.<br><br>Is there any fix solving pr=
operly described problems (except workarounds like disabling udev-cache or =
removal of option --subsystem-nomatch=3Dtty from &#39;udevadm trigger --act=
ion=3Dadd&#39; call)?<br><br>Kind regards,</div><div class=3D"">Maxim.<br><=
br>usb 1-1.3: new high-speed USB device number 3 using ci_hdrc<br>+ export =
TZ=3D/etc/localtime<br>+ TZ=3D/etc/localtime<br>+ &#39;[&#39; -d /sys/class=
 &#39;]&#39;<br>+ &#39;[&#39; -r /proc/mounts &#39;]&#39;<br>+ &#39;[&#39; =
-x /lib/udev/udevd &#39;]&#39;<br>+ SYSCONF_CACHED=3D/etc/udev/cache.data<b=
r>+ SYSCONF_TMP=3D/dev/shm/udev.cache<br>+ DEVCACHE_REGEN=3D/dev/shm/udev-r=
egen<br>+ CMP_FILE_LIST=3D&#39;/proc/version /proc/cmdline /proc/devices&#3=
9;<br>+ &#39;[&#39; -f /proc/atags &#39;]&#39;<br>+ META_FILE_LIST=3D&#39;l=
ib/udev/rules.d/* etc/udev/rules.d/*&#39;<br>+ &#39;[&#39; -f /etc/default/=
udev-cache &#39;]&#39;<br>+ . /etc/default/udev-cache<br>++ DEVCACHE=3D/etc=
/udev-cache.tar.gz<br>++ PROBE_PLATFORM_BUS=3Dyes<br>+ &#39;[&#39; -f /etc/=
udev/udev.conf &#39;]&#39;<br>+ . /etc/udev/udev.conf<br>++ udev_run=3D/var=
/run/udev<br>+ &#39;[&#39; -f /etc/default/rcS &#39;]&#39;<br>+ . /etc/defa=
ult/rcS<br>++ TMPTIME=3D0<br>++ SULOGIN=3Dno<br>++ DELAYLOGIN=3Dno<br>++ UT=
C=3Dyes<br>++ VERBOSE=3Dno<br>++ EDITMOTD=3Dno<br>++ ENABLE_ROOTFS_FSCK=3Dn=
o<br>++ FSCKFIX=3Dyes<br>++ VOLATILE_ENABLE_CACHE=3Dyes<br>++ ROOTFS_READ_O=
NLY=3Dno<br>+ case &quot;$1&quot; in<br>+cdc_acm 1-1.3:1.0: ttyACM0: USB AC=
M device<br> export ACTION=3Dadd<br>+ ACTION=3Dadd<br>+ echo &#39;Starting =
udev&#39;<br>Startincdc_acm 1-1.3:1.2: ttyACM1: USB ACM device<br>g udev<br=
>+ grep -q devtmpfs /proc/filesystems<br>+ LANG=3DC<br>+ awk &#39;$2 =3D=3D=
 &quot;/dev&quot; &amp;&amp; ($3 =3D=3D &quot;devtmpfs&quot;)cdc_acm 1-1.3:=
1.4: ttyACM2: USB <br>ACM device<br> { exit 1 }&#39; /proc/mounts<br>+ &#39=
;[&#39; -e /dev/pts &#39;]&#39;<br>+ mkdir -m 0755cdc_acm 1-1.3:1.6: ttyACM=
3: USB ACM device<br> /dev/pts<br>+ &#39;[&#39; -e /dev/shm &#39;]&#39;<br>=
+ mkdir -m 1777 /dev/shm<br>+ mkdcdc_acm 1-1.3:1.8: ttyACM4: USB ACM device=
<br>ir -m 1777 -p /var/volatile/tmp<br>+ &#39;[&#39; /etc/udev-cache.tar.gz=
 &#39;!=3Dcdc_acm 1-1.3:1.10: ttyACM5: USB ACM device<br>&#39; &#39;&#39; &=
#39;]&#39;<br>+ &#39;[&#39; -e /etc/udev-cache.tar.gz &#39;]&#39;<br>+ sysc=
onf_cmd<br>+ ccdc_acm 1-1.3:1.12: ttyACM6: USB ACM device<br>at -- /proc/ve=
rsion /proc/cmdline /proc/devices<br>+ awk -F/ &#39;{print $1 &quot; &quot;=
 $NF;}&#39;<br>+ stat -c &#39;%s %Y %n&#39; -- lib/udev/rules.d/40-usb_mode=
switch.rules <br>lib/udev/rules.d/42-usb-hid-pm.rules <br>lib/udev/rules.d/=
50-udev-default.rules <br>lib/udev/rules.d/60-cdrom_id.rules lib/udev/rules=
.d/60-persistent-als2<br>lib/udev/rules.d/75-tty-description.rules <br>lib/=
udev/rules.d/78-sound-card.rules lib/udev/rules.d/80-drivers.rules <br>lib/=
udev/rules.d/85-regulatory.rules <br>lib/udev/rules.d/95-keyboard-force-rel=
ease.rules lib/udev/rus<br>+ cmp /etc/udev/cache.data /dev/shm/udev.cache<b=
r>+ tar xmf /etc/udev-cache.tar.gz -C / -m<br>+ not_first_boot=3D1<br>+ &#3=
9;[&#39; no &#39;!=3D&#39; no &#39;]&#39;<br>+ &#39;[&#39; -e /dev/shm/udev=
.cache &#39;]&#39;<br>+ rm -f /dev/shm/udev.cache<br>+ &#39;[&#39; -e /dev/=
shm/udev-regen &#39;]&#39;<br>+ kill_udevd<br>+ &#39;[&#39; -e /proc/sys/ke=
rnel/hotplug &#39;]&#39;<br>+ echo -e &#39;\000&#39;<br>+ /lib/udev/udevd -=
d<br>+ udevadm control --env=3DSTARTUP=3D1<br>+ &#39;[&#39; 1 &#39;!=3D&#39=
; &#39;&#39; &#39;]&#39;<br>+ &#39;[&#39; yes &#39;!=3D&#39; yes &#39;]&#39=
;<br>+ PLATFORM_BUS_NOMATCH=3D<br>+ udevadm trigger --action=3Dadd --subsys=
tem-nomatch=3Dtty <br>--subsystem-nomatch=3Dmem --subsystem-nomatch=3Dvc <b=
r>--subsystem-nomatch=3Dvtconsole --subsystem-nomatch=3Dmisc <br>--subsyste=
m-nomatch=3Ddcon --subsystem-nomatch=3Dpci_bus x<br>+ exit 0<br>+ udevadm s=
ettle --timeout=3D3<br><br><br></div><br></div></div>

--001a1142fcb4374b8405310fec6f--
