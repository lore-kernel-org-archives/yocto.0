Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3495E00B5E; Mon, 22 May 2017 11:06:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03C43E00812
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 11:06:45 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id d127so3271931wmf.0
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 11:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mUKSajpCjaWe4M9nlhQagZVvlJrj9x33W8x+WBJHCGo=;
	b=L1bYiIXEUTxK40B47wMFZmWzMkTEcvngAfb+mOd59zXszMUE08eF6f030vvsczfvax
	osUBayy7Svnd08qtqWQsqz3LRe39Xng9q/G0TGj54DimP4p1hZ1+4SeLhyfSrs7qN3hO
	aeJ0hXddKtv+gtQV6X3pwxqFhL91hWqt40V23Nj/EpznYMjueGUNC3g9kICWRASq9Po2
	f+9s3PuyteS2IUSGdVbQAGg8Eh9BynM+CNEUY62/bCztwFi2g+Ok593K2L7+vJxd2Ixc
	OFRTveHuwWGOIiENrLJlGD4iNoZSF0yRD1eSFqpIxsCyE5nGgafSclKIk0HHFoeEGYfx
	qQOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mUKSajpCjaWe4M9nlhQagZVvlJrj9x33W8x+WBJHCGo=;
	b=IWlX/EYvgIEWDFgZOSv47bpiiwr3XBAWKXjKZQ8LTwI2WcnF2/f0RhejvCfQoIe7w8
	B6EYH5YPQufHjP+nSBI54yOoCZs7jmvxYjlAq5V1Mhm7P+unPOQR7t/mtjA4RdTh2GhK
	AJSilpTHYnVWcJllNZdckWyWQe3vuLSdRDZKGQx0CfpDH0EBOQSDhLflvb8AdgIQBfNj
	EH/cYFi/yFRJXdlWKahx/M3hNOg0ZG9LdbntFe0zZY9Wq/0xeo9pYRYnDjEvQZQJAKiB
	5EKiPJYz3udBEMWUuS5r1dsNqr3m3+ZYoIbHj/fTsQbAWDjmrvXOevK2ypy4kSL0jZC0
	2iBg==
X-Gm-Message-State: AODbwcBlF0zRyXMJ8crl7ELxzmN7p3lEAJpoh7JKdT+87LHdlTD1wrvr
	CrF+6qMEOrGO//RZAGnuqUgxdEbdPw==
X-Received: by 10.28.87.16 with SMTP id l16mr1156036wmb.114.1495476404193;
	Mon, 22 May 2017 11:06:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.128.65 with HTTP; Mon, 22 May 2017 11:06:43 -0700 (PDT)
In-Reply-To: <AM4PR1001MB134744F1C0013F8A9355C0FDD7FB0@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
References: <370377A93E714B81A54709E200F398A6@PAULD>
	<13aa5982-027c-371f-b289-684d4d7f5e80@topic.nl>
	<65fdbdb4-4169-edba-47ae-5b8e089475b6@topic.nl>
	<C58C38DF-6141-4798-A175-D04CEE872012@sierrawireless.com>
	<AM4PR1001MB134744F1C0013F8A9355C0FDD7FB0@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Mon, 22 May 2017 13:06:43 -0500
Message-ID: <CAJdd5GaYTVq2ryDOA3TS94-xFn+zSpUAH7AJBtb2wRrQHG1oVA@mail.gmail.com>
To: bahjat khan <khanbahjat@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating a directory in a recipe
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
X-List-Received-Date: Mon, 22 May 2017 18:06:46 -0000
Content-Type: multipart/alternative; boundary="001a1144375ad792e0055020bb6d"

--001a1144375ad792e0055020bb6d
Content-Type: text/plain; charset="UTF-8"

On Sun, May 21, 2017 at 7:25 AM, bahjat khan <khanbahjat@hotmail.com> wrote:

> *do_install() {*
> *      install -d /test/*
>
> Should be: install -d ${D}/test/

>
> *    install -m 0777 bye.sh /test/*
>
> Should be: install -m 0777 bye.sh ${D}/test/

> *}*
>
> All of your install tasks need to install into the ${D} directory

See:
http://www.yoctoproject.org/docs/2.3/mega-manual/mega-manual.html#ref-tasks-install

--001a1144375ad792e0055020bb6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, May 21, 2017 at 7:25 AM, bahjat khan <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:khanbahjat@hotmail.com" target=3D"_blank">khanbahjat@hotmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_4720888377724662580divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif" d=
ir=3D"ltr">
<div style=3D"color:rgb(0,0,0)">
<div>
<blockquote type=3D"cite">
<div><i style=3D"font-size:12pt">do_install() {</i><br></div><div>
<div><i style=3D"font-size:12pt">=C2=A0<span class=3D"gmail-m_4720888377724=
662580Apple-tab-span" style=3D"white-space:pre-wrap">
</span>=C2=A0 =C2=A0 install -d /test/</i></div></div></blockquote></div></=
div></div></div></blockquote><div>Should be: install -d ${D}/test/=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
id=3D"gmail-m_4720888377724662580divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D=
"ltr"><div style=3D"color:rgb(0,0,0)"><div><blockquote type=3D"cite"><div><=
div><br>
</div>
<div><i><span class=3D"gmail-m_4720888377724662580Apple-tab-span" style=3D"=
white-space:pre-wrap"></span>=C2=A0 =C2=A0 install -m 0777 bye.sh /test/</i=
></div></div></blockquote></div></div></div></div></blockquote><div>Should =
be: install -m 0777 bye.sh ${D}/test/</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div id=3D"gmail-m_4720888377724662580di=
vtagdefaultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Ca=
libri,Arial,Helvetica,sans-serif" dir=3D"ltr"><div style=3D"color:rgb(0,0,0=
)"><div><blockquote type=3D"cite"><div>
<div><i>}</i></div></div></blockquote></div></div></div></div></blockquote>=
<div>All of your install tasks need to install into the ${D} directory</div=
><div><br></div><div>See: <a href=3D"http://www.yoctoproject.org/docs/2.3/m=
ega-manual/mega-manual.html#ref-tasks-install">http://www.yoctoproject.org/=
docs/2.3/mega-manual/mega-manual.html#ref-tasks-install</a></div><div>=C2=
=A0</div></div><br></div></div>

--001a1144375ad792e0055020bb6d--
