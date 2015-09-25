Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F330DE00D74; Fri, 25 Sep 2015 08:38:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 917E3E00461
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 08:38:32 -0700 (PDT)
Received: by igbni9 with SMTP id ni9so11980629igb.0
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 08:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=eJryyH6w6qynHD5I+EndBNQclkjqss4VCbMPGR66YSs=;
	b=TjDHUa5Lc/PBDvcY+dyxCMZclnU974K1pbG6LwFGxrR47rNheZmfqax3V3WZMseyTx
	xQg+4A2Sw34DI4VZgRQTr3D/hnfdbr536cbMTon7c3GYMp1iCsQsS5NR5CCflKHwTTF0
	tqS5zAzM7t6xPIm3bzSn+NHWj+d6hRhVCv+u3+xqwhtknrziXK12xjIJ/LMK9dc7ZcgH
	9XMkVk5LWnFS0WQZ0vst8n+4iZ4AHvYzGX922XONV/aKEmFWxaNkT0siT+Z5ywnpVMMI
	tP7FJNgvBsnyQyC2tH4mJ+YxMNUGb0+I5XEuGNfw4Y6c/uR9upw9ok9Hxl57RbmbfQqA
	SYTA==
X-Received: by 10.50.88.33 with SMTP id bd1mr3404822igb.68.1443195511630; Fri,
	25 Sep 2015 08:38:31 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.100.71 with HTTP; Fri, 25 Sep 2015 08:38:12 -0700 (PDT)
In-Reply-To: <5551EDA3-4D20-44A0-BA06-DDC2AEC3B7AC@ac2enterprises.com>
References: <5551EDA3-4D20-44A0-BA06-DDC2AEC3B7AC@ac2enterprises.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 25 Sep 2015 08:38:12 -0700
X-Google-Sender-Auth: aUXFmaKOWV8ZcFEzAiIGIY8-1JI
Message-ID: <CABcZANm5WtVgshp6mBTn08fPrH4+eDTD+uHKr31VQyL=R7dbRQ@mail.gmail.com>
To: Allen Curtis <ajcurtis@ac2enterprises.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bbappend a "required" bb file
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
X-List-Received-Date: Fri, 25 Sep 2015 15:38:34 -0000
Content-Type: multipart/alternative; boundary=089e013cbd1acff37c052094231a

--089e013cbd1acff37c052094231a
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 24, 2015 at 4:18 PM, Allen Curtis <ajcurtis@ac2enterprises.com>
wrote:

> I am working with a BSP that has multiple image recipes.
>
> foo-hwbringup-image.bb
> foo-qt5demo-image.bb
>
> foo-qt5demo-image.bb contains "require foo-hwbringup-image.bb"
>
> However if I create foo-hwbringup-image.bbappend, it gets ignored.
>
> What are the rules with appending included recipes?
>

bbappends do not append arbitrary files, only recipes (and in this case,
the inclusion treats them as an arbitrary file). They do not apply to
anything included or required, only the recipe itself. So you'll need to
bbappend every recipe that includes foo-hwbringup-image.bb in this case.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e013cbd1acff37c052094231a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Sep 24, 2015 at 4:18 PM, Allen Curtis <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ajcurtis@ac2enterprises.com" target=3D"_blank">ajcurtis@ac2enter=
prises.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":1v3" class=3D"a3s" style=3D"overflow:hidden">I am working with a BSP t=
hat has multiple image recipes.<br>
<br>
<a href=3D"http://foo-hwbringup-image.bb" rel=3D"noreferrer" target=3D"_bla=
nk">foo-hwbringup-image.bb</a><br>
<a href=3D"http://foo-qt5demo-image.bb" rel=3D"noreferrer" target=3D"_blank=
">foo-qt5demo-image.bb</a><br>
<br>
<a href=3D"http://foo-qt5demo-image.bb" rel=3D"noreferrer" target=3D"_blank=
">foo-qt5demo-image.bb</a> contains &quot;require <a href=3D"http://foo-hwb=
ringup-image.bb" rel=3D"noreferrer" target=3D"_blank">foo-hwbringup-image.b=
b</a>&quot;<br>
<br>
However if I create foo-hwbringup-image.bbappend, it gets ignored.<br>
<br>
What are the rules with appending included recipes?</div></blockquote></div=
><br>bbappends do not append arbitrary files, only recipes (and in this cas=
e, the inclusion treats them as an arbitrary file). They do not apply to an=
ything included or required, only the recipe itself. So you&#39;ll need to =
bbappend every recipe that includes <a href=3D"http://foo-hwbringup-image.b=
b">foo-hwbringup-image.bb</a> in this case.<br>-- <br><div class=3D"gmail_s=
ignature">Christopher Larson<br>clarson at kergoth dot com<br>Founder - Bit=
Bake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Eng=
ineer, Mentor Graphics</div>
</div></div>

--089e013cbd1acff37c052094231a--
