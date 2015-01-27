Return-Path: <yani.dubin@taitradio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41796E007BA; Tue, 27 Jan 2015 15:19:11 -0800 (PST)
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
	*      [209.85.218.53 listed in list.dnswl.org]
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAA2FE007BA
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 15:19:08 -0800 (PST)
Received: by mail-oi0-f53.google.com with SMTP id i138so14908382oig.12
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 15:19:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=YSkmy+KSNcYwH+pO4ZB5FkfWVvKlmliy4CVuE0Issl8=;
	b=Kf/jHIOuihPyIiEZi3zvH+C57fz6XRfLhg8/E8fPw8wPWRK3VwMP5MOzu6YKFpuZZc
	VD0Tn3GBCn3lediQbow8WYL+FCb4+PzjUHLf7ElEJrKcGsoFq/WPzWqG2wZ3VehSak1w
	74fnWpsdIUUCAXC0PYLKsmmGWG/MC6JaLIskKWbVWmeG3FX9qx+2XVBgvv2HamicxQJH
	dRN/4nufWj6GN3T2ohq5nD0bGt5168w28NOpHSI3TjN9xnvoM5xunsmQEJuwzgDK0Vw6
	YpV24u9EgbunLSwZ2+abky5zj4jRo2yrZkds2dphDOYEOQDiaXW1od1/kalLh39gLg1b
	TIpg==
X-Gm-Message-State: ALoCoQkFd2GGIdmnkQptMTr2KixSagtkqBsfJqSAhblvkK2/qSmOhcgjiH9T50xVpUt07pf/W4P2nFERRmzNvB6DdajKxRNwrWskIX/fv5UOERNdeHBqC7I=
MIME-Version: 1.0
X-Received: by 10.182.119.232 with SMTP id kx8mr293098obb.37.1422400747381;
	Tue, 27 Jan 2015 15:19:07 -0800 (PST)
Received: by 10.202.228.7 with HTTP; Tue, 27 Jan 2015 15:19:07 -0800 (PST)
In-Reply-To: <54C7A9EA.7000306@windriver.com>
References: <CAHSWo-jFj5Wk1xBvaaY7UegFjQ2XJn_PK0YFcy+pNeLW2ThMpQ@mail.gmail.com>
	<54C7A9EA.7000306@windriver.com>
Date: Wed, 28 Jan 2015 12:19:07 +1300
Message-ID: <CAHSWo-j2kOvKG11=KOCKPkxCY6=43cpedmGtQghyuA5Npg3h=g@mail.gmail.com>
From: Yani Dubin <yani.dubin@taitradio.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: (IIO) ADC freeze on am335x processor on 3.14.26ltsi kernel
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
X-List-Received-Date: Tue, 27 Jan 2015 23:19:11 -0000
Content-Type: multipart/alternative; boundary=001a11c2f43a46bdd8050daa7bae

--001a11c2f43a46bdd8050daa7bae
Content-Type: text/plain; charset=UTF-8

Hi Bruce,

On 28 January 2015 at 04:08, Bruce Ashfield <bruce.ashfield@windriver.com>
wrote:

>  On 15-01-26 11:54 PM, Yani Dubin wrote:
>
> These are 3 adjacent changesets on the dizzy branch - I gather that is as
> much as I can narrow it down?
>
>  We may need to get your help in tracking the problem down, since without
> the h/w on hand, it will be difficult to figure out what changed between
> the
> working and non-working revisions.
>
> I have some additional 3.14 updates queued, and they may fix the issue ..
> but again, I can't say for sure.
>
> Are you able to bisect the kernel directly ? I only submit SRCREV updates
> to
> the linux-yocto recipes at particular milestones, but within the kernel we
> obviously have more granularity.
>
> After you've built the kernel the first time, you can head into devshell
> and
> then use the unpacked and patched src tree and do a normal git bisect/build
> workflow. You'd need to copy the resulting kernels out to your target, but
> that
> would narrow down the bad commit/merge pretty quickly.
>

Bisecting the 1800+ changesets between these points yielded a culprit:
[bb01842184bc89666819ee7dceb78c61505036ed] mfd: ti_am335x_tscadc: Fix TSC
operation after ADC continouous mode

This is a two line changeset. I have confirmed that reverting the second
change against the previously broken version fixes it for me. So I now have
a patch I can apply locally until such time as this is fixed upstream.

