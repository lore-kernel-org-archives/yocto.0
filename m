Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C75BC3601F
	for <webhook@archiver.kernel.org>; Tue, 17 Sep 2024 14:22:49 +0000 (UTC)
Subject: sstate fetch errors from network sstate cache server
To: yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Sep 2024 07:22:48 -0700
Message-ID: <Sc5N.1726582968380977142.qb0i@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5AlkBufzWsZlV4ymjSox"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 14:22:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63851

--5AlkBufzWsZlV4ymjSox
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying set up automated CI builds of our yocto builds and am running in=
to intermittent issues fetching sstate cache files from our server.
We're using Xilinx Petalinux tools 2023.1 version which corresponds to Yoct=
o Langdale. I'm posting here rather than in meta-xilinx as this feel like a=
 more general issue than a Xilinx specific one.

The build is run inside a docker image on an Ubuntu 22.04 host machine.
We have a NGINX server hosting our sstate cache and as a download pre-mirro=
r. The setup has been shown to work in local builds but when running from o=
ur build server CI pipelines is unreliable.

Even though the build completes by fetching from upstream sources it report=
s as a failure and the CI pipeline aborts:
2024-09-12T08:39:38.0284903Z NOTE: Tasks Summary: Attempted 8095 tasks of w=
hich 6863 didn't need to be rerun and all succeeded.
2024-09-12T08:39:38.0387164Z
2024-09-12T08:39:38.0387977Z Summary: There were 28 WARNING messages.
2024-09-12T08:39:38.0389108Z Summary: There were 6 ERROR messages, returnin=
g a non-zero exit code.
2024-09-12T08:39:38.4545026Z ERROR: Failed to build project. Check the /__w=
/1/s/DS10G/yocto/dgc220_release/dgc220/build/build.log file for more detail=
s...

The specifics of the issue are that in any given build a handful of sstate =
fetches from our server fail with errors like:
2024-09-12T08:10:54.9631514Z NOTE: recipe libgcrypt-native-1.10.1-r0: task =
do_populate_sysroot_setscene: Started
...
2024-09-12T08:11:19.2785546Z WARNING: libgcrypt-native-1.10.1-r0 do_populat=
e_sysroot_setscene: Failed to fetch URL file://universal/a6/18/sstate:libgc=
rypt-native:x86_64-linux:1.10.1:r0:x86_64:10:a61860a7702fbf31e63bdcbadf5348=
983eecb402fb01a4de25a91d8b9e45a9a3_populate_sysroot.tar.zst.siginfo;downloa=
dfilename=3Duniversal/a6/18/sstate:libgcrypt-native:x86_64-linux:1.10.1:r0:=
x86_64:10:a61860a7702fbf31e63bdcbadf5348983eecb402fb01a4de25a91d8b9e45a9a3_=
populate_sysroot.tar.zst.siginfo, attempting MIRRORS if available
2024-09-12T08:11:19.2792229Z ERROR: libgcrypt-native-1.10.1-r0 do_populate_=
sysroot_setscene: Fetcher failure: Unable to find file file://universal/a6/=
18/sstate:libgcrypt-native:x86_64-linux:1.10.1:r0:x86_64:10:a61860a7702fbf3=
1e63bdcbadf5348983eecb402fb01a4de25a91d8b9e45a9a3_populate_sysroot.tar.zst.=
siginfo;downloadfilename=3Duniversal/a6/18/sstate:libgcrypt-native:x86_64-l=
inux:1.10.1:r0:x86_64:10:a61860a7702fbf31e63bdcbadf5348983eecb402fb01a4de25=
a91d8b9e45a9a3_populate_sysroot.tar.zst.siginfo anywhere. The paths that we=
re searched were:
2024-09-12T08:11:19.2793587Z =C2=A0 =C2=A0 /__w/1/s/DS10G/yocto/dgc220_rele=
ase/dgc220/build/sstate-cache

In the build above 5 other packages failed to fetch at the same time (withi=
n 50ms). The exact packages that fail and number of packages that fail vary=
 from build to build.

I have managed to capture a tcpdump on the docker host machine and the acce=
ss logs of the NGINX server at the time of the above build. The access logs=
 show a HEAD and GET pair to check the tar.zst exists and fetch it, then HE=
AD request for the tar.zst.siginfo which returns OK but no corresponding GE=
T. About 16s later the build errors happen.

I can see no obvious errors in the tcpdump and no sign of failed attempts t=
o GET the siginfo. There are no errors reported from NGINX.

