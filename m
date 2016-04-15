Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91DB4E00AD7; Fri, 15 Apr 2016 08:25:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61056E006D3
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 08:25:31 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id u185so137874685iod.3
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 08:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fEgsCEyduagSjkfSMG1QfFhoFtoP5J3B8sKG+tO2up8=;
	b=I6PKxvZ1gXs5rDZZt8kmo0RbCNq+VsQ0sFJP8o3Pfd2CHUG7MNkKvGnRAkd4nMPNTd
	p0+8EYpxLXM4f1h4HYUy0kQ/eXmuNoUcCqFahqvzBpyF+b6VAWMCYebTB6w82+XOzb7C
	xKCSiD8PJ7HknU5GKq2IDHOoxaEd32LKq/RjhsW1dpGAatDLXU6JpbkLx5L9V7f4gWaB
	/QtJJPckk7nmT3DmMZFjUdI2Igzte3U7yNpPPGe6ykJAymkPK5a1nCkitHuIECJpjXY8
	ABnGrOjkFKkG5G5WB4hogKQulezNVuiPoNKZFY1mRyb6on3lJVbVmW1dA6aCXN8e4mYC
	AlRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fEgsCEyduagSjkfSMG1QfFhoFtoP5J3B8sKG+tO2up8=;
	b=CdEmXRB8mjfupJ/TZzCsJcJGb3MmzDZdkRzhsqAFGj3E9eWEIdoX28DmdZ+D5c7s/X
	7v1ubJgT3Z9x7iqhdXs78ZjpHg9d5ctuGKN3obqpN2O3FfopmWPqmXCwK1BLzpLy47LI
	QCKJY36Dhtdc4QUdmEX2+I5eItYHXBuasqgX4uxgDu0YogqRiDjDbFRnOcAuLTkh5rRz
	V4jynSORTcq0RUuUcgCWIz5/BVaaOkKDkFjUXLHGebWnkKwKgHFdyu2+l0nI0c4yEfIN
	uZKePnesgzz7KpRZ+oNYwndWzNMVb6scjxUqSSE/eX6Ffisjh/HEoCG4T5UWRiFcZVDM
	QFYQ==
X-Gm-Message-State: AOPr4FXBi74kSR95dqXV4B62K4mhEPDR7nTrSDCf9b+dEuETA5MUBrQ5LHOnJ6Es9hjbv9vfS0wU/VUwycMHBWpW
X-Received: by 10.107.16.104 with SMTP id y101mr21560965ioi.148.1460733931228; 
	Fri, 15 Apr 2016 08:25:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Fri, 15 Apr 2016 08:25:11 -0700 (PDT)
In-Reply-To: <CAPYQ8X5omDPpo6QDPWqaQ_Grm5iwg=kiJ41zE09SYGk9oYwWhw@mail.gmail.com>
References: <CAPYQ8X5omDPpo6QDPWqaQ_Grm5iwg=kiJ41zE09SYGk9oYwWhw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 15 Apr 2016 16:25:11 +0100
Message-ID: <CAJTo0LbXKQ470S+Qn0a6LhE-qQUsUmjvV4Ek7UTMUZgt+k6i1g@mail.gmail.com>
To: Michael Hu <pxmyhdev@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: remove Yocto systemd features
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
X-List-Received-Date: Fri, 15 Apr 2016 15:25:35 -0000
Content-Type: multipart/alternative; boundary=001a113ff0201524eb0530879fac

--001a113ff0201524eb0530879fac
Content-Type: text/plain; charset=UTF-8

On 14 April 2016 at 21:05, Michael Hu <pxmyhdev@gmail.com> wrote:

> Yocto pulls in systemd and enable certain features by default.I am trying
> to remove some features in systemd *225* yocto builds such as logind
> (just for testing purpose), I was trying to use a '*.bbappend' file with
> 'PACKAGECONFIG_append' to achieve that, but seems like it only takes
> options defined in poky/meta/recipes-core/systemd/systemd_225.bb file.
> systemd_229.bb has logind option, but I'd like to do it in system_225.bb
>

If the recipe doesn't have a PACKAGECONFIG then you can either copy it from
229 and add it in the bbappend:

PACKAGECONFIG[logind] = "--enable-logind,--disable-logind"

As it's then a packageconfig option that isn't selected, it will be
disabled.  That's not very clear though so you could just directly pass the
configure options:

EXTRA_OECONF_append = " --disable-logind"

Ross

--001a113ff0201524eb0530879fac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 April 2016 at 21:05, Michael Hu <span dir=3D"ltr">&lt;<a href=3D"mail=
to:pxmyhdev@gmail.com" target=3D"_blank">pxmyhdev@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex"><div>Yocto pulls in systemd and enable certain f=
eatures by default.I am trying to remove some features in systemd <b>225</b=
> yocto builds such as logind (just for testing purpose), I was trying to u=
se a &#39;*.bbappend&#39; file with &#39;PACKAGECONFIG_append&#39; to achie=
ve that, but seems like it only takes options defined in poky/meta/recipes-=
core/systemd/<a href=3D"http://systemd_225.bb" target=3D"_blank">systemd_22=
5.bb</a> file. <a href=3D"http://systemd_229.bb" target=3D"_blank">systemd_=
229.bb</a> has logind option, but I&#39;d like to do it in <a href=3D"http:=
//system_225.bb" target=3D"_blank">system_225.bb</a></div><div></div></bloc=
kquote></div><div class=3D"gmail_extra"><br></div>If the recipe doesn&#39;t=
 have a PACKAGECONFIG then you can either copy it from 229 and add it in th=
e bbappend:</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra"><div class=3D"gmail_extra">PACKAGECONFIG[logind] =3D &quot;--enable-l=
ogind,--disable-logind&quot;</div><div><br></div><div>As it&#39;s then a pa=
ckageconfig option that isn&#39;t selected, it will be disabled.=C2=A0 That=
&#39;s not very clear though so you could just directly pass the configure =
options:</div></div><div class=3D"gmail_extra"><br>EXTRA_OECONF_append =3D =
&quot; --disable-logind&quot;</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Ross</div></div>

--001a113ff0201524eb0530879fac--
