Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50DFEE00B2C; Sun, 10 Jan 2016 18:09:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC30BE00903
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:09:06 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id f206so24230224wmf.2
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:09:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=z+6K700t2lP27l2HEtMb0TeWBWhXz64lY3X4xynKkoM=;
	b=wYrAcYusuOoG3cbuyWSsRWEnJpg9owKNe8pU1G8MU/1riz2NMY+7PXY/QlH8tGNZlx
	pjcdDtMnlLBrNgXr9VyPW4CY/Mpk1jGw39mufBPuWVd1utwptbF2SIQWRmLuFrR2xADh
	CmFxHQ6w3ncpc0Lc70iIdtqNgXjNDsQiNiQsL5Z0DrYbyN/3wIodGW4FX0VyYTWlc7os
	lPG0jrXtQ6yBkh+Ula973Fi/OCNa84LjaY7TTQYSKZSXdf0qoVl98dmRVFGrv/dZp5KI
	X79xUfwqbapA9KpdIIozdNlG9hjY8fg2QsFyvNNxmOdrnIYmmAlw+JRG2AjsTLN2iXBa
	S/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=z+6K700t2lP27l2HEtMb0TeWBWhXz64lY3X4xynKkoM=;
	b=QJXNkp0YghLqQcNItzLUbk2Ur/c6JuO+CVdyqVZ3AD4vTwwmJKLZPJgWjWCvH9+b2Q
	wBvycnkwA2GDOoV7X978cUcYzgg/0oPXwzzGa6o9tYXwJyxs7mNurk2XtwZkAI/j70jo
	RO2QADG1jdCFern5HTnZM4Lt/2FTivRsVaOtT4x4ijNQz9YBDKuk9tXXEsd5RtfsHULv
	lBbRdwJBSfLwrpPI+e9fUwM6ATyrSYU6kYlibxGpY9r8qOdSksGXcsULvfKfoyW84dHG
	763xZ3rBnAScSw0KUJUu3ODKyZ7XQbS98EF+gpHrGMoyPdaiYiesU1ObHBIvopJ2MziI
	P0kA==
X-Gm-Message-State: ALoCoQkF/6MxPCSk/WjNkLhwZun5+tTVRhSPOvQkuhMB4Kks8SaYJdruWYoAjoajBmue2333q5i2skjhwrB/AnFM6ZmensAhjA==
X-Received: by 10.28.227.67 with SMTP id a64mr10561984wmh.74.1452478146176;
	Sun, 10 Jan 2016 18:09:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.129.200 with HTTP; Sun, 10 Jan 2016 18:08:26 -0800 (PST)
X-Originating-IP: [178.7.64.118]
In-Reply-To: <1452477663-14043-1-git-send-email-j.madieu@expemb.com>
References: <20160110184033.GA10098@resin>
	<1452477663-14043-1-git-send-email-j.madieu@expemb.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Jan 2016 03:08:26 +0100
Message-ID: <CAK18fxHt88ajUp9sXYhDC8U4V+wg+YHMHyKmS22fMziNxrA=pA@mail.gmail.com>
To: John Madieu <j.madieu@expemb.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] layer.conf: avoid to force users to add the qt5 layer because of qtbase bbappend
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
X-List-Received-Date: Mon, 11 Jan 2016 02:09:09 -0000
Content-Type: multipart/alternative; boundary=001a114b17e8f27e390529056bb9

--001a114b17e8f27e390529056bb9
Content-Type: text/plain; charset=UTF-8

Hi,

On Mon, Jan 11, 2016 at 3:01 AM, John Madieu <j.madieu@expemb.com> wrote:

> Signed-off-by: John Madieu <j.madieu@expemb.com>
>
> cleanned qtbase.bbappend
>
> Signed-off-by: John Madieu <j.madieu@expemb.com>
> ---
>  conf/layer.conf                            |  4 ++++
>  qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 29 +++++++++++++++++++++++++
>  recipes-qt/qt5/qtbase_%.bbappend           | 34
> ------------------------------
>

Can you clean this up and have two commits: one that adds the qt5 bbappend
and one which does the layer trick?

Thanks,
Andrei

--001a114b17e8f27e390529056bb9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div class=3D"gmail_extra"><br clear=3D"all"><div><=
div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>O=
n Mon, Jan 11, 2016 at 3:01 AM, John Madieu <span dir=3D"ltr">&lt;<a href=
=3D"mailto:j.madieu@expemb.com" target=3D"_blank">j.madieu@expemb.com</a>&g=
t;</span> wrote:<br></div></div></div></div></div></div><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">Signed-off-by: John Madieu &lt;<a hr=
ef=3D"mailto:j.madieu@expemb.com">j.madieu@expemb.com</a>&gt;<br>
<br>
cleanned qtbase.bbappend<br>
<br>
Signed-off-by: John Madieu &lt;<a href=3D"mailto:j.madieu@expemb.com">j.mad=
ieu@expemb.com</a>&gt;<br>
---<br>
=C2=A0conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 ++++<br>
=C2=A0qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 29 +++++++++++++++++++++=
++++<br>
=C2=A0recipes-qt/qt5/qtbase_%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0| 34 ------------------------------<br></blockquote><div><br></div><d=
iv>Can you clean this up and have two commits: one that adds the qt5 bbappe=
nd and one which does the layer trick?</div><div><br></div><div>Thanks,</di=
v><div>Andrei</div></div></div></div>

--001a114b17e8f27e390529056bb9--
