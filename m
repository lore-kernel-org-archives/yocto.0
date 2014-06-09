Return-Path: <firemagelynn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 068ABE00BBA; Mon,  9 Jun 2014 08:44:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lynncyrin[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD761E00B0B
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 08:44:22 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id z60so9110803qgd.9
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 08:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=RkHxgC96ytYHfMQP7PE74d4FvLmOtlSnV/K3YI0tKik=;
	b=opUbyTBQ1D5FAmgNvUlRrnzTMehPKarVyb60GTtPAfmMlIxR6OpmBM/hWrUcX7feSL
	4KpC8RjI6kmlSYZ+w9hyzM9FJKEk4wak0N7zcFtLBYOuuEubxvPI/p9nZJF47H8PJpju
	nJIaUmObSp1hWHcOhFmUZOUG2r3dLtQyDwjaHjtPnOusO6p0NMkwcGv99Q354UMGVIdM
	usUWXSNMn06Hv6UBw3PqUfbXWlqgLh5Nya7BOAh0PBgaqqSk/p4nuOg/lRssFPIn2QbU
	4Qz9/rU094HIMTGr97LDwM6srB/WcJzLY0Cu6j0wV+OHmhflLTQ2y8b36Z37HMFyl68y
	ydEg==
MIME-Version: 1.0
X-Received: by 10.229.212.196 with SMTP id gt4mr33757052qcb.18.1402328661726; 
	Mon, 09 Jun 2014 08:44:21 -0700 (PDT)
Sender: firemagelynn@gmail.com
Received: by 10.96.124.74 with HTTP; Mon, 9 Jun 2014 08:44:21 -0700 (PDT)
Received: by 10.96.124.74 with HTTP; Mon, 9 Jun 2014 08:44:21 -0700 (PDT)
In-Reply-To: <CAPphmgb_NPGOu0dxP0b+0gr4zmE2D+SMuXCTvnO91kB6wAbaHA@mail.gmail.com>
References: <1401843822-13967-1-git-send-email-lynncyrin@gmail.com>
	<1401843822-13967-2-git-send-email-lynncyrin@gmail.com>
	<1401843822-13967-3-git-send-email-lynncyrin@gmail.com>
	<CAPphmgb_NPGOu0dxP0b+0gr4zmE2D+SMuXCTvnO91kB6wAbaHA@mail.gmail.com>
Date: Mon, 9 Jun 2014 08:44:21 -0700
X-Google-Sender-Auth: 9SLJK21YYRamAjvgR_fPOUyKtLY
Message-ID: <CANKv9EZVuy1MQxzF4_EF2=rXTjHPKcirHCacUS76_UJVne73sw@mail.gmail.com>
From: Lynn Cyrin <lynncyrin@gmail.com>
To: Jate S <jatedev@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/3] PublishArtifacts: add md5sums artifact
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
X-List-Received-Date: Mon, 09 Jun 2014 15:44:38 -0000
Content-Type: multipart/alternative; boundary=001a11336938bda23904fb691553

--001a11336938bda23904fb691553
Content-Type: text/plain; charset=UTF-8

It would. I'll incorporate it when I resend the patch.

