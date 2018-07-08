Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B546E00B57; Sun,  8 Jul 2018 01:07:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C9DAE007AD
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 01:07:03 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id d189-v6so30669202oib.6
	for <yocto@yoctoproject.org>; Sun, 08 Jul 2018 01:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZoTIP/v+NHDrZy8Z7hbl2hc29TFNJK6Nkj7GCEbKQvI=;
	b=VMe/7IHKCOK5vb0tjAtmgXJkArsc/zcqLAYsyf8K0dWKXMUe+kCPjsq+XIq5zX9uVp
	TAYTW7SQw+BJzFxwGE5rMWKB4aCLNdYenkhOvj1cTivk+14XwE9ADj5/Or7hj6wNWuee
	U5sAq1rVVtVNo0HbKvaSy+dwYzlaYRwyMk9Eyap7zB6zhviBSWVF2uE+/qRkq0fxI80U
	n3HsAHkKtsIDmuhwtOkjt8hWp+DOSD7Iq9YmEPLxHu3TfIutwJmmoiFitZz62FpiGfU1
	gkK1IgEErWsE08R1B9IWWqoOT0pP0EMHf8zpxn/CBbwxfWjP+ebpAyILAEEhxBxRhsQD
	KVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZoTIP/v+NHDrZy8Z7hbl2hc29TFNJK6Nkj7GCEbKQvI=;
	b=ot5qWq9FlR0FA/3LZofNlXjLHiyccafsV4eS6XCPysSS/VFs/KryC5QhjJB4JfnjnT
	OIo9xEvKCX+jDcMyVjvQHLRWtCJbrMEVWH2MgM1GeQ1paynPYaA1kgTRd68/ipo2xWtZ
	aSbGvZAlW56RvJFRlGY1xkZBWPIagnsYnQWyAPBiOe0FgYxruaPba4J8wT2HoVMBeQ4i
	nTyKkaa11rc06IPYup/drHD5m1MSlyqWGqKY599aNQm7YIFDca0FHl8AtfbTV30yjOuf
	GO+R/pJAnpZT+axZM7svDHQRPJRkPpVnToR4Bv6CH9mrM509POSFRgeP/IjOTwMQPjiM
	B7sg==
X-Gm-Message-State: APt69E24qJ6azmB/QMc69/OIwGDsqFK2L26aMJxP4CvKMzgLmVKXLm5K
	k2tB4UZhlAx0iReMFoUVld03OAk+frPIKhFjQ3J1MA==
X-Google-Smtp-Source: AAOMgpcU70f6LUxmQx/erVasMe/0fp/CuybClh28Zzo4LHJATvw9BUY0HPjmqvOkeRNFmWX3gnUWJ1giUqMp+tMx18c=
X-Received: by 2002:aca:f409:: with SMTP id
	s9-v6mr19503597oih.102.1531037222657; 
	Sun, 08 Jul 2018 01:07:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP;
	Sun, 8 Jul 2018 01:06:42 -0700 (PDT)
In-Reply-To: <MWHPR19MB11839E1E2C80F4549861D246C5450@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
	<MWHPR19MB11839E1E2C80F4549861D246C5450@MWHPR19MB1183.namprd19.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 8 Jul 2018 09:06:42 +0100
Message-ID: <CAJTo0LZsUwJYTyC5dtk_aO0S3nEVhdcHboxnGTfYmi7JMenfZA@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Sun, 08 Jul 2018 08:07:04 -0000
Content-Type: multipart/alternative; boundary="000000000000cb73710570786163"

--000000000000cb73710570786163
Content-Type: text/plain; charset="UTF-8"

