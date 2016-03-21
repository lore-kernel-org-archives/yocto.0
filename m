Return-Path: <steve.rae@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9284AE00C3C; Mon, 21 Mar 2016 09:48:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F672E00951
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2016 09:48:40 -0700 (PDT)
Received: by mail-lf0-f50.google.com with SMTP id h198so112177439lfh.0
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2016 09:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=5YCxB121xUK7yePp4LXnb+o2fKnfFXWSIb4d+5RITSA=;
	b=UGqX8m2tWgTQrhuVwC9qUsrhlQ8OtvtyZiLH/i0PqX8p/fsrcftsBBb+FJ+kJTfBEL
	HUPw4B0Yu0Jn/zzLS1sQ6gGynyYk2vuK0W6DA5fJDwOFlslOA4AjD2NgDGYmMsgU0wWa
	4d0T+icnKcLdFEwY9C79xiCJX3wnLFopE153Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=5YCxB121xUK7yePp4LXnb+o2fKnfFXWSIb4d+5RITSA=;
	b=g1r0Sd+sE25/OTkSWowMLO/2JbZSDm65P6TJM5pCNW0XGvnWx98fO2M3nyGpchx5mZ
	zkkdG81HAybycPIHNv08nPVFomqFb+hwmWtV/pYAC+UFmi573osyOnk/3+uht6MKSvh/
	3pT/4iwsi20uQHsY68qV6jmAjYwVC7b9FdEXBoFDapbmSHGafNrfB0kDFhCvoNfCsSIb
	EH57n9QboaUFZ6S8YNW1nsHpWLsGCxagPSU5IrpM4TBy+URJ76qrsI9CX6Cy25lgpTly
	zOcJ4/x5wQ7BGa/Um6waKrLdbeRHDAUK8vh6y76a67QMvxKnZO/0Jus9sg/DU9Mm6i+y
	HxZw==
X-Gm-Message-State: AD7BkJK7ua4Ibm3M+78xegQxjKBBpaeK/0HUNH6Xd7TOccjWxJPmDdTq/+x4CrjP9i/KHnDmaDY3sjL2vfu+QJXk
MIME-Version: 1.0
X-Received: by 10.25.138.7 with SMTP id m7mr11847865lfd.109.1458578918166;
	Mon, 21 Mar 2016 09:48:38 -0700 (PDT)
Received: by 10.25.214.81 with HTTP; Mon, 21 Mar 2016 09:48:38 -0700 (PDT)
In-Reply-To: <2658887.snTL7kTzPG@peggleto-mobl.ger.corp.intel.com>
References: <CAM7GXo=mfAE5p4tiiYk6wrpSXU6XQTdY7edQJ+kgew-ch9OLZQ@mail.gmail.com>
	<CAM7GXokNuDyGS4r3avTBoPY=JmPsEjFHuMcTHtdM7uY4hjwAiA@mail.gmail.com>
	<3721500.KpZtWbXOcs@peggleto-mobl.ger.corp.intel.com>
	<2658887.snTL7kTzPG@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 21 Mar 2016 09:48:38 -0700
Message-ID: <CAM7GXonaK1O26wzzZQPcp6Jjkkv325ZpbOXgoZ6VhxrbPQMgRA@mail.gmail.com>
From: Steve Rae <steve.rae@broadcom.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel: "devtool modify -x" issue
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
X-List-Received-Date: Mon, 21 Mar 2016 16:48:43 -0000
Content-Type: multipart/alternative; boundary=001a113fb5404bfdfd052e91dee5

--001a113fb5404bfdfd052e91dee5
Content-Type: text/plain; charset=UTF-8

awesome! Thanks