Lynn Cyrin (http://lynncyrin.me) -Sent from Mobile
On Jun 6, 2014 2:06 PM, "Jate S" <jatedev@gmail.com> wrote:

> I just grabbed the current master.
>
> I changed my local conf definition so it would do the MakeImageMD5s.
> It creates them inside of the build directory by default.
>
> After doing this, the PublishArtifacts was still failing because the
> cp command could not find the md5sum files. It looks in the
> tmp/deploy/images directory.
>
> I applied this patch so that the MakeImageMD5s step would generate
> them in the temp/deploy/images directory and allow the PublishArtifact
> build step to work.
>
> diff --git
> a/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py
> index 84839fb..7bfb2b3 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py
> @@ -35,7 +35,7 @@ class MakeImageMD5s(ShellCommand):
>          command=""
>          if str(os.environ.get('PUBLISH_BUILDS')) == "True":
>              command = command + "for x in `find build/tmp/deploy/images
> -type f
> -            command = command + "filenm=`basename $x`; md5sum $x >>
> $filenm.md5
> +            command = command + "md5sum $x >> $x.md5sum; done"
>          else:
>              command="echo 'Not publishing build, skipping step'"
>          self.command = command
>
> After seeing this patch, I wonder if this should be applied to
> PublishArtifacts now.
>
> - Jate S.
>
> On Tue, Jun 3, 2014 at 9:03 PM, Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
> wrote:
> > REF: Bug ID 6354
> >
> > Added a md5sums artifact into PublishArtifacts
> >
> > Signed-off-by: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
> > ---
> >  .../autobuilder/buildsteps/PublishArtifacts.py     |    6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git
> a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> > index db86ec2..bb69d18 100644
> > ---
> a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> > +++
> b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> > @@ -180,6 +180,10 @@ class PublishArtifacts(ShellCommand):
> >                      command=command+"cp -R --no-dereference " + \
> >                                       os.path.join(self.basedir,
> "conf/") + \
> >                                       "/* " + DEST + "/" +
> MACHINE_PUBLISH_DIR + "/" + artifact_name + "/conf;"
> > +                elif artifact == "md5sums":
> > +                    artifact_name, deploy_image_dir =
> self.getDeployNames(artifact, buildername)
> > +                    command = command + "for x in `find " +
> deploy_image_dir + " -type f`; do "
> > +                    command = command + "filenm=`basename $x`; md5sum
> $x >> $filenm.md5sum; done"
> >                  elif artifact == "None":
> >                      command=command+"echo 'Skipping copy of " +
> artifact + ".'"
> >                  else:
> > @@ -216,7 +220,7 @@ class PublishArtifacts(ShellCommand):
> >              artifact_name = artifact_name + "-lsb"
> >          if self.layerversion_core is not None and
> int(self.layerversion_core) > 2:
> >              deploy_dir_image = os.path.join(os.path.join(self.basedir,
> "tmp/deploy/images/"), artifact)
> > -        else:
> > +        else:1
> >              deploy_dir_image = os.path.join(self.basedir,
> "tmp/deploy/images/")
> >          return artifact_name, deploy_dir_image
> >
> > --
> > 1.7.9.5
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--001a11336938bda23904fb691553
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">It would. I&#39;ll incorporate it when I resend the patch.</=
p>
<p dir=3D"ltr">Lynn Cyrin (<a href=3D"http://lynncyrin.me">http://lynncyrin=
.me</a>) -Sent from Mobile</p>
<div class=3D"gmail_quote">On Jun 6, 2014 2:06 PM, &quot;Jate S&quot; &lt;<=
a href=3D"mailto:jatedev@gmail.com">jatedev@gmail.com</a>&gt; wrote:<br typ=
e=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
I just grabbed the current master.<br>
<br>
I changed my local conf definition so it would do the MakeImageMD5s.<br>
It creates them inside of the build directory by default.<br>
<br>
After doing this, the PublishArtifacts was still failing because the<br>
cp command could not find the md5sum files. It looks in the<br>
tmp/deploy/images directory.<br>
<br>
I applied this patch so that the MakeImageMD5s step would generate<br>
them in the temp/deploy/images directory and allow the PublishArtifact<br>
build step to work.<br>
<br>
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD=
5s.py<br>
index 84839fb..7bfb2b3 100644<br>
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py<b=
r>
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py<b=
r>
@@ -35,7 +35,7 @@ class MakeImageMD5s(ShellCommand):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0command=3D&quot;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if str(os.environ.get(&#39;PUBLISH_BUILDS=
&#39;)) =3D=3D &quot;True&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0command =3D command + &quot=
;for x in `find build/tmp/deploy/images -type f<br>
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0command =3D command + &quot;file=
nm=3D`basename $x`; md5sum $x &gt;&gt; $filenm.md5<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0command =3D command + &quot;md5s=
um $x &gt;&gt; $x.md5sum; done&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0command=3D&quot;echo &#39;N=
ot publishing build, skipping step&#39;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.command =3D command<br>
<br>
After seeing this patch, I wonder if this should be applied to<br>
PublishArtifacts now.<br>
<br>
- Jate S.<br>
<br>
On Tue, Jun 3, 2014 at 9:03 PM, Lynn &#39;Cyrin&#39; Conway &lt;<a href=3D"=
mailto:lynncyrin@gmail.com">lynncyrin@gmail.com</a>&gt; wrote:<br>
&gt; REF: Bug ID 6354<br>
&gt;<br>
&gt; Added a md5sums artifact into PublishArtifacts<br>
&gt;<br>
&gt; Signed-off-by: Lynn &#39;Cyrin&#39; Conway &lt;<a href=3D"mailto:lynnc=
yrin@gmail.com">lynncyrin@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0.../autobuilder/buildsteps/PublishArtifacts.py =C2=A0 =C2=A0 | =
=C2=A0 =C2=A06 +++++-<br>
&gt; =C2=A01 file changed, 5 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/Publis=
hArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishA=
rtifacts.py<br>
&gt; index db86ec2..bb69d18 100644<br>
&gt; --- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifa=
cts.py<br>
&gt; +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifa=
cts.py<br>
&gt; @@ -180,6 +180,10 @@ class PublishArtifacts(ShellCommand):<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0command=3Dcommand+&quot;cp -R --no-dereference &quot; + \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.path.join=
(self.basedir, &quot;conf/&quot;) + \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;/* &qu=
ot; + DEST + &quot;/&quot; + MACHINE_PUBLISH_DIR + &quot;/&quot; + artifact=
_name + &quot;/conf;&quot;<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0elif artifact=
 =3D=3D &quot;md5sums&quot;:<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0artifact_name, deploy_image_dir =3D self.getDeployNames(artifact, builde=
rname)<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0command =3D command + &quot;for x in `find &quot; + deploy_image_dir + &=
quot; -type f`; do &quot;<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0command =3D command + &quot;filenm=3D`basename $x`; md5sum $x &gt;&gt; $=
filenm.md5sum; done&quot;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0elif art=
ifact =3D=3D &quot;None&quot;:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0command=3Dcommand+&quot;echo &#39;Skipping copy of &quot; + artifact =
+ &quot;.&#39;&quot;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br=
>
&gt; @@ -216,7 +220,7 @@ class PublishArtifacts(ShellCommand):<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0artifact_name =3D arti=
fact_name + &quot;-lsb&quot;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.layerversion_core is not Non=
e and int(self.layerversion_core) &gt; 2:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0deploy_dir_image =3D o=
s.path.join(os.path.join(self.basedir, &quot;tmp/deploy/images/&quot;), art=
ifact)<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0else:1<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0deploy_dir_image =3D o=
s.path.join(self.basedir, &quot;tmp/deploy/images/&quot;)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return artifact_name, deploy_dir_ima=
ge<br>
&gt;<br>
&gt; --<br>
&gt; 1.7.9.5<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a11336938bda23904fb691553--
