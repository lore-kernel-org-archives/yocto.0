Return-Path: <jfabernathy@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBC3EE0137C
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 03:06:03 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so52647vbj.35
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2012 03:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=U4j/lO2dwF1fy/X/PYFcjMPWNS/wy7/6x81RNwjFEfE=;
	b=dBxoVlBGMpQBXsKjsazxm2cUbIPGKFKoTXsKaJWCUY3vUC3z8FmGh88aJ4WSC3O6li
	irX6VRFBrC97FAHT2RLC6wXwualgGI4P0s82rh3Zedv1jVZfIgmwuSWMgmueYYFelkMn
	aY554/cvN+y3mVn8CfFW1UvkmIFApZqcdVjO0ktaY4lbTjpHiABYCrKtT1jhNc5stjGj
	Z4QKzx6dhVyMbw0Qp+OAZ6RJDnffHp0P/r3nL/XHczhYnVGJd72yk+jMYEz5Y14T1JJF
	DY9i4/HHEmPp6XM44OKoEAvDTQkX5apHVC757ametZq08l7og/PHA/gnZREDOypf05cu
	qCuA==
MIME-Version: 1.0
Received: by 10.220.150.14 with SMTP id w14mr7316880vcv.59.1333533963112; Wed,
	04 Apr 2012 03:06:03 -0700 (PDT)
Received: by 10.52.20.1 with HTTP; Wed, 4 Apr 2012 03:06:03 -0700 (PDT)
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A46AF0ACD@ORSMSX101.amr.corp.intel.com>
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com> <2917058.nSOBk0kvaU@helios>
	<CAMKF1sotGuDMJfb1xtxjVug6zL7Pr4MRwNpOVuEFMw-hdxQfRA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AEA5A6@ORSMSX101.amr.corp.intel.com>
	<CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF089A@ORSMSX101.amr.corp.intel.com>
	<CADzUK1JnSJQCh74GAyPAxFroWqKCHWFTTiGm3ko6-kAZFKAYgg@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF0ACD@ORSMSX101.amr.corp.intel.com>
Date: Wed, 4 Apr 2012 06:06:03 -0400
Message-ID: <CANFv2E=kLZtocup+CLE3jdo2U4=2iG=LO7162B=AvwL6ud5+jQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: "Liu, Song" <song.liu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to change the startup application
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
X-List-Received-Date: Wed, 04 Apr 2012 10:06:04 -0000
Content-Type: multipart/alternative; boundary=f46d043c81cc2acffd04bcd79218

--f46d043c81cc2acffd04bcd79218
Content-Type: text/plain; charset=ISO-8859-1

Just an observation.  the FAQ link that Autif did looks like a How Do I,
which is the section in the Wiki right after the FAQ.  Does that matter to
anyone?

Jim A



On Tue, Apr 3, 2012 at 5:58 PM, Liu, Song <song.liu@intel.com> wrote:

