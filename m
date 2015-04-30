Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63F1BE00992; Thu, 30 Apr 2015 04:08:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB4EE007CC
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 04:08:35 -0700 (PDT)
Received: by wiun10 with SMTP id n10so13454583wiu.1
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 04:08:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3WX5hpeHIZ+ueA7XvFrzrJfAmdekhb0jf/JQQQdnKVw=;
	b=UhgHqQI2SNYb3TRnHtOeZOBpVdZsgIZxGiFlBJRaeNH/Ga37bQNUq9ebP9bybru7FH
	sikcOvu4/iAe0Ap9U0E3bjezXDmP4eVZmnoRs5Q/Acbi0N/ifNmHZpn0IHprxpJUclWp
	IBScJg9KUDly9nFIgiFIc5pM3HwHe253k8ZkKVnqYX2I8cOqmZky7R8pptIBoN9ANnVy
	Lo2dgskBh/TrChFv6+9MsVPdidowlSX7NHhe0klxLhnZc/a/HUs0wI8uCsH2mroV8f6M
	huTfHpcg/SG8QQzPhCklBEMk+ZxX6HjSXCSbHeXyUA4QdTFtP9MiR6/EPrgqEn0ZpB28
	shjA==
X-Gm-Message-State: ALoCoQlrir70+PiUlDJH85fo75oph9x7U6rWVyxBl13sEU+GqdHaIdzStwvliDRY4UJMfQ30F1iD
X-Received: by 10.180.102.164 with SMTP id fp4mr4625419wib.67.1430392113564;
	Thu, 30 Apr 2015 04:08:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.224.136 with HTTP; Thu, 30 Apr 2015 04:08:12 -0700 (PDT)
X-Originating-IP: [2a02:8108:943f:e738:224:d7ff:feb4:a550]
In-Reply-To: <5540F06B.40706@dynamicdevices.co.uk>
References: <17420222.681949.1430314213894.JavaMail.yahoo@mail.yahoo.com>
	<5540E546.9020606@dynamicdevices.co.uk>
	<20150429113434.2ce31089@recife.lan>
	<5540F06B.40706@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 30 Apr 2015 13:08:12 +0200
Message-ID: <CAK18fxHGD0EN_i5p=DATv8hHXRsyW3m7GkoXR-_uwEV03BS5eg@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi] meta-ivi & meta-raspberrypi
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
X-List-Received-Date: Thu, 30 Apr 2015 11:08:40 -0000
Content-Type: multipart/alternative; boundary=bcaec550ac4ad1c9da0514ef1ddf

--bcaec550ac4ad1c9da0514ef1ddf
Content-Type: text/plain; charset=UTF-8

@Mauro We can't wait to see the patches. :)
@Oliver If you are working on this please assign yourself to
http://redmine.gherzan.com/issues/19

