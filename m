Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EA32E0086F; Mon,  2 Feb 2015 07:21:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAD6BE00809
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 07:21:47 -0800 (PST)
Received: by mail-qc0-f173.google.com with SMTP id m20so30380600qcx.4
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 07:21:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4HleotrZwx3ZY6dQkGflKZDwhGLA9AZsvtMzzCkxIC8=;
	b=mfEnk5koFQT/A3HpiB1CkHCcOViExORZ3yUvd26NzHKpCT4weZqYhzCYXh9dujpi7D
	gBhQotulH+5DhGuEY0TD7oFgiOVWqwx/gXze1ZBJYS8xoSglHT07Yp91tOcuBEdTQZnD
	mRP5eehboM8H4/ydZ2B++KcQHbD3TMw1dUzUpxjDGbAbv/LdHFLx5xkdp+x4Fv7EJz1M
	GRNEo1uazBVzJhIUOKRChy+EcS9etmYLU/8xnAJS3jTcUX9NE4z5c2bDglfiL0udEwAk
	OGJ1EIwE8z7jGGGQgxfqqMRmw0Uy6KXZOdv7mWStFOxJEeoR6McOk/E3sOTF30WXYxT4
	AFuA==
X-Gm-Message-State: ALoCoQkOpkLGHgzQW9q2IJ4OV7vz4TJDGwgmaYM+4sfC+6zqT4PJymvc5EaX+V1TmoQ/cKvDWU6E
X-Received: by 10.140.92.138 with SMTP id b10mr39986410qge.59.1422890506916;
	Mon, 02 Feb 2015 07:21:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Mon, 2 Feb 2015 07:21:26 -0800 (PST)
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E74429D@UT40SVCWEM001.atk.com>
References: <7B6FE55CD594D7478CED8A39DF3BFC0A5E74429D@UT40SVCWEM001.atk.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Feb 2015 15:21:26 +0000
Message-ID: <CAJTo0La6u6w7mK3wLNZ4N+w2S-0rQmxP6HJceJr=bkUWq1-quA@mail.gmail.com>
To: "Moore, Thomas (FtWorth)" <Thomas.Moore2@atk.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: COMPATIBLE_HOST
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
X-List-Received-Date: Mon, 02 Feb 2015 15:21:58 -0000
Content-Type: multipart/alternative; boundary=001a113a5d5e387845050e1c83c1

--001a113a5d5e387845050e1c83c1
Content-Type: text/plain; charset=UTF-8

Hi Thomas,

On 2 February 2015 at 15:17, Moore, Thomas (FtWorth) <Thomas.Moore2@atk.com>
wrote:

> I have a binary recipe that is only compatible with x86 and x86_64
> systems. I *think* specifying the COMPATIBLE_HOST in my recipe would be a
> good idea. However, I've been unable to find any documentation, or even a
> good description, of this variable. Can someone help me out here?
>

The manual has a section in the glossary:

http://www.yoctoproject.org/docs/1.7.1/mega-manual/mega-manual.html#var-COMPATIBLE_HOST

And yes, this is the idiom.  Lots of meta-intel for example uses
COMPATIBLE_HOST = '(i.86|x86_64).*-linux'.

Ross

--001a113a5d5e387845050e1c83c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Hi T=
homas,</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote"=
>On 2 February 2015 at 15:17, Moore, Thomas (FtWorth) <span dir=3D"ltr">&lt=
;<a href=3D"mailto:Thomas.Moore2@atk.com" target=3D"_blank">Thomas.Moore2@a=
tk.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,20=
4,204);border-left-style:solid;padding-left:1ex">I have a binary recipe tha=
t is only compatible with x86 and x86_64 systems. I *think* specifying the =
COMPATIBLE_HOST in my recipe would be a good idea. However, I&#39;ve been u=
nable to find any documentation, or even a good description, of this variab=
le. Can someone help me out here?<br></blockquote><div><br></div><div>The m=
anual has a section in the glossary:</div><div><br></div><div><a href=3D"ht=
tp://www.yoctoproject.org/docs/1.7.1/mega-manual/mega-manual.html#var-COMPA=
TIBLE_HOST">http://www.yoctoproject.org/docs/1.7.1/mega-manual/mega-manual.=
html#var-COMPATIBLE_HOST</a></div><div><br></div><div>And yes, this is the =
idiom.=C2=A0 Lots of meta-intel for example uses COMPATIBLE_HOST =3D &#39;(=
i.86|x86_64).*-linux&#39;.</div><div><br></div><div>Ross=C2=A0</div></div><=
br></div></div>

--001a113a5d5e387845050e1c83c1--
