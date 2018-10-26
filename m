Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E73AE00BDC; Fri, 26 Oct 2018 01:28:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_FONT_FACE_BAD, 
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HTML_FONT_FACE_BAD BODY: HTML font face is not a word
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 815A5E00AD8
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 01:28:57 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id e3-v6so290544oiy.6
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 01:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=a7d7qhcRe6nYYl9I/JRDzFT0eqkbfV/VpMtKOCGByiM=;
	b=kdAPS0Jg0LJSBcv/YMWJHIC3M5fsPujVSL1zXOnC2lDAhEd0MODnrxmGE678YECudL
	XhRRLx82bMaCDak3DRUs3CDruH4TEMD1na5qLNMomLgMFS+jAsI1GEFaeNDHLVIxALcS
	3mhHlTJWUN1UqkbL1J18PS5aalMEPxSh9kU7PQaZLi5hbmmronaTV6DGZaplTK0yUB4+
	OawFdTvjxjmbBOtVM3Xh8piHsRpZMPOIjAicZwOIRoIqYZFaA6po13/iyCpHJW3HtWnH
	zuy319N2tF8OIdQe+S5AQa7ICGO/awJaiS978XY95Qqk7LAfNW1I1e2rWk5bteNTn6na
	1Crw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=a7d7qhcRe6nYYl9I/JRDzFT0eqkbfV/VpMtKOCGByiM=;
	b=kymAyL8GPZWsFA4txRUBvf/Tz3xb48cY/bVVFtkmtt3XJMBWoz2G/UBu0T48KcQYCE
	8iCVgwJsDIfsakwqQj/kMxPcGdyIolqw1fny4GF7Ky/RMPINEtOHORH1os/A3mwRMOAp
	yUGf118ntILh+hL7e78z78DEoThZnf1Cqz81KIJhLTc/B0xZmIA2a/HmfC8KNfknm/jI
	H1Y5I6Cuv5t62jxXV/0jGjo1P4g/Diof1bfxMhL8EG8VuLi0ggCV73vzkiWRmiiexhW+
	9Jv/nZ4uEfDvH822PhKKIsUIo25KSrNblB6AS/ZpLjv/j8f6Y9l7G52P//n6+b+cio6H
	DKwQ==
X-Gm-Message-State: AGRZ1gKKQEbBsbiDSaXkofkIYG8q5z6NhJQnLwirpJvEeEzbt8Fggai/
	r77mn5M7x2uP9YZeZZTL0ID+4V+FPli7HbXEYhRdKHHh7Og=
X-Google-Smtp-Source: AJdET5c4tpfcthbCmwIZdSa6IyBaJQ61znr/xFigq39Cjl57WuGWKSZNkczHZQJbEKtrafSkwS0ZXElg9awUdD5d7MY=
X-Received: by 2002:a54:4d8b:: with SMTP id
	y11-v6mr1601804oix.168.1540542536455; 
	Fri, 26 Oct 2018 01:28:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8nL7haOo+ogungBB_1hR0rRqNszFkgEHyr_SYE1dq477w@mail.gmail.com>
In-Reply-To: <CAEhQi8nL7haOo+ogungBB_1hR0rRqNszFkgEHyr_SYE1dq477w@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Fri, 26 Oct 2018 10:28:45 +0200
Message-ID: <CAEhQi8=Ocn_uVL5a4ri=9T9YKbNb1gcN3Y=cqK1-dATB7qea1A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [SDK] including kernel devsrc to the SDK failes
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
X-List-Received-Date: Fri, 26 Oct 2018 08:28:58 -0000
Content-Type: multipart/alternative; boundary="000000000000a59a5f05791d82fa"

--000000000000a59a5f05791d82fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So it looks like the number of /bin/awk have increased so the patch will
fix one problem but there is more to fix. I have a "workaround" even though
I am not so sure it is a workaround or not. The problem is fixed adding to
kernel-devsrc.bbappend

do_install_append() {
# This fixes the rpm dependency failure on install of kernel-devsrc
depending on /bin/awk
cd ${D} || true
for i in $(grep -srI "!/bin/awk" | cut -d":" -f1); do
sed -i -e "s#!/bin/awk#!/usr/bin/env awk#g" $i
done
}

The original solution can be found at

