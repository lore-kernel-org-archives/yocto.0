Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2381E00872; Wed, 28 Jan 2015 09:15:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91DFCE00827
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 09:15:34 -0800 (PST)
Received: by mail-wi0-f174.google.com with SMTP id n3so13529829wiv.1
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 09:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=oFVL1O82p+jnuZEHorS0dlO3XimE9dBjsYGC8mXtNmA=;
	b=K4LDbAIkPP9LNjd6cQ3TvR8x35W4Xz/E1uxEV8fVovr2MNtTVr+A7ml/Vb/xujAIvu
	cxZFigqNwzQdXJclHXRjzm4mWvGru+yfPGl8qKErC7H7/c/WMIgM4mOJ/rRwxNPRUK7V
	zF0QiiVqZo7SsFGKhRmkZKeC2vWWLhURSM9MpgV3Rk9XDAP8dSuE/W1CFZvRLPm3wr0d
	AKHJ7k1t+PEMTVxmxBlNq2vGpScEINVM7p3kAq8rWXjpWqBNl6P7FfoupY4z/YyUgEub
	rdxcYIHQnKejdXhm4LvWGcqiOeTqoyTu/J0F5EYLS83HZAqkawtwG2OxIrsY7r9gPps4
	waTg==
X-Received: by 10.194.62.19 with SMTP id u19mr10038031wjr.0.1422465332877;
	Wed, 28 Jan 2015 09:15:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.32.85 with HTTP; Wed, 28 Jan 2015 09:15:11 -0800 (PST)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Wed, 28 Jan 2015 18:15:11 +0100
Message-ID: <CAEfap_Ab0Le_sXyjZUJ3Yh-kVDQQ9sQi0sGHcB1HQx-5xQ5mnw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-toolchain-qt5] Can't install qtwebkit-dev-5.3.2-r0@i586: no package provides qtwebkit = 5.3.2-r0
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
X-List-Received-Date: Wed, 28 Jan 2015 17:15:41 -0000
Content-Type: multipart/alternative; boundary=047d7ba97cd4df225c050db984b4

--047d7ba97cd4df225c050db984b4
Content-Type: text/plain; charset=UTF-8

hello group!

working with dizzy trying to
*bitbake meta-toolchain-qt5*
it fails at the step

*do_populate_sdk*

with the error(see below). So if i read the error correctly, qtwebkit-dev
is missing qtwebkit.
There is no such package as qtwebkit beeing generated :( So is this a bug?
Or maybe I am doing sth wrong?
HELP please :) Any hint would be more than welcome.
*BTW: Working with daisy did not produce such an error.*

+++






*ERROR: Unable to install packages. Command
'/home/simon/poky-dizzy/build/tmp/sysroots/i686-linux/usr/bin/smart --quiet
--data-dir=/home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/meta-toolchain-qt5/1.0-r0/sdk/image/opt/poky/1.7/sysroots/i586-poky-linux/var/lib/smart
install -y packagegroup-core-standalone-sdk-target-dbg@all
packagegroup-core-standalone-sdk-target@all
packagegroup-qt5-toolchain-target@all' returned 1:error: Can't install
qtwebkit-dev-5.3.2-r0@i586: no package provides qtwebkit = 5.3.2-r0ERROR:
Function failed: do_populate_sdkERROR: Logfile of failure stored in:
/home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/meta-toolchain-qt5/1.0-r0/temp/log.do_populate_sdk.20827ERROR:
Task 7
(/home/simon/poky-dizzy/sources/meta-qt5/recipes-qt/meta/meta-toolchain-qt5.bb
<http://meta-toolchain-qt5.bb>, do_populate_sdk) failed with exit code '1'*
+++

thank you and br
simon:)

--047d7ba97cd4df225c050db984b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>hello group!<br><br></div><div>working with dizzy try=
ing to <br><i><b>bitbake meta-toolchain-qt5</b></i><br></div><div>it fails =
at the step <br></div><div><br><i><b>do_populate_sdk</b></i><br><br></div><=
div>with the error(see below). So if i read the error correctly, qtwebkit-d=
ev is missing qtwebkit.<br></div><div>There is no such package as qtwebkit =
beeing generated :( So is this a bug? Or maybe I am doing sth wrong?<br></d=
iv><div>HELP please :) Any hint would be more than welcome.<br></div><div><=
i><b>BTW:</b> Working with daisy did not produce such an error.</i><br></di=
v><div><br>+++<br><i>ERROR: Unable to install packages. Command=20
&#39;/home/simon/poky-dizzy/build/tmp/sysroots/i686-linux/usr/bin/smart=20
--quiet=20
--data-dir=3D/home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/meta-too=
lchain-qt5/1.0-r0/sdk/image/opt/poky/1.7/sysroots/i586-poky-linux/var/lib/s=
mart
 install -y packagegroup-core-standalone-sdk-target-dbg@all=20
packagegroup-core-standalone-sdk-target@all=20
packagegroup-qt5-toolchain-target@all&#39; returned 1:<br>error: Can&#39;t =
install qtwebkit-dev-5.3.2-r0@i586: no package provides qtwebkit =3D 5.3.2-=
r0<br><br><br>ERROR: Function failed: do_populate_sdk<br>ERROR:
 Logfile of failure stored in:=20
/home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/meta-toolchain-qt5/1.=
0-r0/temp/log.do_populate_sdk.20827<br>ERROR:
 Task 7=20
(/home/simon/poky-dizzy/sources/meta-qt5/recipes-qt/meta/<a href=3D"http://=
meta-toolchain-qt5.bb">meta-toolchain-qt5.bb</a>,
 do_populate_sdk) failed with exit code &#39;1&#39;</i><br></div><div>+++<b=
r><br></div>thank you and br<br>simon:)<br><br></div>

--047d7ba97cd4df225c050db984b4--