From reading other posts I accept this is probably some issue with our netw=
ork that needs to be sorted, but I don't have much to give our IT departmen=
t to go on other than it's not working reliably.
Is there a way I could get yocto/bitbake to produce more logs or diagnostic=
s as to why/how the fetch of the siginfo part of the sstate cache is failin=
g (before the warning/error that the local file doesn't exist)?

Or do you have any other advice that might help?

Best Regards,
Phil Dawson

--5AlkBufzWsZlV4ymjSox
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I'm trying set up automated CI builds of our yocto builds and am runni=
ng into intermittent issues fetching sstate cache files from our server.</d=
iv>
<div>We're using Xilinx Petalinux tools 2023.1 version which corresponds to=
 Yocto Langdale. I'm posting here rather than in meta-xilinx as this feel l=
ike a more general issue than a Xilinx specific one.</div>
<div>&nbsp;</div>
<div>The build is run inside a docker image on an Ubuntu 22.04 host machine=
.</div>
<div>We have a NGINX server hosting our sstate cache and as a download pre-=
mirror. The setup has been shown to work in local builds but when running f=
rom our build server CI pipelines is unreliable.</div>
<div>&nbsp;</div>
<div>Even though the build completes by fetching from upstream sources it r=
eports as a failure and the CI pipeline aborts:</div>
<div style=3D"padding-left: 40px;">2024-09-12T08:39:38.0284903Z NOTE: Tasks=
 Summary: Attempted 8095 tasks of which 6863 didn't need to be rerun and al=
l succeeded.<br />2024-09-12T08:39:38.0387164Z&nbsp;<br />2024-09-12T08:39:=
38.0387977Z Summary: There were 28 WARNING messages.<br />2024-09-12T08:39:=
38.0389108Z Summary: There were 6 ERROR messages, returning a non-zero exit=
 code.<br />2024-09-12T08:39:38.4545026Z ERROR: Failed to build project. Ch=
eck the /__w/1/s/DS10G/yocto/dgc220_release/dgc220/build/build.log file for=
 more details...</div>
<div>&nbsp;</div>
<div>The specifics of the issue are that in any given build a handful of ss=
tate fetches from our server fail with errors like:</div>
<div style=3D"padding-left: 40px;">2024-09-12T08:10:54.9631514Z NOTE: recip=
e libgcrypt-native-1.10.1-r0: task do_populate_sysroot_setscene: Started</d=
iv>
<div style=3D"padding-left: 40px;">...</div>
<div style=3D"padding-left: 40px;">2024-09-12T08:11:19.2785546Z WARNING: li=
bgcrypt-native-1.10.1-r0 do_populate_sysroot_setscene: Failed to fetch URL =
file://universal/a6/18/sstate:libgcrypt-native:x86_64-linux:1.10.1:r0:x86_6=
4:10:a61860a7702fbf31e63bdcbadf5348983eecb402fb01a4de25a91d8b9e45a9a3_popul=
ate_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/a6/18/sstate:libgc=
rypt-native:x86_64-linux:1.10.1:r0:x86_64:10:a61860a7702fbf31e63bdcbadf5348=
983eecb402fb01a4de25a91d8b9e45a9a3_populate_sysroot.tar.zst.siginfo, attemp=
ting MIRRORS if available<br />2024-09-12T08:11:19.2792229Z ERROR: libgcryp=
t-native-1.10.1-r0 do_populate_sysroot_setscene: Fetcher failure: Unable to=
 find file file://universal/a6/18/sstate:libgcrypt-native:x86_64-linux:1.10=
.1:r0:x86_64:10:a61860a7702fbf31e63bdcbadf5348983eecb402fb01a4de25a91d8b9e4=
5a9a3_populate_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/a6/18/s=
state:libgcrypt-native:x86_64-linux:1.10.1:r0:x86_64:10:a61860a7702fbf31e63=
bdcbadf5348983eecb402fb01a4de25a91d8b9e45a9a3_populate_sysroot.tar.zst.sigi=
nfo anywhere. The paths that were searched were:<br />2024-09-12T08:11:19.2=
793587Z &nbsp; &nbsp; /__w/1/s/DS10G/yocto/dgc220_release/dgc220/build/ssta=
te-cache</div>
<div>&nbsp;</div>
<div>In the build above 5 other packages failed to fetch at the same time (=
within 50ms). The exact packages that fail and number of packages that fail=
 vary from build to build.</div>
<div>&nbsp;</div>
<div>I have managed to capture a tcpdump on the docker host machine and the=
 access logs of the NGINX server at the time of the above build. The access=
 logs show a HEAD and GET pair to check the tar.zst exists and fetch it, th=
en HEAD request for the tar.zst.siginfo which returns OK but no correspondi=
ng GET. About 16s later the build errors happen.</div>
<div>&nbsp;</div>
<div>I can see no obvious errors in the tcpdump and no sign of failed attem=
pts to GET the siginfo. There are no errors reported from NGINX.</div>
<div>&nbsp;</div>
<div>From reading other posts I accept this is probably some issue with our=
 network that needs to be sorted, but I don't have much to give our IT depa=
rtment to go on other than it's not working reliably.</div>
<div>Is there a way I could get yocto/bitbake to produce more logs or diagn=
ostics as to why/how the fetch of the siginfo part of the sstate cache is f=
ailing (before the warning/error that the local file doesn't exist)?</div>
<div>&nbsp;</div>
<div>Or do you have any other advice that might help?</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Phil Dawson</div>

--5AlkBufzWsZlV4ymjSox--

