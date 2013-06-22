Return-Path: <varun292006@gmail.com>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F317AE013D6
	for <yocto@yoctoproject.org>; Sat, 22 Jun 2013 12:04:17 -0700 (PDT)
Received: by mail-pb0-f50.google.com with SMTP id wz7so9212562pbc.9
	for <yocto@yoctoproject.org>; Sat, 22 Jun 2013 12:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Na8NybOrgJt7Q4lT0PdIJYCpc1PLGp1kfgRKy1gNO9c=;
	b=JGWhLuZvmOg0r7yqElWPbHG8RH1CvXUQgESj6MLK0dn44ulEDFEgfndrN0TCfmQc/t
	fcIhcdOlqvMGb4GZFoswSKwbyc/LF/L7gE2ya67Y4zfQgzAb7k2fqARO2rxG1o3QA8+N
	yOoDVSUL3VDrZuCLpgiQKvPnAPaG6+k/J05xVLlhTbrFPEnPdWfwleMY/wvTT3F9EA0J
	W9sZ+3TIc+QMAPgZy/ToHMJbP21YVMvJSFb+Qiw84R2/PjZXDE70n65GW3PzCH23P3iT
	5mukwrb2F+dyuAujFm1L+Efn3fpgCEudnzOpbKSmPCKcZNwTfuD5S8D2djoLmhoMt0nW
	WpIw==
MIME-Version: 1.0
X-Received: by 10.66.100.201 with SMTP id fa9mr21448920pab.120.1371927857061; 
	Sat, 22 Jun 2013 12:04:17 -0700 (PDT)
Received: by 10.68.112.65 with HTTP; Sat, 22 Jun 2013 12:04:17 -0700 (PDT)
In-Reply-To: <CAGxOggH4UzCDOE5m=qFTPMDYmO1-jdtV1KtTn0XmyAnEd_pSfg@mail.gmail.com>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<51BF484F.9070009@mlbassoc.com>
	<CAGxOggHuW93fygtGt037LLX1PFzgGzqDr3au1GV76hAaSnka6w@mail.gmail.com>
	<CAGX3a98bY4yx21Wj8ciSeDcz_=ew+6Zvn1+Ciwm-ou8a_MF48A@mail.gmail.com>
	<CAGxOggFiUojWMpYUd7J0BfpRhPnwbu+pH89p9CEkjdDjRs6BgQ@mail.gmail.com>
	<51C08D9C.6010405@mlbassoc.com>
	<CAGxOggH4UzCDOE5m=qFTPMDYmO1-jdtV1KtTn0XmyAnEd_pSfg@mail.gmail.com>
Date: Sun, 23 Jun 2013 00:34:17 +0530
Message-ID: <CAGxOggH_6stRyaVVvY3ZrzZjOMZPQR17TMhbnnsY2RaOeH-vWQ@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Sat, 22 Jun 2013 19:04:18 -0000
X-Groupsio-MsgNum: 14554
Content-Type: multipart/mixed; boundary=047d7bd9165a93e51504dfc2d844

--047d7bd9165a93e51504dfc2d844
Content-Type: multipart/alternative; boundary=047d7bd9165a93e51304dfc2d842

--047d7bd9165a93e51304dfc2d842
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Sorry I am sending this again but can anybody suggest something for this
problem please (please go through the mail chain below).

//
Varun

Forwarded conversation
Subject: Yocto Layers not getting recognized by bitbake
------------------------

From: *varun bhatnagar* <varun292006@gmail.com>
Date: Mon, Jun 17, 2013 at 10:38 PM
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>


Hi,

I am trying to compile my code using yocto. For that I have created two
layers: "meta-networking" and "meta-oe". I have added these dependencies in
bblayer.conf too. But these are not getting build. Can anyone please tell
me what should I do to make this work.

//
Varun

----------
From: *Gary Thomas* <gary@mlbassoc.com>
Date: Mon, Jun 17, 2013 at 11:03 PM
To: yocto@yoctoproject.org


More details are needed to be able to help.

What do you mean "not getting built"?  Do you mean that if you
try to build recipe XYZ which is in one of those layers that it's
not being built?  Or perhaps you mean something else?

What do you mean "created two layers: ..."?  Did you just extract
these from meta-openembedded?  or something else?

-- 
------------------------------**------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------**------------------------------
______________________________**_________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>

