Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
 by mx.groups.io with SMTP id smtpd.web12.2088.1577478618407709228
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2019 12:30:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nMg1m6hC;
 spf=pass (domain: gmail.com, ip: 209.85.221.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f169.google.com with SMTP id u6so7027040vkn.13
        for <yocto@lists.yoctoproject.org>; Fri, 27 Dec 2019 12:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mxUXS07ZKHe6+cjKu+cB+5XQfNdZG4PXaxkZFFYncaY=;
        b=nMg1m6hCK8tO90U5casBSi1tXLVLdEASBQH5yBdnVXSgROxnn5/3fG+uKTjYb97IMv
         D0umNkoi/PydrG4buIpQEhkenGFGNO+KPFHXs+ai5w2qRDbvh8rdVehu69FNXhB+tHmk
         u5as+GAv5I1ZZM2X0bowhSe624/dkEp6mNe3cSotjpWuc0+DjMy81/nz/Wvwgwo9vrhH
         rMQDB2fkiOyfRmcVKl/yD9pc++8dhaT4UAoH/N7y2HG8k+SiDpy60c0/FFw3rNmJLnA7
         Jk25FAp6ibek1IjoqY/BoJ2D3apqrTNvG0PV31+g2Dk8vCKW+f5/8JJGIkDqIA+c3KuZ
         ovPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mxUXS07ZKHe6+cjKu+cB+5XQfNdZG4PXaxkZFFYncaY=;
        b=s/Ybb4hYSFJCX1IlCnJiDaXM36JB7BTV1q756smvc0o7KKgGapcRcR5/vHAthlWB5N
         soD8lVgHez1VqJHZqdkrgAJMiQvsmUR00EljkZtHLCs6V8it1VfgjPhqYUGAT4vA6Rdl
         DZ7pahGOeVoIW0ARwGDJKvjjit7DnAKvkQCpzuw9ZNbTTJzpCc7DTQNtEBqZgkquD4PC
         hHM2JsV9iV4R7OKaUuMXb5EoTI+dF1hDVkfwoU75DbhiNs7648b7wuDhSbrTeajJUZUP
         Nxc2e1cV9fhtlSj3gctgdvgeuzzRFwNO4nbx6cH7gIImgVWMXyp1G348iIg+JdYGQWdp
         FAiw==
X-Gm-Message-State: APjAAAUCixCaEl8A9avsACz+3YZEnjikCDQIzRrK6lUsSYOUm+VQBN4D
	spV8vDbhF9AbQUN/XkDOxELwdOWqEyq9DSusEfk=
X-Google-Smtp-Source: APXvYqzsuSZupasoy9XP+40+XwpdkSG2fwFGUN2aTKjDZGEyx3A7FYzNknzGFmfU7gCfvaOxrbGNiwm9XsuEyFs21J0=
X-Received: by 2002:a05:6122:2b6:: with SMTP id 22mr30928842vkq.49.1577478617507;
 Fri, 27 Dec 2019 12:30:17 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
In-Reply-To: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 27 Dec 2019 23:30:06 +0300
Message-ID: <CANNYZj90A1EorADV7eVOZkc1NdoEkxW+Ms1rrzOS6aEKkhki_w@mail.gmail.com>
Subject: Re: [yocto] OEM supplied yocto image is impossible to work with
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a32eff059ab55c21"

--000000000000a32eff059ab55c21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would like to add that it helps enormously if you introduce yourself to
the community properly. When you do not state what your company is, who is
your OEM, and write from a gmail account using what looks like a pseudonym,
I personally wasn=E2=80=99t entirely sure if you honestly are seeking help =
or just
aiming to start a flame war, and so abstained from answering. Just my two
euro cents.

Alex

On Fri, 27 Dec 2019 at 20.00, Kent Dorfman <kent.dorfman766@gmail.com>
wrote:

> Oh, and this is the THIRD time I've tried posting this...you certainly
> don't make the yocto mailing lists easy to subscribe to.
>
> Lemme appologize in avance because parts of this are going to come
> across as rants directed at both our OEM and yocto.  Hopefully "yinz"
> have thick skins.
>
> I've been doing embedded system design since the beginning of the
> millenium (mostly VXworks, with some linux intel embedded, PPC
> cross-dev chain stuff, and bare metal C/C++ microcontrollers) and now
> I'm tasked with implementing a very mission critical set of embedded
> processors in an aerospace project.  I've not used yocto before.  The
> closest thing being buildroot.
>
> Anyway, the OEM for our boards was chosen before I came on board and
> while I can find no fault with the zynq based hardware, their software
> SDK and support is fracking terrible.
>
> Like most OEMs, their prefered model is to give the customer just
> enough information to try and force us to pay them to build a turnkey
> solution on our behalf, which is not an option in our enterprise.
>
> Their minimal yocto based SDK and reference implementation:
>
> 1) as is, isn't suitable for our mission needs, where we must make
> changes to the base image,  kernel, and initramfs.  They seem to
> expect customers to only add on apps to the UBI rootfs and not screw
> with anything else.
>
> 2) has many closed source packages in it that will only build from
> source when in their local intranet.  Deleting the cache and
> attempting a complete source level rebuild consistently fails.
>
> 3) isn't documented at all, and they will only answer direct, well
> phrased questions, instead of volunteering information that meets our
> stated goals.
>
> 4) them being a multinational company causes additional legal,
> information sharing, and logistical problems
>
> Questions/problems in yocto where the documentation kind of sucks, are:
>
> 1) the necessity to "clean build" is inherent in any software
> endeavour, yet the simple equivalent of "make clean && make image" is
> nowhere to be easily found in yocto.  It is implied that deleting the
> tmp/ and sstate_cache/ directories should have the same affect, but is
> that safe?  What will it break?  I need to be confident in the process
> when I go scream at the OEM, telling them that their build tool is
> incomplete for our air-gapped environment.
>
> 2) related to above, yocto needs a much better description of the
> expected directory tree within a project.
>
> 3) the relationship between bitbake and devtool needs to be better
> documented and both utilities need to be better documented themselves.
> trying to run bitbake manually causes path errors (null entry in path)
> when in fact, bitbake itself is setting a path somewhere incorrectly.
> my path has no null entries or "." in it.
>
> 4) yocto documentation fails in presenting a good explanation of the
> difference between packages, layers, recipes, and images.  Also, I've
> seen cases where virtual/kernel is used to check-out the kernel to
> work on it, yet no virtual/kernel directory exists in the layers
> directory tree, so a better explanation of the mapping between real
> directories and virtual names is warranted. ... and yes, I know what
> BB files are for.
>
> 5) a big area that seems to be lacking is the ability to inquire in a
> yocto build as to what is included in it.  This is especially
> important if the responsible party didn't actually create the build,
> as is our case.  We're left with trying to guess what the OEM did, and
> why.
>
> 6) the seeming inability of yocto to build reproducable binary images
> is a serious shortcoming in IA environments.  The first step in
> development for us is to baseline the reference build provided by the
> OEM and then make incremental changes to it, but yocto doesn't seem to
> have a way to validate that the build done in-house is identical to
> the pre-built images supplied on the board.  Is there a way to "forced
> sequentialize" the yocto process so that images can be reproducable?
>
> 7) a large part of me wants to throw away the OEM build and start from
> scratch, but I have no information about how to correctly import their
> "blob only" packages into a separate yocto project.  Hell, I am not
> convinced that their blobs will remain persistent if I delete the
> cache because I don't know whether they were created in their network
> and  expected to always live in the cache, thus negating the ability
> of a customer to do a "clean build"
>
> Anyway, yes, I've read what docs I can find on yocto, and aside from
> falling asleep several times in the process, the docs really are not
> helping me with the problem at hand: using an existing yocto build
> provided by a possibly unscrupulous vendor.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47824):
> https://lists.yoctoproject.org/g/yocto/message/47824
> Mute This Topic: https://lists.yoctoproject.org/mt/69288358/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--000000000000a32eff059ab55c21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I would like to add that it helps enormously if you =
introduce yourself to the community properly. When you do not state what yo=
ur company is, who is your OEM, and write from a gmail account using what l=
ooks like a pseudonym, I personally wasn=E2=80=99t entirely sure if you hon=
estly are seeking help or just aiming to start a flame war, and so abstaine=
d from answering. Just my two euro cents.</div></div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Dec 2019 at 20.00, Kent Dorfman=
 &lt;<a href=3D"mailto:kent.dorfman766@gmail.com">kent.dorfman766@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Oh, and this is the=
 THIRD time I&#39;ve tried posting this...you certainly<br>
