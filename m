Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 741CFE0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 16:33:02 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so1594228wib.11
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 16:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=q3rswPADRSvrNPv2MHv5Yd5ydPKKKaBrfkXsXo8voyg=;
	b=CeXBsXYoC3ovweaXvoET8FMcbfcOSQPAg5Su7i8e/2Wbs3XuI5GZaoKvcxQTTcIm9l
	0UKUrae1Cm4d9+Iv4ZTGHhmSEmfr73Ga6AnqF5yT7kTopGanKpPW+p7T33UpwX0LAiND
	3PMWiGuYuRRcmRBTdjrCkN/41fL2b5QTbB5oS3gcdBN9iVBTooZDxvoNyCWQRbuv5urX
	MAvcQw9LPVf5xbSm/AsxRhLQDDioUDiKPL7hn1H1tmIe9PWXz5bxp50O4sF5IjWITaEy
	SdOBLoRMJae8Uz2gR8BJh8FWn6LkUxfg/p64rjyuAMXAdJo5O6x8EyZ9NxwlmfvrHL0s
	SIcQ==
Received: by 10.180.101.8 with SMTP id fc8mr17061216wib.12.1336174381328;
	Fri, 04 May 2012 16:33:01 -0700 (PDT)
Received: from [192.168.1.34] (5.Red-83-49-41.dynamicIP.rima-tde.net.
	[83.49.41.5])
	by mx.google.com with ESMTPS id 17sm1385687wis.0.2012.05.04.16.32.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 May 2012 16:33:00 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1257)
Date: Sat, 5 May 2012 01:32:58 +0200
In-Reply-To: <4FA45D23.8040905@mlbassoc.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <4A8D5C4F-3A9B-4171-9254-2DC2E273396C@gmail.com>
	<4FA45D23.8040905@mlbassoc.com>
Message-Id: <EE9DD0E6-24C8-4F2A-936D-27F6153EE6F5@gmail.com>
X-Mailer: Apple Mail (2.1257)
Subject: Re: How to fix unpack errors
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
X-List-Received-Date: Fri, 04 May 2012 23:33:03 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9E10D9AA-3748-4A28-87B8-1638AF89A3F2"

--Apple-Mail=_9E10D9AA-3748-4A28-87B8-1638AF89A3F2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On May 5, 2012, at 12:50 AM, Gary Thomas wrote:
> More information is needed in order to help with this.  Try looking
> at the log file (the name should be printed alongside the message
> quoted above).  If it's not obvious from that, provide the log file
> (send/publicize) so the community can help.

This is the build output of the kernel unpack failure. I've tried =
deleting tmp, and the git2 download, and tried afresh a couple of time =
with the same results. Any clues as to what could be causing this unpack =
failure?

ERROR: Function failed: Fetcher failure: Fetch command export =
HOME=3D"/home/elvis"; export SSH_AGENT_PID=3D"2807"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd could not be run:
None
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/l=
inux-omap3-3.2-r0/temp/log.do_unpack.19138
Log data follows:
| DEBUG: Running export HOME=3D"/home/elvis"; export =
SSH_AGENT_PID=3D"2807"; export SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; =
export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git clone =
-s -n =
/tool/yocto/poky/build/downloads/git2/www.sakoman.com.git.linux-omap-2.6.g=
it/ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/l=
inux-omap3-3.2-r0/git/
| DEBUG: Running export HOME=3D"/home/elvis"; export =
SSH_AGENT_PID=3D"2807"; export SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; =
export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd
| ERROR: Function failed: Fetcher failure: Fetch command export =
HOME=3D"/home/elvis"; export SSH_AGENT_PID=3D"2807"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd could not be run:
| None
NOTE: package linux-omap3-3.2-r0: task do_unpack: Failed
ERROR: Task 513 =
(/tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, =
do_unpack) failed with exit code '1'

This is the contents of the log.do_unpack file:

DEBUG: Running export HOME=3D"/home/elvis"; export SSH_AGENT_PID=3D"2807";=
 export SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git clone =
-s -n =
/tool/yocto/poky/build/downloads/git2/www.sakoman.com.git.linux-omap-2.6.g=
it/ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/l=
inux-omap3-3.2-r0/git/
DEBUG: Running export HOME=3D"/home/elvis"; export SSH_AGENT_PID=3D"2807";=
 export SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd
ERROR: Function failed: Fetcher failure: Fetch command export =
HOME=3D"/home/elvis"; export SSH_AGENT_PID=3D"2807"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd could not be run:
None

Best regards,

Elvis Dowson



--Apple-Mail=_9E10D9AA-3748-4A28-87B8-1638AF89A3F2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div><div>On May 5, 2012, at 12:50 AM, Gary Thomas =
wrote:</div><blockquote type=3D"cite"><div>More information is needed in =
order to help with this. &nbsp;Try looking<br>at the log file (the name =
should be printed alongside the message<br>quoted above). &nbsp;If it's =
not obvious from that, provide the log file<br>(send/publicize) so the =
community can help.<br></div></blockquote><br></div><div>This is the =
build output of the kernel unpack failure. I've tried deleting tmp, and =
the git2 download, and tried afresh a couple of time with the same =
results. Any clues as to what could be causing this unpack =
failure?</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Function failed: Fetcher failure: =
Fetch command export HOME=3D"/home/elvis"; export SSH_AGENT_PID=3D"2807"; =
export SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd could not be =
run:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">None</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/l=
inux-omap3-3.2-r0/temp/log.do_unpack.19138</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Log data =
follows:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| DEBUG: Running export HOME=3D"/home/elvis"; export =
SSH_AGENT_PID=3D"2807"; export SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; =
export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git clone =
-s -n =
/tool/yocto/poky/build/downloads/git2/www.sakoman.com.git.linux-omap-2.6.g=
it/ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/l=
inux-omap3-3.2-r0/git/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| DEBUG: Running export HOME=3D"/home/elvis"; =
export SSH_AGENT_PID=3D"2807"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| ERROR: Function =
failed: Fetcher failure: Fetch command export HOME=3D"/home/elvis"; =
export SSH_AGENT_PID=3D"2807"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd could not be =
run:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| None</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package linux-omap3-3.2-r0: task =
do_unpack: Failed</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Task 513 =
(/tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, =
do_unpack) failed with exit code =
'1'</font></div><div><br></div><div>This is the contents of the =
log.do_unpack file:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DEBUG: Running =
export HOME=3D"/home/elvis"; export SSH_AGENT_PID=3D"2807"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git clone =
-s -n =
/tool/yocto/poky/build/downloads/git2/www.sakoman.com.git.linux-omap-2.6.g=
it/ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/l=
inux-omap3-3.2-r0/git/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEBUG: Running export HOME=3D"/home/elvis"; =
export SSH_AGENT_PID=3D"2807"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Function =
failed: Fetcher failure: Fetch command export HOME=3D"/home/elvis"; =
export SSH_AGENT_PID=3D"2807"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-Kjnkx2/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; git =
checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd could not be =
run:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">None</font></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></div><br></div></div></body></html>=

--Apple-Mail=_9E10D9AA-3748-4A28-87B8-1638AF89A3F2--
