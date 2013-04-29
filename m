Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BA90E00310
	for <yocto@yoctoproject.org>; Sun, 28 Apr 2013 22:41:58 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id w20so4388238lbh.6
	for <yocto@yoctoproject.org>; Sun, 28 Apr 2013 22:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=ysxzXVL1VjkbNA4+65L5Dkg8ttgWP1uxunWGEEiGYzU=;
	b=SsHm/2f7giMxDpweTYGp8VPhv3rHdCI6rX1hkSqi89UJ4G0mG+hHZfGhoSJk2mkBoM
	UkNpH0RfqfAhaW6VODbjQ2uQ51TPgkAg7HjFHnsiVX5fiiaX+lq+v6Tmyq/zJr+fKYg4
	UBO/oyG2pX3YFbQLmNts3GCSTc7GhlsNji6cBHtwHRY8AvVPuB69EDRnbCiGZPkjmFvL
	5F5AtZXEmPw6QlaRhNmuqsikDnyDKaBLK4KBoldhXnFdBU8YzWrMG2aZyCdzjDH+KtMD
	d9QVhEH2y6eKtuICkNjn+AZxHt42kALddGoGIMqG97Jh7HUzBQAVHF6gyS7uJcAIHIKk
	Cq/A==
MIME-Version: 1.0
X-Received: by 10.112.147.38 with SMTP id th6mr9541712lbb.119.1367214116935;
	Sun, 28 Apr 2013 22:41:56 -0700 (PDT)
Received: by 10.114.1.46 with HTTP; Sun, 28 Apr 2013 22:41:56 -0700 (PDT)
In-Reply-To: <1367073557.2502.YahooMailNeo@web161505.mail.bf1.yahoo.com>
References: <1367073557.2502.YahooMailNeo@web161505.mail.bf1.yahoo.com>
Date: Mon, 29 Apr 2013 11:11:56 +0530
Message-ID: <CAE_REAvejk5Yu-m=grtitHa0pxP=4HKkdNgLS9kvJcDGJSdwwQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Peter Tornel <petertornel@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to clean all?
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
X-List-Received-Date: Mon, 29 Apr 2013 05:41:59 -0000
Content-Type: multipart/alternative; boundary=047d7b343b94c5a00304db795725

--047d7b343b94c5a00304db795725
Content-Type: text/plain; charset=ISO-8859-1

You can run "bitbake -c clean all" to clean everything or simply you can do
"rm -rf tmp/" directory and you will start from the beginning :)

//Gaurang Shastri


On Sat, Apr 27, 2013 at 8:09 PM, Peter Tornel <petertornel@yahoo.com> wrote:

> Hello,
>
> Sometimes I feel the need to clean everything before building, but I don't
> want to just rm my project directory since I want to keep my conf files.  What
> bitbake command can I run to get back to a pristine state (same as after
> creating project directory and modifying my conf files)?
>
> Regards,
>
> Peter
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b343b94c5a00304db795725
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can run &quot;bitbake -c clean all&quot; to clean=
 everything or simply you can do &quot;rm -rf tmp/&quot; directory and you =
will start from the beginning :)<br><br></div>//Gaurang Shastri <br></div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat, Apr 2=
7, 2013 at 8:09 PM, Peter Tornel <span dir=3D"ltr">&lt;<a href=3D"mailto:pe=
tertornel@yahoo.com" target=3D"_blank">petertornel@yahoo.com</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div style=3D"font-size:12pt;font-famil=
y:times new roman,new york,times,serif"><div>Hello,</div><div><br><span></s=
pan></div>
<div style=3D"font-style:normal;font-size:16px;background-color:transparent=
;font-family:times new roman,new york,times,serif"><span>Sometimes I feel t=
he need to clean everything before building, but I don&#39;t want to just r=
m my project directory since I want to keep my conf files.=A0 </span><span>=
What bitbake command can I run to get back to a pristine state (same as aft=
er creating project directory and modifying my conf files)?=A0 <br>
</span></div><div style=3D"font-style:normal;font-size:16px;background-colo=
r:transparent;font-family:times new roman,new york,times,serif"><br><span><=
/span></div><div style=3D"font-style:normal;font-size:16px;background-color=
:transparent;font-family:times new roman,new york,times,serif">
<span>Regards,</span></div><div style=3D"font-style:normal;font-size:16px;b=
ackground-color:transparent;font-family:times new roman,new york,times,seri=
f"><span><br>Peter</span></div><div style=3D"font-style:normal;font-size:16=
px;background-color:transparent;font-family:times new roman,new york,times,=
serif">
<span><br></span></div></div></div><br>____________________________________=
___________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7b343b94c5a00304db795725--
