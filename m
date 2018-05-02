Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1862BE00A6A; Wed,  2 May 2018 13:17:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A9DE00A1E
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 13:17:11 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id h2-v6so20122403qtp.7
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 13:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=te/aHsQoaAjce3aEMypPV2EbYTIY4Xvn730d4LYoOQo=;
	b=PPBmwSzTt0d3BnJaYiNqm46QgMuKBtw9K5W9pyixD8sLZkqUACFj1fe3bWSF9gXi0m
	gqY94irQU7jG+6g8YcbRvsBvAWTkZNtFYbxVpMlHmuUQw+O3Xzd4W609c7uXZWbo+Ar8
	GGUom0BDeuui2QJ8VhzKImXPBT/6U0wR6vwHAdkPs94ysPlEeAHbnC0M3PoZvY15oZeF
	FaY/QpicOt1vPNEbwMv6kOFDcCO7bdaDSdcKgmfqhkLWMvUs27KjdWFQu3EGth3uZUPU
	7nEWOwH6t/qQWkditi32L4bw6DlrNB1P05Y86uG416fK+Qn9AzD5avJAV7RgeTGCSd9X
	8Cjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=te/aHsQoaAjce3aEMypPV2EbYTIY4Xvn730d4LYoOQo=;
	b=hTjb0NnbtQrkVRjvvi72y9/Tcr2clH38ODGkQ3J1zK2sVk20pHm+lafs1zcUUvCa58
	Fh6oN54aipJMFrH4wfoL/4ZvbbEN5Euwy59Z60fslc/LgfqjJ91FBYEaLMmlSL2tfa3P
	sYeI/V/plBeg1sZ/6VLQ3rNMZDj9cBsPxh6octI+2ApJy3zDS1srAzjLL2ixeLIcQpii
	TD/CEgr69il2DELgpBCkv9FES4yyaqZPzMTXbxt9a/TgTzhgdihPl5PvMij5JlxlXZ1Q
	x6IHaRjoHxOlwqY130vVTg0CTxkf5JXJuBQeOcaJFL/bQwB2nPjQnxcLcfYnTc4BeHIu
	FnDA==
X-Gm-Message-State: ALQs6tCF8MzyXxVGNDC7ekfYxTcGS7wb68yi12gmwnGVPc3hr4hDnPOF
	RNL49O+fpfRqBNmvyRUWk20Rfo7AH3XTiWtHSZg=
X-Google-Smtp-Source: AB8JxZoO06OvrJxkrrCsO70ECswI5R+ijDFQgUq+uqmXBLC7JJ9KN80cajXNUqteBxSlNX/kQYiHt6gK4EhC8DsS1iY=
X-Received: by 2002:ac8:3294:: with SMTP id
	z20-v6mr16949641qta.366.1525292230965; 
	Wed, 02 May 2018 13:17:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Wed, 2 May 2018 13:17:10 -0700 (PDT)
In-Reply-To: <MWHPR19MB1183A2A575D567D9DE74ED12C5800@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAGAf8LymM_PYzz3CVDqvG9+yq-YCeQ+UmMOOPDmCaovm6dFYgA@mail.gmail.com>
	<MWHPR19MB1183A2A575D567D9DE74ED12C5800@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 2 May 2018 22:17:10 +0200
Message-ID: <CAGAf8Lw0FCJ6ebE3dLFmbnm00MOe-vMdi+rWa+sHcDYpZMcBBA@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with Python when running oe-init-build-env
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
X-List-Received-Date: Wed, 02 May 2018 20:17:13 -0000
Content-Type: multipart/alternative; boundary="0000000000009aff02056b3ec56d"

--0000000000009aff02056b3ec56d
Content-Type: text/plain; charset="UTF-8"

Hello Raymond,

YOCTO is, per say, moving target. If you have YOCTO Krogoth, you should
have somehow frozen host Centos 7 release around this time. As you now
moving to Rocko, you need to fast-forward the whole host Centos 7 (in other
words to upgrade Centos 7) to this state (maybe to latest, it'll still
work, I guess).

Not familiar with Centos distro, really... :-(

This is a good point to mention that you, Raymond, or anybody else, need to
give to YOCTO mailing list more info about what is going on with your
setup, since we are here guessing, in The Dark. You gave one parameter
less, then it is as solving two equations with three unknown variables (so
it is pure [un]educated guess out of Blue).

All Good, after all, you solved your problem! :-)

Zoran
_______

On Wed, May 2, 2018 at 9:28 PM, Raymond Yeung <rksyeung@hotmail.com> wrote:

