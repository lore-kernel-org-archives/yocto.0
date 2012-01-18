Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79FDBE00594
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 04:55:50 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfk13 with SMTP id fk13so3226280vcb.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 04:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bce9XbgzvBtbjG5AIOkkU0Nm3gZQ2FheJIZbQZE1PJI=;
	b=gu5aQms9diAeaDuYi9ktjljFxgCgt5KQTaHVqI4k8f3x0GImdZmxVNkUPwyPVGRNJh
	toKcOknAJKDjx561136QV0oxb+j473p+fhefQQF30+oDSqwZJphNoh7pBnM12sU7uZBR
	I4r85plK/eqETQdJPC3NJhjJyeVfQysUVlO6w=
MIME-Version: 1.0
Received: by 10.220.231.131 with SMTP id jq3mr12346538vcb.44.1326891349576;
	Wed, 18 Jan 2012 04:55:49 -0800 (PST)
Received: by 10.52.180.69 with HTTP; Wed, 18 Jan 2012 04:55:49 -0800 (PST)
Date: Wed, 18 Jan 2012 07:55:49 -0500
Message-ID: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: build failure on ubuntu 64bits development system
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
X-List-Received-Date: Wed, 18 Jan 2012 12:55:50 -0000
Content-Type: multipart/alternative; boundary=14dae9cdc1258c0cfa04b6ccf786

--14dae9cdc1258c0cfa04b6ccf786
Content-Type: text/plain; charset=ISO-8859-1

I just built a new development pc and installed Ubuntu 11.10 x64.  I wonder
if there are any new requirements to building Yocto in that environment?  I
got an error right off, but then it complete the first 63 task and stopped
successfully.  error below:

jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
Pseudo is not present but is required, building this first before the main
build
Parsing recipes: 100% |#################################################|
Time: 00:00:25
Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037 targets, 22
skipped, 0 masked, 0 errors.
ERROR: Execution of event handler 'run_buildstats' failed
Traceback (most recent call last):
  File "run_buildstats(e)", line 18, in
run_buildstats(e=<bb.event.BuildStarted object at 0x4c338d0>)
  File "buildstats.bbclass", line 21, in
set_device(e=<bb.event.BuildStarted object at 0x4c338d0>)
UnboundLocalError: local variable 'rdev' referenced before assignment


Any ideas?

JIm A

--14dae9cdc1258c0cfa04b6ccf786
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I just built a new development pc and installed Ubuntu 11.10 x64.=A0 I wond=
er if there are any new requirements to building Yocto in that environment?=
=A0 I got an error right off, but then it complete the first 63 task and st=
opped successfully.=A0 error below:<br>
<br>jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato<br>Pseudo is not p=
resent but is required, building this first before the main build<br>Parsin=
g recipes: 100% |#################################################| Time: 0=
0:00:25<br>
Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037 targets, 22 =
skipped, 0 masked, 0 errors.<br>ERROR: Execution of event handler &#39;run_=
buildstats&#39; failed<br>Traceback (most recent call last):<br>=A0 File &q=
uot;run_buildstats(e)&quot;, line 18, in run_buildstats(e=3D&lt;bb.event.Bu=
ildStarted object at 0x4c338d0&gt;)<br>
=A0 File &quot;buildstats.bbclass&quot;, line 21, in set_device(e=3D&lt;bb.=
event.BuildStarted object at 0x4c338d0&gt;)<br>UnboundLocalError: local var=
iable &#39;rdev&#39; referenced before assignment<br><br><br>Any ideas?<br>
<br>JIm A<br>

--14dae9cdc1258c0cfa04b6ccf786--
