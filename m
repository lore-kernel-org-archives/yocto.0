Return-Path: <desmond.correia@prolucid.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AF78E00405; Fri, 30 Dec 2016 09:40:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 075C2E0033D
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 09:40:05 -0800 (PST)
Received: by mail-ua0-f171.google.com with SMTP id i68so153524141uad.0
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 09:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=prolucid-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yWBsaz9FpzWBwC1rNPNgB/CZqfiMmEDs8ts4OPfg1ZI=;
	b=1tLapsPQulF6jbYPsBHHhowq4yT+knbtmrRvqlRoIgTpwoj7NbxOemc0tAcX6BSzov
	0wbB6TypHrkAILNy60YSVa/eFEAAdt+xg1HxrzxDZ/ZesYnS5acYe6D8oXX6feXetxZy
	DK49hG5WTDet7OhsLdf/rwXHB2zSpuG1VD0Citg9T2XBnzuEexneT6Syh1bvLNdYD9kY
	6XJPGXTw+315TZIsijGAv+l5ZyaZJALGF3mpFL98nKKbCvwQVMb3gS8ql9dUTugYjlYM
	dP6KCyIo+PAX288/TZqVCD5S7HIR/WA3f3jQ9Aa+212M5rVv+4K4f+eMvwciCdJTk6eH
	9eqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yWBsaz9FpzWBwC1rNPNgB/CZqfiMmEDs8ts4OPfg1ZI=;
	b=d97CnoCz4o540yAP93goNZUtxLpy3Wq8GjpT1sDzg9nrqmWuXxuCt+yz4S8aoR0Jdh
	Ylf8Zvry0WAM2wZeJuVle661qsx2yLbzNMcov54/URvvjUxjITk8+0wB6ZzVFFJChorD
	9ENne+Mk0KwSOxgBCcYRYtCMYnDQSUSpZPvryR8Cm1PX5H4kL+85P00igv0ueQpp+4Zh
	l7gmOhIE4jgk5ccunUZQAN/qGfVIP+jIrRhWA0dRLNsc2EGG5eW99N2klTzJxaPzZQs5
	ZVrLQUGnrqSko4zqjo/tiQ/DMAcPoV9LOXzbIXeSoPkZuPjpYFRoEuCk+YHi1fw9dzVr
	NJoA==
X-Gm-Message-State: AIkVDXLv0XZy1d4clk4AhdKDyFu1HvklQQBzyXhOdXl0DGS+gn6a8dDhgskUxke9IPA+QLd8pOJGNxg3nzB4fSpS
X-Received: by 10.159.40.97 with SMTP id c88mr35515347uac.17.1483119604722;
	Fri, 30 Dec 2016 09:40:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.85.134 with HTTP; Fri, 30 Dec 2016 09:39:24 -0800 (PST)
In-Reply-To: <811a0f1c-2e66-6141-8a3f-184356b9863b@ni.com>
References: <CAPNRg157=16-iL42mntUZnFDVTfQss0fXM8fgXddG9x9CBiQyQ@mail.gmail.com>
	<811a0f1c-2e66-6141-8a3f-184356b9863b@ni.com>
From: Desmond Correia <desmond.correia@prolucid.ca>
Date: Fri, 30 Dec 2016 12:39:24 -0500
Message-ID: <CAPNRg1468817bg3mvzRU5UP=ALEZen98hKbcNPj8sv4QorS+fw@mail.gmail.com>
To: Alejandro del Castillo <alejandro.delcastillo@ni.com>
X-Mailman-Approved-At: Tue, 03 Jan 2017 08:02:57 -0800
Cc: yocto@yoctoproject.org, opkg-devel@googlegroups.com
Subject: Re: [opkg-devel] [opkg-utils PATCH] Added support to generate index file with multiple version per package
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
X-List-Received-Date: Fri, 30 Dec 2016 17:40:09 -0000
X-Groupsio-MsgNum: 33620
Content-Type: multipart/mixed; boundary=94eb2c0483c03326060544e3b164

--94eb2c0483c03326060544e3b164
Content-Type: multipart/alternative; boundary=94eb2c0483c03326000544e3b162

--94eb2c0483c03326000544e3b162
Content-Type: text/plain; charset=UTF-8

Hi Alejandro,

Thanks for catching that see attached.



On Fri, Dec 30, 2016 at 12:21 PM, Alejandro del Castillo <
alejandro.delcastillo@ni.com> wrote:

