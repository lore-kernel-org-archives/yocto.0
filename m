Return-Path: <hliu@deeper.network>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 680DFE00AD8; Sat,  3 Nov 2018 20:36:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
	[209.85.222.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3B3BE009B2
	for <yocto@yoctoproject.org>; Sat,  3 Nov 2018 20:36:43 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id w19so2011127uaj.3
	for <yocto@yoctoproject.org>; Sat, 03 Nov 2018 20:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deeper.network; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VHO8+9FGS4XjbAzgqGKRNYNRQbOYgPebwe+shJoP73o=;
	b=YnJyK3FJTh3kZQhCZuDru8c2rwRelnj1+xUaaqx3qddaBpYsAk6rgIBQqRtuAwSarF
	7OCPOMc1VUMTCTskbx3yknnHV5iMTF5oYIy1szwyZE3pHzAPa+9tqh3wcfabB0tDvdz4
	7bu00doROfe8FtCIFB7dC4E8eq/Ml7AA1ZLSjE2U48mUvVt+qsMIjANEJOfQ88DC7AbV
	HTkhQ6MP6w5OA7jz5mmpdF3JX5elvUKWB5pAMUsmgfJdbcJIJNmmzaBnHT3s520t6Yn8
	nBm8PHDxDKaZtC8UVsZAjt0JwKqqkTx5Ux745roXda67RJTPoj+Wt3/h3gKflQcLrCHh
	2SjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VHO8+9FGS4XjbAzgqGKRNYNRQbOYgPebwe+shJoP73o=;
	b=d6/8Ez21zUaqiM4uUPHeoLUsd0RUnCidWMxOUdEI8IG2JqTRvf15tp2xFlaJIzTxwZ
	4D2FSZq1iKgGAPpW+HS++y94BCbm86yaOdEElf9MIpu/d7g1VLr98qqevggE267oY4E0
	3CCy1VFDDm3zclgKDgiJ+NMd8o42YJC/2GyewX80gxanrWafSZIa54IScCIR39vwwr4V
	SSGLQfSWWuntCc9/CqA/wyrB2bed5lVCPq5OM1mmdmnNWWJbHl7AHQ8C2xpGPLVn9b3S
	/Ft3jxR+C9YAiKJL4KL/xUqY7nkbNVYcSQbS/x/LjSq1ZElbhvYiHW02hy9WoJibGug1
	u3sw==
X-Gm-Message-State: AGRZ1gLOdS34FYbzvdV5jyYo3RdvCwjeN5RtlfrKe2VzVoVnJqERIhvl
	KY+CMd5nfhwHjvsNc0vQwq6mLBkJtUX55TU6JyG0fw==
X-Google-Smtp-Source: AJdET5dF/xbEtI+ciY2CgmH5JGn9NOyiN6gUTbfQev3Ja+jEZz3QQst7L9uEvYFKEqv3zvpymphTKkq+bhLRZnJfT7E=
X-Received: by 2002:ab0:45e2:: with SMTP id u89mr4862520uau.13.1541302603329; 
	Sat, 03 Nov 2018 20:36:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAOCk6Ow+ZJEg9MofbiTpzNekesnOW4dY3g9B9Ubo3A-32AY_fg@mail.gmail.com>
	<d3e14b32-a518-931b-53b7-2d639b7ad0e8@windriver.com>
In-Reply-To: <d3e14b32-a518-931b-53b7-2d639b7ad0e8@windriver.com>
From: Hui Liu <hliu@deeper.network>
Date: Sat, 3 Nov 2018 20:36:32 -0700
Message-ID: <CAOCk6OwXg6paw+LpELNHqS+Vp6c8KcnBfMo-cH3Dqjf8ad49pQ@mail.gmail.com>
To: mark.hatle@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: How to avoid stripping libthread_db to enable gdb thread debugging?
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
X-List-Received-Date: Sun, 04 Nov 2018 03:36:45 -0000
Content-Type: multipart/alternative; boundary="00000000000029ca430579ce7a09"

--00000000000029ca430579ce7a09
Content-Type: text/plain; charset="UTF-8"

Thanks mark. glibc-dbg resolved this issue.

On Fri, Nov 2, 2018 at 11:21 AM Mark Hatle <mark.hatle@windriver.com> wrote:

> On 11/2/18 1:03 PM, Hui Liu wrote:
> > Hi,
> >
> > I add gdb to my recipe, and found gdb can't enable thread debugging.
> >
> > The warning from gdb is:
> >
> > warning: Unable to find libthread_db matching inferior's thread library,
> thread
> > debugging will not be available
> >
> > After some investigation, I found it is due to libthread_db is stripped:
> >
> > nm lib/libthread_db.so.1
> > nm: lib/libthread_db.so.1: no symbols
> >
> > Could you let me know how to avoid this?
>
> You need to install the dbg package.  This contains the symbols necessary
> for
> debugging.  You can install it for either cross or local (on target)
> debugging.
> In the cross-debuging case, you should not need it on the target.
>
> --Mark
>
> > --
> > Thanks,
> > Hui
> >
> >
>
>

-- 
Thanks,
Hui

--00000000000029ca430579ce7a09
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks mark.=C2=A0glibc-dbg resolved this=
 issue.=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On=
 Fri, Nov 2, 2018 at 11:21 AM Mark Hatle &lt;<a href=3D"mailto:mark.hatle@w=
indriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">On 11/2/18 1:03 PM, Hui Liu wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I add gdb to my recipe, and found gdb can&#39;t enable thread debuggin=
g.<br>
&gt; <br>
&gt; The warning from gdb is:<br>
&gt; <br>
&gt; warning: Unable to find libthread_db matching inferior&#39;s thread li=
brary, thread<br>
&gt; debugging will not be available<br>
&gt; <br>
&gt; After some investigation, I found it is due to libthread_db is strippe=
d:<br>
&gt; <br>
&gt; nm lib/libthread_db.so.1<br>
&gt; nm: lib/libthread_db.so.1: no symbols<br>
&gt; <br>
&gt; Could you let me know how to avoid this?<br>
<br>
You need to install the dbg package.=C2=A0 This contains the symbols necess=
ary for<br>
debugging.=C2=A0 You can install it for either cross or local (on target) d=
ebugging.<br>
In the cross-debuging case, you should not need it on the target.<br>
<br>
--Mark<br>
<br>
&gt; -- <br>
&gt; Thanks,<br>
&gt; Hui<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr">Thanks,<div>Hui</div></div></div>

--00000000000029ca430579ce7a09--
