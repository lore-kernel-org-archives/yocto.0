Return-Path: <gizero@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57CE6E00B0A
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 06:07:35 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so459962vbb.35
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 06:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=JrqGTGH1ksf4KAn9DdRe3NtGYNjh6ym/udsOuTvNRPo=;
	b=FTSnFr7AZQaExBNQI19d3OoOQy5EOu88pMcSiegxgnzZk7Hb7x17ABixfzTHRwzUD2
	ZiQqc5/mFRFp9NK6sPyV4REZDNzZuI2x75Z3rO2KBNtZIVw/cxRaoAfTQ+h/OB/GPnkz
	RW3hN4StFoYAPi1zF1Id9lPFQK2DgfwwF8SdU=
MIME-Version: 1.0
Received: by 10.52.99.231 with SMTP id et7mr14566719vdb.114.1327068454561;
	Fri, 20 Jan 2012 06:07:34 -0800 (PST)
Received: by 10.220.46.194 with HTTP; Fri, 20 Jan 2012 06:07:34 -0800 (PST)
Date: Fri, 20 Jan 2012 15:07:34 +0100
Message-ID: <CAC+thW1YcPzTJLLxXWcko3kwkZJFiT7tFrdX+iC5tZ-uBTEdtw@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Subject: i486sx machine porting from oe-classic
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
X-List-Received-Date: Fri, 20 Jan 2012 14:07:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

In oe-classic there used to be a machine configuration for an i486sx
based machine called vortex86sx. In the past I was successful in
building a running image for such a target. Since I'd like to make a
new system based on vortex, my goal is to leverage the whole Yocto
Project infrastructure and port that old configuration to a BSP layer.
This will save me a lot of time in supporting developers with SDKs and
so.

Since I could not find any BSP based on hardware older than i586 in
recent Yocto trees, I'm concerned about this. Do you know of any
obstacle in doing such a port? I'm mainly interested in building
images with no graphics for that target: core-image-minimal is a
reasonable reference for me.

My plan was to initially lay out a new BSP by following guidelines
from Development Manual and BSP Guide. Then, what I suspect to be a
little trickier for my expertise, is the porting of the original
tune-i486sx.inc file to the current Yocto infrastructure. Is there any
document I can leverage to map the variables defined in the
oe-classic's syntax to the current ones for such a machine
configuration file?

The original i486 tune file was defining the following:

TARGET_ARCH = "i486"
TARGET_CC_ARCH = "-march=i486"
PACKAGE_EXTRA_ARCHS = "486sx"
BASE_PACKAGE_ARCH = "486sx"
FEED_ARCH = "${BASE_PACKAGE_ARCH}"

Are they still valid variables? Do I need any more?

Thank you in advance. Regards,
Andrea