don&#39;t make the yocto mailing lists easy to subscribe to.<br>
<br>
Lemme appologize in avance because parts of this are going to come<br>
across as rants directed at both our OEM and yocto.=C2=A0 Hopefully &quot;y=
inz&quot;<br>
have thick skins.<br>
<br>
I&#39;ve been doing embedded system design since the beginning of the<br>
millenium (mostly VXworks, with some linux intel embedded, PPC<br>
cross-dev chain stuff, and bare metal C/C++ microcontrollers) and now<br>
I&#39;m tasked with implementing a very mission critical set of embedded<br=
>
processors in an aerospace project.=C2=A0 I&#39;ve not used yocto before.=
=C2=A0 The<br>
closest thing being buildroot.<br>
<br>
Anyway, the OEM for our boards was chosen before I came on board and<br>
while I can find no fault with the zynq based hardware, their software<br>
SDK and support is fracking terrible.<br>
<br>
Like most OEMs, their prefered model is to give the customer just<br>
enough information to try and force us to pay them to build a turnkey<br>
solution on our behalf, which is not an option in our enterprise.<br>
<br>
Their minimal yocto based SDK and reference implementation:<br>
<br>
1) as is, isn&#39;t suitable for our mission needs, where we must make<br>
changes to the base image,=C2=A0 kernel, and initramfs.=C2=A0 They seem to<=
br>
expect customers to only add on apps to the UBI rootfs and not screw<br>
with anything else.<br>
<br>
2) has many closed source packages in it that will only build from<br>
source when in their local intranet.=C2=A0 Deleting the cache and<br>
attempting a complete source level rebuild consistently fails.<br>
<br>
3) isn&#39;t documented at all, and they will only answer direct, well<br>
phrased questions, instead of volunteering information that meets our<br>
stated goals.<br>
<br>
4) them being a multinational company causes additional legal,<br>
information sharing, and logistical problems<br>
<br>
Questions/problems in yocto where the documentation kind of sucks, are:<br>
<br>
1) the necessity to &quot;clean build&quot; is inherent in any software<br>
endeavour, yet the simple equivalent of &quot;make clean &amp;&amp; make im=
age&quot; is<br>
nowhere to be easily found in yocto.=C2=A0 It is implied that deleting the<=
br>
tmp/ and sstate_cache/ directories should have the same affect, but is<br>
that safe?=C2=A0 What will it break?=C2=A0 I need to be confident in the pr=
ocess<br>
when I go scream at the OEM, telling them that their build tool is<br>
incomplete for our air-gapped environment.<br>
<br>
2) related to above, yocto needs a much better description of the<br>
expected directory tree within a project.<br>
<br>
3) the relationship between bitbake and devtool needs to be better<br>
documented and both utilities need to be better documented themselves.<br>
trying to run bitbake manually causes path errors (null entry in path)<br>
when in fact, bitbake itself is setting a path somewhere incorrectly.<br>
my path has no null entries or &quot;.&quot; in it.<br>
<br>
4) yocto documentation fails in presenting a good explanation of the<br>
difference between packages, layers, recipes, and images.=C2=A0 Also, I&#39=
;ve<br>
seen cases where virtual/kernel is used to check-out the kernel to<br>
work on it, yet no virtual/kernel directory exists in the layers<br>
directory tree, so a better explanation of the mapping between real<br>
directories and virtual names is warranted. ... and yes, I know what<br>
BB files are for.<br>
<br>
5) a big area that seems to be lacking is the ability to inquire in a<br>
yocto build as to what is included in it.=C2=A0 This is especially<br>
important if the responsible party didn&#39;t actually create the build,<br=
>
as is our case.=C2=A0 We&#39;re left with trying to guess what the OEM did,=
 and<br>