On Sun, Mar 20, 2016 at 5:56 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Steve,
>
> FYI the backports just got merged over the weekend.
>
> Cheers,
> Paul
>
> On Tue, 15 Mar 2016 09:53:08 Paul Eggleton wrote:
> > I hope we are talking a week or less, but I'm not able to give you a
> > definitive answer - it depends on patch review and how busy we are
> dealing
> > with issues on the master branch among other things.
> >
> > Cheers,
> > Paul
> >
> > On Mon, 14 Mar 2016 13:49:40 Steve Rae wrote:
> > > thanks much...
> > > I am very new to this: does "not long though" mean 2-3 days or 2-3
> weeks
> > > or
> > > ???
> > >
> > >
> > > On Mon, Mar 14, 2016 at 1:47 PM, Paul Eggleton
> > >
> > > <paul.eggleton@linux.intel.com> wrote:
> > > > Hi Steve,
> > > >
> > > > I've just sent out the patches; beyond that it's a matter of the
> stable
> > > > branch testing and integration process. I hope not long though.
> > > >
> > > > Cheers,
> > > > Paul
> > > >
> > > > On Mon, 14 Mar 2016 11:51:08 Steve Rae wrote:
> > > >> Paul -- please ETA for getting this into the "jethro" branch.
> > > >> Thanks, Steve
> > > >>
> > > >> On Fri, Mar 11, 2016 at 10:11 AM, Steve Rae <steve.rae@broadcom.com
> >
> >
> > wrote:
> > > >> > OK - this seems to build successfully - Thanks!
> > > >> >
> > > >> >>> although I still do see the line:
> > > >> >      Cloning into '/tmp/devtool6ZA4IK/workdir/source'...
> > > >> >
> > > >> > On Thu, Mar 10, 2016 at 7:07 PM, Paul Eggleton
> > > >> >
> > > >> > <paul.eggleton@linux.intel.com> wrote:
> > > >> >> On Fri, 11 Mar 2016 07:55:25 Paul Eggleton wrote:
> > > >> >>> On Wed, 09 Mar 2016 10:12:30 Steve Rae wrote:
> > > >> >>> > ( using jethro )
> > > >> >>> >
> > > >> >>> > I have a 'linux-yocto-custom' layer which builds successfully;
> > > >> >>> > then
> > > >> >>> > I
> > > >
> > > > run:
> > > >> >>> >     devtool modify -x linux-yocto-custom ../../poky-dev/kernel
> > > >> >>> > >>
> > > >> >>> > >> I see a line:
> > > >> >>> >   Cloning into '/tmp/devtoolfgiLXr/workdir/source'...
> > > >> >>> >
> > > >> >>> > Then I run:
> > > >> >>> >     devtool build linux-yocto-custom
> > > >> >>> > >>
> > > >> >>> > >> it reports the following:
> > > >> >>> > Log data follows:
> > > >> >>> > | DEBUG: Executing shell function do_kernel_configme
> > > >> >>> > | NOTE: kernel configme
> > > >> >>> > | [INFO] Configuring target/machine combo: "standard/bcmjava"
> > > >> >>> > | [ERROR] frag
> > > >> >>> >
> > > >> >>> >
> /tmp/devtoolfgiLXr/workdir/source/.meta/cfg/scratch/obj/tmp/devto
> > > >> >>> > ol
> > > >> >>> > fgi
> > > >> >>> > LXr/
> > > >> >>> > wo rkdir/defconfig does not exist
> > > >> >>> >
> > > >> >>> > | [ERROR] No configuration fragments found, this typically is
> a
> > > >> >>> >
> > > >> >>> > misconfigured BSP.
> > > >> >>> >
> > > >> >>> > |         Check that fragments (or defconfigs) are referenced
> by
> > > >> >>> > |         the
> > > >> >>> > |         board
> > > >> >>> >
> > > >> >>> > description.
> > > >> >>> >
> > > >> >>> > | config of "standard/bcmjava" failed
> > > >> >>> > | WARNING: exit code 1 from a shell command.
> > > >> >>> >
> > > >> >>> > which is true, because "devtool modify -x" deletes the temp
> > > >> >>> > directory
> > > >> >>> > ("/tmp/devtoolfgiLXr") that it used to create this specified
> > > >> >>> > workspace....
> > > >> >>>
> > > >> >>> Hmm, it looks like the temporary path is leaking in somewhere.
> Is
> > > >> >>> there
> > > >> >>> an
> > > >> >>> easy way I can reproduce this here so I can debug it?
> > > >> >>
> > > >> >> Actually I just realised, this task ought not to be running at
> all -
> > > >> >> in
> > > >> >> master we've disabled it under these circumsances. There's also
> one
> > > >> >> other fix on master that you'd benefit from in jethro - I've put
> > > >> >> them
> > > >> >> both on this>>
> > > >> >>
> > > >> >> contrib branch:
> > > >> >>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=paul
> > > >> >>   e/
> > > >> >>   jet
> > > >> >>   hro-fixes4>>
> > > >> >>
> > > >> >> If you could let me know how it works for you that would be
> great;
> > > >> >> I'll
> > > >> >> send it out soon.
> > > >> >>
> > > >> >> Cheers,
> > > >> >> Paul
> > > >> >>
> > > >> >> --
> > > >> >>
> > > >> >> Paul Eggleton
> > > >> >> Intel Open Source Technology Centre
> > > >
> > > > --
> > > >
> > > > Paul Eggleton
> > > > Intel Open Source Technology Centre
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a113fb5404bfdfd052e91dee5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">awesome! Thanks</div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Sun, Mar 20, 2016 at 5:56 PM, Paul Eggleton <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_=
blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">Hi Steve,<br>
<br>
FYI the backports just got merged over the weekend.<br>
<br>
Cheers,<br>
Paul<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Tue, 15 Mar 2016 09:53:08 Paul Eggleton wrote:<br>
&gt; I hope we are talking a week or less, but I&#39;m not able to give you=
 a<br>