----------
From: *varun bhatnagar* <varun292006@gmail.com>
Date: Mon, Jun 17, 2013 at 11:33 PM
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>


Actually the package which I am building is having some dependencies on
some libraries. So I provided those libraries with the help of creating
layers. I did not extract those from meta-openembedded, instead, I manually
created two layers and added them in bblayer.conf file. Now, after
configuring all this stuff I am again trying to recompile my code but still
I am getting the same error saying that it is not able to find those
libraries provided by me in the form of layers.

----------
From: *Sudhangathan B S* <sudhangathan@gmail.com>
Date: Tue, Jun 18, 2013 at 2:32 AM
To: varun bhatnagar <varun292006@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>


Can you please paste your command and it's output here..! If you don't
mind..!! Or explain with equivalent clarity. It
l will good if you can also put in your directory structure.

---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------

----------
From: *varun bhatnagar* <varun292006@gmail.com>
Date: Tue, Jun 18, 2013 at 9:58 PM
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>


I am building one of my application using yocto by giving bitbake -k
core-image-minimal command but I am facing some errors as this application
requires two libraries
*1) net-snmp*
*2) fuse*
*
*
I have one link where in they are asking to add these two libraries in the
form of layers and then execute bitbake -k core-image-minimal command.

I am pasting one screenshot below:

As you can I have added two layers meta-networking (contains net-snmp) and
meta-oe(contains fuse). After this I added these layers in *
build/conf/bblayer.conf.*
*
*
*
*
After this I again executed bitbake -k core-image-minimal command but I
faced the same error as before... :(
Is there anyway that these layers get recognized? Do I need to execute some
other command?


//
Varun

----------
From: *Gary Thomas* <gary@mlbassoc.com>
Date: Tue, Jun 18, 2013 at 10:11 PM
To: yocto@yoctoproject.org


On 2013-06-18 17:28, varun bhatnagar wrote:

> I am building one of my application using yocto by giving bitbake -k
> core-image-minimal command but I am facing some errors as this application
> requires two libraries
> *1) net-snmp*
> *2) fuse*
> *
>
> *
> I have one link where in they are asking to add these two libraries in the
> form of layers and then execute bitbake -k core-image-minimal command.
>
> I am pasting one screenshot below:
>
> As you can I have added two layers meta-networking (contains net-snmp) and
> meta-oe(contains fuse). After this I added these layers in
> *build/conf/bblayer.conf.*
> *
> *
> *
>
> *
> After this I again executed bitbake -k core-image-minimal command but I
> faced the same error as before... :(
> Is there anyway that these layers get recognized? Do I need to execute
> some other command?
>

Obviously, this is a recipe that you made.

Does it show these dependencies?  e.g. a line like this in your recipe file:
  DEPENDS = "net-snmp fuse"
(or whatever the *packages* that you need are)

Bitbake can't read your mind; it will only build the recipes you ask and the
dependencies which are explicitly specified in that build chain.

If you still have trouble, try sending your recipe (.bb file and all other
components you might have), bblayers.conf, etc to the list because we're not
mind readers either :-)


> On Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S <sudhangathan@gmail.com<mailto:
> sudhangathan@gmail.com**>> wrote:
>
>     Can you please paste your command and it's output here..! If you don't
> mind..!! Or explain with equivalent clarity. It
>     l will good if you can also put in your directory structure.
>
>     ------------------------------**---
>     Sudhangathan BS
>     Ph:(+91) 9731-905-205
>     ------------------------------**---
>
>
>     On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar <
> varun292006@gmail.com <mailto:varun292006@gmail.com>**> wrote:
>
>         Actually the package which I am building is having some
> dependencies on some libraries. So I provided those libraries with the help
> of creating layers. I did not extract
>         those from meta-openembedded, instead, I manually created two
> layers and added them in bblayer.conf file. Now, after configuring all this
> stuff I am again trying to
>         recompile my code but still I am getting the same error saying
> that it is not able to find those libraries provided by me in the form of
> layers.
>
>
>         On Mon, Jun 17, 2013 at 11:03 PM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> wrote:
>
>             On 2013-06-17 18:08, varun bhatnagar wrote:
>
>                 Hi,
>
>                 I am trying to compile my code using yocto. For that I
> have created two layers: "meta-networking" and "meta-oe". I have added
> these dependencies in bblayer.conf
>                 too. But these are
>                 not getting build. Can anyone please tell me what should I
> do to make this work.
>
>
>             More details are needed to be able to help.
>
>             What do you mean "not getting built"?  Do you mean that if you
>             try to build recipe XYZ which is in one of those layers that
> it's
>             not being built?  Or perhaps you mean something else?
>
>             What do you mean "created two layers: ..."?  Did you just
> extract
>             these from meta-openembedded?  or something else?
>
>             --
>             ------------------------------**__----------------------------
> **--
>
>             Gary Thomas                 |  Consulting for the
>             MLB Associates              |    Embedded world
>             ------------------------------**__----------------------------
> **--
>             ______________________________**___________________
>             yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>             https://lists.yoctoproject.__**org/listinfo/yocto <
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
> >
>
>
>
>         ______________________________**_________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>
>         https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>
>
----------
From: *varun bhatnagar* <varun292006@gmail.com>
Date: Wed, Jun 19, 2013 at 9:40 PM
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>