https://gerrit.automotivelinux.org/gerrit/gitweb?p=3DAGL/meta-agl.git;a=3Db=
lobdiff;f=3Dmeta-agl-bsp/meta-ti/recipes-kernel/linux/linux-ti-staging_%25.=
bbappend;h=3D43fa494a26c132b875c177acf0389163d5e34c06;hp=3Db2e5431400acef0a=
5372e5490ac4f464482d4b3b;hb=3D4bfc821810cdee47611c6d3e94d771971f51fa75;hpb=
=3D1cf6b17fd15fde569374c85d4df722784f4e9c67

The best solution might be to add kernel patches but since the number of
/bin/awk have increased I think that this is fine in the kernel universe
but a problem in poky universe. So by adding it to kernel-devsrc it will
make sure that when the kernel get's tainted in the future it will not
break the rpm build. This is a "bug" only when using rpm ipk will not
detect it as a problem.

BR
M=C3=A5ns Zigher

Den tors 25 okt. 2018 kl 13:19 skrev M=C3=A5ns Zigher <mans.zigher@gmail.co=
m>:

> Hi,
>
> I am trying to add the kernel devsrc to the SDK but I am getting the
> following error
>
> Problem: conflicting requests
>   - nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.imx8mqevk
>
> I have applied the following patch to try and fix this problem.
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=3D8af11c=
1cdd8fa08217e702b57cf96e9030db52b2
>
> I have verified that it was applied and run kernel-devsrc works. The erro=
r
> is from do_populate_sdk and I am suspecting that the problem is related t=
o
> me using rpm. I believe rpm might be to smart in this case detecting the
> dependency and resulting dnf from failing when running the task
> do_populate_sdk. Any suggestion on how to get forward on this error. I
> would like to run dnf manually to check any dependency of the kernel-devs=
rc
> rpm package but cannot figure out how.
>
> BR
> M=C3=A5ns Zigher
>