&gt; definitive answer - it depends on patch review and how busy we are dea=
ling<br>
&gt; with issues on the master branch among other things.<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
&gt; On Mon, 14 Mar 2016 13:49:40 Steve Rae wrote:<br>
&gt; &gt; thanks much...<br>
&gt; &gt; I am very new to this: does &quot;not long though&quot; mean 2-3 =
days or 2-3 weeks<br>
&gt; &gt; or<br>
&gt; &gt; ???<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Mon, Mar 14, 2016 at 1:47 PM, Paul Eggleton<br>
&gt; &gt;<br>
&gt; &gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleto=
n@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt; &gt; Hi Steve,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;ve just sent out the patches; beyond that it&#39;s a m=
atter of the stable<br>
&gt; &gt; &gt; branch testing and integration process. I hope not long thou=
gh.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Cheers,<br>
&gt; &gt; &gt; Paul<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Mon, 14 Mar 2016 11:51:08 Steve Rae wrote:<br>
&gt; &gt; &gt;&gt; Paul -- please ETA for getting this into the &quot;jethr=
o&quot; branch.<br>
&gt; &gt; &gt;&gt; Thanks, Steve<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; On Fri, Mar 11, 2016 at 10:11 AM, Steve Rae &lt;<a href=
=3D"mailto:steve.rae@broadcom.com">steve.rae@broadcom.com</a>&gt;<br>
&gt;<br>
&gt; wrote:<br>
&gt; &gt; &gt;&gt; &gt; OK - this seems to build successfully - Thanks!<br>
&gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; although I still do see the line:<br>
&gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 Cloning into &#39;/tmp/devtool6=
ZA4IK/workdir/source&#39;...<br>
&gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; On Thu, Mar 10, 2016 at 7:07 PM, Paul Eggleton<br>
&gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com=
">paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt; &gt;&gt; &gt;&gt; On Fri, 11 Mar 2016 07:55:25 Paul Eggleton wrot=
e:<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; On Wed, 09 Mar 2016 10:12:30 Steve Rae wrot=
e:<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; ( using jethro )<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; I have a &#39;linux-yocto-custom&#39; =
layer which builds successfully;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; then<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; I<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; run:<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0devtool modify -x l=
inux-yocto-custom ../../poky-dev/kernel<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; &gt;&gt; I see a line:<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A0Cloning into &#39;/tmp/dev=
toolfgiLXr/workdir/source&#39;...<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; Then I run:<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0devtool build linux=
-yocto-custom<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; &gt;&gt; it reports the following:<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; Log data follows:<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; | DEBUG: Executing shell function do_k=
ernel_configme<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; | NOTE: kernel configme<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; | [INFO] Configuring target/machine co=
mbo: &quot;standard/bcmjava&quot;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; | [ERROR] frag<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; /tmp/devtoolfgiLXr/workdir/source/.met=
a/cfg/scratch/obj/tmp/devto<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; ol<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; fgi<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; LXr/<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; wo rkdir/defconfig does not exist<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; | [ERROR] No configuration fragments f=
ound, this typically is a<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; misconfigured BSP.<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Che=
ck that fragments (or defconfigs) are referenced by<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the=
<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0boa=
rd<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; description.<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; | config of &quot;standard/bcmjava&quo=
t; failed<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; | WARNING: exit code 1 from a shell co=
mmand.<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; which is true, because &quot;devtool m=
odify -x&quot; deletes the temp<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; directory<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; (&quot;/tmp/devtoolfgiLXr&quot;) that =
it used to create this specified<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; &gt; workspace....<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; Hmm, it looks like the temporary path is le=
aking in somewhere. Is<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; there<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; an<br>
&gt; &gt; &gt;&gt; &gt;&gt;&gt; easy way I can reproduce this here so I can=
 debug it?<br>
&gt; &gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt; Actually I just realised, this task ought not t=
o be running at all -<br>
&gt; &gt; &gt;&gt; &gt;&gt; in<br>
&gt; &gt; &gt;&gt; &gt;&gt; master we&#39;ve disabled it under these circum=
sances. There&#39;s also one<br>
&gt; &gt; &gt;&gt; &gt;&gt; other fix on master that you&#39;d benefit from=
 in jethro - I&#39;ve put<br>
&gt; &gt; &gt;&gt; &gt;&gt; them<br>
&gt; &gt; &gt;&gt; &gt;&gt; both on this&gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt; contrib branch:<br>
&gt; &gt; &gt;&gt; &gt;&gt;=C2=A0 =C2=A0<a href=3D"http://git.yoctoproject.=
org/cgit/cgit.cgi/poky-contrib/log/?h=3Dpaul" rel=3D"noreferrer" target=3D"=
_blank">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dpau=
l</a><br>
&gt; &gt; &gt;&gt; &gt;&gt;=C2=A0 =C2=A0e/<br>
&gt; &gt; &gt;&gt; &gt;&gt;=C2=A0 =C2=A0jet<br>
&gt; &gt; &gt;&gt; &gt;&gt;=C2=A0 =C2=A0hro-fixes4&gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt; If you could let me know how it works for you t=
hat would be great;<br>
&gt; &gt; &gt;&gt; &gt;&gt; I&#39;ll<br>
&gt; &gt; &gt;&gt; &gt;&gt; send it out soon.<br>
&gt; &gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt; Cheers,<br>
&gt; &gt; &gt;&gt; &gt;&gt; Paul<br>
&gt; &gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt; --<br>
&gt; &gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt;&gt; Paul Eggleton<br>
&gt; &gt; &gt;&gt; &gt;&gt; Intel Open Source Technology Centre<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Paul Eggleton<br>
&gt; &gt; &gt; Intel Open Source Technology Centre<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--001a113fb5404bfdfd052e91dee5--
