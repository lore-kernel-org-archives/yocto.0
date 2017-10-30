Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52E5EE00C45; Mon, 30 Oct 2017 16:02:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D17FE009B4
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 16:02:49 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id n137so30985287iod.6
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 16:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JCkDlAejPsJulmaCJcKl3rDpBAtb0NZoVwnTxpIzX6U=;
	b=vzYPzL3nN42E7AR2lIPq4OEc7YOmEm190YNX+Rx3Aqbj7lH82EjyYJ6R0P+OkRWBaX
	MTgjNL2l66IjNQqCZPKXhhtrRChZajj/GW3Hfo4oRJM7zTRBzLYBxtMwaHuSRatsj04/
	EpYkbNody19tdJyIWmx72Dz9+QzhA9CBgymFSKfANTEeaGsY20dfqClsRGo7la2mBtLL
	qDrG/b7suJsgVNjFFhlFetyiASKrcOBXZ2An5BB4ANxeUJbdVfa5BYgEJ8rMB5QDvJJm
	1e9Eblr+71tHpZRzMWzQL0KOMAzGqcXbnbg9U1y8otlxlmiiWA/qo1UbjcpSDX2tUNLh
	kdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JCkDlAejPsJulmaCJcKl3rDpBAtb0NZoVwnTxpIzX6U=;
	b=guw1kTypu/Ie1Dddd0xOxK7mL8aYM+uspKNmHzxJPXbylMSTrxtSt2eTKbDjukko1X
	N5HRqNHl0ZsJY1hE+0pdb/ul2KGFM4QxCqtLk+EMBxIBtETQcHc7V2b00JnbUJdUpVML
	x2v2Rf9YGBojJHqOWX88doCGpayiHQ6BnTWU4e+ZGlSGRyWrGkVGVuHsBzn0yfqfXttP
	lxSbs4DYpd9d8HUc8yLlmxSuxjOQCf3EL43di6Gyi49aVXjB0Nf3gXRdAEYDcIgjM0pd
	450dHy4pSwWqpBWvju6W2A7s+t4qf86n1+rp8FH6UYw5o9in+PHzHl6acxwly6i76nWr
	omHg==
X-Gm-Message-State: AMCzsaUZvohfyRT7WlESAg4z2t4bZrc+FZLAm8oqltmhiizdklvao7wF
	lSg1IjKv56polXJh4SEKUdeioO42sdRzMILhVaUOsQ==
X-Google-Smtp-Source: ABhQp+RXA6zKGd6vQ666voZ9F3bWjW88Cqn8s1JRBP0mKayv6zsh9KJ2kVU1vnOJBasnVCgO5gMjHdVCoNFkEfQEKUY=
X-Received: by 10.36.81.21 with SMTP id s21mr512800ita.144.1509404568537; Mon,
	30 Oct 2017 16:02:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Mon, 30 Oct 2017 16:02:27 -0700 (PDT)
In-Reply-To: <CAJWo1FLeiwm2pm4sfQf5g78bx-PXuuk1fm8N4obY+0BwyvOrng@mail.gmail.com>
References: <CAJWo1FLeiwm2pm4sfQf5g78bx-PXuuk1fm8N4obY+0BwyvOrng@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 30 Oct 2017 23:02:27 +0000
Message-ID: <CAJTo0LYJTKtzmaFCmaRF8w_M0DF78z8Qoxyr2YLKGp6Wsef7dQ@mail.gmail.com>
To: "Lai Y.C." <yclai017@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: about add python3 modules
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
X-List-Received-Date: Mon, 30 Oct 2017 23:02:50 -0000
Content-Type: multipart/alternative; boundary="001a113a7146217558055ccba357"

--001a113a7146217558055ccba357
Content-Type: text/plain; charset="UTF-8"

Hi,

1.7.1 is pretty old, there were some packaging problems.  Try adding
python3-misc to the image too.

If that doesn't work, use 'oe-pkgdata-util list-pkg-files -r python3' to
list all the files built by the python3 recipe and to find out what files
are missing.

Ross

On 30 October 2017 at 20:36, Lai Y.C. <yclai017@gmail.com> wrote:

> Hi,
>
> I need to include python3 and some modules on my board. We are using yocto
> 1.7.1 .
> I have included python3 and python3-modules into the image.
> Python3 is able to run but there are problems with the modules.
>
> 1. when I import "subprocess" module,  it gives errors that the module
> "_posixsubprocess" is not found. How should I include _posixsubprocess ?
> 2. There are couple of modules that are installed but they are found when
> I used it. i.e. I have the argparse.py in /usr/lib/python3.3. However, the
> module is not found when I try to import it. (tested with python3 -c
> "import argparse"). Any clue what hasn't be set-up properly?
>
> Thanks
>
> //Ying
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113a7146217558055ccba357
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>1.7.1 is pretty old, there were som=
e packaging problems.=C2=A0 Try adding python3-misc to the image too.</div>=
<div><br></div><div>If that doesn&#39;t work, use &#39;oe-pkgdata-util list=
-pkg-files -r python3&#39; to list all the files built by the python3 recip=
e and to find out what files are missing.</div><div><br></div><div>Ross</di=
v></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 30 Oct=
ober 2017 at 20:36, Lai Y.C. <span dir=3D"ltr">&lt;<a href=3D"mailto:yclai0=
17@gmail.com" target=3D"_blank">yclai017@gmail.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div><=
div><div>Hi, <br><br></div>I need to include python3 and some modules on my=
 board. We are using yocto 1.7.1 . <br></div>I have included python3 and py=
thon3-modules into the image. <br></div><div>Python3 is able to run but the=
re are problems with the modules. <br></div><div><br></div>1. when I import=
 &quot;subprocess&quot; module,=C2=A0 it gives errors that the module &quot=
;_posixsubprocess&quot; is not found. How should I include _posixsubprocess=
 ?<br></div>2. There are couple of modules that are installed but they are =
found when I used it. i.e. I have the argparse.py in /usr/lib/python3.3. Ho=
wever, the module is not found when I try to import it. (tested with python=
3 -c &quot;import argparse&quot;). Any clue what hasn&#39;t be set-up prope=
rly?<br></div><br></div>Thanks<br><br></div><div><div><div><div>//Ying<br><=
/div><div><br></div></div></div></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113a7146217558055ccba357--
