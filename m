Return-Path: <wpdster@gmail.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07BB4E00B4A
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 08:30:11 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id sa20so717835veb.36
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 08:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=BnR6AtDKwfxVAj1z9Nj9XDBvDdMKtioE7phAIFpwK7Q=;
	b=fzGJVrcFUa8wE3ePQzIWRKclVZ5cp+QILU0Kmopy9ScefyZEtwQaykxrDk0Sku+8C2
	hd5eacvPdaojDOVHIo8bkHE+hPYRQkDPfM5JwVknR8WAfsa3YlomVbGb7rONWcC67LMj
	/oWjo6s6BMEkVtneUj3H1dwCxwgqZf/rKFd6jRdTwK2D5bKSOjvM3YT3xtV69/59D3RB
	uLExpadQt5lvUbZCs8MiKMlSQWYw+Eqs9AccB2GVAn8Xe7mC7we79rRmEyf28wBLVU7q
	S496TGNqjG6sPG5cwb7IaP8UoeSJMEec6liw/br+eoGKHeNVRCBX4yf3b/j1WEgHurhv
	8tEA==
X-Received: by 10.58.172.132 with SMTP id bc4mr236083vec.45.1395761410935;
	Tue, 25 Mar 2014 08:30:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.39.69 with HTTP; Tue, 25 Mar 2014 08:29:50 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F85BD4@ORSMSX101.amr.corp.intel.com>
References: <CAF_dkJBDA2j8wVTa-JJ9vgKyigmhzC9bjv00o3fum-qqnPi80A@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F85BD4@ORSMSX101.amr.corp.intel.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 25 Mar 2014 11:29:50 -0400
Message-ID: <CAF_dkJAsfHs4iCSUyG3zwbj-02Pu8u63D===5cCjaeiMemnbmw@mail.gmail.com>
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
X-List-Received-Date: Tue, 25 Mar 2014 15:30:14 -0000
Content-Type: multipart/alternative; boundary=047d7b5db9c417120804f5700776

--047d7b5db9c417120804f5700776
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I poked around some more after sending my email (instead of doing the work
I was supposed to be doing) and found that, by ignoring the docbook
messages and just letting the setup complete for 1.17.0, it worked (once I
apt-got another package or two: xsltproc, libxml2-utils, fop, maybe
others).  So I now have a doc/manual/html directory for 1.17.0.

I still can't build the docs (with "make DOC=3Duser-manual") on master
though.  It fails to build user-manual.pdf:

http://docbook.sourceforge.net/release/xsl/current/common/en.xml:188:
parser error : Premature end of data in tag l10n line 2
<l:gentext key=3D"listof
                      ^
[warning] /usr/bin/fop: Unable to locate servlet-api in /usr/share/java
Default page-height set to: 11in
Default page-width set to: 8.26in
Exception
org.apache.fop.apps.FOPException: String index out of range: 0
java.lang.StringIndexOutOfBoundsException: String index out of range: 0


******** Creating Tarball of document files

cd user-manual; tar -cvzf user-manual.tgz user-manual-style.css
user-manual.html user-manual.pdf figures/bitbake-title.png; cd ..
user-manual-style.css
user-manual.html
tar: user-manual.pdf: Cannot stat: No such file or directory
figures/bitbake-title.png
tar: Exiting with failure status due to previous errors

I'm not to sure what to make of this :-)
--wpd



On Tue, Mar 25, 2014 at 10:38 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

>  I created a fresh clone of the upstream BB repository, checked out the
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

--047d7b5db9c417120804f5700776
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I poked around some more after sending my email (instead o=
f doing the work I was supposed to be doing) and found that, by ignoring th=
e docbook messages and just letting the setup complete for 1.17.0, it worke=
d (once I apt-got another package or two: xsltproc, libxml2-utils, fop, may=
be others). =C2=A0So I now have a doc/manual/html directory for 1.17.0.<div=
>

<br></div><div>I still can&#39;t build the docs (with &quot;make DOC=3Duser=
-manual&quot;) on master though. =C2=A0It fails to build user-manual.pdf:</=
div><div><br></div><div><div><a href=3D"http://docbook.sourceforge.net/rele=
ase/xsl/current/common/en.xml:188">http://docbook.sourceforge.net/release/x=
sl/current/common/en.xml:188</a>: parser error : Premature end of data in t=
ag l10n line 2<br>

</div><div>&lt;l:gentext key=3D&quot;listof</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div>[warnin=
g] /usr/bin/fop: Unable to locate servlet-api in /usr/share/java</div><div>=
Default page-height set to: 11in</div><div>Default page-width set to: 8.26i=
n</div>

<div>Exception</div><div>org.apache.fop.apps.FOPException: String index out=
 of range: 0</div><div>java.lang.StringIndexOutOfBoundsException: String in=
dex out of range: 0</div><div><br></div><div>=C2=A0</div><div>******** Crea=
ting Tarball of document files</div>

<div>=C2=A0</div><div>cd user-manual; tar -cvzf user-manual.tgz user-manual=
-style.css user-manual.html user-manual.pdf figures/bitbake-title.png; cd .=
.</div><div>user-manual-style.css</div><div>user-manual.html</div><div>tar:=
 user-manual.pdf: Cannot stat: No such file or directory</div>

<div>figures/bitbake-title.png</div><div>tar: Exiting with failure status d=
ue to previous errors</div></div><div><br></div><div>I&#39;m not to sure wh=
at to make of this :-)</div><div>--wpd</div><div><br></div></div><div class=
=3D"gmail_extra">

<br><br><div class=3D"gmail_quote">On Tue, Mar 25, 2014 at 10:38 AM, Rifenb=
ark, Scott M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@inte=
l.com" target=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<=
br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">






<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I created a fresh clone o=
f the upstream BB repository, checked out the 1.17.0 tag and cannot make th=
e user-manual. =C2=A0I don=E2=80=99t think the ability to make user-manual
 was in place at the time 1.17.0 tag happened.=C2=A0 I am just guessing her=
e though.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Scott<u></u><u></u></span=
></p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Patrick Doyle<br>
<b>Sent:</b> Tuesday, March 25, 2014 5:58 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Problems building documentation for bitbake 1.17.0<=
u></u><u></u></span></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hello all,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal">I just tried<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">and that failed with an infinite (well, I hit ^C bef=
ore I found out for real) stream of messages of the form:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://docbook.sourceforge.net/release/xs=
l/current/common/en.xml:207" target=3D"_blank">http://docbook.sourceforge.n=
et/release/xsl/current/common/en.xml:207</a>: parser error : Extra content =
at the end of the document<u></u><u></u></p>


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
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I tried this on a Ubuntu 12.04 LTS 64 bit machine. =
=C2=A0Am I missing a particular dependency? =C2=A0Is this a known problem (=
with an obvious solution?) =C2=A0The Google doesn&#39;t tell me anything ob=
vious about &quot;docbook extra content at end of document&quot;
 =C2=A0(I didn&#39;t try searching for the string of random characters that=
 follows that. =C2=A0Perhaps I should try.)<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I get the same error when executing &quot;make DOC=
=3Duser-manual&quot; on the master branch (note that setup.py doesn&#39;t w=
ork right now on master), so I&#39;m inclined to believe the problem is at =
my end. =C2=A0I&#39;m just not sure where to start looking for a
 solution. =C2=A0So I figured I&#39;d ask.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">--wpd<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--047d7b5db9c417120804f5700776--
