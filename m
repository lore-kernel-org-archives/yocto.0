Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C736E0049B; Tue, 10 Nov 2015 14:27:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
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
	*      [209.85.215.53 listed in list.dnswl.org]
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C4F6E00343
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 14:27:50 -0800 (PST)
Received: by lffu14 with SMTP id u14so6756944lff.1
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 14:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=hu5Us6nh+7h4UbLlJ1lSGxI+kxXOHws1HklmI6S61ng=;
	b=EtiGUXWUTjgr5EzFUu01dkpIZITHE0CgV1zlAgX5gsbUVp3nVH/9TZLfYy0IDhyZ8K
	JNOZdoYe55N8UAUoiViujaw9oVG8RpF8JuYpb9rB/b0KE+urvard1yHmGBfOkc2MZTh7
	N2puC5EIB1a7Vo1RBv2eVLhcFuLvhXdMlNoMeKthFPCBIoHetkByqsAWDbTtigexXUEL
	GkZIJ6KXecXYqLKQVxx2cINkWYP9QUkMjpKIfp2AJI2j6tAUYPxkqF2P35MmDggr+Gxq
	8/dyW0lyxNdsf08y4TuBZKkzffI2R4OurlPsCUmYN77cCEI6mKdKEauxhDxTgfZDGMxX
	LZXw==
MIME-Version: 1.0
X-Received: by 10.25.89.9 with SMTP id n9mr2960318lfb.9.1447194469171; Tue, 10
	Nov 2015 14:27:49 -0800 (PST)
Received: by 10.114.11.170 with HTTP; Tue, 10 Nov 2015 14:27:49 -0800 (PST)
Date: Tue, 10 Nov 2015 16:27:49 -0600
Message-ID: <CAOsp8o8rHuiaWjOKWSbW+a5kVX1kegKpfiVto4VtK3V99ZY=mA@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Transitioning to Yocto, some basic questions about workflow
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
X-List-Received-Date: Tue, 10 Nov 2015 22:27:57 -0000
Content-Type: multipart/alternative; boundary=001a11413008418ee005243738d9

--001a11413008418ee005243738d9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

All,



First I appreciate taking the time to read through this email. I have spent
the last couple weeks reading through Yocto/bitbake documentation, and have
run a couple of the reference builds, e.g. core-image-minimal. I have a
better-than-vague sense now of how it=E2=80=99s parsing confs/recipes/class=
es and
putting that together.


My understanding is that Yocto is nothing more than a reference build that
combines OE and BitBake to give us a good starting point for a custom
distribution. Hopefully that assumption is correct.


Our current build distribution at work is a monstrosity. We use a
proprietary distribution that combines their utilities that they provide,
along with various other open source utilities and the linux kernel.
Overall our source tree is on the order of several gig in size, with a
couple hundred build components. The build framework is close to buildroot
in that we just iterate through directories, build the applications (in
some cases it's source, in other cases it's a patched tarball), and build
up a root filesystem image that we install on the embedded target. We have
many challenges with this, namely with dependencies and build efficiencies
- we can't run parallel builds because the way it iterates through the
makefiles is not dependency-based, but directory-based.


This is fundamentally why I have been looking into Yocto/BB/OE as a
potential replacement distribution. However, I have a couple questions
stemming from my research. We can leverage the existing Yocto build for
various open source utilities where it pulls from the web, patches, builds,
and installs into the deployable image. We would probably want to colocate
the tarballs locally, because we would like to prevent people from having
to fetch from the web during build cycles.


I see that Yocto thinks of the deployable image and applications as
separate entities: first you'd build the distribution, then you would use
ADT/cross-toolchain/etc to build the applications and install them
separately. However, in our environment, we would need all of our custom IP
applications to be built as part of the deployable image, and not as a
separate procdure. For example, if I were to call "bitbake our-image", I
would like the deployable image to contain 1) the kernel, 2) various core
utilities and libraries for booting, and 3) our custom applications for our
device.


This means that somewhere in the yocto framework, we'd ideally have some
source code somewhere that would also be compiled via recipes/classes that
we'd have to custom write. Is there a best practice for this kind of
workflow? I don't mind not having source checked in to our VCS for things
like the kernel, OpenSSL, etc (those can be tarballs obtained from a local
server), but we likely wouldn't want to host tarballs for the applications
we are writing and modifying day-to-day by dozens of engineers. Is there a
place where this source would best fit? Would it be under build/tmp/etc, or
perhaps we can locate the source under a layer directory, like
meta/source/our-ip-applications?


Or perhaps this workflow is just not recommended or supported by the Yocto
Project? If that's the case, does Yocto only recommend building the
distribution then building the applications as completely separate
workflows? Or is there another workflow that I haven't stumbled across yet?


