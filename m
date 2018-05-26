Return-Path: <nikhkkv@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC287E009E2; Fri, 25 May 2018 23:47:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nikhkkv[at]gmail.com)
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
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D303E009CF
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 23:47:32 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id t11-v6so19513968wmt.0
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 23:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EueHZLRWuhSfErbP6FLKsiRUa3qduUOI1TGgu4Mwg8c=;
	b=T+cjr6vbYVtxt+7eRa5PXoMWoSqSxbUfmlyqDOH2Mw3z50samNpHz+x0Yq6QxZQWRJ
	Yod5tpuSXZd2Ye8HC0HW+QRuAs+637is5ThO3gUQykIUXfGDmp1PY9cq5RUX3l/ctGCZ
	WbcQqIB4GV4i+zVYy+0LvsLteRrszh0L21Kmg5JB/ovLRjIi2WBxZ6vj1IBGecUTkj7l
	Rs5dR93vVoC4SLAD6lw2oVB+B3QzM72bkZ8SYHBSWoGyjcgtsaDlN/1+R/LSAA4c6NAX
	q6SNyOCKVKHnUaVjCwFuwWg/+SFfWKD5h8Wf4C/n23SsnnVtvfOmXNSuJL4Mu1yqVRSE
	1HQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EueHZLRWuhSfErbP6FLKsiRUa3qduUOI1TGgu4Mwg8c=;
	b=CxRq570WxNGlGtksY7mJpu/xZSBhRDXyTOuIAOlrMStmxbeR3Joq0PtAMI0VUtaLMb
	3iq11Xmbh1oFuCxlMLmeveApH7DyXwXEFeRn2/Tywxa+sbzGSTwFbrNOVd4uFMZyPxx7
	wtm9pOurSEHa/FKW5u71zq4VY4blVOy2HfhqAcqpNWFYnmibmH0UksuK7jYhxNZ09ttJ
	QqnRngoEdjOAC9hHj85F/zIQqnG/66P3zslVdXJ1WbqzRKi++KGUKQ+DD57oigXrYBAo
	BlzzMHOznY9TEjBv+zTorp+BOyDD8dIAkFIVUSCDfHrjxIcEPPpq3vudT63/wFc7urnT
	sRrQ==
X-Gm-Message-State: ALKqPwd5N8LtV6b6OXFWIG+7p1z5V9VtPgpJPz9ojLH2QWLD1fBL3u2X
	PzaXUmsKNIWUwPIleFU23iTVcH7PC5S4FNWwO/c=
X-Google-Smtp-Source: ADUXVKJt7FUB9ShD4E749iLK7HZHX82qYoizkN/zAbS7tHMATvnlELlTczcpcxwjPiFPwdPI5eCb/uxKdPXNwhgegjM=
X-Received: by 2002:a2e:760a:: with SMTP id
	r10-v6mr3445844ljc.144.1527317251441; 
	Fri, 25 May 2018 23:47:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:ca14:0:0:0:0:0 with HTTP; Fri, 25 May 2018 23:47:30
	-0700 (PDT)
In-Reply-To: <CAFNP8OuG_qw_jZ6MzaOT3ftTSKMxyJdZJit0LOu52t9PAUCmcQ@mail.gmail.com>
References: <CAJqXeOwTyTasp31EapH2jO8WFmY-Tz-CjDp2CAUpcs=3Dxsqhg@mail.gmail.com>
	<CAFNP8Os4zOcGhTU7EV8_YrWFu=8-jPLqTMvb+VQgN6BhgN9FDw@mail.gmail.com>
	<CAFNP8OuG_qw_jZ6MzaOT3ftTSKMxyJdZJit0LOu52t9PAUCmcQ@mail.gmail.com>
From: nikh kkvv <nikhkkv@gmail.com>
Date: Sat, 26 May 2018 12:17:30 +0530
Message-ID: <CAJqXeOwU=4dKYmpcT4jEsBiLrO8ii5CKjQvwg-zxJpTUNWB+Pw@mail.gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>
X-Mailman-Approved-At: Mon, 04 Jun 2018 01:11:40 -0700
Cc: yocto@yoctoproject.org
Subject: Re: Yocto
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
X-List-Received-Date: Sat, 26 May 2018 06:47:33 -0000
Content-Type: multipart/alternative; boundary="0000000000003b4683056d16429c"

--0000000000003b4683056d16429c
Content-Type: text/plain; charset="UTF-8"

Hi Scott,