I strongly recommend you just write a recipe that builds openssl as you
wish, instead of building it out of the build system and somehow getting it
into the images.  The problem is that how do you intend to build software
against openssl if it can't link to the one in oe-core (as you don't want
it) or your custom one (because it doesn't exist yet).

The workaround - which is horrible - would be to use a rootfs postprocess
hook to forcibly remove the openssl packages from the rootfs, and then drop
in your own files.

Ross

On 8 July 2018 at 07:14, Raymond Yeung <rksyeung@hotmail.com> wrote:

> We have a shell script that builds openssl.  It uses the native makefiles
> from the open source project.  There's no  recipe.  I suppose we define a
> recipe for this out-of-tree sources.
>
>
> Still, if we could yank out embedded openssl easily, that would be the
> best.
>
>
> Raymond
>
>
> ------------------------------
> *From:* Burton, Ross <ross.burton@intel.com>
> *Sent:* Saturday, July 7, 2018 3:41 PM
> *To:* Raymond Yeung
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] How to remove openssl from sysroots
>
> Presumably you've a recipe for the vendor openssl.  If it has the same
> name but is a different version then just set PREFERRED_VERSION.  If
> it has a different name too, it should PROVIDE openssl and you can
> just set PREFERRED_PROVIDER.
>
> If it doesn't do either of those things, then it is broken.
>
> Ross
>
> On 6 July 2018 at 23:06, Raymond Yeung <rksyeung@hotmail.com> wrote:
> > I've changed the subject heading to make it more specific to our problem.
> > Hopefully this generates some responses.
> >
> >
> > It has been blocking us for close to one week now.  We want to use our
> 3rd
> > party vendor openssl, not the one that comes with the source.
> Apparently,
> > even with "minimal" instead of "base" or "sato" cannot exclude it.
> >
> >
> > Any idea [e.g. how do we systematically find out how it's included now,
> and
> > possibly what other packages/recipes we may also need to remove due to
> > dependency]?
> >
> >
> > Thanks,
> >
> > Raymond
> >
> >
> >
> > ________________________________
> > From: Raymond Yeung <rksyeung@hotmail.com>
> > Sent: Monday, July 2, 2018 11:05 PM
> > To: yocto@yoctoproject.org
> > Subject: How to remove a package from a build
> >
> >
> > We've our own non-yocto openssl that we want to use.  At the moment,
> we're
> > using "sato" image, rather than "minimal" and includes its openssl that
> is
> > out-of-date.  What is the best way to exclude it from our image (and from
> > sysroots)?
> >
> >
> > We have thought about two ideas -
> >
> >
> > Use smaller image like core-image-base, or core-image-full-cmdline (but
> not
> > -minimal that may remove too much functionality).
> > Use INSTALL_IMAGE_remove += " openssl"
> >
> >
> > Would either one work?  Also, how do I follow the .bb files etc (e.g.
> > starting from the one for sato) to trace down which sub-package includes
> > openssl?
> >
> >
> > Thanks,
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

--000000000000cb73710570786163
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I strongly recommend you just write a recipe that builds o=
penssl as you wish, instead of building it out of the build system and some=
how getting it into the images.=C2=A0 The problem is that how do you intend=
 to build software against openssl if it can&#39;t link to the one in oe-co=
