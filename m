Return-Path: <peachj@lexmark.com>
Received: from exprod8og115.obsmtp.com (exprod8og115.obsmtp.com [64.18.3.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8042DE00BE0
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 05:57:59 -0700 (PDT)
Received: from mail-yh0-f50.google.com ([209.85.213.50]) (using TLSv1) by
	exprod8ob115.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU1pb108MYrXM4rT52+bFwJwwrPE3Lu7t@postini.com;
	Fri, 25 Apr 2014 05:58:02 PDT
Received: by mail-yh0-f50.google.com with SMTP id b6so758191yha.37
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 05:57:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=T+E9OOXUI6WDPq30u+2O2zLHbPguFRaJpN8Kk+rWFp0=;
	b=aiH//sVrS8VXvhydAzHvrI7godPHTI9f/eTQpqZFrVZ51s7ta8l8h0kohnZDSAX/Wj
	19o/YqweAk8O3nZVCbx2auHvCQjwLPWwJonA+tmGCyODGJcYdU0CpESc6FSnyk7eCEFm
	yLJMSl6T7QbQhSm/4C6HiBX/+rsQQVGzVI3PG6Jx5xHT7MauGOFVXP4ozo5gRSbr1N6y
	b81dbio3wXKWCkEuDAo6euMroYWzAat3VIcMDdMC367S0uxnK1zzrlUSbhMc4PmGjRSu
	LtH4+2s3RUxGD/QRC5Vk5JzdHY3FZ+jvT+knUPkNrI0OQ0ZWxEx5o8J/mZ8xo0yOziF8
	nkNQ==
X-Gm-Message-State: ALoCoQlxBrc4xJyw/dirMy5yBb+ZZIeFCkQuefHEpgeV+a3qaieEYaXhdPwOUin43RmchUrqvT/Tu/knXHzyM3sxGrl9Vxq1Na/useIlDeEtPQSqQQUDkg6z6pXl1wyiVUSFNVcVb49c
X-Received: by 10.236.13.46 with SMTP id a34mr4074404yha.28.1398430678694;
	Fri, 25 Apr 2014 05:57:58 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.236.13.46 with SMTP id a34mr4074387yha.28.1398430678529;
	Fri, 25 Apr 2014 05:57:58 -0700 (PDT)
Received: by 10.170.78.195 with HTTP; Fri, 25 Apr 2014 05:57:58 -0700 (PDT)
In-Reply-To: <CA+QkY1Bo6-YPZCEkYKVaxebK-qxVbjdpyJf0hKjDwcY=-9SArg@mail.gmail.com>
References: <CA+QkY1Bo6-YPZCEkYKVaxebK-qxVbjdpyJf0hKjDwcY=-9SArg@mail.gmail.com>
Date: Fri, 25 Apr 2014 08:57:58 -0400
Message-ID: <CA+QkY1AQiyd0v4txw+4fL+nPc2bd0Uhsi0G9=0qcQnCvPnziPg@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>
Subject: Re: New recipe writing documentation
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
X-List-Received-Date: Fri, 25 Apr 2014 12:58:02 -0000
Content-Type: multipart/alternative; boundary=001a11c3dc3ad6665a04f7dd8347

--001a11c3dc3ad6665a04f7dd8347
Content-Type: text/plain; charset=ISO-8859-1

This was actually intended to go to an internal mailing list for my
company. Anyone on yocto@yoctoproject.org can safely ignore this (although
that documentation is useful!).


On Fri, Apr 25, 2014 at 8:46 AM, Jerrod Peach <peachj@lexmark.com> wrote:

> If you've ever struggled with writing a recipe, the Yocto Project has
> some new documentation that extensively covers the topic<http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe>.
> Do note that this is from the Yocto 1.6 documentation which was just
> formally released yesterday, so there is a slim chance they'll mention
> something that isn't applicable to our current 1.4 (headed to 1.5) release,
> but I think overall it could be handy to some folks.
>

--001a11c3dc3ad6665a04f7dd8347
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This was actually intended to go to an internal mailing li=
st for my company. Anyone on <a href=3D"mailto:yocto@yoctoproject.org">yoct=
o@yoctoproject.org</a> can safely ignore this (although that documentation =
is useful!).</div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Apr 2=
5, 2014 at 8:46 AM, Jerrod Peach <span dir=3D"ltr">&lt;<a href=3D"mailto:pe=
achj@lexmark.com" target=3D"_blank">peachj@lexmark.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">If you&#39;ve ever struggled with writing a recipe, <a hre=
f=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#ne=
w-recipe-writing-a-new-recipe" target=3D"_blank">the Yocto Project has some=
 new documentation that extensively covers the topic</a>. Do note that this=
 is from the Yocto 1.6 documentation which was just formally released yeste=
rday, so there is a slim chance they&#39;ll mention something that isn&#39;=
t applicable to our current 1.4 (headed to 1.5) release, but I think overal=
l it could be handy to some folks.</div>

</blockquote></div><br></div>

--001a11c3dc3ad6665a04f7dd8347--
