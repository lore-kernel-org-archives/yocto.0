Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EC0EE00DA5; Fri,  2 Oct 2015 09:44:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EC61E00A3C
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 09:44:36 -0700 (PDT)
Received: by igcrk20 with SMTP id rk20so21373460igc.1
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 09:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=kGuiTNWuN6pU3ViaPJKMYMYkmQI22HNrRSwuzgctSsU=;
	b=LQJh2Oe8WqaBgM9qPeAsugcRzKsBud17sPav6ymOIdpCksEKeBcuo3Gu3E9ExdWuVN
	GtTSjP9G6WxkAmtIgynvytTBpQ1oqqHHxjlATssH3UjYGzLBicm+mgOrtdeDIER4fOiE
	MBsJv6JIyPxO02fPbAHt2iNNa98eE09wYtbgqtnDQr4C1AM6ckEmLcw7Py5GlHVirU8Y
	YRZhK6zESEoeZKFBNKYxyB43/FuRL1D5ui0lIA14fvH93DchL4HbZPVrgCrg7hb4n6gn
	VAXThWRI9LxMV+SHGo7Xr3OACqV0VNoZ6Q74RTbCuB1/C1F+oZiDARVh820fDzKQ7JJN
	cSrw==
X-Received: by 10.50.50.139 with SMTP id c11mr5706180igo.10.1443804276513;
	Fri, 02 Oct 2015 09:44:36 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.100.71 with HTTP; Fri, 2 Oct 2015 09:44:17 -0700 (PDT)
In-Reply-To: <1443801396017.79471@seescan.com>
References: <1443801396017.79471@seescan.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 2 Oct 2015 09:44:17 -0700
X-Google-Sender-Auth: juRPOSQHdYmlT02FJvoCbk-0JQA
Message-ID: <CABcZANkg=UpD8pgB7B8vSj=pfveyE6WaDz1F+VMu76VSERa8Jg@mail.gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS_prepend fails for systemd
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
X-List-Received-Date: Fri, 02 Oct 2015 16:44:40 -0000
Content-Type: multipart/alternative; boundary=047d7bdca04006e1ae052121e1a7

--047d7bdca04006e1ae052121e1a7
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 8:58 AM, Fred Ollinger <Fred.Ollinger@seescan.com>
wrote:

> I'm trying to change my /etc/systemd/journald.conf file.
>

recipetool appendfile sounds like exactly what you want here.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--047d7bdca04006e1ae052121e1a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Oct 2, 2015 at 8:58 AM, Fred Ollinger <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Fred.Ollinger@seescan.com" target=3D"_blank">Fred.Ollinger@seesc=
an.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":=
2b0" class=3D"a3s" style=3D"overflow:hidden">I&#39;m trying to change my /e=
tc/systemd/journald.conf file.<br></div></blockquote></div><br>recipetool a=
ppendfile sounds like exactly what you want here.<br>-- <br><div class=3D"g=
mail_signature">Christopher Larson<br>clarson at kergoth dot com<br>Founder=
 - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Softwa=
re Engineer, Mentor Graphics</div>
</div></div>

--047d7bdca04006e1ae052121e1a7--
