Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 690E7E00C02; Thu, 17 Mar 2016 05:43:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E233E00BF4
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 05:43:31 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id m184so97300964iof.1
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 05:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eyyaoc+N913VSA/D8fuEd4htAOSxdujtxt//A9/iIpI=;
	b=eSv+l7nVGK/NGyynVvuqtCEJPkp/GbH9oNqe3eRo0ivzrp+1WfX4eGK89LPnOwmiiV
	LHu22uMgEPoieQQWoMdTulflU9V8kC2uKWP0g90FCbhmj84IjmVZ5NEIKSAz7M2NkME7
	EReGd/AYI2Bn3J55bfzEBk86jH45UIhQw9l+lqv3B7hYVd/EokZ8tJeIJ2eWYo1ZfobW
	b8/57hBbKiTrvl3pbu8QVFf/hgrA8ZxMsHu2wSAficIX0sZvun+F412ZV9zU50rFmkk/
	9pjJqrY9akJGvLY/Hzlf3weNqNdFZplFvrBRJZLzCs4d4Y9NQdVK+VyWq4RWMybOwclN
	4poQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eyyaoc+N913VSA/D8fuEd4htAOSxdujtxt//A9/iIpI=;
	b=d203j/JHftesyoUrILP7RKwUIIBMCSCFqjBB5G20BpbSNfY3HDH4qaIkn4vc9iC7mH
	sWdV9/XTS5/d5U1cvZtR0pwwsynbOfzzEuIC4q00bbRNfyhTnb3NU58Gmkn72vBFxfZ4
	cBT3PYYOJLDCEU2dhn0LIRHhTOm0+njveisAosU+8L566rydYGDWJUG6UpO/lP72543D
	cfQCfsO83h8Q2qsif8JCuttiG8o/g1VPX6qswAgBRIgz92D4aGIsy9qUye7BU/uCjFgU
	m+go2upn/+SVVRG/lcsQrOLFH3IhplujELhRltixvXGZ5/Np87oesZL2VQFY4tYulAKR
	DlPA==
X-Gm-Message-State: AD7BkJJZoYiP1lHgf7Zf8HQJctGH8bUZSSSTlCLcPA0LzCsSKLtcoumXmYwStEyOPvQAxMeZP3f/8tJD42Urhfwv
X-Received: by 10.107.137.38 with SMTP id l38mr10224394iod.133.1458218610737; 
	Thu, 17 Mar 2016 05:43:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 17 Mar 2016 05:43:11 -0700 (PDT)
In-Reply-To: <3baf398fcfb898db15a5adac63f2d792@cweb28.nm.nhnsystem.com>
References: <3baf398fcfb898db15a5adac63f2d792@cweb28.nm.nhnsystem.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 17 Mar 2016 12:43:11 +0000
Message-ID: <CAJTo0LZ2ySG6Ze6pH01_uwc2+O-qed=UL-QiTz_t-_YPeRgRDw@mail.gmail.com>
To: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Are there any places that you can use the crosswalk latest version?
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
X-List-Received-Date: Thu, 17 Mar 2016 12:43:35 -0000
Content-Type: multipart/alternative; boundary=001a113ec5224c8df5052e3dfa40

--001a113ec5224c8df5052e3dfa40
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 17 March 2016 at 03:03, =EC=9C=A4=EC=98=81=EC=84=9D <earwigz@naver.com> =
wrote:

> So, i had try to found crosswalk recipes,
>
> finally i got it. but it is not lately version. (version : 12.40.295.0)
>
> refer under the link,
>
> https://github.com/crosswalk-project/meta-crosswalk
>

I suggest you try asking the crosswalk developers (either their list or
IRC), as it's their recipe that needs updating.

Ross

--001a113ec5224c8df5052e3dfa40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 March 2016 at 03:03, =EC=9C=A4=EC=98=81=EC=84=9D <span dir=3D"ltr">&l=
t;<a href=3D"mailto:earwigz@naver.com" target=3D"_blank">earwigz@naver.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>So, i had try to=
 found crosswalk recipes,=C2=A0</p><p>finally i got it.=C2=A0<span style=3D=
"font-size:13.3333px">but it is not lately version. (</span><span style=3D"=
font-size:13.3333px">version=C2=A0</span><span style=3D"font-size:13.3333px=
;line-height:1.5">: 12.40.295.0)</span></p><p>refer under the link,=C2=A0</=
p><p><span><span style=3D"text-decoration:underline;font-size:14.6667px;fon=
t-family:Arial;color:rgb(17,85,204);vertical-align:baseline;white-space:pre=
-wrap"><a href=3D"https://github.com/crosswalk-project/meta-crosswalk" styl=
e=3D"text-decoration:none" target=3D"_blank">https://github.com/crosswalk-p=
roject/meta-crosswalk</a></span></span>=C2=A0</p></blockquote></div><br>I s=
uggest you try asking the crosswalk developers (either their list or IRC), =
as it&#39;s their recipe that needs updating.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ec5224c8df5052e3dfa40--
