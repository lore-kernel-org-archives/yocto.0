Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA623E00A27; Wed, 16 Mar 2016 14:33:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matt.hoosier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6006BE007D2
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 14:33:36 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id l68so417748wml.0
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 14:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=iyOYvb4XN2MoY/ueQ9eZGoLfZq3eZak2daKQj+xsNiQ=;
	b=C5KRlBKlaVxgfqG2lMNe8+i0VHrs7cR8c7wAA7o8zKVN2JuJ6OFd9HB5RLm3BcK5Dz
	DZBTkexE8Cjjl28hYybM8oiUZQOnk59c8P1iSWHNGNvWtszrV7yoKu1D+7q6P/NCr939
	/HXGHzywMfDp/IDgYOoxZbMRxBnUP8FF5xH4Qg3TCZuf++7IKG9FCUlruxv8m8hHPhe3
	6phQ8etEXrKG4L16EuspdT3MoEGBQyBF7mNbDQBxdJPeOhl2FmhQytjc0zU89Y8LHSgq
	TMYKy55ljP6PVsxaW2OjRgmO+anhRoQEIo9K4VDBxDBawdZdWy2M6Z6wZKxKYe6mDRCB
	uC7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iyOYvb4XN2MoY/ueQ9eZGoLfZq3eZak2daKQj+xsNiQ=;
	b=Fa9P/pq4UOBXJlTyMD+JvPTrDYYR4o8pkphEddd0j+wgwak66nR+dH14Vrl/t0JNze
	3nswsl9Xj3Q9bwhO0/+ua75qHwq2S1hws/rufTz/iYDJuxmHn0eYEmy/qnRVW63c0d3e
	ooQyCkJOqRhtkwX2BF3zp6iJxXacmXKmnLxR+0eLFgxPu4/NQ+h6wKnETV3waoU8MOs+
	dV/XpuNIQPT1CmZcWak8P15nrrzBdAOAJCKgMnodOT8fPxzIMyQhQgE3N1mM0LCata5Y
	C2cpDm8PA4yr86M7VzhQYPN9temNVfS8TPdmzU6gyab7DAUTP0Bxn9OtuuamUHIzCFjl
	+Z3A==
X-Gm-Message-State: AD7BkJLtOpWnjKIjKJ5ZfGJCOWBSDK7yY/XrccdzN43uKCDrudVgdDnwtN5TLALNf78TWPEo165+o+axUVR1FQ==
X-Received: by 10.194.92.226 with SMTP id cp2mr5885260wjb.180.1458164015635;
	Wed, 16 Mar 2016 14:33:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.0.83 with HTTP; Wed, 16 Mar 2016 14:32:56 -0700 (PDT)
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Wed, 16 Mar 2016 16:32:56 -0500
Message-ID: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Installing the SDKs made with meta-mingw
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
X-List-Received-Date: Wed, 16 Mar 2016 21:33:38 -0000
Content-Type: multipart/alternative; boundary=047d7bfd0be42d219b052e31444b

--047d7bfd0be42d219b052e31444b
Content-Type: text/plain; charset=UTF-8

Hi,

I've successfully built a Canadian-cross SDK using the meta-mingw layer.
Very nice!

Because the layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE} is
set to a MinGW host, though, the resulting SDK is not encapsulated into the
self-extracting tarball and the corresponding relocation logic (
relocate_sdk.py and so forth) is omitted.

Any suggestions on how to do the last-mile work to use the SDK on Windows?
Or perhaps nothing is needed at all, except adjusting the prefixes built
into environment-setup-<arch>? Although that would be nice, I think at
least some installation-time adjustment is necessary though; when I do:

    arm-poky-linux-gnueabi-gcc -o foo foo.c
--sysroot=d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi

, the following happens during linking:

    ld.exe: cannot find /lib/libc.so.6 inside
d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi

Cheers,
Matt

--047d7bfd0be42d219b052e31444b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve successfully built a Canad=
ian-cross SDK using the meta-mingw layer. Very nice!</div><div><br></div><d=
iv>Because the layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE} =
is set to a MinGW host, though, the resulting SDK is not encapsulated into =
the self-extracting tarball and the corresponding relocation logic (<span s=
tyle=3D"font-family:monospace,monospace">relocate_sdk.py</span>=C2=A0and so=
 forth) is omitted.</div><div><br></div><div>Any suggestions on how to do t=
he last-mile work to use the SDK on Windows? Or perhaps nothing is needed a=
t all, except adjusting the prefixes built into <font face=3D"monospace, mo=
nospace">environment-setup-&lt;arch&gt;</font>? Although that would be nice=
, I think at least some installation-time adjustment is necessary though; w=
hen I do:</div><div><br></div><div><font face=3D"monospace, monospace">=C2=
=A0 =C2=A0 arm-poky-linux-gnueabi-gcc -o foo foo.c --sysroot=3Dd:/projects/=
yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi</font></div><d=
iv><br></div><div>, the following happens during linking:</div><div><br></d=
iv><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 ld.exe: cannot fi=
nd /lib/libc.so.6 inside d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-n=
eon-poky-linux-gnueabi</font></div><div><br></div><div>Cheers,</div><div>Ma=
tt</div></div>

--047d7bfd0be42d219b052e31444b--