Thanks for the reply Gary. I am attaching recipe file below. Please have a
look at it. And yes, there is a line where in all the dependencies are
given.
And this is the link from where I created the layer :
http://cgit.openembedded.org/meta-openembedded/tree/

//
Varun

--047d7bd9165a93e51304dfc2d842
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Sorry I am sending this again but c=
an anybody suggest something for this problem please (please go through the=
 mail chain below).</div><div><br></div><div>//</div><div>Varun<br><br><div=
 class=3D"gmail_quote">
<span style=3D"font-size:large;font-weight:bold">Forwarded conversation</sp=
an><br>Subject: <b class=3D"gmail_sendername">Yocto Layers not getting reco=
gnized by bitbake</b><br>------------------------<br><br><span class=3D"und=
efined"><font color=3D"#888">From: <b class=3D"undefined">varun bhatnagar</=
b> <span dir=3D"ltr">&lt;<a href=3D"mailto:varun292006@gmail.com">varun2920=
06@gmail.com</a>&gt;</span><br>
Date: Mon, Jun 17, 2013 at 10:38 PM<br>To: &quot;<a href=3D"mailto:yocto@yo=
ctoproject.org">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yoct=
o@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br></font><br></span><br=
>
<div dir=3D"ltr">Hi,<div><br></div><div>I am trying to compile my code usin=
g yocto. For that I have created two layers: &quot;meta-networking&quot; an=
d &quot;meta-oe&quot;. I have added these dependencies in bblayer.conf too.=
 But these are not getting build. Can anyone please tell me what should I d=
o to make this work.</div>

<div><br></div><div>//</div><span class=3D"HOEnZb"><font color=3D"#888888">=
<div>Varun</div></font></span></div>
<br>----------<br><span class=3D"undefined"><font color=3D"#888">From: <b c=
lass=3D"undefined">Gary Thomas</b> <span dir=3D"ltr">&lt;<a href=3D"mailto:=
gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;</span><br>Date: Mon, Jun 17, 2=
013 at 11:03 PM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
></font><br></span><br><div class=3D"HOEnZb"></div>
More details are needed to be able to help.<br>
<br>
What do you mean &quot;not getting built&quot;? =A0Do you mean that if you<=
br>
try to build recipe XYZ which is in one of those layers that it&#39;s<br>
not being built? =A0Or perhaps you mean something else?<br>
<br>
What do you mean &quot;created two layers: ...&quot;? =A0Did you just extra=
ct<br>
these from meta-openembedded? =A0or something else?<span class=3D"HOEnZb"><=
font color=3D"#888888"><br>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span><br>----------<br><span class=3D"undefined"><font color=3D"#8=
88">From: <b class=3D"undefined">varun bhatnagar</b> <span dir=3D"ltr">&lt;=
<a href=3D"mailto:varun292006@gmail.com">varun292006@gmail.com</a>&gt;</spa=
n><br>
Date: Mon, Jun 17, 2013 at 11:33 PM<br>To: &quot;<a href=3D"mailto:yocto@yo=
ctoproject.org">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yoct=
o@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br></font><br></span><br=
>
<div dir=3D"ltr">Actually the package which I am building is having some de=
pendencies on some libraries. So I provided those libraries with the help o=
f creating layers. I did not extract those from meta-openembedded, instead,=
 I manually created two layers and added them in bblayer.conf file. Now, af=
