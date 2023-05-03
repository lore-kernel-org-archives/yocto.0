Return-Path: <antabboud@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D509CC77B75
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 16:05:50 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.23928.1683129946977126684
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 09:05:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=JyPcVovf;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: antabboud@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1929818d7faso5207843fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 09:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683129946; x=1685721946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GyNhkN2Y1OtXC23l+u4fxx3AigV8Tj5i6COxNB7RHmk=;
        b=JyPcVovf5AlN+S4DblCNp0iqFVY0t4aO91BtbnJVnqObhDdp5vHZdQ5oBdGvPzOsi2
         Q6CZ+tm0EY+0l7fE0/2Vkvjzo0NJXWVYvPKIn0NIe/GG6mvGEap8BiO94Bi4rV7/dCmj
         oOaNe6KdePx3xwBTBQUmYk1bUthczposHuFGQYsU/nwfXLvDpEzcQlMAYNTS+GosgjPv
         qQwyEIM9FQaJ2crlIrh8eU4n0djDgK76srgl3y+D41ltM7x4mpdFlL0Z20QZeCSVwfbo
         KTMGJvr2crhVzRecHt8Asx4LzBiBve0YYxpa5PPnO9dL3F9HLCC5uwit0J6s9PX/TnUt
         jj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683129946; x=1685721946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GyNhkN2Y1OtXC23l+u4fxx3AigV8Tj5i6COxNB7RHmk=;
        b=G83x4vJK83pGwoLzW4VdJ25Eie41huy3gy6DOb9Ar9NNn0PWY8ms6GRj9zEFdbT6E4
         TVrG4ZjpZMN3w6d/niBh9VjPPB4VIM93e/wDBfyYx2aN33qMLwNeM8szLCX6o3RaQgWR
         I5JmjKhNYzh84YygT0KphLQj6j/6Y4JmP9g2IPPtH36VukrDg73FEAo38/6ywxX28Rb/
         3Tp66Do/lN9dvmxGUGLLTqjaVliayJg8XO9Y7MeiFwOhhSmfWS+vGggog8/jLEDlbDnF
         Rap6zqyfYx77sXNljfd7xHD76FI4jkXLozLKLOJKZ6lqe8SId//4kq+2pUC0x7iO92fQ
         1fiA==
X-Gm-Message-State: AC+VfDxbhT1ZWmMMKVOApCvvFgcJRHit3ScBs3MYiQvanEatM/B1cznu
	Yp1G8r1c+enquuumVIZFgJZvnjRf2fB9BovIVmQ=
X-Google-Smtp-Source: ACHHUZ50hBB+qOQpT/P+zpmivjMITFFhSDmjLKfgGoAJw1Tf3uNPq/st/JZnuAnEdAE4zSXk8litEBaBm96SHf04+LA=
X-Received: by 2002:aca:a8c7:0:b0:390:7dca:b472 with SMTP id
 r190-20020acaa8c7000000b003907dcab472mr295773oie.5.1683129944531; Wed, 03 May
 2023 09:05:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
 <14190.1683101564095576045@lists.yoctoproject.org> <CAEt6NwqRD-M4n088HQnFDsvmKEWZ5kVcZgeT3=mSSuO-+hCC9A@mail.gmail.com>
In-Reply-To: <CAEt6NwqRD-M4n088HQnFDsvmKEWZ5kVcZgeT3=mSSuO-+hCC9A@mail.gmail.com>
From: Anthony Abboud <antabboud@gmail.com>
Date: Wed, 3 May 2023 12:05:33 -0400
Message-ID: <CAEAv8SDsJZKwiPQxj_-zFzoDvC8s4xpbmYZ2aJKQyO5DAdQOeA@mail.gmail.com>
Subject: Re: [yocto] Trouble Adding Files to rootfs
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000074686d05facc3a04"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 16:05:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59855

