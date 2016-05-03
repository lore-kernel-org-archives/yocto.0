Return-Path: <nick.pongratz@singlewire.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6513CE00736; Tue,  3 May 2016 09:12:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E07DE006C7
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 09:12:41 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id x7so11056835qkd.3
	for <yocto@yoctoproject.org>; Tue, 03 May 2016 09:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=singlewire.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=N1tNUB6GU08UfCZsr4/JCe2HPfKNhIKtDGC9jSh2sio=;
	b=p56V5FUEu9gTTu/nH/croj9cD3GxebI4NxibS1e7RwcfExKGmWbGR8Az7JFlXUAOLM
	k4I9Q3DRpqR+Q4l7lR4ttILysoKclCIWlh1vrz6PVjkXPIqo4yzQVNH4oBsW6oVCqvch
	nh+sAbF5DDmXs2xbWmwfD3ElFzeV85PtKRCSg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=N1tNUB6GU08UfCZsr4/JCe2HPfKNhIKtDGC9jSh2sio=;
	b=BJDxc4jzWCFGrxzOv5DTRbly4RerScy7qE3wONuMV2EA6fWWEPhH7qTCxrY7kO4A4d
	ovycjFKhucTnAXT03tiEMLHmI3uYH2gkk8evJsTxZBRrFDw9lGanKcQd/VKDXHEJg3lO
	ZVNvzo868iouE7odCazswA/5dkhI1eiXPeXC69DYCPcOmHD6t7naVn0n2sGLj+w5EGIi
	STr6Oo4XcH9U5gHnmj64r97YaPgN/JXPAoSFu7zbHWm28TIvYcgjTsdLAE3QUl8i2tV/
	bleDqTf1zI8OSUYBhpZHmowPWMrjmjEWtNBkitS8PN2BoL4taEbu2gPSkmilmyD0fL+9
	9m5g==
X-Gm-Message-State: AOPr4FWaPE0yjm8mwed08JBCCGRhy9pEGi77mOVcmms3tVvy3wQ3XBXjBDuMQHK4MF5fPHm2vt82ojM1V/Hu7pf9
MIME-Version: 1.0
X-Received: by 10.159.39.98 with SMTP id a89mr1497533uaa.22.1462291961264;
	Tue, 03 May 2016 09:12:41 -0700 (PDT)
Received: by 10.176.68.3 with HTTP; Tue, 3 May 2016 09:12:41 -0700 (PDT)
In-Reply-To: <CABcZANn_eqBn4+kfXib=hHzSBYHo5rYVMJuxeKuo4xKVth0-zg@mail.gmail.com>
References: <CALf_N3bfJ5etAAVs5JAF7mX=HQ60BQ9P02ragzdk4y1JGv5KCA@mail.gmail.com>
	<CABcZANkp8WvE3OXFxXcrKV_mi2WwPiyPqwjrgVYHOzQTL3Tk9w@mail.gmail.com>
	<CALf_N3aXL1Lpk1ds1M+XLYH59dB=ha1BByUQtpAFQs=gkp_=aA@mail.gmail.com>
	<CABcZANn_eqBn4+kfXib=hHzSBYHo5rYVMJuxeKuo4xKVth0-zg@mail.gmail.com>
Date: Tue, 3 May 2016 11:12:41 -0500
Message-ID: <CAC2M0xUK2o6Muq028jsRTqcULQT8dtAKK3jfP6BUpFJTpMCTmw@mail.gmail.com>
From: Nick Pongratz <nick.pongratz@singlewire.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: What version of Jethro do we get with - git clone -b jethro git://git.yoctoproject.org/poky.git ?
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
X-List-Received-Date: Tue, 03 May 2016 16:12:45 -0000
Content-Type: multipart/alternative; boundary=94eb2c124820e8fba90531f260ee

--94eb2c124820e8fba90531f260ee
Content-Type: text/plain; charset=UTF-8

And list of tags can be found here:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/refs/tags

Nick Pongratz
Singlewire Software


On Tue, May 3, 2016 at 10:32 AM, Christopher Larson <clarson@kergoth.com>
wrote:

>
> On Tue, May 3, 2016 at 3:31 PM, Mark T <mtl1nuxd3v@gmail.com> wrote:
>
>> Hi Christopher,
>>
>> Thanks. What is the command option to specify the tag and is there a list
>> or tags available ?
>>
>
> https://git-scm.com/book/en/v2
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c124820e8fba90531f260ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">And list of tags can be found here:<div><br></div><div><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/refs/tags">http://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky/refs/tags</a><br></div><div><br></div=
><div>Nick Pongratz</div><div>Singlewire Software</div><div><br></div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, May 3, 2=
016 at 10:32 AM, Christopher Larson <span dir=3D"ltr">&lt;<a href=3D"mailto=
:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div class=3D=
"gmail_extra"><div class=3D"gmail_quote"><span class=3D"">On Tue, May 3, 20=
16 at 3:31 PM, Mark T <span dir=3D"ltr">&lt;<a href=3D"mailto:mtl1nuxd3v@gm=
ail.com" target=3D"_blank">mtl1nuxd3v@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div><div><div>Hi Christopher,<br><br></div=
>Thanks. What is the command option to specify the tag and is there a list =
or tags available ?</div></div></div></blockquote><div><br></div></span><di=
v><a href=3D"https://git-scm.com/book/en/v2" target=3D"_blank">https://git-=
scm.com/book/en/v2</a>=C2=A0</div></div><span class=3D"">-- <br><div>Christ=
opher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedd=
ed, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Gr=
aphics</div>
</span></div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--94eb2c124820e8fba90531f260ee--
