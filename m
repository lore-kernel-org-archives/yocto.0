Return-Path: <andrei@gherzan.ro>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C3D5E006AD
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 09:46:56 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so11000886yhf.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 09:46:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=rZZjC/4W5gm0IxXcSC1xfT9rjkdNdh6P7uGHlISiSPM=;
	b=NnLxKbr74QqQRyI3Ti98WnpA+pIl08i4k2Im1wsPqm606lIAx+/OoNmZU3u4A74tEo
	6wOcI6OOY3MGUyX7+gaQy7+qeVMrYe4QLcxXyCht2sJrvH6Ecd2+d3wUtxWSUmF8RSgh
	tlSUAZ9pnlhv6GQ8gaiU5cpjcEaty9oSOZjA8ejrxMxTxwynSVu/K0pTrelS4JvxqTuJ
	lLaxSbBxf1IbOLFWUtY9HRPVRnqUv7Y9P9Bhs+wSdgcfwk3drey18xugAmJ4vZWYaXHi
	maW59FC9YrLNr6ftphqOS0hl9SpLewxbdyM08q27ZzL9ppnNg2vPcka9IkrtzjNw40mg
	iGtw==
MIME-Version: 1.0
Received: by 10.50.91.233 with SMTP id ch9mr8898526igb.8.1341852415539; Mon,
	09 Jul 2012 09:46:55 -0700 (PDT)
Received: by 10.64.98.162 with HTTP; Mon, 9 Jul 2012 09:46:55 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
Received: by 10.64.98.162 with HTTP; Mon, 9 Jul 2012 09:46:55 -0700 (PDT)
In-Reply-To: <038FDF66-7E05-42E1-9B22-EA8486BC8AC4@keylevel.com>
References: <038FDF66-7E05-42E1-9B22-EA8486BC8AC4@keylevel.com>
Date: Mon, 9 Jul 2012 19:46:55 +0300
Message-ID: <CAK18fxG5etcbQqNRqpgAjKwpxEHbOpYwOW123VFW1mUKp9HhoA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQkIzgopM88Ni6Fk0QJuaeS+cHjDQcq5DAAp0cpxud+oETLg5IFmMpr78nuiGtS1tX58u+rK
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Git fetcher error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Jul 2012 16:46:56 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba0d991bad204c4685ce5

--e89a8f3ba0d991bad204c4685ce5
Content-Type: text/plain; charset=ISO-8859-1

I tried now to fetch it and it works ok...

@g
On Jun 27, 2012 12:47 AM, "Chris Tapp" <opensource@keylevel.com> wrote:

> I'm trying to use git://github.com/bootc/linux.git in a recipe, but
> 'do_fetch' is failing.
>
> If I fetch manually, then it takes a long, long time to go through
> 'remote: counting objects' and 'remote: compressing object'. Is this
> causing a timeout in the fetcher? If so, can I do anything to allow the
> fetch to run longer?
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--e89a8f3ba0d991bad204c4685ce5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>I tried now to fetch it and it works ok... </p>
<p>@g</p>
<div class=3D"gmail_quote">On Jun 27, 2012 12:47 AM, &quot;Chris Tapp&quot;=
 &lt;<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a>=
&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
I&#39;m trying to use git://<a href=3D"http://github.com/bootc/linux.git" t=
arget=3D"_blank">github.com/bootc/linux.git</a> in a recipe, but &#39;do_fe=
tch&#39; is failing.<br>
<br>
If I fetch manually, then it takes a long, long time to go through &#39;rem=
ote: counting objects&#39; and &#39;remote: compressing object&#39;. Is thi=
s causing a timeout in the fetcher? If so, can I do anything to allow the f=
etch to run longer?<br>

<br>
Chris Tapp<br>
<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a><=
br>
<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--e89a8f3ba0d991bad204c4685ce5--
