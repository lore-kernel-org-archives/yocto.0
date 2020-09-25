Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
 by mx.groups.io with SMTP id smtpd.web10.163.1601070938420283872
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 14:55:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=i/sXStXM;
 spf=pass (domain: gmail.com, ip: 209.85.167.65, mailfrom: bhstalel@gmail.com)
Received: by mail-lf1-f65.google.com with SMTP id m5so4413617lfp.7
        for <yocto@lists.yoctoproject.org>; Fri, 25 Sep 2020 14:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jJcqOU9Ut+zp+b2mCKO+K1ImIcKgMM7wSh4n9pIu14A=;
        b=i/sXStXMjAftocUeYfJYZk/Z8yAgnFzVwQS+sAsRCb6PvHKgteEE3fKEE+qgYgLmhZ
         ubwQQcYHcUJRGWbRoAwuxpwT57Hssm3p+9yOLJ+t/2e11d/WWTSgTknYW0OnkGi4A9hB
         gxozTPEvyBCne5NS/wqEjANLidvEW6gcMD24isnxB+42Qk8XGd8kjslX7ZvOWwIw6nOt
         gdcAl/YCMSnVABLIBW32w1OhyLEWIrSTu8ycL8MdKzcbFWmW+aCjRb8LFrzu1FRq6zK9
         6WHnRtklBeGwcgvpPVTrPDSDpjrE/nzT5sWtzzFPd3jOx/DmKqWzIjRdkgABSKPfnCTv
         edDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jJcqOU9Ut+zp+b2mCKO+K1ImIcKgMM7wSh4n9pIu14A=;
        b=LKdbMvE5wzJQRsmpQg8/PgH2iZLN8Jt8Wm2YS1PFDOrRj+2RRSdP/Dg+bpGZ4c4gpq
         CxepQtN8uiZjBzNelUbt+CcddDO181V+pGVjMCGFeN6FFmX9/jRqLLngPahAT76bl033
         WvULUfM9OjyJsQCmTi7ZYupDxdULWkwXJj0v4nmsogyg+NRNat6kLc4quByiXwt+ZNIg
         3RPiVW4RaaOlV4n9X2Zj/6rDhVWzarXc2+Knc96sOVm0ihp5m5BAAyyY3RZQ6Ux9hruK
         HuIrzMR1TkT3bIC375ROZ9XXEYJDZMIM1+hNaVkNBs3icNO+iHDEd1Nc9ZjC55sxgoJJ
         d1Kw==
X-Gm-Message-State: AOAM531bNborbC3WYFIduJ0dzw/XPmE23zNlz+wFC5Dxyhd8fffmmTnb
	Z9RzI6oqARKbX8BfmGtTGKV0YXcbCeeyEIfmH4Q=
X-Google-Smtp-Source: ABdhPJy/mx09yTlthrfrfXUSONtYqiUlKvkqGPD90FkVfp8b0CwusqVEIt3hgno5rbuavgpUdxBWDvmGVZRq+h2qIdg=
X-Received: by 2002:ac2:4315:: with SMTP id l21mr293991lfh.494.1601070936337;
 Fri, 25 Sep 2020 14:55:36 -0700 (PDT)
MIME-Version: 1.0
References: <wZbD.1601046731917768605.B1ZA@lists.yoctoproject.org> <20200925160007.rchieyod4atltcy5@qschulz>
In-Reply-To: <20200925160007.rchieyod4atltcy5@qschulz>
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
Date: Fri, 25 Sep 2020 22:55:24 +0100
Message-ID: <CAOgG7m2G86SQdBa2Hi_RDVYE24JCS43n_x5_zE_jxyGdETVjMg@mail.gmail.com>
Subject: Re: [yocto] setup.py no such file or directory
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006bb03505b02a60cb"

--0000000000006bb03505b02a60cb
Content-Type: text/plain; charset="UTF-8"

HI,

