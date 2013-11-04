Return-Path: <bmentink@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BD4AE016E3
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 13:42:27 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id tp5so13166457ieb.2
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 13:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ng+ZoXX+JAJ72AChPpoh0hxmWHM8idPEscqFf4f4Nhk=;
	b=SJVHmn62ssVbIn7msEud/GQz5mrPvNJIWfEKDCclJ6rjM2hkXxQnzhELaY4wVHUoAT
	Z6sA0ws3xV+41AFxrD2AZRtmScPRsAeDLv0gYjEfadng96kj5sKb+7rxFGLvzUNYCDfQ
	HPLbOfAQ9e0BRyrCjq3eu5hx8vYEM/gNt0pzMcnVBZSB8MQ1Xn7J4ALPogG+sJZys7nM
	fXCqxiGmG9q6lV7SWjb7lAzMmJIy+XgTugvKIHQxhfFEOxbBF/x39XeS4DXFJCdBkBAj
	JTkiPwfV4n80K6aGlJm20vcRz+/AIwSU6ohE9pEwuiZOEVuHV0Ieo9ic2CIndluJzPjZ
	RSog==
MIME-Version: 1.0
X-Received: by 10.50.118.41 with SMTP id kj9mr13482706igb.9.1383601346829;
	Mon, 04 Nov 2013 13:42:26 -0800 (PST)
Received: by 10.43.83.9 with HTTP; Mon, 4 Nov 2013 13:42:26 -0800 (PST)
Date: Tue, 5 Nov 2013 10:42:26 +1300
Message-ID: <CALEed8Y_1TgNgF05H+YvJKnMDWhbeOVEb0vTCCdH+LECGzZM9w@mail.gmail.com>
From: Bernard Mentink <bmentink@gmail.com>
To: yocto@yoctoproject.org
Subject: Module loading issue
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
X-List-Received-Date: Mon, 04 Nov 2013 21:42:30 -0000
Content-Type: multipart/alternative; boundary=089e011769a3ca03f904ea60caa2

--089e011769a3ca03f904ea60caa2
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

I am having trouble loading some kernel CAN modules so that they go in my
image.

I have the following lines in my layers .conf file:

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-can-dev"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-c_can"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-c_can_platform"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-can"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-can-raw"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-mcp2515"

all the modules end up in the rootfs except c_can and c_can_platform.
All modules are built as modules.

They end up in the deply/images/modules* tarball, but not in the rootfs ..

Hopefully someone can suggest a solution.

Cheers,
Bernie

--089e011769a3ca03f904ea60caa2
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Hi Guys,<div><br></div><div>I am having trouble loading some kernel CAN modules so that they go in my image.</div><div><br></div><div>I have the following lines in my layers .conf file:</div><div><br></div><div>
<div>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += &quot;kernel-module-can-dev&quot;</div><div>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += &quot;kernel-module-c_can&quot;</div><div>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += &quot;kernel-module-c_can_platform&quot;</div>
<div>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += &quot;kernel-module-can&quot;</div><div>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += &quot;kernel-module-can-raw&quot;</div><div>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += &quot;kernel-module-mcp2515&quot;</div>
</div><div><br></div><div>all the modules end up in the rootfs except c_can and c_can_platform.</div><div>All modules are built as modules.</div><div><br></div><div>They end up in the deply/images/modules* tarball, but not in the rootfs ..</div>
<div><br></div><div>Hopefully someone can suggest a solution.</div><div><br></div><div>Cheers,</div><div>Bernie</div></div>

--089e011769a3ca03f904ea60caa2--
