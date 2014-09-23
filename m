Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6C8EE00873; Mon, 22 Sep 2014 19:52:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og111.obsmtp.com (exprod8og111.obsmtp.com [64.18.3.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D45DE0086F
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 19:52:44 -0700 (PDT)
Received: from mail-we0-f181.google.com ([74.125.82.181]) (using TLSv1) by
	exprod8ob111.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCDgfHvFuSrN18PRt5YEADvWqz0pFllP@postini.com;
	Mon, 22 Sep 2014 19:52:53 PDT
Received: by mail-we0-f181.google.com with SMTP id w61so2009598wes.12
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 19:52:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=a22IudXvQwyH5Hdk4RbVAHKyMEo8uxJuX69zVLLh5Sc=;
	b=nDaBQaxKupzSqDDyvfpVTg1fyl4Jogmqmal8ZlYsuhHj2E/C4dqI32xvVa4KuRs8E5
	uk5IdHlcarFo/qcT34pMvnRh5b4L135HXVuG9/zpzEF8JOB84sNhjqftOFGnnCnwlhjH
	jc1J5Pr7idHJs1jOid2vvfJUoDOoAI5mWw4Pv1Ew+YLF37Hl7wi9nIXdHRq6KtPZymOG
	m96slZgagNAiUkGaRJDkDGK5fJFMQo8FFreMJKA+n0qEiG6Jo3Shndzpc9eZ0F+R2e6z
	ws64ZXmjDNn4f0hiNZGmwJwxqPj+q251JgH05nS5Uw8ejt3H8QI5VnQMBu7l8LtcVED+
	vESQ==
X-Gm-Message-State: ALoCoQm0LacZ8hHBiqUg6SB1zVDlgxd5eHFNylwjwft41BaVeZR+rNnTQ901ZKTq95LP2TlaswhX06LvNKD+4lAwKzgI8uMXG77i516uy5pMmEw4mhMjkbAPLcM6kKBenvW38iAemw0UtuEEBsZCIKGWb5KmQF31bQ==
X-Received: by 10.194.80.71 with SMTP id p7mr17824802wjx.35.1411440763278;
	Mon, 22 Sep 2014 19:52:43 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.194.80.71 with SMTP id p7mr17824793wjx.35.1411440763216;
	Mon, 22 Sep 2014 19:52:43 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Mon, 22 Sep 2014 19:52:43 -0700 (PDT)
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
Date: Tue, 23 Sep 2014 10:52:43 +0800
Message-ID: <CAJrRHk5wwXTHq0G3vDjp_=MKB6COWBBGd2JG9+_r-q-3yU3jrQ@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include static library and headers in sdk
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
X-List-Received-Date: Tue, 23 Sep 2014 02:52:54 -0000
Content-Type: multipart/alternative; boundary=047d7bb04da250324f0503b2a91b

--047d7bb04da250324f0503b2a91b
Content-Type: text/plain; charset=UTF-8

Good day Matt,

You need to explicitly RDEPENDS your-unit-staticdev and your-unit in your
image's packagegroup. Assuming, your FILES_${PN}-staticdev is your .a and
FILES_${PN} contains your headers.

Thanks,
Joseph

On Tue, Sep 23, 2014 at 9:57 AM, Matt Schuckmann <Matt.Schuckmann@planar.com
> wrote:

> I've got a custom image and 2 custom recipes both very simple libraries
> that use cmake.
> I included the libraries into my image by adding
> EXTRA_IMAGEDEPENDS += "simple1"
> EXTRA_IMAGEDEPENDS += "simple2"
> To my image recipe.
>
> When I build my image (i.e. bitbake custom-image ) I can see that the
> library header files and .a files are placed in the correct place in the
> sysroot directory.
>
> However when I try to create an sdk (i.e. bitbake custom-image -c
> populate_sdk) and then install the SDK the headers and .a files are nowhere
> to be found in the installed sysroot.
>
> What am I missing?
>
> Thanks,
> Matt S.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bb04da250324f0503b2a91b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Good day Matt,</div><div><br></div>You need to explic=
itly RDEPENDS your-unit-staticdev and your-unit in your image&#39;s package=
group. Assuming, your FILES_${PN}-staticdev is your .a and FILES_${PN} cont=
ains your headers.<div><br></div><div>Thanks,</div><div>Joseph</div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 23, 20=
14 at 9:57 AM, Matt Schuckmann <span dir=3D"ltr">&lt;<a href=3D"mailto:Matt=
.Schuckmann@planar.com" target=3D"_blank">Matt.Schuckmann@planar.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;ve got a custom ima=
ge and 2 custom recipes both very simple libraries that use cmake.<br>
I included the libraries into my image by adding<br>
EXTRA_IMAGEDEPENDS +=3D &quot;simple1&quot;<br>
EXTRA_IMAGEDEPENDS +=3D &quot;simple2&quot;<br>
To my image recipe.<br>
<br>
When I build my image (i.e. bitbake custom-image ) I can see that the libra=
ry header files and .a files are placed in the correct place in the sysroot=
 directory.<br>
<br>
However when I try to create an sdk (i.e. bitbake custom-image -c populate_=
sdk) and then install the SDK the headers and .a files are nowhere to be fo=
und in the installed sysroot.<br>
<br>
What am I missing?<br>
<br>
Thanks,<br>
Matt S.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--047d7bb04da250324f0503b2a91b--