re (as you don&#39;t want it) or your custom one (because it doesn&#39;t ex=
ist yet).<div><br></div><div>The workaround - which is horrible - would be =
to use a rootfs postprocess hook to forcibly remove the openssl packages fr=
om the rootfs, and then drop in your own files.</div><div><br></div><div>Ro=
ss</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
8 July 2018 at 07:14, Raymond Yeung <span dir=3D"ltr">&lt;<a href=3D"mailto=
:rksyeung@hotmail.com" target=3D"_blank">rksyeung@hotmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_3410379150917000727divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">We have a shell script that build=
s openssl.=C2=A0 It uses the native makefiles from the open source project.=
=C2=A0 There&#39;s no =C2=A0recipe.=C2=A0 I suppose we define a recipe for =
this out-of-tree sources.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Still, if we could yank out embed=
ded openssl easily, that would be the best.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_3410379150917000727divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank"=
>ross.burton@intel.com</a>&gt;<br>
<b>Sent:</b> Saturday, July 7, 2018 3:41 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</font>
<div>=C2=A0</div>
</div>
<div class=3D"m_3410379150917000727BodyFragment"><font size=3D"2"><span sty=
le=3D"font-size:11pt">
<div class=3D"m_3410379150917000727PlainText"><div><div class=3D"h5">Presum=
ably you&#39;ve a recipe for the vendor openssl.=C2=A0 If it has the same<b=
r>
name but is a different version then just set PREFERRED_VERSION.=C2=A0 If<b=
r>
it has a different name too, it should PROVIDE openssl and you can<br>
just set PREFERRED_PROVIDER.<br>
<br>
If it doesn&#39;t do either of those things, then it is broken.<br>
<br>
Ross<br>
<br>
On 6 July 2018 at 23:06, Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotma=
il.com" target=3D"_blank">rksyeung@hotmail.com</a>&gt; wrote:<br>
&gt; I&#39;ve changed the subject heading to make it more specific to our p=
roblem.<br>
&gt; Hopefully this generates some responses.<br>
&gt;<br>
&gt;<br>
&gt; It has been blocking us for close to one week now.=C2=A0 We want to us=
e our 3rd<br>
&gt; party vendor openssl, not the one that comes with the source.=C2=A0 Ap=
parently,<br>
&gt; even with &quot;minimal&quot; instead of &quot;base&quot; or &quot;sat=
o&quot; cannot exclude it.<br>
&gt;<br>
&gt;<br>
&gt; Any idea [e.g. how do we systematically find out how it&#39;s included=
 now, and<br>
&gt; possibly what other packages/recipes we may also need to remove due to=
<br>
&gt; dependency]?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ______________________________<wbr>__<br>
&gt; From: Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotmail.com" target=
=3D"_blank">rksyeung@hotmail.com</a>&gt;<br>
&gt; Sent: Monday, July 2, 2018 11:05 PM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt; Subject: How to remove a package from a build<br>
&gt;<br>
&gt;<br>
&gt; We&#39;ve our own non-yocto openssl that we want to use.=C2=A0 At the =
moment, we&#39;re<br>
&gt; using &quot;sato&quot; image, rather than &quot;minimal&quot; and incl=
udes its openssl that is<br>
&gt; out-of-date.=C2=A0 What is the best way to exclude it from our image (=
and from<br>
&gt; sysroots)?<br>
&gt;<br>
&gt;<br>
&gt; We have thought about two ideas -<br>
&gt;<br>
&gt;<br>
&gt; Use smaller image like core-image-base, or core-image-full-cmdline (bu=
t not<br>
&gt; -minimal that may remove too much functionality).<br>
&gt; Use INSTALL_IMAGE_remove +=3D &quot; openssl&quot;<br>
&gt;<br>
&gt;<br>
&gt; Would either one work?=C2=A0 Also, how do I follow the .bb files etc (=
e.g.<br>
&gt; starting from the one for sato) to trace down which sub-package includ=
es<br>
&gt; openssl?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"m_3410=
379150917000727LPlnk688081" class=3D"m_3410379150917000727OWAAutoLink" targ=
et=3D"_blank">
https://lists.yoctoproject.<wbr>org/listinfo/yocto</a>
</div></div><div id=3D"m_3410379150917000727LPBorder_GT_15310303524610.3933=
807486307961" style=3D"margin-bottom:20px;overflow:auto;width:100%;text-ind=
ent:0px">
<table id=3D"m_3410379150917000727LPContainer_15310303524580.18065774736671=
225" cellspacing=3D"0" style=3D"width:90%;background-color:rgb(255,255,255)=
;overflow:auto;padding-top:20px;padding-bottom:20px;margin-top:20px;border-=
top-width:1px;border-top-style:dotted;border-top-color:rgb(200,200,200);bor=
der-bottom-width:1px;border-bottom-style:dotted;border-bottom-color:rgb(200=
,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"m_3410379150917000727TextCell_15310303524590.8211319156256691" co=
lspan=3D"2" style=3D"vertical-align:top;padding:0px;display:table-cell">
<div id=3D"m_3410379150917000727LPRemovePreviewContainer_15310303524590.672=
6902240970273"></div>
<div id=3D"m_3410379150917000727LPTitle_15310303524590.5921623636573192" st=
yle=3D"color:rgb(0,120,215);font-weight:normal;font-size:21px;font-family:w=
f_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&quo=
t;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;line-height:2=
1px">
<a id=3D"m_3410379150917000727LPUrlAnchor_15310303524600.5137109933851659" =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"text-decora=
tion:none" target=3D"_blank">yocto Info Page</a></div>
<div id=3D"m_3410379150917000727LPMetadata_15310303524600.8558606096493264"=
 style=3D"margin:10px 0px 16px;color:rgb(102,102,102);font-weight:normal;fo=
nt-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Taho=
ma,Arial,sans-serif;font-size:14px;line-height:14px">
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a></div>
<div id=3D"m_3410379150917000727LPDescription_15310303524600.40468227850496=
62" style=3D"display:block;color:rgb(102,102,102);font-weight:normal;font-f=
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

--000000000000cb73710570786163--
