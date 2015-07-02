Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12569E00AAA; Thu,  2 Jul 2015 03:01:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03CD8E00A7E
	for <yocto@yoctoproject.org>; Thu,  2 Jul 2015 03:01:28 -0700 (PDT)
Received: by qgat90 with SMTP id t90so11538414qga.0
	for <yocto@yoctoproject.org>; Thu, 02 Jul 2015 03:01:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=thEXU8r2OlOF+5WuFAGo/c07E63zCDxjySjgwhuyPpY=;
	b=Qt9zpTVGE0+VN58oYO/x/ABfBtEvkpfzs59GSD3eooCpVGnB2WGuYID0ZXZqMivN0b
	LuYMxN3tyC29NdCia1p6Af+WeXFjTJB7q+Oes470Cug18ZsySnteIu7Uf4qDnSvtIenK
	kMD4rKsLlnSbta23h3gu8gQzqFyxSNKHqf65ydwhtIl3XQG0WLblysfOljWhTsE1OduT
	RjwaY72kdO/CDEuR6fYi5yPbUQSYfIYLhityIgOiOTRGyzJQFKXrriO3qgD3af1B6nC8
	R2P88803lsf0BhOhoxsfnBNFQ9awWK58/PJizxyOxWNQjqrSS5oKBrciP5scemz/Mk81
	l37g==
X-Gm-Message-State: ALoCoQmSQbldgKJoQBpQED0Bzj/ZwU3SKQ+29QhblDsTrc0QX+5e9N9wxa0subx0JtynEAJR4B4Z
X-Received: by 10.140.133.199 with SMTP id 190mr43032185qhf.17.1435831288105; 
	Thu, 02 Jul 2015 03:01:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 2 Jul 2015 03:01:08 -0700 (PDT)
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40227C1CB9D50@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40227C1CB9D50@IR-CENTRAL.corp.innerrange.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Jul 2015 11:01:08 +0100
Message-ID: <CAJTo0LY_EZhTefsh7UO6aO0NAMwrnktv5sh1dBydaYgOc7XfzQ@mail.gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Making /etc/os-release loadable by shell script
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
X-List-Received-Date: Thu, 02 Jul 2015 10:01:32 -0000
Content-Type: multipart/alternative; boundary=001a11353390e2a2fe0519e18590

--001a11353390e2a2fe0519e18590
Content-Type: text/plain; charset=UTF-8

On 2 July 2015 at 09:00, Craig McQueen <craig.mcqueen@innerrange.com> wrote:

> It would be good if the /etc/os-release file (created by the core
> os-release package) could be loadable by a shell script. That is, a shell
> script can do:
>
>     source /etc/os-release
> or
>     . /etc/os-release
>
> But it's currently not possible, because the file lacks double-quotes
> around values that would make it valid shell assignment syntax.


Could you transform you bbappend to a patch against oe-core and submit it?

Ross

--001a11353390e2a2fe0519e18590
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 2 July 2015 at 09:00, Craig McQueen <span dir=3D"ltr">&=
lt;<a href=3D"mailto:craig.mcqueen@innerrange.com" target=3D"_blank">craig.=
mcqueen@innerrange.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra">=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">It would be good =
if the /etc/os-release file (created by the core os-release package) could =
be loadable by a shell script. That is, a shell script can do:<br>
<br>
=C2=A0 =C2=A0 source /etc/os-release<br>
or<br>
=C2=A0 =C2=A0 . /etc/os-release<br>
<br>
But it&#39;s currently not possible, because the file lacks double-quotes a=
round values that would make it valid shell assignment syntax.</blockquote>=
<div><br></div><div>Could you transform you bbappend to a patch against oe-=
core and submit it?</div><div><br></div><div>Ross</div></div></div></div>

--001a11353390e2a2fe0519e18590--
