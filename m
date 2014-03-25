Return-Path: <wpdster@gmail.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 113FCE0073C
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 09:48:17 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id lh14so889253vcb.20
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 09:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TlDnUHF2HqDRekvhLeBOIhbhh792hpo9N5KBUAnqywY=;
	b=jD4sRyffIG86Qv6IzYpmsBom/0z38hJju687/rbzM63FdmCOn+gBENWcjL/w3ueNOu
	o686ikfI4lmUA0ixdUnA0aa+wbywR9qK11YLnIXqEBWVIAPdbqMvVLTGmvlOtOT+q4jT
	km3N/MyHNJJclwb0c8TlwRgZwTsOTpckC9DJZRirzS4YlHyHyTCQw3L3Js6iV8ZF2/Op
	aJQQXtHj+QIuGqDei6TGk2lbiXOd9n/BZWSd9yF47dUouk2awgXsafn05izfb1KAwu7D
	qqa+OSZeGaXwx3Loq7IKwd5WLrbZSomddR0Fgy+H3gHZOYP3JGs4iRNWmtIMBvhPDkE4
	Qh5A==
X-Received: by 10.58.179.115 with SMTP id df19mr460663vec.41.1395766096685;
	Tue, 25 Mar 2014 09:48:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.39.69 with HTTP; Tue, 25 Mar 2014 09:47:56 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F85C36@ORSMSX101.amr.corp.intel.com>
References: <CAF_dkJBDA2j8wVTa-JJ9vgKyigmhzC9bjv00o3fum-qqnPi80A@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F85BD4@ORSMSX101.amr.corp.intel.com>
	<CAF_dkJAsfHs4iCSUyG3zwbj-02Pu8u63D===5cCjaeiMemnbmw@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F85C36@ORSMSX101.amr.corp.intel.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 25 Mar 2014 12:47:56 -0400
Message-ID: <CAF_dkJD7VwPe5joKp8t4c0-CoG_Jv56EEZZzASVcZ0p7WB5EfA@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems building documentation for bitbake 1.17.0
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
X-List-Received-Date: Tue, 25 Mar 2014 16:48:20 -0000
Content-Type: multipart/alternative; boundary=047d7b6730ac61ef9c04f5711ec0

--047d7b6730ac61ef9c04f5711ec0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

That's the ticket=E2=80=A6. thanks.

