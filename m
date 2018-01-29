Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB541E00DA9; Mon, 29 Jan 2018 06:16:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B3B0E00D91
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 06:16:48 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id p188so7743077ioe.12
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 06:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nnYdSsBQcrpmCwx35WV1CzqNB/IExPu6cx7b8rmR5O4=;
	b=jnWmvZK6GcWgzfBipVuGL1g2kvt8CFitmulKMyRPtAZ9DNnCI7+ghm5EcbrwX1K+w7
	/lxNjEGLH70mfensv8XzhJeZ1t4ljCHk9RroHQqtk0vTFA2DIrhYSclPXxHx82R5rHT5
	asLUno+s2+J5XJ6lWSbvHRdu4bdHWxDooyq1qsqTYiQBtjC38P57lI3ch5Atdy+VYF9P
	8FoB+Yfz9OHANBjQprw9iIRS84OkiXlDCySaq4W8cPqrXrQdsmMexLusXjdD99dg+53k
	i0sqkxDG0hyf8RixEysvJra9MPJ4II9AFFp3IW7h2hCCty84N78MQYKHEgIACB/jjvK1
	2ycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nnYdSsBQcrpmCwx35WV1CzqNB/IExPu6cx7b8rmR5O4=;
	b=U6ZepuDmK5vhcnEKh1nfDzTHeG1C3/nVrtx3N37OBNWPvN+Mj5a+MUjBsvxGMaxeqr
	Mekm5StKnuwnhJJ/7sTZLp9uGmRK07/4t84sirjX/KkpcurjIH7kLLqO3BdtAJbBEzVF
	i4/cPxpB1EH+ssc1BQAyUotB1YPmYU/mxtaODYljMTajSQuzoSe4H/ViRdv/FCHxtlb/
	jtul0DyUrLX3Mz7xiwZYQZHF4kA+w2pYDi1+yxdOwHzlS8CUIFlCx+hqKl/VSyLGfjSq
	cXLSCYVBDsBGas1XauwrxL92z3RazeqohS3wpRiWwucz0E2oipoEvpTWe2u6xZ6lKlrK
	mglg==
X-Gm-Message-State: AKwxytd6WO5zTig9P/3k33Bxg2eEPOxwFVlEPZJslAumByfvYCk/CY4b
	XE1JnlGq5G99bNZIkNfHfOTA+eFSLTPve1c2911CIQ==
X-Google-Smtp-Source: AH8x2259Pr41cuacacTkQVI88soqxC+W91GwpH/W3DOqz5QN8y94JPgYHev08cHJzhA5zh6It1NTMBjrlmvLfi5J4bE=
X-Received: by 10.107.133.75 with SMTP id h72mr25535410iod.227.1517235408662; 
	Mon, 29 Jan 2018 06:16:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Mon, 29 Jan 2018 06:16:28 -0800 (PST)
In-Reply-To: <CAGAf8Lw-YP-bH21WzYZToSksoqbxGHBHmmN2c9a2rKdqJSQNXg@mail.gmail.com>
References: <45db0f72-d93f-ebbd-83aa-80ceaeabc083@gmail.com>
	<CAGAf8LyPoW5XORJ=uCBOVT8S2zWvQW6wkzU7yctKwR26We=aGA@mail.gmail.com>
	<CAJTo0LZqeXy9FPJwi19T6f9haWKHj3nVS6dRnfhMje1KAaD5-g@mail.gmail.com>
	<CAGAf8Lw-YP-bH21WzYZToSksoqbxGHBHmmN2c9a2rKdqJSQNXg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Jan 2018 14:16:28 +0000
Message-ID: <CAJTo0LYhnutWhSJchcCkqTTf9HtCuyD3-JqPfdjpYYbjNcZ2vw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFT] Glibc 2.27
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
X-List-Received-Date: Mon, 29 Jan 2018 14:16:49 -0000
Content-Type: multipart/alternative; boundary="001a113ec5e4930a8d0563eae52c"

--001a113ec5e4930a8d0563eae52c
Content-Type: text/plain; charset="UTF-8"

On 29 January 2018 at 13:56, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > Khem Raj writes: This has gotten limited testing.
> > Burton Ross writes: This one will be easy to integrate.
>
> Time Will Tell.
>

I guess I meant easy in that it just won't be going to stable releases.
Obviously integration of a new C runtime release into master is never
objectively easy.

Ross

--001a113ec5e4930a8d0563eae52c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 29 January 2018 at 13:56, Zoran Stojsavljevic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bl=
ank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<br><div class=3D"g=
mail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">&gt; =
Khem Raj writes: This has gotten limited testing.<br>
&gt; Burton Ross writes: This one will be easy to integrate.<br>
<br>
Time Will Tell.<br></blockquote><div><br></div><div>I guess I meant easy in=
 that it just won&#39;t be going to stable releases.=C2=A0 Obviously integr=
ation of a new C runtime release into master is never objectively easy.</di=
v><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a113ec5e4930a8d0563eae52c--