ter configuring all this stuff I am again trying to recompile my code but s=
till I am getting the same error saying that it is not able to find those l=
ibraries provided by me in the form of layers.</div>
<div class=3D"HOEnZb"></div><br>----------<br><span class=3D"undefined"><fo=
nt color=3D"#888">From: <b class=3D"undefined">Sudhangathan B S</b> <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:sudhangathan@gmail.com">sudhangathan@gmail=
.com</a>&gt;</span><br>
Date: Tue, Jun 18, 2013 at 2:32 AM<br>To: varun bhatnagar &lt;<a href=3D"ma=
ilto:varun292006@gmail.com">varun292006@gmail.com</a>&gt;<br>Cc: &quot;<a h=
ref=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&quot; &lt;=
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br=
>
</font><br></span><br><div dir=3D"ltr">Can you please paste your command an=
d it&#39;s output here..! If you don&#39;t mind..!! Or explain with equival=
ent clarity. It<div>l will good if you can also put in your directory struc=
ture.<br>
<div class=3D"gmail_extra">

<br clear=3D"all"><div>---------------------------------<br>Sudhangathan BS=
<br>Ph:(+91) 9731-905-205<br>---------------------------------</div><div></=
div></div></div></div>
<br>----------<br><span class=3D"undefined"><font color=3D"#888">From: <b c=
lass=3D"undefined">varun bhatnagar</b> <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:varun292006@gmail.com">varun292006@gmail.com</a>&gt;</span><br>Date: Tu=
e, Jun 18, 2013 at 9:58 PM<br>
To: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br></font><br></span><br><div dir=3D"ltr">I am building one of =
my application using yocto by giving bitbake -k core-image-minimal command =
but I am facing some errors as this application requires two libraries<div>
<div><b>1) net-snmp</b></div><div>
<b>2) fuse</b></div><div><b><br></b></div><div>I have one link where in the=
y are asking to add these two libraries in the form of layers and then exec=
ute bitbake -k core-image-minimal command.</div></div><div>
<br></div><div>I am pasting one screenshot below:</div><div><img src=3D"htt=
ps://inhydm03.tcs.com/mail/mail2/381897.nsf/4490c896b844c5b085256521006913f=
9/00ce494b4b1a5a9f65257b8e00493186/Body/0.84?OpenElement&amp;FieldElemForma=
t=3Dgif"><br>

</div><div>As you can I have added two layers meta-networking (contains net=
-snmp) and meta-oe(contains fuse). After this I added these layers in <b>bu=
ild/conf/bblayer.conf.</b></div><div><b><br></b></div><div>
<img src=3D"https://inhydm03.tcs.com/mail/mail2/381897.nsf/4490c896b844c5b0=
85256521006913f9/00ce494b4b1a5a9f65257b8e00493186/Body/0.34E8?OpenElement&a=
mp;FieldElemFormat=3Dgif"><b><br></b></div><div>After this I again executed=
 bitbake -k core-image-minimal command but I faced the same error as before=
... :(</div>

<div>Is there anyway that these layers get recognized? Do I need to execute=
 some other command?</div><div><br></div><div><br></div><div>//</div><span =
class=3D"HOEnZb"><font color=3D"#888888"><div>Varun</div></font></span><div=
>
</div></div>
<br>----------<br><span class=3D"undefined"><font color=3D"#888">From: <b c=
lass=3D"undefined">Gary Thomas</b> <span dir=3D"ltr">&lt;<a href=3D"mailto:=
gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;</span><br>Date: Tue, Jun 18, 2=
013 at 10:11 PM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
></font><br></span><br><div class=3D"im">On 2013-06-18 17:28, varun bhatnag=
ar wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
I am building one of my application using yocto by giving bitbake -k core-i=
mage-minimal command but I am facing some errors as this application requir=
es two libraries<br></div>
*1) net-snmp*<br>
*2) fuse*<br>
*<div class=3D"im"><br>
*<br>
I have one link where in they are asking to add these two libraries in the =
form of layers and then execute bitbake -k core-image-minimal command.<br>
<br>
I am pasting one screenshot below:<br>
<br></div>
As you can I have added two layers meta-networking (contains net-snmp) and =
meta-oe(contains fuse). After this I added these layers in *build/conf/bbla=
yer.conf.*<br>
*<br>
*<br>
*<div class=3D"im"><br>
*<br>
After this I again executed bitbake -k core-image-minimal command but I fac=
ed the same error as before... :(<br>
Is there anyway that these layers get recognized? Do I need to execute some=
 other command?<br>
</div></blockquote>
<br>
Obviously, this is a recipe that you made.<br>
<br>
Does it show these dependencies? =A0e.g. a line like this in your recipe fi=
le:<br>
=A0 DEPENDS =3D &quot;net-snmp fuse&quot;<br>
(or whatever the *packages* that you need are)<br>
<br>
Bitbake can&#39;t read your mind; it will only build the recipes you ask an=
d the<br>
dependencies which are explicitly specified in that build chain.<br>
<br>
If you still have trouble, try sending your recipe (.bb file and all other<=
br>
components you might have), bblayers.conf, etc to the list because we&#39;r=
e not<br>
mind readers either :-)<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
On Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S &lt;<a href=3D"mailto:sud=
hangathan@gmail.com" target=3D"_blank">sudhangathan@gmail.com</a> &lt;mailt=
o:<a href=3D"mailto:sudhangathan@gmail.com" target=3D"_blank">sudhangathan@=
gmail.com</a><u></u>&gt;&gt; wrote:<br>

