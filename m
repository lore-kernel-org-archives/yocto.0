Return-Path: <arunkr.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66191E00846; Sun, 14 Sep 2014 22:45:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (arunkr.linux[at]gmail.com)
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
	*      [209.85.212.171 listed in list.dnswl.org]
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC16CE00514
	for <yocto@yoctoproject.org>; Sun, 14 Sep 2014 22:45:37 -0700 (PDT)
Received: by mail-wi0-f171.google.com with SMTP id bs8so3435623wib.16
	for <yocto@yoctoproject.org>; Sun, 14 Sep 2014 22:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=RrPRQRzHQEj7zk/vrm9UkyIXKMtDmPdpylufyER+ExE=;
	b=KHg/gzAEhnWmXNRBlMxLxV7z97Y+o2oUj5JE6Mdk1kKZfz0tOj1tKsmWRbFWtnDPHk
	PYPBpTIBVlpDfYPdFZglYKPTOJbd8Q6cEeFdaylpqRq827DDttkNk9hN66sWLRSZjtOl
	CGCvQa2k5rlbOE0AgWb3jpOiGBr7nqfy53tb+1afuaUT5FL376d1rVOgGqBVhzaKGC9X
	PyHGKM4bVjuWhCU4PzUHq0SapCudbbKDuwuBGkTVaWwArjcT0theSfFVqlvTfpaSsXLo
	p/znPawq84Mz0mpkbpCO6BXCLoq32Kva0EOnCEFGw5qyfvEEcNhv4Qet3si26Pu4LMC9
	stVw==
MIME-Version: 1.0
X-Received: by 10.194.236.102 with SMTP id ut6mr1777529wjc.19.1410759936712;
	Sun, 14 Sep 2014 22:45:36 -0700 (PDT)
Received: by 10.216.177.3 with HTTP; Sun, 14 Sep 2014 22:45:36 -0700 (PDT)
Date: Mon, 15 Sep 2014 11:15:36 +0530
Message-ID: <CABG0-3yDCJo-b4Y7U8GS+cvM8ov6fo6nHH=+xgxM73rPOnj70A@mail.gmail.com>
From: arun kumar <arunkr.linux@gmail.com>
To: gary@mlbassoc.com, Yocto Mailing List <yocto@yoctoproject.org>
Subject: Re: Basic build fails
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
X-List-Received-Date: Mon, 15 Sep 2014 05:45:47 -0000
Content-Type: multipart/alternative; boundary=089e01493ffae428410503142458

--089e01493ffae428410503142458
Content-Type: text/plain; charset=UTF-8

Hi gary,
    My system has 4GB RAM and 2GB of swap space. i would also like to
mention that the i could bake the recipe
"core-image-minimal" sucessfully but baking "core-image-sato" still fails.

If you could provide me some links on this regard i will be happy to do my
side of research on the same and post the result.

--089e01493ffae428410503142458
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi gary, <br></div>=C2=A0=C2=A0=C2=A0 My sy=
stem has 4GB RAM and 2GB of swap space. i would also like to mention that t=
he i could bake the recipe<br></div>&quot;core-image-minimal&quot; sucessfu=
lly but baking &quot;core-image-sato&quot; still fails.<br><br></div>If you=
 could provide me some links on this regard i will be happy to do my side o=
f research on the same and post the result.<br></div>

--089e01493ffae428410503142458--
