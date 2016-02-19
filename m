Return-Path: <supritisingh08@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CD9EE00CB8; Fri, 19 Feb 2016 01:25:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (supritisingh08[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B68BEE00C60
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 01:25:39 -0800 (PST)
Received: by mail-lf0-f43.google.com with SMTP id 78so49756177lfy.3
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 01:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lPRYM6+sqX0xSeSXnM3JijEqDXWsO4pf4Lo3PrXrMWM=;
	b=aeT01pL1gxe9hT2FrMKIkcEwxU3Ne5kRO2/FMLw0pNRDs/CQNcnOso/6i0WL/4zNAy
	0WplvwW8BkpSTOoYv5crGkJ/JiB/+FGUzOKz+y+4HbgmtHAaVuEwAzFGjN4TS1wSoK5B
	5AUzGgYdwhQp6+Bpabqer9xPMKzZgtFFHdO4uohtrbSQujpK0o6b5U0d9cBpwmfomLbx
	crsMXJhBqfj7si6kuEbwWAgf1T6cmLvogniGIK51GVDOtme6ZfCWR/QrYY4TvyQYvt4Q
	OGfUevZp4bCGcYIGinGu+dI6VJ/ztBE+LzxwUjkixwHkwuyo4mJv1XMz4BwqpvOse7EG
	/BUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=lPRYM6+sqX0xSeSXnM3JijEqDXWsO4pf4Lo3PrXrMWM=;
	b=QG06N1XjDUowomgUUH9CmNa9tbd/r1sayYMlBNnv0Y/N2XFfByCF5XFL6vdEQDozix
	cyCPfWI0JBqwzsQxYcITpRECFpFDLUmFtr7JNe9w80rjMxYgAEcmOD6v6gT4iaknTweF
	Y+pJvBc/HWxMAyuxOz3eV/ulbgqH7T7lt6b6KyA026IKrH0sHu5aR01L313CsPjoTIBZ
	RH/NyvhVWVL180gBoyoEW9Jvxo2ciizxplpUtWGUcyrAV3zKF7/a8xpxx7l1FtROmjq4
	lq16yvZMZt+Vb/4uxWHaXd5fQJgT6SJd2y7sY8aeZOUUWrIV/rrZgI+uVqt/WQLLMu5K
	Qgzg==
X-Gm-Message-State: AG10YOSBjXe7xV+HMT7Cx5qbL8ZVrMCA5G8oC9b95Em0SURj324UsYZ4j+lrpbaU5Zc3CxQtwTqFC2uTkjEQew==
MIME-Version: 1.0
X-Received: by 10.25.159.210 with SMTP id i201mr5152039lfe.106.1455873937814; 
	Fri, 19 Feb 2016 01:25:37 -0800 (PST)
Received: by 10.114.78.195 with HTTP; Fri, 19 Feb 2016 01:25:37 -0800 (PST)
Date: Fri, 19 Feb 2016 10:25:37 +0100
Message-ID: <CAO1oV+d=Q-VBtisipvdKDxX=guM7JWea+S2kj_VpL8=dr33FOg@mail.gmail.com>
From: Supriti Singh <supritisingh08@gmail.com>
To: yocto@yoctoproject.org
Subject: lscpu command
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
X-List-Received-Date: Fri, 19 Feb 2016 09:25:45 -0000
Content-Type: multipart/alternative; boundary=001a114122b8e6bd51052c1c1055

--001a114122b8e6bd51052c1c1055
Content-Type: text/plain; charset=UTF-8

Hello,

meta/recipes-core/util-linux should provide lscpu command.

I created a core-image-sato image with meta layer. But when I boot yocto,
no lscpu command is present.

I do see it in util-linux.inc but "google util-linux lscpu" shows me a
patch remove-lscpu.

So, is lscpu command supported or not? If yes, then what do I need to
change in the configuration.

THanks,
Supriti

--001a114122b8e6bd51052c1c1055
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>meta/recipes-core/util-linux sho=
uld provide lscpu command.</div><div><br></div><div>I created a core-image-=
sato image with meta layer. But when I boot yocto, no lscpu command is pres=
ent.</div><div><br></div><div>I do see it in util-linux.inc but &quot;googl=
e util-linux lscpu&quot; shows me a patch remove-lscpu.</div><div><br></div=
><div>So, is lscpu command supported or not? If yes, then what do I need to=
 change in the configuration.</div><div><br></div><div>THanks,</div><div>Su=
priti</div></div>

--001a114122b8e6bd51052c1c1055--
