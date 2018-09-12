Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CF3EE00566; Wed, 12 Sep 2018 07:26:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dhanush.ks[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 664C4E003D7
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 07:26:58 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id r37-v6so2054596qtc.0
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 07:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=cVdehUMPRiPSKHWtc69s8IgrsECF4z4KIAQbFz9qrCc=;
	b=eXCGVhJGQJ4Hb0C9r2FLgNqzpnxBxhh6OKO/AEJCVdxK//9g4KyAX8Clj1c0vwUdIU
	J8bR/tNC++WGRoSvQhg6+araUherbnTL4BNtmQNE3LzMV2F3YmPK0TGo+GTiKfqecDFs
	IZEKfMiI8KiHrMpCL8eBdGcscICMghIAWXCHSB4PfYfYEgpv4G7/XZ4szj/bL/P4BSoA
	zs1k8pEJRJKORpsI1zR8WfzUKOlXo+r8aDbXn1GceuY8CheDchNzvk9hMAtlYA/sQIv1
	LA7jaeqy4tk7HGy3qS81AexNcUqu34eQDDRA+8fFrVpDO6iNOypD0nFQIazUvrfSKTrt
	Ux1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cVdehUMPRiPSKHWtc69s8IgrsECF4z4KIAQbFz9qrCc=;
	b=cVqap69lxsZcPL2l7MMa7vk94Mtc77FV5L0DyQC00LNDPz9oLbEorvryaHtMLuIRML
	309Mz857T142v+5y4zCyHCdAuBRrdNNudMVmfeXzENJVx5KJmcSCIKkLVk+slWbKiRm7
	yT5fMPjmg9X3ibKmBhT1eFvSAO81+bpumko5jQmaF50OGHntsCfd0uCzCNvO66vBgoh0
	/bDq3l08pyc4T6py1rpO3rocjFqswYsToibvyU3tdcApYU+M3AXVM2sEWXhr5LmwLhQY
	eKIIr+c9fK5oCgk6Gk0G+V6wvQD3nWJtiG+hB+lgfD8JMbKwV6YtyKwmW9gkNrEpQWy7
	mOFg==
X-Gm-Message-State: APzg51DZNoyACGBVA1E8JpDTfuyawAADnvrKw6DEhjG3YLoaWDCN0ckj
	qqUV0oh04VRu9/Lk4b+SdarFyK0ctczHfmEO0PH15n9WAw8=
X-Google-Smtp-Source: ANB0VdYpF6W0LpcCJ49gCqj/2FpQtCltjplrFTRjmQchW/RVzI1JPYn8qJN7+Ls0zHunpD8LV7btVyP+Q4zF692Fd3I=
X-Received: by 2002:aed:3e59:: with SMTP id m25-v6mr1694101qtf.7.1536762417661;
	Wed, 12 Sep 2018 07:26:57 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Wed, 12 Sep 2018 16:26:46 +0200
Message-ID: <CAKPYHZ5rp54zQqJR0h9ho7kqHc7fEy6d_Pt3UrR=nBapXUB8sg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Problem using SVN in SUMO
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
X-List-Received-Date: Wed, 12 Sep 2018 14:26:59 -0000
Content-Type: multipart/alternative; boundary="0000000000000253530575ad62d1"

--0000000000000253530575ad62d1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I run into the following error with SVN when i bitbake a custom recipe /
building an image with the custom recipe.

ERROR: ExpansionError during parsing
/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/meta-xxx/meta-xxxbsp-ti/recip=
es-kernel/xxx-kmods/
xxx-kmods.bb
Traceback (most recent call last):
bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression
was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-YvJ9dQ1Lq4,guid=3Dc98=
f6cc12c31b7698bb5b2705b98dd53";
export SSH_AGENT_PID=3D"2819"; export
SSH_AUTH_SOCK=3D"/tmp/ssh-j5FBuyUi8utw/agent.2741"; export
GIT_SSL_CAINFO=3D"/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/poky-tools-=
2.5/2.5/sysroots/x86_64-pokysdk-linux/etc/ssl/certs/ca-certificates.crt";
export GIT_PROXY_COMMAND=3D"oe-git-proxy"; export ftp_proxy=3D"
http://proxy.xxx.com:8080"; export https_proxy=3D"https://proxy.xxx.com:808=
0";
export http_proxy=3D"http://proxy.xxx.com:8080"; export
PATH=3D"/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/t=
mp/sysroots-uninative/x86_64-linux/usr/bin:/opt/xxx/yocto/branches/DEVEL_ne=
xtYocto/yocto/poky-sumo-19.0.0/scripts:/opt/xxx/yocto/branches/DEVEL_nextYo=
cto/yocto/build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/xxx=
-kmods/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-=
gnueabi:/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/t=
mp/work/arm_cortex_a8-poky-linux-gnueabi/xxx-kmods/fetcheravoidrecurse-r0/r=
ecipe-sysroot/usr/bin/crossscripts:/opt/xxx/yocto/branches/DEVEL_nextYocto/=
yocto/build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/xxx-kmo=
ds/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/sbin:/opt/xxx/yocto/bra=
nches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky=
-linux-gnueabi/xxx-kmods/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/b=
in:/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wo=
rk/arm_cortex_a8-poky-linux-gnueabi/xxx-kmods/fetcheravoidrecurse-r0/recipe=
-sysroot-native/sbin:/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build_ar=
m-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/xxx-kmods/fetcheravoi=
drecurse-r0/recipe-sysroot-native/bin:/opt/xxx/yocto/branches/DEVEL_nextYoc=
to/yocto/poky-sumo-19.0.0/bitbake/bin:/opt/xxx/yocto/branches/DEVEL_nextYoc=
to/yocto/build_arm-cortex-a8/tmp/hosttools";
export HOME=3D"/home/xxx"; LANG=3DC LC_ALL=3DC /usr/bin/env svn --non-inter=
active
--trust-server-cert log --limit 1 --no-auth-cache --username
XD-XDj65-PMFW_UILDB --password *************!
https://LINK_TO_OUR_SVN/REPO_Linux/trunk/modules/ failed with exit code
127, output:
/usr/bin/env: svn: No such file or directory

Also when the image recipe is bitbaked, the following error is thrown

Failed to spawn fakeroot worker to run
/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/meta-xxx/meta-xxx-common/reci=
pes-xxx/images/xxx-image.bb:do_rootfs:
[Errno 2] No such file or directory:
'/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/sysr=
oots-components/x86_64/pseudo-native/usr/bin/pseudo'

Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush Keshava Reddy Soppahalli
Mob: +4915216144064

--0000000000000253530575ad62d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defa=
ult" style=3D"font-family:georgia,serif">I run into the following error wit=
h SVN when i bitbake a custom recipe / building an image with the custom re=
cipe.</div><div class=3D"gmail_default" style=3D"font-family:georgia,serif"=
><br></div><div class=3D"gmail_default"><div class=3D"gmail_default" style=
=3D"font-family:georgia,serif"><font color=3D"#ff0000">ERROR: ExpansionErro=
r during parsing /opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/meta-xxx/met=
a-xxxbsp-ti/recipes-kernel/xxx-kmods/<a href=3D"http://xxx-kmods.bb">xxx-km=
ods.bb</a></font></div><div class=3D"gmail_default" style=3D"font-family:ge=
orgia,serif">Traceback (most recent call last):</div><div class=3D"gmail_de=
fault" style=3D"font-family:georgia,serif">bb.data_smart.ExpansionError: Fa=
ilure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} =
which triggered exception FetchError: Fetcher failure: Fetch command export=
 PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=