Installing dblatex and/or xmlto made everything work (and work much
faster!).  1.17.0 installs fine (with python setup.py install --user) and
"make DOC=3Duser-manual" works for master.  setup still doesn't work on
master, probably because doc/manual/thml/* no longer exists:

      data_files =3D [("share/bitbake", glob("conf/*") + glob("classes/*"))=
,
                  ("share/doc/bitbake-%s/manual" % __version__,
glob("doc/manual/html/*"))],

--wpd



On Tue, Mar 25, 2014 at 12:23 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

>  Hmm=E2=80=A6 I can the following on Ubuntu 12.04:
>
>
>
> $ git clone git://git.openembedded.org/bitbake
> $ cd bitbake
> $ make DOC=3Duser-manual
>
> Builds both HTML and PDF fine.  Assumes the =E2=80=9Cmaster=E2=80=9D bran=
ch.
>
> I have the make, xsltproc, docbook-utils, fop, dblatex, and xmlto package=
s
> on my host build machine.
>
> Scott
>
>
>
>
>
>
>
>
>
> *From:* Patrick Doyle [mailto:wpdster@gmail.com]
> *Sent:* Tuesday, March 25, 2014 8:30 AM
> *To:* Rifenbark, Scott M
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Problems building documentation for bitbake 1.17.0
>
>
>
> I poked around some more after sending my email (instead of doing the wor=
k
> I was supposed to be doing) and found that, by ignoring the docbook
> messages and just letting the setup complete for 1.17.0, it worked (once =
I
> apt-got another package or two: xsltproc, libxml2-utils, fop, maybe
> others).  So I now have a doc/manual/html directory for 1.17.0.
>
>
>
> I still can't build the docs (with "make DOC=3Duser-manual") on master
> though.  It fails to build user-manual.pdf:
>
>
>
> http://docbook.sourceforge.net/release/xsl/current/common/en.xml:188:
> parser error : Premature end of data in tag l10n line 2
>
> <l:gentext key=3D"listof
>
>                       ^
>
> [warning] /usr/bin/fop: Unable to locate servlet-api in /usr/share/java
>
> Default page-height set to: 11in
>
> Default page-width set to: 8.26in
>
> Exception
>
> org.apache.fop.apps.FOPException: String index out of range: 0
>
> java.lang.StringIndexOutOfBoundsException: String index out of range: 0
>
>
>
>
>
> ******** Creating Tarball of document files
>
>
>
> cd user-manual; tar -cvzf user-manual.tgz user-manual-style.css
> user-manual.html user-manual.pdf figures/bitbake-title.png; cd ..
>
> user-manual-style.css
>
> user-manual.html
>
> tar: user-manual.pdf: Cannot stat: No such file or directory
>
> figures/bitbake-title.png
>
> tar: Exiting with failure status due to previous errors
>
>
>
> I'm not to sure what to make of this :-)
>
> --wpd
>
>
>
>
>
> On Tue, Mar 25, 2014 at 10:38 AM, Rifenbark, Scott M <
> scott.m.rifenbark@intel.com> wrote:
>
> I created a fresh clone of the upstream BB repository, checked out the
> 1.17.0 tag and cannot make the user-manual.  I don=E2=80=99t think the ab=
ility to
> make user-manual was in place at the time 1.17.0 tag happened.  I am just
> guessing here though.
>
>
>
> Scott
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Patrick Doyle
> *Sent:* Tuesday, March 25, 2014 5:58 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Problems building documentation for bitbake 1.17.0
>
>
>
> Hello all,
>
>
>
> I just tried
>
>
>
> $ git clone git://git.openembedded.org/bitbake
>
> $ cd bitbake
>
> $ git checkout 1.17.0
>
> $ python setup.py install
>
>
>
> and that failed with an infinite (well, I hit ^C before I found out for
> real) stream of messages of the form:
>
>
>
> http://docbook.sourceforge.net/release/xsl/current/common/en.xml:207:
> parser error : Extra content at the end of the document
>
> =C4=9E=C4=9F=C4=A0=C4=A1=C4=A2=C4=A3=C6=93=C9=A0=C7=A4=C7=A5=C7=A6=C7=A7=
=C7=B4=C7=B5=E1=B8=A0=E1=B8=A1Hh=C4=A4=C4=A5=C4=A6=C4=A7=C8=9E=C8=9F=C9=A6=
=E1=B8=A2=E1=B8=A3=E1=B8=A4=E1=B8=A5=E1=B8=A6=E1=B8=A7=E1=B8=A8=E1=B8=A9=E1=
=B8=AA=E1=B8=AB
>
>
>      ^
>
>
>
> I tried this on a Ubuntu 12.04 LTS 64 bit machine.  Am I missing a
> particular dependency?  Is this a known problem (with an obvious solution=
?)
>  The Google doesn't tell me anything obvious about "docbook extra content
> at end of document"  (I didn't try searching for the string of random
> characters that follows that.  Perhaps I should try.)
>
>
>
> I get the same error when executing "make DOC=3Duser-manual" on the maste=
r
> branch (note that setup.py doesn't work right now on master), so I'm
> inclined to believe the problem is at my end.  I'm just not sure where to
> start looking for a solution.  So I figured I'd ask.
>
>
>
> --wpd
>
>
>
>
>

--047d7b6730ac61ef9c04f5711ec0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That&#39;s the ticket=E2=80=A6. thanks.<div><br></div><div=
>Installing dblatex and/or xmlto made everything work (and work much faster=
!). =C2=A01.17.0 installs fine (with python setup.py install --user) and &q=
uot;make DOC=3Duser-manual&quot; works for master. =C2=A0setup still doesn&=
#39;t work on master, probably because doc/manual/thml/* no longer exists:<=
/div>

<div><br></div><div><div>=C2=A0 =C2=A0 =C2=A0 data_files =3D [(&quot;share/=
bitbake&quot;, glob(&quot;conf/*&quot;) + glob(&quot;classes/*&quot;)),</di=
v><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (&quo=
t;share/doc/bitbake-%s/manual&quot; % __version__, glob(&quot;doc/manual/ht=
ml/*&quot;))],</div>

</div><div><br></div><div>--wpd</div><div><br></div></div><div class=3D"gma=
il_extra"><br><br><div class=3D"gmail_quote">On Tue, Mar 25, 2014 at 12:23 =
PM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rife=
nbark@intel.com" target=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;</spa=
n> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hmm=E2=80=A6 I can the fo=
llowing on Ubuntu 12.04:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"></p><div class=3D"">$ git clone=C2=A0git://<a href=
=3D"http://git.openembedded.org/bitbake" target=3D"_blank">git.openembedded=
.org/bitbake</a>
<br>
$ cd bitbake<br></div>
$ make DOC=3Duser-manual<u></u><u></u><p></p>
<p class=3D"MsoNormal">Builds both HTML and PDF fine.=C2=A0 Assumes the =E2=
=80=9Cmaster=E2=80=9D branch.=C2=A0
<u></u><u></u></p>
<p class=3D"MsoNormal">I have the make, xsltproc, docbook-utils, fop, dblat=
ex, and xmlto packages on my host build machine.<u></u><u></u></p>
<p class=3D"MsoNormal">Scott<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Patrick =
Doyle [mailto:<a href=3D"mailto:wpdster@gmail.com" target=3D"_blank">wpdste=
r@gmail.com</a>]
<br>
<b>Sent:</b> Tuesday, March 25, 2014 8:30 AM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Problems building documentation for bitbake 1.1=
7.0<u></u><u></u></span></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">I poked around some more after sending my email (ins=
tead of doing the work I was supposed to be doing) and found that, by ignor=
ing the docbook messages and just letting the setup complete for 1.17.0, it=
 worked (once I apt-got another package
 or two: xsltproc, libxml2-utils, fop, maybe others). =C2=A0So I now have a=
 doc/manual/html directory for 1.17.0.<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I still can&#39;t build the docs (with &quot;make DO=
C=3Duser-manual&quot;) on master though. =C2=A0It fails to build user-manua=
l.pdf:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://docbook.sourceforge.net/release/xs=
l/current/common/en.xml:188" target=3D"_blank">http://docbook.sourceforge.n=
et/release/xsl/current/common/en.xml:188</a>: parser error : Premature end =
of data in tag l10n line 2<u></u><u></u></p>


</div>
<div>
<p class=3D"MsoNormal">&lt;l:gentext key=3D&quot;listof<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ^<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">[warning] /usr/bin/fop: Unable to locate servlet-api=
 in /usr/share/java<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Default page-height set to: 11in<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Default page-width set to: 8.26in<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Exception<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">org.apache.fop.apps.FOPException: String index out o=
f range: 0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">java.lang.StringIndexOutOfBoundsException: String in=
dex out of range: 0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">******** Creating Tarball of document files<u></u><u=
></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">cd user-manual; tar -cvzf user-manual.tgz user-manua=
l-style.css user-manual.html user-manual.pdf figures/bitbake-title.png; cd =
..<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">user-manual-style.css<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">user-manual.html<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">tar: user-manual.pdf: Cannot stat: No such file or d=
irectory<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">figures/bitbake-title.png<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">tar: Exiting with failure status due to previous err=
ors<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;m not to sure what to make of this :-)<u></u><=
u></u></p>
</div>
<div>
<p class=3D"MsoNormal">--wpd<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=C2=A0<u></u><=
/p>
<div>
<p class=3D"MsoNormal">On Tue, Mar 25, 2014 at 10:38 AM, Rifenbark, Scott M=
 &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott=
.m.rifenbark@intel.com</a>&gt; wrote:<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I created a fresh clone o=
f the upstream BB repository, checked out the 1.17.0 tag and cannot make
 the user-manual. =C2=A0I don=E2=80=99t think the ability to make user-manu=
al was in place at the time 1.17.0 tag happened.=C2=A0 I am just guessing h=
ere though.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Scott</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Patrick Doyle<br>
<b>Sent:</b> Tuesday, March 25, 2014 5:58 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Problems building documentation for bitbake 1.17.0<=
/span><u></u><u></u></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hello all,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">I just tried<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">$ git clone=C2=A0git://<a href=3D"http://git.openemb=
edded.org/bitbake" target=3D"_blank">git.openembedded.org/bitbake</a><u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">$ cd bitbake<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">$ git checkout 1.17.0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">$ python setup.py install<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">and that failed with an infinite (well, I hit ^C bef=
ore I found out for real) stream of messages of the form:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://docbook.sourceforge.net/release/xs=
l/current/common/en.xml:207" target=3D"_blank">http://docbook.sourceforge.n=
et/release/xsl/current/common/en.xml:207</a>: parser error
 : Extra content at the end of the document<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C4=9E=C4=9F=C4=A0=C4=A1=C4=A2=C4=A3=C6=93=C9=A0=C7=
=A4=C7=A5=C7=A6=C7=A7=C7=B4=C7=B5=E1=B8=A0=E1=B8=A1Hh=C4=A4=C4=A5=C4=A6=C4=
=A7=C8=9E=C8=9F=C9=A6=E1=B8=A2=E1=B8=A3=E1=B8=A4=E1=B8=A5=E1=B8=A6=E1=B8=A7=
=E1=B8=A8=E1=B8=A9=E1=B8=AA=E1=B8=AB<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0^<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I tried this on a Ubuntu 12.04 LTS 64 bit machine. =
=C2=A0Am I missing a particular dependency? =C2=A0Is this a known problem (=
with an obvious solution?) =C2=A0The Google doesn&#39;t tell me anything
 obvious about &quot;docbook extra content at end of document&quot; =C2=A0(=
I didn&#39;t try searching for the string of random characters that follows=
 that. =C2=A0Perhaps I should try.)<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I get the same error when executing &quot;make DOC=
=3Duser-manual&quot; on the master branch (note that setup.py doesn&#39;t w=
ork right now on master), so I&#39;m inclined to believe the problem is
 at my end. =C2=A0I&#39;m just not sure where to start looking for a soluti=
on. =C2=A0So I figured I&#39;d ask.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">--wpd<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--047d7b6730ac61ef9c04f5711ec0--
