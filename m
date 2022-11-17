Return-Path: <yishai1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70C8C4332F
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 13:05:23 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web11.14954.1668690318000253421
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 05:05:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XzkW0BAS;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: yishai1999@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-13b6c1c89bdso2003899fac.13
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 05:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rcPvyNqoXpki7PKFzhBMhdh6s2htnzCN/UcF1BrZ8a4=;
        b=XzkW0BASg7D3j/nKXbo3YuS/JzADdYnEWqrJDFYkYAMeSalktScWdqlqePhZraFzsm
         AwGrgX/MMVSup6zX+6ULwINVDbvmTPtBJFyoBCJiArYICkEIW9ibGQJ4EJmMUIdaQd2d
         pVpFP9JmJJesDjyMP2Mo41344P1xB28Sa+JRRJWFasrTFd3XQR4eDARnXIdhsFNhlaWt
         VV2Co4zEV5d4JSbQt3ZaSXPEfVAXVUUj+E/w/4iXCJDQ5lFQ12PuGEpaIFtSGzvnuWci
         +X42cRbaChR3qlQFcX74d3RbjaAmKLIPBaOPGaO1k/SOj9GtxbuUAdAXahl/pK80C8/8
         67jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rcPvyNqoXpki7PKFzhBMhdh6s2htnzCN/UcF1BrZ8a4=;
        b=XkXbenHbNrbmalfNI8wUGOQk3h1Ix9wGbDj/OVY8ukdijOJgArxpU8epDdDx9d362R
         95kWnPOlQVxweNEaiMXf6FkDa2SEWOH0ONgU9e6gtn33/LXdMJy5RwQ1no7QWhwGykhj
         NSgcwv4SeCIT12DRhV6r0R3AbOS8wB5WlVsjuUDw72DTIKuelhN98yikXor68GVLAfsz
         7QywUk7iHtgdmCrDVIBKIj36Cnr2ZW+Sp4jk76csJ85KtIGr4x6bh53aorvWGbHlnchu
         LVcRQkbKkeVh5boVLLThR2XOye+HBvM4E0TznmPFxseoh/pXflgi2S0qLGgK2YJkKQ7y
         DoiA==
X-Gm-Message-State: ANoB5pn28/gzarJxKQMt2k69Csv+3tiAMZ0YkreQwked3CyXj6WnqmS2
	DGV5of4j1nUzHXCvQiyDYyNgQKKYgfgOhIpnvZI=
X-Google-Smtp-Source: AA0mqf6KWDKYDFKLIgjqsg2BbdL2L8L1Y6EDXyR6HKF47WTTg69BU9dWN3NP2ySirFUGm416TAgOoOJUmzCe8JpiYCU=
X-Received: by 2002:a05:6871:4312:b0:142:6371:364f with SMTP id
 lu18-20020a056871431200b001426371364fmr810860oab.162.1668690317129; Thu, 17
 Nov 2022 05:05:17 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
 <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com>
 <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
 <CAJw49voA19vhm-zKszFYOa6cVy567qy6gaBJb+H2Oy9PkxYdpA@mail.gmail.com>
 <CANNYZj-8A2JD1JSxOEvkuSLtyg+QtaLj5P6DzNKveh5dW6so1A@mail.gmail.com>
 <CAJw49vp4MTCYM3aWnGVpA47iFD+ENwCdMo7j4xoOkyxfszWjog@mail.gmail.com>
 <CANNYZj9Jg9z25eK_jjZFSgOi5Vok_50+DCXih15zUs-q77eLyA@mail.gmail.com>
 <CAJw49vrQnOVJEZkYQMWCe2jwdEE=WfG5Tv7U7pEgcpF0ez1KDQ@mail.gmail.com> <CANNYZj8bnJHrYcYumz1Sk-Gzz7iSWZG4wrQaUH98x-DCLGjmqA@mail.gmail.com>
In-Reply-To: <CANNYZj8bnJHrYcYumz1Sk-Gzz7iSWZG4wrQaUH98x-DCLGjmqA@mail.gmail.com>
From: Yishai Jaffe <yishai1999@gmail.com>
Date: Thu, 17 Nov 2022 15:05:05 +0200
Message-ID: <CAJw49vqnfNZJ3ovwmROCBETSYYy4esJUvoN3DNos3Z4dno+fWg@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000097bd4405edaa3d39"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 13:05:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58585

