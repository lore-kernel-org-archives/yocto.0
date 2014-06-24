Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A11F7E003D2; Tue, 24 Jun 2014 02:45:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.170 listed in list.dnswl.org]
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDD80E00282
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 02:45:18 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id uz6so32854obc.1
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 02:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dwKavqP3jUCPz7NTNG15NPXfTfZmNy0uJrxrnOpCaMI=;
	b=G6OXnpKfLveDh6O/wiAjWDE/8/gni4gRtYM2BGnVyL+O/i/6MG0Uqex2fBzV92FB9p
	dKJ7no9kZAvKxFx8A7GTv4gu32sM6DK9YONFqlg3towyNErD5xA3WeYrlTgKhx8lRG2C
	tk4WB608+ZwiyhAq/c4/6sl8Wd91EflHfm3i3N0WOd++FrSXUf7uXaS42dtVnE9MX6kn
	/NtlkiI8uc25mwMUSqBITPzABbyFolUUrDD31MZ529opuCGzZYsIYo4SP+wYhE3oU1NN
	hofzeJ5j2g9roBy1OkTw+YenAVXKfVHWEx5bOteumIuI3OiEWqIyObLgODxESSoJGy/b
	E8WA==
MIME-Version: 1.0
X-Received: by 10.60.173.146 with SMTP id bk18mr131547oec.29.1403603117525;
	Tue, 24 Jun 2014 02:45:17 -0700 (PDT)
Received: by 10.202.188.134 with HTTP; Tue, 24 Jun 2014 02:45:17 -0700 (PDT)
In-Reply-To: <CAF_dkJActcO2Yje0EAN7bO2zaPKP9DZA9D1pqCwp3oJbA8-cFw@mail.gmail.com>
References: <CAF_dkJActcO2Yje0EAN7bO2zaPKP9DZA9D1pqCwp3oJbA8-cFw@mail.gmail.com>
Date: Tue, 24 Jun 2014 15:15:17 +0530
Message-ID: <CAE_REAtP18PYsXuz_X0bBRvHS5si+G+Y17sb5_kx_gnD1TMn6w@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the simplest, or better yet, canonical way to add a shell script to core-image-minimal?
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
X-List-Received-Date: Tue, 24 Jun 2014 09:45:26 -0000
Content-Type: multipart/alternative; boundary=089e011777d939cea304fc91d178

--089e011777d939cea304fc91d178
Content-Type: text/plain; charset=UTF-8

Do you want something like ROOTFS_POSTPROCESS_COMMAND ??

//Gaurang Shastri


On Mon, Jun 23, 2014 at 9:26 PM, Patrick Doyle <wpdster@gmail.com> wrote:

> Should I create a core-image-minimal.bbappend file with a SRC_URI
> pointing to my script and a do_install rule to install it?
>
> Is there a better way?
>
> --wpd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e011777d939cea304fc91d178
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Do you want something like=C2=A0<span style=3D"color:rgb(0=
,0,0);white-space:pre-wrap">ROOTFS_POSTPROCESS_COMMAND ??</span><div><span =
style=3D"color:rgb(0,0,0);white-space:pre-wrap"><br></span></div><div><span=
 style=3D"color:rgb(0,0,0);white-space:pre-wrap">//Gaurang Shastri</span></=
div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon,=
 Jun 23, 2014 at 9:26 PM, Patrick Doyle <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:wpdster@gmail.com" target=3D"_blank">wpdster@gmail.com</a>&gt;</span> =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Should I create a core-image-minimal.bbappen=
d file with a SRC_URI<br>
pointing to my script and a do_install rule to install it?<br>
<br>
Is there a better way?<br>
<br>
--wpd<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--089e011777d939cea304fc91d178--