On Wed, Apr 29, 2015 at 4:53 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
>
> On 29/04/2015 16:34, Mauro Carvalho Chehab wrote:
> > Em Wed, 29 Apr 2015 16:05:58 +0200
> > Alex J Lennon <ajlennon@dynamicdevices.co.uk> escreveu:
> >
> >> On 29/04/2015 15:30, Oliver wrote:
> >>> Hello
> >>>
> >>> I have been working building together the meta-raspberrypi & the
> meta-ivi layers.
> >>> I have been stuck with configuration/compilation of weston(from
> mata-ivi layer):
> >>>
> >>> 1)
> >>>
> >>> You can check the intial thread
> http://lists.genivi.org/pipermail/genivi-meta-ivi/2015-April/000508.html
> >>>
> >>>
> >>> egl provided by userlad is not detected as the *.pc files are not
> deployed
> >>> Someone has faced similar problems:
> >>>
> >>>
> http://git.buildroot.net/buildroot/commit/?id=2282b93f4248a32de84805456efa352f69b28624
> >>>
> >>> 2)
> >>> With this I am able to reach the do_compile stage but there are errors
> related to the undefined type
> >>>
> >>> PFNEGLQUERYWAYLANDBUFFERWL
> >>> Hacked this one forcing the inclusion of <weston-egl-ext.h> :-S
> >>>
> >>>
> >>> 3)
> >>> At linking time the next trouble is:
> >>>
> >>>
> /home/oliver/raspberry/build-rpi-ivi/tmp/sysroots/i686-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.1/ld:
> cannot find -lwayland-egl
> >>>
> >>> IIRC this lib is provided by mesa-gl, but in my build, mesa is
> configured(--disable-egl (is this ok being provided by userlad?)) which
> might be the reason why libwayland-egl is not getting deployed in the image?
> >>>
> >>> Any correction to my statements or hint to go further would be
> appreciated
> >>>
> >>> Best Regards & thanks for your time
> >>>
> >>> Oliver
> >> Hi Oliver,
> >>
> >> I was looking at wayland/weston last year.  I can't remember exactly
> >> where I was at with it I am afraid, but I think I had it building and
> >> have pushed some of the code I was playing with to GitHub
> >>
> >> I think this was related to the .pc issue
> >>
> >>
> https://github.com/DynamicDevices/meta-raspberrypi/commit/491dd14585efdb52378a57fa6ddacb1f15065257
> >>
> >> And this was what I was doing with weston. Looks like I was disabling
> EGL.
> >>
> >>
> https://github.com/DynamicDevices/meta-raspberrypi/commit/c657f69deb57035fc43319dd7d41745c17d7d6e1
> >>
> >> Sorry I can't be more help but perhaps there's something in there that
> >> might be of use.
> > I was able to build weston/wayland with meta-raspberrypi, for
> > the Tizen distro:
> >
> http://blogs.s-osg.org/bringing-tizen-to-a-raspberry-pi-2-near-you/
> >
> > I had to apply a few patches to make it work on both Tizen and
> > meta-raspberrypi. The forks are at:
> >       http://git.s-osg.org/
> >
> > The current version there is actually disabling EGL. Enabling
> > it seems to be possible, but we're still trying to make it work
> > (it compiles fine, though, so I think we're close).
> >
> > Once done, my plan is to work on porting the patches back to
> > meta-raspberrypi (and tizen-distro).
> >
> >
>
> Great news Mauro. If you need anybody to test out your patches, when
> ready, please give me a shout.
>
> Cheers, Alex
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Andrei Gherzan*
*e: **andrei@gherzan.ro <andrei@gherzan.ro>*
*w: *www.gherzan.ro

--bcaec550ac4ad1c9da0514ef1ddf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">@Mauro We can&#39;t wait to see the patches. :)<div>@Olive=
r If you are working on this please assign yourself to=C2=A0<a href=3D"http=
://redmine.gherzan.com/issues/19">http://redmine.gherzan.com/issues/19</a>=
=C2=A0</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Wed, Apr 29, 2015 at 4:53 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dyna=
micdevices.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 29/04/2015 16:34, Mauro Carvalho Chehab wrote:<br>
&gt; Em Wed, 29 Apr 2015 16:05:58 +0200<br>
&gt; Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajl=
ennon@dynamicdevices.co.uk</a>&gt; escreveu:<br>
&gt;<br>
&gt;&gt; On 29/04/2015 15:30, Oliver wrote:<br>
&gt;&gt;&gt; Hello<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I have been working building together the meta-raspberrypi &am=
p; the meta-ivi layers.<br>
&gt;&gt;&gt; I have been stuck with configuration/compilation of weston(fro=
m mata-ivi layer):<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 1)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; You can check the intial thread <a href=3D"http://lists.genivi=
.org/pipermail/genivi-meta-ivi/2015-April/000508.html" target=3D"_blank">ht=
tp://lists.genivi.org/pipermail/genivi-meta-ivi/2015-April/000508.html</a><=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; egl provided by userlad is not detected as the *.pc files are =
not deployed<br>
&gt;&gt;&gt; Someone has faced similar problems:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 <a href=3D"http://git.buildroot.net/buildroot/com=
mit/?id=3D2282b93f4248a32de84805456efa352f69b28624" target=3D"_blank">http:=
//git.buildroot.net/buildroot/commit/?id=3D2282b93f4248a32de84805456efa352f=
69b28624</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 2)<br>
&gt;&gt;&gt; With this I am able to reach the do_compile stage but there ar=
e errors related to the undefined type<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; PFNEGLQUERYWAYLANDBUFFERWL<br>
&gt;&gt;&gt; Hacked this one forcing the inclusion of &lt;weston-egl-ext.h&=
gt; :-S<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 3)<br>
&gt;&gt;&gt; At linking time the next trouble is:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; /home/oliver/raspberry/build-rpi-ivi/tmp/sysroots/i686-linux/u=
sr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.1/ld: cann=
ot find -lwayland-egl<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; IIRC this lib is provided by mesa-gl, but in my build, mesa is=
 configured(--disable-egl (is this ok being provided by userlad?)) which mi=
