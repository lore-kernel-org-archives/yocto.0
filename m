Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2285BE00B5A; Wed, 13 Jan 2016 09:48:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DA2CE008EE
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:48:12 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id q21so426166085iod.0
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tanmic-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=SlvM4ecvJlyBYceAXBzK7gANa7iTF5jsT0vtVDP7b2o=;
	b=YDpF/4INYuFmQDpERvHlITY89fuTHbKK+mXoTef02I6guzlxdZyukAJbXI7eiweqZE
	r1VYPrYTkQlt0biFy5WMsko6NZ+2fhh84H1L304/X8g1dl0zMWgVmoUYF3Ti1TN4tmJG
	TmAP0DBWPvZIbYCMCE6ny6A4tWbWLLaxLo+VEQ63q4dv8VrL/+B1kfMP4/9MoNhZEhm5
	/OxRP/AnNoCoyvYPzzsBCBDeGjbTd38jRxi83LYT/3DoJrjBSl7N3G/+pNaKKMez08Cz
	V8A6MPGuXdb3XmDI64LIdmvQGK6lFZXqazqMU9esTMgg0ltMA7pO1dJH3gcqcEmjn7y0
	pnvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=SlvM4ecvJlyBYceAXBzK7gANa7iTF5jsT0vtVDP7b2o=;
	b=MP6U2cI0VJpXahcNYRq46SFru/hiZeNUoJlAdEEA9Exf1CiCnqpyaUGb3yb6DeG1Vb
	dFLeNBg+ozIpSersDlk/92maHxvwLC3J4bg+N9mhKoQHtZCR1SNTwXj2tLIlrIzYuhX7
	5ZqkZHTRC6Sagz23bVbGmNcCD2AaGrRBXltJNiGT8xdx5AFMqV+0dH2parVOfgvxgTOq
	u30FhPp01rNY1Yg8Uevuicfq1OaI94LbAgk7m+QBPK/1IeHc0LPpTTaxOeWFb8MfZ2NT
	mzqEUoL/5Ry5TTcYqZk9pOCDb1TeWpcWSROjZlRqYOe63qoTXhHm6399npODY1yBgPSE
	5NDQ==
X-Gm-Message-State: ALoCoQmzxGEpSTsZAOE64NhSAJDg2NdtuYsVzN/Qr4QU1OkxK7eDciME+rP5bXq+CuxKg5VN38rgGKV767J24Cqax1mh4tRP6w==
MIME-Version: 1.0
X-Received: by 10.107.4.213 with SMTP id 204mr146256ioe.134.1452707291982;
	Wed, 13 Jan 2016 09:48:11 -0800 (PST)
Sender: sarayu@tanmic.co.in
Received: by 10.107.184.196 with HTTP; Wed, 13 Jan 2016 09:48:11 -0800 (PST)
In-Reply-To: <1F18FD34-E817-49BD-8AF0-3F8656BB33D5@gmail.com>
References: <CAF5S8SOmOLVR9gU_=WgxW1fPZNxUyyEqO5j_mH5xsFnr=Ex-Cg@mail.gmail.com>
	<CAMKF1srH4wXuEohCrj3_hxK6=uO-UX0ETjtpnGsMdrc0fUrREg@mail.gmail.com>
	<CAF5S8SOXpLnALCyr-k53HDgfRSnVWtPXKy32sfK9p66Vx+uJeQ@mail.gmail.com>
	<CAF5S8SOX78=nAGHhQzxnNFoPP8GgMdrEQDvUrnQH97+CPzkqrw@mail.gmail.com>
	<1F18FD34-E817-49BD-8AF0-3F8656BB33D5@gmail.com>
Date: Wed, 13 Jan 2016 23:18:11 +0530
X-Google-Sender-Auth: SQcQzxNYqmuXScDLgg1d-zrN9uQ
Message-ID: <CAF5S8SM_EQm1nHx9s6qou2sksihhQ9yJCEaaSnRa42PYu_V3CQ@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build jffs2 rootfs image in freescale community build
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
X-List-Received-Date: Wed, 13 Jan 2016 17:48:15 -0000
Content-Type: multipart/alternative; boundary=001a113ee6701a1e1605293ac6f5

--001a113ee6701a1e1605293ac6f5
Content-Type: text/plain; charset=UTF-8

hi ,

I do see the the linux-dtb.inc included in the linux-ls1 recipe but when i
build the code using

bitbake -c compile -f linux-ls1 it doesnot re-generate the dtb file in the
deploy/images/ls1021atwr folder .

