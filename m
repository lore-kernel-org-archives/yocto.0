Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B2F6E00DF7; Mon, 17 Oct 2016 01:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.199 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpoutz2.laposte.net (smtpoutz299.laposte.net [178.22.154.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14325E00CE1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 01:09:13 -0700 (PDT)
Received: from smtpoutz2.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 112ED52B2EF
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 10:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1476691752; bh=WcvgSXW+r8pFkeikH5Ax8Jr7ObX9WrTmhLGYZP3Ey3c=;
	h=Subject:To:Date:From;
	b=NFY3b0XvjmbF/mDWwivOINBLMhuwV9r2gVUgYlbiQR+PO/5nR7Maek/fhr2dlm6Cp
	HV/FE/cKXzdZ2nwvpQdZu/QvRPDnVgE/rjifQX3W5PRMcYIDbndVaAQMIHc/kZDWR0
	/JnfiOKmNwdAV3nmkWUi7KW8t6VVlaP6xqZ5LckDdsqGtdm2iWVO+T+JQwJGD5NeF8
	Irc2kXvnJSl06Ok+2tFzGtS5+MiEL565IN14QmZ9qe/BHGXOczN9GZzdk/ix22Rrcx
	oOgvxJI6bdfp/L3XGchxP1jqsxGPgI8Hfh4mN5NOsk7+FxKVa/Au2c82r8S/oUR12p
	iF0JriRq906Dw==
Received: from smtpoutz2.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 027C252B2F1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 10:09:12 +0200 (CEST)
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.prosodie [10.128.63.5])
	by lpn-prd-vrout011 (Postfix) with ESMTP id F1E0F52B2EF
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 10:09:11 +0200 (CEST)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id E2234710158
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 10:09:11 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin004 (Postfix) with ESMTPA id D71DC710241
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 10:09:10 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 17 Oct 2016 10:09:10 +0200
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.ypgwxkybmnlnty@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrhedugddufedvucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpegtuffvffgg
X-VR-Cause-3: gffhkfgfsehtsffotddtreelnecuhfhrohhmpehiuggvrghlshhimhcuoehiuggvrghlshhimheslhgr
X-VR-Cause-4: phhoshhtvgdrnhgvtheqnecuffhomhgrihhnpehophgvrhgrrdgtohhmnecukfhppedvuddvrddvfeeg
X-VR-Cause-5: rdefiedrudefheenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehptgdqmhhlshdr
X-VR-Cause-6: vggtrghfrghrohhsrdhlohgtrghlpdhinhgvthepvdduvddrvdefgedrfeeirddufeehpdhmrghilhhf
X-VR-Cause-7: rhhomhepihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohephihotghtoheshiho
X-VR-Cause-8: tghtohhprhhojhgvtghtrdhorhhg
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: [yocto/meta-qt5] broken qt5 sdk
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
X-List-Received-Date: Mon, 17 Oct 2016 08:09:17 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Hi, since one week now i have a problem with my generated sdk. When i
deploy sdk and configure qtCreator i have this error when i try do deplo=
y
an app :

/usr/bin/ld: skipping incompatible
/opt/poky/secoA62/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/li=
bQt5Charts.so
when searching for -lQt5Charts
/usr/bin/ld: skipping incompatible
/home/mls/yocto-seco/secoA62q/tmp/sysroots/secosbca62/usr/lib/libQt5Char=
ts.so
when searching for -lQt5Charts
/usr/bin/ld: cannot find -lQt5Charts
/usr/bin/ld: skipping incompatible
/opt/poky/secoA62/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/li=
bQt5Widgets.so
when searching for -lQt5Widgets
/usr/bin/ld: skipping incompatible
/home/mls/yocto-seco/secoA62q/tmp/sysroots/secosbca62/usr/lib/libQt5Widg=
ets.so
when searching for -lQt5Widgets
/usr/bin/ld: cannot find -lQt5Widgets
/usr/bin/ld: skipping incompatible
/opt/poky/secoA62/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/li=
bQt5Gui.so
when searching for -lQt5Gui
/usr/bin/ld: skipping incompatible
/home/mls/yocto-seco/secoA62q/tmp/sysroots/secosbca62/usr/lib/libQt5Gui.=
so
when searching for -lQt5Gui
/usr/bin/ld: cannot find -lQt5Gui
/usr/bin/ld: skipping incompatible
/opt/poky/secoA62/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/li=
bQt5Core.so
when searching for -lQt5Core
/usr/bin/ld: skipping incompatible
/home/mls/yocto-seco/secoA62q/tmp/sysroots/secosbca62/usr/lib/libQt5Core=
.so
when searching for -lQt5Core
/usr/bin/ld: cannot find -lQt5Core
/usr/bin/ld: skipping incompatible
/opt/poky/secoA62/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/li=
bGLESv2.so
when searching for -lGLESv2
/usr/bin/ld: skipping incompatible
/home/mls/yocto-seco/secoA62q/tmp/sysroots/secosbca62/usr/lib/libGLESv2.=
so
when searching for -lGLESv2
/usr/bin/ld: cannot find -lGLESv2
/usr/bin/ld: skipping incompatible
/opt/poky/secoA62/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/li=
bpthread.so
when searching for -lpthread
/usr/bin/ld: skipping incompatible
/home/mls/yocto-seco/secoA62q/tmp/sysroots/secosbca62/usr/lib/libpthread=
.so
when searching for -lpthread
/usr/bin/ld: skipping incompatible
/home/mls/yocto-seco/secoA62q/tmp/sysroots/secosbca62/usr/lib/libpthread=
.a
when searching for -lpthread
collect2: error: ld returned 1 exit status
make: *** [barchart] Error 1
09:57:17: Le processus "/usr/bin/make" s'est termin=E9 avec le code 2.

For information we are on krogoth branch for oe/poky ... and master in
meta-qt5 (for qt5.7). We have no warning or error during the build.

I also see that qmake -query (the qmake give by the sdk in
/x86_64-pokysdk-linux/usr/bin/qt5/bin) give this :

QT_EXTERNAL_HOST_BINS:
QMAKE_SPEC:linux-g++
QMAKE_XSPEC:linux-g++
QMAKE_VERSION:3.0
QT_VERSION:5.7.0

and before for a working sdk, i have this for qmake -query :

QT_EXTERNAL_HOST_BINS:
QMAKE_SPEC:/home/mls/yoctoUdoo/neoBuild/tmp/sysroots/x86_64-linux/usr/li=
b/qt5/mkspecs/linux-oe-g++
QMAKE_XSPEC:linux-oe-g++
QMAKE_VERSION:3.0
QT_VERSION:5.6.1

I think a problem with QMAKE_SPEC, but i don't know how to resolve this =
!

If someone can help please !

Micka=EBl


-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

