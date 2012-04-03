Return-Path: <gizero@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD680E0044A
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 11:43:43 -0700 (PDT)
Received: by qam2 with SMTP id 2so172836qam.14
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2012 11:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=YW1pvLNlDedDzUnBwuELUcfnlyCimwCrAQJR3f1Jyg8=;
	b=AwPo1q255WQ3DHU2NqgIy7xcZU1RN2EAm0DJd2EzNWRLpFbCxO7v+LIcB6rybMtGRz
	uikM4aEIptK62Bcl7MAu8Tr6UCq5Vf5UgrYV+kRAnKOhfAezbqHVCVYnCCvKb33+Jcv0
	79iXP+6vJO71zeeFDGEjgoiIsq7uOsOSzTR/Gox2fDT4a5QI5R7BgJI+257AOz9XyWFU
	2i241tjZsVhYGThK1P7DiltYAro18OiMK/tzLviy7fmUuHun3Q/CEUISaUt+T6L8/Bv0
	7snP/ZGx8eUI1Fgkj8p5wncBzOXlk6NlAJtGq/OxzkIgDgwVoLU/0MSlIJePr6uSKKGr
	fZVA==
MIME-Version: 1.0
Received: by 10.224.187.2 with SMTP id cu2mr18177155qab.88.1333478623040; Tue,
	03 Apr 2012 11:43:43 -0700 (PDT)
Received: by 10.229.157.199 with HTTP; Tue, 3 Apr 2012 11:43:43 -0700 (PDT)
Date: Tue, 3 Apr 2012 20:43:43 +0200
Message-ID: <CAC+thW0LdU-4re3d+4z+-PGpL9UFOZiQtXVBNnjm-VB=DJTn0w@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Subject: 1.2 beta testing report
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
X-List-Received-Date: Tue, 03 Apr 2012 18:43:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

Experience survey of using Yocto 1.2

Q: Which architecture did you choose to build?

A: qemux86 and beagleboard

Q: How easily were you able to build an image and boot an image?

A: This may be a lightly polarized answer, since my build host was
already setup to work with edison. Anyways building and booting images
for qemux86 was as easy as the Yocto Project Quick Start lets the
reader hope.

Q: Is there any surprise to you in the process of doing this Beta
testing? If so, would you please describe
it and tell us how you expected it to work?

A: The approach to building an image with the new 1.2 version is
reasonably similar (at least the command line terminal based approach)
to the one edison was based upon. So, no particular surprise here.

Q: How do you like our HOB interface? Please provide us with your
thoughts and suggestions on HOB
interface and functionality.

A: It was the first time with HOB for me: heard about it but never
tried before. Looks very promising expecially at simplifying life to
new users. I personaly apprecieted the list of recipes and packages
that gives a more usable overview of what's available for a given
layers setup.

Q: Was it easy to find the support you needed to build and boot an image?

A: Online documentation was enought for this beta testing

Q: Which Bugzilla reports did you submit?

A: None yet. Having some problem booting beagleboard image on real
hardware, but still nvestigating if this is really an issue. But don't
want to be late with the report here.

Q: Did you try anything else with Yocto 1.2?

A: Tried the following bitbake targets for qemux86:
core-image-minimal, core-image-sato, meta-toolchain,
meta-toolchain-sdk, adt-installer, meta-ide-support.

Q: What would you like to have in Yocto Project for future releases?

A:

Regards,
Andrea