I'm trying to make a recipe for wirepas-gateway and wirepas-messaging,
let's take wirepas-messaging for an example , it is so easy :
I'm downloading the
https://github.com/wirepas/backend-apis/tree/master/wrappers/python ,
because https://github.com/wirepas/backend-apis does not contain the
wirepas-messaging package sources directly .
So I'm zipping the sources of
https://github.com/wirepas/backend-apis/tree/master/wrappers/python and
adding it with devtool
After that when I build the recipe it build successfully after fixing the
do_package with adding FILES_${PN} = "/usr/share/*"
So I checked the tmp/work/.../image and the package is correctly installed
into the image destination.
Now when I do devtool finish , it copy paste the same recipe .bb file with
the same SRC_URI, now when I try to build it I get the error of :
/media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/python3-wirepas-messaging/1.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:
can't open file 'setup.py': [Errno 2] No such file or directory

The same SRC_URI:
SRC_URI =
"file:///home/talel/Desktop/backend-apis/wrappers/python/wirepas-messaging.zip"
What is the differnece ? I can't understand.

Thanks, Talel

On Fri, Sep 25, 2020 at 5:00 PM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> On Fri, Sep 25, 2020 at 08:12:11AM -0700, Bel Hadj Salem Talel wrote:
> > Hi Community,
> >
> > I have a python module which I downloaded from github containing a
> setup.py as all python modules.
> > When I create a recipe with devtool it compiles correctly with no
> problem, but when I copy paste the same recipe source from workspace
> recipes to an official meta recipe I got this error :
> > >
> > >
> > >
> /media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/python3-wirepas_messaging/1.4.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:
> > > can't open file 'setup.py': [Errno 2] No such file or directory
> >
> > Here is the recipe by devtool:
> >
> > ##############
> >
> > SUMMARY = "Wirepas gateway transport service that connects the local
> dbus to a remote MQTT broker."
> > HOMEPAGE = "https://github.com/wirepas/gateway"
> > LICENSE = "Apache"
> > LIC_FILES_CHKSUM = "file://LICENSE;md5=cb6bb17b0d0cca188339074207e9f4d8"
> > SRC_URI =
> "file:///media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/files/wirepas_gateway-${PV}/wp-gateway.zip"
>
> If your recipe is in:
>
> /media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/
> and wp-gateway.zip is in:
>
> /media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/files/wirepas_gateway-1.4.0
> just put:
> SRC_URI = "file://wirepas_gateway-${PN}/wp-gateway.zip"
>
> I'd suggest putting your .zip file in:
>
> /media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/wirepas_gateway-1.4.0
> (note the missing files directory), in which case, your SRC_URI would
> be:
> SRC_URI = "file://wp-gateway.zip"
>
> Also... This looks like you're taking code from
> https://github.com/wirepas/gateway ? Have you thought of using the git
> repo directly? e.g. devtool add python3-wirepas-gateway
> https://github.com/wirepas/gateway.git?
>
> It'll use the latest commit in master but it's changeable, and it is way
> more maintainable IMO compared to a tarball you manually download every
> now and then.
>
> Please do NOT use _ in your recipe filename, so rename your recipe to
> python3-wirepas-messaging.
>
> Please answer to all when you're answering back to me or anyone in this
> community, so people could benefit from the solution or discussion
> around the issue,
> Quentin
>

--0000000000006bb03505b02a60cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>HI,</div><div><br></div><div>I&#39;m trying to make a=
 recipe for wirepas-gateway and wirepas-messaging, let&#39;s take wirepas-m=
essaging for an example , it is so easy :</div><div>I&#39;m downloading the=
 <a href=3D"https://github.com/wirepas/backend-apis/tree/master/wrappers/py=
thon">https://github.com/wirepas/backend-apis/tree/master/wrappers/python</=
a> , because <a href=3D"https://github.com/wirepas/backend-apis">https://gi=
thub.com/wirepas/backend-apis</a> does not contain the wirepas-messaging pa=
ckage sources directly .</div><div>So I&#39;m zipping the sources of  <a hr=
ef=3D"https://github.com/wirepas/backend-apis/tree/master/wrappers/python">=
https://github.com/wirepas/backend-apis/tree/master/wrappers/python</a> and=
 adding it with devtool</div><div>After that when I build the recipe it bui=
