Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BA25E00BB6; Wed, 16 Dec 2015 12:55:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12FEFE00349
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 12:55:30 -0800 (PST)
Received: by mail-ig0-f171.google.com with SMTP id jw2so5864536igc.1
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 12:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=npm5h6cmn57k5Z7YQcU0ElBvG6hpTChgTQjDBk5CfzI=;
	b=0spbkqKEGr+FAW3joixeBeObbchhPG3G2K7mCcGS5+Ovam/QTV9zalEVFYJHbz03To
	bck6Hsc1t/KcS4xP+dm0wvo3j6qQNlepjMyxVwXadiJIvZ1BYcqLV4foCqM7BWXKrSW2
	TFdmx326lXSXIwyIkFfDG5nof0Wn9c1o5GrIacOeSOhK8zMAIsp76DUH38IjlWI8YLE1
	oY6OKGVmZKa+J153CHHftFQphqDxPHBHwb0zSlrDtjAKgMVu6m7lDoGrVZGPHA81/b+L
	Y6oawU8rPfeBVrmd26VnvpzI8bdOrVyr5n6qSZl/uMlJw5fY9ZiuSkft/2cFvr7Ykazl
	32GQ==
MIME-Version: 1.0
X-Received: by 10.107.135.35 with SMTP id j35mr16538080iod.47.1450299329694;
	Wed, 16 Dec 2015 12:55:29 -0800 (PST)
Received: by 10.79.36.195 with HTTP; Wed, 16 Dec 2015 12:55:29 -0800 (PST)
Date: Wed, 16 Dec 2015 14:55:29 -0600
Message-ID: <CAOsp8o-CUskcb=HMFj999yo4ze=U_LGyjDBrUBi9rgrcocmASQ@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: populate_sdk fails almost immediately
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
X-List-Received-Date: Wed, 16 Dec 2015 20:55:34 -0000
Content-Type: multipart/alternative; boundary=001a113ec9945d4f5305270a209c

--001a113ec9945d4f5305270a209c
Content-Type: text/plain; charset=UTF-8

I decided to built the SDK to play around with the output so I can
understand how it all goes together. According to the documentation, I
simply do:

bitbake <image> -c populate_sdk

It's worth noting I am running a custom image and distro and not a
poky/yocto image (I do inherit core-image, however). I don't spot any
critical differences between core-image-minimal and my custom image. My
distro conf includes poky.conf to pull in most of the configuration.
However, the first thing I get is this:

DEBUG: Executing python function sysroot_cleansstate
DEBUG: Python function sysroot_cleansstate finished
DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
'bit-64', 'x86_64-linux', 'common']
DEBUG: Executing shell function autotools_preconfigure
DEBUG: Shell function autotools_preconfigure finished
DEBUG: Executing python function autotools_copy_aclocals
DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
'bit-64', 'x86_64-linux', 'common']
DEBUG: Python function autotools_copy_aclocals finished
DEBUG: Executing shell function do_configure
configure.ac:34: error: Please use exactly Autoconf 2.64 instead of 2.69.
config/override.m4:12: _GCC_AUTOCONF_VERSION_CHECK is expanded from...
configure.ac:34: the top level

for the binutils-crosssdk do_configure task. Am I doing something insane? I
figure since my image build is working correctly, it should be using the
right versions of autoconf, etc.

--001a113ec9945d4f5305270a209c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I decided to built the SDK to play around with the output =
so I can understand how it all goes together. According to the documentatio=
n, I simply do:<div><br></div><div>bitbake &lt;image&gt; -c populate_sdk</d=
iv><div><br></div><div>It&#39;s worth noting I am running a custom image an=
d distro and not a poky/yocto image (I do inherit core-image, however). I d=
on&#39;t spot any critical differences between core-image-minimal and my cu=
stom image. My distro conf includes poky.conf to pull in most of the config=
uration. However, the first thing I get is this:</div><div><br></div><div><=
div>DEBUG: Executing python function sysroot_cleansstate</div><div>DEBUG: P=
ython function sysroot_cleansstate finished</div><div>DEBUG: SITE files [&#=
39;endian-little&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39=
;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;common&#39;]</div><div>DEBUG: Ex=
ecuting shell function autotools_preconfigure</div><div>DEBUG: Shell functi=
on autotools_preconfigure finished</div><div>DEBUG: Executing python functi=
on autotools_copy_aclocals</div><div>DEBUG: SITE files [&#39;endian-little&=
#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;bit-64&#39;, &#3=
9;x86_64-linux&#39;, &#39;common&#39;]</div><div>DEBUG: Python function aut=
otools_copy_aclocals finished</div><div>DEBUG: Executing shell function do_=
configure</div><div><a href=3D"http://configure.ac:34">configure.ac:34</a>:=
 error: Please use exactly Autoconf 2.64 instead of 2.69.</div><div>config/=
override.m4:12: _GCC_AUTOCONF_VERSION_CHECK is expanded from...</div><div><=
a href=3D"http://configure.ac:34">configure.ac:34</a>: the top level</div><=
/div><div><br></div><div>for the binutils-crosssdk do_configure task. Am I =
doing something insane? I figure since my image build is working correctly,=
 it should be using the right versions of autoconf, etc.</div></div>

--001a113ec9945d4f5305270a209c--