Also when i try to rebuild the images like core-image-minimal or core-image
base it does not rebuild any of the images .

How can i force it to rebuild the dtb image ?

Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Wed, Jan 13, 2016 at 11:11 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Jan 13, 2016, at 4:03 AM, Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
> wrote:
>
> hi ,
>
> On similar lines i want to rebuild my linux dtb file as i have made some
> changes in my dts file . How can i force it to regenerate the same ?
>
> For example , I use the command bitbake -c compile -f linux-ls1 to
> regenerate the uImage .
>
> Is there is similar command for the linux-dtb generation ?
>
>
> if your kernel recipe is including linux-dtb.inc then it should
> automatically append device tree related activities into standard tasks.
>
>
> Thanks in advance for your help.
>
> Thanks and Regards,
> Sarayu K S
> Tech Lead
> Zaikenn Technologies
>
> On Tue, Jan 12, 2016 at 3:17 PM, Sarayu Krishna Sivanandam <
> sarayu@zaikenn.com> wrote:
>
>> That worked . Thanks !!
>>
>> Thanks and Regards,
>> Sarayu K S
>> Tech Lead
>> Zaikenn Technologies
>>
>> On Tue, Jan 12, 2016 at 2:12 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>> On Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Sivanandam
>>> <sarayu@zaikenn.com> wrote:
>>> > Hi all ,
>>> >
>>> > I was initially using the QorIQ-SDK-V1.8 SDK and was using the command
>>> > "bitbake corre-image-full " to generate the full images including the
>>> uboot
>>> > , the jffs2 filesystem etc as shown below ,
>>> >
>>> > -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46
>>> > fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2
>>> >
>>> >
>>> > Hoe ever now i have moved to the fsl-community-bsp and want to
>>> generate the
>>> > full images . I am uisng the command "bitbake
>>> core-image-full-cmdline"  as
>>> > the "core-image-full " command was not available . But it still did not
>>> > generate the individual filesystem types . It generated a filesystem
>>> file
>>> > like the below .
>>> >
>>> > -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12
>>> > core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz
>>> >
>>> >
>>> >  Can you please let me know how to generate the jffs2 image in my
>>> community
>>> > bsp ? Please let me know what i am missing here .
>>>
>>> Add IMAGE_FSTYPES += "jffs2" in your local.conf
>>>
>>> >
>>> >
>>> > Thanks in advance for your help.
>>> >
>>> > Thanks and Regards,
>>> > Sarayu K S
>>> > Tech Lead
>>> > Zaikenn Technologies
>>> >
>>> > --
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>>> >
>>>
>>
>>
>
>

--001a113ee6701a1e1605293ac6f5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">hi ,=C2=A0</div><div class=3D"gmail_default" style=3D"fon=
t-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:comic sans ms,sans-serif">I do see the the linux-dtb.in=
c included in the linux-ls1 recipe but when i build the code using=C2=A0</d=
iv><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-ser=
if"><br></div><div class=3D"gmail_default" style=3D"font-family:comic sans =
ms,sans-serif">bitbake -c compile -f linux-ls1 it doesnot re-generate the d=
tb file in the deploy/images/ls1021atwr folder .=C2=A0</div><div class=3D"g=
mail_default" style=3D"font-family:comic sans ms,sans-serif"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">Als=
o when i try to rebuild the images like core-image-minimal or core-image ba=
se it does not rebuild any of the images .=C2=A0</div><div class=3D"gmail_d=
efault" style=3D"font-family:comic sans ms,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">How can i=
 force it to rebuild the dtb image ?</div></div><div class=3D"gmail_extra">=
<br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div=
><div dir=3D"ltr"><font face=3D"comic sans ms, sans-serif">Thanks and Regar=
ds,</font><div><font face=3D"comic sans ms, sans-serif">Sarayu K S=C2=A0</f=
ont></div><div><font face=3D"comic sans ms, sans-serif">Tech Lead=C2=A0</fo=
nt></div><div><font face=3D"comic sans ms, sans-serif">Zaikenn Technologies=
</font></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Jan 13, 2016 at 11:11 PM, Khem Raj <=
span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div style=3D"word-wrap:break-word"><br><div><span class=3D""><blockquote=
 type=3D"cite"><div>On Jan 13, 2016, at 4:03 AM, Sarayu Krishna Sivanandam =