--00000000000097bd4405edaa3d39
Content-Type: text/plain; charset="UTF-8"

Seems like a shame not to add this feature for everyone to use...

Yishai Jaffe

On Thu, Nov 17, 2022, 2:34 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

>  Making your own! You can have it added to the layer index for better
> publicity.
>
> Alex
>
> On Thu, 17 Nov 2022 at 13:27, Yishai Jaffe <yishai1999@gmail.com> wrote:
> >
> > What layer would you suggest?
> >
> > Yishai Jaffe
> >
> > On Thu, Nov 17, 2022, 2:21 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
> >>
> >> You can start by placing it in a separate layer?
> >>
> >> Alex
> >>
> >> On Thu, 17 Nov 2022 at 13:04, Yishai Jaffe <yishai1999@gmail.com>
> wrote:
> >> >
> >> > I assume by core you mean openembedded-core/poky, yes?
> >> >
> >> > So where would you add it to?
> >> >
> >> > Seems to me like a very useful feature that many people would use if
> they knew the option exists.
> >> >
> >> > Also, I noticed that in the recipe for python there is a variable
> named INCLUDE_PYC which does exactly what you think it would. This looks to
> me like someone did think about the whole python size subject but didn't
> exactly go through with it all the way. You can decide if to include pyc
> files but not the opposite. Also, this feature which does exist only
> applies to the python recipe but not to all other non-base python module
> recipes. Maybe this can be added to setuptools3 bbclass?
> >> >
> >> > Yishai Jaffe
> >> >
> >> > On Thu, Nov 17, 2022, 1:24 PM Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >> >>
> >> >> I just wonder if this should really be in core. The standards for
> core
> >> >> are high: it needs to be both testable and tested, and there's only
> so
> >> >> many possible options and tweaks where things can regress that we can
> >> >> take. On the other hand, there has not been much demand for it.
> >> >>
> >> >> Alex
> >> >>
> >> >> On Thu, 17 Nov 2022 at 12:13, Yishai Jaffe <yishai1999@gmail.com>
> wrote:
> >> >> >
> >> >> > Hi Alexander,
> >> >> >
> >> >> > After some research, these are the numbers I came up with for
> compiling core-image-minimal with python3-core:
> >> >> >
> >> >> > Normal compilation:
> >> >> > tar.bz2 - 6.6MB
> >> >> > squashfs-xz - 6.1MB
> >> >> >
> >> >> > With my pyc-only patch:
> >> >> > tar.bz2 - 5.8MB
> >> >> > squashfs-xz - 5.2MB
> >> >> >
> >> >> > So that's about a 15% decrease in size.
> >> >> > Again, this is for an image only with python3-core. Logically that
> would mean that if you had an image with more python packages it would be
> even a bigger percentage.
> >> >> >
> >> >> >
> >> >> > Yishai Jaffe
> >> >> >
> >> >> >
> >> >> > On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >> >> >>
> >> >> >> Generally we slim down python installations by not installing all
> of
> >> >> >> the standard library, and rather having precise dependencies for
> >> >> >> specific modules. Can you illustrate the kind of space savings
> that
> >> >> >> can be gained in actual numbers?
> >> >> >>
> >> >> >> Another issue is that this should be supported upstream and in the
> >> >> >> wider python community. Is it?
> >> >> >>
> >> >> >> Alex
> >> >> >>
> >> >> >> On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin <
> fede@evolware.org> wrote:
> >> >> >> >
> >> >> >> >
> >> >> >> > Hello,
> >> >> >> > Just as a small reference since I raised some doubts and
> questions in Buildroot community on this: there has been also some troubles
> to understand the correctness or not there (as I found some packages with
> problems due to this source-less management) and this then sparked, besides
> discussions in the Buildroot mailing list (roughly end of July / beginning
> of August if someone interested searching there), also an issue to the
> Python community, which albeit some discussion I think never arrived to a
> concrete conclusion. This is the issue:
> https://github.com/python/cpython/issues/95827 (see also the linked one
> maybe)
> >> >> >> >
> >> >> >> > These are just my 2 cents to this discussion, then of course
> the Python experts will probably chime in and describe the
> official/discussed position of Yocto regarding to this, but just felt like
> mentioning that although Buildroot is somehow offering this right now (and
> likely mostly works as well!), it's not really a so clean and/or agreed
> solution.
> >> >> >> >
> >> >> >> > Cheers,
> >> >> >> > Federico
> >> >> >> >
> >> >> >> > Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe <
> yishai1999@gmail.com> ha scritto:
> >> >> >> >>
> >> >> >> >> Hi,
> >> >> >> >> I was wondering if there has been talk about support for
> source-less python on an image. Installing py and pyc files doubles the
> size of python on the rootfs. I can imagine this being implemented as an
> image feature.
> >> >> >> >> I know that in buildroot it is supported.
> >> >> >> >> Was this discussed and decided against? Is this an open issue?
> >> >> >> >> I have a working patch that implements this. I can submit it
> for review.
> >> >> >> >>
> >> >> >> >> Thanks,
> >> >> >> >> Yishai Jaffe
> >> >> >> >> Yishai Jaffe
> >> >> >> >>
> >> >> >> >>
> >> >> >> >>
> >> >> >> >
> >> >> >> > -=-=-=-=-=-=-=-=-=-=-=-
> >> >> >> > Links: You receive all messages sent to this group.
> >> >> >> > View/Reply Online (#58549):
> https://lists.yoctoproject.org/g/yocto/message/58549
> >> >> >> > Mute This Topic:
> https://lists.yoctoproject.org/mt/94997538/1686489
> >> >> >> > Group Owner: yocto+owner@lists.yoctoproject.org
> >> >> >> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> >> >> >> > -=-=-=-=-=-=-=-=-=-=-=-
> >> >> >> >
>

--00000000000097bd4405edaa3d39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Seems like a shame not to add this feature for everyone t=
o use...=C2=A0<br><br><div data-smartmail=3D"gmail_signature">Yishai Jaffe =
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Nov 17, 2022, 2:34 PM Alexander Kanavin &lt;<a href=3D"mailto=
:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">=C2=A0Making your own! You can have it added to=
 the layer index for better publicity.<br>
<br>
Alex<br>
<br>
On Thu, 17 Nov 2022 at 13:27, Yishai Jaffe &lt;<a href=3D"mailto:yishai1999=
@gmail.com" target=3D"_blank" rel=3D"noreferrer">yishai1999@gmail.com</a>&g=
t; wrote:<br>
&gt;<br>
&gt; What layer would you suggest?<br>
&gt;<br>
&gt; Yishai Jaffe<br>
&gt;<br>
&gt; On Thu, Nov 17, 2022, 2:21 PM Alexander Kanavin &lt;<a href=3D"mailto:=
alex.kanavin@gmail.com" target=3D"_blank" rel=3D"noreferrer">alex.kanavin@g=
mail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; You can start by placing it in a separate layer?<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Thu, 17 Nov 2022 at 13:04, Yishai Jaffe &lt;<a href=3D"mailto:y=
ishai1999@gmail.com" target=3D"_blank" rel=3D"noreferrer">yishai1999@gmail.=
com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I assume by core you mean openembedded-core/poky, yes?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; So where would you add it to?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Seems to me like a very useful feature that many people would=
 use if they knew the option exists.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Also, I noticed that in the recipe for python there is a vari=
able named INCLUDE_PYC which does exactly what you think it would. This loo=
ks to me like someone did think about the whole python size subject but did=
n&#39;t exactly go through with it all the way. You can decide if to includ=
e pyc files but not the opposite. Also, this feature which does exist only =
applies to the python recipe but not to all other non-base python module re=
cipes. Maybe this can be added to setuptools3 bbclass?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Yishai Jaffe<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Thu, Nov 17, 2022, 1:24 PM Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" rel=3D"noreferrer">ale=
x.kanavin@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I just wonder if this should really be in core. The stand=
ards for core<br>
&gt;&gt; &gt;&gt; are high: it needs to be both testable and tested, and th=
ere&#39;s only so<br>
&gt;&gt; &gt;&gt; many possible options and tweaks where things can regress=
 that we can<br>
&gt;&gt; &gt;&gt; take. On the other hand, there has not been much demand f=
or it.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Alex<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Thu, 17 Nov 2022 at 12:13, Yishai Jaffe &lt;<a href=3D=
"mailto:yishai1999@gmail.com" target=3D"_blank" rel=3D"noreferrer">yishai19=
99@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Hi Alexander,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; After some research, these are the numbers I came up=
 with for compiling core-image-minimal with python3-core:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Normal compilation:<br>
&gt;&gt; &gt;&gt; &gt; tar.bz2 - 6.6MB<br>
&gt;&gt; &gt;&gt; &gt; squashfs-xz - 6.1MB<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; With my pyc-only patch:<br>
&gt;&gt; &gt;&gt; &gt; tar.bz2 - 5.8MB<br>
&gt;&gt; &gt;&gt; &gt; squashfs-xz - 5.2MB<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; So that&#39;s about a 15% decrease in size.<br>
&gt;&gt; &gt;&gt; &gt; Again, this is for an image only with python3-core. =
Logically that would mean that if you had an image with more python package=
s it would be even a bigger percentage.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Yishai Jaffe<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin &l=
t;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" rel=3D"norefe=
rrer">alex.kanavin@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Generally we slim down python installations by n=
ot installing all of<br>
&gt;&gt; &gt;&gt; &gt;&gt; the standard library, and rather having precise =
dependencies for<br>
&gt;&gt; &gt;&gt; &gt;&gt; specific modules. Can you illustrate the kind of=
 space savings that<br>
&gt;&gt; &gt;&gt; &gt;&gt; can be gained in actual numbers?<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Another issue is that this should be supported u=
pstream and in the<br>
&gt;&gt; &gt;&gt; &gt;&gt; wider python community. Is it?<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Alex<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin=
 &lt;<a href=3D"mailto:fede@evolware.org" target=3D"_blank" rel=3D"noreferr=
er">fede@evolware.org</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Hello,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Just as a small reference since I raised so=
me doubts and questions in Buildroot community on this: there has been also=
 some troubles to understand the correctness or not there (as I found some =
packages with problems due to this source-less management) and this then sp=
arked, besides discussions in the Buildroot mailing list (roughly end of Ju=
ly / beginning of August if someone interested searching there), also an is=
sue to the Python community, which albeit some discussion I think never arr=
ived to a concrete conclusion. This is the issue: <a href=3D"https://github=
.com/python/cpython/issues/95827" rel=3D"noreferrer noreferrer" target=3D"_=
blank">https://github.com/python/cpython/issues/95827</a> (see also the lin=
ked one maybe)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; These are just my 2 cents to this discussio=
n, then of course the Python experts will probably chime in and describe th=
e official/discussed position of Yocto regarding to this, but just felt lik=
e mentioning that although Buildroot is somehow offering this right now (an=
d likely mostly works as well!), it&#39;s not really a so clean and/or agre=
ed solution.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Federico<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Il giorno dom 13 nov 2022 alle ore 13:55 Yi=
shai Jaffe &lt;<a href=3D"mailto:yishai1999@gmail.com" target=3D"_blank" re=
l=3D"noreferrer">yishai1999@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; Hi,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; I was wondering if there has been talk =
about support for source-less python on an image. Installing py and pyc fil=
es doubles the size of python on the rootfs. I can imagine this being imple=
mented as an image feature.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; I know that in buildroot it is supporte=
d.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; Was this discussed and decided against?=
 Is this an open issue?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; I have a working patch that implements =
this. I can submit it for review.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; Thanks,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; Yishai Jaffe<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; Yishai Jaffe<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Links: You receive all messages sent to thi=
s group.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; View/Reply Online (#58549): <a href=3D"http=
s://lists.yoctoproject.org/g/yocto/message/58549" rel=3D"noreferrer norefer=
rer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/58549=
</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Mute This Topic: <a href=3D"https://lists.y=
octoproject.org/mt/94997538/1686489" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://lists.yoctoproject.org/mt/94997538/1686489</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowne=
r@lists.yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">yocto+owner@=
lists.yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Unsubscribe: <a href=3D"https://lists.yocto=
project.org/g/yocto/unsub" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.ka=
navin@gmail.com" target=3D"_blank" rel=3D"noreferrer">alex.kanavin@gmail.co=
m</a>]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
</blockquote></div>

--00000000000097bd4405edaa3d39--

