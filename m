Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A28EE00852; Thu, 28 Jan 2016 10:36:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87FE7E0079A
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:36:35 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id mw1so18271294igb.1
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=wx4oUYiJqWuNHGXIX4Z0W8u9FkbZYb48EHbdrrB3PN8=;
	b=zwTLVWK3JPvqnYSxVV2NyU+V0OgiB1aMWipdJJCYhjTvFz/gLlpN5+OKWgmAvO1ZEG
	OAdOYRlQT8zkwxVDiwFOzelBXiT6ddVx3O52mr91YojyRJ64eydm+DtGMT0iMErWy4NG
	zLgQkAiotr3bG5jNucN9PhxPkJt5q6Vqd/NSiLvaljvi9evwSfHLlF5HAQH4B0/Xtver
	IHUYAOZaPBJ+nRelMfhDyXJSzMiY7vGOjfE5ob1tfLv2xeQiFAyVjrZjNv7C947zF2WT
	FRmOuQd9xPkogOjqS/0hH20YjcL5y7UCVbt6f57GpefZ6ZChHrIXMzH3k1UOvJKm1nDX
	jB9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=wx4oUYiJqWuNHGXIX4Z0W8u9FkbZYb48EHbdrrB3PN8=;
	b=MVMGOKtzDss5b9kgqhdKZv1evUGMX2VN+vE9F1TZmj4DQ0Xisn+4TG/PQ54eWILNkp
	FIiTFsqnMaw+5WBLL51DTWm/Xtk7TqShUZDXlmxtbgofvb/56vGUjNt0+tytQPErVYS4
	1EWyJNFiQv73LGGjHZqFQBSHG8yNAjEg8Zqgai+3coq5vT/no24l432rMNuZGdgUWVmX
	INaDgkMUQ5BtcP81uVdrVNusH4eEFQU8cy6qJ+mkeeHdfj/4FZBXkazBTaaIbpS9mgVS
	Shgjd3Y/5BYOHTAKcucgIHy3GFSAbUzswiogGlSIXnoI/yr7073tzE+mjbaTCT+EYxMn
	Orcw==
X-Gm-Message-State: AG10YOQltxUrq6gCaNhMjFWWXUVhtdNXLLrFCIteUiAca699FAS+XjSRsykzKUgrr671T7SaKghBW/lo1STL0g==
MIME-Version: 1.0
X-Received: by 10.50.79.196 with SMTP id l4mr5179188igx.11.1454006194634; Thu,
	28 Jan 2016 10:36:34 -0800 (PST)
Received: by 10.107.16.74 with HTTP; Thu, 28 Jan 2016 10:36:34 -0800 (PST)
Received: by 10.107.16.74 with HTTP; Thu, 28 Jan 2016 10:36:34 -0800 (PST)
In-Reply-To: <37AEF0C9-A6BC-41F4-A46D-844564AE3815@nathan.to>
References: <45932BCC-6F6D-4F6B-841A-66F81E442828@nathan.to>
	<CAMKF1sosva3Xc-3OAD6b-Vbfg6Ng0OmGEXST6UZDcvg1Hax8TQ@mail.gmail.com>
	<37AEF0C9-A6BC-41F4-A46D-844564AE3815@nathan.to>
Date: Thu, 28 Jan 2016 13:36:34 -0500
Message-ID: <CAMKF1sqcx439Me0qHPTPrZQexdbrRFT1i5JScKT2cntTzQ7HFA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: yocto@yoctoproject.org
Subject: Re: Qt5 on qemux86-64 core-image-full-cmdline
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
X-List-Received-Date: Thu, 28 Jan 2016 18:36:39 -0000
Content-Type: multipart/alternative; boundary=089e01183f48bb8ca5052a693239

--089e01183f48bb8ca5052a693239
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Clone the repo and add the location to BBLAYERS in conf/bblayers.conf
On Jan 28, 2016 1:33 PM, "Nathan Sowatskey" <nathan@nathan.to> wrote:

> Many thanks. I just need to figure out how to get the layers onto the
> Build Appliance now =E2=80=A6
>
> Regards
>
> Nathan
>
> > On 28 Jan 2016, at 19:30, Khem Raj <raj.khem@gmail.com> wrote:
> >
> >
> > On Jan 28, 2016 1:24 PM, "Nathan Sowatskey" <nathan@nathan.to> wrote:
> > >
> > > Hi
> > >
> > > I am using the Yocto Build Appliance to build an image using a profil=
e
> of qemux86-64, and recipe of core-image-full-cmdline.
> > >
> > > The application I need to run on that image has a dependency on Qt5
> libs.
> > >
> > > It seems that only Qt4 libs are available in the packages on the buil=
d
> appliance.
> > >
> > > Can anyone help me with adding the Qt5 packages please?
> >
> > Use meta-qt5 layer
> > Always search layer index for additional recipes at
> layers.openembedded.org
> > >
> > > Many thanks
> > >
> > > Nathan
> > >
> > > =E2=80=94
> > > Nathan John Sowatskey
> > > Consulting Engineer - Programmable Infrastructure, DevOps, IoT and SD=
N
> > > nathan@nathan.to
> > > www.linkedin.com/in/nathandevops
> > > XMPP: nathandotto@im.koderoot.net
> > > Google: nathanjohnsowatskey@gmail.com
> > > Skype: nathan_sowatskey
> > > Twitter: NathanDotTo
> > > GitHub: https://github.com/DevOps4Networks
> > > http://www.kipling.org.uk/poems_if.htm
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e01183f48bb8ca5052a693239
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Clone the repo and add the location to BBLAYERS in conf/bbla=
yers.conf</p>
<div class=3D"gmail_quote">On Jan 28, 2016 1:33 PM, &quot;Nathan Sowatskey&=
quot; &lt;<a href=3D"mailto:nathan@nathan.to">nathan@nathan.to</a>&gt; wrot=
e:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Many thanks. I ju=
st need to figure out how to get the layers onto the Build Appliance now =
=E2=80=A6<br>
<br>
Regards<br>
<br>
Nathan<br>
<br>
&gt; On 28 Jan 2016, at 19:30, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmai=
l.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; On Jan 28, 2016 1:24 PM, &quot;Nathan Sowatskey&quot; &lt;<a href=3D"m=
ailto:nathan@nathan.to">nathan@nathan.to</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi<br>
&gt; &gt;<br>
&gt; &gt; I am using the Yocto Build Appliance to build an image using a pr=
ofile of qemux86-64, and recipe of core-image-full-cmdline.<br>
&gt; &gt;<br>
&gt; &gt; The application I need to run on that image has a dependency on Q=
t5 libs.<br>
&gt; &gt;<br>
&gt; &gt; It seems that only Qt4 libs are available in the packages on the =
build appliance.<br>
&gt; &gt;<br>
&gt; &gt; Can anyone help me with adding the Qt5 packages please?<br>
&gt;<br>
&gt; Use meta-qt5 layer<br>
&gt; Always search layer index for additional recipes at <a href=3D"http://=
layers.openembedded.org" rel=3D"noreferrer" target=3D"_blank">layers.openem=
bedded.org</a><br>
&gt; &gt;<br>
&gt; &gt; Many thanks<br>
&gt; &gt;<br>
&gt; &gt; Nathan<br>
&gt; &gt;<br>
&gt; &gt; =E2=80=94<br>
&gt; &gt; Nathan John Sowatskey<br>
&gt; &gt; Consulting Engineer - Programmable Infrastructure, DevOps, IoT an=
d SDN<br>
&gt; &gt; <a href=3D"mailto:nathan@nathan.to">nathan@nathan.to</a><br>
&gt; &gt; <a href=3D"http://www.linkedin.com/in/nathandevops" rel=3D"norefe=
rrer" target=3D"_blank">www.linkedin.com/in/nathandevops</a><br>
&gt; &gt; XMPP: <a href=3D"mailto:nathandotto@im.koderoot.net">nathandotto@=
im.koderoot.net</a><br>
&gt; &gt; Google: <a href=3D"mailto:nathanjohnsowatskey@gmail.com">nathanjo=
hnsowatskey@gmail.com</a><br>
&gt; &gt; Skype: nathan_sowatskey<br>
&gt; &gt; Twitter: NathanDotTo<br>
&gt; &gt; GitHub: <a href=3D"https://github.com/DevOps4Networks" rel=3D"nor=
eferrer" target=3D"_blank">https://github.com/DevOps4Networks</a><br>
&gt; &gt; <a href=3D"http://www.kipling.org.uk/poems_if.htm" rel=3D"norefer=
rer" target=3D"_blank">http://www.kipling.org.uk/poems_if.htm</a><br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br>
<br>
</blockquote></div>

--089e01183f48bb8ca5052a693239--
