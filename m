Return-Path: <tmichalski23@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F3FBE00DD0; Tue, 19 Dec 2017 08:36:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tmichalski23[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09822E00D7E
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 08:36:22 -0800 (PST)
Received: by mail-vk0-f50.google.com with SMTP id j192so11842831vkc.1
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 08:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Pyga+dyxm/JcjiV6yR5bxav3dIc8yD1K+Md3vuZ2lUE=;
	b=MLn/4FpItPihElgCGkGnlIJB8KJipf40CUECVDSegEI3vR6QVJ2pmGym//TdKj9v4r
	nbYj/yoGQtrZdb9NOpb7yOKmWOkFuwa9BcmA7RVJCLHdWn43kSVQQOSRsVbkDinrisU1
	FG93jsbVj5RzyKnX/4qsMyQPBLe/396eBSFdts0+iXP885EQ6b4wUd7No0+946QGb6B/
	rAyXODzHnnzGd7dVyiSXvThZZNq4w1dsIgRsCCz/CMl6cKEAQVT1i4Bhepr4Z52OvZR8
	ydlmj8wAgys3+rZhjhddM0uShgBycVxFSoDnhUX5i5qxwi/xxZJog10TUF+1YP8XcEk0
	Ikzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Pyga+dyxm/JcjiV6yR5bxav3dIc8yD1K+Md3vuZ2lUE=;
	b=lFwt0zmdHnonf5GBWYw7zzcOQn96ILjuJ0PEbP2uC0haFsq7jxepIsNFoMKNXbQbFT
	uQxfdpL8qxu+BF7LkbKhJzLQn0kcMLDkfKDBbwyIzbCcresecJOs5K03ouAVRaE4w54J
	QNhPMQII70mKBD0WlRWwELk3QyfZyMR5q0QS+oWGLxTCbtUNwg07fuzjvgdxE3bC+eos
	nck5uwzDOU1BZ0lrWsBdg09aOlMv9b9XtEK3+JfVVCQsw/j1DbfIngDETshVq3KdRJ0m
	Nfi6K0n5qWEOfBCdJY4uhIiIKV/PFlYKDmRyeglgY9KIIZxNxwkMnc6lVF2SRKIdWDnh
	oxAA==
X-Gm-Message-State: AKGB3mIfOx31bpJ0zbkeQWxwW2gWqrk7wnpp6UZ48iCPma5PhBsxcO1T
	KyaVhE0752x7ZT4eO/nb6t33+XY2mjzvjAy/YrTdDQ==
X-Google-Smtp-Source: ACJfBouzrkOPHh/O1cBFMuQHNo6g+XDAefZ5teBJiu+11bUpbSG4aBVQPkruUWuWBaLDvbmPYcxnzFTnsbsL4wBlzGQ=
X-Received: by 10.31.224.71 with SMTP id x68mr3827764vkg.31.1513701381769;
	Tue, 19 Dec 2017 08:36:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.82.205 with HTTP; Tue, 19 Dec 2017 08:36:21 -0800 (PST)
From: Tomasz Michalski <tmichalski23@gmail.com>
Date: Tue, 19 Dec 2017 17:36:21 +0100
Message-ID: <CAE5v_r+PO5h7KLXasQcLVxybF+zR2PbtX=48GkHyPREd9iF9bg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 20 Dec 2017 08:11:36 -0800
Subject: issue with clang-native when building with bitbake
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
X-List-Received-Date: Tue, 19 Dec 2017 16:36:23 -0000
Content-Type: multipart/alternative; boundary="94eb2c07bb88280db00560b411af"

--94eb2c07bb88280db00560b411af
Content-Type: text/plain; charset="UTF-8"

Hi
When I build image I get such error and build stops:

ERROR: Nothing PROVIDES 'clang-native'. Close matches:
....
NOTE: Runtime target 'lib32-ty' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['lib32-ty', 'clang-native']
NOTE: Runtime target 'lib32-duma' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['lib32-duma', 'lib32-ty',
'clang-native']

So I grep all my repository with command
"grep -r "*clang-native*" ./
and I don't see any recipe/anything which inherits or depends on
clang-native. In fact nothing is found for keyword "*clang-native*".
Nevertheless I debugged that clang is connected with
meta-openembedded and there is meta-clang available on
https://github.com/kraj/meta-clang so I downloaded meta-clang dir and
placed it in meta-openembedded directory but nothing changes, still the
error is the same.

Could someone give some hints how to debug such problem? The strange thing
is that nothing is found for keyword "clang-native" in yocto project.
lib32-ty doesn't depend on clang-native despite the output from console is:
Missing or unbuildable dependency chain was: ['lib32-ty', 'clang-native']
I checked lib32-ty recipe.
In fact I don't need clang at all, however it is no matter for me, if I
have to I can add this to my project.

Thanks in advance for hints
Tomek

--94eb2c07bb88280db00560b411af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi</div><div>When I build image I get such error and =
build stops:</div><div><br></div><div>ERROR: Nothing PROVIDES &#39;clang-na=
tive&#39;. Close matches:</div><div>....</div><div><div>NOTE: Runtime targe=
t &#39;lib32-ty&#39; is unbuildable, removing...</div><div>Missing or unbui=
ldable dependency chain was: [&#39;lib32-ty&#39;, &#39;clang-native&#39;]</=
div><div>NOTE: Runtime target &#39;lib32-duma&#39; is unbuildable, removing=
...</div><div>Missing or unbuildable dependency chain was: [&#39;lib32-duma=
&#39;, &#39;lib32-ty&#39;, &#39;clang-native&#39;]</div></div><div><br></di=
v><div>So I grep all my repository with command</div><div>&quot;grep -r &qu=
ot;*clang-native*&quot; ./=C2=A0</div><div>and I don&#39;t see any recipe/a=
nything which inherits or depends on clang-native. In fact nothing is found=
 for keyword &quot;*clang-native*&quot;. Nevertheless I debugged that clang=
 is connected with=C2=A0</div><div>meta-openembedded and there is meta-clan=
g available on=C2=A0<a href=3D"https://github.com/kraj/meta-clang">https://=
github.com/kraj/meta-clang</a> so I downloaded meta-clang dir and placed it=
 in meta-openembedded directory but nothing changes, still the error is the=
 same.<br></div><div><br></div><div>Could someone give some hints how to de=
bug such problem? The strange thing is that nothing is found for keyword &q=
uot;clang-native&quot; in yocto project. lib32-ty doesn&#39;t depend on cla=
ng-native despite the output from console is:=C2=A0</div><div>Missing or un=
buildable dependency chain was: [&#39;lib32-ty&#39;, &#39;clang-native&#39;=
]</div><div>I checked lib32-ty recipe.</div><div>In fact I don&#39;t need c=
lang at all, however it is no matter for me, if I have to I can add this to=
 my project.</div><div><br></div><div>Thanks in advance for hints</div><div=
>Tomek</div><div><br></div></div>

--94eb2c07bb88280db00560b411af--
