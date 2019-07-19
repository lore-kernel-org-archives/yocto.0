Return-Path: <torres.soldado@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 730C3E00C09; Fri, 19 Jul 2019 06:52:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (torres.soldado[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 168C5E009EA
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 06:52:12 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id i21so30881855ljj.3
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 06:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=P/1W3J5Z3f+DY3KrltjSzrS7FIHFWXOY3Vgb7X80n7E=;
	b=rGiv9ejb/APdORpoDMsUT9ka4WV0uF6Ev3m4l90ssUBGkq+F8RsUhORljRG7vXAJ/D
	WkwuwR25zFn7gwguV7qZOFJfY3RTnjZYLh1NG7d596QwPMQNmkVHFvDaazDZCjKU+fWo
	DlFb73kfRL26ugVb3aJyQ/QEq7tNXxWKikBT/7Fbh8/4MXftZviQRHayVS8egAYl1Fqf
	iHtAvdUJ/zxc55l6doIX1rbpU+C1k7UV/+hCL5ZV/8LMoXxBXVJWjuDS7q85/Z16Mjlj
	0BIaa6ZcqQt4KxQpvhtwSk7q10gbaPJlmoqwqiqrI0rb2P5oVG2MPB+Vj30vQUkNRA2d
	cKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=P/1W3J5Z3f+DY3KrltjSzrS7FIHFWXOY3Vgb7X80n7E=;
	b=d9z+u2FYu6zuV1eMxjfSuHotCeJNTO1iOsDYRARK5XoyRDtGRxkeZHePxvBTDSp1Tq
	ycezOVeCBoaouXIGk2JEWtj0H9/VRi4ixV4WOdTBgw7q35SdKPL5Ut1/bvJvlzBY4vX9
	g15Cr8zcsgzgXTQXG5X52YhIo1pQRt0fSsFkDcQh7lCVgmnRcEzy2DNYLKj053dc0gN4
	gyHSSje9byZXxYk59kWnjchvrGb9nGDfDOSziEyETDQade5WlgLRtxhX4TgY0n4uRSax
	UiIjEMNusWSVI89iyJMMIWfSHbrK9tUTD/8iR6/nYn/T05yMWBAd0l5TYQ4tUlSLJ7Kb
	BCOQ==
X-Gm-Message-State: APjAAAUYN+BXzjM+sgC0LOiO8sFNwf3YJriQt+XxkYi7CgY0iSLmQM2d
	g6uyi5m3iTydXtWE+ASE61ZvVCaG9faHJ0b3+P8gJumlNT0rFQ==
X-Google-Smtp-Source: APXvYqzspEpA3mRVNR8cN2Z6KeMXf+pB2aIzK7/swdTcKHhTvwkMBinMXYfeyBTP86rUKYVP+iBfqtQW1n8jRn8sVuY=
X-Received: by 2002:a2e:9d8a:: with SMTP id c10mr4048430ljj.147.1563544331907; 
	Fri, 19 Jul 2019 06:52:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAFuHCCD22a3r41RmUsv3Grbt+2YY0uTXp+ZuiLo+Xh5ivBVghA@mail.gmail.com>
In-Reply-To: <CAFuHCCD22a3r41RmUsv3Grbt+2YY0uTXp+ZuiLo+Xh5ivBVghA@mail.gmail.com>
From: Sergio Torres Soldado <torres.soldado@gmail.com>
Date: Fri, 19 Jul 2019 14:52:00 +0100
Message-ID: <CAFuHCCAfFEzAz8bcEKLhYdYwWjbCKo30=t+_MFepzD+aO59D2Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Setting home directory ownership
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
X-List-Received-Date: Fri, 19 Jul 2019 13:52:14 -0000
Content-Type: multipart/alternative; boundary="0000000000007e75c2058e090897"

--0000000000007e75c2058e090897
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry. I was using NFS boot and was copying over the rootfs with "cp -r"
instead of "cp -a", the permissions are fine. The only issue that remains
is that I have to use "chmod -R 1000" i.e. the UID instead of the username
otherwise I get the following error:
"""
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| install: invalid user =E2=80=98someusername=E2=80=99
"""

On Fri, 19 Jul 2019 at 14:17, Sergio Torres Soldado <
torres.soldado@gmail.com> wrote:

> I am unable to set the home directory ownership. I am using poky@warrior
> and my last attempt was the following recipe:
>
> """
> inherit useradd
> USERADD_PACKAGES =3D "${PN}"
>
> USERADD_PARAM_${PN} =3D "-P someusername -u 1000 -d /home/someusername -r=
 -s
> /bin/bash foosomeusername"
>
> LICENSE =3D "CLOSED"
>
> do_install () {
>   install -d ${D}/home/someusername
>   # If I don't use the UID I get an error message saying "invalid user:
> hubshuffle", although it seems to work for some usernames e.g. "user1" li=
ke
> in the skeleton recipe for useradd.
>   chown -R 1000 ${D}/home/foosomeusername
> }
>
> pkg_postinst_${PN} () {
>   chown -R 1000 $D/home/someusername
> }
>
> FILES_${PN} =3D " \
>   /home/someusername \
> "
> """
>
> I don't know what I am doing wrong, any hint is very welcome thanks.
>

--0000000000007e75c2058e090897
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry. I was using NFS boot and was copying over the =
rootfs with &quot;cp -r&quot; instead of &quot;cp -a&quot;, the permissions=
 are fine. The only issue that remains is that I have to use &quot;chmod -R=
 1000&quot; i.e. the UID instead of the username otherwise I get the follow=
ing error:</div><div>&quot;&quot;&quot;</div><div><span style=3D"font-famil=
y:monospace"><span style=3D"color:rgb(0,0,0)">| DEBUG: Python function exte=
nd_recipe_sysroot finished
</span><br>| DEBUG: Executing shell function do_install
<br>| install: invalid user =E2=80=98someusername=E2=80=99<br>
&quot;&quot;&quot;</span></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, 19 Jul 2019 at 14:17, Sergio Torres Soldad=
o &lt;<a href=3D"mailto:torres.soldado@gmail.com">torres.soldado@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">I am unable to set the home directory ownership. I am using=
 poky@warrior and my last attempt was the following recipe:<div><br></div><=
div>&quot;&quot;&quot;</div><div>inherit useradd<br>USERADD_PACKAGES =3D &q=
uot;${PN}&quot;<br><br>USERADD_PARAM_${PN} =3D &quot;-P someusername -u 100=
0 -d /home/someusername=C2=A0-r -s /bin/bash foosomeusername&quot;<br><br>L=
ICENSE =3D &quot;CLOSED&quot;<br><br>do_install () {<br>=C2=A0 install -d $=
{D}/home/someusername</div><div>=C2=A0 # If I don&#39;t use the UID I get a=
n error message saying &quot;invalid user: hubshuffle&quot;, although it se=
ems to work for some usernames e.g. &quot;user1&quot; like in the skeleton =
recipe for useradd.<br>=C2=A0 chown -R 1000 ${D}/home/foosomeusername<br>}<=
br><br>pkg_postinst_${PN} () {<br>=C2=A0 chown -R 1000 $D/home/someusername=
<br>}<br><br>FILES_${PN} =3D &quot; \<br>=C2=A0 /home/someusername=C2=A0\<b=
r>&quot;<br></div><div>&quot;&quot;&quot;</div><div><br></div><div>I don&#3=
9;t know what I am doing wrong, any hint is very welcome thanks.</div></div=
>
</blockquote></div></div>

--0000000000007e75c2058e090897--
