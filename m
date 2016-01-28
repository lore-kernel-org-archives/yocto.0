Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8074FE00852; Thu, 28 Jan 2016 10:30:49 -0800 (PST)
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
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63B84E0079A
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:30:45 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id d63so46874055ioj.2
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=tb29NvBWpK2+/BWC/yceEfZwjQizL3q2masrJEJZjJA=;
	b=ToX4lKr5b+9Cqga8GzVi/TXMkkIY3s26H7jLT5umtA7spngUC6+cIvBNSrK5hufGLT
	Wx2MIGubTcn9bc0aUJX26C2NHwqNxT6ZuhRBW38n3SQCHStVJVYPbnvjfWbu5bERMSMQ
	0ozrMbZldZ/M0P13yRkBEvDgAbRPWl+TYxVLILSo6G52rCo4c8byNad21+lKXAnxzebh
	cSlTfKVnyM94JSjIAth957FD8gMzmAvGNsbIYrqnHysBZE/cJ2zScKY5T+8efK3qtXhI
	B7KDaxrYQQhrVY4bbUmmGetEs57odNj5uSuXvxC85QorqGPxQbyLZ/GEza7p7vFxjGYd
	nUFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=tb29NvBWpK2+/BWC/yceEfZwjQizL3q2masrJEJZjJA=;
	b=SQdKlaAaC7obrNF1jDYimkt6DtGkxRUhhbpP8dqWSZ2unDbzLBFHcWF09VMed0xiFM
	oD1Oi/cS33BRqgVCPMwpjnASlSg0imo/C5vu4J7J2N7VtgA/xVGPloO+/l65zjFapKeD
	Hjk9rh8Amy+CgdLV+AJQEh6TXFvNQoNPwU7Wrl2y//O2IjaCY+Igkstl2kd8h7HOSIGb
	lJYVtZ/6nRKOlhlayyk179shJJgMa1P69wo/xxH/2uNAFphss/l5NJRSpcWrXXSxXf//
	sMFIDcKaDpaj4+k+AtbTSn1uHgKqwLK7760y1K81HcVINuKTkdVehSNaL0R9qLBY45Xs
	XBZA==
X-Gm-Message-State: AG10YORn44LFRyUkDcMYKrkCOvjR46PBTdBxmCI2idizSOQ+RY8A93bRNGDqt3hF0lyfuxFIUAhpVdv+2VqYAQ==
MIME-Version: 1.0
X-Received: by 10.107.165.14 with SMTP id o14mr5177693ioe.49.1454005845417;
	Thu, 28 Jan 2016 10:30:45 -0800 (PST)
Received: by 10.107.16.74 with HTTP; Thu, 28 Jan 2016 10:30:43 -0800 (PST)
Received: by 10.107.16.74 with HTTP; Thu, 28 Jan 2016 10:30:43 -0800 (PST)
In-Reply-To: <45932BCC-6F6D-4F6B-841A-66F81E442828@nathan.to>
References: <45932BCC-6F6D-4F6B-841A-66F81E442828@nathan.to>
Date: Thu, 28 Jan 2016 13:30:43 -0500
Message-ID: <CAMKF1sosva3Xc-3OAD6b-Vbfg6Ng0OmGEXST6UZDcvg1Hax8TQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 28 Jan 2016 18:30:49 -0000
Content-Type: multipart/alternative; boundary=001a1141f0c6eae53b052a691d16

--001a1141f0c6eae53b052a691d16
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Jan 28, 2016 1:24 PM, "Nathan Sowatskey" <nathan@nathan.to> wrote:
>
> Hi
>
> I am using the Yocto Build Appliance to build an image using a profile of
qemux86-64, and recipe of core-image-full-cmdline.
>
> The application I need to run on that image has a dependency on Qt5 libs.
>
> It seems that only Qt4 libs are available in the packages on the build
appliance.
>
> Can anyone help me with adding the Qt5 packages please?

Use meta-qt5 layer
Always search layer index for additional recipes at layers.openembedded.org
>
> Many thanks
>
> Nathan
>
> =E2=80=94
> Nathan John Sowatskey
> Consulting Engineer - Programmable Infrastructure, DevOps, IoT and SDN
> nathan@nathan.to
> www.linkedin.com/in/nathandevops
> XMPP: nathandotto@im.koderoot.net
> Google: nathanjohnsowatskey@gmail.com
> Skype: nathan_sowatskey
> Twitter: NathanDotTo
> GitHub: https://github.com/DevOps4Networks
> http://www.kipling.org.uk/poems_if.htm
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a1141f0c6eae53b052a691d16
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Jan 28, 2016 1:24 PM, &quot;Nathan Sowatskey&quot; &lt;<a href=3D"mailto=
:nathan@nathan.to">nathan@nathan.to</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi<br>
&gt;<br>
&gt; I am using the Yocto Build Appliance to build an image using a profile=
 of qemux86-64, and recipe of core-image-full-cmdline.<br>
&gt;<br>
&gt; The application I need to run on that image has a dependency on Qt5 li=
bs.<br>
&gt;<br>
&gt; It seems that only Qt4 libs are available in the packages on the build=
 appliance.<br>
&gt;<br>
&gt; Can anyone help me with adding the Qt5 packages please?</p>
<p dir=3D"ltr">Use meta-qt5 layer<br>
Always search layer index for additional recipes at <a href=3D"http://layer=
s.openembedded.org">layers.openembedded.org</a><br>
&gt;<br>
&gt; Many thanks<br>
&gt;<br>
&gt; Nathan<br>
&gt;<br>
&gt; =E2=80=94<br>
&gt; Nathan John Sowatskey<br>
&gt; Consulting Engineer - Programmable Infrastructure, DevOps, IoT and SDN=
<br>
&gt; <a href=3D"mailto:nathan@nathan.to">nathan@nathan.to</a><br>
&gt; <a href=3D"http://www.linkedin.com/in/nathandevops">www.linkedin.com/i=
n/nathandevops</a><br>
&gt; XMPP: <a href=3D"mailto:nathandotto@im.koderoot.net">nathandotto@im.ko=
deroot.net</a><br>
&gt; Google: <a href=3D"mailto:nathanjohnsowatskey@gmail.com">nathanjohnsow=
atskey@gmail.com</a><br>
&gt; Skype: nathan_sowatskey<br>
&gt; Twitter: NathanDotTo<br>
&gt; GitHub: <a href=3D"https://github.com/DevOps4Networks">https://github.=
com/DevOps4Networks</a><br>
&gt; <a href=3D"http://www.kipling.org.uk/poems_if.htm">http://www.kipling.=
org.uk/poems_if.htm</a><br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--001a1141f0c6eae53b052a691d16--