why.<br>
<br>
6) the seeming inability of yocto to build reproducable binary images<br>
is a serious shortcoming in IA environments.=C2=A0 The first step in<br>
development for us is to baseline the reference build provided by the<br>
OEM and then make incremental changes to it, but yocto doesn&#39;t seem to<=
br>
have a way to validate that the build done in-house is identical to<br>
the pre-built images supplied on the board.=C2=A0 Is there a way to &quot;f=
orced<br>
sequentialize&quot; the yocto process so that images can be reproducable?<b=
r>
<br>
7) a large part of me wants to throw away the OEM build and start from<br>
scratch, but I have no information about how to correctly import their<br>
&quot;blob only&quot; packages into a separate yocto project.=C2=A0 Hell, I=
 am not<br>
convinced that their blobs will remain persistent if I delete the<br>
cache because I don&#39;t know whether they were created in their network<b=
r>
and=C2=A0 expected to always live in the cache, thus negating the ability<b=
r>
of a customer to do a &quot;clean build&quot;<br>
<br>
Anyway, yes, I&#39;ve read what docs I can find on yocto, and aside from<br=
>
falling asleep several times in the process, the docs really are not<br>
helping me with the problem at hand: using an existing yocto build<br>
provided by a possibly unscrupulous vendor.<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47824): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47824" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47824</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/69288358/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/69288358/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">=
alex.kanavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div></div>

--000000000000a32eff059ab55c21--
