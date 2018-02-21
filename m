Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77AAAE00EE3; Tue, 20 Feb 2018 23:34:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBDBAE00CF1
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 23:34:13 -0800 (PST)
Received: by mail-qt0-f179.google.com with SMTP id d8so830987qtm.0
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 23:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/Z799cXPuk+dWKXo7M3l0eoEZ4JQNUMGuUNbwzyS5mQ=;
	b=rX/29PWF1sO9OQFT3FMauOCANVpRzn7yjT+1fkGWECSPWF6PleOkmcpANZ27WYU2cP
	KAGQLvGG3QDaZR+mAdR9VpKLG6wsfuaKRooPO7WJYf5zDxmnMK9QHyHd6eCug5CFJGNc
	xqBzmIBRLx9Of9CWgyF24ZCMNqzwZdEusR4zvuVQCytwUCRhZOWkVOJ3sHzBPlK9R1yD
	XBzWchVAir6Jn9wfmfwhLbc3+A9l3hQPeSNSYJ9YTqqgMW9TwXJSet1vy1FAiFDjiiVZ
	TX0Nr4F3oEmS9k+ZVQSVJBM5z/TEH4TIREoEyuzHlDyWau7oKBAy/317dqZjUWlEOgfU
	6SdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/Z799cXPuk+dWKXo7M3l0eoEZ4JQNUMGuUNbwzyS5mQ=;
	b=lDMjKq7aFBoAVCQ+3/jAGZjuUnWwWn0dzNrdrWqmseqfRM5g8Q1ddOzsmhAaSzTRIw
	3f2LotV2ZoQXH8on6fxYOgBfn4AR0N8KGstVYAHih0tTzJpjc3mc957IOCqqMVWs2Ye3
	ET3cRToW8ak1K30by0bnwOHmB05R5wwsbmVdnuxaHbvGCGdE6nabWD7BhqH9xvaWMDlH
	/gqXx3D0icuv8BBrDZ/ur+UVKLA+ePllgb/65XGQE67bhGGcqZQtzCSoDdNZ38ihUsQG
	uvlEr4x4PREYKVshdDsw//aURFefZYfwW9B9hsMoZ0xYXq7ONBlCV0ZFqSdZ+Oh00M9N
	mHNg==
X-Gm-Message-State: APf1xPCPi29fH1rgtf2DWP3jetEhLnOJD+PJX/RtPQh1lhfbF10pXanZ
	S/TiW+1kRUEjNnib3hWEv0X/QojpWlOJde3nGXw=
X-Google-Smtp-Source: AH8x224qYevXD+j8fAZvIWQMKPnAqtdyjytaMBNq8o/8b7oQuy2n6uUDE+9SxqhlM5rT7arOsgqOzcTvw/kn5vKBFB0=
X-Received: by 10.200.52.41 with SMTP id u38mr3848641qtb.172.1519198452743;
	Tue, 20 Feb 2018 23:34:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.130.66 with HTTP; Tue, 20 Feb 2018 23:34:12 -0800 (PST)
In-Reply-To: <f23012dc-3a08-ff2e-55a5-1b900ee3bf71@intel.com>
References: <CAGAf8LzVXn02A=USYyg6sA00Lew1c-+9SD0WzjSB-0q5KL6b+g@mail.gmail.com>
	<f23012dc-3a08-ff2e-55a5-1b900ee3bf71@intel.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 21 Feb 2018 08:34:12 +0100
Message-ID: <CAGAf8Ly6h21keLFCpEz_S6mO6OtzG4TSb-HG=fy1XYMHbwOyyg@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Small documentation issue
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
X-List-Received-Date: Wed, 21 Feb 2018 07:34:14 -0000
Content-Type: multipart/alternative; boundary="001a114778761e82320565b3f474"

--001a114778761e82320565b3f474
Content-Type: text/plain; charset="UTF-8"

Sorry, Anuj, I did not reply to you in the same email. :-(

I'll look into the pointers you have sent to me, but over the weekend (I am
very busy over the week).

Thank you,
Zoran
_______

On Wed, Feb 21, 2018 at 3:09 AM, Anuj Mittal <anuj.mittal@intel.com> wrote:

> On 02/20/2018 02:33 PM, Zoran Stojsavljevic wrote:
> > Hello,
> >
> > Just to point to the documentation issue on YOCTO Projects wiki page:
> > https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_
> change_the_root_password
> >
> > This line:
> > inherit extrausers
> >
> > Should be changed as:
> > INHERIT += "extrausers"
>
> This shows how to do it from a recipe. For a more up-to-date documentation:
>
> https://www.yoctoproject.org/docs/latest/ref-manual/ref-
> manual.html#ref-classes-extrausers
>
> INHERIT is used in a configuration file.
>
> http://www.yoctoproject.org/docs/2.5/bitbake-user-manual/
> bitbake-user-manual.html#inherit-configuration-directive
>
> "inherit" on the other hand is used in a recipe or class.
>
> http://www.yoctoproject.org/docs/2.5/bitbake-user-manual/
> bitbake-user-manual.html#inherit-directive
>
> Thanks,
> Anuj
>

--001a114778761e82320565b3f474
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Sorry, Anuj, I did not reply to you in the =
same email. :-(<br><br></div>I&#39;ll look into the pointers you have sent =
to me, but over the weekend (I am very busy over the week).<br><br></div>Th=
ank you,<br></div>Zoran<br>_______<br></div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Wed, Feb 21, 2018 at 3:09 AM, Anuj Mittal <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:anuj.mittal@intel.com" target=3D"_blan=
k">anuj.mittal@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><span class=3D"">On 02/20/2018 02:33 PM, Zoran Stojsavljevic wrote:<b=
r>
&gt; Hello,<br>
&gt;<br>
&gt; Just to point to the documentation issue on YOCTO Projects wiki page:<=
br>
&gt; <a href=3D"https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_chan=
ge_the_root_password" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoc=
toproject.org/<wbr>wiki/FAQ:How_do_I_set_or_<wbr>change_the_root_password</=
a><br>
&gt;<br>
&gt; This line:<br>
&gt; inherit extrausers<br>
&gt;<br>
&gt; Should be changed as:<br>
&gt; INHERIT +=3D &quot;extrausers&quot;<br>
<br>
</span>This shows how to do it from a recipe. For a more up-to-date documen=
tation:<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.h=
tml#ref-classes-extrausers" rel=3D"noreferrer" target=3D"_blank">https://ww=
w.yoctoproject.org/<wbr>docs/latest/ref-manual/ref-<wbr>manual.html#ref-cla=
sses-<wbr>extrausers</a><br>
<br>
INHERIT is used in a configuration file.<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/2.5/bitbake-user-manual/bitbake=
-user-manual.html#inherit-configuration-directive" rel=3D"noreferrer" targe=
t=3D"_blank">http://www.yoctoproject.org/<wbr>docs/2.5/bitbake-user-manual/=
<wbr>bitbake-user-manual.html#<wbr>inherit-configuration-<wbr>directive</a>=
<br>
<br>
&quot;inherit&quot; on the other hand is used in a recipe or class.<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/2.5/bitbake-user-manual/bitbake=
-user-manual.html#inherit-directive" rel=3D"noreferrer" target=3D"_blank">h=
ttp://www.yoctoproject.org/<wbr>docs/2.5/bitbake-user-manual/<wbr>bitbake-u=
ser-manual.html#<wbr>inherit-directive</a><br>
<br>
Thanks,<br>
Anuj<br>
</blockquote></div><br></div>

--001a114778761e82320565b3f474--
