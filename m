Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1DAEE007D6; Wed, 15 Oct 2014 20:48:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E23E00749
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 20:48:50 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id tp5so2669459ieb.0
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 20:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UjJk0Lc7UWRO1Fq8TAzq46j1uny5VLr/bCOiiV/+Qzw=;
	b=rYYBvK+bT5ZlPH9KNtZb5bEZssl5OXOswZiFA1+piEc25r7gJyAWR0UheGtpg6tuqW
	w3FSkkbgcfV+hcuWt6eSmEmYlmTfsPXJoQ1Pbj1vBiTLzdpFlgCIhmLs60Dy88/zXfeF
	Z+Y8z6eGgazSf5uwE6SiMWi/hDncwab9f1JU9QqWcFm28v9VezIBQnq33tj92dxxdYmA
	xiKlRkJefSx+c9zCIhO/GtmVMswVU+901HC+qFERVzlpX/4VGA5rGdp5x7sOq+UeZSqU
	HM3Z2TLhths8ZhR2umG/h90UtdKZF+uXUYQ0WE4wOIKl1A3lC2MxLxXLZIfBrmZReQmq
	E0ng==
MIME-Version: 1.0
X-Received: by 10.50.4.35 with SMTP id h3mr18683150igh.37.1413431329332; Wed,
	15 Oct 2014 20:48:49 -0700 (PDT)
Received: by 10.64.76.108 with HTTP; Wed, 15 Oct 2014 20:48:49 -0700 (PDT)
Received: by 10.64.76.108 with HTTP; Wed, 15 Oct 2014 20:48:49 -0700 (PDT)
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FD87999CB@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87999CB@MSXBEBVT12.planar.net>
Date: Thu, 16 Oct 2014 05:48:49 +0200
Message-ID: <CAALGJZYm377WBJUVvbXEyUj9svqmRyfFjqLmv0ZUNTvwnc0Odg@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Creating new u-boot board
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
X-List-Received-Date: Thu, 16 Oct 2014 03:48:59 -0000
Content-Type: multipart/alternative; boundary=001a11c3e6304cb20505058220a6

--001a11c3e6304cb20505058220a6
Content-Type: text/plain; charset=UTF-8

Am 16.10.2014 02:40 schrieb "Matt Schuckmann" <Matt.Schuckmann@planar.com>:
>
> I'm pretty confused about what is the best way to go on this.
> I realize that there are several paths that I could take but I really
don't know which is the best way to go.
>
> We are creating a new board largely based off the beaglebone design but
customized to our needs.
> I'm basing my software work off the TI SDK 7.0 (yes I know that is almost
a year but it is the TI blessed version)
>
> I feel like I need to create a new u-boot board configuration which I
have done in my own sandbox.
>
> Now I don't know if I should be creating a patch for my changes and
adding them to a bbappends for the ti u-boot recipe or if I should create a
new clone of ti's u-boot repo to check my changes into and create a new
recipe that references my repo? Or is there another option that I should be
exploring.
>
If you only made a few changes like config the easiest way may be just to
patch inside a bbappend.

If there are changes in the u-boot itself it may worth to run an own u-boot
git and sync it with denx or TI.

You can overwrite the SRC_URI in the bbappend as-well.

I am a bbappend fan boy so I would prefer this over an new recipe.

But it may worth to look at the various layers like freescale and TI how
they solved this.

> Which path is preferred?
There is no silver bullet.
> What are the short/long term pro's and con's of each approach?
>
Regards,
Christian
> Matt S.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a11c3e6304cb20505058220a6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 16.10.2014 02:40 schrieb &quot;Matt Schuckmann&quot; &lt;<a href=3D"mail=
to:Matt.Schuckmann@planar.com">Matt.Schuckmann@planar.com</a>&gt;:<br>
&gt;<br>
&gt; I&#39;m pretty confused about what is the best way to go on this.<br>
&gt; I realize that there are several paths that I could take but I really =
don&#39;t know which is the best way to go.<br>
&gt;<br>
&gt; We are creating a new board largely based off the beaglebone design bu=
t customized to our needs.<br>
&gt; I&#39;m basing my software work off the TI SDK 7.0 (yes I know that is=
 almost a year but it is the TI blessed version)<br>
&gt;<br>
&gt; I feel like I need to create a new u-boot board configuration which I =
have done in my own sandbox.<br>
&gt;<br>
&gt; Now I don&#39;t know if I should be creating a patch for my changes an=
d adding them to a bbappends for the ti u-boot recipe or if I should create=
 a new clone of ti&#39;s u-boot repo to check my changes into and create a =
new recipe that references my repo? Or is there another option that I shoul=
d be exploring.<br>
&gt;<br>
If you only made a few changes like config the easiest way may be just to p=
atch inside a bbappend.</p>
<p dir=3D"ltr">If there are changes in the u-boot itself it may worth to ru=
n an own u-boot git and sync it with denx or TI. </p>
<p dir=3D"ltr">You can overwrite the SRC_URI in the bbappend as-well. </p>
<p dir=3D"ltr">I am a bbappend fan boy so I would prefer this over an new r=
ecipe.</p>
<p dir=3D"ltr">But it may worth to look at the various layers like freescal=
e and TI how they solved this.</p>
<p dir=3D"ltr">&gt; Which path is preferred?<br>
There is no silver bullet.<br>
&gt; What are the short/long term pro&#39;s and con&#39;s of each approach?=
<br>
&gt;<br>
Regards,<br>
Christian<br>
&gt; Matt S.<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--001a11c3e6304cb20505058220a6--
