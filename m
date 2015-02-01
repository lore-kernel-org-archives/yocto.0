Return-Path: <u2bpavankumar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70EFAE00950; Sun,  1 Feb 2015 06:28:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (u2bpavankumar[at]gmail.com)
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
	*      [209.85.218.48 listed in list.dnswl.org]
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD685E0092E
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 06:28:36 -0800 (PST)
Received: by mail-oi0-f48.google.com with SMTP id v63so40963947oia.7
	for <yocto@yoctoproject.org>; Sun, 01 Feb 2015 06:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EJUaUlYe6LhFriMFTdde4xKEilVSk4YkiTiUXDk+cJw=;
	b=g3qXeh39UgXLMKD780hj9XHGe3+CSWQXvxNfIoMwDl0mhEdVh9TevcsjKRidbgJKyx
	XTDWRevKLbmGuV53wj1gPKrVdc9crPxNMEXXGve5M2GgVh2oZzYsZIDJuyALphAutR2D
	LwwZfxM9BwPB99Ac1vN8hHmu32BuV6tLudMealENUHP19RbVcqDycs3a1z2dUvh65Kvf
	H87bB5S+Uv2IL49fIn+Zfr2uZJclepL7vd2DHdLFmuYrHG0ULRmTNYfZthBWWKs7s7kD
	eX+3P2hvwL8SA79v+W2sDOjAToPW4XHe8LhCzmW4VcoBnSYVtpcdFBuySPxOSnuLqA+V
	/uLQ==
MIME-Version: 1.0
X-Received: by 10.183.24.162 with SMTP id ij2mr9465088obd.18.1422800915472;
	Sun, 01 Feb 2015 06:28:35 -0800 (PST)
Received: by 10.60.93.165 with HTTP; Sun, 1 Feb 2015 06:28:35 -0800 (PST)
Date: Sun, 1 Feb 2015 19:58:35 +0530
Message-ID: <CAM8Mu=W=CyHbj44vGJqVKvFW47mrmf1-eKdc-GYHQ9YMEFLmLw@mail.gmail.com>
From: Pavan Kumar B <u2bpavankumar@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 02 Feb 2015 05:27:42 -0800
Subject: need help to add local kernel to yocto build
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
X-List-Received-Date: Sun, 01 Feb 2015 14:28:41 -0000
Content-Type: multipart/alternative; boundary=001a1134a7ae272e95050e07a78a

--001a1134a7ae272e95050e07a78a
Content-Type: text/plain; charset=UTF-8

Hi,

I am new to yocto and trying to create bsp for my wandboard-quad. As a
starting point I have followed the
http://wiki.wandboard.org/Getting_started_with_Yocto_on_Wandboard and
finally gave the command "bitbake core-image-minimal"

So far so good.., I can see the generated images at
/fsl-community-bsp/build/tmp/deploy/images/<myboard>/

Now I don't want build yocto with my own kernel instead of downloading from
repository. It was 3.0.35 base kernel with lot of modifications being done
to it. I have been working to acheive this since last week and was no
success to acheive this.

I have read yocto user manual and other stuff and came to know that I need
to set the SOURCE_MIRROR_URL in bit bake file. So I have tried to set the
following in the bit bake file located at $
/fsl-community-bsp/sources/meta-fsl-arm-extra/recipes-kernel/linux/
linux-wandboard_3.0.35.bb


SOURCE_MIRROR_URL ?= "file://home/mykernel/"
INHERIT += "own-mirrors"
BB_GENERATE_MIRROR_TARBALLS = "1"
BB_NO_NETWORK = "1"

But it was not working.

Some one must have already tried to acheive this. Please let me know like
how do I set the path to my local kernel folder and with what name do I
need to store it. Modifying linux-wandboard_3.0.35.bb is sufficient or do I
need to modify any other files as well

Regards,
Pavan

--001a1134a7ae272e95050e07a78a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hi,<br><br>I am new to yocto and trying to create bsp =
for my wandboard-quad. As a starting point I have followed the <a href=3D"h=
ttp://wiki.wandboard.org/Getting_started_with_Yocto_on_Wandboard">http://wi=
ki.wandboard.org/Getting_started_with_Yocto_on_Wandboard</a> and finally ga=
ve the command &quot;bitbake core-image-minimal&quot;<br><br>So far so good=
.., I can see the generated images at /fsl-community-bsp/build/tmp/deploy/i=
mages/&lt;myboard&gt;/<br><br>Now I don&#39;t want build yocto with my own =
kernel instead of downloading from repository. It was 3.0.35 base kernel wi=
th lot of modifications being done to it. I have been working to acheive th=
is since last week and was no success to acheive this.<br><br>I have read y=
octo user manual and other stuff and came to know that I need to set the SO=
URCE_MIRROR_URL in bit bake file. So I have tried to set the following in t=
he bit bake file located at $ /fsl-community-bsp/sources/meta-fsl-arm-extra=
/recipes-kernel/linux/<a href=3D"http://linux-wandboard_3.0.35.bb">linux-wa=
ndboard_3.0.35.bb</a><br><br><br>SOURCE_MIRROR_URL ?=3D &quot;file://home/m=
ykernel/&quot;<br>INHERIT +=3D &quot;own-mirrors&quot; <br>BB_GENERATE_MIRR=
OR_TARBALLS =3D &quot;1&quot; <br>BB_NO_NETWORK =3D &quot;1&quot;<br><br>Bu=
t it was not working.<br><br>Some one must have already tried to acheive th=
is. Please let me know like how do I set the path to my local kernel folder=
 and with what name do I need to store it. Modifying <a href=3D"http://linu=
x-wandboard_3.0.35.bb">linux-wandboard_3.0.35.bb</a> is sufficient or do I =
need to modify any other files as well<br><br>Regards,<br>Pavan<br></div>

--001a1134a7ae272e95050e07a78a--
