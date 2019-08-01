Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E43A3E00C87; Thu,  1 Aug 2019 06:53:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BD5FE00BD5
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 06:53:09 -0700 (PDT)
Received: by mail-qk1-f196.google.com with SMTP id s22so52092114qkj.12
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 06:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7V2wVYY0K6R7bf2gN6/Nk9NrtJhGKrpSh3ETFmV9dyA=;
	b=UIST7pkBxlSD9HZNdH6F+gZKYWBAVjmWFJX3T0kx/rjwetcd+qBrVkLcHoTkkZanoI
	lnFOj0sh0ix+PA1sxop5pPPlAzIH+n/VbRMww76WE+Xst5YHDJrNpF8bMucVq6ucADOr
	s+U1kCodMnZAWTzv3u4NzXtvGsdetjLqTtiYmLMI09ir0Lno1Fzn6bwMFt7gTSRJc+lL
	g9d15Rd4OX+G3UAW4ZuVLlRBoDdRkMfykHt9BzudtAvQvNatCdOBB7dkeX4blWJ3Fk1h
	d+euYMXcaKLOHPjjQjrCwhld2Ou/Wesmwlbbe7/d7/yV4u4VAlOi4iSQYBsX8UnnLLcd
	3Hfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7V2wVYY0K6R7bf2gN6/Nk9NrtJhGKrpSh3ETFmV9dyA=;
	b=IeBhuEH7FciRkF9qWmUD5+uekWhwpQyNYwSB0JoJejuIQkjZ8nCwBGf6INoDDpc5Yp
	KtRI3no/KCPuh4tloThhyPO8ccsJJ3oj5ncrttFGM0WtKAQAXuA1GPlP2ZDN9jzls3WQ
	gVZ+ML9z0gEdxlLP5L5SnWB3K0S+n1gdjc71ZSOyvrVp05eHCyb2sY0afxxbgzyPAa8u
	KY/FvmBOTLjz3CA4AtST8+qyiBpqu1kobMxaT86HCw+65ERtdVxsG6CVXJPeNPTKU3du
	QNjxtyMPoZ+kUNiQe00RKANfkiqCClHMLB8EPcfxSKz0tiow5A2qXk//i/qpaQDf08sd
	dI4A==
X-Gm-Message-State: APjAAAVlGpMBK1nIENJ517S9sa97xKAMRyZ6G7bn0QAtw+j8oRldPcQa
	rsuyuRKYOL0msEQ4Cd99sp2AOiWZ+3RBUzX3ZoA=
X-Google-Smtp-Source: APXvYqxE+D12zvwjS7TxT6td2pSu+pInC453KNVyUPLfv5glAJERkAJbYgQ4d+Vqq59gg6LozUMyrYvszYucbhn87pk=
X-Received: by 2002:a37:61c3:: with SMTP id
	v186mr81058980qkb.158.1564667588337; 
	Thu, 01 Aug 2019 06:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190730183621.26193-1-btgoodwin@geontech.com>
	<82dd561e-17a9-e65a-48ef-23b005bd94c7@mvista.com>
In-Reply-To: <82dd561e-17a9-e65a-48ef-23b005bd94c7@mvista.com>
From: Thomas Goodwin <btgoodwin@geontech.com>
Date: Thu, 1 Aug 2019 09:52:57 -0400
Message-ID: <CABudRdxFBN166m8+eRJECFvXs5zbQkw8d0M=QF=G+6HV8=1nsw@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder2][PATCH 1/3] Bug fix: added support for ABHELPER_JSON environ.
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
X-List-Received-Date: Thu, 01 Aug 2019 13:53:12 -0000
Content-Type: multipart/alternative; boundary="000000000000cb728f058f0e8f36"

--000000000000cb728f058f0e8f36
Content-Type: text/plain; charset="UTF-8"

It's already there, this patch is to make it work as described:
http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder2/tree/README-WALKTHROUGHS.md?h=contrib/tgoodwin/config-json-fixes#n79

Consequently, having the variable in your environment is the only way for
the janitor to parse and use the same configuration files as the controller.

Thomas

On Thu, Aug 1, 2019 at 7:33 AM akuster <akuster@mvista.com> wrote:

>
>
> On 7/30/19 11:36 AM, Thomas Goodwin wrote:
> > The readme suggests exporting this variable from the
> > environment to expose multiple configuration JSON files
> > but the intended behavior doesn't work without adding the
> > variable to extra_env.
>
> Any chance of updating documentation on how to use this?
>
> - armin
> >
> > Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
> > ---
> >  builders.py | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/builders.py b/builders.py
> > index 5765040..3d12969 100644
> > --- a/builders.py
> > +++ b/builders.py
> > @@ -15,7 +15,8 @@ maxsteps = 9
> >  # Environment to pass into the workers, e.g. to load further local
> configuration
> >  # fragments
> >  extra_env = {}
> > -#extra_env = {"ABHELPER_JSON" : "config.json
> /home/pokybuild/config-local.json"}
> > +if os.environ.get('ABHELPER_JSON'):
> > +    extra_env['ABHELPER_JSON'] = os.environ['ABHELPER_JSON']
> >
> >  @util.renderer
> >  def get_sstate_release_number(props):
>
>

--000000000000cb728f058f0e8f36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">It&#39;s already there, this patch is to =
make it work as described:=C2=A0=C2=A0<a href=3D"http://git.yoctoproject.or=
g/cgit.cgi/yocto-autobuilder2/tree/README-WALKTHROUGHS.md?h=3Dcontrib/tgood=
win/config-json-fixes#n79">http://git.yoctoproject.org/cgit.cgi/yocto-autob=
uilder2/tree/README-WALKTHROUGHS.md?h=3Dcontrib/tgoodwin/config-json-fixes#=
n79</a><div><input name=3D"virtru-metadata" type=3D"hidden" value=3D"{&quot=
;email-policy&quot;:{&quot;state&quot;:&quot;closed&quot;,&quot;expirationU=
nit&quot;:&quot;days&quot;,&quot;disableCopyPaste&quot;:false,&quot;disable=
Print&quot;:false,&quot;disableForwarding&quot;:false,&quot;enableNoauth&qu=
ot;:false,&quot;persistentProtection&quot;:false,&quot;expandedWatermarking=
&quot;:false,&quot;expires&quot;:false,&quot;isManaged&quot;:false},&quot;a=
ttachments&quot;:{},&quot;compose-id&quot;:&quot;12&quot;,&quot;compose-win=
dow&quot;:{&quot;secure&quot;:false}}"><div><br></div><div>Consequently, ha=
ving the variable in your environment is the only way for the janitor to pa=
rse and use the same configuration files as the controller.</div><div><br><=
/div><div>Thomas</div></div></div><br><div class=3D"gmail_quote" style=3D""=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 1, 2019 at 7:33 AM akust=
er &lt;<a href=3D"mailto:akuster@mvista.com">akuster@mvista.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 7/30/19 11:36 AM, Thomas Goodwin wrote:<br>
&gt; The readme suggests exporting this variable from the<br>
&gt; environment to expose multiple configuration JSON files<br>
&gt; but the intended behavior doesn&#39;t work without adding the<br>
&gt; variable to extra_env.<br>
<br>
Any chance of updating documentation on how to use this?<br>
<br>
- armin<br>
&gt;<br>
&gt; Signed-off-by: Thomas Goodwin &lt;<a href=3D"mailto:btgoodwin@geontech=
.com" target=3D"_blank">btgoodwin@geontech.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 builders.py | 3 ++-<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/builders.py b/builders.py<br>
&gt; index 5765040..3d12969 100644<br>
&gt; --- a/builders.py<br>
&gt; +++ b/builders.py<br>
&gt; @@ -15,7 +15,8 @@ maxsteps =3D 9<br>
&gt;=C2=A0 # Environment to pass into the workers, e.g. to load further loc=
al configuration<br>
&gt;=C2=A0 # fragments<br>
&gt;=C2=A0 extra_env =3D {}<br>
&gt; -#extra_env =3D {&quot;ABHELPER_JSON&quot; : &quot;config.json /home/p=
okybuild/config-local.json&quot;}<br>
&gt; +if os.environ.get(&#39;ABHELPER_JSON&#39;):<br>
&gt; +=C2=A0 =C2=A0 extra_env[&#39;ABHELPER_JSON&#39;] =3D os.environ[&#39;=
ABHELPER_JSON&#39;]<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 @util.renderer<br>
&gt;=C2=A0 def get_sstate_release_number(props):<br>
<br>
</blockquote></div></div>

--000000000000cb728f058f0e8f36--
