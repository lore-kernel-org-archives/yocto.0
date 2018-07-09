Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5B0EE00E3C; Mon,  9 Jul 2018 02:03:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AF24E00812
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 02:03:08 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id 13-v6so34517685ois.1
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 02:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HNfp4Lu9WnebgeOKRzXlGMsrHWn2PVZIyShRsj/dEMQ=;
	b=QhNA/D3sSiI/Za9oSGJPMghAOXgtiXz6PrVBrx8hiDJxUwb5NST4gVMvveLh1iE2K1
	aZU8zvVujul3Xe4VA+CtmO5ZX02XzTyydqL8M0dQXR1wGVHbW3wwPzPVbUhHoEFGaaxz
	Du4IHhmXKyH3E9W/kPKcA2Ayiexd+FglGedM4ufPPJ1zbL+xEAM9fi3n59fD9CSjRlkz
	0EB5WUBeLsP5UMWXfmnoE1ppWTOZLVIH+Q2n6rCSvdLVQI2lpS4aM+Y68W6zkyik0ufL
	bl5psAJw4udWgcY7t/Udbn340Pf7YCKk1+lDgJTqgEeXcQA8TBll9XSJuJryoH4IuFxk
	WXUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HNfp4Lu9WnebgeOKRzXlGMsrHWn2PVZIyShRsj/dEMQ=;
	b=FhNnj3crTCe3VQ71zkf+ZpJO0mN8mOfSspTfPxuTsW1V/8zaZdS/JMfOzqWuYI9Hps
	j7dnQchfMOdtp8WN8cQ6ai7h7VYwsBaRG+XogmzqBu9wz9NqqzvvuzY2RKdFhvyTfIQN
	6pLvmzr/t7kmCj0Y64CgehWrkFruO3BtlxsnYqWFVvF4EihBjp5qbhEu6D7wU01OlbhO
	XQ6lKRXOGxnCdEpV/fmaLuKQXOAFRzzLLw8dnh6UDggzPiTmQg+GL5vmKmLZO3zrmGzH
	PQOTyxEp3hOs0dmZYrqsC4OUbGL7A1Y83fUgisg7QzQZnkQViu9xyXLWTgDjLoFadJZQ
	GNiA==
X-Gm-Message-State: APt69E1dqjh5f1/HeFjeloUZipkKnTZfbOZOtBOTJYxibjd+PdF7XKab
	IHrHhxCfUZJltgvIherBDIije6HF4AOd2fSskKwVVg==
X-Google-Smtp-Source: AAOMgpfwOwSsi9AndHifZvNir+QEGCeRUEgY0HOPrgZ8gaxokxEarjUGy5ay8nAk/UrB8CnINKo2AUQWY9JvLVZMae4=
X-Received: by 2002:aca:5f56:: with SMTP id
	t83-v6mr23400570oib.115.1531126988553; 
	Mon, 09 Jul 2018 02:03:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 02:02:47 -0700 (PDT)
In-Reply-To: <MWHPR19MB118343CB9AD0BA7EBF868E3CC5440@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LbjTeL3HTQXztNyxEaA78hoA1cBSiUAQBom7r8sDDE7kQ@mail.gmail.com>
	<MWHPR19MB118343CB9AD0BA7EBF868E3CC5440@MWHPR19MB1183.namprd19.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Jul 2018 10:02:47 +0100
Message-ID: <CAJTo0LaJQ3U-WxonTXWNQErGV+=oR_SNShQjjLX59EVkePv5cg@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Any Linux/Yocto Image Installer (for target system)
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
X-List-Received-Date: Mon, 09 Jul 2018 09:03:09 -0000
Content-Type: multipart/alternative; boundary="00000000000042515f05708d4806"

--00000000000042515f05708d4806
Content-Type: text/plain; charset="UTF-8"

The relevant recipes are in meta/recipes-core/initrdscripts/.

Ross

On 9 July 2018 at 04:10, Raymond Yeung <rksyeung@hotmail.com> wrote:

> This brings up the next logical question - where is the installer?  I'd
> already done a grep and looked into the volume of output.  You could ask
> why don't I read the code.  Yes, only if I know what I'm reading is the
> "correct" file/code.  Otherwise, I could be spending a lot of time reading
> a lot of unrelated codes.
>
>
> If I did "dd" of .hddimg to SSD, there's only 1 partition.  If I could
> locate where the logic is that generates this .hddimg file, perhaps I could
> figure out how it creates its single partition, and perhaps add one or more
> partitions to it as well.
>
>
> ------------------------------
> *From:* Burton, Ross <ross.burton@intel.com>
> *Sent:* Saturday, July 7, 2018 3:39 PM
> *To:* Raymond Yeung
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Any Linux/Yocto Image Installer (for target system)
>
> The easiest thing would be to edit the installer script that goes into
> the hddimg to create your extra partitions and whatever else you want
> done.
>
> Ross
>
> On 6 July 2018 at 22:52, Raymond Yeung <rksyeung@hotmail.com> wrote:
> > Is there any installer that I could download along with the .hddimg (or
> > .iso) image to the RAM, invoke the installer, so we could have a bootable
> > image installed on a SSD?
> >
> >
> > History:
> >
> > I can already create USB live image with dd and .hddimg.  I could also dd
> > the .hddimg onto SSD and make it bootable.  The problem is that I need
> > multiple partitions on my 250MB SSD, some reserved for other purposes.
> >
> >
> > I find that when booting up with USB running SysLinux, I could install
> GRUB,
> > vmlinuz, along with boot.img and core.img under /boot directory, and the
> > rootFs under root (i.e. '/') directory.  That's 4 partitions.  I believe
> I
> > could resize the largest partition after installation to do what I want.
> >
> >
> > Is there a way to do this manually, possibly with a utility or a shell
> > script?
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

