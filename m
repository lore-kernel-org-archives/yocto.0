Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64E53E00C5B; Fri, 12 Feb 2016 00:05:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.40 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 512 seconds by postgrey-1.32 at yocto-www;
	Fri, 12 Feb 2016 00:05:01 PST
Received: from gecko.sbs.de (gecko.sbs.de [194.138.37.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC0E1E00C55
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 00:05:00 -0800 (PST)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by gecko.sbs.de (8.15.2/8.15.2) with ESMTPS id u1C7uO62018850
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 08:56:24 +0100
Received: from [139.16.78.41] (MD1FZU9C.ww002.siemens.net [139.16.78.41])
	by mail1.sbs.de (8.15.2/8.15.2) with ESMTP id u1C7uOrX016049
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 08:56:24 +0100
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Pascal Bach <pascal.bach@siemens.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56BD9028.9060509@siemens.com>
Date: Fri, 12 Feb 2016 08:56:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Best practice in debugging target software
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
X-List-Received-Date: Fri, 12 Feb 2016 08:05:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello everybody

I'm currently trying to figure out the easiest way to debug an executable on a target.
What I ended up is the following approach:

1. Enable Debugfs generation using: `IMAGE_GEN_DEBUGFS = "1"`
2. Switch debug split style to: `PACKAGE_DEBUG_SPLIT_STYLE = "debug-file-directory"`

After building the image I end up with a rootfs and a rootfs-dbg

3. Extract both rootfs and rootfs-dbg somewhere (/home/projects)
4. Setup gdb with the following .gdbinit:

```
set sysroot /home/projects/rootfs
set debug-file-directory /home/projects/rootfs-dbg/usr/lib/debug
set substitute-path /usr/src/debug /home/projects/rootfs-dbg/usr/src/debug
```

With this setup I'm able to debug trough all libraries on the system.
So so far so good.

However for this to work I need to change the `PACKAGE_DEBUG_SPLIT_STYLE` to a non default and this made me wonder if I missed something.
- Is there a way to get this setup working with the default ".debug" style of OE?
- If not why is the .debug style the default instead of "debug-file-directory"?
- Is there any documentation? I was unable to find anything more than [1] in the Yocto Mega manual.
- Is there some best practice I missed?

Regards
Pascal

[1] http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#platdev-gdb-remotedebug-setup

