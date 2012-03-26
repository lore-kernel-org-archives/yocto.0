Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3700E013DD
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 05:55:41 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so3619901wgb.11
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 05:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+yffKey9nQWdJDC6iL5EN8BHbd5pVOXOVctvVRqk9iM=;
	b=dA94vPKQlEkjtbqss6TB+HZJqLEOOq0VgxHHlMmE4Dj6a4eEE9mW0qYi2snMVywE0F
	DJDmxejQanQqIqM44X/ZE00DJnwJlIGGtibyuSN0lvPOZMcucF6tp4q2KgS1d9nTB9BZ
	U6Ign5ZJxLFTyr+joXTSf0MGM/ZTBALOuf8CiihrlFSIEY/qsSmJOO+6hdA6lkd/fVQf
	5z+J2xXAgL/wSn6CXMFYb6i+TKVR5tPAZyQfMY+nAUJEExiraI8cXCKT5NeFpBK28g10
	snKayo7vEPEHiYq0nHlHeBhwxMK+KKybnEUAQ1SaRgdOw5x/d6cFrsPSm4x5whI+v6eB
	mP2w==
MIME-Version: 1.0
Received: by 10.180.102.100 with SMTP id fn4mr18442833wib.1.1332766540634;
	Mon, 26 Mar 2012 05:55:40 -0700 (PDT)
Received: by 10.223.97.77 with HTTP; Mon, 26 Mar 2012 05:55:40 -0700 (PDT)
Date: Mon, 26 Mar 2012 14:55:40 +0200
Message-ID: <CAGiJk9fZ1-KCiDuT3n9n_WHqNN9Gyj_UyPJ0Ktx2N=4F7Rv1cw@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: yocto@yoctoproject.org
Subject: Support of meta-kde for Poky
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
X-List-Received-Date: Mon, 26 Mar 2012 12:55:42 -0000
Content-Type: text/plain; charset=UTF-8

Hi,
the development of meta-kde has come to a point where kde-applications
can be tested (and maybe used).

Status of meta-kde:
Most common applications work, for example:
Calligra (not all of the toolkit), Kate, KCalc, Konqueror, Kwin &
Kwin_gles (KDE window manager), Okular and the applications from
KDE-baseapps.

Plasma Active (and Desktop) do not work correctly, but I'm working on it.
Plasma Netbook seems to work, but it needs more testing.


Involving the community:
As the development of meta-kde advanced to a point where developers
can use the layer to port KDE applications.
I'd like to invite others to test the layer, port their favorite KDE
applications and express their opinions about the current status.
Feel free to ask questions and suggest applications to be ported.

meta-kde has no mailing list, so I'm looking for a list to host the
discussion, any suggestions?



Current issues with Poky:
The giflib recipe is not contained in Poky.
Is this based on a design decision, or just because no one needs it?

As a meta-kde developer I don't want to limit the testing of meta-kde.
Would it be feasible to add giflib to Poky?
In this case I'm welcoming your suggestions.

According to Robert Yang this is the only dependency missing in Poky.
If there will be more missing dependencies in the future. adding a
meta-kde-poky compatibility layer would be a better solution.


-- 
Regards
Samuel