ght be the reason why libwayland-egl is not getting deployed in the image?<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Any correction to my statements or hint to go further would be=
 appreciated<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Best Regards &amp; thanks for your time<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Oliver<br>
&gt;&gt; Hi Oliver,<br>
&gt;&gt;<br>
&gt;&gt; I was looking at wayland/weston last year.=C2=A0 I can&#39;t remem=
ber exactly<br>
&gt;&gt; where I was at with it I am afraid, but I think I had it building =
and<br>
&gt;&gt; have pushed some of the code I was playing with to GitHub<br>
&gt;&gt;<br>
&gt;&gt; I think this was related to the .pc issue<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://github.com/DynamicDevices/meta-raspberrypi/comm=
it/491dd14585efdb52378a57fa6ddacb1f15065257" target=3D"_blank">https://gith=
ub.com/DynamicDevices/meta-raspberrypi/commit/491dd14585efdb52378a57fa6ddac=
b1f15065257</a><br>
&gt;&gt;<br>
&gt;&gt; And this was what I was doing with weston. Looks like I was disabl=
ing EGL.<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://github.com/DynamicDevices/meta-raspberrypi/comm=
it/c657f69deb57035fc43319dd7d41745c17d7d6e1" target=3D"_blank">https://gith=
ub.com/DynamicDevices/meta-raspberrypi/commit/c657f69deb57035fc43319dd7d417=
45c17d7d6e1</a><br>
&gt;&gt;<br>
&gt;&gt; Sorry I can&#39;t be more help but perhaps there&#39;s something i=
n there that<br>
&gt;&gt; might be of use.<br>
&gt; I was able to build weston/wayland with meta-raspberrypi, for<br>
&gt; the Tizen distro:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://blogs.s-osg.org/bringing-t=
izen-to-a-raspberry-pi-2-near-you/" target=3D"_blank">http://blogs.s-osg.or=
g/bringing-tizen-to-a-raspberry-pi-2-near-you/</a><br>
&gt;<br>
&gt; I had to apply a few patches to make it work on both Tizen and<br>
&gt; meta-raspberrypi. The forks are at:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://git.s-osg.org/" target=3D"=
_blank">http://git.s-osg.org/</a><br>
&gt;<br>
&gt; The current version there is actually disabling EGL. Enabling<br>
&gt; it seems to be possible, but we&#39;re still trying to make it work<br=
>
&gt; (it compiles fine, though, so I think we&#39;re close).<br>
&gt;<br>
&gt; Once done, my plan is to work on porting the patches back to<br>
&gt; meta-raspberrypi (and tizen-distro).<br>
&gt;<br>
&gt;<br>
<br>
</div></div>Great news Mauro. If you need anybody to test out your patches,=
 when<br>
ready, please give me a shout.<br>
<br>
Cheers, Alex<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div =
style=3D"text-align:center"></div><div style=3D"text-align:center"><div ali=
gn=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51,5=
1);text-align:center">Andrei Gherzan</b><br></div><div align=3D"left"><b st=
yle=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:cen=
ter">e: </b><span style=3D"font-family:Arial;font-size:small;color:rgb(51,5=
1,51);text-align:center"><i><a href=3D"mailto:andrei@gherzan.ro" target=3D"=
_blank">andrei@gherzan.ro</a></i></span></div><div align=3D"left"><span sty=
le=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:cent=
er"><i><b>w:</b> </i><a href=3D"http://www.gherzan.ro" target=3D"_blank">ww=
w.gherzan.ro</a></span></div></div></div></div></div></div>
</div>

--bcaec550ac4ad1c9da0514ef1ddf--
