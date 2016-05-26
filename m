Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E176E00DD5; Thu, 26 May 2016 09:40:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACA3BE009AC
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 09:40:58 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id f8so56374200ioe.3
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 09:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EQ0dVMbizywhWyUun0K5tudZHJFIq5zjcjJAx5YRqH4=;
	b=osGSOFhLCH+6Ygfl4d6RDfsnJyrL6Y+SVrlMrkF9ubOuw3tFmO/Ulk1mQ1L0HC17BX
	6viAe3q5yB4pCOG3o3GunLCabbuWgg4JSl8Sd30yTce4CGf6eiVpdiwFHPpsDikRY3x1
	4LHJ9K26PHl48F01ObquD/bmtLCNXVt/xItAui4KXUtem5WhpEvoqMivIA4QUvykxtL0
	oEf/HJjtOuOMalqynM8Y9Kt6s+OF1OUaaCzYCy+qKXI0ljh//bLi4qeTWX81ulXjz5Ca
	lWfrMdSo4lmHxOAZYllSaAWHieFRzGmxmwTUOmthgjuWCHZcOFO6ULs5JfI8aXo8+Zvq
	bLxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EQ0dVMbizywhWyUun0K5tudZHJFIq5zjcjJAx5YRqH4=;
	b=cvy51ACis/wvYpBUg16o1hlpzyZdkfQuaCiR9LXX22H7dyBnSBYE0R2iP1SMZtgqG4
	HAGyhRH5F4n4APXqrgwutCXQIdnwBUVrbXn9U1bNpsCYfIha9PqoW40BSHiZqKwr/ZTj
	lIte5c02OxGp0tqRd5SGuPAt1MQf0rX6kMJJz9oc43p46VHpOOx1vtozA6c7Z71VnslA
	lDClMCKURjgA00UIkkzH+hukZwiSYFyqh0l1E9fwaeVx1ez7HV4LX0eCpeMqIggTmEhA
	KIVhQN3lWn6Ed/bSbhUCc/b6s4lf4QMbt7YmVQinfLLWpdKQ8F1+HdIc4ZLYR0JDyYba
	tVjQ==
X-Gm-Message-State: ALyK8tLeyujRD13K/IH1q+LWBrVFV3/Mf5N5oIWJQzU5H7HuCKfhfYQiGwLVKoWQQqqI/zL49DQf1g67Bovc31o4
X-Received: by 10.107.51.3 with SMTP id z3mr8957231ioz.148.1464280857652; Thu,
	26 May 2016 09:40:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 26 May 2016 09:40:38 -0700 (PDT)
In-Reply-To: <35cb4951b7994fd1a323e3da04d7978b@Ek.usurf.usu.edu>
References: <5fd08a77744a4c39943de4111eadd535@Ek.usurf.usu.edu>
	<CAJTo0LY-0iaFzY=fQSagQWHikUiMYo2P8wWvpetW1H23BTqKcA@mail.gmail.com>
	<35cb4951b7994fd1a323e3da04d7978b@Ek.usurf.usu.edu>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 26 May 2016 17:40:38 +0100
Message-ID: <CAJTo0LYkngeh80Y7js0Tki_9jEVtFmoZeUB=Fp3+JXhV0Fd7ZA@mail.gmail.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEPENDS problem with core-image-full-cmdline
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
X-List-Received-Date: Thu, 26 May 2016 16:40:59 -0000
Content-Type: multipart/alternative; boundary=001a1144154e5f4c110533c1741a

--001a1144154e5f4c110533c1741a
Content-Type: text/plain; charset=UTF-8

On 26 May 2016 at 17:36, Jonathan Haws <Jonathan.Haws@sdl.usu.edu> wrote:

> I did find that if I do:
>
> DEPENDS += " batman-adv libnl"
>
> instead of
>
> DEPENDS_${PN} += " batman-adv libnl"
>

DEPENDS is built-time for the recipe, so the concept of per-package build
dependencies doesn't really make sense.

DEPENDS = "foo bar" are build dependencies
RDEPENDS_${PN} = "foo bar" are package-specific runtime dependencies.

If you have recipes that work, then submitting them to meta-oe or even just
uploading a layer onto github and then adding it to layers.openembedded.org
would be much appreciated so that others can find them.

Ross

--001a1144154e5f4c110533c1741a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 May 2016 at 17:36, Jonathan Haws <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:Jonathan.Haws@sdl.usu.edu" target=3D"_blank">Jonathan.Haws@sdl.usu.edu<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":29u" cl=
ass=3D"a3s aXjCH m154edeccda843dc7">I did find that if I do:<br>
<br>
DEPENDS +=3D &quot; batman-adv libnl&quot;<br>
<br>
instead of<br>
<br>
DEPENDS_${PN} +=3D &quot; batman-adv libnl&quot;</div></blockquote></div><b=
r>DEPENDS is built-time for the recipe, so the concept of per-package build=
 dependencies doesn&#39;t really make sense.</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">DEPENDS =3D &quot;foo bar&quot; are =
build dependencies</div><div class=3D"gmail_extra">RDEPENDS_${PN} =3D &quot=
;foo bar&quot; are package-specific runtime dependencies.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If you have recipes t=
hat work, then submitting them to meta-oe or even just uploading a layer on=
to github and then adding it to <a href=3D"http://layers.openembedded.org">=
layers.openembedded.org</a> would be much appreciated so that others can fi=
nd them.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Ross</div></div>

--001a1144154e5f4c110533c1741a--