--00000000000074686d05facc3a04
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thank you all for your contribution to this thread.
Following this, here's what I have tried so far that HAS NOT worked.
1. The initial code of this post as a separate recipe.
2. The initial code of this post as a .bbappend.
3. The example shown here:
http://embeddedguruji.blogspot.com/2019/02/yocto-recipe-to-copy-single-file=
-on.html
4. The format of the recipe as shown here:
https://stackoverflow.com/questions/62635557/add-files-to-system-image-in-y=
octo
5. Other similar scripts around StackOverflow

Basically, none of them showed usage of adding the S=3D${WORKDIR} line.

Upon using it, the files transferred to the rootfs build successfully.

First thing I tried was the following recipe with an absolute path:

```
SUMMARY =3D "filesystem"
DESCRIPTION =3D "Copy gui and relevant scripts"
LICENSE =3D "CLOSED"

inherit allarch

MY_FILES =3D
/home/<user>/oe-core/layers/meta-custom-gui/recipes-gui/gui/files"

do_install() {

install -d {D}/etc

install -m 0755 ${MY_FILES}/fb.modes ${D}/etc

# Same thing for other files

}

FILES_${PN} +=3D " \

/etc \

# Same thing for other files

"

Then in build/local.conf: CORE_IMAGE_EXTRA_INSTALL +=3D " filesystem "
```

And this recipe worked.
So I figured it probably has to do with the pathing, so rewrote my initial
code by adding S=3D${WORKDIR} like you all suggested, here is my final
working recipe.

```
SUMMARY =3D "filesystem"
DESCRIPTION =3D "Copy gui and relevant scripts"
LICENSE =3D "CLOSED"

SRC_URI +=3D " \

file://qt_app \

file://startup.sh \

file://fb.modes \

"

S =3D "${WORKDIR}"

do_install() {

install -d 0644 ${D}/home/root

install -m 0755 ${WORKDIR}/qt_app ${D}/home/root

install -d 0644 ${D}/etc/init.d

install -m 0755 ${WORKDIR}/startup.sh ${D}/etc/init.d


install -m 0755 ${WORKDIR}/fb.modes ${D}/etc

}

FILES_${PN} +=3D " \

/home/root/qt_app \

/etc/init.d/startup.sh \

/etc/fb.modes \

"

Then in build/local.conf: CORE_IMAGE_EXTRA_APPEND +=3D " filesystem "
```

So a few observations and follow-up questions on this:
1. Adding S=3D${WORKDIR} did the trick. Why is that? I don't use S anywhere
in my do_install().
2. In order to copy a bash script, I had to add RDEPENDS_${PN} +=3D " bash =
"
to this secondary recipe.
3. In order to copy my Qt app, I also had to add its Qt dependencies as in
(2). Why do I need everything's dependencies even if I only wish to do a
copy in the rootfs?
4. Some of you have been suggesting adding the recipe to
CORE_IMAGE_EXTRA_INSTALL or CORE_IMAGE_EXTRA_APPEND. Both give me the same
result. Is there a fundamental difference?
4. To setup Yocto, I used Toradex's manifest for the Dunfell version, which
uses Yocto v3.1 LTS since I'm working on an Apalis iMX6 board:
https://developer.toradex.com/linux-bsp/os-development/build-yocto/build-a-=
reference-image-with-yocto-projectopenembedded

Thank you all again and I hope this helps others.
Anthony

On Wed, May 3, 2023 at 4:33=E2=80=AFAM Josef Holzmayr <jester@theyoctojeste=
r.info>
wrote:

