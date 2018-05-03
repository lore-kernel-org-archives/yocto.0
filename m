Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38087E00C70; Thu,  3 May 2018 09:00:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECEEEE00C6E
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 09:00:38 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id c9-v6so15871238iob.12
	for <yocto@yoctoproject.org>; Thu, 03 May 2018 09:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JTZQ7luJ+vhQiH4c7TI8hvLnNk5gkeUUsFCvERcjlfY=;
	b=NnnrLcaHO0woWljLaeMmSpTO4njBnC0IK5qJWQbbiNn7x+UuljJnSvfFuKSP4otZyW
	PDc6hjQSt1ofWgIVj0yGb5HkXoFHqANfIYo/GGZoXutWu0A5EWqTsFvGk1DXOYdpc2Xq
	tvwjQwEfedUuwTUR94VbWqqWgu3tcKFbYaRepYl5iCJhetao9I8xm6BrnW9e2c5yvIFv
	gPXSk/eTFKEitcaD86iYhF5Zr3AFP8zA4SGwM0annUf63QsWF4jkkPun9meIBkL0FoJy
	EgMD7tCdVN6pVkt5T1sVN9cpT5KVhFVvFVKfXhbRy3P4SP0CqkD6b9Hx7wHKMI6W+Glm
	dLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JTZQ7luJ+vhQiH4c7TI8hvLnNk5gkeUUsFCvERcjlfY=;
	b=ath6kH07RGBFOdC0VrkdSXi+w5OpHb+yNYGpF0D6DWA2ejCRmO0j0cOQzwYpzgKebV
	mD0yal03a+qP1KV6uuOeMstSAPTeYnE2qu5Ly+5PjqOprNaojXiPgKXBfd3P+aWAUWWC
	JXGaz4xRLyTDO+KyFBnR2k1mJRIqEKrsvd51RXRexxjNjQaXCEYRyPzZLhtvfpvorkYR
	eMuTpeAXAajxFnKSMxZ2bdQUT41XW8zZKmvZ3c81KQRxFlZezQmWuycxU8faJI77MTjC
	2otmgp3vxyelNDv3fkX6J6fdufzjIFBOWI68bFP8pJSFfXPihdZ8a649I+DH5nP03pX8
	w/5w==
X-Gm-Message-State: ALQs6tDI2wx3jQ4drhE02xyRt1HUqsd/hARaXgkQFBzUMA9le1xeZXoU
	lWLxypc9Wtrt5kpLKilfG4Ip6XVFQ57GEHFBxCtlEQ==
X-Google-Smtp-Source: AB8JxZrxm/D29ApninI025r1VOEDUelldFUneQZU/hPwAK0bOppFlykc/dAgGorogQXIAo4ebRa3RciFWKIzQIReoRU=
X-Received: by 2002:a6b:6b16:: with SMTP id
	g22-v6mr25536768ioc.20.1525363238006; 
	Thu, 03 May 2018 09:00:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Thu, 3 May 2018 09:00:17 -0700 (PDT)
In-Reply-To: <MWHPR19MB1183A2A575D567D9DE74ED12C5800@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAGAf8LymM_PYzz3CVDqvG9+yq-YCeQ+UmMOOPDmCaovm6dFYgA@mail.gmail.com>
	<MWHPR19MB1183A2A575D567D9DE74ED12C5800@MWHPR19MB1183.namprd19.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 May 2018 17:00:17 +0100
Message-ID: <CAJTo0LaWnAgFiGZLg9MjMjitahqEi9n5Ptw0SrTETOzyfSccPw@mail.gmail.com>
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
X-List-Received-Date: Thu, 03 May 2018 16:00:40 -0000
Content-Type: multipart/alternative; boundary="000000000000f485b1056b4f4d4d"

--000000000000f485b1056b4f4d4d
Content-Type: text/plain; charset="UTF-8"

I suggest you have a look through the feed that you link to and see if it
provides a package which has /usr/bin/python3 in, and if it doesn't then
just make a python3 -> python3.6 symlink (which is all you need).

Ross