Since this is my first time reporting a kernel bug, and I now know exactly
what I am looking for can you give me any pointers on where/how to search
to see if an upstream fix exists already?

Thank you for your help, and a welcome introduction to both devshell (I
used to do kernel reconfigure/compile the hard way) and git bisect - I can
see these are going to be very handy in the future.

Thanks again,
Yani.

-- 

------------------------------
This email, including any attachments, is only for the intended recipient. 
It is subject to copyright, is confidential and may be the subject of legal 
or other privilege, none of which is waived or lost by reason of this 
transmission.
If you are not an intended recipient, you may not use, disseminate, 
distribute or reproduce such email, any attachments, or any part thereof. 
If you have received a message in error, please notify the sender 
immediately and erase all copies of the message and any attachments.
Unfortunately, we cannot warrant that the email has not been altered or 
corrupted during transmission nor can we guarantee that any email or any 
attachments are free from computer viruses or other conditions which may 
damage or interfere with recipient data, hardware or software. The 
recipient relies upon its own procedures and assumes all risk of use and of 
opening any attachments.
------------------------------

--001a11c2f43a46bdd8050daa7bae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Bruce,<br><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On 28 January 2015 at 04:08, Bruce Ashfield <span dir=3D"ltr">=
&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce=
.ashfield@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
 =20
   =20
 =20
  <div><span class=3D"">
    <div>On 15-01-26 11:54 PM, Yani Dubin wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">These are 3 adjacent changesets on the dizzy branch =
- I gather
          that is as much as I can narrow it down?<br>
      </div>
    </blockquote>
    </span>
    We may need to get your help in tracking the problem down, since
    without<br>
    the h/w on hand, it will be difficult to figure out what changed
    between the<br>
    working and non-working revisions.<br>
    <br>
    I have some additional 3.14 updates queued, and they may fix the
    issue .. <br>
    but again, I can&#39;t say for sure.<br>
    <br>
    Are you able to bisect the kernel directly ? I only submit SRCREV
    updates to<br>
    the linux-yocto recipes at particular milestones, but within the
    kernel we <br>
    obviously have more granularity.<br>
    <br>
    After you&#39;ve built the kernel the first time, you can head into
    devshell and <br>
    then use the unpacked and patched src tree and do a normal git
    bisect/build<br>
    workflow. You&#39;d need to copy the resulting kernels out to your
    target, but that<br>
    would narrow down the bad commit/merge pretty quickly.<br></div></block=
quote><div><br></div><div>Bisecting the 1800+ changesets between these poin=
ts yielded a culprit: <br>[bb01842184bc89666819ee7dceb78c61505036ed] mfd: t=
i_am335x_tscadc: Fix TSC operation after ADC continouous mode<br><br></div>=
<div>This is a two line changeset. I have confirmed that reverting the seco=
nd change against the previously broken version fixes it for me. So I now h=
ave a patch I can apply locally until such time as this is fixed upstream.<=
br><br></div><div>Since this is my first time reporting a kernel bug, and I=
 now know exactly what I am looking for can you give me any pointers on whe=
re/how to search to see if an upstream fix exists already?<br><br></div><di=
v>Thank you for your help, and a welcome introduction to both devshell (I u=
sed to do kernel reconfigure/compile the hard way) and git bisect - I can s=
ee these are going to be very handy in the future.<br clear=3D"all"></div><=
/div><br></div><div class=3D"gmail_extra">Thanks again,<br>Yani.<br></div><=
/div>

<br>
<hr><font color=3D"#808080">This email, including any attachments, is only
 for the intended recipient. It is subject to copyright, is confidential
 and may be the subject of legal or other privilege, none of which is=20
waived or lost by reason of this transmission.</font><div><font color=3D"#8=
08080">If
 you are not an intended recipient, you may not use, disseminate,=20
distribute or reproduce such email, any attachments, or any part=20
thereof. If you have received a message in error, please notify the=20
sender immediately and erase all copies of the message and any=20
attachments.</font></div><div><font color=3D"#808080">Unfortunately, we=20
cannot warrant that the email has not been altered or corrupted during=20
transmission nor can we guarantee that any email or any attachments are=20
free from computer viruses or other conditions which may damage or=20
interfere with recipient data, hardware or software. The recipient=20
relies upon its own procedures and assumes all risk of use and of=20
opening any attachments.</font></div><div><hr></div>

--001a11c2f43a46bdd8050daa7bae--