> My guess is that you are on a recent release, which as changed syntax. To
> add files to packages, you need:
>
> FILES:${PN} +=3D ...
>
> But I agree with the other responders, please be as precise as possible.
> Name your used versions please, for one thing.
> The other part is that things will not be added to an image automatically
> just because you wrote a recipe. You have to add them explicitly. Its a b=
it
> dated by now, but I think most of this is explained in the various
> livecoding sessions:
> https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfy=
j
>
> Greetz
>
>
> On Wed, May 3, 2023 at 10:12=E2=80=AFAM MOHAMMED HASSAN <hassanchattarki@=
gmail.com>
> wrote:
>
>> On Tue, May 2, 2023 at 03:17 PM, Anthony Abboud wrote:
>>
>> HI Yocto Community,
>>
>> I am currently working on build a custom Boot2Qt image to learn about
>> How-To's since it's my first time playing with Yocto. I am successfully
>> able to build an image for my system; manually inserting and launching m=
y
>> Qt application works great.
>>
>> Now I want to include this app and some files into the rootfs of the
>> image. I modified the recipe by adding the following lines at the end to
>> attempt this:
>>
>> ```
>>
>> Ignore my previous posts Ive made some mistakes there.
>> 1) Create a custom recipe file.
>>
>>
>> SRC_URI +=3D " \
>> file://qtApp_qml \
>> file://startup.sh \
>> file://fb.modes \
>> "
>>
>>
>> Add line S=3D"${WORKDIR}"
>>
>>
>> do_install() {
>>   install -d ${D}/home/root
>>   install -m 755 ${WORKDIR}/qtApp_qml ${D}/home/root/
>>
>>   install -d ${D}/etc/init.d
>>   install -m 755 ${WORKDIR}/startup.sh ${D}/etc/init.d/
>>
>>   install -d ${D}/etc
>>   install -m 755 ${WORKDIR}/fb.modes ${D}/etc/
>> }
>>
>> FILES_${PN} +=3D " \
>>         /home/root/qtApp_qml \
>>         /etc/init.d/startup.sh \
>>         /etc/fb.modes \
>> "
>> ```
>>
>>
>> Run bitbake recipename
>> If it runs successfully,  then add the below in your local.conf folder.
>> CORE_IMAGE_EXTRA_INSTALL_append +=3D " recipename "
>> Next bitbake target
>>
>>
>> But I'm simply unable to get those three files to show up at all in the
>> final build (both the folders and files!).
>>
>> I've tried a few variations I saw around but still nothing. Any idea
>> what's missing?
>>
>> Would it be possible for you to share what changes you have tried. To be
>> honest I am a beginner too and want too learn more, so I got curious.
>> Also the above will most probably work, but in case you solve it with an=
y
>> other method, then please post here for other's reference.
>>
>>
>>
>> Thanks!
>> Anthony
>>
>>
>> Best Regards,
>> Hassan
>>
>>
>>
>>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59851):
> https://lists.yoctoproject.org/g/yocto/message/59851
> Mute This Topic: https://lists.yoctoproject.org/mt/98649960/7620545
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> antabboud@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
*Anthony Abboud*
*B Eng., CEP, LSSGB*
Senior Software Engineering, R&D - Boston Scientific Corporation

*+1 (514) 224-4477*

--00000000000074686d05facc3a04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Thank you all for your contribution=
 to this thread.</div><div>Following this, here&#39;s what I have tried so =
