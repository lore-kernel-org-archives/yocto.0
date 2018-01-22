Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F19B6E00E10; Mon, 22 Jan 2018 11:49:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7029CE0085E
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 11:49:11 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id c16so11222412itc.5
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 11:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Rys46YY3BlBRBh0+5R16BS+w+h6nqrGtzh/O0tuVJ94=;
	b=j0Tn5gdQAbVObfbJdTs3SNb3bjKkM54mHMGVzKfV6fxpEdiOiBWxeUsvY17gt/KAAM
	V8ghLkSdYPkVhJbQFK0l78KF5S5X+howRCWSEMMzfMT/cbinnm4F0+mV6Uvvg60isAxm
	gJMO8G/FChYfB3422FoOjmmRZnh2M63renoQQZMb3riMh7gjulFDEqCeahQFnMsN3n5/
	SZWAcLf3cbNz2eXBsefiDglslvdrAmljL3DT+GnNoH/pNNeOeqk8xRS73JigvZB5anvP
	DP5CQkkW2O5cZh6IF14auHBGQtgQAc/RqJIV+dkvM1piPZNqF1+I0dzEXbfX7hbh5wVW
	0GHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Rys46YY3BlBRBh0+5R16BS+w+h6nqrGtzh/O0tuVJ94=;
	b=eFDd7SzqJekqZEvpjTGdv+7BoaGGSSAS4L4Jjl54w7tfXlTsrX8+Y2JkfYMarcIUu1
	VxC+ix++xkEpCV57SZWNPDveX7WzjKHBfQXQ1z6ao2cKd5uka8pjzaCK8MdHdny7NvoQ
	0xQ1VxA6BExE+v+xtsGseJ+UybqTFz6ER0o0q80yhH5pade4GaGgRpgF/chq+hMvbALG
	g3SofxssfXdkk+jKTZuXMy5QwNUMeeJZkz04fI2mcdcPRXfJLmGCqpFW1NOoAjSr9zti
	kP30aimX0tjmfOv9IUNDieeVjbLMRphyddWhJCX8XmipWaU92mL+pa6SAd60IqIXUNBv
	1QFA==
X-Gm-Message-State: AKwxytfKGuougpOcd99L3vJ2qEab3frmVKhGa2pPwRgZvxiTUY4fJCvs
	EtZXyjnBJ5mc1Qn5N03NI2E3wzjGc+gVg3PuGtQsMA==
X-Google-Smtp-Source: AH8x227MN5jcltExS/2BP/fs7DYK8Ljg+A/esf3CGjQ5d7tEX8AhTBj8d15MAJAp4z0n0Lh4HtmLnDCpWBxh9z+FZ3U=
X-Received: by 10.36.215.69 with SMTP id y66mr23700itg.10.1516650551550; Mon,
	22 Jan 2018 11:49:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Mon, 22 Jan 2018 11:48:51 -0800 (PST)
In-Reply-To: <OF8E876F7E.8921135E-ON8825821D.00614B7D-8825821D.00621688@selinc.com>
References: <OF8E876F7E.8921135E-ON8825821D.00614B7D-8825821D.00621688@selinc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Jan 2018 19:48:51 +0000
Message-ID: <CAJTo0LaiDm7poqH1ktntmu2xsOf9T831LUEcUVid8fj91i+v4w@mail.gmail.com>
To: Aaron_Wright@selinc.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: eSDK and Multilib
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
X-List-Received-Date: Mon, 22 Jan 2018 19:49:13 -0000
Content-Type: multipart/alternative; boundary="94eb2c0afc445fc184056362b910"

--94eb2c0afc445fc184056362b910
Content-Type: text/plain; charset="UTF-8"

Don't install both into the SDK?  If you must, oe_multlib_header might help.

Ross

On 22 January 2018 at 17:51, <Aaron_Wright@selinc.com> wrote:

>  I'm running pyro, and I'm struggling to create an eSDK for multilib
> custom image. I keep running into FileExistsError errors during the
> do_sdk_depends task.
>
> It seems as though the lib32 and non-lib32 versions of a recipe are both
> creating a -dev package that tries to install the same headers.
>
> Am I missing an easy solution to this?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c0afc445fc184056362b910
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Don&#39;t install both into the SDK?=C2=A0 If you must, oe=
_multlib_header might help.<div><br></div><div>Ross</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 22 January 2018 at 17:51=
,  <span dir=3D"ltr">&lt;<a href=3D"mailto:Aaron_Wright@selinc.com" target=
=3D"_blank">Aaron_Wright@selinc.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><font size=3D"2" face=3D"sans-serif">=C2=A0I&#39;m running=
 pyro, and I&#39;m struggling
to create an eSDK for multilib custom image. I keep running into FileExists=
Error
errors during the do_sdk_depends task.</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">It seems as though the lib32 and n=
on-lib32
versions of a recipe are both creating a -dev package that tries to install
the same headers.</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">Am I missing an easy solution to t=
his?</font><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c0afc445fc184056362b910--
