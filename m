Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 751D5E00A6B; Wed,  7 Nov 2018 14:26:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
	[209.85.222.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 945BDE00A4F
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 14:26:00 -0800 (PST)
Received: by mail-ua1-f67.google.com with SMTP id o17so6476243uad.8
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 14:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=2mJzLA9Ucr4vf4fEx0Pw5ntDIb/xmtm5rFBT+vKN7Yk=;
	b=Fy2RIL3c+fjtjl1XfxkmBsB7Bdr9zQaWUVPMXR1lncgdZjbse6REC1st3r6ZHOHtS3
	iEBF9L4fUhBaxpDxS4HlxOjXiLAvBqCVRMIYrx3DaDuE011jlbyqfMx4jzNwYBJXuH3Y
	vjCPocU367VqT5Ytc4bvEpPWb4LSQFe7JZx7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=2mJzLA9Ucr4vf4fEx0Pw5ntDIb/xmtm5rFBT+vKN7Yk=;
	b=LlWONbs6MjRQU+Fpl1vrHILJ6BCT2LIm9jwa4roVNl/AMBRQ1RTwM2RLOYA6Vl+7Jd
	NwC5IakI86M8vFQQUX9tx1mReE5pQv1PbpvzFzbWgWe0NzNtN5vJbMNLXNStjWq4axbn
	8LZdw9WtuUS9Pt8NMno9KMwyF23CPPQT4pU4b89yGTZu6RLMHyCDnwqsDbNjgEiPn4qz
	1IynjSMMJJUzcg3fAqpJhRlZS+gWFm/4nKB8f/Y/T1+t9+vJJhgb4Z/fj2YpZUe5klzu
	cxcsSQWF7kWGTQqMKDgoxWQbl8zbFj/Is2BkkaXSwdPRrf5fhC5buB4Yg4lfwLtPZHKv
	WZpQ==
X-Gm-Message-State: AGRZ1gKt5IDZFkD+wkkOMfEcnbeMTifkqUur/n2AexQzOkZjK9BRuYq+
	7jQfpS5v+eDfI2ewSLe7WY9HWigHN39OWvKMANMh10iPTQ8=
X-Google-Smtp-Source: AJdET5f23xOOt3DQNq8ZzlAHdbv2EetEwyAYrD8TnF15Zj8NQ6VK8ztx72f8rqgOllaKcKX0jGbEPXjr62RqrpRIlkw=
X-Received: by 2002:ab0:30d8:: with SMTP id c24mr978347uam.44.1541629559678;
	Wed, 07 Nov 2018 14:25:59 -0800 (PST)
MIME-Version: 1.0
From: Anibal Limon <anibal.limon@linaro.org>
Date: Wed, 7 Nov 2018 16:25:48 -0600
Message-ID: <CA+_Aqivq7XN8Q_fu43EFwhWs377vduoR9D5gVGBqS7gJgzKxNw@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: aaron.chun.yew.chan@intel.com
Subject: [RFC] Yocto Autobuilder and LAVA Integration
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
X-List-Received-Date: Wed, 07 Nov 2018 22:26:01 -0000
Content-Type: multipart/alternative; boundary="00000000000047bfe6057a1a9aa8"

--00000000000047bfe6057a1a9aa8
Content-Type: text/plain; charset="UTF-8"

Hi,

We know the need to execute OE testimage over real HW not only QEMU,

I'm aware that currently there is an implementation on the Yocto
Autobuilder Helper
, this initial implementation looks pretty well separating parts for
template generation [1] and the script to send jobs to LAVA [2].

There are some limitations.

- Requires that the boards are accessible trough SSH (same network?) by the
Autobuilder, so no distributed LAB testing.
- LAVA doesn't know about test results because the execution is injected
via SSH.

In order to do a distributed Boards testing the Yocto Autobuilder needs to
publish in some place accessible the artifacts (image, kernel, etc) to
flash/boot the board and the test suite expected to execute.

Currently there is a functionality called testexport (not too
used/maintained) that allows you to export the test suite.

I created a simple LAVA test definition that allows run testimage (oe-test
runtime) in my own LAVA LAB, is very simplistic only has a regex to parse
results and uses lava-target-ip and lava-echo-ipv4 to get target and server
IP addresses.

In this way the LAVA server handles all the testing and finally the Yocto
Autobuilder can get/poll an event to know what was the actual result of the
job and the job could be send to different LAVA LAB's.

Some of the tasks, I identified,  (if is accepted)

- Yocto-aubuilder-helper: Implement/adapt to cover this new behavior , move
the EXTRA_PLAIN_CMDS to a class.
-  Yocto-aubuilder-helper: Create a better approach to re-use LAVA job
templates across boards.
- Poky/OE: Review/fix test-export or provide other mechanism to export the
test suite.

Cheers,
Anibal

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/lava-templates/generate-jobconfig.jinja2
[2]
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/lava
[3]
https://github.com/alimon/test-definitions/commit/4691b67daca26658b669ac0e79e4f27cbf6ed88d
[4]
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/config-intelqa-x86_64-lava.json#n127

--00000000000047bfe6057a1a9aa8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r">Hi,<div><br></div><div>We know the need to execute OE testimage over rea=
l HW not only QEMU,=C2=A0</div><div><br></div><div>I&#39;m aware that curre=
ntly there is an implementation on the Yocto Autobuilder Helper=C2=A0</div>=
<div>, this initial implementation looks pretty well separating parts for t=
emplate generation [1] and the script to send jobs to LAVA [2].</div><div><=
br></div><div>There are some limitations.</div><div><br></div><div>- Requir=
es that the boards are accessible trough SSH (same network?) by the Autobui=
lder, so no distributed LAB testing.</div><div>- LAVA doesn&#39;t know abou=
t test results because the execution is injected via SSH.</div><div><br></d=
iv><div>In order to do a distributed Boards testing the Yocto Autobuilder n=
eeds to publish in some place accessible the artifacts (image, kernel, etc)=
 to flash/boot the board and the test suite expected to execute.=C2=A0</div=
><div><br></div><div>Currently there is a functionality called testexport (=
not too used/maintained) that allows you to export the test suite.</div><di=
v><br></div><div>I created a simple LAVA test definition that allows run te=
stimage (oe-test runtime) in my own LAVA LAB, is very simplistic only has a=
 regex to parse results and uses=C2=A0lava-target-ip and lava-echo-ipv4 to =
get target and server IP addresses.</div><div><br></div><div>In this way th=
e LAVA server handles all the testing and finally the Yocto Autobuilder can=
 get/poll an event to know what was the actual result of the job and the jo=
b could be send to different LAVA LAB&#39;s.=C2=A0</div><div><br></div><div=
>Some of the tasks, I identified,=C2=A0 (if is accepted)</div><div><br></di=
v><div>- Yocto-aubuilder-helper: Implement/adapt to cover this new behavior=
 , move the EXTRA_PLAIN_CMDS to a class.</div><div>-=C2=A0 Yocto-aubuilder-=
helper: Create a better approach to re-use LAVA job templates across boards=
.</div><div>- Poky/OE: Review/fix test-export or provide other mechanism to=
 export the test suite.<br></div><div><br><div>Cheers,</div><div>Anibal</di=
v></div><div><br></div><div>[1]=C2=A0<a href=3D"http://git.yoctoproject.org=
/cgit/cgit.cgi/yocto-autobuilder-helper/tree/lava-templates/generate-jobcon=
fig.jinja2" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/yoc=
to-autobuilder-helper/tree/lava-templates/generate-jobconfig.jinja2</a></di=
v><div>[2]=C2=A0<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-=
autobuilder-helper/tree/lava" target=3D"_blank">http://git.yoctoproject.org=
/cgit/cgit.cgi/yocto-autobuilder-helper/tree/lava</a></div><div>[3]=C2=A0<a=
 href=3D"https://github.com/alimon/test-definitions/commit/4691b67daca26658=
b669ac0e79e4f27cbf6ed88d">https://github.com/alimon/test-definitions/commit=
/4691b67daca26658b669ac0e79e4f27cbf6ed88d</a></div><div>[4]=C2=A0<a href=3D=
"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/co=
nfig-intelqa-x86_64-lava.json#n127">http://git.yoctoproject.org/cgit/cgit.c=
gi/yocto-autobuilder-helper/tree/config-intelqa-x86_64-lava.json#n127</a></=
div><div><br></div><div><br></div></div></div></div></div></div></div></div=
></div></div>

--00000000000047bfe6057a1a9aa8--