> Hi Desmond, thanks for sending the patch, works as expected.
>
> The only thing missing is your Signed-off-by line, do you mind resending
> with it?
>
> I also have a very minor comment below
>
> On 12/28/2016 01:15 PM, Desmond Correia wrote:
> > From aefa378d6a167124bdfb0b8d6c92aadb4c36fa46 Mon Sep 17 00:00:00 2001
> > From: Desmond <desmond.correia@prolucid.ca
> > <mailto:desmond.correia@prolucid.ca>>
> > Date: Wed, 28 Dec 2016 13:16:48 -0500
> > Subject: [opkg-utils PATCH] Added support to generate index file with
> > multiple
> >  version per package
> > To: opkg-devel@googlegroups.com <mailto:opkg-devel@googlegroups.com>,
> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >
> > Using the -a option with opkg-make-index, you can now generate an index
> > file which will list multiple version of the same package. Added since
> > opkg now supports specifying version of package.
> > ---
> >  opkg-make-index | 16 ++++++++++++----
> >  opkg.py         |  8 +++++++-
> >  2 files changed, 19 insertions(+), 5 deletions(-)
> >
> > diff --git a/opkg-make-index b/opkg-make-index
> > index 7897918..3f757f6 100755
> > --- a/opkg-make-index
> > +++ b/opkg-make-index
> > @@ -11,7 +11,7 @@ import re
> >  verbose = 0
> >
> >  def usage():
> > -     sys.stderr.write("%s [-h] [-s] [-m] [-l Packages.filelist] [-p
> > Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" %
> > (sys.argv[0],))
> > +     sys.stderr.write("%s [-h] [-s] [-m] [-a] [-l Packages.filelist]
> > [-p Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" %
> > (sys.argv[0],))
> >       sys.exit(-1)
> >
> >  def to_morgue(filename):
> > @@ -42,7 +42,8 @@ filelist_filename = None
> >  stamplist_filename = "Packages.stamps"
> >  opt_s = 0
> >  opt_m = 0
> > -(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:")
> > +opt_a = 0
> > +(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:a")
> >  for (optkey, optval) in opts:
> >       if optkey == '-h':
> >            usage()
> > @@ -61,6 +62,8 @@ for (optkey, optval) in opts:
> >            old_filename = optval
> >       if optkey == '-L':
> >            locales_dir = optval
> > +     if optkey == '-a':
> > +          opt_a = 1
> >
> >  if ( not remaining_args ):
> >       usage()
> > @@ -120,12 +123,17 @@ for abspath in files:
> >            if (verbose):
> >                 sys.stderr.write("Reading info for package %s\n" %
> > (filename,))
> >            pkg = opkg.Package(abspath, relpath=pkg_dir)
> > -     pkg_key = ("%s:%s" % (pkg.package, pkg.architecture))
> > +
> > +     if opt_a:
> > +          pkg_key = ("%s:%s:%s" % (pkg.package, pkg.architecture,
> > pkg.version))
> > +     else:
> > +         pkg_key = ("%s:%s" % (pkg.package, pkg.architecture))
> > +
> >       if (pkg_key in packages.packages):
> >            old_filename = packages.packages[pkg_key].filename
> >       else:
> >            old_filename = ""
> > -     s = packages.add_package(pkg)
> > +     s = packages.add_package(pkg, opt_a)
> >       pkgsStamps[filename] = fnameStat.st_mtime
> >       if s == 0:
> >            if old_filename:
> > diff --git a/opkg.py b/opkg.py
> > index b0d79a6..47473da 100644
> > --- a/opkg.py
> > +++ b/opkg.py
> > @@ -501,10 +501,16 @@ class Packages(object):
> >          self.packages = {}
> >          return
> >
> > -    def add_package(self, pkg):
> > +    def add_package(self, pkg, opt_a=0):
> >          package = pkg.package
> >          arch = pkg.architecture
> >          name = ("%s:%s" % (package, arch))
>
> since you are defining name on the else case, you can delete the line above
>
> > +        ver = pkg.version
> > +        if opt_a:
> > +            name = ("%s:%s:%s" % (package, arch, ver))
> > +        else:
> > +            name = ("%s:%s" % (package, arch))
> > +
> >          if (name not in self.packages):
> >              self.packages[name] = pkg
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> > Groups "opkg-devel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> > an email to opkg-devel+unsubscribe@googlegroups.com
> > <mailto:opkg-devel+unsubscribe@googlegroups.com>.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> Cheers,
>
> Alejandro
>



-- 

Desmond Correia

--94eb2c0483c03326000544e3b162
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Alejandro,</div><div><br></div><div>Thanks for cat=
ching that see attached.</div><div><br></div><div><br></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Fri, Dec 30, 2016 at 12:21 PM=
, Alejandro del Castillo <span dir=3D"ltr">&lt;<a href=3D"mailto:alejandro.=
delcastillo@ni.com" target=3D"_blank">alejandro.delcastillo@ni.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">Hi Desmond, thanks for send=
ing the patch, works as expected.<br>
<br>
The only thing missing is your Signed-off-by line, do you mind resending<br=
>
with it?<br>
<br>
I also have a very minor comment below<br>
<span class=3D""><br>
On 12/28/2016 01:15 PM, Desmond Correia wrote:<br>
&gt; From aefa378d6a167124bdfb0b8d6c92aa<wbr>db4c36fa46 Mon Sep 17 00:00:00=
 2001<br>
&gt; From: Desmond &lt;<a href=3D"mailto:desmond.correia@prolucid.ca">desmo=
nd.correia@prolucid.ca</a><br>
</span>&gt; &lt;mailto:<a href=3D"mailto:desmond.correia@prolucid.ca">desmo=
nd.correia@<wbr>prolucid.ca</a>&gt;&gt;<br>
<span class=3D"">&gt; Date: Wed, 28 Dec 2016 13:16:48 -0500<br>
&gt; Subject: [opkg-utils PATCH] Added support to generate index file with<=
br>
&gt; multiple<br>
&gt;=C2=A0 version per package<br>
</span>&gt; To: <a href=3D"mailto:opkg-devel@googlegroups.com">opkg-devel@g=
ooglegroups.com</a> &lt;mailto:<a href=3D"mailto:opkg-devel@googlegroups.co=
m">opkg-devel@<wbr>googlegroups.com</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoc=
toproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yoct=
o@yoctoproject.org</a><wbr>&gt;<br>
<div><div class=3D"h5">&gt;<br>
&gt; Using the -a option with opkg-make-index, you can now generate an inde=
x<br>
&gt; file which will list multiple version of the same package. Added since=
<br>
&gt; opkg now supports specifying version of package.<br>
&gt; ---<br>
&gt;=C2=A0 opkg-make-index | 16 ++++++++++++----<br>
&gt;=C2=A0 opkg.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 8 +++++++-<br>
&gt;=C2=A0 2 files changed, 19 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; diff --git a/opkg-make-index b/opkg-make-index<br>
&gt; index 7897918..3f757f6 100755<br>
&gt; --- a/opkg-make-index<br>
&gt; +++ b/opkg-make-index<br>
&gt; @@ -11,7 +11,7 @@ import re<br>
&gt;=C2=A0 verbose =3D 0<br>
&gt;<br>
&gt;=C2=A0 def usage():<br>
&gt; -=C2=A0 =C2=A0 =C2=A0sys.stderr.write(&quot;%s [-h] [-s] [-m] [-l Pack=
ages.filelist] [-p<br>
&gt; Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n&quot; %=
<br>
&gt; (sys.argv[0],))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0sys.stderr.write(&quot;%s [-h] [-s] [-m] [-a] [-l=
 Packages.filelist]<br>
&gt; [-p Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n&quo=
t; %<br>
&gt; (sys.argv[0],))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0sys.exit(-1)<br>
&gt;<br>
&gt;=C2=A0 def to_morgue(filename):<br>
&gt; @@ -42,7 +42,8 @@ filelist_filename =3D None<br>
&gt;=C2=A0 stamplist_filename =3D &quot;Packages.stamps&quot;<br>
&gt;=C2=A0 opt_s =3D 0<br>
&gt;=C2=A0 opt_m =3D 0<br>
&gt; -(opts, remaining_args) =3D getopt.getopt(sys.argv[1:], &quot;hl:p:vsm=
r:L:&quot;)<br>
&gt; +opt_a =3D 0<br>
&gt; +(opts, remaining_args) =3D getopt.getopt(sys.argv[1:], &quot;hl:p:vsm=
r:L:a&quot;)<br>
&gt;=C2=A0 for (optkey, optval) in opts:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if optkey =3D=3D &#39;-h&#39;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 usage()<br>
&gt; @@ -61,6 +62,8 @@ for (optkey, optval) in opts:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 old_filename =3D optval<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if optkey =3D=3D &#39;-L&#39;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 locales_dir =3D optval<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if optkey =3D=3D &#39;-a&#39;:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 opt_a =3D 1<br>
&gt;<br>
&gt;=C2=A0 if ( not remaining_args ):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0usage()<br>
&gt; @@ -120,12 +123,17 @@ for abspath in files:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (verbose):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sys.stder=
r.write(&quot;Reading info for package %s\n&quot; %<br>
&gt; (filename,))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pkg =3D opkg.Package(abspath,=
 relpath=3Dpkg_dir)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0pkg_key =3D (&quot;%s:%s&quot; % (pkg.package, pk=
g.architecture))<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if opt_a:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pkg_key =3D (&quot;%s:%s:%s&quot; =
% (pkg.package, pkg.architecture,<br>
&gt; pkg.version))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0else:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pkg_key =3D (&quot;%s:%s&quot; % (p=
kg.package, pkg.architecture))<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pkg_key in packages.packages):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 old_filename =3D packages.pac=
kages[pkg_key].<wbr>filename<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 old_filename =3D &quot;&quot;=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0s =3D packages.add_package(pkg)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0s =3D packages.add_package(pkg, opt_a)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pkgsStamps[filename] =3D fnameStat.st_mtime<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if s =3D=3D 0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if old_filename:<br>
&gt; diff --git a/opkg.py b/opkg.py<br>
&gt; index b0d79a6..47473da 100644<br>
&gt; --- a/opkg.py<br>
&gt; +++ b/opkg.py<br>
&gt; @@ -501,10 +501,16 @@ class Packages(object):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packages =3D {}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 def add_package(self, pkg):<br>
&gt; +=C2=A0 =C2=A0 def add_package(self, pkg, opt_a=3D0):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 package =3D pkg.package<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 arch =3D pkg.architecture<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 name =3D (&quot;%s:%s&quot; % (packa=
ge, arch))<br>
<br>
</div></div>since you are defining name on the else case, you can delete th=
e line above<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ver =3D pkg.version<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 if opt_a:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 name =3D (&quot;%s:%s:%s&qu=
ot; % (package, arch, ver))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 name =3D (&quot;%s:%s&quot;=
 % (package, arch))<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (name not in self.packages):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packages[name] =
=3D pkg<br>
&gt;<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google<br>
&gt; Groups &quot;opkg-devel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
<br>
&gt; an email to <a href=3D"mailto:opkg-devel%2Bunsubscribe@googlegroups.co=
m">opkg-devel+unsubscribe@<wbr>googlegroups.com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:opkg-devel%2Bunsubscribe@googlegroups.com=
">opkg-devel+<wbr>unsubscribe@googlegroups.com</a>&gt;.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
<br>
--<br>
Cheers,<br>
<br>
Alejandro<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div di=
r=3D"ltr"><div dir=3D"ltr"><span><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><span style=3D"color:rgb(0,0,0);font-famil=
y:Arial;font-size:14.6667px;font-weight:700;white-space:pre-wrap;line-heigh=
t:1.38;background-color:transparent">Desmond Correia</span></p></span></div=
></div></div>
</div></div>

--94eb2c0483c03326000544e3b162--

--94eb2c0483c03326060544e3b164
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-Added-support-to-generate-index-file-with-multiple-v.patch"
Content-Disposition: attachment; 
	filename="0001-Added-support-to-generate-index-file-with-multiple-v.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ixc31z3s0

RnJvbSBiYmE3Y2VhZmFlYmUyZmRkMjEzZmQxMjk4YjRmOTc2MGZhZmVkZGE5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBkZXNtb25kIDxkZXNtb25kLmNvcnJlaWFAcHJvbHVjaWQuY2E+
CkRhdGU6IEZyaSwgMzAgRGVjIDIwMTYgMTI6MzU6MjcgLTA1MDAKU3ViamVjdDogW29wa2ctdXRp
bHMgUEFUQ0hdIEFkZGVkIHN1cHBvcnQgdG8gZ2VuZXJhdGUgaW5kZXggZmlsZSB3aXRoIG11bHRp
cGxlCiB2ZXJzaW9uIHBlciBwYWNrYWdlClRvOiBvcGtnLWRldmVsQGdvb2dsZWdyb3Vwcy5jb20s
CiAgICB5b2N0b0B5b2N0b3Byb2plY3Qub3JnCgpTaWduZWQtb2ZmLWJ5OiBkZXNtb25kIDxkZXNt
b25kLmNvcnJlaWFAcHJvbHVjaWQuY2E+ClVzaW5nIHRoZSAtYSBvcHRpb24gd2l0aCBvcGtnLW1h
a2UtaW5kZXgsIHlvdSBjYW4gbm93IGdlbmVyYXRlIGFuIGluZGV4IGZpbGUgd2hpY2ggd2lsbCBs
aXN0IG11bHRpcGxlIHZlcnNpb24gb2YgdGhlIHNhbWUgcGFja2FnZS4gQWRkZWQgc2luY2Ugb3Br
ZyBub3cgc3VwcG9ydHMgc3BlY2lmeWluZyB2ZXJzaW9uIG9mIHBhY2thZ2UuCi0tLQogb3BrZy1t
YWtlLWluZGV4IHwgMTYgKysrKysrKysrKysrLS0tLQogb3BrZy5weSAgICAgICAgIHwgIDkgKysr
KysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvb3BrZy1tYWtlLWluZGV4IGIvb3BrZy1tYWtlLWluZGV4CmluZGV4IDc4
OTc5MTguLjNmNzU3ZjYgMTAwNzU1Ci0tLSBhL29wa2ctbWFrZS1pbmRleAorKysgYi9vcGtnLW1h
a2UtaW5kZXgKQEAgLTExLDcgKzExLDcgQEAgaW1wb3J0IHJlCiB2ZXJib3NlID0gMAogCiBkZWYg
dXNhZ2UoKToKLSAgICAgc3lzLnN0ZGVyci53cml0ZSgiJXMgWy1oXSBbLXNdIFstbV0gWy1sIFBh
Y2thZ2VzLmZpbGVsaXN0XSBbLXAgUGFja2FnZXNdIFstciBQYWNrYWdlcy5vbGRdIFstTCBsb2Nh
bGVzZGlyXSBbLXZdIHBhY2thZ2VzZGlyXG4iICUgKHN5cy5hcmd2WzBdLCkpCisgICAgIHN5cy5z
dGRlcnIud3JpdGUoIiVzIFstaF0gWy1zXSBbLW1dIFstYV0gWy1sIFBhY2thZ2VzLmZpbGVsaXN0
XSBbLXAgUGFja2FnZXNdIFstciBQYWNrYWdlcy5vbGRdIFstTCBsb2NhbGVzZGlyXSBbLXZdIHBh
Y2thZ2VzZGlyXG4iICUgKHN5cy5hcmd2WzBdLCkpCiAgICAgIHN5cy5leGl0KC0xKQogCiBkZWYg
dG9fbW9yZ3VlKGZpbGVuYW1lKToKQEAgLTQyLDcgKzQyLDggQEAgZmlsZWxpc3RfZmlsZW5hbWUg
PSBOb25lCiBzdGFtcGxpc3RfZmlsZW5hbWUgPSAiUGFja2FnZXMuc3RhbXBzIgogb3B0X3MgPSAw
CiBvcHRfbSA9IDAKLShvcHRzLCByZW1haW5pbmdfYXJncykgPSBnZXRvcHQuZ2V0b3B0KHN5cy5h
cmd2WzE6XSwgImhsOnA6dnNtcjpMOiIpCitvcHRfYSA9IDAKKyhvcHRzLCByZW1haW5pbmdfYXJn
cykgPSBnZXRvcHQuZ2V0b3B0KHN5cy5hcmd2WzE6XSwgImhsOnA6dnNtcjpMOmEiKQogZm9yIChv
cHRrZXksIG9wdHZhbCkgaW4gb3B0czoKICAgICAgaWYgb3B0a2V5ID09ICctaCc6IAogICAgICAg
ICAgIHVzYWdlKCkKQEAgLTYxLDYgKzYyLDggQEAgZm9yIChvcHRrZXksIG9wdHZhbCkgaW4gb3B0
czoKICAgICAgICAgICBvbGRfZmlsZW5hbWUgPSBvcHR2YWwKICAgICAgaWYgb3B0a2V5ID09ICct
TCc6CiAgICAgICAgICAgbG9jYWxlc19kaXIgPSBvcHR2YWwKKyAgICAgaWYgb3B0a2V5ID09ICct
YSc6CisgICAgICAgICAgb3B0X2EgPSAxCiAKIGlmICggbm90IHJlbWFpbmluZ19hcmdzICk6CiAg
ICAgIHVzYWdlKCkKQEAgLTEyMCwxMiArMTIzLDE3IEBAIGZvciBhYnNwYXRoIGluIGZpbGVzOgog
ICAgICAgICAgIGlmICh2ZXJib3NlKToKICAgICAgICAgICAgICAgIHN5cy5zdGRlcnIud3JpdGUo
IlJlYWRpbmcgaW5mbyBmb3IgcGFja2FnZSAlc1xuIiAlIChmaWxlbmFtZSwpKQogICAgICAgICAg
IHBrZyA9IG9wa2cuUGFja2FnZShhYnNwYXRoLCByZWxwYXRoPXBrZ19kaXIpCi0gICAgIHBrZ19r
ZXkgPSAoIiVzOiVzIiAlIChwa2cucGFja2FnZSwgcGtnLmFyY2hpdGVjdHVyZSkpCisKKyAgICAg
aWYgb3B0X2E6CisgICAgICAgICAgcGtnX2tleSA9ICgiJXM6JXM6JXMiICUgKHBrZy5wYWNrYWdl
LCBwa2cuYXJjaGl0ZWN0dXJlLCBwa2cudmVyc2lvbikpCisgICAgIGVsc2U6CisgICAgICAgICBw
a2dfa2V5ID0gKCIlczolcyIgJSAocGtnLnBhY2thZ2UsIHBrZy5hcmNoaXRlY3R1cmUpKQorCiAg
ICAgIGlmIChwa2dfa2V5IGluIHBhY2thZ2VzLnBhY2thZ2VzKToKICAgICAgICAgICBvbGRfZmls
ZW5hbWUgPSBwYWNrYWdlcy5wYWNrYWdlc1twa2dfa2V5XS5maWxlbmFtZQogICAgICBlbHNlOgog
ICAgICAgICAgIG9sZF9maWxlbmFtZSA9ICIiCi0gICAgIHMgPSBwYWNrYWdlcy5hZGRfcGFja2Fn
ZShwa2cpCisgICAgIHMgPSBwYWNrYWdlcy5hZGRfcGFja2FnZShwa2csIG9wdF9hKQogICAgICBw
a2dzU3RhbXBzW2ZpbGVuYW1lXSA9IGZuYW1lU3RhdC5zdF9tdGltZQogICAgICBpZiBzID09IDA6
CiAgICAgICAgICAgaWYgb2xkX2ZpbGVuYW1lOgpkaWZmIC0tZ2l0IGEvb3BrZy5weSBiL29wa2cu
cHkKaW5kZXggYjBkNzlhNi4uMmVjYWM4YSAxMDA2NDQKLS0tIGEvb3BrZy5weQorKysgYi9vcGtn
LnB5CkBAIC01MDEsMTAgKzUwMSwxNSBAQCBjbGFzcyBQYWNrYWdlcyhvYmplY3QpOgogICAgICAg
ICBzZWxmLnBhY2thZ2VzID0ge30KICAgICAgICAgcmV0dXJuCiAKLSAgICBkZWYgYWRkX3BhY2th
Z2Uoc2VsZiwgcGtnKToKKyAgICBkZWYgYWRkX3BhY2thZ2Uoc2VsZiwgcGtnLCBvcHRfYT0wKToK
ICAgICAgICAgcGFja2FnZSA9IHBrZy5wYWNrYWdlCiAgICAgICAgIGFyY2ggPSBwa2cuYXJjaGl0
ZWN0dXJlCi0gICAgICAgIG5hbWUgPSAoIiVzOiVzIiAlIChwYWNrYWdlLCBhcmNoKSkKKyAgICAg
ICAgdmVyID0gcGtnLnZlcnNpb24KKyAgICAgICAgaWYgb3B0X2E6CisgICAgICAgICAgICBuYW1l
ID0gKCIlczolczolcyIgJSAocGFja2FnZSwgYXJjaCwgdmVyKSkKKyAgICAgICAgZWxzZToKKyAg
ICAgICAgICAgIG5hbWUgPSAoIiVzOiVzIiAlIChwYWNrYWdlLCBhcmNoKSkKKwogICAgICAgICBp
ZiAobmFtZSBub3QgaW4gc2VsZi5wYWNrYWdlcyk6CiAgICAgICAgICAgICBzZWxmLnBhY2thZ2Vz
W25hbWVdID0gcGtnCiAgICAgICAgIAotLSAKMi43LjQKCg==

--94eb2c0483c03326060544e3b164--
