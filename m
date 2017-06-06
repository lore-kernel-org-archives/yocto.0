Return-Path: <czq@bu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB3BCE00BB1; Tue,  6 Jun 2017 05:54:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [128.197.228.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.71 listed in dnsbl.sorbs.net]
X-Greylist: delayed 692 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Jun 2017 05:54:00 PDT
Received: from relay54.bu.edu (relay54.bu.edu [128.197.228.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54E34E00BAD
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 05:54:00 -0700 (PDT)
X-Envelope-From: czq@bu.edu
Received: from mail-it0-f71.google.com (mail-it0-f71.google.com
	[209.85.214.71])
	by relay54.bu.edu (8.14.3/8.14.3) with ESMTP id v56CgBvE023788
	for <yocto@yoctoproject.org>; Tue, 6 Jun 2017 08:42:11 -0400
Received: by mail-it0-f71.google.com with SMTP id z125so193647960itc.4
	for <yocto@yoctoproject.org>; Tue, 06 Jun 2017 05:42:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=fuRQZQy0i8fkiOodBuzOpPyHY/Rxuxvn55CelaQrfFU=;
	b=d56OIs8ETNoZvT+KC4GtslohZhBV7gmSLAO3xHTcvJCjiDRWad6Ga2yQvHW9rJUyWK
	nJnlzVhvQMRXqDtAEmQL3E0hDJGstIz55NU/P5wfnoQXK9y6o0bAfPJNNG7cJ7BoMl8k
	rvvAIyCOJCf9R+c+4MpKrPh5V5LP0QnNJ07qbgrGHw17fYHYgpCM+G+omlb3nmN6g6An
	UguLFDaEFZlm81NRkMq/uhigyE2Ly0CMtrzCwqlR5QhUMJj0orK0GBstnTtAAxhb4f+D
	JthN8Ub+WuRpE9vNNGLGoqTbfo/zTl7Auapr1o3+mwvmxFY9Tibje67WPfhQ1t49soPJ
	+k4w==
X-Gm-Message-State: AODbwcCGuxEeGXGdor/xJO7j4qvK2b42cFOvS94Z9mXZ8nMiE3kll+iE
	BQtKJ1U4jmGCuMBB6Jgg6Ui7i+z2FCwjrrQKKe6HoicA1NGiH/+cBOX8ZAlLQqnjyQ+6W6cR+Yu
	eJ84NA0kZymnsKOipELCsY2Ui
X-Received: by 10.36.1.141 with SMTP id 135mr17361394itk.4.1496752931071;
	Tue, 06 Jun 2017 05:42:11 -0700 (PDT)
X-Received: by 10.36.1.141 with SMTP id 135mr17361372itk.4.1496752930821; Tue,
	06 Jun 2017 05:42:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.47.38 with HTTP; Tue, 6 Jun 2017 05:42:10 -0700 (PDT)
From: Zhuoqun Cheng <czq@bu.edu>
Date: Tue, 6 Jun 2017 08:42:10 -0400
Message-ID: <CACHUKC+vL6KRQq0r24T8px1SteB4o76gFtVG-CccY2vYDm6ytA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: The best way to change target architecture
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
X-List-Received-Date: Tue, 06 Jun 2017 12:54:04 -0000
Content-Type: multipart/alternative; boundary="001a113b943cc2e88f055149f27e"

--001a113b943cc2e88f055149f27e
Content-Type: text/plain; charset="UTF-8"

Hi Yocto Experts,

I'm fairly new to Yocto and I've already tried my best to search for
answers, but not happy with what I found.

So here's the situation I've got:

I'm using yocto to build the intel aero board image, following this link:
https://github.com/intel-aero/meta-intel-aero/wiki/Quickstart-Guide#yocto-for-intel-aero

Everything worked fine, until I wanted to change the target architecture
from the default 64-bit x86 to 32-bit x86. What I did is three steps:
1. do a clean: bitbake -c clean intel-aero-image
2. change configuration, from "require conf/machine/intel-corei7-64.conf"
to "require conf/machine/intel-core2-32.conf" in the file
"meta-intel-aero/conf/machine/intel-aero.conf"
3. do a build: bitbake intel-aero-image

Unfortunately, I got loads of errors, like "ERROR:
linux-yocto-4.4.60+gitAUTOINC+2cc78e92f4-r0 do_package_qa: QA Issue:
Architecture did not match (3 to 62) on
work/core2-32-intel-common-poky-linux/linux-yocto/4.4.60+gitAUTOINC+2cc78e92f4-r0/packages-split/kernel-module-gspca-kinect/lib/modules/4.4.60-yocto-standard/kernel/drivers/media/usb/gspca/gspca_kinect.ko
[arch]
"

Then I tried deleting all the files in the packages-split directory and
rebuilding. It passed building the kernel (even though failed because some
other package's arch mismatch), but those file I deleted never got
generated again! Now I'm a bit worried.

So I guess my question is:
What is the correct procedures to follow to reuse a poky folder (already
built once) for a different target architecture? I'm happy to accept any
links and suggested readings.

Thanks a lot!
Tom.

--001a113b943cc2e88f055149f27e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Yocto Experts,<div><br></div><div>I&#39;m fairly new to=
 Yocto and I&#39;ve already tried my best to search for answers, but not ha=
ppy with what I found.</div><div><br></div><div>So here&#39;s the situation=
 I&#39;ve got:=C2=A0</div><div><br></div><div>I&#39;m using yocto to build =
the intel aero board image, following this link:</div><div><a href=3D"https=
://github.com/intel-aero/meta-intel-aero/wiki/Quickstart-Guide#yocto-for-in=
tel-aero">https://github.com/intel-aero/meta-intel-aero/wiki/Quickstart-Gui=
de#yocto-for-intel-aero</a><br></div><div><br></div><div>Everything worked =
fine, until I wanted to change the target architecture from the default 64-=
bit x86 to 32-bit x86. What I did is three steps:</div><div>1. do a clean: =
bitbake -c clean intel-aero-image</div><div>2. change configuration, from &=
quot;require conf/machine/intel-corei7-64.conf&quot; to &quot;require conf/=
machine/intel-core2-32.conf&quot; in the file &quot;meta-intel-aero/conf/ma=
chine/intel-aero.conf&quot;</div><div>3. do a build: bitbake intel-aero-ima=
ge</div><div><br></div><div>Unfortunately, I got loads of errors, like &quo=
t;ERROR: linux-yocto-4.4.60+gitAUTOINC+2cc78e92f4-r0 do_package_qa: QA Issu=
e: Architecture did not match (3 to 62) on work/core2-32-intel-common-poky-=
linux/linux-yocto/4.4.60+gitAUTOINC+2cc78e92f4-r0/packages-split/kernel-mod=
ule-gspca-kinect/lib/modules/4.4.60-yocto-standard/kernel/drivers/media/usb=
/gspca/gspca_kinect.ko [arch]</div><div>&quot;</div><div><br></div><div>The=
n I tried deleting all the files in the packages-split directory and rebuil=
ding. It passed building the kernel (even though failed because some other =
package&#39;s arch mismatch), but those file I deleted never got generated =
again! Now I&#39;m a bit worried.</div><div><br></div><div>So I guess my qu=
estion is:</div><div>What is the correct procedures to follow to reuse a po=
ky folder (already built once) for a different target architecture? I&#39;m=
 happy to accept any links and suggested readings.</div><div><br></div><div=
>Thanks a lot!</div><div>Tom.</div><div><br></div></div>

--001a113b943cc2e88f055149f27e--
