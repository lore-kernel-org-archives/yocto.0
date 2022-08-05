Return-Path: <kuzemkoyocto@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D41FC00140
	for <webhook@archiver.kernel.org>; Fri,  5 Aug 2022 07:32:49 +0000 (UTC)
Subject: Re: [Need help] How to add one package to build directory of another
 package
To: yocto@lists.yoctoproject.org
From: "Kuzemko Aleksandr" <kuzemkoyocto@gmail.com>
X-Originating-Location: Vinnytsia, Vinnytsya Oblast, UA (178.74.234.29)
X-Originating-Platform: Linux Firefox 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Aug 2022 00:32:43 -0700
References: 
 <CAMKF1srnN+K5D6Kf+SfRF1=fE9tFzkAje0Bk=5VZndOU3g0tXw@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srnN+K5D6Kf+SfRF1=fE9tFzkAje0Bk=5VZndOU3g0tXw@mail.gmail.com>
Message-ID: <27844.1659684763044762809@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="A3om5fEhgykn2bZDK2MX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Aug 2022 07:32:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57782

--A3om5fEhgykn2bZDK2MX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Report of progress.
https://github.com/Kuzma30/meta-myconf/commit/25035fdb737aecfb765c963085e89=
8d0f33ac0b9
Have errors
ERROR: speech-dispatcher-git-r0 do_package_qa: QA Issue: non -dev/-dbg/nati=
vesdk- package libspeechd contains symlink .so '/usr/lib/libspeechd.so' [de=
v-so]
ERROR: speech-dispatcher-git-r0 do_package_qa: Fatal QA errors were found, =
failing task.
ERROR: Logfile of failure stored in: /home/qtembed/b2qt/build-raspberrypi4/=
tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/speech-dispatcher/git-r=
0/temp/log.do_package_qa.26981
ERROR: Task (/home/qtembed/b2qt/sources/meta-myconfig/recipes-multimedia/sp=
eech-dispatcher/speech-dispatcher_git.bb:do_package_qa) failed with exit co=
de '1'

--A3om5fEhgykn2bZDK2MX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Report of progress.<br /><a href=3D"https://github.com/Kuzma30/meta-myconf/=
commit/25035fdb737aecfb765c963085e898d0f33ac0b9" target=3D"_blank" rel=3D"n=
oopener">https://github.com/Kuzma30/meta-myconf/commit/25035fdb737aecfb765c=
963085e898d0f33ac0b9</a><br />Have errors<br />
<pre>ERROR: speech-dispatcher-git-r0 do_package_qa: QA Issue: non -dev/-dbg=
/nativesdk- package libspeechd contains symlink .so '/usr/lib/libspeechd.so=
' [dev-so]
ERROR: speech-dispatcher-git-r0 do_package_qa: Fatal QA errors were found, =
failing task.
ERROR: Logfile of failure stored in: /home/qtembed/b2qt/build-raspberrypi4/=
tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/speech-dispatcher/git-r=
0/temp/log.do_package_qa.26981
ERROR: Task (/home/qtembed/b2qt/sources/meta-myconfig/recipes-multimedia/sp=
eech-dispatcher/speech-dispatcher_git.bb:do_package_qa) failed with exit co=
de '1'</pre>

--A3om5fEhgykn2bZDK2MX--

