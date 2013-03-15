Return-Path: <navani.srivastava@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD38E01474
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:06:52 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id v19so2916992obq.21
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=LPsXW0Y/KVWPz8WPJZw/R7fX7urjNBRTHFsRdEoOE9I=;
	b=n14bGuyQJHCrY8WA80odWDBk8nOv5pO8P9BdGnh3RINcrmuYzkWfZgUf1QPi1dMYIo
	2AbTyhdH+kM+KfwYcfLoouTIrhmX48/CEJdJaQcBoSjWKgCLtwGktB59iat9PFJs+RpT
	PzAC6Uv0uCnvtoeDayO8+hsv91QnJhq1GNrevjY5vVHcDdNY9GAMxoOusNWyI12mXxgw
	ryxN7JAbajXtIvMQQST9kpF1MwUiMr/hWI5Blh32aGJTPVX7HTxbU6DqCGzmIliZoYnN
	8LnvrveGnF2s4Kp31Txv8ShFGqRKvnrg+pHJ5TzckccbNOTBhnrHPsEM4fQNsKnXsIBE
	F/6g==
MIME-Version: 1.0
X-Received: by 10.60.27.161 with SMTP id u1mr2512819oeg.1.1363331211365; Fri,
	15 Mar 2013 00:06:51 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Fri, 15 Mar 2013 00:06:51 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Fri, 15 Mar 2013 00:06:51 -0700 (PDT)
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE1B6F3998@POCITMSEXMB05.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1B6F3998@POCITMSEXMB05.LntUniverse.com>
Date: Fri, 15 Mar 2013 12:36:51 +0530
Message-ID: <CA+Z6RkUxVBDJqRT0kcwyqNROhjVsxKkRugB3EMVWAadsDL2-Pw@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: SDK creation
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
X-List-Received-Date: Fri, 15 Mar 2013 07:06:52 -0000
Content-Type: multipart/alternative; boundary=e89a8fb203029099fc04d7f148aa

--e89a8fb203029099fc04d7f148aa
Content-Type: text/plain; charset=ISO-8859-1

Hi,

 I wish to create SDK with meta-toolchain-qte recipe.  As two versions are
provided by Poky-8.0. How can I direct compilation of SDK for
qt4-embedded_4.8.1.bb ?



Right now I am getting following error-

ERROR: Multiple .bb files are due to be built which each provide
qt4-embedded (/home/user/danny/meta/recipes-qt/qt4/qt4-embedded_4.8.1.bb/home/user/danny/meta/recipes-qt/qt4/
qt4-embedded_4.8.3.bb).

Thanks and Regards
Navani Kamal Srivastava

--e89a8fb203029099fc04d7f148aa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>=A0I wish to create SDK with meta-toolchain-qte recipe.=A0 As two versio=
ns are provided by Poky-8.0. How can I direct compilation of SDK for <a hre=
f=3D"http://qt4-embedded_4.8.1.bb">qt4-embedded_4.8.1.bb</a> ?</p>
<p>=A0</p>
<p>Right now I am getting following error-</p>
<p>ERROR: Multiple .bb files are due to be built which each provide qt4-emb=
edded (/home/user/danny/meta/recipes-qt/qt4/<a href=3D"http://qt4-embedded_=
4.8.1.bb">qt4-embedded_4.8.1.bb</a> /home/user/danny/meta/recipes-qt/qt4/<a=
 href=3D"http://qt4-embedded_4.8.3.bb">qt4-embedded_4.8.3.bb</a>).</p>

<p>Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>

--e89a8fb203029099fc04d7f148aa--
