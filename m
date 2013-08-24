Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C639E003D2
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 17:05:30 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id l12so1021445wiv.13
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 17:05:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=48jD1MUwEUDXC6BbfiGMX0zRrlj0hCOuaEVNxsTIlIA=;
	b=FxZDibxeuLW7kyJkeQ+Op4VOzuqn/eH7YcF/OLtACsqRRhKshITnTRvUbPErJU0aw7
	EtTBcsZcOqN0d8wOu6YPT2Pjqh8sLsgrsSCr+HbeQKWDgurYxCu1vD2uEcESsLWrlEZY
	mSlVpcn26eR6rXKZOg6vYMldIYJpW0oSl3z1LQxirqYSw74G5GOhz0MFR9CQG3rHZwB5
	+S3vOY9djoXcz29pAHdLGUz9sWESN2kzPpyLKaYp2ElPXuAmyPJ4BWeHqBx58LnQLE9u
	tPTP+K5foa4MiODUpHIVQgtcZnh05lP4c3/IoyUIqM5ZYNFRGQxs/FTc2kwP0VQIJ6UU
	l/Ug==
X-Gm-Message-State: ALoCoQlXJCB2ASbfPFp4RYs8Jkcf74uFkWGYb6Uej1pQks00Pl1lwLwDxSA0zFda5Y+8EMeA/8Nv
X-Received: by 10.180.104.33 with SMTP id gb1mr1540771wib.25.1377302729472;
	Fri, 23 Aug 2013 17:05:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Fri, 23 Aug 2013 17:05:09 -0700 (PDT)
X-Originating-IP: [92.86.21.113]
In-Reply-To: <CANyK_8c5n3wu7Q0JNCjx-nPpQxReZuMP7wZL7fNAJZY52WdmyA@mail.gmail.com>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
	<1377018158-2983-2-git-send-email-andrei@gherzan.ro>
	<CANyK_8c5n3wu7Q0JNCjx-nPpQxReZuMP7wZL7fNAJZY52WdmyA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 24 Aug 2013 03:05:09 +0300
Message-ID: <CAK18fxHvwOUMh0z76oMe+GkoWkFg7Dq-jUG6zr6u8tR42C-t7Q@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 02/11] linux-raspberrypi: Update to 2013-08-20 rpi-3.6.y's and rpi-3.2.27's snapshot
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
X-List-Received-Date: Sat, 24 Aug 2013 00:05:31 -0000
Content-Type: multipart/alternative; boundary=f46d0442678ef0533604e4a647c9

--f46d0442678ef0533604e4a647c9
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 23, 2013 at 12:40 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 20 August 2013 18:02, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>
> I also got a successful boot with commit
> d996a1b91b2bf3dc06f4f4f822a56f4496457aa1 on the 3.8.y branch, it was
> HEAD at the time I checked it out and the Makefile says it's version
> 3.8.13. Perhaps we could add this as an alternative kernel version,
> even if we keep the default as is.
>

Agreed. I thought 3.8 was WIP and i didn't have time to test it. But if you
already did it, please push a patch and add a preferred version.
Thanks.


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d0442678ef0533604e4a647c9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Fri, Aug 23, 2013 at 12:40 PM, Paul Barker <span dir=3D"ltr">&lt=
;<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker=
.me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On 20 August 2013 18:02, Andrei Gherzan &lt;=
<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro"=
>andrei@gherzan.ro</a>&gt;<br>
<br>
I also got a successful boot with commit<br>
d996a1b91b2bf3dc06f4f4f822a56f4496457aa1 on the 3.8.y branch, it was<br>
HEAD at the time I checked it out and the Makefile says it&#39;s version<br=
>
3.8.13. Perhaps we could add this as an alternative kernel version,<br>
even if we keep the default as is.<br></blockquote><div><br></div><div styl=
e>Agreed. I thought 3.8 was WIP and i didn&#39;t have time to test it. But =
if you already did it, please push a patch and add a=A0preferred=A0version.=
</div>

<div style>Thanks.</div></div><br clear=3D"all"><div><br></div>-- <br><div =
dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align=
:center"><div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;=
;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--f46d0442678ef0533604e4a647c9--
