Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01F73E008F3; Sun, 26 Oct 2014 13:23:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.52 listed in list.dnswl.org]
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB3D8E0084A
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 13:23:22 -0700 (PDT)
Received: by mail-qa0-f52.google.com with SMTP id u7so648080qaz.39
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 13:23:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=j2Ol+H0QuU5WlJKY2Vm3BhZCtcJWnO6LLKhoKzajRnY=;
	b=FThrk8TdMFJjlXKnNqPjTG04cKhDsdExGoWWQTuatxAyHBbRWBjs+WY2DiDL46+G6e
	MV46cpv3YwlrzR/kbXWQ9wvLGG1/fXcIee+d/JEEQrROWk0PIYL9YE6ClvkkUqqbxexM
	rHAKA32eJW4+9B5vqi3rrcnUCWmGt+2CmJzG1O8S2oRhsX05WwIVgddHYJ0koYXNRoN+
	AY41eOg+7VuNpd/dPiC+k2Uvm1GhWw4NNyNpqHC6Rbjd3E1T/Rn7gSfLwGwMDg7Cs64+
	Na0r8wAjGd64Exg+/yltTb0TicINUkMzoSuoRl+7Y1pZmaZ4I3Quk56+uIVQ7N49GQZa
	xNXA==
X-Gm-Message-State: ALoCoQn/BqHLuQNk6cXFxW0eGYrajicNK2fXombntKxeznS+olCj0Ls8uXbiv+OipZ9a6xX6NxPA
X-Received: by 10.140.94.246 with SMTP id g109mr3389878qge.77.1414355001501;
	Sun, 26 Oct 2014 13:23:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.92.179 with HTTP; Sun, 26 Oct 2014 13:23:01 -0700 (PDT)
In-Reply-To: <30C2D590D16A5C46ADFE65219103779841147C0F@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779841147C0F@AZ-US1EXMB03.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 26 Oct 2014 20:23:01 +0000
Message-ID: <CAJTo0LYQnpxaeUtoxmDzrOPfHA8ZOFGBv_++dDwNeERiDdmzQg@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: "File exists" exception when IMAGE_LINK_NAME is empty ("")
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
X-List-Received-Date: Sun, 26 Oct 2014 20:23:28 -0000
Content-Type: multipart/alternative; boundary=001a113a81d67380c60506592fb6

--001a113a81d67380c60506592fb6
Content-Type: text/plain; charset=UTF-8

On 25 October 2014 22:12, Vuille, Martin (Martin) <vmartin@avaya.com> wrote:

> Personally, I feel the correct behavior would be to not create the
> symlinks when IMAGE_LINK_NAME is the empty string.
>

Seems reasonable, can you send a patch?

Ross

--001a113a81d67380c60506592fb6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 October 2014 22:12, Vuille, Martin (Martin) <span dir=3D"ltr">&lt;<a =
href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4af" class=
=3D"a3s" style=3D"overflow:hidden">Personally, I feel the correct behavior =
would be to not create the<br>
symlinks when IMAGE_LINK_NAME is the empty string.</div></blockquote></div>=
<br>Seems reasonable, can you send a patch?</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113a81d67380c60506592fb6--