&lt;<a href=3D"mailto:sarayu@zaikenn.com" target=3D"_blank">sarayu@zaikenn.=
com</a>&gt; wrote:</div><br><div><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-family:comic sans ms,sans-serif">hi ,=C2=A0</div><div cla=
ss=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-ser=
if">On similar lines i want to rebuild my linux dtb file as i have made som=
e changes in my dts file . How can i force it to regenerate the same ?</div=
><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif=
"><br></div><div class=3D"gmail_default" style=3D"font-family:comic sans ms=
,sans-serif">For example , I use the command bitbake -c compile -f linux-ls=
1 to regenerate the uImage .=C2=A0</div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:comic sans ms,sans-serif">Is there is similar co=
mmand for the linux-dtb generation ?</div></div></div></blockquote><div><br=
></div></span><div>if your kernel recipe is including linux-dtb.inc then it=
 should automatically append device tree related activities into standard t=
asks.</div><div><div class=3D"h5"><br><blockquote type=3D"cite"><div><div d=
ir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sans ms,=
sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:com=
ic sans ms,sans-serif">Thanks in advance for your help.</div></div><div cla=
ss=3D"gmail_extra"><br clear=3D"all"><div><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><font face=3D"comic sans ms, sans-serif">Thanks and Regards,</fo=
nt><div><font face=3D"comic sans ms, sans-serif">Sarayu K S=C2=A0</font></d=
iv><div><font face=3D"comic sans ms, sans-serif">Tech Lead=C2=A0</font></di=
v><div><font face=3D"comic sans ms, sans-serif">Zaikenn Technologies</font>=
</div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Jan 12, 2016 at 3:17 PM, Sarayu Kris=
hna Sivanandam <span dir=3D"ltr">&lt;<a href=3D"mailto:sarayu@zaikenn.com" =
target=3D"_blank">sarayu@zaikenn.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fo=
nt-family:comic sans ms,sans-serif">That worked . Thanks !!=C2=A0</div></di=
v><div class=3D"gmail_extra"><span><br clear=3D"all"><div><div><div dir=3D"=
ltr"><div><div dir=3D"ltr"><font face=3D"comic sans ms, sans-serif">Thanks =
and Regards,</font><div><font face=3D"comic sans ms, sans-serif">Sarayu K S=
=C2=A0</font></div><div><font face=3D"comic sans ms, sans-serif">Tech Lead=
=C2=A0</font></div><div><font face=3D"comic sans ms, sans-serif">Zaikenn Te=
chnologies</font></div></div></div></div></div></div>
<br></span><div><div><div class=3D"gmail_quote">On Tue, Jan 12, 2016 at 2:1=
2 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" =
target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><span>On Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Si=
vanandam<br>
&lt;<a href=3D"mailto:sarayu@zaikenn.com" target=3D"_blank">sarayu@zaikenn.=
com</a>&gt; wrote:<br>
&gt; Hi all ,<br>
&gt;<br>
&gt; I was initially using the QorIQ-SDK-V1.8 SDK and was using the command=
<br>
&gt; &quot;bitbake corre-image-full &quot; to generate the full images incl=
uding the uboot<br>
&gt; , the jffs2 filesystem etc as shown below ,<br>
&gt;<br>
&gt; -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46<br>
&gt; fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2<br>
&gt;<br>
&gt;<br>
&gt; Hoe ever now i have moved to the fsl-community-bsp and want to generat=
e the<br>
&gt; full images . I am uisng the command &quot;bitbake core-image-full-cmd=
line&quot;=C2=A0 as<br>
&gt; the &quot;core-image-full &quot; command was not available . But it st=
ill did not<br>
&gt; generate the individual filesystem types . It generated a filesystem f=
ile<br>
&gt; like the below .<br>
&gt;<br>
&gt; -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12<br>
&gt; core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 Can you please let me know how to generate the jffs2 image in my=
 community<br>
&gt; bsp ? Please let me know what i am missing here .<br>
<br>
</span>Add IMAGE_FSTYPES +=3D &quot;jffs2&quot; in your local.conf<br>
<div><div><br>
&gt;<br>
&gt;<br>
&gt; Thanks in advance for your help.<br>
&gt;<br>
&gt; Thanks and Regards,<br>
&gt; Sarayu K S<br>
&gt; Tech Lead<br>
&gt; Zaikenn Technologies<br>
&gt;<br>
</div></div><span><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div></div></div>
</blockquote></div><br></div>
</div></blockquote></div></div></div><br></div></blockquote></div><br></div=
>

--001a113ee6701a1e1605293ac6f5--