<br>
=A0 =A0 Can you please paste your command and it&#39;s output here..! If yo=
u don&#39;t mind..!! Or explain with equivalent clarity. It<br>
=A0 =A0 l will good if you can also put in your directory structure.<br>
<br>
=A0 =A0 ------------------------------<u></u>---<br>
=A0 =A0 Sudhangathan BS<br>
=A0 =A0 Ph:(+91) 9731-905-205<br>
=A0 =A0 ------------------------------<u></u>---<br>
<br>
<br></div><div class=3D"im">
=A0 =A0 On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar &lt;<a href=3D"ma=
ilto:varun292006@gmail.com" target=3D"_blank">varun292006@gmail.com</a> &lt=
;mailto:<a href=3D"mailto:varun292006@gmail.com" target=3D"_blank">varun292=
006@gmail.com</a>&gt;<u></u>&gt; wrote:<br>

<br>
=A0 =A0 =A0 =A0 Actually the package which I am building is having some dep=
endencies on some libraries. So I provided those libraries with the help of=
 creating layers. I did not extract<br>
=A0 =A0 =A0 =A0 those from meta-openembedded, instead, I manually created t=
wo layers and added them in bblayer.conf file. Now, after configuring all t=
his stuff I am again trying to<br>
=A0 =A0 =A0 =A0 recompile my code but still I am getting the same error say=
ing that it is not able to find those libraries provided by me in the form =
of layers.<br>
<br>
<br></div><div class=3D"im">
=A0 =A0 =A0 =A0 On Mon, Jun 17, 2013 at 11:03 PM, Gary Thomas &lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;m=
ailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.=
com</a>&gt;&gt; wrote:<br>

<br>
=A0 =A0 =A0 =A0 =A0 =A0 On 2013-06-17 18:08, varun bhatnagar wrote:<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Hi,<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 I am trying to compile my code using yocto.=
 For that I have created two layers: &quot;meta-networking&quot; and &quot;=
meta-oe&quot;. I have added these dependencies in bblayer.conf<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 too. But these are<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 not getting build. Can anyone please tell m=
e what should I do to make this work.<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 More details are needed to be able to help.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 What do you mean &quot;not getting built&quot;? =A0=
Do you mean that if you<br>
=A0 =A0 =A0 =A0 =A0 =A0 try to build recipe XYZ which is in one of those la=
yers that it&#39;s<br>
=A0 =A0 =A0 =A0 =A0 =A0 not being built? =A0Or perhaps you mean something e=
lse?<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 What do you mean &quot;created two layers: ...&quot=
;? =A0Did you just extract<br>
=A0 =A0 =A0 =A0 =A0 =A0 these from meta-openembedded? =A0or something else?=
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 --<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 ------------------------------<u></u>__------------=
----------------<u></u>--<div class=3D"im"><br>
=A0 =A0 =A0 =A0 =A0 =A0 Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Co=
nsulting for the<br>
=A0 =A0 =A0 =A0 =A0 =A0 MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0=
Embedded world<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 ------------------------------<u></u>__------------=
----------------<u></u>--<br>
=A0 =A0 =A0 =A0 =A0 =A0 ______________________________<u></u>______________=
_____<br>
=A0 =A0 =A0 =A0 =A0 =A0 yocto mailing list<br>
=A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoct=
oproject.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject." target=3D"_=
blank">https://lists.yoctoproject.</a>__<u></u>org/listinfo/yocto &lt;<a hr=
ef=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">http=
s://lists.yoctoproject.<u></u>org/listinfo/yocto</a>&gt;<br>

