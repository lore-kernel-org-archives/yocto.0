Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04E74E006D2; Mon,  4 Jul 2016 02:16:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A10E0045E
	for <yocto@yoctoproject.org>; Mon,  4 Jul 2016 02:16:38 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id g4so16852174ith.1
	for <yocto@yoctoproject.org>; Mon, 04 Jul 2016 02:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NZ8zyNfL3O3Y7XgC4wuINTFzEI6BvQhAx3bs19XNZoQ=;
	b=bwoRIf8xSxfIF8ROO6qtgoE9ncKkd8qJSkKZo7reXWQ64OAuuNLgvQUpXRdF03OpVK
	I0pRT23JSAfm9kcs9tNXT7fuOnb0pgTdCpVzT5HUhUmKwpVtZ0EVSZ3YKge5N3NZCRj5
	Uv2izU4Zd1UvIE5+yQDITYqklLNVC0hAW9NS4BrvlqcIAI+GDTbHu+iMWpQQ6SBe4Jv6
	6UP81yCdBLjxsvjMQUGhehCk6DkNeSziEiBXretVdAkphDx80cQFrviCwSFFnWI61LXX
	IMarsT5x+wxYuH151t2mmxDrHqe+ajvaQGxsH6+QwtdLgZzCYY0NTMahu3r6lM2QDD3x
	eJEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NZ8zyNfL3O3Y7XgC4wuINTFzEI6BvQhAx3bs19XNZoQ=;
	b=bu83kEB55xA3OfPpZMuClESnS+okCMasNrEhC8wDiCThAKRnfcbWi7e5N2fHLBV/IB
	fCs4PZ+p5k9McDOrnxpukFv3UNUucvOM3ir1q+Qe3DlBJyo0IUQ5hUXjCSdAPY7L3qKz
	51mGLAOFhGabblqPFlkOca5D0S4/TrV6dcqH9bUILjkaSg8sfh7Q8NvQdSgWvkHHAM7k
	1I0o/oKIOmIQBjFUTtbqCY4oPQoko0XWQji3p+yPOh43Ln2AURl4Nwv2kuiGcotzQO9j
	0hwrEHaPLv8b8X0DdgUMJbKjtUp4lk5xhBKeNGY/HztI2Ipai7JoCWW/de4yzDuqjGzx
	BXmw==
X-Gm-Message-State: ALyK8tIj+lrF40N7iINr2QMsiOZNAhO6hKAlKRiWqNvtpPk0mo3llwDVGUfSDjvZMqkwcCYOtCLSWAj/VHsRmeO4
X-Received: by 10.36.121.21 with SMTP id z21mr8505872itc.38.1467623797814;
	Mon, 04 Jul 2016 02:16:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Mon, 4 Jul 2016 02:16:18 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1607031342300.19699@localhost.localdomain>
References: <alpine.LFD.2.20.1607031342300.19699@localhost.localdomain>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 4 Jul 2016 10:16:18 +0100
Message-ID: <CAJTo0LYu5XYOZa8RUduVMTr-ttMGG922z++vXctvzsw+XZwJHw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Poky/MPC8315E-RDB: "preferred version v2013.07% of u-boot not available (for item u-boot)"
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
X-List-Received-Date: Mon, 04 Jul 2016 09:16:47 -0000
Content-Type: multipart/alternative; boundary=001a114a95a02210930536cbcb4e

--001a114a95a02210930536cbcb4e
Content-Type: text/plain; charset=UTF-8

On 3 July 2016 at 18:45, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>   should i submit a patch that just deletes the PREFERRED_VERSION
> line?
>

Yes, that seems like the right thing to do.

Thanks,
Ross

--001a114a95a02210930536cbcb4e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 July 2016 at 18:45, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"=
mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":grb" class=
=3D"a3s aXjCH m155b1e036cf353f9">=C2=A0 should i submit a patch that just d=
eletes the PREFERRED_VERSION<br>
line?<br></div></blockquote></div><br>Yes, that seems like the right thing =
to do.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Thanks,</div><div class=3D"gmail_extra">Ross</div></div>

--001a114a95a02210930536cbcb4e--