ld successfully after fixing the do_package with adding FILES_${PN} =3D &qu=
ot;/usr/share/*&quot;</div><div>So I checked the tmp/work/.../image and the=
 package is correctly installed into the image destination.</div><div>Now w=
hen I do devtool finish , it copy paste the same recipe .bb file with the s=
ame SRC_URI, now when I try to build it I get the error of :</div><div>/med=
ia/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/python3-wirepas-=
messaging/1.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3: can&=
#39;t open file &#39;setup.py&#39;: [Errno 2] No such file or directory</di=
v><div><br></div><div>The same SRC_URI:</div><div><div style=3D"color:rgb(2=
12,212,212);background-color:rgb(30,30,30);font-weight:normal;font-size:20p=
x;line-height:27px;white-space:pre"><div><span style=3D"color:rgb(156,220,2=
54)">SRC_URI</span><span style=3D"color:rgb(212,212,212)"> =3D </span><span=
 style=3D"color:rgb(206,145,120)">&quot;file:///home/talel/Desktop/backend-=
apis/wrappers/python/wirepas-messaging.zip&quot;</span></div></div></div><d=
iv>What is the differnece ? I can&#39;t understand.</div><div><br></div><di=
v>Thanks, Talel<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, Sep 25, 2020 at 5:00 PM Quentin Schulz &lt=
;<a href=3D"mailto:quentin.schulz@streamunlimited.com">quentin.schulz@strea=
munlimited.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On Fri, Sep 25, 2020 at 08:12:11AM -0700, Bel Hadj Salem Tale=
l wrote:<br>
&gt; Hi Community,<br>
&gt; <br>
&gt; I have a python module which I downloaded from github containing a set=
up.py as all python modules.<br>
&gt; When I create a recipe with devtool it compiles correctly with no prob=
lem, but when I copy paste the same recipe source from workspace recipes to=
 an official meta recipe I got this error :<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; /media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/py=
thon3-wirepas_messaging/1.4.0-r0/recipe-sysroot-native/usr/bin/python3-nati=
ve/python3:<br>
&gt; &gt; can&#39;t open file &#39;setup.py&#39;: [Errno 2] No such file or=
 directory<br>
&gt; <br>
&gt; Here is the recipe by devtool:<br>
&gt; <br>
&gt; ##############<br>
&gt; <br>
&gt; SUMMARY =3D &quot;Wirepas gateway transport service that connects the =
local dbus to a remote MQTT broker.&quot;<br>
&gt; HOMEPAGE =3D &quot;<a href=3D"https://github.com/wirepas/gateway" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/wirepas/gateway</a>&qu=
ot;<br>
&gt; LICENSE =3D &quot;Apache&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dcb6bb17b0d0cca18833907=
4207e9f4d8&quot;<br>
&gt; SRC_URI =3D &quot;file:///media/talel/data/multigate/multigate/meta-wi=
repas/recipes-wirepas/wirepas-gateway/files/wirepas_gateway-${PV}/wp-gatewa=
y.zip&quot;<br>
<br>
If your recipe is in:<br>
/media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-=
gateway/<br>
and wp-gateway.zip is in:<br>
/media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-=
gateway/files/wirepas_gateway-1.4.0<br>
just put:<br>
SRC_URI =3D &quot;file://wirepas_gateway-${PN}/wp-gateway.zip&quot;<br>
<br>
I&#39;d suggest putting your .zip file in:<br>
/media/talel/data/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-=
gateway/wirepas_gateway-1.4.0<br>
(note the missing files directory), in which case, your SRC_URI would<br>
be:<br>
SRC_URI =3D &quot;file://wp-gateway.zip&quot;<br>
<br>
Also... This looks like you&#39;re taking code from<br>
<a href=3D"https://github.com/wirepas/gateway" rel=3D"noreferrer" target=3D=
"_blank">https://github.com/wirepas/gateway</a> ? Have you thought of using=
 the git<br>
repo directly? e.g. devtool add python3-wirepas-gateway<br>
<a href=3D"https://github.com/wirepas/gateway.git" rel=3D"noreferrer" targe=
t=3D"_blank">https://github.com/wirepas/gateway.git</a>?<br>
<br>
It&#39;ll use the latest commit in master but it&#39;s changeable, and it i=
s way<br>
more maintainable IMO compared to a tarball you manually download every<br>
now and then.<br>
<br>
Please do NOT use _ in your recipe filename, so rename your recipe to<br>
python3-wirepas-messaging.<br>
<br>
Please answer to all when you&#39;re answering back to me or anyone in this=
<br>
community, so people could benefit from the solution or discussion<br>
around the issue,<br>
Quentin<br>
</blockquote></div>

--0000000000006bb03505b02a60cb--
