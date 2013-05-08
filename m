Return-Path: <andrei@gherzan.ro>
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CC30E01476
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 04:00:22 -0700 (PDT)
Received: by mail-ob0-f172.google.com with SMTP id fb19so378688obc.3
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 04:00:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=0ssG6oXY4yujD+tgWgpw1zF0uk2wZshxa383D9Qradk=;
	b=TFoPTGTrE5k4LQpylw9xBGp2N+8VgftzDudIaGeMcJF2tDbovvf9DzWBV0N8tlABFU
	ZjrGfHWChugv3r5e4PYO17JDGIEYexHzBju8oud7RD/JGEvkCpup1v0u/fX2QERsAaP+
	GfqFbdTE9Nzod0DZkyFZZvuFwPVYb6nIAjHrEVONgcgpzQAr9DdX3vnpFke0DjZHlYw9
	LVHn9S4pHpEX2uZizyRsM+00P9gNiMtg0ydY65hGr5ajULpO9Mtt6b0A7cY1Pi8EUt3V
	kcOnUzeZgxIB9Z0hB8tXMbMXeN95STHOcALM04vgFMl43cx7/19fZ+07yGvseh5b+vTu
	gvhg==
X-Received: by 10.60.58.99 with SMTP id p3mr1851613oeq.23.1368010821813; Wed,
	08 May 2013 04:00:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.108.242 with HTTP; Wed, 8 May 2013 04:00:01 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CANyK_8fdJg9PehiJ4mG+ES4nfYfJR+ML0FhCQf0nfAMeF0jnuQ@mail.gmail.com>
References: <1367591703-9582-1-git-send-email-paul@paulbarker.me.uk>
	<CAK18fxE3h2mH6N3y4+jsjCDQci4X1bvtQXd8=PvOGL1XoB+0qw@mail.gmail.com>
	<CANyK_8fdJg9PehiJ4mG+ES4nfYfJR+ML0FhCQf0nfAMeF0jnuQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 8 May 2013 14:00:01 +0300
Message-ID: <CAK18fxE1tsUgHc395PHMZHWxAOgDOMUc+-E1R7cyM3xn7c2Jsw@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQkoFhsDpT5PpnQZi3mUx8Tr3jYppG7urN8DcNtxmu9HRD5feTcOKFr3O1BSry6FTdNov+sd
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-gpio: renamed from RPi-GPIO
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
X-List-Received-Date: Wed, 08 May 2013 11:00:22 -0000
Content-Type: multipart/alternative; boundary=089e013d0758155e7a04dc32d727

--089e013d0758155e7a04dc32d727
Content-Type: text/plain; charset=ISO-8859-1

On Wed, May 8, 2013 at 12:17 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 7 May 2013 12:45, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Could you please resend it with - M?
> >
>
> Done, still not entirely used to git format-patch and git send-email.
> Will try putting it in my config as the default.
>
> Thank you.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e013d0758155e7a04dc32d727
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, May 8, 2013 at 12:17 PM, Paul Barker <span dir=3D"ltr">&lt;=
<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.=
me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 7 May 2013 12:45, Andre=
i Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt=
; wrote:<br>


&gt; Could you please resend it with - M?<br>
&gt;<br>
<br>
</div>Done, still not entirely used to git format-patch and git send-email.=
<br>
Will try putting it in my config as the default.<br><br></blockquote><div s=
tyle>Thank you.=A0</div></div><div><br></div>-- <br><div dir=3D"ltr"><div s=
tyle=3D"text-align:center"></div><div style=3D"text-align:center"><div alig=
n=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"=
>

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--089e013d0758155e7a04dc32d727--
