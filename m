Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46162E00BE1; Wed, 11 Jun 2014 00:39:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FE4EE00B78
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 00:39:38 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id q59so3425629wes.27
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 00:39:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=yw2o8gHtK5BJWKQJMBfaiZzX1bV5bBflCP/j0CFsGoE=;
	b=X0FmqyVDBVg/xrKltVa7zyDKJe/rkymTzeMatXW16WpU3TxtQQEV+Gk3BV3QcmHYis
	HoAFt+b20bdffmowcBU2N919ZcL/EFkkwzoSWbp7Xp8o71S9vU5N7uN+QAuDO3Y1aKoX
	1zis54rFW4q5KTNlFNHfARuja6m3zcY2rA+xGOfEnibwvrX8ZRUQCDu7aDtNdS8J5oSt
	8yPb9OENIL4rJayU6hjt6hXm2WOBJgF+F4FT/D/bebq1gl4vMv6W4Z8c0lOzxnDG0RWn
	3skYBSL8amvkdJR1i77DrbRXEHQTf9fbAjjeLEGuycr8Bd7UC67IZcBnJxuSi/AOZKB8
	g6NA==
X-Gm-Message-State: ALoCoQlugC7BkQb5+BHpgNAoImQLE7jRrNGI1S8JXWLEWB9tUBGkGLJDCgjaT2IUGGZvhfNl2OCF
X-Received: by 10.180.81.1 with SMTP id v1mr7573129wix.10.1402472377096; Wed,
	11 Jun 2014 00:39:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Wed, 11 Jun 2014 00:39:17 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <53979785.3070306@dynamicdevices.co.uk>
References: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
	<ba540e1080aef15beea1ccb15129f80222e9cb06.1400594463.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxFixNCCVRt7An58rZSukfmcziprGitd6fFywkfeiupAww@mail.gmail.com>
	<53979785.3070306@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Jun 2014 10:39:17 +0300
Message-ID: <CAK18fxHd8V8Dm+tVUBC_mfxuwunjok-Y=J4oamC4nmgrYDVStQ@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] pi-blaster: Added recipe
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
X-List-Received-Date: Wed, 11 Jun 2014 07:39:50 -0000
Content-Type: multipart/alternative; boundary=f46d044306a0d8559504fb8a8be2

--f46d044306a0d8559504fb8a8be2
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 11, 2014 at 2:40 AM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 10/06/2014 20:52, Andrei Gherzan wrote:
> > Hello,
> >
> > Found this "guy" here in the meanwhile. Sorry for missing it.
> >
> >
>
> Fair comment. I am somewhat in the dark as to the usefulness of the 0/1
> covernote myself. I usually provide it as that's what seems to be
> required by use of the recommended create-pull-request but sometimes I
> feel it's overkill (?)
>

Agreed. I don't use covernote generally. Only for very big pull requests
that really need additional info for the whole "package". But for small
pullreqs, I only send the actual patches. For me, seems enough.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d044306a0d8559504fb8a8be2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jun 11, 2014 at 2:40 AM, Alex J Lennon <span dir=3D"ltr">&l=
t;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlenn=
on@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
On 10/06/2014 20:52, Andrei Gherzan wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; Found this &quot;guy&quot; here in the meanwhile. Sorry for missing it=
.<br>
&gt;<br>
&gt;<br>
<br>
Fair comment. I am somewhat in the dark as to the usefulness of the 0/1<br>
covernote myself. I usually provide it as that&#39;s what seems to be<br>
required by use of the recommended create-pull-request but sometimes I<br>
feel it&#39;s overkill (?)<br></blockquote><div><br></div><div>Agreed. I do=
n&#39;t use covernote generally. Only for very big pull requests that reall=
y need additional info for the whole &quot;package&quot;. But for small pul=
lreqs, I only send the actual patches. For me, seems enough.</div>

</div><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:cente=
r"></div><div style=3D"text-align:center"><div align=3D"left" style=3D"font=
-family:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(5=
1,51,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherza=
n</b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =C2=A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--f46d044306a0d8559504fb8a8be2--
