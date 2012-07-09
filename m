Return-Path: <andrei@gherzan.ro>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCCE5E0027D
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 13:30:53 -0700 (PDT)
Received: by yenl5 with SMTP id l5so11927030yen.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 13:30:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=THQDv2qJ3IgUzynS6fM2YhYCWoOg+AsT/d47Et/4K24=;
	b=Siin6COEDlIrs1TMLP5jDxxgFFKT/R5nxuWyfbywwgGt+TPkeVs0IwTWAcSNvn0Gpg
	8rPvhaxQgvZtVdWYF8oDl3dMJzV3RMNOUhJlpcEoVafBAqFJWs+btxi5LO/NP3JG93O+
	F4f7IKuMwU2d43AACaBQY697wcSWrO3ldxN1q9ssWCUM8nmT/1UASG0Ha+2n0W6GGt2X
	0e4kMyu2Vi9OAJAnTF9rje9cPhpGlju/n2/vv3UcOdV1qG2TTF17tFx9F9OdgtdiHyBL
	JG9fZk78is7YKTi30hvHQtsh2bhwoYpiAaMsJrXHnMrpJNuiWQxYAbRdnjKTDZYBMws/
	6cig==
Received: by 10.50.87.138 with SMTP id ay10mr9473659igb.43.1341865853146; Mon,
	09 Jul 2012 13:30:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.98.162 with HTTP; Mon, 9 Jul 2012 13:30:31 -0700 (PDT)
X-Originating-IP: [79.117.115.156]
In-Reply-To: <038FDF66-7E05-42E1-9B22-EA8486BC8AC4@keylevel.com>
References: <038FDF66-7E05-42E1-9B22-EA8486BC8AC4@keylevel.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 9 Jul 2012 23:30:31 +0300
Message-ID: <CAK18fxFbtE0Rw7T8ezDzsTxDFcs5X9wyWtdris0Ow4hCTKxG0g@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQlY5uRQ6AXkbgdEr1NZA94IS1mvI9eDsA8nycnZQSYiexSUz3FaHL57VMwt1FeCwAbpOV5q
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
X-List-Received-Date: Mon, 09 Jul 2012 20:30:54 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba67383554904c46b7d37

--e89a8f3ba67383554904c46b7d37
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 27, 2012 at 12:47 AM, Chris Tapp <opensource@keylevel.com>wrote:

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
>
It works for me.

@g

--e89a8f3ba67383554904c46b7d37
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Wed, Jun 27, 2012 at 12:47 AM, Chris Tapp <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:opensource@keylevel.com" target=3D"_bl=
ank">opensource@keylevel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">

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
<br></blockquote><div><br></div><div>It works for me.</div><div><br></div><=
div>@g=A0</div></div><br>

--e89a8f3ba67383554904c46b7d37--
