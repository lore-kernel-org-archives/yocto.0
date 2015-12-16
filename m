Return-Path: <srinsriv@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73781E00321; Wed, 16 Dec 2015 09:06:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srinsriv[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52A81E00321
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 09:06:07 -0800 (PST)
Received: by mail-ob0-f170.google.com with SMTP id iw8so37049676obc.1
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 09:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=JjLuB7hYLdDc2g9hxiRV/8h5/eZqmiPzB0IWMLytYx0=;
	b=cb6LrgkbrzPVcytfjhFTmXKJsSJSR3IoGP/sE4RtRoUMhhhydog4cHVjKK66hTcIbY
	OzAn2wYYqrc7b2PWcdL3NUsvOBFYvA+fqBH8LOCIkdYfyoVkus1E9lyHsQaGPK6MCMME
	d5zvjv1Cwiaf1Szo7ePTWn2nyqDN8Ub779z5qamPXfAWVDVkZ2sqjR3YXNEda/o6rh9j
	Ybfd9uB+fdNkEeaa/vtLNjVWSLBCl7JCLqShbPJ7Go94IiDK4R9qHeiC8i/YPv2btrPl
	uIlwbFDh58dGz0oXew+1P+PmFMAxYHibQRGpADOhapqWjPjYXn2jD+WxbZNr1AZoNsVA
	CGdw==
X-Received: by 10.60.39.33 with SMTP id m1mr35240250oek.77.1450285567443; Wed,
	16 Dec 2015 09:06:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.120.9 with HTTP; Wed, 16 Dec 2015 09:05:48 -0800 (PST)
From: Srinivasan Srivatsan <srinsriv@gmail.com>
Date: Wed, 16 Dec 2015 09:05:48 -0800
Message-ID: <CAP1ieB3dcmN62gz+cWM7Deupv1XFiCH7MJztwN_8A_2xRCYVsQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Debug custom recipe configuration
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
X-List-Received-Date: Wed, 16 Dec 2015 17:06:11 -0000
Content-Type: multipart/alternative; boundary=089e013cb7821206ea052706ec43

--089e013cb7821206ea052706ec43
Content-Type: text/plain; charset=UTF-8

Hi,

I am working with Yocto and Bitbake to add a recipe which executes a python
script for configuration.

Am currently using the "*bitbake <recipe-name> -c configure*" to configure
the recipe. There is a configuration issue which am looking into for which
I need to add pdb.set_trace() when the configuration is run through
bitbake. I ran the python script configuration locally without using
bitbake, and it seems to work. If I add set_trace(), I see that the bitbake
program bypasses the pdb prompt during the run. Is there a way to have the
bitbake stop at that point in the program and give me access to the pdb
prompt ? Any other alternative way to debug this issue is appreciated.

Regards
Srinivasan

--089e013cb7821206ea052706ec43
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am working with Yocto and Bitbake=
 to add a recipe which executes a python script for configuration.</div><di=
v><br></div><div>Am currently using the &quot;<b><u><i>bitbake &lt;recipe-n=
ame&gt; -c configure</i></u></b>&quot; to configure the recipe. There is a =
configuration issue which am looking into for which I need to add pdb.set_t=
race() when the configuration is run through bitbake. I ran the python scri=
pt configuration locally without using bitbake, and it seems to work. If I =
add set_trace(), I see that the bitbake program bypasses the pdb prompt dur=
ing the run. Is there a way to have the bitbake stop at that point in the p=
rogram and give me access to the pdb prompt ? Any other alternative way to =
debug this issue is appreciated.</div><div><br></div><div>Regards</div><div=
>Srinivasan</div></div>

--089e013cb7821206ea052706ec43--
