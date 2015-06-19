Return-Path: <dgallagher@219design.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79E26E00A1A; Fri, 19 Jun 2015 08:33:14 -0700 (PDT)
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
	*      [209.85.214.178 listed in list.dnswl.org]
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22880E009E1
	for <yocto@yoctoproject.org>; Fri, 19 Jun 2015 08:33:10 -0700 (PDT)
Received: by obbkn5 with SMTP id kn5so48126584obb.0
	for <yocto@yoctoproject.org>; Fri, 19 Jun 2015 08:33:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=I3WFfY2Y5knqbWTZxxpdGG6PkNVBTc7UuC1RdFcq6FE=;
	b=IvEtttMfRgBhY91dFJcFupBlYcRdkl9rrpQpjpYf1JIgNPpGtI+iKKp+YmWQL5orty
	g0zNb8wyFkPHEc4Ac5OwuVmh7G3nLLDm7+NDPQOwOfEzX8Afk3dXY9vhPlbnKxhqmHau
	icOJlB+luAbLgmWy04GGTo8ftcmRdwAT85Rm6cS+syKOxIu+0a9vcm0VeRzvFj0mKmmb
	cDDj1ygmrfd9ne0VpXOVV240M1fNl4xN5SFyrGn7pAvFtMLvD/fRj2tpvK9xqG5e6L81
	BuTevrwhGa7zOZH1EtUTqZhnB+hsvwJhkoRwnYqBXgwHpJRLeW99T6LGcSImFNGEluuG
	3c1g==
X-Gm-Message-State: ALoCoQkjzO6Jf+RJHRvS0BcB326/Vc/Lvy+j1cVoZWSxrOg8hXNjCo7yxJKN0VLBxZJpajbsGqSL
MIME-Version: 1.0
X-Received: by 10.182.128.234 with SMTP id nr10mr14210185obb.81.1434727989583; 
	Fri, 19 Jun 2015 08:33:09 -0700 (PDT)
Received: by 10.76.57.130 with HTTP; Fri, 19 Jun 2015 08:33:09 -0700 (PDT)
Date: Fri, 19 Jun 2015 08:33:09 -0700
Message-ID: <CA+89abzJG1v9v7AUpRmexJnQs2S7GMYuAVe3McWygm=vnmbnQQ@mail.gmail.com>
From: Daniel Gallagher <dgallagher@219design.com>
To: yocto@yoctoproject.org
Subject: Automatic Virtual Keyboard?
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
X-List-Received-Date: Fri, 19 Jun 2015 15:33:14 -0000
Content-Type: multipart/alternative; boundary=089e015382b62b40ff0518e0a4bb

--089e015382b62b40ff0518e0a4bb
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm trying to get matchbox-keyboard to pop up automatically for text input
fields, and ran across this bug report:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6774

I've tried setting

HAVE_TOUCHSCREEN=1

HAVE_KEYBOARD=0

in /etc/formfactor/machconfig as suggested in this post:
https://lists.yoctoproject.org/pipermail/yocto/2011-September/002951.html
but that doesn't seem to have any effect in fido.

Does anyone have a workaround for this bug in fido?

Thanks,
Daniel Gallagher
Software Engineer
(650) 969-4219 x106
219 Design, LLC

--089e015382b62b40ff0518e0a4bb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;m trying to ge=
t matchbox-keyboard to pop up automatically for text input fields, and ran =
across this bug report: <a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D6774">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6774<=
/a></div><div><br></div><div>I&#39;ve tried setting</div><div><blockquote s=
tyle=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>HAVE_TOUCHSCR=
EEN=3D1</div></blockquote><blockquote style=3D"margin:0px 0px 0px 40px;bord=
er:none;padding:0px"><div>HAVE_KEYBOARD=3D0</div></blockquote>in /etc/formf=
actor/machconfig as suggested in this post:=C2=A0<a href=3D"https://lists.y=
octoproject.org/pipermail/yocto/2011-September/002951.html">https://lists.y=
octoproject.org/pipermail/yocto/2011-September/002951.html</a> but that doe=
sn&#39;t seem to have any effect in fido.</div><div><br></div><div>Does any=
one have a workaround for this bug in fido?</div><div><br></div><div>Thanks=
,<br clear=3D"all"><div><div class=3D"gmail_signature">Daniel Gallagher<br>=
Software Engineer<br>(650) 969-4219 x106<br>219 Design, LLC</div></div>
</div></div>

--089e015382b62b40ff0518e0a4bb--