--000000000000a59a5f05791d82fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So it looks like the number of /bin/awk have increased so =
the patch will fix one problem but there is more to fix. I have a &quot;wor=
karound&quot; even though I am not so sure it is a workaround or not. The p=
roblem is fixed adding to kernel-devsrc.bbappend<div><br></div><div><span s=
tyle=3D"color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&q=
uot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">do_=
install_append() {</span><br style=3D"box-sizing:border-box;color:rgb(36,41=
,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helv=
etica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&q=
uot;,&quot;Segoe UI Symbol&quot;;font-size:14px"><span style=3D"color:rgb(3=
6,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,=
Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emo=
ji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px"># This fixes the rpm d=
ependency failure on install of kernel-devsrc depending on /bin/awk</span><=
br style=3D"box-sizing:border-box;color:rgb(36,41,46);font-family:-apple-sy=
stem,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&qu=
ot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol=
&quot;;font-size:14px"><span style=3D"color:rgb(36,41,46);font-family:-appl=
e-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Sy=
mbol&quot;;font-size:14px">cd ${D} || true</span><br style=3D"box-sizing:bo=
rder-box;color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&=
quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot=
;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px"><s=
pan style=3D"color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFo=
nt,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&=
quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px=
">for i in $(grep -srI &quot;!/bin/awk&quot; | cut -d&quot;:&quot; -f1); do=
</span><br style=3D"box-sizing:border-box;color:rgb(36,41,46);font-family:-=
apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-s=
erif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe U=
I Symbol&quot;;font-size:14px"><span style=3D"color:rgb(36,41,46);font-fami=
ly:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sa=
ns-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Seg=
oe UI Symbol&quot;;font-size:14px">sed -i -e &quot;s#!/bin/awk#!/usr/bin/en=
v awk#g&quot; $i</span><br style=3D"box-sizing:border-box;color:rgb(36,41,4=
6);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvet=
ica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quo=
t;,&quot;Segoe UI Symbol&quot;;font-size:14px"><span style=3D"color:rgb(36,=
41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,He=
lvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji=
&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">done</span><br style=3D"=
box-sizing:border-box;color:rgb(36,41,46);font-family:-apple-system,BlinkMa=
cSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-=
size:14px"><span style=3D"color:rgb(36,41,46);font-family:-apple-system,Bli=
nkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple=
 Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;f=
ont-size:14px">}</span><br></div><div><span style=3D"color:rgb(36,41,46);fo=
nt-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,A=
rial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&q=
uot;Segoe UI Symbol&quot;;font-size:14px"><br></span></div><div><font color=
=3D"#24292e" face=3D"-apple-system, BlinkMacSystemFont, Segoe UI, Helvetica=
, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol"><s=
pan style=3D"font-size:14px">The original solution=C2=A0can be found at</sp=
an></font></div><div><span style=3D"color:rgb(36,41,46);font-family:-apple-=
system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&=
quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symb=
ol&quot;;font-size:14px"><br></span></div><div><a href=3D"https://gerrit.au=
tomotivelinux.org/gerrit/gitweb?p=3DAGL/meta-agl.git;a=3Dblobdiff;f=3Dmeta-=
agl-bsp/meta-ti/recipes-kernel/linux/linux-ti-staging_%25.bbappend;h=3D43fa=
494a26c132b875c177acf0389163d5e34c06;hp=3Db2e5431400acef0a5372e5490ac4f4644=
82d4b3b;hb=3D4bfc821810cdee47611c6d3e94d771971f51fa75;hpb=3D1cf6b17fd15fde5=
69374c85d4df722784f4e9c67" rel=3D"nofollow" style=3D"box-sizing:border-box;=
color:rgb(3,102,214);outline-width:0px;font-family:-apple-system,BlinkMacSy=
stemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-siz=
e:14px">https://gerrit.automotivelinux.org/gerrit/gitweb?p=3DAGL/meta-agl.g=
it;a=3Dblobdiff;f=3Dmeta-agl-bsp/meta-ti/recipes-kernel/linux/linux-ti-stag=
ing_%25.bbappend;h=3D43fa494a26c132b875c177acf0389163d5e34c06;hp=3Db2e54314=
00acef0a5372e5490ac4f464482d4b3b;hb=3D4bfc821810cdee47611c6d3e94d771971f51f=
a75;hpb=3D1cf6b17fd15fde569374c85d4df722784f4e9c67</a><span style=3D"color:=
rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&q=
uot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe U=
I Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px"><br></span></div>=
<div><br></div><div>The best solution might be to add kernel patches but si=
nce the number of /bin/awk have increased I think that this is fine in the =
kernel universe but a problem in poky universe. So by adding it to kernel-d=
evsrc it will make sure that when the kernel get&#39;s tainted in the futur=
e it will not break the rpm build. This is a &quot;bug&quot; only when usin=
g rpm ipk will not detect it as a problem.</div><div><br></div><div>BR</div=
><div>M=C3=A5ns Zigher=C2=A0</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr">Den tors 25 okt. 2018 kl 13:19 skrev M=C3=A5ns Zigher &lt;<a h=
ref=3D"mailto:mans.zigher@gmail.com">mans.zigher@gmail.com</a>&gt;:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div>Hi,</div><div><br></div><div>I am trying to add the kernel de=
vsrc to the SDK but I am getting the following error</div><div><br></div><d=
iv>Problem: conflicting requests=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br></div><div>=C2=A0 - nothing provides /bin=
/awk needed by kernel-devsrc-1.0-r0.imx8mqevk</div><div><br></div><div>I ha=
ve applied the following patch to try and fix this problem.</div><div><br><=
/div><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/=
commit/?id=3D8af11c1cdd8fa08217e702b57cf96e9030db52b2" target=3D"_blank">ht=
tp://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=3D8af11c1cdd=
8fa08217e702b57cf96e9030db52b2</a><br></div><div><br></div><div>I have veri=
fied that it was applied and run kernel-devsrc works. The error is from do_=
populate_sdk and I am suspecting that the problem is related to me using rp=
m. I believe rpm might be to smart in this case detecting the dependency an=
d resulting dnf from failing when running the task do_populate_sdk. Any sug=
gestion on how to get forward on this error. I would like to run dnf manual=
ly to check any dependency of the kernel-devsrc rpm package but cannot figu=
re out how.</div><div><br></div><div>BR</div><div>M=C3=A5ns Zigher</div></d=
iv></div></div>
</blockquote></div>

--000000000000a59a5f05791d82fa--