far that HAS NOT worked.</div><div>1. The initial code of this post as a se=
parate recipe.</div><div>2. The initial code of this post as a .bbappend.</=
div><div>3. The example shown here:=C2=A0<a href=3D"http://embeddedguruji.b=
logspot.com/2019/02/yocto-recipe-to-copy-single-file-on.html">http://embedd=
edguruji.blogspot.com/2019/02/yocto-recipe-to-copy-single-file-on.html</a><=
/div><div>4. The format of the recipe as shown here:=C2=A0<a href=3D"https:=
//stackoverflow.com/questions/62635557/add-files-to-system-image-in-yocto">=
https://stackoverflow.com/questions/62635557/add-files-to-system-image-in-y=
octo</a></div><div>5. Other similar scripts around StackOverflow</div><div>=
<br></div><div>Basically, none of them showed usage of adding the S=3D${WOR=
KDIR} line.</div><div><br></div><div>Upon using it, the files transferred t=
o the rootfs build successfully.</div><div><br></div><div>First thing I tri=
ed was the following recipe with an absolute path:</div><div><br></div><div=
><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,=
Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">```</span><=
br></div><div><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetic=
a Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap=
">SUMMARY =3D &quot;filesystem&quot;</span></div><div><span style=3D"color:=
rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-s=
erif;font-size:14px;white-space:pre-wrap">DESCRIPTION =3D &quot;Copy gui an=
d relevant scripts&quot;</span></div><div><span style=3D"color:rgb(51,51,51=
);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-si=
ze:14px;white-space:pre-wrap">LICENSE =3D &quot;CLOSED&quot;</span></div><d=
iv><br></div><div>inherit allarch</div><div><br></div><div>MY_FILES =3D /ho=
me/&lt;user&gt;/oe-core/layers/meta-custom-gui/recipes-gui/gui/files&quot;<=
/div><div><br></div><div>do_install() {</div><div><blockquote style=3D"marg=
in:0 0 0 40px;border:none;padding:0px"><div>install -d {D}/etc</div></block=
quote><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div>=
install -m 0755 ${MY_FILES}/fb.modes ${D}/etc</div></blockquote><blockquote=
 style=3D"margin:0 0 0 40px;border:none;padding:0px"><div># Same thing for =
other files</div></blockquote></div><div>}</div><div><br></div><div>FILES_$=
{PN}=C2=A0+=3D &quot; \</div><div><blockquote style=3D"margin:0 0 0 40px;bo=
rder:none;padding:0px"><div>/etc \</div></blockquote><blockquote style=3D"m=
argin:0 0 0 40px;border:none;padding:0px"><div># Same thing for other files=
</div></blockquote>&quot;<br></div><div><br></div><div>Then in build/local.=
conf: CORE_IMAGE_EXTRA_INSTALL=C2=A0+=3D &quot; filesystem &quot;</div><div=
><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,=
Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">```</span>=
=C2=A0=C2=A0<span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica =
Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">=
<br></span></div><div><br></div><div>And this recipe worked.</div><div>So I=
 figured it probably has to do with the pathing, so rewrote my initial code=
 by adding S=3D${WORKDIR} like you all suggested, here is my final working =
recipe.</div><div><br></div><div><div><span style=3D"color:rgb(51,51,51);fo=
nt-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:1=
4px;white-space:pre-wrap">```</span><br></div><div><span style=3D"color:rgb=
(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-seri=
f;font-size:14px;white-space:pre-wrap">SUMMARY =3D &quot;filesystem&quot;</=
span></div><div><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvet=
ica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wr=
ap">DESCRIPTION =3D &quot;Copy gui and relevant scripts&quot;</span></div><=
div><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quo=
t;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">LICENSE =
=3D &quot;CLOSED&quot;</span></div><div><br></div><div>SRC_URI=C2=A0+=3D &q=
uot; \</div></div><blockquote style=3D"margin:0 0 0 40px;border:none;paddin=
g:0px"><div><div>file://qt_app \</div></div></blockquote><blockquote style=
=3D"margin:0 0 0 40px;border:none;padding:0px"><div>file://startup.sh \</di=
v></blockquote><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0=
px"><div>file://fb.modes \</div></blockquote>&quot;<div><br></div><div>S =
=3D &quot;${WORKDIR}&quot;</div><div><br></div><div><div>do_install() {<br>=
</div><div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding=
:0px"><div>install -d 0644 ${D}/home/root</div></blockquote><blockquote sty=
le=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>install -m 0755=
 ${WORKDIR}/qt_app ${D}/home/root</div><div><br></div></blockquote><blockqu=
ote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>install =
-d 0644 ${D}/etc/init.d</div></blockquote><blockquote style=3D"margin:0px 0=
px 0px 40px;border:none;padding:0px"><div>install -m 0755 ${WORKDIR}/startu=
p.sh ${D}/etc/init.d</div></blockquote><blockquote style=3D"margin:0px 0px =
0px 40px;border:none;padding:0px"><br></blockquote><blockquote style=3D"mar=
gin:0px 0px 0px 40px;border:none;padding:0px"><div>install -m 0755 ${WORKDI=
R}/fb.modes ${D}/etc</div></blockquote></div><div>}</div><div><br></div><di=
v>FILES_${PN}=C2=A0+=3D &quot; \</div></div><blockquote style=3D"margin:0 0=
 0 40px;border:none;padding:0px"><div><div>/home/root/qt_app \</div></div><=
