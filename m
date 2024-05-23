Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E376C25B79
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 09:46:50 +0000 (UTC)
Subject: Getting a list of recipes which accessed network during do_fetch
To: yocto@lists.yoctoproject.org
From: gauravpathak129@gmail.com
X-Originating-Location: US (136.226.234.102)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 May 2024 01:27:31 -0700
Message-ID: <lZoQ.1716452851320671080.ZUB7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pjp2C7cHyqmIiYhjiF5G"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 09:46:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63178

--pjp2C7cHyqmIiYhjiF5G
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Experts,

I am wondering if there is any built in "Yocto way" of listing all the reci=
pes/packages which accessed network while fetching the source code during d=
o_fetch().

Also, would like to list the recipes/packages which got its source code fro=
m local file system and didn't accessed the network.

I did a grep for "Trying Upstream" and "Fetcher accessed the network" and I=
 indeed got the output something like

tmp-glibc/work/x86_64-linux/python3-flit-core-native/3.7.1-r0/temp/log.do_f=
etch.80085:34:DEBUG: Trying Upstream
tmp-glibc/work/x86_64-linux/python3-flit-core-native/3.7.1-r0/temp/log.do_f=
etch.80085:36:DEBUG: Fetcher accessed the network with the command /usr/bin=
/env wget -t 2 -T 30 --passive-ftp -P /home/gaurav/uno_yocto_cache/download=
s 'https://files.pythonhosted.org/packages/source/f/flit/flit-3.7.1.tar.gz'
tmp-glibc/work/x86_64-linux/unifdef-native/2.12-r0/temp/log.do_fetch.79254:=
34:DEBUG: Trying Upstream
tmp-glibc/work/x86_64-linux/unifdef-native/2.12-r0/temp/log.do_fetch.79254:=
36:DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -=
t 2 -T 30 --passive-ftp -P /home/gaurav/uno_yocto_cache/downloads 'http://d=
otat.at/prog/unifdef/unifdef-2.12.tar.xz'
tmp-glibc/work/x86_64-linux/unifdef-native/2.12-r0/temp/log.do_fetch.79254:=
324:DEBUG: Fetcher accessed the network with the command /usr/bin/env wget =
-t 2 -T 30 --passive-ftp -P /home/gaurav/uno_yocto_cache/downloads 'http://=
downloads.yoctoproject.org/mirror/sources/unifdef-2.12.tar.xz'
tmp-glibc/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+c9670c27ff-r0/te=
mp/log.do_fetch.86477:102:DEBUG: Trying Upstream
tmp-glibc/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+c9670c27ff-r0/te=
mp/log.do_fetch.86477:104:DEBUG: Fetcher accessed the network with the comm=
and /usr/bin/env wget -t 2 -T 30 --passive-ftp -P /home/gaurav/uno_yocto_ca=
che/downloads 'http://downloads.yoctoproject.org/mirror/sources/pseudo-preb=
uilt-2.33.tar.xz'
tmp-glibc/work/x86_64-linux/python3-installer-native/0.5.1-r0/temp/log.do_f=
etch.82362:34:DEBUG: Trying Upstream

But I would like to list only the package name such as unifdef-native pytho=
n3-installer-native.

--pjp2C7cHyqmIiYhjiF5G
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello Experts,</p>
<p>I am wondering if there is any built in "Yocto way" of listing all the r=
ecipes/packages which accessed network while fetching the source code durin=
g do_fetch().</p>
<p>Also, would like to list the recipes/packages which got its source code =
from local file system and didn't accessed the network.</p>
<p>I did a grep for "Trying Upstream" and "Fetcher accessed the network" an=
d I indeed got the output something like</p>
<p><span style=3D"font-family: courier_newregular, courier;">tmp-glibc/work=
/x86_64-linux/python3-flit-core-native/3.7.1-r0/temp/log.do_fetch.80085:34:=
DEBUG: Trying Upstream</span><br /><span style=3D"font-family: courier_newr=
egular, courier;">tmp-glibc/work/x86_64-linux/python3-flit-core-native/3.7.=
1-r0/temp/log.do_fetch.80085:36:DEBUG: Fetcher accessed the network with th=
e command /usr/bin/env wget -t 2 -T 30 --passive-ftp -P /home/gaurav/uno_yo=
cto_cache/downloads 'https://files.pythonhosted.org/packages/source/f/flit/=
flit-3.7.1.tar.gz'</span><br /><span style=3D"font-family: courier_newregul=
ar, courier;">tmp-glibc/work/x86_64-linux/unifdef-native/2.12-r0/temp/log.d=
o_fetch.79254:34:DEBUG: Trying Upstream</span><br /><span style=3D"font-fam=
ily: courier_newregular, courier;">tmp-glibc/work/x86_64-linux/unifdef-nati=
ve/2.12-r0/temp/log.do_fetch.79254:36:DEBUG: Fetcher accessed the network w=
ith the command /usr/bin/env wget -t 2 -T 30 --passive-ftp -P /home/gaurav/=
uno_yocto_cache/downloads 'http://dotat.at/prog/unifdef/unifdef-2.12.tar.xz=
'</span><br /><span style=3D"font-family: courier_newregular, courier;">tmp=
-glibc/work/x86_64-linux/unifdef-native/2.12-r0/temp/log.do_fetch.79254:324=
:DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -t =
2 -T 30 --passive-ftp -P /home/gaurav/uno_yocto_cache/downloads 'http://dow=
nloads.yoctoproject.org/mirror/sources/unifdef-2.12.tar.xz'</span><br /><sp=
an style=3D"font-family: courier_newregular, courier;">tmp-glibc/work/x86_6=
4-linux/pseudo-native/1.9.0+gitAUTOINC+c9670c27ff-r0/temp/log.do_fetch.8647=
7:102:DEBUG: Trying Upstream</span><br /><span style=3D"font-family: courie=
r_newregular, courier;">tmp-glibc/work/x86_64-linux/pseudo-native/1.9.0+git=
AUTOINC+c9670c27ff-r0/temp/log.do_fetch.86477:104:DEBUG: Fetcher accessed t=
he network with the command /usr/bin/env wget -t 2 -T 30 --passive-ftp -P /=
home/gaurav/uno_yocto_cache/downloads 'http://downloads.yoctoproject.org/mi=
rror/sources/pseudo-prebuilt-2.33.tar.xz'</span><br /><span style=3D"font-f=
amily: courier_newregular, courier;">tmp-glibc/work/x86_64-linux/python3-in=
staller-native/0.5.1-r0/temp/log.do_fetch.82362:34:DEBUG: Trying Upstream<b=
r /><br /></span>But I would like to list only the package name such as <sp=
an style=3D"font-family: courier_newregular, courier;">unifdef-native <span=
 style=3D"font-family: courier_newregular, courier;">python3-installer-nati=
ve.</span></span></p>
<p>&nbsp;</p>

--pjp2C7cHyqmIiYhjiF5G--

