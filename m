Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A72F9E00DE1; Wed, 14 Feb 2018 01:04:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03994E00CF1
	for <yocto@yoctoproject.org>; Wed, 14 Feb 2018 01:04:17 -0800 (PST)
Received: by mail-lf0-f44.google.com with SMTP id q194so28435905lfe.13
	for <yocto@yoctoproject.org>; Wed, 14 Feb 2018 01:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=VHerOiD2wpJdc2AU2RRaa2FOwwP4BYXKPU3WCA41Zag=;
	b=B4OuirTE1Uxleykje2Cgywy+yhm5liGB4v76zYnqTWNCcthp/P01dSlacaTO6geA6+
	XJTWKcLmDVB5JtmFUjkF0nczJBxZIq7GP6KugWOgxqg00IMThbl1cMAuL1+DDOw1jyp2
	eXxzqR4SJ6z8XY/5LGdS7dN8Vy+SlbAQet7Hor8btDEu5LR7YKZRPKvOxpUpQWBkehQO
	n7H8LQNkjAQ2M5gc54Np0YLA9jTSzuX0nD/Vv9zYc3GwwPZYdJYdKkAl7TbSOtJaBVzp
	jZvf8T/R15OvRujtXHCPRqKywGkE0KooxUQa4afrTwpFDvZqFWP8Bkv66TllPlkUknZx
	oecA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=VHerOiD2wpJdc2AU2RRaa2FOwwP4BYXKPU3WCA41Zag=;
	b=d0Fdk21Yg11l/uqIcxM1f8Y43vXgzeG14Y7cOrU2K/6ratq2rXhwEbEBK4xCzWKX/e
	6xjPyvOdhTrVWs3m3wZk3SOt2N/QPDIKCigFpV05f1UM8Q740vkgHlDPKu72wouibpLS
	TfOKq2i4izhbjCHeZC3vb2t6QsnAEvYApwUhcYL/+YHh4D9MItLIgQz5OgkIaeIZ6IIC
	CWgl6LjtVE9F9n37EZ8LCoMSEuiNa/f3SBafDmvAE7FxpUPP+tR4yQcyiIynHX5rugzl
	iNjJIRgtuQ3fR3aoVEJw7fjNNrn16Oxi5CDcSNx7UQ2seah0bke+KZ5apSCe4ZdkL/L1
	bquw==
X-Gm-Message-State: APf1xPAgi9HtamynLq0hwhUKhbLT/aO/X7s5X5P6+c7aAFcvjD8RPVSB
	F/Z+HeFDUd+QjSrR5F+Eex3s59XQWUF5PBzf5PFwkgf6
X-Google-Smtp-Source: AH8x225OSSRdwpeCJ8ey7ljEMExx3A4loTWh+KsI2Y3thZXAkA5fq9kvW4j3PuNxzphfHMMivDrAjB+5ehOog1pttKY=
X-Received: by 10.46.50.5 with SMTP id y5mr2996565ljy.111.1518599056329; Wed,
	14 Feb 2018 01:04:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.28.4 with HTTP; Wed, 14 Feb 2018 01:04:15 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 14 Feb 2018 10:04:15 +0100
Message-ID: <CAOT_U5anf1LNGxrY6SGTV4Up8vUzanggHjL3_B3FkthmNiJM9A@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: How did you separate release and development builds?
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
X-List-Received-Date: Wed, 14 Feb 2018 09:04:18 -0000
Content-Type: multipart/alternative; boundary="f4f5e807fcd84f2c8a0565286564"

--f4f5e807fcd84f2c8a0565286564
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm assuming separating development and release builds
is a fairly common use case.
The release build would be something like:

- has all the funcions for production
- attack surface is limited (no ssh, only the required apps)
- config files set with real endpoints (logging or crash servers etc.)

But that's not an image you can really develop on given all the constrains.
So there is also a need for a development image:

- inherits the funcions available on production image
- developer convinence over security (debuggers, ssh access etc.)
- configs set not to depend on payed cloud services


Our curent approach is to solve this by having two different
image recipes.

Pros:
    * Simple to implement (dev inherits production and just adds packages)
    * You can build both at the same time with the same version

Cons:
    * They have the same runtime name (cause they are the same distro)
    * Separating config files is not yet clear
      (one way to have two versions of recipes, which was a lot of
duplication.
       Now we're chacking how to solve it by introducing external
templating (jinja))

How did you apprach it?
Would like to hear you ideas and from the field experiences.

Be Well,
Alan

--f4f5e807fcd84f2c8a0565286564
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I&#39;m assuming separating development=
 and release builds</div><div>is a fairly common use case.=C2=A0</div><div>=
The release build would be something like:</div><div><br></div><div>- has a=
ll the funcions for production</div><div>- attack surface is limited (no ss=
h, only the required apps)</div><div>- config files set with real endpoints=
 (logging or crash servers etc.)</div><div><br></div><div>But that&#39;s no=
t an image you can really develop on given all the constrains.</div><div>So=
 there is also a need for a development image:</div><div><br></div><div>- i=
nherits the funcions available on production image</div><div>- developer co=
nvinence over security (debuggers, ssh access etc.)</div><div>- configs set=
 not to depend on payed cloud services</div><div><br></div><div><br></div><=
div>Our curent approach is to solve this by having two different</div><div>=
image recipes.</div><div><br></div><div>Pros:</div><div>=C2=A0 =C2=A0 * Sim=
ple to implement (dev inherits production and just adds packages)</div><div=
>=C2=A0 =C2=A0 * You can build both at the same time with the same version<=
/div><div><br></div><div>Cons:=C2=A0</div><div>=C2=A0 =C2=A0 * They have th=
e same runtime name (cause they are the same distro)</div><div>=C2=A0 =C2=
=A0 * Separating config files is not yet clear=C2=A0</div><div>=C2=A0 =C2=
=A0 =C2=A0 (one way to have two versions of recipes, which was a lot of dup=
lication.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0Now we&#39;re chacking how t=
o solve it by introducing external templating (jinja))</div><div><br></div>=
<div>How did you apprach it?</div><div>Would like to hear you ideas and fro=
m the field experiences.</div><div><br></div><div>Be Well,</div><div>Alan</=
div></div>

--f4f5e807fcd84f2c8a0565286564--
