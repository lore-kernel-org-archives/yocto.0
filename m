Return-Path: <maclark88@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E2E2E00AAF; Thu, 22 Sep 2016 07:24:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maclark88[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
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
	*      [209.85.220.175 listed in list.dnswl.org]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DE57E006C6
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 07:24:57 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id g67so17451592qkd.0
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 07:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SLIKuWe6zx8Kj0RTJmKdK4ka/bBxyVVRPXtWW7DzaZo=;
	b=gKvIOFlfNKQGYrj0PbKS+yo1sLpvtMQIYlAdAEKPs92Bhyv+fp7G9oQ1v9t9Qv5aDD
	2pO9xS+/IeQ+hpIkiFzfda9UvQQ+/rWTM6PwlXrHzxm9alhThgEYLTMi6xGZYkJ4HLTH
	lhpKFbz4Li9AXqW3ZnbCsV1tenk1FBV21qKu/8IJU4whmH+jw1ZN1SGMP0/Feh9VpV/l
	YOoSOwUkgZhrlN7FQpAacoXQL7B761LoIUK9/f+0tY8KocLR2kQ1aKkbQfm8OcQGO9/1
	dZFZ2qqIGe1ggoqtnFrm82irCLHMW9+Cdrxeu0znwnDh5c+XRBg/e3xZtYMOaVP6U7ZG
	Uv9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SLIKuWe6zx8Kj0RTJmKdK4ka/bBxyVVRPXtWW7DzaZo=;
	b=h09Y93HBQwKfxcWB+eLvht9uvS9JDVSPsfHnzpNUd73Mb+td6G8xbQNLsblj/Qxvte
	yWK1jbTHRDA10w+Dy0PnmK7EJtN6zXeb0yo7YhYkT0FN487AXdJ0KNSDE9VIFbFXSSRA
	cjsmCYQbMPZGunzhS+FjIyJBNddQh0SKJ6xax8UU6o85aGZ2myHEI4jg19s8OQZsfVHW
	eOrHB+SbkEBhdFRdvCjrQT8VIMg9ITLzrdQ4l4I7USK+MevK15ag2jMjtAA7cGnrHmpK
	HQHuVasPdxWBsSNO41inKthU2yYEBjIVDvp2HXVmcnIwmE1/ap1Ay1H0iDIvLZ9g10Z/
	Algg==
X-Gm-Message-State: AA6/9RnvJ0skveY3/PRq0ja/j4TLxDX2H26s9OjO7w89qShTV/BTf/oikxwkKpenT0qOC72KIm/DR0d2HhF84Q==
X-Received: by 10.55.166.67 with SMTP id p64mr2407362qke.33.1474554296476;
	Thu, 22 Sep 2016 07:24:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.49.99 with HTTP; Thu, 22 Sep 2016 07:24:55 -0700 (PDT)
In-Reply-To: <HE1PR01MB188363A66CEC33154BFAAA9492C90@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB188363A66CEC33154BFAAA9492C90@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: Mark <maclark88@gmail.com>
Date: Thu, 22 Sep 2016 09:24:55 -0500
Message-ID: <CAHp02QN12xqYjCTD1wHWKEsvt0z9rmo01qsQfwYfYZGxtNU9dQ@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-toradex: How to generate uImage* files ?
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
X-List-Received-Date: Thu, 22 Sep 2016 14:24:59 -0000
Content-Type: multipart/alternative; boundary=94eb2c06f33c0b2a6a053d196dd2

--94eb2c06f33c0b2a6a053d196dd2
Content-Type: text/plain; charset=UTF-8

In your situation I have done the following.

1. delete the entire tmp directory, not just deploy

2. bitbake core-image-minimal

3. wic create mkefidisk -e core-image-minimal

Change the type of disk image created to your liking.

 "wic list images" will list all images that are pre-make with a
kickstart (.wks) file.


See section 5.6 of this manual.

http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html#creating-partitioned-images



On Thu, Sep 22, 2016 at 8:35 AM, Karim ATIKI <karim_atiki@hotmail.com>
wrote:

> Hi all,
>
>
> I have downloaded a sample linux image from the Toradex developers website
> to test on a Toradex Colibri T20 device. It worked fine.
>
>
> Now I have generated a custom poky distribution (core-image-minimal) to
> deplkoy on the device.
>
> However, the generated image is zImage format. Whereas it seems that uBoot
> is expecting uImage.
>
>
> 1) How do we inform Yocto to generate uImage instead of zImage ?
>
>
> 2) Therefore, I have deleted the tmp/deploy directory.
>
> But right now, I'm unable to generate the distro again.
>
> I tried many things:
>
>
> bitbake -c clean core-image-minimal
>
> bitbake -c cleanall core-image-minimal
>
> bitbake core-image-minimal
>
>
> Everything fails.
>
>
> Is there a way to get things working again or should generate everythingh
> from scratch again ?
>
>
>
> Z.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Mark, maclark88@gmail.com