> Thanks, Autif. I guess I missed the last word for the link, but it's
> strange that the page was there. Anyway, I deleted mine.
>
> Song
>
> -----Original Message-----
> From: Autif Khan [mailto:autif.mlist@gmail.com]
>  Sent: Tuesday, April 03, 2012 2:23 PM
> To: Liu, Song
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to change the startup application
>
> Hi Song,
>
> I thought that I already updated the wiki. It seems like you created an
> extra page. "_scripts" is missing from the link. It should be there.
>
> Source:
> https://wiki.yoctoproject.org/wiki/Category:FAQ
>
> What I added days ago:
>
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup_scripts
>
> What you added (which I think should be deleted):
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup
>
> Agree?
>
> On Tue, Apr 3, 2012 at 4:34 PM, Liu, Song <song.liu@intel.com> wrote:
> > Hi Autif, thanks a lot for providing the answer here. Since no one is
> showing any objections here, I updated the wiki page with your answer (
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup).
> Please let me know if there is any suggestions or concerns.
> >
> > Song
> >
> > -----Original Message-----
> > From: Autif Khan [mailto:autif.mlist@gmail.com]
> > Sent: Thursday, March 29, 2012 4:56 PM
> > To: Liu, Song
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] How to change the startup application
> >
> >> I got a question about how to change the startup application with Yocto
> for images generated with Yocto.
> >> And I googled it and landed on this page:
> >> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startu
> >> p _scripts. Pretty good, someone was thinking about the same thing.
>  >> But this page turns out to be empty. It seems that we need to get
> >> better than this.
> >>
> >> I'm wondering if someone could update this wiki page or if the
> information is somewhere else...
> >
> > I do not know of if the information is elsewhere - I had to find this
> > information for my project
> >
> > Here is my stab at it (already updated the wiki):
> >
> > Q: How do I change and add startup scripts?
> >
> > A: Edit meta/recipes-sato/matchbox-sato/matchbox-session-sato/session.
> > Of course, if you have your own meta-layer, append the
> matchbox-session-sato_0.1.bb recipe.
> >
> > Disable 'matchbox-desktop' and 'matchbox-panel', however, do not disable
> 'exec matchbox-window-manager ...'
> >
> > Don't forget to run your app as a background process
> >
> > For example, the following code will start the fifteen game:
> >
> > #matchbox-desktop &
> >
> > # Lines containing feature-[foo] are removed at build time if the
> machine # doesn't have the feature "foo".
> >
> > #START_APPLETS=showdesktop,windowselector
> > #END_APPLETS=clock,battery,systray,startup-notify,notify
> > #END_APPLETS=openmoko-panel-gsm,$END_APPLETS # feature-phone
> >
> > #matchbox-panel --titlebar --start-applets $START_APPLETS
> > --end-applets $END_APPLETS &
> >
> > /usr/games/fifteen &
> >
> > exec matchbox-window-manager -theme Sato -use_desktop_mode decorated
> > -use_cursor $SHOWCURSOR $@
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d043c81cc2acffd04bcd79218
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Just an observation.=A0 the FAQ link that Autif did looks like a How D=
o I, which is the section in the Wiki right after the FAQ.=A0 Does that mat=
ter to anyone?</div>
<div>=A0</div>
<div>Jim A</div>
<div><br><br>=A0</div>
<div class=3D"gmail_quote">On Tue, Apr 3, 2012 at 5:58 PM, Liu, Song <span =
dir=3D"ltr">&lt;<a href=3D"mailto:song.liu@intel.com">song.liu@intel.com</a=
>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">Thanks, Autif. I guess I missed the l=
ast word for the link, but it&#39;s strange that the page was there. Anyway=
, I deleted mine.<br>

<div class=3D"im"><br>Song<br><br>-----Original Message-----<br>From: Autif=
 Khan [mailto:<a href=3D"mailto:autif.mlist@gmail.com">autif.mlist@gmail.co=
m</a>]<br></div>
<div>
<div class=3D"h5">Sent: Tuesday, April 03, 2012 2:23 PM<br>To: Liu, Song<br=
>Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>Subject: Re: [yocto] How to change the startup application<br><br>Hi Song=
,<br>
<br>I thought that I already updated the wiki. It seems like you created an=
 extra page. &quot;_scripts&quot; is missing from the link. It should be th=
