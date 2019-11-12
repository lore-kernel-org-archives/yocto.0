Return-Path: <waynli329@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B94D9E00E04; Tue, 12 Nov 2019 14:09:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (waynli329[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FEB3E004F6
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 14:09:00 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id 1so137889iou.4
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 14:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=S/QmkNNN1k7+atpNN2a1KT629zyE+2QqcmNmzkelSW0=;
	b=NE0ppu+I3q2bXCvTW90VRUyM/DjDekrDGoqJ5cC2ON1zqmL4SbLpN128DPiloVIUai
	/7JzqkNnTwU26mPz0+pc44bIJ9Qa7+vQ+vxqR08OSI4G9KbJt+LuFlIlUd8I1JEnXjIS
	0bzpJ1074NmciBAIl/6Bi0OgzFnfpQ9tZoBWGu3cXVITDRVhVEVyyBKuu0lwL5u7YSWL
	Jjossqtk/uqACZMW37syxTMK691eiplQrRPGRyGHZXxQfuTg1qDavSiyrc6AnrE1tF1A
	/x2JCYWpD5QXaxoz9wds5llCq+Ysekg8SezxtqDobBPqvYNbHUX40zpQxI37weFJWmkW
	VExg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=S/QmkNNN1k7+atpNN2a1KT629zyE+2QqcmNmzkelSW0=;
	b=J8BqnNuc4F/4spzeJ+Ua6uT+WmYyQUYwE1eTyFiyosBVtnfq2lsfUyX4cmgE19dd1Q
	LuHjYBG3rDtur8aX/Ght0t1GWUwc503TeOPIbh/5iX4ZOzfULM0ZntWArKjUEwqMyTZv
	hPOw9xhzq9cOYKfhp49simlh0K5B95WJW7SBhAvt59IOM1jMZfM6Bs4iKBsTexqCIN/8
	T0mksgr/2+HvV5hxLaSDXEMiNwIGHQCzKa8GlFgpSWoRVGH94xmYi8g7/g9ObF8j6YJK
	kGXF86N4ehLj9E1M91epQkcJuXJrTJDHwyH64lJewcIQ4Fr9lC3CPhBQyULSUd43mFO5
	UObg==
X-Gm-Message-State: APjAAAVCcX/fCzftbEOSw4fBpV9IV65W73NELfVZD5F6Nhj74kzlHC/C
	ch7lyTrOgjbpFMkCUEox/3IW7e0xmvppIror+Nbkhbb1
X-Google-Smtp-Source: APXvYqw3DSeSXGXeSRsxb+J2y3sjcuoCq6NzdKG/pNVNO0THPLMwsDIff+yIv8IUonH5lmJkj1vw3ZKDKtekHC3f6qQ=
X-Received: by 2002:a6b:7e44:: with SMTP id k4mr249287ioq.306.1573596539455;
	Tue, 12 Nov 2019 14:08:59 -0800 (PST)
MIME-Version: 1.0
From: Wayne Li <waynli329@gmail.com>
Date: Tue, 12 Nov 2019 16:08:48 -0600
Message-ID: <CAM2K0nqA0QGCcaN8z=qvtVu-U_aHswjqKTbZJ0YoCXE6OsvzQw@mail.gmail.com>
To: bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: No Package Provides /bin/awk
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
X-List-Received-Date: Tue, 12 Nov 2019 22:09:00 -0000
Content-Type: multipart/alternative; boundary="000000000000c1100605972d7eb6"

--000000000000c1100605972d7eb6
Content-Type: text/plain; charset="UTF-8"

Dear Yocto Developers,

I'm trying to to build a Yocto kernel for a T4240 RDB.  When I run "bitbake
fsl-image-full" to build the entire linux image, I get an error that says
"Can't install kernel-devsrc-1.0-r0@t4240rdb_64b: no package provides
/bin/awk".  Here's the entire error print that I see:

https://gist.github.com/WayneZhenLi/e35f65081092cf1f24df29ec369c701c

Anyway I'm confused about this error because /bin/awk does exist.  Like if
I run "/bin/awk" in the console I see help info come up describing how to
use a program called "gawk".  Why can't bitbake find /bin/awk then?  Or am
I misunderstanding what this error is trying to say?  I mean I'm assuming
it's just not able to find /bin/awk but maybe the error means something
else?  Or maybe /bin/awk is actually relative to some path?  Let me know
your thoughts.

-Thanks!, Wayne Li

--000000000000c1100605972d7eb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Yocto Developers,</div><div><br></div><div>I&#39=
;m trying to to build a Yocto kernel for a T4240 RDB.=C2=A0 When I run &quo=
t;bitbake fsl-image-full&quot; to build the entire linux image, I get an er=
ror that says &quot;Can&#39;t install=20
kernel-devsrc-1.0-r0@t4240rdb_64b: no package provides /bin/awk&quot;.=C2=
=A0 Here&#39;s the entire error print that I see:</div><div><br></div><div>=
<a href=3D"https://gist.github.com/WayneZhenLi/e35f65081092cf1f24df29ec369c=
701c">https://gist.github.com/WayneZhenLi/e35f65081092cf1f24df29ec369c701c<=
/a></div><div><br></div><div>Anyway I&#39;m confused about this error becau=
se /bin/awk does exist.=C2=A0 Like if I run &quot;/bin/awk&quot; in the con=
sole I see help info come up describing how to use a program called &quot;g=
awk&quot;.=C2=A0=C2=A0Why can&#39;t bitbake find /bin/awk then?=C2=A0 Or am=
 I misunderstanding what this error is trying to say?=C2=A0 I mean I&#39;m =
assuming it&#39;s just not able to find /bin/awk but maybe the error means =
something else?=C2=A0 Or maybe /bin/awk is actually relative to some path?=
=C2=A0 Let me know your thoughts.</div><div><br></div><div>-Thanks!, Wayne =
Li<br>

</div></div>

--000000000000c1100605972d7eb6--