Hooray for most things! ~ George Carlin

--94eb2c06f33c0b2a6a053d196dd2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In your situation I have done the following.<div><br></div=
><div>1. delete the entire tmp directory, not just deploy</div><div><br></d=
iv><div>2. bitbake core-image-minimal</div><div><br></div><div>3.=C2=A0<spa=
n style=3D"color:rgb(51,51,51)">wic create mkefidisk -e core-image-minimal<=
/span></div><div><span style=3D"color:rgb(51,51,51)"><br></span></div><div>=
Change the type of disk image created to your liking. =C2=A0</div><div><br>=
</div><div><pre class=3D"gmail-literallayout" style=3D"overflow:auto;color:=
rgb(51,51,51)"> &quot;wic list images&quot; will list all images that are p=
re-make with a kickstart (.wks) file.</pre></div><div><br>See section 5.6 o=
f this manual.<br><br><a href=3D"http://www.yoctoproject.org/docs/1.8/dev-m=
anual/dev-manual.html#creating-partitioned-images">http://www.yoctoproject.=
org/docs/1.8/dev-manual/dev-manual.html#creating-partitioned-images</a><br>=
<br><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Thu, Sep 22, 2016 at 8:35 AM, Karim ATIKI <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atiki@hotmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-size:12pt;color:#000000;background-color:#ffffff;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif">
<p>Hi all,</p>
<p><br>
</p>
<p>I have downloaded a sample linux image from the Toradex developers websi=
te to test on a=C2=A0<span style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorE=
moji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;fon=
t-size:16px">Toradex
 Colibri T20 device. It worked fine.</span></p>
<p><br>
</p>
<p>Now=C2=A0I have generated a custom=C2=A0poky distribution (core-image-mi=
nimal) to deplkoy on the device.</p>
<p>However, the generated image is zImage format. Whereas it seems that uBo=
ot is expecting uImage.</p>
<p><br>
</p>
<p>1) How do we inform Yocto to generate uImage instead of zImage ?</p>
<p><br>
</p>
<p>2) Therefore, I have deleted the tmp/deploy directory.</p>
<p>But right now, I&#39;m unable to generate the distro again.</p>
<p>I tried many things:</p>
<p><br>
</p>
<p>bitbake -c clean core-image-minimal</p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">bitba=
ke -c cleanall core-image-minimal</span><br>
</p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><span=
 style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol=
&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">bitbake
 core-image-minimal</span><br>
</span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><span=
 style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol=
&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><br>
</span></span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><span=
 style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol=
&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">Everything
 fails.</span></span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><span=
 style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol=
&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><br>
</span></span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><span=
 style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol=
&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">Is
 there a way to get things working again or should generate everythingh fro=
m scratch again ?</span></span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><span=
 style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol=
&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><br>
</span></span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><span=
 style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol=
&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><br>
</span></span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"><span=
 style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol=
&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">Z.</span></sp=
an></p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">Mark, <a href=3D"=
mailto:maclark88@gmail.com" target=3D"_blank">maclark88@gmail.com</a><br><b=
r>Hooray for most things! ~ George Carlin </div>
</div>

--94eb2c06f33c0b2a6a053d196dd2--
