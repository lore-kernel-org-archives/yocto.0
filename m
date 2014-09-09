Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FADCE00563; Tue,  9 Sep 2014 10:12:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (californialsullivan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B1A4E0049D
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 10:12:10 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id i7so12056267oag.14
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 10:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=C7lDvpedQIr9tYb721EZwGnMXfQo/p61tIPtTpmgDuQ=;
	b=qBBmjN4qEs5RS827rmvZztU5+3r73+a7irjM+iX/efj17H0QYu8vJEO0jxzqJ85o3F
	P9k7kk7jW1Q4YBT86wlQCmH7LZcRGV5Pr2SA87kn6wSUdCcL7MZR9xyhMnllFC/aSZPW
	vjc7mCHA+0rz1fDr4ZFLJ7v8NnMwt0vV4ZNa1DodqAeotLFZt34z2I6C3XY9+lmVBTxq
	acn9Nrb0AkeDiC45wr7LlADwlSY/1n8SXClLs0pezCmbt2AiEUUISl9PeblO0HW43CMX
	Cgp0BNZP03lcB4IK1R0wLjkZ3jKeV4xRNXmqCaxqMQTG9e967y1DeZnlITJ67P9UqbDg
	dgIA==
MIME-Version: 1.0
X-Received: by 10.60.15.37 with SMTP id u5mr13142594oec.61.1410282729434; Tue,
	09 Sep 2014 10:12:09 -0700 (PDT)
Received: by 10.76.157.229 with HTTP; Tue, 9 Sep 2014 10:12:09 -0700 (PDT)
In-Reply-To: <CAPhnLPAb+8ByFWPxNJ9JDvXKavguZp54m8yPK8ouVDPhdvHO9A@mail.gmail.com>
References: <CAMP9K89HYuQyK65kPGyBWtm-3DNZMTONhMYVvz6sxtRGnmpSWA@mail.gmail.com>
	<CAPhnLPAb+8ByFWPxNJ9JDvXKavguZp54m8yPK8ouVDPhdvHO9A@mail.gmail.com>
Date: Tue, 9 Sep 2014 10:12:09 -0700
Message-ID: <CAMP9K8_ZnLS0Mo3QwgfEmUUMc6T2i68KxvQumQDBhv3ZigRfGA@mail.gmail.com>
From: California Sullivan <californialsullivan@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Autobuilder.py: Fix triggered build bug
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
X-List-Received-Date: Tue, 09 Sep 2014 17:12:18 -0000
Content-Type: multipart/alternative; boundary=089e013cbd821ef3fb0502a5095f

--089e013cbd821ef3fb0502a5095f
Content-Type: text/plain; charset=UTF-8

I apologize for the late response - I was working through some other issues
that I wanted to make sure were unrelated to this.

I have tested this on a build that triggers a build on a remote worker, as
well as a build that triggers a build on a local worker. Both appear to
have full functionality.

---
Cal

On Tue, Sep 2, 2014 at 1:45 PM, Flanagan, Elizabeth <
elizabeth.flanagan@intel.com> wrote:

> On Thu, Aug 28, 2014 at 4:33 PM, California Sullivan
> <californialsullivan@gmail.com> wrote:
> > When a build was configured to use the TriggerBuilds build step, it would
> > take on the buildslave of the last triggered build rather than its own.
> >
> > Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
> > ---
> >  lib/python2.7/site-packages/autobuilder/Autobuilder.py | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> > b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> > index a582a03..2e2e899 100644
> > --- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> > +++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> > @@ -58,7 +58,7 @@ class Autobuilder:
> >              self.set_props = {}
> >              self.repos = []
> >              self.properties = []
> > -            self.builders = None
> > +            self.builders = self.parseBuilders(buildset)
> >              self.schedprops.append(NestedParameter(name='ss_' +
> buildset,
> > label="<h3><div class='trigger_heading' id='"+buildset+"'>" + buildset +
> "
> > defaults:</div></h3>", fields=[FixedParameter(name="dummy",
> > default="dummy")]))
> >              self.parseBuildSet(buildset)
> >              locals()['buildset_%s' %
> > buildset]=BuildSet.BuildSet(name=buildset,
> > @@ -86,7 +86,6 @@ class Autobuilder:
> >
> >      def parseBuildSet(self, buildset):
> >          if buildset is not "BuildSets":
> > -            self.builders=self.parseBuilders(buildset)
> >              self.parseProps(buildset)
> >              self.parseRepos(buildset)
> >              self.parseSteps(buildset)
> > --
> > 1.9.1
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
> This looks ok, but I'd like to test it a bit before I shove it into
> production. What have you tested this with (example: I tested it on a
> single build triggering another one, or a build that triggers
> itself...) With Trigger being a bit of core functionality, it would
> help a bit to know this.
>
> -b
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
>

--089e013cbd821ef3fb0502a5095f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I apologize for the late response - I was working through =
some other issues that I wanted to make sure were unrelated to this.<br><br=
>I have tested this on a build that triggers a build on a remote worker, as=
 well as a build that triggers a build on a local worker. Both appear to ha=
ve full functionality.<br><div class=3D"gmail_extra"><br>---<br></div><div =
class=3D"gmail_extra">Cal<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Tue, Sep 2, 2014 at 1:45 PM, Flanagan, Elizabeth <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:elizabeth.flanagan@intel.com" target=3D"=
_blank">elizabeth.flanagan@intel.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Thu, Aug 28, 2=
014 at 4:33 PM, California Sullivan<br>
&lt;<a href=3D"mailto:californialsullivan@gmail.com">californialsullivan@gm=
ail.com</a>&gt; wrote:<br>
&gt; When a build was configured to use the TriggerBuilds build step, it wo=
uld<br>
&gt; take on the buildslave of the last triggered build rather than its own=
.<br>
&gt;<br>
&gt; Signed-off-by: California Sullivan &lt;<a href=3D"mailto:california.l.=
sullivan@intel.com">california.l.sullivan@intel.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 lib/python2.7/site-packages/autobuilder/Autobuilder.py | 3 +--<b=
r>
&gt;=C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py<br=
>
&gt; b/lib/python2.7/site-packages/autobuilder/Autobuilder.py<br>
&gt; index a582a03..2e2e899 100644<br>
&gt; --- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py<br>
&gt; +++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py<br>
&gt; @@ -58,7 +58,7 @@ class Autobuilder:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.set_props =3D {}<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.repos =3D []<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.properties =3D []=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.builders =3D None<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.builders =3D self.pars=
eBuilders(buildset)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.schedprops.append=
(NestedParameter(name=3D&#39;ss_&#39; + buildset,<br>
&gt; label=3D&quot;&lt;h3&gt;&lt;div class=3D&#39;trigger_heading&#39; id=
=3D&#39;&quot;+buildset+&quot;&#39;&gt;&quot; + buildset + &quot;<br>
&gt; defaults:&lt;/div&gt;&lt;/h3&gt;&quot;, fields=3D[FixedParameter(name=
=3D&quot;dummy&quot;,<br>
&gt; default=3D&quot;dummy&quot;)]))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.parseBuildSet(bui=
ldset)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 locals()[&#39;buildset=
_%s&#39; %<br>
&gt; buildset]=3DBuildSet.BuildSet(name=3Dbuildset,<br>
&gt; @@ -86,7 +86,6 @@ class Autobuilder:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 def parseBuildSet(self, buildset):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if buildset is not &quot;BuildSets&q=
uot;:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.builders=3Dself.parseB=
uilders(buildset)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.parseProps(builds=
et)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.parseRepos(builds=
et)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.parseSteps(builds=
et)<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt;<br>
</div></div>&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
<br>
This looks ok, but I&#39;d like to test it a bit before I shove it into<br>
production. What have you tested this with (example: I tested it on a<br>
single build triggering another one, or a build that triggers<br>
itself...) With Trigger being a bit of core functionality, it would<br>
help a bit to know this.<br>
<br>
-b<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
Elizabeth Flanagan<br>
Yocto Project<br>
Build and Release<br>
</font></span></blockquote></div><br></div></div>

--089e013cbd821ef3fb0502a5095f--