--00000000000042515f05708d4806
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The relevant recipes are in=C2=A0meta/recipes-core/in=
itrdscripts/.</div><div><br></div><div>Ross</div></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On 9 July 2018 at 04:10, Raymond Yeun=
g <span dir=3D"ltr">&lt;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_=
blank">rksyeung@hotmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">




<div dir=3D"ltr">
<div id=3D"m_-5451635003736426467divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">This brings up the next logical q=
uestion - where is the installer?=C2=A0 I&#39;d already done a grep and loo=
ked into the volume of output.=C2=A0 You could ask why don&#39;t I read the=
 code.=C2=A0 Yes, only if I know what I&#39;m reading is the
 &quot;correct&quot; file/code.=C2=A0 Otherwise, I could be spending a lot =
of time reading a lot of unrelated codes.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">If I did &quot;dd&quot; of .hddim=
g to SSD, there&#39;s only 1 partition.=C2=A0 If I could locate where the l=
ogic is that generates this .hddimg file, perhaps I could figure out how it=
 creates its single partition, and perhaps add one or
 more partitions to it as well.</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-5451635003736426467divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank=
">ross.burton@intel.com</a>&gt;<br>
<b>Sent:</b> Saturday, July 7, 2018 3:39 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Any Linux/Yocto Image Installer (for target sys=
tem)</font>
<div>=C2=A0</div>
</div>
<div class=3D"m_-5451635003736426467BodyFragment"><font size=3D"2"><span st=
yle=3D"font-size:11pt">
<div class=3D"m_-5451635003736426467PlainText"><div><div class=3D"h5">The e=
asiest thing would be to edit the installer script that goes into<br>
the hddimg to create your extra partitions and whatever else you want<br>
done.<br>
<br>
Ross<br>
<br>
On 6 July 2018 at 22:52, Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotma=
il.com" target=3D"_blank">rksyeung@hotmail.com</a>&gt; wrote:<br>
&gt; Is there any installer that I could download along with the .hddimg (o=
r<br>
&gt; .iso) image to the RAM, invoke the installer, so we could have a boota=
ble<br>
&gt; image installed on a SSD?<br>
&gt;<br>
&gt;<br>
&gt; History:<br>
&gt;<br>
&gt; I can already create USB live image with dd and .hddimg.=C2=A0 I could=
 also dd<br>
&gt; the .hddimg onto SSD and make it bootable.=C2=A0 The problem is that I=
 need<br>
&gt; multiple partitions on my 250MB SSD, some reserved for other purposes.=
<br>
&gt;<br>
&gt;<br>
&gt; I find that when booting up with USB running SysLinux, I could install=
 GRUB,<br>
&gt; vmlinuz, along with boot.img and core.img under /boot directory, and t=
he<br>
&gt; rootFs under root (i.e. &#39;/&#39;) directory.=C2=A0 That&#39;s 4 par=
titions.=C2=A0 I believe I<br>
&gt; could resize the largest partition after installation to do what I wan=
t.<br>
&gt;<br>
&gt;<br>
&gt; Is there a way to do this manually, possibly with a utility or a shell=
<br>
&gt; script?<br>
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
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"m_-545=
1635003736426467LPlnk822133" class=3D"m_-5451635003736426467OWAAutoLink" ta=
rget=3D"_blank">
https://lists.yoctoproject.<wbr>org/listinfo/yocto</a>
</div></div><div id=3D"m_-5451635003736426467LPBorder_GT_15311056702970.973=
0854530905975" style=3D"margin-bottom:20px;overflow:auto;width:100%;text-in=
dent:0px">
<table id=3D"m_-5451635003736426467LPContainer_15311056702930.2617746585191=
326" cellspacing=3D"0" style=3D"width:90%;background-color:rgb(255,255,255)=
;overflow:auto;padding-top:20px;padding-bottom:20px;margin-top:20px;border-=
top-width:1px;border-top-style:dotted;border-top-color:rgb(200,200,200);bor=
der-bottom-width:1px;border-bottom-style:dotted;border-bottom-color:rgb(200=
,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"m_-5451635003736426467TextCell_15311056702940.734335358912997" co=
lspan=3D"2" style=3D"vertical-align:top;padding:0px;display:table-cell">
<div id=3D"m_-5451635003736426467LPRemovePreviewContainer_15311056702940.51=
36939606474453"></div>
<div id=3D"m_-5451635003736426467LPTitle_15311056702940.31575185467581424" =
style=3D"color:rgb(0,120,215);font-weight:normal;font-size:21px;font-family=
:wf_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&q=
uot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;line-height=
:21px">
<a id=3D"m_-5451635003736426467LPUrlAnchor_15311056702950.9360655403668678"=
 href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"text-decor=
ation:none" target=3D"_blank">yocto Info Page</a></div>
<div id=3D"m_-5451635003736426467LPMetadata_15311056702950.0251327683146067=
57" style=3D"margin:10px 0px 16px;color:rgb(102,102,102);font-weight:normal=
;font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,T=
ahoma,Arial,sans-serif;font-size:14px;line-height:14px">
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a></div>
<div id=3D"m_-5451635003736426467LPDescription_15311056702960.0556513618490=
63385" style=3D"display:block;color:rgb(102,102,102);font-weight:normal;fon=
t-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahom=
a,Arial,sans-serif;font-size:14px;line-height:20px;max-height:100px;overflo=
w:hidden">
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

--00000000000042515f05708d4806--