Thanks for the reply.

Regards
Nikhil

On Fri, May 25, 2018 at 6:50 PM, Scott Rifenbark <srifenbark@gmail.com>
wrote:

>
>
> ---------- Forwarded message ---------
> From: Scott Rifenbark <srifenbark@gmail.com>
> Date: Fri, May 25, 2018, 6:18 AM
> Subject: Fwd: Yocto
> To: <yocto@yoctoproject.org>
>
>
> Hi Nikhil,
>
> I am forwarding your email to the Yocto Project email group.  Someone
> there can better help you with your questions.  I take care of the Yocto
> manual set.
>
> Thanks,
> Scott Rifenbark
>
>
> ---------- Forwarded message ---------
> From: nikh kkvv <nikhkkv@gmail.com>
> Date: Fri, May 25, 2018, 6:03 AM
> Subject: Yocto
> To: <srifenbark@gmail.com>
>
>
> Hi srifenbark,
>
>
> I am Nikhil working as soft ware engineer in kerala.
>
> Currently i am working with a project which require yocto based file
> system.
> I am using sama5d36-xplained evaluation kit.
>
> Based on the information from the following site
> http://www.at91.com/linux4sam/bin/view/Linux4SAM/YoctoProject build a
> file system which support qt images and tested successfully.
>
> Is there any way to  avoid this demo images from this build and add qt
> support for bitbake core-image minimal process.
>
>
> Regards
> Nikhil
>

--0000000000003b4683056d16429c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Scott,<div><br></div><div>Thanks for the reply.</div><d=
iv><br></div><div>Regards</div><div>Nikhil</div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Fri, May 25, 2018 at 6:50 PM, Scott=
 Rifenbark <span dir=3D"ltr">&lt;<a href=3D"mailto:srifenbark@gmail.com" ta=
rget=3D"_blank">srifenbark@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"=
><div dir=3D"ltr">---------- Forwarded message ---------<br>From: Scott Rif=
enbark &lt;<a href=3D"mailto:srifenbark@gmail.com" target=3D"_blank">srifen=
bark@gmail.com</a>&gt;<br>Date: Fri, May 25, 2018, 6:18 AM<br>Subject: Fwd:=
 Yocto<br>To:  &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_bla=
nk">yocto@yoctoproject.org</a>&gt;<br></div><br><br><div dir=3D"auto"><div>=
Hi Nikhil,</div><div dir=3D"auto"><br></div><div dir=3D"auto">I am forwardi=
ng your email to the Yocto Project email group.=C2=A0 Someone there can bet=
ter help you with your questions.=C2=A0 I take care of the Yocto manual set=
.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=
=3D"auto">Scott Rifenbark<div><div class=3D"h5"><br><br><div class=3D"gmail=
_quote" dir=3D"auto"><div dir=3D"ltr">---------- Forwarded message --------=
-<br>From: nikh kkvv &lt;<a href=3D"mailto:nikhkkv@gmail.com" rel=3D"norefe=
rrer" target=3D"_blank">nikhkkv@gmail.com</a>&gt;<br>Date: Fri, May 25, 201=
8, 6:03 AM<br>Subject: Yocto<br>To:  &lt;<a href=3D"mailto:srifenbark@gmail=
.com" rel=3D"noreferrer" target=3D"_blank">srifenbark@gmail.com</a>&gt;<br>=
</div><br><br><div dir=3D"ltr"><div>Hi srifenbark,</div><div><br></div><div=
><br></div><div>I am Nikhil working as soft ware engineer in kerala.</div><=
div><br></div><div>Currently i am working with a project which require yoct=
o based file system.</div><div>I am using sama5d36-xplained evaluation kit.=
</div><div><br></div><div>Based on the information from the following site =
<br></div><div><a href=3D"http://www.at91.com/linux4sam/bin/view/Linux4SAM/=
YoctoProject" rel=3D"noreferrer noreferrer" target=3D"_blank">http://www.at=
91.com/linux4sam/<wbr>bin/view/Linux4SAM/<wbr>YoctoProject</a> build a file=
 system which support qt images and tested successfully.<br></div><div><br>=
</div><div>Is there any way to=C2=A0 avoid this demo images from this build=
 and add qt support for bitbake core-image minimal process.</div><div><br><=
/div><div><br></div><div>Regards</div><div>Nikhil<br></div></div>
</div></div></div></div></div></div></div></div>
</blockquote></div><br></div>

--0000000000003b4683056d16429c--
