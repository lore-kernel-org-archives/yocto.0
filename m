Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D58AE00C55; Mon, 23 May 2016 02:59:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC47E00C55
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 02:59:09 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id z123so22199801itg.0
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 02:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fJgJ8aynqNAm2OO9WO8VRFpCx6kfEQj4A4CPNT6R4cs=;
	b=wh9rTokaducVzg9bcZDVrTCqZvD5E7DbsWtPMo1rFDavV9oEoGsEZhbx8ge+zjbiJP
	35lAe8h9EWnM3Qqt62h/ds1irKVIOEZJsNH2sbCkN/82V90DUqvaWMA/D9X/u3FbjkMe
	c678cbf4tOfLxil8IWiXa8lwwXEH1F1IvPDIkryHFQaX3drVmikWs8/3ZOxvZIT3VZuN
	yoad/WFltYGTaXVnxbZysdSVYeLOIcYH+TeB3vgijvk72gIeVGxsSZ2MC4NG62TCr9ua
	1+vUtnyOMaJXJkWdVBZ3wKoiRvtIJ/Obe78MPyg9JEtMzSJn8Z/CDCG//PfyvVgtEUOw
	Z6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fJgJ8aynqNAm2OO9WO8VRFpCx6kfEQj4A4CPNT6R4cs=;
	b=OEErPWfYglDe6n12PRIYJ9Yl1c+RQmS/qLa4j4VvYn2s6nM9ZeXZQRZVrUk49fethN
	1f0wIy/o8tb6dbXHxNmdtyXEl/VRQXjzyjOI+7lD0wk0JO1JM1LvGWzPKBlmdoy1Ndmd
	CVaQP/4rfUq4rCF292iMrolXbFILObuXnSF1ztqgmcw12oXigjABBK+LCCKWdYfxytwK
	MUEBATuqp5ykKlIqHv/wdwDZYQl/ZFf54fWWHfxYHUwdufi/xRnmw2G3vTkQC59tIBcd
	thTDACitKBDrY5XmcT6t78VUkZGbYxrW/N5Wift57doToWVAi0tqFkq/XfHSf/PEPyAV
	VdcQ==
X-Gm-Message-State: ALyK8tKd13vAkOydQBxB1Ce3SAQHaxoOUMrQxDcIoqIDMmqdEQn+fNq0fW/0dbcoCfDAv1bBJRWs6aaPHB9HdODk
X-Received: by 10.36.217.79 with SMTP id p76mr3683699itg.38.1463997548207;
	Mon, 23 May 2016 02:59:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Mon, 23 May 2016 02:58:48 -0700 (PDT)
In-Reply-To: <01f801d1b447$f1654a80$d42fdf80$@tekmagic.net>
References: <01f801d1b447$f1654a80$d42fdf80$@tekmagic.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 May 2016 10:58:48 +0100
Message-ID: <CAJTo0LapbXmukXr2d2kyWqEMDQ7MLUyuYmRsTUhE1oaoD0iqHg@mail.gmail.com>
To: "gerard.b@tekmagic.net" <gerard.b@tekmagic.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [linux-yocto] How to resolve ERROR: ...../poky/meta/recipes-support/libsoup/libsoup-2.4_2.54.1.bb, do_compile) failed with exit code '1'
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
X-List-Received-Date: Mon, 23 May 2016 09:59:15 -0000
Content-Type: multipart/alternative; boundary=001a1145ed9ed0391e05337f7d2a

--001a1145ed9ed0391e05337f7d2a
Content-Type: text/plain; charset=UTF-8

On 22 May 2016 at 17:35, Gerard Bucas <gerard.b@tekmagic.net> wrote:

> I am trying to bitbake core-image-sato with Chromium (as per
> https://github.com/ds-hwang/wiki/wiki/build-chromium-on-yocto )
>
> BUT I keep getting a build error on libsoup (using master). Can't seem to
> resolve it.
>

Hi Gerard,

Theres no error in that snippet, can you pastebin the entire log.do_compile
file?

Ross

--001a1145ed9ed0391e05337f7d2a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 May 2016 at 17:35, Gerard Bucas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gerard.b@tekmagic.net" target=3D"_blank">gerard.b@tekmagic.net</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><div id=3D":eqs" class=3D"">I am trying to=
 bitbake core-image-sato with Chromium (as per<br>
<a href=3D"https://github.com/ds-hwang/wiki/wiki/build-chromium-on-yocto" r=
el=3D"noreferrer" target=3D"_blank">https://github.com/ds-hwang/wiki/wiki/b=
uild-chromium-on-yocto</a> )<br>
<br>
BUT I keep getting a build error on libsoup (using master). Can&#39;t seem =
to<br>
resolve it.<br></div></blockquote></div><div class=3D"gmail_extra"><br></di=
v>Hi Gerard,<div><br></div><div>Theres no error in that snippet, can you pa=
stebin the entire log.do_compile file?<div><br></div><div>Ross</div></div><=
br></div></div>

--001a1145ed9ed0391e05337f7d2a--
