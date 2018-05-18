Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DF9DE00CDD; Fri, 18 May 2018 08:15:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47875E00C36
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 08:15:42 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id k5-v6so7418344oiw.0
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 08:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FxyctSJRiXqaFW9TDZ1Z7kUi2vuubOAnUby/oitKjT4=;
	b=SV+lG2y0QfNEm1bf6uHL2d1aQpugFUGqBCuTrfyyFocvbbCapsNsfX/Pju0/XnVf3N
	PEvXWFPFUJmbobS8+WB/203Z6HQTDjOg2SUHCSEb38jCIgDL6NFrM/Fzy90LI27GpYup
	FqSGo+0RJknqlqDqf1XeNwoI7nTIxFxo5VIASqJSHwf9HIa8vrWa1mUFJdksM2zQiZ5a
	GtrO2YhTOGAnHN0z27nUTZx+LTwRk0yslumdC3Qstof9ZV/u3tzkedaa/RhJOE1CjfS2
	OGPLa0VyiVd1euLHH4WhgR1urk9WrLTLCvOsNmj2vsdv7nKHxyp9u7u6WD7jt8teDe5k
	I5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FxyctSJRiXqaFW9TDZ1Z7kUi2vuubOAnUby/oitKjT4=;
	b=iRo55Fa2AajcVchJ7jURzOT7Npx9IQOor4VY1PM6+Zo+pnqRC3E6NFmmJ/VEzggp3x
	Nz4L6TVfVBtm6dhzm34SBdVbQrbPzvjTT4eZbhBq12fdJAlKRIUPyUhoUfP+ZvZqdHx3
	/zFBrqyD54P1eTkh+sdoqsR4f/lskpjDr7wKIb/kPRUlfiQ5jnwm/xx/iAXeQUPdUojs
	quoBDUVNlfoIIGDsXwFff9nQydp+8ERsEgFt6niJOcTrvbKhkSPJbt/RElZIzLzvjNTJ
	Zu2FXui+2sserRCQ+CI3RCEIvTiwpbwY6D3Zh4JMNPc0dSn3qEFhjXVItpV6iWy2Ip7J
	1JMg==
X-Gm-Message-State: ALKqPwe6O7uuLFo7hhpP7xxyeGcu5gJFkJ6hVAkqVIy34LZJ3n2kJzMd
	dKeOyTKNGv7gALKX6IIu79zzFp5MKYlVkYZETnM=
X-Google-Smtp-Source: AB8JxZrwaxUWuPdHn2sQOQDFq6t4i9KTokneYHihn6z8YpA9e7yHUaLWZ7H7SGH3K4LCfGx865jvl9h52LxpcuiVDEI=
X-Received: by 2002:aca:3152:: with SMTP id
	x79-v6mr5988907oix.74.1526656542329; 
	Fri, 18 May 2018 08:15:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7009:0:0:0:0:0 with HTTP; Fri, 18 May 2018 08:15:41
	-0700 (PDT)
In-Reply-To: <CALw8SCUFX-ARtpWRxf4bUBHnV0BFT6jHs5JTErGeCf+=evcn7w@mail.gmail.com>
References: <CALw8SCUFX-ARtpWRxf4bUBHnV0BFT6jHs5JTErGeCf+=evcn7w@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 18 May 2018 08:15:41 -0700
Message-ID: <CAFNP8OsX8x1A6c2-vd7qUgfOwWzjW5CNg4p5xG5Um8cVQyGmSQ@mail.gmail.com>
To: Mirza Krak <mirza@mkrak.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, gandersson@genivi.org
Subject: Re: TEST_IMAGE issues
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
X-List-Received-Date: Fri, 18 May 2018 15:15:44 -0000
Content-Type: multipart/alternative; boundary="000000000000e64fa5056c7c6cf3"

--000000000000e64fa5056c7c6cf3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is nothing in the docs that says that an image must contain "-image"
or "image-".

Maybe someone can tell me if we should have that.

Scott

On Fri, May 18, 2018 at 4:44 AM, Mirza Krak <mirza@mkrak.org> wrote:

> Hi all!
>
> Found something interesting (perhaps).
>
> So we where thinking about enabling some of the OE QA tests that that
> are part of poky.
>
> Seemed pretty straight forward. Added following to local.conf:
>
>     INHERIT +=3D "testimage"
>
> Build my image and then tried to run:
>
>     bitbake -c testimage <image name>
>
> To my despair it did not work and instead produced an error. Tried
> both on "pyro" and "rocko" branches. The error was:
>
>     | runqemu started, pid is 45087
>     | NOTE: runqemu started, pid is 45087
>     | waiting at most 60 seconds for qemu pid
>     | NOTE: waiting at most 60 seconds for qemu pid
>     | runqemu exited with code 1
>     | NOTE: runqemu exited with code 1
>     | Output from runqemu:
>     | runqemu - ERROR - Unknown path arg
> <masked>/tmp/deploy/images/qemux86-64/genivi-dev-platform-qemux86-64.ext4
>     | runqemu - ERROR - Try 'runqemu help' on how to use it
>
> Some (a lot) digging later, I finally figured out that error occurs
> because the image name does not contain "-image" or "image-". runqemu
> is not able to parse it and throws a "unknown" argument error (not
> that obvious from the print).
>
> I realize that this is a "problem" in runqemu and not much to do about
> it with a large refactoring job on the runqemu application.
>
> But I am looking for suggesting for an appropriate workaround, other
> then renaming the image which I have verified works.
>
> Does it say somewhere in the docs that all image files must contain
> "-image" or "image-" in their name? If that is the case it makes sense
> to rename it, but trying to avoid that.
>
> --
> Med V=C3=A4nliga H=C3=A4lsningar / Best Regards
>
> Mirza Krak
> email: mirza@mkrak.org
> web: https://mkrak.org
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e64fa5056c7c6cf3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There is nothing in the docs that says that an image =
must contain &quot;-image&quot; or &quot;image-&quot;.</div><div><br></div>=
<div>Maybe someone can tell me if we should have that. <br></div><div><br><=
/div><div>Scott<br></div></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Fri, May 18, 2018 at 4:44 AM, Mirza Krak <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:mirza@mkrak.org" target=3D"_blank">mirza@mkrak.org</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi all!<br>
<br>
Found something interesting (perhaps).<br>
<br>
So we where thinking about enabling some of the OE QA tests that that<br>
are part of poky.<br>
<br>
Seemed pretty straight forward. Added following to local.conf:<br>
<br>
=C2=A0 =C2=A0 INHERIT +=3D &quot;testimage&quot;<br>
<br>
Build my image and then tried to run:<br>
<br>
=C2=A0 =C2=A0 bitbake -c testimage &lt;image name&gt;<br>
<br>
To my despair it did not work and instead produced an error. Tried<br>
both on &quot;pyro&quot; and &quot;rocko&quot; branches. The error was:<br>
<br>
=C2=A0 =C2=A0 | runqemu started, pid is 45087<br>
=C2=A0 =C2=A0 | NOTE: runqemu started, pid is 45087<br>
=C2=A0 =C2=A0 | waiting at most 60 seconds for qemu pid<br>
=C2=A0 =C2=A0 | NOTE: waiting at most 60 seconds for qemu pid<br>
=C2=A0 =C2=A0 | runqemu exited with code 1<br>
=C2=A0 =C2=A0 | NOTE: runqemu exited with code 1<br>
=C2=A0 =C2=A0 | Output from runqemu:<br>
=C2=A0 =C2=A0 | runqemu - ERROR - Unknown path arg<br>
&lt;masked&gt;/tmp/deploy/images/<wbr>qemux86-64/genivi-dev-<wbr>platform-q=
emux86-64.ext4<br>
=C2=A0 =C2=A0 | runqemu - ERROR - Try &#39;runqemu help&#39; on how to use =
it<br>
<br>
Some (a lot) digging later, I finally figured out that error occurs<br>
because the image name does not contain &quot;-image&quot; or &quot;image-&=
quot;. runqemu<br>
is not able to parse it and throws a &quot;unknown&quot; argument error (no=
t<br>
that obvious from the print).<br>
<br>
I realize that this is a &quot;problem&quot; in runqemu and not much to do =
about<br>
it with a large refactoring job on the runqemu application.<br>
<br>
But I am looking for suggesting for an appropriate workaround, other<br>
then renaming the image which I have verified works.<br>
<br>
Does it say somewhere in the docs that all image files must contain<br>
&quot;-image&quot; or &quot;image-&quot; in their name? If that is the case=
 it makes sense<br>
to rename it, but trying to avoid that.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards<br>
<br>
Mirza Krak<br>
email: <a href=3D"mailto:mirza@mkrak.org">mirza@mkrak.org</a><br>
web: <a href=3D"https://mkrak.org" rel=3D"noreferrer" target=3D"_blank">htt=
ps://mkrak.org</a><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--000000000000e64fa5056c7c6cf3--