On 2 May 2018 at 20:28, Raymond Yeung <rksyeung@hotmail.com> wrote:

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
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000f485b1056b4f4d4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I suggest you have a look through the feed that you link t=
o and see if it provides a package which has /usr/bin/python3 in, and if it=
 doesn&#39;t then just make a python3 -&gt; python3.6 symlink (which is all=
 you need).<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On 2 May 2018 at 20:28, Raymond Yeung <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_blank">rk=
syeung@hotmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-6613158871024243400divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif,Helvetica,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols" dir=
=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks Zoran.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">My Linux build machine uses Cento=
s 7.=C2=A0 I thought I&#39;d done the installation to Python 3.6.5.=C2=A0 I=
f this is not Python3 &gt; 3.4.0, then I&#39;m confused.=C2=A0 The link I f=
ollow for installation is here: =C2=A0<a href=3D"https://janikarhunen.fi/ho=
w-to-install-python-3-6-1-on-centos-7.html" class=3D"m_-6613158871024243400=
OWAAutoLink" id=3D"m_-6613158871024243400LPlnk623282" target=3D"_blank">htt=
ps://janikarhunen.fi/how-<wbr>to-install-python-3-6-1-on-<wbr>centos-7.html=
</a></p>
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
<div id=3D"m_-6613158871024243400divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" t=
arget=3D"_blank">zoran.stojsavljevic@gmail.com</a><wbr>&gt;<br>
<b>Sent:</b> Tuesday, May 1, 2018 11:19 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Problem with Python when running oe-init-build-=
env</font>
<div>=C2=A0</div>
</div>
<div class=3D"m_-6613158871024243400BodyFragment"><font size=3D"2"><span st=
yle=3D"font-size:11pt">
<div class=3D"m_-6613158871024243400PlainText">Hello Raymond,<br>
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
&gt;<span class=3D"HOEnZb"><font color=3D"#888888"><br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"m_-661=
3158871024243400LPlnk894811" class=3D"m_-6613158871024243400OWAAutoLink" ta=
rget=3D"_blank">
https://lists.yoctoproject.<wbr>org/listinfo/yocto</a>
<div id=3D"m_-6613158871024243400LPBorder_GT_15252767047480.935330751433021=
8" style=3D"margin-bottom:20px;overflow:auto;width:100%;text-indent:0px">
<table id=3D"m_-6613158871024243400LPContainer_15252767047450.0060050600858=
457814" cellspacing=3D"0" style=3D"width:90%;background-color:rgb(255,255,2=
55);overflow:auto;padding-top:20px;padding-bottom:20px;margin-top:20px;bord=
er-top-width:1px;border-top-style:dotted;border-top-color:rgb(200,200,200);=
border-bottom-width:1px;border-bottom-style:dotted;border-bottom-color:rgb(=
200,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"m_-6613158871024243400TextCell_15252767047470.3908343845028899" c=
olspan=3D"2" style=3D"vertical-align:top;padding:0px;display:table-cell">
<div id=3D"m_-6613158871024243400LPRemovePreviewContainer_15252767047470.41=
55838622579563"></div>
<div id=3D"m_-6613158871024243400LPTitle_15252767047470.2926955628645245" s=
tyle=3D"color:rgb(0,120,215);font-weight:normal;font-size:21px;font-family:=
wf_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&qu=
ot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;line-height:=
21px">
<a id=3D"m_-6613158871024243400LPUrlAnchor_15252767047470.2327548529833663"=
 href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"text-decor=
ation:none" target=3D"_blank">yocto Info Page</a></div>
<div id=3D"m_-6613158871024243400LPMetadata_15252767047470.1691580432273569=
5" style=3D"margin:10px 0px 16px;color:rgb(102,102,102);font-weight:normal;=
font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Ta=
homa,Arial,sans-serif;font-size:14px;line-height:14px">
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a></div>
<div id=3D"m_-6613158871024243400LPDescription_15252767047480.7820393102064=
364" style=3D"display:block;color:rgb(102,102,102);font-weight:normal;font-=
family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,sans-serif;font-size:14px;line-height:20px;max-height:100px;overflow:=
hidden">
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
</font></span></div>
</span></font></div>
</div>
</div>
</div>

<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--000000000000f485b1056b4f4d4d--