<br>
<br>
<br>
=A0 =A0 =A0 =A0 ______________________________<u></u>_________________<br>
=A0 =A0 =A0 =A0 yocto mailing list<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<div class=3D"=
im"><br>
=A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><b=
r>
<br>
<br>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</div></blockquote><div class=3D"HOEnZb"></div><br>----------<br><span clas=
s=3D"undefined"><font color=3D"#888">From: <b class=3D"undefined">varun bha=
tnagar</b> <span dir=3D"ltr">&lt;<a href=3D"mailto:varun292006@gmail.com">v=
arun292006@gmail.com</a>&gt;</span><br>
Date: Wed, Jun 19, 2013 at 9:40 PM<br>To: &quot;<a href=3D"mailto:yocto@yoc=
toproject.org">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto=
@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br></font><br></span><br>
<div dir=3D"ltr">Thanks for the reply Gary. I am attaching recipe file belo=
w. Please have a look at it. And yes, there is a line where in all the depe=
ndencies are given.=A0<div>And this is the link from where I created the la=
yer :=A0<a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/" ta=
rget=3D"_blank">http://cgit.openembedded.org/meta-openembedded/tree/</a><br=
>

<div><br></div><div><div>//</div><span class=3D"HOEnZb"><font color=3D"#888=
888"><div>Varun</div></font></span><div></div></div></div></div>
<br></div><br></div></div>

--047d7bd9165a93e51304dfc2d842--

--047d7bd9165a93e51504dfc2d844
Content-Type: text/plain; charset=US-ASCII; name="myRecipe.bb.txt"
Content-Disposition: attachment; filename="myRecipe.bb.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hi4ptvni0

REVTQ1JJUFRJT04gPSAiYml0YWtlIGZpbGUiDQpERVBFTkRTID0gIm5ldC1zbm1wIGZ1c2UiDQpS
REVQRU5EUyA9ICJjdXJsIHJwbSBvcGVuc3NoIG9wZW5sZGFwIHByb2NwcyBwc21pc2Mgc2VkIG5l
dC1zbm1wLXNlcnZlciINCkxJQ0VOU0UgPSAiR1BMdjIrIg0KUFIgPSAicjAiDQpTUkNfVVJJID0g
ImZpbGU6Ly8vaG9tZS91c2VyL015YXBwLnRhci5neiINCkVYVFJBX09FQ01BS0UgKz0gIi1EQ01B
S0VfRklORF9ST09UX1BBVEg9JHtTVEFHSU5HX0RJUl9IT1NUfSAiDQpFWFRSQV9PRUNNQUtFICs9
ICItRFRBUkdFVF9BUkNISVRFQ1RVUkU9JHtUQVJHRVRfQVJDSH0gIg0KRVhUUkFfT0VDTUFLRSAr
PSAiLURDTUFLRV9TWVNURU1fTkFNRT1MaW51eCAiDQpFWFRSQV9PRUNNQUtFICs9ICItRENNQUtF
X1NZU1RFTV9WRVJTSU9OPTEgIg0KRVhUUkFfT0VDTUFLRSArPSAiLURSU1RBVEU9JHtQUn0gIg0K
RVhUUkFfT0VDTUFLRSArPSAiLURDTUFLRV9GSU5EX1JPT1RfUEFUSF9NT0RFX1BST0dSQU09TkVW
RVIgIg0KRVhUUkFfT0VDTUFLRSArPSAiLURDTUFLRV9GSU5EX1JPT1RfUEFUSF9NT0RFX0xJQlJB
Ulk9T05MWSAiDQpFWFRSQV9PRUNNQUtFICs9ICItRENNQUtFX0ZJTkRfUk9PVF9QQVRIX01PREVf
SU5DTFVERT1PTkxZICINCkVYVFJBX09FQ01BS0UgKz0gIi1EUlBNPTEgIg0KIA0KaW5oZXJpdCBj
bWFrZQ0KIA0KZG9fY29uZmlndXJlKCl7DQogICAgICAgIGNtYWtlIC4uJHtFWFRSQV9PRUNNQUtF
fQ0KfQ0KIA0KZG9fY29tcGlsZSgpew0KICAgICAgICBvZV9ydW5tYWtlIGFsbA0KfQ==

--047d7bd9165a93e51504dfc2d844--
