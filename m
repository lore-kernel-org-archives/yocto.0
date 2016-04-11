Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0118FE00D96; Mon, 11 Apr 2016 13:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC36BE00C22
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 13:59:17 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id p188so223327953oih.2
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 13:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=Dmnpm+FWwqOkNHsEHhMAXjh+PXzhcU0qqpODOzWNnSQ=;
	b=uk/EBS2rVRQQBvLrzK7IMXyVbQge3/F3Eg9aI4Gvnz26x/d2+aq0xFtcW7Ej7ky0Oa
	Jbgv1S810MckHcEWn/3y/nJppsxADZl/pz9U3XrbnrK1Catj4o7E5SVS3uYbhwWSO1pV
	1hzl76A84tpHKnMLp2iZEZbKsl20cvjxlZ6Eh5q/XXaVjkqA6/g6MYOiWSe8DY1pcxLt
	7Prf/H19YNjhEsr3DRYqYPhmco2wbYubj7d8v5C92nhrXId25YEb2D7ycCzfxwoWlcBc
	P5PX85vEjLm0idsceQ8tzl0cIPPNYqGqsRaEddYdre1PfGphdqDbXh3Znk3VIraemMGt
	DEtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Dmnpm+FWwqOkNHsEHhMAXjh+PXzhcU0qqpODOzWNnSQ=;
	b=buJEWmnwhyW11FUXlF9UFDWPgFmZPdn5hBQ3wwkPnumH6F58FCYGFerYNyK8qhK7Gh
	qeefKiq85kfPfyr0LG7lAzPS+YiR6ggNG5cqmzbRFCu0pHTHhWK64ESUqzJFUbvbadQG
	W88gYdvnO7mOH9Fs+8Rb8V27KEftz6+gUicszyHfqY1rEi/smIKeaGA+leLRiA9piNkx
	xzw4EPeTs6SPoW64jY36XGm/NSIi/mauIoiHIptdRtOkjHRfY3i6xP+c+Wh4bdb1fosS
	01hSpx0gMxobOFQfV/z9rMwX7nI18ZUmoFI1sntm1c4sDIYLb2vO85SxmjqK6X+HDRyn
	ROig==
X-Gm-Message-State: AD7BkJKhKhqGe+nn8YkqrcY2W2nG++p5XinpcUU9G7hkUJl/Slr/i74Z22vs538Rp8++b8IJ+fQHdein5KV08g==
MIME-Version: 1.0
X-Received: by 10.157.7.23 with SMTP id 23mr11341768ote.192.1460408357106;
	Mon, 11 Apr 2016 13:59:17 -0700 (PDT)
Received: by 10.60.0.134 with HTTP; Mon, 11 Apr 2016 13:59:17 -0700 (PDT)
Date: Mon, 11 Apr 2016 13:59:17 -0700
Message-ID: <CAGMdoFmK8NgR9xwapRqCYps6_fTaCt4PhaMfynyMq9qFdMqK_w@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: Help with mosquitto_1.3.4 recipe
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
X-List-Received-Date: Mon, 11 Apr 2016 20:59:20 -0000
Content-Type: text/plain; charset=UTF-8

The first time I used mosquitto_1.3.4.bb from
meta-intel-iot-middleware a few months ago, it worked and I've been
using it in my build since.  Today, I created a new yocto build
directory and having trouble getting mosquitto to build now.

The directory /yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.3.4-r0/mosquitto-1.3.4
is empty, whereas in my original build directory, the mosquitto source
is there.  I don't see any errors in log.do_fetch, but the error comes
during do_configure:

WARNING: Could not copy license file
/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.3.4-r0/mosquitto-1.3.4/LICENSE.txt
to /yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.3.4-r0/license-destdir/mosquitto/LICENSE.txt:
[Errno 2] No such file or directory:
'/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.3.4-r0/mosquitto-1.3.4/LICENSE.txt'
ERROR: Function failed: mosquitto: LIC_FILES_CHKSUM points to an
invalid file: /yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.3.4-r0/mosquitto-1.3.4/LICENSE.txt
ERROR: Logfile of failure stored in:
/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.3.4-r0/temp/log.do_configure.31424
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| DEBUG: Shell function do_configure finished
| DEBUG: Executing python function do_qa_configure
| NOTE: Checking autotools environment for common misconfiguration
| DEBUG: Python function do_qa_configure finished
| ERROR: Function failed: mosquitto: LIC_FILES_CHKSUM points to an
invalid file: /yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.3.4-r0/mosquitto-1.3.4/LICENSE.txt
ERROR: Task 388
(/yocto/meta-intel-iot-middleware/recipes-connectivity/mosquitto/mosquitto_1.3.4.bb,
do_configure) failed with exit code '1'

Can anyone suggest where to look next to debug this? log.do_fetch
doesn't show any errors.  I am using fido branch of poky and this
revision of meta-intel-iot-middleware:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-middleware/commit/?id=cfdd40032ca389bc1359a8b2e13e1da8f21e2561
(before the mosquitto recipe was upgraded to 1.4)

Thanks,
Ed