=3D/tmp/dbus-YvJ9dQ1Lq4,guid=3Dc98f6cc12c31b7698bb5b2705b98dd53&quot;; expo=
rt SSH_AGENT_PID=3D&quot;2819&quot;; export SSH_AUTH_SOCK=3D&quot;/tmp/ssh-=
j5FBuyUi8utw/agent.2741&quot;; export GIT_SSL_CAINFO=3D&quot;/opt/xxx/yocto=
/branches/DEVEL_nextYocto/yocto/poky-tools-2.5/2.5/sysroots/x86_64-pokysdk-=
linux/etc/ssl/certs/ca-certificates.crt&quot;; export GIT_PROXY_COMMAND=3D&=
quot;oe-git-proxy&quot;; export ftp_proxy=3D&quot;<a href=3D"http://proxy.x=
xx.com:8080">http://proxy.xxx.com:8080</a>&quot;; export https_proxy=3D&quo=
t;<a href=3D"https://proxy.xxx.com:8080">https://proxy.xxx.com:8080</a>&quo=
t;; export http_proxy=3D&quot;<a href=3D"http://proxy.xxx.com:8080">http://=
proxy.xxx.com:8080</a>&quot;; export PATH=3D&quot;/opt/xxx/yocto/branches/D=
EVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/sysroots-uninative/x86_64-linu=
x/usr/bin:/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/poky-sumo-19.0.0/sc=
ripts:/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp=
/work/arm_cortex_a8-poky-linux-gnueabi/xxx-kmods/fetcheravoidrecurse-r0/rec=
ipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi:/opt/xxx/yocto/branches/D=
EVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-=
gnueabi/xxx-kmods/fetcheravoidrecurse-r0/recipe-sysroot/usr/bin/crossscript=
s:/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/wor=
k/arm_cortex_a8-poky-linux-gnueabi/xxx-kmods/fetcheravoidrecurse-r0/recipe-=
sysroot-native/usr/sbin:/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build=
_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/xxx-kmods/fetchera=
voidrecurse-r0/recipe-sysroot-native/usr/bin:/opt/xxx/yocto/branches/DEVEL_=
nextYocto/yocto/build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnuea=
bi/xxx-kmods/fetcheravoidrecurse-r0/recipe-sysroot-native/sbin:/opt/xxx/yoc=
to/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/work/arm_cortex_a=
8-poky-linux-gnueabi/xxx-kmods/fetcheravoidrecurse-r0/recipe-sysroot-native=
/bin:/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/poky-sumo-19.0.0/bitbake=
/bin:/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/=
hosttools&quot;; export HOME=3D&quot;/home/xxx&quot;; LANG=3DC LC_ALL=3DC /=
usr/bin/env svn --non-interactive --trust-server-cert log --limit 1 --no-au=
th-cache --username XD-XDj65-PMFW_UILDB --password *************! <a href=
=3D"https://LINK_TO_OUR_SVN/REPO_Linux/trunk/modules/">https://LINK_TO_OUR_=
SVN/REPO_Linux/trunk/modules/</a> failed with exit code 127, output:</div><=
div class=3D"gmail_default" style=3D"font-family:georgia,serif">/usr/bin/en=
v: svn: No such file or directory</div><div class=3D"gmail_default" style=
=3D"font-family:georgia,serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:georgia,serif">Also when the image recipe is bitbaked, the =
following error is thrown</div><div class=3D"gmail_default" style=3D"font-f=
amily:georgia,serif"><br></div><div class=3D"gmail_default"><font face=3D"g=
eorgia, serif" color=3D"#ff0000">Failed to spawn fakeroot worker to run /op=
t/xxx/yocto/branches/DEVEL_nextYocto/yocto/meta-xxx/meta-xxx-common/recipes=
-xxx/images/xxx-image.bb:do_rootfs: [Errno 2] No such file or directory: &#=
39;/opt/xxx/yocto/branches/DEVEL_nextYocto/yocto/build_arm-cortex-a8/tmp/sy=
sroots-components/x86_64/pseudo-native/usr/bin/pseudo&#39;</font><br></div>=
<div class=3D"gmail_default" style=3D"font-family:georgia,serif"><br></div>=
</div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div><font face=3D"georgia, serif" =
color=3D"#666666">Mit=C2=A0freundlichen=C2=A0Gr=C3=BC=C3=9Fen / Best Regard=
s,</font><div><font face=3D"georgia, serif" color=3D"#666666">Dhanush Kesha=
va Reddy Soppahalli</font></div><div><font face=3D"georgia, serif" color=3D=
"#cc0000">Mob: +4915216144064</font></div></div></div></div></div></div></d=
iv></div></div></div></div></div>

--0000000000000253530575ad62d1--
