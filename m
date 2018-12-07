Return-Path: <tmichalski23@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05035E00C59; Fri,  7 Dec 2018 01:20:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tmichalski23[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 479AAE00C4E
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2018 01:20:22 -0800 (PST)
Received: by mail-it1-f169.google.com with SMTP id b5so6058584iti.2
	for <yocto@yoctoproject.org>; Fri, 07 Dec 2018 01:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xyPuKS5laiq4/GQN/3ccsugDl6cYXPuEKo8raulkERM=;
	b=sXUINsEX5yuVj5tSpCDILc0Loxc92WpnnF99FhHhrG0B74HOL+6+5+U1ivjDPLAgfm
	4ImS76Yqcjzhw+fGHy3pfN5PG7bQ9UftNOAig4r/mUETZcZeCNWolZcg777rvG6szb2f
	y+qFyyvcXL1xEhb4+qT7INFsu/R/zQ6lUkGvacKwDpq6/HzaPbi2xhqnOBYQFPPer9vx
	wvNDIjfmxSC75+1/1GtUqrz+GcX2p3FCHzxNbqGrAoHKRHwECZHLoRMQqndiSeUb5NBJ
	9Xdmu5J2DypOifN5l4KSu+xujTKlHIopaiUBOzxJBmAYtZqeeNNU4sSBMVlAa5pmLJTe
	d7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xyPuKS5laiq4/GQN/3ccsugDl6cYXPuEKo8raulkERM=;
	b=mMn/BwLI5TsI94YsVtxeyXXFLhE78G8o7+FnyRT9r3XLEoweYdowWtPZ7gNuSAGc4n
	H+49poHNco9iJwgLzc2WQV4gh4tL+SY6i/nmfeLAQCQ4aO+EHsm0sEpssyj067DIJ7sD
	/6zyUSVLKVa2v18a76FPzcVrNTeg+jjkpm8f58RpO3Lkqm3M9urHoAkArjnbxF0Y7uhA
	ng9QcL1FjmfoAyBGqWr7LyG341JP+cFSFB6JcGHSQWG1fWkIo4Z+6Q/YxW+2hBZ0RX5A
	/T/vwV4qgI0Lk1MqIc4fN1QgQg92bKyeuutrDd733P4i/ay/cKmMarbw+KEU4hFUu3xb
	hFyQ==
X-Gm-Message-State: AA+aEWY9B6Sdvz0h+w1mKZqflXb2WHV+1pS/dNtCCQlzcEYcvwZt/els
	HKQ5wIZOR3w6t+5RfZ9xwmmgC92pZXsky9SJphHUUQ==
X-Google-Smtp-Source: AFSGD/WwKsBRz8eWV7Jrp6qVJnRCHKESk2pkCnm1wHNYXa6dNCEpeADoL+dqypf460sCNl7cxK3ZU7hMCSpEu1Onu6A=
X-Received: by 2002:a24:3a09:: with SMTP id m9mr1322962itm.98.1544174421643;
	Fri, 07 Dec 2018 01:20:21 -0800 (PST)
MIME-Version: 1.0
References: <CAE5v_rKx_+pqhPnUMb9do6DnaJYt_eCs65KFXBya6PznYZEUaQ@mail.gmail.com>
	<CAJTo0LYfJ0QESn1zFXr5qvMLGZDV4QiNvf7g5Gq7VMEq8ASNEg@mail.gmail.com>
In-Reply-To: <CAJTo0LYfJ0QESn1zFXr5qvMLGZDV4QiNvf7g5Gq7VMEq8ASNEg@mail.gmail.com>
From: Tomasz Michalski <tmichalski23@gmail.com>
Date: Fri, 7 Dec 2018 10:20:10 +0100
Message-ID: <CAE5v_rJN1G6T+BBkqO+W5SVb5mSO9vVZ2xRZOLy5x4GG5JPkSw@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: overwriting do_install causes cmake install not executed
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
X-List-Received-Date: Fri, 07 Dec 2018 09:20:23 -0000
Content-Type: multipart/alternative; boundary="000000000000df9a72057c6b1f8a"

--000000000000df9a72057c6b1f8a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the clarification.

czw., 6 gru 2018 o 17:06 Burton, Ross <ross.burton@intel.com> napisa=C5=82(=
a):

> On Thu, 6 Dec 2018 at 16:03, Tomasz Michalski <tmichalski23@gmail.com>
> wrote:
> > I have recipe componentX.bb which refer to some C++ repository. In C++
> repository I have in main CMakeList.txt:
> >
> > install(PROGRAMS ./script/start.sh DESTINATION
> ${CMAKE_INSTALL_COMPONENTXDIR}/init.d)
> > install(PROGRAMS ./script/functions.sh DESTINATION
> ${CMAKE_INSTALL_BINDIR})
> >
> > When I add to componentX.bb my own implementation of do_install() then
> start.sh and function.sh script is not installed from CMakeList.txt!
> > How to tell bitbake in do_install() body to installl this what is in
> CMakeList.txt and moreover something more? Using do_install_append() is n=
ot
> a solution for my case because do_install_append() cannot be overwritten =
in
> another meta-layer, for example in componentX.bbappend. So this must be
> do_install() function.
>
> By writing your own do_install you're replacing the cmake class's
> do_install which is why it doesn't install those files.
>
> From inside your own do_install() you can call the cmake class
> do_install directly: it's called cmake_do_install.
>
> Ross
>

--000000000000df9a72057c6b1f8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for the clarification.=C2=A0<br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr">czw., 6 gru 2018 o 17:06=C2=A0Burton,=
 Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a=
>&gt; napisa=C5=82(a):<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">On Thu, 6 Dec 2018 at 16:03, Tomasz Michalski &lt;<a href=3D"mailto:=
tmichalski23@gmail.com" target=3D"_blank">tmichalski23@gmail.com</a>&gt; wr=
ote:<br>
&gt; I have recipe componentX.bb which refer to some C++ repository. In C++=
 repository I have in main CMakeList.txt:<br>
&gt;<br>
&gt; install(PROGRAMS ./script/start.sh DESTINATION ${CMAKE_INSTALL_COMPONE=
NTXDIR}/init.d)<br>
&gt; install(PROGRAMS ./script/functions.sh DESTINATION ${CMAKE_INSTALL_BIN=
DIR})<br>
&gt;<br>
&gt; When I add to componentX.bb my own implementation of do_install() then=
 start.sh and function.sh script is not installed from CMakeList.txt!<br>
&gt; How to tell bitbake in do_install() body to installl this what is in C=
MakeList.txt and moreover something more? Using do_install_append() is not =
a solution for my case because do_install_append() cannot be overwritten in=
 another meta-layer, for example in componentX.bbappend. So this must be do=
_install() function.<br>
<br>
By writing your own do_install you&#39;re replacing the cmake class&#39;s<b=
r>
do_install which is why it doesn&#39;t install those files.<br>
<br>
From inside your own do_install() you can call the cmake class<br>
do_install directly: it&#39;s called cmake_do_install.<br>
<br>
Ross<br>
</blockquote></div>

--000000000000df9a72057c6b1f8a--
