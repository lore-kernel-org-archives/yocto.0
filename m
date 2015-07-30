Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A98DE00B18; Thu, 30 Jul 2015 12:19:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C686E00A6C
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 12:19:50 -0700 (PDT)
Received: by qkbm65 with SMTP id m65so21657435qkb.2
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 12:19:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=aqwh5VjVDsl//EW0iMdcdsse8kVby2JSAR6didrxyOM=;
	b=mK5FA/JV/Cq6HsShladcdQlT9WHDhPBye01f58u2/iTijWmcy8cmhKl2+ELw4C2GZk
	tQOQx6HzC/mRi3r3RSZJx+BGl/tJ5R70OYNKd9llDIjZ9FVP9BUkmF7yUBNr2+gBrbiF
	/9wpL3b3FTQniVVvmdSaCcyVHKaDtfW60DVWrwdMobkSCFcCKmPCO79lmmvRFVZ7rA4T
	d6oD1TgsKWgfMaiGkaC/LTNexK2px4uj0aIj7e8HuC+wfhIdq36VRhxjtEivkyA86Yh9
	ISmE9LXSiLg1bvYv2wbc7srCwozPNPjp6wLezPWXGLXuJFH/HzdqrMjS7UmuyQLEp4vI
	iHeA==
X-Gm-Message-State: ALoCoQmJqVPoVewWTISwgPbguynp9QHo1QcRLXc0tzEiuDuM/pBgp94pFbBWFLu7swCAMlbx9zWM
X-Received: by 10.55.22.169 with SMTP id 41mr74069137qkw.13.1438283990358;
	Thu, 30 Jul 2015 12:19:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Thu, 30 Jul 2015 12:19:31 -0700 (PDT)
In-Reply-To: <2129998261.5367168.1438283300331.JavaMail.yahoo@mail.yahoo.com>
References: <2129998261.5367168.1438283300331.JavaMail.yahoo@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Jul 2015 20:19:31 +0100
Message-ID: <CAJTo0LYEeyafek_k-Xj=1s8aoRAaBLjbxirnSMs6_beqU_0wSw@mail.gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe md5sum and sha256sum changing
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
X-List-Received-Date: Thu, 30 Jul 2015 19:19:55 -0000
Content-Type: multipart/alternative; boundary=001a11496e90553573051c1c96bc

--001a11496e90553573051c1c96bc
Content-Type: text/plain; charset=UTF-8

On 30 July 2015 at 20:08, Edward Vidal <develone@sbcglobal.net> wrote:

> SRC_URI = "https://github.com/jandecaluwe/myhdl.git"
> SRC_URI[md5sum] = "6f56a9bcbd03a9c8036f87f32f9adc47"
> SRC_URI[sha256sum] =
> "7766c49947c6574c8fb35d0dfcd795ada1e4e457ab5b15499d7000909b8e46e9"


recipetool obviously doesn't detect that your HTTP URL is actually a git
clone.  Change the URL to something like git://github.com/jandecaluwe/...
so it knows to use a git fetcher and not wget.  This also means you don't
need to set the checksums.

Ross

--001a11496e90553573051c1c96bc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 July 2015 at 20:08, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:develone@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><span>SRC_URI =3D &quot;<=
a href=3D"https://github.com/jandecaluwe/myhdl.git" target=3D"_blank">https=
://github.com/jandecaluwe/myhdl.git</a>&quot;<br>SRC_URI[md5sum] =3D &quot;=
6f56a9bcbd03a9c8036f87f32f9adc47&quot;<br>SRC_URI[sha256sum] =3D &quot;7766=
c49947c6574c8fb35d0dfcd795ada1e4e457ab5b15499d7000909b8e46e9&quot;</span></=
blockquote></div><br>recipetool obviously doesn&#39;t detect that your HTTP=
 URL is actually a git clone.=C2=A0 Change the URL to something like git://=
<a href=3D"http://github.com/jandecaluwe/.">github.com/jandecaluwe/.</a>.. =
so it knows to use a git fetcher and not wget.=C2=A0 This also means you do=
n&#39;t need to set the checksums.</div><div class=3D"gmail_extra"><br></di=
v><div class=3D"gmail_extra">Ross</div></div>

--001a11496e90553573051c1c96bc--