Thanks again for all your help, and let me know if I can help clarify
anything,


Michael

--001a11413008418ee005243738d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"font-size:12.8px">All,</p>=
<p class=3D"MsoNormal" style=3D"font-size:12.8px">=C2=A0</p><p class=3D"Mso=
Normal" style=3D"font-size:12.8px">First I appreciate taking the time to re=
ad through this email. I have spent the last couple weeks reading through Y=
octo/bitbake documentation, and have run a couple of the reference builds, =
e.g. core-image-minimal. I have a better-than-vague sense now of how it=E2=
=80=99s parsing confs/recipes/classes and putting that together.</p><p clas=
s=3D"MsoNormal" style=3D"font-size:12.8px"><br></p><p class=3D"MsoNormal" s=
tyle=3D"font-size:12.8px">My understanding is that Yocto is nothing more th=
an a reference build that combines OE and BitBake to give us a good startin=
g point for a custom distribution. Hopefully that assumption is correct.</p=
><p class=3D"MsoNormal" style=3D"font-size:12.8px"><br></p><p class=3D"MsoN=
ormal" style=3D"font-size:12.8px">Our current build distribution at work is=
 a monstrosity. We use a proprietary distribution that combines their utili=
ties that they provide, along with various other open source utilities and =
the linux kernel. Overall our source tree is on the order of several gig in=
 size, with a couple hundred build components. The build framework is close=
 to buildroot in that we just iterate through directories, build the applic=
ations (in some cases it&#39;s source, in other cases it&#39;s a patched ta=
rball), and build up a root filesystem image that we install on the embedde=
d target. We have many challenges with this, namely with dependencies and b=
uild efficiencies - we can&#39;t run parallel builds because the way it ite=
rates through the makefiles is not dependency-based, but directory-based.</=
p><p class=3D"MsoNormal" style=3D"font-size:12.8px"><br></p><p class=3D"Mso=
Normal" style=3D"font-size:12.8px">This is fundamentally why I have been lo=
oking into Yocto/BB/OE as a potential replacement distribution. However, I =
have a couple questions stemming from my research. We can leverage the exis=
ting Yocto build for various open source utilities where it pulls from the =
web, patches, builds, and installs into the deployable image. We would prob=
ably want to colocate the tarballs locally, because we would like to preven=
t people from having to fetch from the web during build cycles.</p><p class=
=3D"MsoNormal" style=3D"font-size:12.8px"><br></p><p class=3D"MsoNormal" st=
yle=3D"font-size:12.8px">I see that Yocto thinks of the deployable image an=
d applications as separate entities: first you&#39;d build the distribution=
, then you would use ADT/cross-toolchain/etc to build the applications and =
install them separately. However, in our environment, we would need all of =
our custom IP applications to be built as part of the deployable image, and=
 not as a separate procdure. For example, if I were to call &quot;bitbake o=
ur-image&quot;, I would like the deployable image to contain 1) the kernel,=
 2) various core utilities and libraries for booting, and 3) our custom app=
lications for our device.</p><p class=3D"MsoNormal" style=3D"font-size:12.8=
px"><br></p><p class=3D"MsoNormal" style=3D"font-size:12.8px">This means th=
at somewhere in the yocto framework, we&#39;d ideally have some source code=
 somewhere that would also be compiled via recipes/classes that we&#39;d ha=
ve to custom write. Is there a best practice for this kind of workflow? I d=
on&#39;t mind not having source checked in to our VCS for things like the k=
ernel, OpenSSL, etc (those can be tarballs obtained from a local server), b=
ut we likely wouldn&#39;t want to host tarballs for the applications we are=
 writing and modifying day-to-day by dozens of engineers. Is there a place =
where this source would best fit? Would it be under build/tmp/etc, or perha=
ps we can locate the source under a layer directory, like meta/source/our-i=
p-applications?</p><p class=3D"MsoNormal" style=3D"font-size:12.8px"><br></=
p><p class=3D"MsoNormal" style=3D"font-size:12.8px">Or perhaps this workflo=
w is just not recommended or supported by the Yocto Project? If that&#39;s =
the case, does Yocto only recommend building the distribution then building=
 the applications as completely separate workflows? Or is there another wor=
kflow that I haven&#39;t stumbled across yet?</p><p class=3D"MsoNormal" sty=
le=3D"font-size:12.8px"><br></p><p class=3D"MsoNormal" style=3D"font-size:1=
2.8px">Thanks again for all your help, and let me know if I can help clarif=
y anything,</p><p class=3D"MsoNormal" style=3D"font-size:12.8px"><br></p><p=
 class=3D"MsoNormal" style=3D"font-size:12.8px">Michael</p></div>

--001a11413008418ee005243738d9--