> Thanks Zoran.
>
>
> My Linux build machine uses Centos 7.  I thought I'd done the installation
> to Python 3.6.5.  If this is not Python3 > 3.4.0, then I'm confused.  The
> link I follow for installation is here:  https://janikarhunen.fi/how-
> to-install-python-3-6-1-on-centos-7.html
>
> > python3.6 -V
>
> Python 3.6.5
>
> >python -V
>
> Python 2.7.5
>
>
> Anyway, I realize what went wrong.  I'd Krogoth (a 2016 Poky) running
> before.  Now as I'm migrating to Rocko (a 2017 Poky), I try to solve a
> Python versioning issue by installing Python only (as above).  However,
> there may be other packages I need to update.  After getting latest
> Reference Manual, download and install latest environment, I no longer have
> python3 issue.  However, the Python version of why Python3.6 won't satisfy
> Python > 3.4.0 still puzzles me (though no longer blocking me).
>
>
> Raymond
>
>
> ------------------------------
> *From:* Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> *Sent:* Tuesday, May 1, 2018 11:19 PM
> *To:* Raymond Yeung
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Problem with Python when running oe-init-build-env
>
> Hello Raymond,
>
> The problem is that you (talking about your host distro):
> [1] Do NOT have python3 package installed;
> [2] Do have python3 package < 3.4.0 version, so you need to upgrade!
>
> So, I have no idea which host distro you are using, but:
> [1] If Debian/Ubuntu, then: apt-get install python3
>      If Fedora, then dnf install python3
> [2] If Debian/Ubuntu, then: apt-get update python3
>      If Fedora, then dnf update python3
>
> Hope this helps,
> Zoran
> _______
>
> On Tue, May 1, 2018 at 10:43 PM, Raymond Yeung <rksyeung@hotmail.com>
> wrote:
> > I'd just git cloned Rocko and meta-ti.  When I try to source
> > oe-init-build-env, I got errors:
> >
> >
> > -bash: python3: command not found
> >
> > BitBake requires Python 3.4.0 or later as 'python3'.  "python -V" gives
> > "Python 2.7.9".  "python3" is not in $PATH.  I'd followed some detailed
> > online description to install Python 3.6 on CentOS 7.  However, after
> > installation, it looks like I need to invoke it with python3.6.
> >
> >
> > How does this work now?  I suppose the oe-init-build-env script
> uses/expects
> > python3, not python3.6.
> >
> >
> > Any insight?
> >
> >
> > Raymond
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> yocto Info Page <https://lists.yoctoproject.org/listinfo/yocto>
> lists.yoctoproject.org
> Discussion of all things about the Yocto Project. Read our Community
> Guidelines or learn more about how to participate in other community
> discussions. Subscribe before posting to bypass moderation.
>
>
> >
>