ere.<br><br>Source:<br><a href=3D"https://wiki.yoctoproject.org/wiki/Catego=
ry:FAQ" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Category:FAQ</=
a><br>
<br>What I added days ago:<br><a href=3D"https://wiki.yoctoproject.org/wiki=
/FAQ:How_do_I_change_and_add_startup_scripts" target=3D"_blank">https://wik=
i.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup_scripts</a><br>
<br>What you added (which I think should be deleted):<br><a href=3D"https:/=
/wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup" target=3D"=
_blank">https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_star=
tup</a><br>
<br>Agree?<br><br>On Tue, Apr 3, 2012 at 4:34 PM, Liu, Song &lt;<a href=3D"=
mailto:song.liu@intel.com">song.liu@intel.com</a>&gt; wrote:<br>&gt; Hi Aut=
if, thanks a lot for providing the answer here. Since no one is showing any=
 objections here, I updated the wiki page with your answer (<a href=3D"http=
s://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup" target=
=3D"_blank">https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_=
startup</a>). Please let me know if there is any suggestions or concerns.<b=
r>
&gt;<br>&gt; Song<br>&gt;<br>&gt; -----Original Message-----<br>&gt; From: =
Autif Khan [mailto:<a href=3D"mailto:autif.mlist@gmail.com">autif.mlist@gma=
il.com</a>]<br>&gt; Sent: Thursday, March 29, 2012 4:56 PM<br>&gt; To: Liu,=
 Song<br>
&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>&gt; Subject: Re: [yocto] How to change the startup application<br>&g=
t;<br>&gt;&gt; I got a question about how to change the startup application=
 with Yocto for images generated with Yocto.<br>
&gt;&gt; And I googled it and landed on this page:<br>&gt;&gt; <a href=3D"h=
ttps://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startu" targe=
t=3D"_blank">https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add=
_startu</a><br>
</div></div>&gt;&gt; p _scripts. Pretty good, someone was thinking about th=
e same thing.<br>
<div class=3D"HOEnZb">
<div class=3D"h5">&gt;&gt; But this page turns out to be empty. It seems th=
at we need to get<br>&gt;&gt; better than this.<br>&gt;&gt;<br>&gt;&gt; I&#=
39;m wondering if someone could update this wiki page or if the information=
 is somewhere else...<br>
&gt;<br>&gt; I do not know of if the information is elsewhere - I had to fi=
nd this<br>&gt; information for my project<br>&gt;<br>&gt; Here is my stab =
at it (already updated the wiki):<br>&gt;<br>&gt; Q: How do I change and ad=
d startup scripts?<br>
&gt;<br>&gt; A: Edit meta/recipes-sato/matchbox-sato/matchbox-session-sato/=
session.<br>&gt; Of course, if you have your own meta-layer, append the <a =
href=3D"http://matchbox-session-sato_0.1.bb/" target=3D"_blank">matchbox-se=
ssion-sato_0.1.bb</a> recipe.<br>
&gt;<br>&gt; Disable &#39;matchbox-desktop&#39; and &#39;matchbox-panel&#39=
;, however, do not disable &#39;exec matchbox-window-manager ...&#39;<br>&g=
t;<br>&gt; Don&#39;t forget to run your app as a background process<br>
&gt;<br>&gt; For example, the following code will start the fifteen game:<b=
r>&gt;<br>&gt; #matchbox-desktop &amp;<br>&gt;<br>&gt; # Lines containing f=
eature-[foo] are removed at build time if the machine # doesn&#39;t have th=
e feature &quot;foo&quot;.<br>
&gt;<br>&gt; #START_APPLETS=3Dshowdesktop,windowselector<br>&gt; #END_APPLE=
TS=3Dclock,battery,systray,startup-notify,notify<br>&gt; #END_APPLETS=3Dope=
nmoko-panel-gsm,$END_APPLETS # feature-phone<br>&gt;<br>&gt; #matchbox-pane=
l --titlebar --start-applets $START_APPLETS<br>
&gt; --end-applets $END_APPLETS &amp;<br>&gt;<br>&gt; /usr/games/fifteen &a=
mp;<br>&gt;<br>&gt; exec matchbox-window-manager -theme Sato -use_desktop_m=
ode decorated<br>&gt; -use_cursor $SHOWCURSOR $@<br>_______________________=
________________________<br>
yocto mailing list<br><a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br></=
div>
</div></blockquote></div><br>

--f46d043c81cc2acffd04bcd79218--
