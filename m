Return-Path: <sdishu20@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09AADE00CD6; Fri, 30 Sep 2016 00:30:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sdishu20[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E259E00C8B
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 00:30:56 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id r126so120496040oib.0
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 00:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=3EH0svkhaKNgxnM/cryVoEP3a1Dc8POzdqDDXzekWd8=;
	b=UITnP1JsfeIh0HSh2lmHjXKCvRtlavcnXopKNoOD+st4AnIDJYkWSQeWRTDt5mDb6B
	1ExA/y1PkXEeB+FCLlNcvCy0E4XFx7DKdN8JNsAq04kGA+9y2DNtljUf1IQqc57E2rVf
	BuUfDu6RvOD7LyVMxjNOtD/J5AU9CqRQWjSOVtIT82swdvQ21Qxh+sponAyS/15B5FT2
	4MFZJ3kJpUgL2pruclNgO25kwwGh6Y63knHFDxv001IGTN2RpJ+SuDfgwYAjNE7G9i90
	1bxoNLQHUl9IFYvwJHyxcoOp0ZbMWy98r63z6388Gfo6xjzClv/pnnd7H7jg+zgWYKZM
	BqEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3EH0svkhaKNgxnM/cryVoEP3a1Dc8POzdqDDXzekWd8=;
	b=WN1okG9LyrCejZGagZgGnCOQ1bCluO4cz487EX+wkcCkn6b8Fe/rFnPspyEYUQK3Tw
	WA8uO+5/Kwfbi0yvkHDup9RnKg6bf80RD56sJFHj4tE6/pIDMDhC0Hcb58cBWy2Ylvg4
	RPI7pcJVyi8L6PvQpCIwyDPhIMl/4UrdS9hLLmvixpnxpsNb9+u6Nh3mCCZSPriKuH8R
	jH8uYM8Bd0YbPQBSKDe6zjqmfNJXq0hbV18t6UeUUNA0ldmwRoGqcqqv1dud7u+V07qa
	0bdeRNHXt8uKLDaLzq+GtLtXK7LWKAwrs+/4jy9KQPOMboxBgreVqVXGVPHk2qTK6oMd
	3dFg==
X-Gm-Message-State: AA6/9RnHHKiwMqEEJX4B8RYNjSv62XqAudOEdjYnPq3gn1p/d9b17g3paGbTK9uB3djljAsLHQeksl8qF70f0Q==
X-Received: by 10.202.80.19 with SMTP id e19mr5586921oib.75.1475220643402;
	Fri, 30 Sep 2016 00:30:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.86.9 with HTTP; Fri, 30 Sep 2016 00:30:43 -0700 (PDT)
From: Dishu Sharma <sdishu20@gmail.com>
Date: Fri, 30 Sep 2016 13:00:43 +0530
Message-ID: <CAPPN1iHPxXi1a2_3bWjnV8kYWQ=1b6grsUcz2hWsMFAsE94f4g@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 03 Oct 2016 10:01:07 -0700
Subject: Error: Nothing PROVIDES 'libxfont'
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
X-List-Received-Date: Fri, 30 Sep 2016 07:30:59 -0000
Content-Type: multipart/alternative; boundary=001a113d82a06a5a27053db49289

--001a113d82a06a5a27053db49289
Content-Type: text/plain; charset=UTF-8

Hello Ma'am/Sir,

While doing $ bitbake xorg-xserver , I am getting a error :
Error: Nothing PROVIDES 'libxfont'

libxfont recipe is present in meta/recipes-graphics/xorg-lib/
Could you please help me in debugging  this.

Thankyou,
Priyanshu Sharma

--001a113d82a06a5a27053db49289
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ma&#39;am/Sir,<div><br></div><div>While doing $ bitb=
ake xorg-xserver , I am getting a error :</div><div>Error: Nothing PROVIDES=
 &#39;libxfont&#39;=C2=A0</div><div><br></div><div>libxfont recipe is prese=
nt in meta/recipes-graphics/xorg-lib/<br>Could you please help me in debugg=
ing =C2=A0this.</div><div><br></div><div>Thankyou,</div><div>Priyanshu Shar=
ma</div></div>

--001a113d82a06a5a27053db49289--
