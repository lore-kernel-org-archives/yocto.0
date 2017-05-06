Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29F40E00887; Sat,  6 May 2017 09:46:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCC98E0050E
	for <yocto@yoctoproject.org>; Sat,  6 May 2017 09:45:59 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id w10so15473369oif.0
	for <yocto@yoctoproject.org>; Sat, 06 May 2017 09:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=h03RQDPzsSuA10xp5r1jZL6L4Lvf+R0V1ZlJD27cPfE=;
	b=leAL6DxPfX+bPrdQmu6RjTfJ0TkJvyv/Yn/4fOuFYdnIcHbq7aVznpCe/7LUWR0YVx
	lsYFaZQMQ0paQ3PdeYjnfDL4q1GGNjLaTBM+It6uWXtDs3qSfKnkfL+WsmnJNXfOQDf1
	9HufwNCikIST9I9ee32Hmj+NbPDmimjCsLz53RWzDQtkxxKJjjksiubk3tbRlYpbHpPg
	0dFIMAdGFffl4+kcqDT22HAvmH9SNQwshG18wvvNk4hh2TQjDJJTuk+KUgNycvtFnPNT
	uu2P/Gw2atAO7/hqUClC/Yzxw3InXPbcG5fj3XYWR6orqOAcKcHUdMElRgLtcaw+a0DD
	sSXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=h03RQDPzsSuA10xp5r1jZL6L4Lvf+R0V1ZlJD27cPfE=;
	b=cfXiOSDhO8ORfNcMFiKPTI533GiJmao3Ho/WR4pRwzDyySEJI+MwxpOijBeY6F3E2b
	uS+BEY6xutl+t42ov7ZsGWjvrwIGoWJSHrx7nibohwHT8iC0mtQwRlbDJvSjlrC5xRwA
	M2ldawqJjEtNhH5HrGtVqFqBPAxBPxbky4HLtL6hosdkhiYi3XN5zBssLWBKKCDStf4G
	1fqJTmorCIVngtXnC1uesjwhiQqHBl8SbxCona+kAdG91xN5QIgRsyiyNwcxjGh4szap
	sx5kYYMPI6GJ4qHEJgfUwXAByWNHg6P7bTPiq7gr3qLAFeUEEI6zMYxCFWQAXB3Oca5g
	cKyQ==
X-Gm-Message-State: AN3rC/4UfFj+8laV4Jia9V8nHghht2ieAXkdEKvTyY7iGBDRuyzpB3sa
	PQoeGYrMb7MEcxKHvmZe6+Due/+e7TtP
X-Received: by 10.157.56.248 with SMTP id k53mr18569015ote.1.1494089158317;
	Sat, 06 May 2017 09:45:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.24.107 with HTTP; Sat, 6 May 2017 09:45:57 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
Date: Sat, 6 May 2017 18:45:57 +0200
Message-ID: <CAC+thW1Ehz4_s6pFYmNPPtfbtwoxVQXer-FR5YKEYgFP07KUPA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] how to apply custom kernel configuration?
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
X-List-Received-Date: Sat, 06 May 2017 16:46:02 -0000
Content-Type: multipart/alternative; boundary=001a11c0633e8b5b36054eddbd5d

--001a11c0633e8b5b36054eddbd5d
Content-Type: text/plain; charset=UTF-8

Hi!

I was wondering how to apply some extra kernel configuration from a custom
layer via a bbappend. I know that with meta-raspberrypi there exist some
variables you can define in local.conf that will drive how the kernel is
configured: but what about some very specific device driver nobody than me
is interest in? To me it seems it doesn't deserve a dedicated global oe
variable.

Some investigation showed this topic already came up on the list from time
to time in the past (most recently in [1]). To me it looks like there is
some common desire to get rid of the current "magic" carried out by
linux-rpi.inc by moving the linux-raspberrypi recipes into the
configuration fragments style.

In the short term, my question are: how do you guys manage to add your
custom kernel configurations? Do you rely on full blown static defconfigs?
Have you found any reliable way to do "differential" configurations with
the current state of metadata?

In a longer term, I'd really like to help moving towards supporting
configuration fragments for linux-raspberrypi, but I suspect it'd be a too
much hard task for my current understanding of the whole kernel
configuration workflow. Do you know of anyone already working on this or
does anyone have a clear idea of what is needed to get the work done? Some
times ago I tried to resurrect [2], but with no luck, probably due to some
changes that happened in the linux-yocto files in the meanwhile.

Comments from gurus are welcome! ;-)

[1] https://lists.yoctoproject.org/pipermail/yocto/2016-December/033559.html
[2] https://lists.yoctoproject.org/pipermail/yocto/2015-October/027034.html

--001a11c0633e8b5b36054eddbd5d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>I was wondering how to apply some e=
xtra kernel configuration from a custom layer via a bbappend. I know that w=
ith meta-raspberrypi there exist some variables you can define in local.con=
f that will drive how the kernel is configured: but what about some very sp=
ecific device driver nobody than me is interest in? To me it seems it doesn=
&#39;t deserve a dedicated global oe variable.</div><div><br></div><div>Som=
e investigation showed this topic already came up on the list from time to =
time in the past (most recently in [1]). To me it looks like there is some =
common desire to get rid of the current &quot;magic&quot; carried out by li=
nux-rpi.inc by moving the linux-raspberrypi recipes into the configuration =
fragments style.</div><div><br></div><div>In the short term, my question ar=
e: how do you guys manage to add your custom kernel configurations? Do you =
rely on full blown static defconfigs? Have you found any reliable way to do=
 &quot;differential&quot; configurations with the current state of metadata=
?</div><div><br></div><div>In a longer term, I&#39;d really like to help mo=
ving towards supporting configuration fragments for linux-raspberrypi, but =
I suspect it&#39;d be a too much hard task for my current understanding of =
the whole kernel configuration workflow. Do you know of anyone already work=
ing on this or does anyone have a clear idea of what is needed to get the w=
ork done? Some times ago I tried to resurrect [2], but with no luck, probab=
ly due to some changes that happened in the linux-yocto files in the meanwh=
ile.</div><div><br></div><div>Comments from gurus are welcome! ;-)</div><di=
v><br></div><div>[1]=C2=A0<a href=3D"https://lists.yoctoproject.org/piperma=
il/yocto/2016-December/033559.html">https://lists.yoctoproject.org/pipermai=
l/yocto/2016-December/033559.html</a></div><div>[2]=C2=A0<a href=3D"https:/=
/lists.yoctoproject.org/pipermail/yocto/2015-October/027034.html">https://l=
ists.yoctoproject.org/pipermail/yocto/2015-October/027034.html</a></div></d=
iv>

--001a11c0633e8b5b36054eddbd5d--
