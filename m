Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38DB4E0076B; Wed, 16 Jul 2014 02:21:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
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
	*      [209.85.217.181 listed in list.dnswl.org]
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77B4DE0074B
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 02:21:22 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id p9so432367lbv.26
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 02:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=a54gaEX3RjwRkPH7VfWpzmW07+KVAbKI/5z2DpOwDz8=;
	b=s6ssazNvDOoHHIZ7h2uGevWlZjDc2QymxOtlvfQnBnm+1wDIvlKMN43SWy/jj7q/g8
	NpOmr8ZjLJBNIy9bxSpZgoiqy4sn4/F0s1lGF2nWc5etnrIjqZdKq1p1zviAzwKEc4hR
	SPnN2HHN9TWMFSKrvCy1q/Ri9N1zkb0CV1iDUuZGrrysML9iMrs8y8h+UKb1ZEgU5hFj
	GKGkTcQKz72yPp/T1VfWaWUaDZwyCJmlWBDayeD/voPU/32+U2K4WQgeCDkshfaIgelP
	br77Yp0WHj53l6ClGfSavCnPGPmMQ7b5YCGZ1rSoqsBJJjbNg7zqjvoOUjhpMmGtxYYc
	Ywmw==
MIME-Version: 1.0
X-Received: by 10.112.55.1 with SMTP id n1mr23225528lbp.15.1405502480757; Wed,
	16 Jul 2014 02:21:20 -0700 (PDT)
Received: by 10.112.26.211 with HTTP; Wed, 16 Jul 2014 02:21:20 -0700 (PDT)
In-Reply-To: <CAH21_vE+5p+jhmWf6Ai0qrW_jrAKdjVQurcE2E9OCxhGvu6o2w@mail.gmail.com>
References: <31866b6cf9d84744aff245a947cb80a0@KCHJEXMBX01.kpit.com>
	<CAH21_vEM74a_fFdXUhGuQ_8Jthxa2DyqTwDTwY6mE_9-na_21w@mail.gmail.com>
	<CAMKF1srOe57Ktsw71wgEvUzzL+xdcgXxU5JS3U4-5ozV6XXNkA@mail.gmail.com>
	<CAH21_vE+5p+jhmWf6Ai0qrW_jrAKdjVQurcE2E9OCxhGvu6o2w@mail.gmail.com>
Date: Wed, 16 Jul 2014 11:21:20 +0200
Message-ID: <CAPbeDCm913o=_4HDBMdi6jo1pHsEHuGbLUoRDrom-n=pkozYxQ@mail.gmail.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
To: atulkumar singh <atul.singh008@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: MinGW support for qemux86-64
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
X-List-Received-Date: Wed, 16 Jul 2014 09:21:27 -0000
Content-Type: multipart/alternative; boundary=001a11c3ae4218bb9f04fe4c0ce6

--001a11c3ae4218bb9f04fe4c0ce6
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 16, 2014 at 10:42 AM, atulkumar singh <atul.singh008@gmail.com>
wrote:

> Hi Khem Raj,
>
> Thanks for your suggestion.
> But still i am not able to build Windows compatible toolchaing using MinGW
> support by adding bblayer.conf file with meta-mingw adder as a layer file
> in source directory.
> Also as per your suggestion i am keeping SDKMACHINE unchanged(i686).
> But it's generating toolchain for linux support as a self extractable
> script.
>

Have you double-checked that your SDKMACHINE is correctly set ? You can do
this with:

bitbake -e meta-toolchain | grep -e "^SDKMACHINE="

--001a11c3ae4218bb9f04fe4c0ce6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Jul 16, 2014 at 10:42 AM, atulkumar singh <span dir=3D"ltr">&lt;<a href=
=3D"mailto:atul.singh008@gmail.com" target=3D"_blank">atul.singh008@gmail.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Khem Raj,</p>
<p>Thanks for your suggestion.<br>
But still i am not able to build Windows compatible toolchaing using MinGW =
support by adding bblayer.conf file with meta-mingw adder as a layer file i=
n source directory.<br>
Also as per your suggestion i am keeping SDKMACHINE unchanged(i686).<br>
But it&#39;s generating toolchain for linux support as a self extractable s=
cript.</p></blockquote><br></div>Have you double-checked that your SDKMACHI=
NE is correctly set ? You can do this with:<br><br>bitbake -e meta-toolchai=
n | grep -e &quot;^SDKMACHINE=3D&quot;<br>
</div></div>

--001a11c3ae4218bb9f04fe4c0ce6--
