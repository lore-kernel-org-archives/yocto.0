Return-Path: <jayleezju@gmail.com>
Received: from mail-pb0-f52.google.com (mail-pb0-f52.google.com
	[209.85.160.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27F74E01482
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 19:21:09 -0700 (PDT)
Received: by mail-pb0-f52.google.com with SMTP id mc8so10680pbc.39
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 19:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:content-type:content-transfer-encoding:subject
	:message-id:date:to:mime-version:x-mailer;
	bh=4XJOkRDHUSaMkI+QAq0hcfews2PW3ElT/WAdefOKAJ4=;
	b=mhDa5JhlhbxV8FV/FwHkyZEe8Wi4wyR60MuGh0BA587JJGjFa4tVV7A4pXlqJo+ucn
	Fwlfrulk+idBgG1QN2r+md0BR+940766xloKRNXVXzLK7dnmAY8YUOGszKRKAmBI+kpN
	Cd/su+WXfIu0Sli+B6S99rHObfrJsLyoyQxZDz8pVG7K6pnF63n9yYk5RJDHoGB2MAiw
	Hn44y486ilqdjU2eQouI9gk4ebPK4kTF0XzeUWqoBEdAgWkWHi+os8XALg2yH8vdQ4Wf
	vnylhiDjOp/WQ1E5W/UylpR4s2oyTaalad1xwnNFyYEgHlw96vfnpRJFe14wslRkis4l
	gbTg==
X-Received: by 10.68.247.100 with SMTP id yd4mr431305pbc.47.1366078868854;
	Mon, 15 Apr 2013 19:21:08 -0700 (PDT)
Received: from [192.168.28.27] ([183.129.173.4])
	by mx.google.com with ESMTPS id jw10sm22533395pbb.3.2013.04.15.19.21.07
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 15 Apr 2013 19:21:08 -0700 (PDT)
From: gmail <jayleezju@gmail.com>
Message-Id: <6053A3A9-F75D-4E36-BC3A-AFB0CEC5DE60@gmail.com>
Date: Tue, 16 Apr 2013 10:21:04 +0800
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
X-Mailer: Apple Mail (2.1503)
Subject: poky lsb support
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
X-List-Received-Date: Tue, 16 Apr 2013 02:21:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

HI every body:

I  have a package(opensaf)  which needs support of  lsb init script .So =
I  use this "DISTRO ?=3D "poky-lab" in conf/local.conf
And i set IMAGE_INSTALL in my image  recipe as follows:
IMAGE_INSTALL =3D "\
    ${CORE_IMAGE_BASE_INSTALL} \=20
    packagegroup-core-boot \
    bash\
    bc \
    binutils binutils-symlinks \
    coreutils \
    cpio \
    cronie \
    diffutils \
    ed \
    elfutils \
    file \
    findutils \
    gawk \
    grep \
    m4 \
    ncurses \
    libpam \
    procps \
    psmisc \
    sed \
    shadow \
    tar \
    util-linux \
    zlib \
    lsb \
    lsbsetup \
    \
    dhcp-client \
    lsof \
    pciutils \
    setserial \
    strace \
    sysstat \
    usbutils \
    which \
    kernel-module-tipc \
    libxml2 \
    python-shell \
    python-xml \
    python-subprocess \
    eglibc-utils \
    tipcutils \
    opensaf\
    "

I didn't use  packagegroup-core-lsb because the flash of my device is =
very limited.

When I use the startup script of "opensaf" I always get=20
"/etc/core-lsb/lsb_start_daemon: line 44 : daemon: command not found
/etc/core-lsb/lsb_log_message: line 16: failure: command not found"

where can I find these commands : "daemon,failure", or which package I =
need to include to have these?

PS: my poky branch is danny.

Anybody can help ? thanks very much.




