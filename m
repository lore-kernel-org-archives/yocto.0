Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C12FE00AD8; Wed, 22 Jun 2016 13:16:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18A98E00A6D
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 13:16:43 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id f6so47661858ith.0
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 13:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O8UwBf7Qz/tqAhPNypJ7x88bx5fIOBMYP/foTVwCGws=;
	b=0PgH9qrqESzGKpskyxYbeGTAavkTqX91uNXDxbI4kmFxJAGQliWgqNk5MDe0WSk4/y
	gM6bSJOP+q+FaUDelulDh5qCkMZVMQrpUEaE9bZB1bRhTp9YuvOl9ErWIVj7oUVOvAcj
	R1kU4qPqQz9vBYtTkWY/xGjlLZUj4xC+G6cr6Jd/SR1059zjYMjyKWGolmRnlIDGKcqo
	BAMU8SHjGHjoSqNmwP35akN4aKG/CrqyLEKHAy0irF3FiSCtU1nhcM8eOfayih6HuHDY
	Gg+ev7M+1yklrJ+PDF5My+sYrYHaCOvQIqmN1T2WxGqWaPy5zMcgXk0Hi5t65JstgfKr
	G2Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O8UwBf7Qz/tqAhPNypJ7x88bx5fIOBMYP/foTVwCGws=;
	b=Nc5A4pHC3YGRtws3N6oNGG21elbAe256wJyUoxrSjoa/+m9BCPl4DxVoPEJaIseLMQ
	1LoIl1OAgkk4THvDYSwrDtte+HdmjA2Qma7/yofUE4RRUezhmbAu1dDGjIDCGa0KO5AY
	BP2kJwWhz7axnCJiqXAnUpX0/9Z1YEQYrErj7DgHFT0uO9VakycUXx70aBviSpT7x6WA
	PrcgPD4z0oklsumSJ1YD0rCkm4fDHORNwglFHr1vx9MDpFbrgQc0NDRetmrTtK6zVwDh
	ejRfbI8zUbBtmfj9nwPMJ/gIRSCB8Iq0t053yYW1m7en198t1OtIbvGnibdTxXlROjwZ
	Vgtg==
X-Gm-Message-State: ALyK8tL/gyiSzsX0W95FK+vorV+4nEQoN9fhgL8l2T5wmVpOy/7l/uoRR/U7JIL3rFn9Aks/YEt9kXrz7XXnCRMD
X-Received: by 10.36.48.80 with SMTP id q77mr16718941itq.83.1466626603401;
	Wed, 22 Jun 2016 13:16:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 22 Jun 2016 13:16:24 -0700 (PDT)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA600F04@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA600CE1@RCHEXMBP1.fnc.net.local>
	<CAJTo0LYWdLr=uBy_vZ9GeiNQhxjRZbYubNSCzfOd3dFFDfJ-og@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600E27@RCHEXMBP1.fnc.net.local>
	<CAJTo0La0PcLZtTbozgspB9nr6O81aq5rpjcHekiCQ2kZWYbAtg@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600F04@RCHEXMBP1.fnc.net.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 Jun 2016 21:16:24 +0100
Message-ID: <CAJTo0LYBMWTkE4HzLxgwZf_ewkEOZeVnMJ_EOqQ6NypwSJro-A@mail.gmail.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error applying patch - openvswitch
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
X-List-Received-Date: Wed, 22 Jun 2016 20:16:48 -0000
Content-Type: multipart/alternative; boundary=001a11c007d8b7086d0535e39d92

--001a11c007d8b7086d0535e39d92
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Without sharing your recipe or the patch, nobody can help.  Check that the
SRC_URI correctly contains the patch, that it ends with .patch or .diff to
be applied as a patch automatically, and verify that you actually rebuilt
the recipe.

Ross

On 22 June 2016 at 21:07, Rajasekaran, Monica <
Monica.Rajasekaran@us.fujitsu.com> wrote:

> The folders in tmp/work on my source machine don=E2=80=99t have today=E2=
=80=99s date as
> last modified.
>
>
>
> Hmm=E2=80=A6 I don=E2=80=99t know what might be the mistake with applying=
 the patch.
>
>
>
> *Thanks,*
>
> *Monica *
>
>
>
> *From:* Burton, Ross [mailto:ross.burton@intel.com]
> *Sent:* Wednesday, June 22, 2016 2:18 PM
> *To:* Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Error applying patch - openvswitch
>
>
>
>
>
> On 22 June 2016 at 19:25, Rajasekaran, Monica <
> Monica.Rajasekaran@us.fujitsu.com> wrote:
>
> After applying the patches, I brought up my openvswitch which works
> correctly alongside the controller but I don=E2=80=99t see any of the pri=
nt
> statements I added to view the changes inside. Is there a way to check th=
e
> updated source code with my patch in the target machine ?
>
>
> Not really, but looking in the work directory (tmp/work) will tell you if
> it got applied.
>
>
>
> Ross
>

--001a11c007d8b7086d0535e39d92
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Without sharing your recipe or the patch, nobody can help.=
=C2=A0 Check that the SRC_URI correctly contains the patch, that it ends wi=
th .patch or .diff to be applied as a patch automatically, and verify that =
you actually rebuilt the recipe.<div><br></div><div>Ross</div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On 22 June 2016 at 21:07=
, Rajasekaran, Monica <span dir=3D"ltr">&lt;<a href=3D"mailto:Monica.Rajase=
karan@us.fujitsu.com" target=3D"_blank">Monica.Rajasekaran@us.fujitsu.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">The folders in tmp/work on my source =
machine don=E2=80=99t have today=E2=80=99s date as last modified.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Hmm=E2=80=A6 I don=E2=80=99t know wha=
t might be the mistake with applying the patch.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:#1f497d">Thanks,<u></u><u></u></span></i></=
p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:#1f497d">Monica
<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Burton, Ross [mailto:<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>]
<br>
<b>Sent:</b> Wednesday, June 22, 2016 2:18 PM<span class=3D""><br>
<b>To:</b> Rajasekaran, Monica &lt;<a href=3D"mailto:Monica.Rajasekaran@us.=
fujitsu.com" target=3D"_blank">Monica.Rajasekaran@us.fujitsu.com</a>&gt;<br=
>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Error applying patch - openvswitch<u></u><u></u=
></span></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 22 June 2016 at 19:25, Rajasekaran, Monica &lt;<a=
 href=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" target=3D"_blank">Monica=
.Rajasekaran@us.fujitsu.com</a>&gt; wrote:<u></u><u></u></p><div><div class=
=3D"h5">
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">After applying the patches, I brought=
 up my openvswitch which works correctly alongside the controller
 but I don=E2=80=99t see any of the print statements I added to view the ch=
anges inside. Is there a way to check the updated source code with my patch=
 in the target machine ?</span><u></u><u></u></p>
</blockquote>
</div></div></div><div><div class=3D"h5">
<p class=3D"MsoNormal"><br>
Not really, but looking in the work directory (tmp/work) will tell you if i=
t got applied.<u></u><u></u></p>
</div></div></div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ross<u></u><u></u></p>
</div>
</div>
</div>
</div>

</blockquote></div><br></div>

--001a11c007d8b7086d0535e39d92--
