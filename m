Return-Path: <haemarkus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E03E2E00D26; Mon, 29 Feb 2016 06:35:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (haemarkus[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED2C9E00CE1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 06:35:46 -0800 (PST)
Received: by mail-lf0-f41.google.com with SMTP id j78so92502294lfb.1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 06:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=AnRbXYGxzgnO7cRgQngte7TyZPO6q9cTTbWRmM5a4VA=;
	b=X9zSNsiMUMz4hd5nDjfx72o1yCab9OHHbw16JNvMQfzDrJXJXWo4uNQN7KPMSxY3Fi
	LTNy3o2mnqmyqFB0B++WPCLYjVvJsWC4xdgCmxfpnK+QEeNSOSyzhhIYwCkrNkQHfmnl
	bzk38hKLZEk/LuEaDtW28ZopiU4lDwSoGVAhiLV8hR3bdn8jOH73znGMgFxz1YgdodWG
	nvzwU3oPpUvdmeaH0BNtwvZO5NVkeMfY2wiFfd+RiOiYTFE+KPzwKVi9BNHZcPprLIQl
	4iXNZlagZ6YUdMVAA4hL81T42JY0EaFCY5rH94g4W3pJVmJWl1dYrV3s0XgTbvmWkB4v
	hzkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=AnRbXYGxzgnO7cRgQngte7TyZPO6q9cTTbWRmM5a4VA=;
	b=WrrTWs62PTsLQZB7AN/A81cVuQTbt53ONsPiGqJ3pwbSyNvpEwOpu0ZJbJYLHBxc6Q
	u+6r3+ayFqcVzOEVGqTb+PEgwB4Vj5XcijW2J9qNoVJ1CHZHVU8+FcI7mH0XEIq7AAX+
	WDiR8KMK+YbSrkGYqj8g+GSOMUTvYOXFvRN48EY9L/Cfffr6HEBNvkKc8bELAWJ77ZGB
	Noo+2sj0fa6HUhpC0TeM/+bRrzOUnjLNV6qgZzJkSDJ09R1QiIdxb1oRuZieguVmFPcN
	t2ByoJr5UcNn7ed5uAUVzQt2CXzGbtx+q0dAudbDPJU+85eUvB5isfzjr4q+sQ5h+c41
	hPEQ==
X-Gm-Message-State: AD7BkJK8aU/b0Zg5kbIa5Di8yQQ3E87jPu/lhZU4+EqusG2x6gvgccw8DBkYXmwj1ThpF9RSKiTBYQXKhS4UAA==
MIME-Version: 1.0
X-Received: by 10.25.167.18 with SMTP id q18mr4564289lfe.27.1456756544778;
	Mon, 29 Feb 2016 06:35:44 -0800 (PST)
Received: by 10.112.75.9 with HTTP; Mon, 29 Feb 2016 06:35:44 -0800 (PST)
Date: Mon, 29 Feb 2016 15:35:44 +0100
Message-ID: <CAJ0mxBz=jW89WeUtNQ1tFdTq6Qbh6313BoqDMcFsN3saXr7BXA@mail.gmail.com>
From: Markus Haege <haemarkus@gmail.com>
To: yocto@yoctoproject.org
Subject: hello world fails in eclipse
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
X-List-Received-Date: Mon, 29 Feb 2016 14:35:49 -0000
Content-Type: multipart/alternative; boundary=001a1141084e603dfd052ce990ab

--001a1141084e603dfd052ce990ab
Content-Type: text/plain; charset=UTF-8

Hello there,

I searched the web for a while, figured out that I'm not the first person
with this problem
but I don't find the solution.

I use Debian 8 with Eclipse luna Release 2.
I installed the yocto plugins in eclipse as described in the manual.

Now I want to compile a hello world for the meta-raspberrypi but it fails:

The C compiler

"/home/markus/poky/meta-raspberrypi/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc"
  is not able to compile a simple test program.

/home/markus/poky/meta-raspberrypi/tmp/sysroots/x86_64-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
  error: cmTryCompileExec1319352149 uses VFP register arguments,
  CMakeFiles/cmTryCompileExec1319352149.dir/testCCompiler.c.o does not

I sourced the environment setup so eclipse finds under
properties/C++Build/Environment the settings. That's all I achieved.
I read about flags to set but don't know where. Something about floating
point. What I read was very old.

Thanks to any help

Markus

--001a1141084e603dfd052ce990ab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello there,<div><br></div><div>I searched the web for a w=
hile, figured out that I&#39;m not the first person with this problem</div>=
<div>but I don&#39;t find the solution.</div><div><br></div><div>I use Debi=
an 8 with Eclipse luna Release 2.</div><div>I installed the yocto plugins i=
n eclipse as described in the manual.</div><div><br></div><div>Now I want t=
o compile a hello world for the meta-raspberrypi but it fails:</div><div><b=
r></div><div><div>The C compiler</div><div>=C2=A0 &quot;/home/markus/poky/m=
eta-raspberrypi/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/ar=
m-poky-linux-gnueabi-gcc&quot;</div><div>=C2=A0 is not able to compile a si=
mple test program.</div></div><div><br></div><div><div>/home/markus/poky/me=
ta-raspberrypi/tmp/sysroots/x86_64-linux/usr/libexec/arm-poky-linux-gnueabi=
/gcc/arm-poky-linux-gnueabi/5.2.0/ld:</div><div>=C2=A0 error: cmTryCompileE=
xec1319352149 uses VFP register arguments,</div><div>=C2=A0 CMakeFiles/cmTr=
yCompileExec1319352149.dir/testCCompiler.c.o does not</div></div><div><br><=
/div><div>I sourced the environment setup so eclipse finds under properties=
/C++Build/Environment the settings. That&#39;s all I achieved.</div><div>I =
read about flags to set but don&#39;t know where. Something about floating =
point. What I read was very old.</div><div><br></div><div>Thanks to any hel=
p</div><div><br></div><div>Markus</div></div>

--001a1141084e603dfd052ce990ab--
