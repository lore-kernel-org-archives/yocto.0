Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 091EBE00B63; Thu, 17 Dec 2015 11:58:20 -0800 (PST)
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
	*      [209.85.223.180 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D49A4E0033E
	for <yocto@yoctoproject.org>; Thu, 17 Dec 2015 11:58:12 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id o67so66876648iof.3
	for <yocto@yoctoproject.org>; Thu, 17 Dec 2015 11:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Mwz7IpLXLsxLEuw6JNws4no8r7Lem6u979r+fGdfuTM=;
	b=l89kqVz6qUyLe9E3Tfs1NlgfNzrJLdzMiFZqGvtCQglinGV7mRyUQAHYfSfwHUCpKQ
	FSxsKTJyu0tEOtNUKOr0i3nGx3LeZriV36v9eKDVIQl4UdW34zivv/rFpos5qQoTGQRa
	weXMPeYfwNJsPhu3ucNM/rcerd5wUvgBRZ+JYnNZEBBHkPyO44qsyKVJrvwJGo3tHQy1
	SKuoEONAUoXGfJVFD8BOHC292TrPv1hHDujOgr8GZ8lQfhN9vOkzs4tt7TVzraJaiqo9
	Et1U0z405zfom6JX5D2p6oOCXCrX60tA8V9h0MM40CivEvWcL1UuY48szC/x3GIchqrD
	LrxA==
MIME-Version: 1.0
X-Received: by 10.107.149.9 with SMTP id x9mr306022iod.170.1450382291886; Thu,
	17 Dec 2015 11:58:11 -0800 (PST)
Received: by 10.79.36.195 with HTTP; Thu, 17 Dec 2015 11:58:11 -0800 (PST)
In-Reply-To: <CAOsp8o-CUskcb=HMFj999yo4ze=U_LGyjDBrUBi9rgrcocmASQ@mail.gmail.com>
References: <CAOsp8o-CUskcb=HMFj999yo4ze=U_LGyjDBrUBi9rgrcocmASQ@mail.gmail.com>
Date: Thu, 17 Dec 2015 13:58:11 -0600
Message-ID: <CAOsp8o957VwincDi8jcmgZt41jcyYkzD1M2qfa9=x7SR1NH2=g@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: populate_sdk fails almost immediately
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
X-List-Received-Date: Thu, 17 Dec 2015 19:58:20 -0000
Content-Type: multipart/alternative; boundary=001a1140fa064be67e05271d7198

--001a1140fa064be67e05271d7198
Content-Type: text/plain; charset=UTF-8

I'm not sure if this was the cause, but I did two things and it fixed:

1) I changed SDK_VENDOR from "-diags-sdk" to "-diagssdk"
2) I deleted /tmp

Perhaps having two dashes in SDK_VENDOR was screwing up a parse statement
somewhere.

On Wed, Dec 16, 2015 at 2:55 PM, Michael Habibi <mikehabibi@gmail.com>
wrote:

> I decided to built the SDK to play around with the output so I can
> understand how it all goes together. According to the documentation, I
> simply do:
>
> bitbake <image> -c populate_sdk
>
> It's worth noting I am running a custom image and distro and not a
> poky/yocto image (I do inherit core-image, however). I don't spot any
> critical differences between core-image-minimal and my custom image. My
> distro conf includes poky.conf to pull in most of the configuration.
> However, the first thing I get is this:
>
> DEBUG: Executing python function sysroot_cleansstate
> DEBUG: Python function sysroot_cleansstate finished
> DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
> 'bit-64', 'x86_64-linux', 'common']
> DEBUG: Executing shell function autotools_preconfigure
> DEBUG: Shell function autotools_preconfigure finished
> DEBUG: Executing python function autotools_copy_aclocals
> DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
> 'bit-64', 'x86_64-linux', 'common']
> DEBUG: Python function autotools_copy_aclocals finished
> DEBUG: Executing shell function do_configure
> configure.ac:34: error: Please use exactly Autoconf 2.64 instead of 2.69.
> config/override.m4:12: _GCC_AUTOCONF_VERSION_CHECK is expanded from...
> configure.ac:34: the top level
>
> for the binutils-crosssdk do_configure task. Am I doing something insane?
> I figure since my image build is working correctly, it should be using the
> right versions of autoconf, etc.
>

--001a1140fa064be67e05271d7198
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m not sure if this was the cause, but I did two thin=
gs and it fixed:<div><br></div><div>1) I changed SDK_VENDOR from &quot;-dia=
gs-sdk&quot; to &quot;-diagssdk&quot;</div><div>2) I deleted /tmp</div><div=
><br></div><div>Perhaps having two dashes in SDK_VENDOR was screwing up a p=
arse statement somewhere.</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Wed, Dec 16, 2015 at 2:55 PM, Michael Habibi <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:mikehabibi@gmail.com" target=3D"_blank">mi=
kehabibi@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
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
configure</div><div><a href=3D"http://configure.ac:34" target=3D"_blank">co=
nfigure.ac:34</a>: error: Please use exactly Autoconf 2.64 instead of 2.69.=
</div><div>config/override.m4:12: _GCC_AUTOCONF_VERSION_CHECK is expanded f=
rom...</div><div><a href=3D"http://configure.ac:34" target=3D"_blank">confi=
gure.ac:34</a>: the top level</div></div><div><br></div><div>for the binuti=
ls-crosssdk do_configure task. Am I doing something insane? I figure since =
my image build is working correctly, it should be using the right versions =
of autoconf, etc.</div></div>
</blockquote></div><br></div>

--001a1140fa064be67e05271d7198--
