Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69B41E008DC; Mon, 20 Jul 2015 09:11:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F2D0E008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 09:11:39 -0700 (PDT)
Received: by qkdl129 with SMTP id l129so115113046qkd.0
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 09:11:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=sHSucyPxQsfW10UhZI52laSwhYBEthVgBhSnqSm4SnM=;
	b=b3CImdPxHR3umVP23R7vBWrirb5dezj966iDgnzVoJHoicLcYjRz6ekRcfnb/WKYb+
	MmK/aLm75Yv30FwiIu/X1pSjY9mT0561RcUd193gxaMr+37WbdBn5WKo/GgU24DfKesJ
	BQYIfm9B//Wv/NFhvxcBGuOaib47lt7DV2OS3P4CPe+qlIhoEOpI1Hr0Xs7oLjBa2uJL
	f2K+/nF9QqaGXNwYGZMOV+FIfFZqrOZaAV855G0nEt8Uycx/CTGjHHy0oygyDsnJtIOM
	9iS9s4JmqpaWqqvpvoDwIOOMW6QV+dz+Z89X5WSIxFuMs105GCVnJpWqfI03d/lRFSjf
	+yjg==
X-Gm-Message-State: ALoCoQnH3HUKt7fNHT+x9Qgdb+5fOl/au7Wbj85z8DpHbrdph4jkrq6vgaCvVnJGbtA72e5s8YGx
X-Received: by 10.141.28.211 with SMTP id f202mr43319448qhe.93.1437408699342; 
	Mon, 20 Jul 2015 09:11:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Mon, 20 Jul 2015 09:11:19 -0700 (PDT)
In-Reply-To: <55AD1D0E.1020402@mlbassoc.com>
References: <55AD13AC.3010802@mlbassoc.com>
	<CAJTo0LY=mS1xJ5kW-ogFNY=T60qpyWP0MofdTK4_XKckzh5mfg@mail.gmail.com>
	<55AD1D0E.1020402@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Jul 2015 17:11:19 +0100
Message-ID: <CAJTo0LZnu+XEHJZy3m2bZnzrbYmRXKJjmj1WO2NhHQTE+YNfiQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: New/unfamiliar messages
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
X-List-Received-Date: Mon, 20 Jul 2015 16:11:47 -0000
Content-Type: multipart/alternative; boundary=001a114218c6ec1199051b50ca0a

--001a114218c6ec1199051b50ca0a
Content-Type: text/plain; charset=UTF-8

On 20 July 2015 at 17:08, Gary Thomas <gary@mlbassoc.com> wrote:

> Is there a [simple] way to remove just the old/redundant trees?
>

Use rm_work? :)  I believe there is a rm_old_work in meta-oe which may be
what you're after.

Ross

--001a114218c6ec1199051b50ca0a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 July 2015 at 17:08, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":5bx" class=3D"a3s" style=
=3D"overflow:hidden">Is there a [simple] way to remove just the old/redunda=
nt trees?<div class=3D"yj6qo ajU"><div id=3D":5dt" class=3D"ajR" tabindex=
=3D"0"></div></div></div></blockquote></div><br>Use rm_work? :) =C2=A0I bel=
ieve there is a rm_old_work in meta-oe which may be what you&#39;re after.<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</=
div></div>

--001a114218c6ec1199051b50ca0a--
