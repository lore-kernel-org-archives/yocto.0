Return-Path: <linux.matthew@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87487E00D0E; Fri,  1 Jun 2018 12:55:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (linux.matthew[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C0BE00CC2
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 12:55:09 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id q13-v6so33631197qtp.4
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 12:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=CaGRpiB8yDmCGlHTUSn5V7Xdsxkjpr4Pq75ZGFCEgww=;
	b=vFrPcmd1tUTShxLPorl+UOa/THDErA6+RO2QI0+ykvbDfN/5phtJWAjShyJaDNpZEN
	HX3ZCKBg2186LvUm05LyQB1Pgbfd/fGVuPMBNEHt3HC/DozOtXm2O9DJKrjPi1iJLo/X
	XVo/o3XL8M7ij4gxs1NIl501t3pFFzjQFNS+QUsc2evcQEUlPgdDDsR9DPhaS99ynz/c
	6aYvIJI0pm2eOK0dTt1g+5RxHaLyeO8H2/bJXpL8l8GKX3aAK3EsI4EuOEivIX0Ep674
	swbCHKKNh2XCnC4gvLk4jSDQKq9AOHrgDPlUzNQmjYjZPShLn3cemC0CQD8c8BD9uBL8
	mqVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=CaGRpiB8yDmCGlHTUSn5V7Xdsxkjpr4Pq75ZGFCEgww=;
	b=HFXQnaDF5+He5mNbF7kVPDkAD5z91EmKFbIH6qZWEG1/4p3GqGGNy2Ga56rm5VBzmL
	P4OwjluWrMxrU40lik/sQJcT/wcf2nbDnmWhwuyF4Q1Z0tbfFaw8FV7IzB2O7yDUOCSr
	pZI+giaQvAZAwzwG7HtpAwkXpvqMiS9OCd15KqnIuwvBDkec2QSG7W+A4zeR03QDaZ09
	DnVEbfMQrVSXuPGjFiDAppkVsoQ7FmqQw3z7EzFohE+LdXC1+jp/fABYLAcOMp5cTN9V
	HJ0TYudV1rWcd6PgBMDRS1yxev9jyRHt9tX9gPnHzKMOOJqYgdxnp+7+VwFdvvgSOWCT
	oOsg==
X-Gm-Message-State: APt69E1gI7Js5Byv4M1nCHbuDxqXttjDMNSpKyM1HWreZP8m/yIL6CBF
	pn/pK2QuyDPC5Ci8ZwojfRouD+otEX8LIsuaKdbt4A==
X-Google-Smtp-Source: ADUXVKJbDQGiiupYlgl73FQmjG4hSGXrRKFho50Ix5VnULOMW9nMYzCcdAe4Yorff+z6qzaHcgc5a0lMPBB1WqYpyik=
X-Received: by 2002:aed:3601:: with SMTP id e1-v6mr8786808qtb.23.1527882908501;
	Fri, 01 Jun 2018 12:55:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:2c8a:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 12:55:07 -0700 (PDT)
In-Reply-To: <CAHHS9cF2mO3ORV+tccyN7CnweCCOc+f=6nFRpNq6RzL7fGw7ew@mail.gmail.com>
References: <CAHHS9cF2mO3ORV+tccyN7CnweCCOc+f=6nFRpNq6RzL7fGw7ew@mail.gmail.com>
From: Matthew Clark <linux.matthew@gmail.com>
Date: Fri, 1 Jun 2018 15:55:07 -0400
Message-ID: <CAHHS9cGguQs20ibK-WCJCVgay3sSwLy0fKnG8FTuJLTbxTEYWw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Error cross-building python 3.5.2
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
X-List-Received-Date: Fri, 01 Jun 2018 19:55:10 -0000
X-Groupsio-MsgNum: 41309
Content-Type: multipart/mixed; boundary="000000000000052507056d99f65c"

--000000000000052507056d99f65c
Content-Type: multipart/alternative; boundary="000000000000052503056d99f65a"

--000000000000052503056d99f65a
Content-Type: text/plain; charset="UTF-8"

As a followup to my question, it might have helped to include some more
details... ^_^;;;

poky.sumo/meta/recipes-devtools/python/python3_3.5.5.bb:do_compile

As near as I can tell, the command below is running the /usr/bin/python
version from my host system, which is 2.7.15rc1, so that might explain the
error.   I don't understand why it's calling that version since I thought
all the leading "PYTHON*" environment variables were to have Yocto use the
one built in the 3.5.5 folder?

Matt


On Fri, Jun 1, 2018 at 3:36 PM, Matthew Clark <linux.matthew@gmail.com>
wrote:

> I'm trying to build yocto for two different ARM boards using a rocko and a
> sumo distro, but am running into the same problem:
>
>
> PYTHON_PROJECT_BASE=/home/mclark/Code/Yocto/ODroid/
> build/tmp/work/aarch64-poky-linux/python3/3.5.5-r1.0/build \
> _PYTHON_HOST_PLATFORM=linux-aarch64  PYTHONPATH=\
> /home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-
> poky-linux/python3/3.5.5-r1.0/recipe-sysroot-native/usr/lib/
> python3.5/lib-dynload/:
> /home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-
> poky-linux/python3/3.5.5-r1.0/build/build/lib.linux-aarch64-3.5:\
> /home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-
> poky-linux/python3/3.5.5-r1.0/Python-3.5.5/Lib:\
> /home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-
> poky-linux/python3/3.5.5-r1.0/Python-3.5.5/Lib/plat-linux \
> python -S -m sysconfig --generate-posix-vars
>
> Traceback (most recent call last):
>   File "/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-
> poky-linux/python3/3.5.5-r1.0/Python-3.5.5/Lib/encodings/__init__.py",
> line 31, in <module>
>     import codecs
>   File "/home/mclark/Code/Yocto/ODroid/build/tmp/work/aarch64-
> poky-linux/python3/3.5.5-r1.0/Python-3.5.5/Lib/codecs.py", line 95
>     *, _is_text_encoding=None):
>      ^
> SyntaxError: invalid syntax
>
> I've not been able to to identify a solid lead on why this is bailing, but
> its blocking my builds.  Does anyone one know why it's crapping here?
>
> Matt
>

--000000000000052503056d99f65a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As a followup to my question, it might have helped to incl=
ude some more details... ^_^;;;<div><br></div><div>poky.sumo/meta/recipes-d=
evtools/python/python3_3.5.5.bb:do_compile<br></div><div><br></div><div>As =
near as I can tell, the command below is running the /usr/bin/python versio=
n from my host system, which is 2.7.15rc1, so that might explain the error.=
=C2=A0 =C2=A0I don&#39;t understand why it&#39;s calling that version since=
 I thought all the leading &quot;PYTHON*&quot; environment variables were t=
o have Yocto use the one built in the 3.5.5 folder?</div><div><br></div><di=
v>Matt</div><div><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Jun 1, 2018 at 3:36 PM, Matthew Clark <span dir=3D"ltr">&lt;<a =
href=3D"mailto:linux.matthew@gmail.com" target=3D"_blank">linux.matthew@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">I&#39;m trying to build yocto for two different ARM=
 boards using a rocko and a sumo distro, but am running into the same probl=
em:<br><br><br><font face=3D"monospace, monospace">PYTHON_PROJECT_BASE=3D/h=
ome/<wbr>mclark/Code/Yocto/ODroid/<wbr>build/tmp/work/aarch64-poky-<wbr>lin=
ux/python3/3.5.5-r1.0/build \<br>_PYTHON_HOST_PLATFORM=3Dlinux-<wbr>aarch64=
=C2=A0=C2=A0PYTHONPATH=3D\<br>/home/mclark/Code/Yocto/<wbr>ODroid/build/tmp=
/work/aarch64-<wbr>poky-linux/python3/3.5.5-r1.0/<wbr>recipe-sysroot-native=
/usr/lib/<wbr>python3.5/lib-dynload/:<br>/home/mclark/Code/Yocto/<wbr>ODroi=
d/build/tmp/work/aarch64-<wbr>poky-linux/python3/3.5.5-r1.0/<wbr>build/buil=
d/lib.linux-aarch64-<wbr>3.5:\<br>/home/mclark/Code/Yocto/<wbr>ODroid/build=
/tmp/work/aarch64-<wbr>poky-linux/python3/3.5.5-r1.0/<wbr>Python-3.5.5/Lib:=
\<br>/home/mclark/Code/Yocto/<wbr>ODroid/build/tmp/work/aarch64-<wbr>poky-l=
inux/python3/3.5.5-r1.0/<wbr>Python-3.5.5/Lib/plat-linux \<br>python -S -m =
sysconfig --generate-posix-vars<br><br>Traceback (most recent call last):<b=
r>=C2=A0 File &quot;/home/mclark/Code/Yocto/<wbr>ODroid/build/tmp/work/aarc=
h64-<wbr>poky-linux/python3/3.5.5-r1.0/<wbr>Python-3.5.5/Lib/encodings/__<w=
br>init__.py&quot;, line 31, in &lt;module&gt;<br>=C2=A0 =C2=A0 import code=
cs<br>=C2=A0 File &quot;/home/mclark/Code/Yocto/<wbr>ODroid/build/tmp/work/=
aarch64-<wbr>poky-linux/python3/3.5.5-r1.0/<wbr>Python-3.5.5/Lib/codecs.py&=
quot;, line 95<br>=C2=A0 =C2=A0 *, _is_text_encoding=3DNone):<br>=C2=A0 =C2=
=A0 =C2=A0^<br>SyntaxError: invalid syntax</font><div><font face=3D"monospa=
ce, monospace"><br></font></div><div><font face=3D"arial, helvetica, sans-s=
erif">I&#39;ve not been able to to identify a solid lead on why this is bai=
ling, but its blocking my builds.=C2=A0 Does anyone one know why it&#39;s c=
rapping here?</font></div><div><font face=3D"arial, helvetica, sans-serif">=
<br></font></div><div><font face=3D"arial, helvetica, sans-serif">Matt</fon=
t></div></div>
</blockquote></div><br></div></div></div>

--000000000000052503056d99f65a--

--000000000000052507056d99f65c
Content-Type: application/x-zip-compressed; name="log.do_compile.zip"
Content-Disposition: attachment; filename="log.do_compile.zip"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jhwdxp0s0

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
lRUAAAAA

--000000000000052507056d99f65c--