--0000000000009aff02056b3ec56d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Raymond,<div><br></div><div>YOCTO is, per say, movin=
g target. If you have YOCTO Krogoth, you should have somehow frozen host Ce=
ntos 7 release around this time. As you now moving to Rocko, you need to fa=
st-forward the whole host Centos 7 (in other words to upgrade Centos 7) to =
this state (maybe to latest, it&#39;ll still work, I guess).</div><div><br>=
</div><div>Not familiar with Centos distro, really... :-(</div><div><br></d=
iv><div>This is a good point to mention that you, Raymond, or anybody else,=
 need to give to YOCTO mailing list more info about what is going on with y=
our setup, since we are here guessing, in The Dark. You gave one parameter =
less, then it is as solving two equations with three unknown variables (so =
it is pure [un]educated guess out of Blue).</div><div><br></div><div>All Go=
od, after all, you solved your problem! :-)</div><div><br></div><div>Zoran<=
/div><div>_______=C2=A0</div></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Wed, May 2, 2018 at 9:28 PM, Raymond Yeung <span dir=
=3D"ltr">&lt;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_blank">rksy=
eung@hotmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_2766336083894656369divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif,Helvetica,Emoj=
iFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmo=
ji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols" dir=
=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks Zoran.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">My Linux build machine uses Cento=
s 7.=C2=A0 I thought I&#39;d done the installation to Python 3.6.5.=C2=A0 I=
f this is not Python3 &gt; 3.4.0, then I&#39;m confused.=C2=A0 The link I f=
ollow for installation is here: =C2=A0<a href=3D"https://janikarhunen.fi/ho=
w-to-install-python-3-6-1-on-centos-7.html" class=3D"m_2766336083894656369O=
WAAutoLink" id=3D"m_2766336083894656369LPlnk623282" target=3D"_blank">https=
://janikarhunen.fi/how-<wbr>to-install-python-3-6-1-on-<wbr>centos-7.html</=
a></p>
<br>
<p style=3D"margin-top:0;margin-bottom:0">&gt;<span style=3D"font-size:12pt=
">=C2=A0python3.6 -V</span></p>
<p>Python 3.6.5</p>
<p>&gt;<span style=3D"font-size:12pt">python -V</span></p>
<p>Python 2.7.5</p>
<p><br>
</p>
<p>Anyway, I realize what went wrong.=C2=A0 I&#39;d Krogoth (a 2016 Poky) r=
unning before.=C2=A0 Now as I&#39;m migrating to Rocko (a 2017 Poky), I try=
=C2=A0to solve a Python versioning issue by installing Python only (as abov=
e).=C2=A0 However, there may be other packages I need to update.
 =C2=A0After getting latest Reference Manual, download and install latest e=
nvironment, I no longer have python3 issue.=C2=A0 However, the Python versi=
on of why Python3.6 won&#39;t satisfy Python &gt; 3.4.0 still puzzles me (t=
hough no longer blocking me).</p>
<p></p>
<p><br>
</p>
<p>Raymond</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_2766336083894656369divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" ta=
rget=3D"_blank">zoran.stojsavljevic@gmail.com</a><wbr>&gt;<br>
<b>Sent:</b> Tuesday, May 1, 2018 11:19 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Problem with Python when running oe-init-build-=
env</font>
<div>=C2=A0</div>
</div>
<div class=3D"m_2766336083894656369BodyFragment"><font size=3D"2"><span sty=
le=3D"font-size:11pt">
<div class=3D"m_2766336083894656369PlainText"><div><div class=3D"h5">Hello =
Raymond,<br>
<br>
The problem is that you (talking about your host distro):<br>
[1] Do NOT have python3 package installed;<br>
[2] Do have python3 package &lt; 3.4.0 version, so you need to upgrade!<br>
<br>
So, I have no idea which host distro you are using, but:<br>
[1] If Debian/Ubuntu, then: apt-get install python3<br>
=C2=A0=C2=A0=C2=A0=C2=A0 If Fedora, then dnf install python3<br>
[2] If Debian/Ubuntu, then: apt-get update python3<br>
=C2=A0=C2=A0=C2=A0=C2=A0 If Fedora, then dnf update python3<br>
<br>
Hope this helps,<br>
Zoran<br>
_______<br>
<br>
On Tue, May 1, 2018 at 10:43 PM, Raymond Yeung &lt;<a href=3D"mailto:rksyeu=
ng@hotmail.com" target=3D"_blank">rksyeung@hotmail.com</a>&gt; wrote:<br>
&gt; I&#39;d just git cloned Rocko and meta-ti.=C2=A0 When I try to source<=
br>
&gt; oe-init-build-env, I got errors:<br>
&gt;<br>
&gt;<br>
&gt; -bash: python3: command not found<br>
&gt;<br>
&gt; BitBake requires Python 3.4.0 or later as &#39;python3&#39;.=C2=A0 &qu=
ot;python -V&quot; gives<br>
&gt; &quot;Python 2.7.9&quot;.=C2=A0 &quot;python3&quot; is not in $PATH.=
=C2=A0 I&#39;d followed some detailed<br>
&gt; online description to install Python 3.6 on CentOS 7.=C2=A0 However, a=
fter<br>
&gt; installation, it looks like I need to invoke it with python3.6.<br>
&gt;<br>
&gt;<br>
&gt; How does this work now?=C2=A0 I suppose the oe-init-build-env script u=
ses/expects<br>
&gt; python3, not python3.6.<br>
&gt;<br>
&gt;<br>
&gt; Any insight?<br>
&gt;<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"m_2766=
336083894656369LPlnk894811" class=3D"m_2766336083894656369OWAAutoLink" targ=
et=3D"_blank">
https://lists.yoctoproject.<wbr>org/listinfo/yocto</a>
</div></div><div id=3D"m_2766336083894656369LPBorder_GT_15252767047480.9353=
307514330218" style=3D"margin-bottom:20px;overflow:auto;width:100%;text-ind=
ent:0px">
<table id=3D"m_2766336083894656369LPContainer_15252767047450.00600506008584=
57814" cellspacing=3D"0" style=3D"width:90%;background-color:rgb(255,255,25=
5);overflow:auto;padding-top:20px;padding-bottom:20px;margin-top:20px;borde=
r-top-width:1px;border-top-style:dotted;border-top-color:rgb(200,200,200);b=
order-bottom-width:1px;border-bottom-style:dotted;border-bottom-color:rgb(2=
00,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"m_2766336083894656369TextCell_15252767047470.3908343845028899" co=
lspan=3D"2" style=3D"vertical-align:top;padding:0px;display:table-cell">
<div id=3D"m_2766336083894656369LPRemovePreviewContainer_15252767047470.415=
5838622579563"></div>
<div id=3D"m_2766336083894656369LPTitle_15252767047470.2926955628645245" st=
yle=3D"color:rgb(0,120,215);font-weight:normal;font-size:21px;font-family:w=
f_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&quo=
t;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;line-height:2=
1px">
<a id=3D"m_2766336083894656369LPUrlAnchor_15252767047470.2327548529833663" =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"text-decora=
tion:none" target=3D"_blank">yocto Info Page</a></div>
<div id=3D"m_2766336083894656369LPMetadata_15252767047470.16915804322735695=
" style=3D"margin:10px 0px 16px;color:rgb(102,102,102);font-weight:normal;f=
ont-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tah=
oma,Arial,sans-serif;font-size:14px;line-height:14px">
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a></div>
<div id=3D"m_2766336083894656369LPDescription_15252767047480.78203931020643=
64" style=3D"display:block;color:rgb(102,102,102);font-weight:normal;font-f=
amily:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,A=
rial,sans-serif;font-size:14px;line-height:20px;max-height:100px;overflow:h=
idden">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
</div>
</span></font></div>
</div>
</div>
</div>

</blockquote></div><br></div>

--0000000000009aff02056b3ec56d--
