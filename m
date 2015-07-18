Return-Path: <ryansvb91@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6089EE009EC; Fri, 17 Jul 2015 18:35:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ryansvb91[at]gmail.com)
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
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35797E0034B
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 18:35:30 -0700 (PDT)
Received: by qkbm65 with SMTP id m65so25997428qkb.2
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 18:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9SeSZ+7HnZyWWwy9mFmLuE9JrqYDhkeqp1n+SqGewWw=;
	b=OytXAUrO0KeHK+OJXYpkjvyudSTp8Lci2bdL9En5QsgqJoWqU20r27sFt5/LOXp28B
	j8SOY/tPoq3u6Onl6fHYGwQmTMenNWYt7cjBAx04zdJfCEXF8jO8IKgfvdv678mFIost
	pvnNWDpydEMdeS2A2WtAHEp02tMAAuGedCFrhXt5X9zvHOg6spHoRQPuLi4DWL/mPueb
	HHlcRgkXrkzX2A9oQQmkYob5zQeD8VJ8Ffrvxc06qvFlOgNp6QIg66vVytP/pzV3roGO
	8QZwHttoHCu0TagFQ7O6d0sJ0jNsSA0sAYXPaiGHge8ThklSGQmRr7l1xVkzfiJggPZe
	mkNw==
MIME-Version: 1.0
X-Received: by 10.55.41.195 with SMTP id p64mr30434285qkp.5.1437183329870;
	Fri, 17 Jul 2015 18:35:29 -0700 (PDT)
Received: by 10.140.91.229 with HTTP; Fri, 17 Jul 2015 18:35:29 -0700 (PDT)
Date: Fri, 17 Jul 2015 18:35:29 -0700
Message-ID: <CAMeZNHSyDNsKD0aX0P_cnpS3o8jZPkGcN8d0ZDnWFhrC3P1cHw@mail.gmail.com>
From: Ryan Soussan <ryansvb91@gmail.com>
To: yocto@yoctoproject.org
Subject: Problem overwriting default kernel config values
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
X-List-Received-Date: Sat, 18 Jul 2015 01:35:36 -0000
Content-Type: multipart/alternative; boundary=001a11473b24daa948051b1c517a

--001a11473b24daa948051b1c517a
Content-Type: text/plain; charset=UTF-8

Hello,
We're having a problem overwriting the default linux kernel config values.
We tried adding our own .cfg file to our layer and appending it to the
source url of the linux-yocto bitbake file.  The variable in our case is
not getting overwritten though (changing CONFIG_ATH5K=m to =y).  Here's
some relevant output from mismatch.txt:
Value requested for CONFIG_ATH5K not in final .config
  Requested value:  CONFIG_ATH5K=y
        Actual value:     CONFIG_ATH5K=m

And basically the same error message in missing_required.cfg.  So it looks
like yocto is seeing our request but ignoring it.  The source code for
these messages is located here:
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/kconf_check

We were following the instructions for editing the config file located in
the linux directory of the meta-skeleton layer in poky.   Any help would be
appreciated!

Thanks,
Ryan

--001a11473b24daa948051b1c517a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>We&#39;re having a problem overwriting the defa=
ult linux kernel config values.=C2=A0 We tried adding our own .cfg file to =
our layer and appending it to the source url of the linux-yocto bitbake fil=
e.=C2=A0 The variable in our case is not getting overwritten though (changi=
ng CONFIG_ATH5K=3Dm to =3Dy).=C2=A0 Here&#39;s some relevant output from mi=
smatch.txt:</div><div><div>Value requested for CONFIG_ATH5K not in final .c=
onfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 Requested value: =C2=A0CONFIG_ATH5K=3Dy =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 A=
ctual value: =C2=A0 =C2=A0 CONFIG_ATH5K=3Dm =C2=A0=C2=A0</div></div><div><b=
r></div><div>And basically the same error message in missing_required.cfg.=
=C2=A0 So it looks like yocto is seeing our request but ignoring it.=C2=A0 =
The source code for these messages is located here: <a href=3D"http://git.y=
octoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/kconf_check">ht=
tp://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/kconf=
_check</a> =C2=A0 =C2=A0</div><div>We were following the instructions for e=
diting the config file located in the linux directory of the meta-skeleton =
layer in poky. =C2=A0 Any help would be appreciated! =C2=A0</div><div><br><=
/div><div>Thanks,</div><div>Ryan=C2=A0</div></div>

--001a11473b24daa948051b1c517a--