/blockquote><div><div><blockquote style=3D"margin:0px 0px 0px 40px;border:n=
one;padding:0px"><div>/etc/init.d/startup.sh \</div></blockquote><blockquot=
e style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>/etc/fb.mo=
des \</div></blockquote>&quot;<br></div><div><br></div><div>Then in build/l=
ocal.conf: CORE_IMAGE_EXTRA_APPEND +=3D &quot; filesystem &quot;</div><div>=
<span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,H=
elvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">```</span>=
=C2=A0=C2=A0</div></div><div><br></div><div>So a few observations and follo=
w-up questions on this:</div><div>1. Adding S=3D${WORKDIR} did the trick. W=
hy is that? I don&#39;t use S anywhere in my do_install().</div><div>2. In =
order to copy a bash script, I had to add RDEPENDS_${PN}=C2=A0+=3D &quot; b=
ash &quot; to this secondary recipe.=C2=A0</div><div>3. In order to copy my=
 Qt app, I also had to add its Qt dependencies as in (2). Why do I need eve=
rything&#39;s dependencies even if I only wish to do a copy in the rootfs?<=
/div><div>4. Some of you have been suggesting adding the recipe to CORE_IMA=
GE_EXTRA_INSTALL or CORE_IMAGE_EXTRA_APPEND. Both give me the same result. =
Is there a fundamental=C2=A0difference?</div><div>4. To setup=C2=A0Yocto, I=
 used Toradex&#39;s manifest for the Dunfell version, which uses Yocto v3.1=
 LTS since I&#39;m working on an Apalis iMX6 board:=C2=A0<a href=3D"https:/=
/developer.toradex.com/linux-bsp/os-development/build-yocto/build-a-referen=
ce-image-with-yocto-projectopenembedded">https://developer.toradex.com/linu=
x-bsp/os-development/build-yocto/build-a-reference-image-with-yocto-project=
openembedded</a></div><div><br></div><div>Thank you all again and I hope th=
is helps others.</div><div>Anthony</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 3, 2023 at 4:33=E2=80=
=AFAM Josef Holzmayr &lt;<a href=3D"mailto:jester@theyoctojester.info">jest=
er@theyoctojester.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">My guess is that you are on a recent=
 release, which as changed syntax. To add files to packages, you need:<div>=
<br></div><div>FILES:${PN}=C2=A0<a class=3D"gmail_plusreply" id=3D"m_-82866=
72862202817824plusReplyChip-0">+=3D ...</a></div><div><a class=3D"gmail_plu=
sreply"><br></a></div><div>But I agree with the other responders, please be=
 as precise as possible. Name your used versions please, for one thing.</di=
v><div>The other part is that things will not be added to an image automati=
cally just because you wrote a recipe. You have to add them explicitly. Its=
 a bit dated by now, but I think most of this is explained in the various l=
ivecoding sessions:=C2=A0<a href=3D"https://www.youtube.com/playlist?list=
=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj" target=3D"_blank">https://www.youtub=
e.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj</a></div><div><br>=
</div><div>Greetz</div><div><a class=3D"gmail_plusreply"><br></a></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, May 3, 2023 at 10:12=E2=80=AFAM MOHAMMED HASSAN &lt;<a href=3D"mailto:h=
assanchattarki@gmail.com" target=3D"_blank">hassanchattarki@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue=
, May 2, 2023 at 03:17 PM, Anthony Abboud wrote:<br>
<blockquote>
<div dir=3D"ltr">HI Yocto Community,
<div>=C2=A0</div>
<div>I am currently working on build a custom Boot2Qt image to learn about =
How-To&#39;s since it&#39;s my first time playing with Yocto. I am successf=
ully able to build an image for my system; manually inserting and launching=
 my Qt application works great.</div>
