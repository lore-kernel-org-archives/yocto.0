Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 209C9E00B4D; Mon, 19 Oct 2015 09:29:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f172.google.com (mail-yk0-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2B49E00A81
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 09:29:09 -0700 (PDT)
Received: by ykdz2 with SMTP id z2so62869517ykd.3
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 09:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YDL1tHrgCvyrQozUh9EoFAzNXs+ZZppd1ZKvaJ8iFek=;
	b=xj1emWZiRgofqoTPy2eCXDQV72BOAft+6BcWZzB9Bq2yVEAZzlRKIZw97ED/vLktNX
	Da1rMMSHQ/AEBkT9McPqvdoBDWMiwQ+InG8EkyLQpz0bdl9cWgcZmvoJ8/5A417LheVN
	Qdu/Y1lxaHz6Dcs21u65YPkDK1JwnVcdUfGlHIiJ+9i0UTnH+WyBvthHFWJz92J8jZXB
	xCBOO+k7SSN+cU2yUaoZumW7fKhSJN0AEBpdHYl+7Fdze18Lv75tP5TCPpL5B8S3/ZVm
	OVUN7gLBOf/DukFuwC1P1R+Loer1G3voE3DKLJHWMJq9DMdrLRwmWavTqiDCg3s3jrsB
	EJGg==
MIME-Version: 1.0
X-Received: by 10.13.204.193 with SMTP id o184mr18436551ywd.140.1445272148433; 
	Mon, 19 Oct 2015 09:29:08 -0700 (PDT)
Received: by 10.129.155.134 with HTTP; Mon, 19 Oct 2015 09:29:08 -0700 (PDT)
In-Reply-To: <CAGMdoFmNiiWXwrakW5d+aomp7gSoN3HZWnUotaX1yzwXgpv71Q@mail.gmail.com>
References: <CAGMdoFmNiiWXwrakW5d+aomp7gSoN3HZWnUotaX1yzwXgpv71Q@mail.gmail.com>
Date: Mon, 19 Oct 2015 14:29:08 -0200
Message-ID: <CAF3SDA5J=ivNtkVMSiSxi7xHOdGs4dJAtrkArYihAjoEYxz3Og@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel defconfig configuration
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
X-List-Received-Date: Mon, 19 Oct 2015 16:29:15 -0000
Content-Type: multipart/alternative; boundary=001a114f067002e3cb052277a5af

--001a114f067002e3cb052277a5af
Content-Type: text/plain; charset=UTF-8

I *guess* that "make oldconfig" is doing this. I can't find any
".config.old" mention on any "*.bb*" file for fido release of poky, but...

I've used .bbappend for kernel recipes, selecting custom modules based on
MACHINE and they worked fine... Can you share poky release and the .bbapend
file?

Cheers,

2015-10-19 4:37 GMT-02:00 Edward Wingate <edwingate8@gmail.com>:

> I created a linux-wandboard_3.14.28.bbappend that just specifies a new
> defconfig.  I see my defconfig being used to generate a .config.  But
> then something renames .config to .config.old and replaces it with
> another .config that no longer has the configurations I want.  I can't
> find what is doing the override.  This is the run.do_configure:
> http://pastebin.com/zPfuSwTV.  Can anyone suggest where to look next?
> Thanks for any help.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a114f067002e3cb052277a5af
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I *guess* that &quot;make oldconfig&quot; is doi=
ng this. I can&#39;t find any &quot;.config.old&quot; mention on any &quot;=
*.bb*&quot; file for fido release of poky, but... <br><br></div>I&#39;ve us=
ed .bbappend for kernel recipes, selecting custom modules based on MACHINE =
and they worked fine... Can you share poky release and the .bbapend file?<b=
r><br></div>Cheers,<br></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">2015-10-19 4:37 GMT-02:00 Edward Wingate <span dir=3D"ltr">&lt;=
<a href=3D"mailto:edwingate8@gmail.com" target=3D"_blank">edwingate8@gmail.=
com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I created a linux-wan=
dboard_3.14.28.bbappend that just specifies a new<br>
defconfig.=C2=A0 I see my defconfig being used to generate a .config.=C2=A0=
 But<br>
then something renames .config to .config.old and replaces it with<br>
another .config that no longer has the configurations I want.=C2=A0 I can&#=
39;t<br>
find what is doing the override.=C2=A0 This is the run.do_configure:<br>
<a href=3D"http://pastebin.com/zPfuSwTV" rel=3D"noreferrer" target=3D"_blan=
k">http://pastebin.com/zPfuSwTV</a>.=C2=A0 Can anyone suggest where to look=
 next?<br>
Thanks for any help.<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--001a114f067002e3cb052277a5af--