<div>=C2=A0</div>
<div>Now I want to include this app and some files into the rootfs of the i=
mage. I modified the recipe by adding the following lines at the end to att=
empt this:</div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">```<br>=
</span></div>
</div>
</blockquote>
Ignore my previous posts Ive made some mistakes there.<br>1) Create a custo=
m recipe file.<br>
<blockquote>
<div dir=3D"ltr">
<div><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap"></span>=
<br style=3D"box-sizing:border-box;color:rgb(51,51,51);font-family:&quot;He=
lvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pr=
e-wrap">SRC_URI +=3D &quot; \<br>file://qtApp_qml \<br>file://startup.sh \<=
br>file://fb.modes \ <br>&quot;</div>
<div>=C2=A0</div>
</div>
</blockquote>
Add line S=3D&quot;${WORKDIR}&quot;<br>
<blockquote>
<div dir=3D"ltr">
<div><br>do_install() {<br>=C2=A0 install -d ${D}/home/root<br>=C2=A0 insta=
ll -m 755 ${WORKDIR}/qtApp_qml ${D}/home/root/<br>=C2=A0 <br>=C2=A0 install=
 -d ${D}/etc/init.d<br>=C2=A0 install -m 755 ${WORKDIR}/startup.sh ${D}/etc=
/init.d/<br>=C2=A0 <br>=C2=A0 install -d ${D}/etc<br>=C2=A0 install -m 755 =
${WORKDIR}/fb.modes ${D}/etc/<br>}<br><br>FILES_${PN} +=3D &quot; \<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 /home/root/qtApp_qml \<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /etc/init.d/startup.sh \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/fb.modes \=
<br>&quot;<br style=3D"box-sizing:border-box;color:rgb(51,51,51);font-famil=
y:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;whit=
e-space:pre-wrap"><span style=3D"color:rgb(51,51,51);font-family:&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-=
wrap">```</span></div>
<div>
<div>=C2=A0</div>
</div>
</div>
</blockquote>
Run bitbake recipename<br>If it runs successfully,=C2=A0 then add the below=
 in your local.conf folder.<br>CORE_IMAGE_EXTRA_INSTALL_append +=3D &quot; =
recipename &quot;<br>Next bitbake target<br>
<blockquote>
<div dir=3D"ltr">
<div>
<div>=C2=A0</div>
<div>But I&#39;m simply unable to get those three files to show up at all i=
n the final build (both the folders and files!).</div>
<div>=C2=A0</div>
<div>I&#39;ve tried a few variations I saw around but still nothing. Any id=
ea what&#39;s missing?</div>
</div>
</div>
</blockquote>
Would it be possible for you to share what changes you have tried. To be ho=
nest I am a beginner too and want too learn more, so I got curious.<br>Also=
 the above will most probably work, but in case you solve it with any other=
 method, then please post here for other&#39;s reference.=C2=A0<br>
<blockquote>
<div dir=3D"ltr">
<div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>Thanks!</div>
<div>Anthony</div>
</div>
</div>
</blockquote>
<br>Best Regards,<br>Hassan<br>
<blockquote>
<div dir=3D"ltr">
<div>
<div>=C2=A0</div>
</div>
</div>
</blockquote>
<br>
<br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59851): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59851" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59851</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98649960/7620=
545" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98649960/7620545</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:antabboud@gmail.com" target=3D"_blank">antabboud=
@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>=
<span style=3D"font-family:verdana,sans-serif"><b><font size=3D"4">Anthony =
Abboud</font></b></span></div><div><div><b>B Eng., CEP, LSSGB</b></div><div=
>Senior Software Engineering, R&amp;D - Boston Scientific Corporation</div>=
</div><div><br><b>+1 (514) 224-4477</b></div></div></div></div></div></div>=
</div></div></div></div></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div></div></div></div></div></div></div>=
</div></div></div></div></div></div>

--00000000000074686d05facc3a04--

