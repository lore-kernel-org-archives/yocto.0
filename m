Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15747E00AC1; Thu, 15 Oct 2015 04:22:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 938C4E00A49
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 04:22:04 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so35851981wic.0
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 04:22:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JjPlKdxhDnzWXL7n2FutowWVI/JO2xgegmU0JiF5xvI=;
	b=HdDP8Axa8w9I29mUHESwHLm18u51azVWr4XyXdSlSGtTHicT5fn0K1W8iPMF3EtIxQ
	DgfH7LcbBfab17qH/ktZBOgdulLqGY/BpFjQiDjuQRjEQaaw8V/SOaU92zW14QwJuH7G
	2+iVQPt+2eWqiHxFYI2+Uo3lRRlhCeoQ0ELZet49YQqtP7w7OCa+rvaOuzUE2acwmgzr
	aSSwql925/y8cWrAi+/V9aj2r2xmqkXrv+DKA8gQ4niTEbZFKYCFRvqpH4UF5/9SQWhl
	Grd45J58vkAsHeI6cxVesyKjlTS4n5TN3S5XzQYkLTPMC735ZVkTNd0WQ+2cQCbjbda5
	QAbA==
X-Gm-Message-State: ALoCoQkRDf8lUnitlfLF/SKXlPDMF8qPDQOzZlbRuPhML7ALeQdJXMRabfXAcud6kEZSPtgHNP2K
X-Received: by 10.180.210.210 with SMTP id mw18mr2481589wic.18.1444908123970; 
	Thu, 15 Oct 2015 04:22:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.27.77.212 with HTTP; Thu, 15 Oct 2015 04:21:34 -0700 (PDT)
In-Reply-To: <CALLyC8TnwQ8E6odivqp2XeQ_5DbQTBmNHUsmHQkc2yzV_VdBpA@mail.gmail.com>
References: <CALLyC8TnwQ8E6odivqp2XeQ_5DbQTBmNHUsmHQkc2yzV_VdBpA@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 15 Oct 2015 14:21:34 +0300
Message-ID: <CAHiDW_E=MqPmoi2trxQu14Wsm_Jsf+6L3n0UDX++gNoH+FYjrA@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Can i add two git sources in one single recipe
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
X-List-Received-Date: Thu, 15 Oct 2015 11:22:07 -0000
Content-Type: multipart/alternative; boundary=001a11c25bd076747c052222e3ad

--001a11c25bd076747c052222e3ad
Content-Type: text/plain; charset=UTF-8

On 15 October 2015 at 14:03, Vivek Per <pervivek@gmail.com> wrote:

> hi,
>       Can i add two git source url in one recipe(SRC_URI).
> If so how can i add and how can i give source revision for two these files
> in one recipe.
>

Name the SRC_URIs, then set SRCREV_<name> for each of those. Example from
gstreamer1.0-omx:

SRC_URI = " \
    git://
anongit.freedesktop.org/gstreamer/gst-omx;branch=master;name=gst-omx \
    git://
anongit.freedesktop.org/gstreamer/common;destsuffix=git/common;branch=master;name=common
\
    file://0001-omx-fixed-type-error-in-printf-call.patch \
    "
SRCREV_gst-omx = "a2db76b048db278ef0aa798e106b7594264e06c0"
SRCREV_common = "5edcd857b2107cd8b78c16232dd10877513ec157"

 - Jussi

--001a11c25bd076747c052222e3ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
5 October 2015 at 14:03, Vivek Per <span dir=3D"ltr">&lt;<a href=3D"mailto:=
pervivek@gmail.com" target=3D"_blank">pervivek@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex"><div dir=3D"ltr">hi,<div>=C2=A0 =C2=A0 =C2=A0 Can i=
 add two git source url in one recipe(SRC_URI).</div><div>If so how can i a=
dd and how can i give source revision for two these files in one recipe.</d=
iv></div></blockquote><div>=C2=A0</div><div>Name the SRC_URIs, then set SRC=
REV_&lt;name&gt; for each of those. Example from gstreamer1.0-omx:</div><di=
v><br></div><div><div>SRC_URI =3D &quot; \</div><div>=C2=A0 =C2=A0 git://<a=
 href=3D"http://anongit.freedesktop.org/gstreamer/gst-omx;branch=3Dmaster;n=
ame=3Dgst-omx" target=3D"_blank">anongit.freedesktop.org/gstreamer/gst-omx;=
branch=3Dmaster;name=3Dgst-omx</a> \</div><div>=C2=A0 =C2=A0 git://<a href=
=3D"http://anongit.freedesktop.org/gstreamer/common;destsuffix=3Dgit/common=
;branch=3Dmaster;name=3Dcommon" target=3D"_blank">anongit.freedesktop.org/g=
streamer/common;destsuffix=3Dgit/common;branch=3Dmaster;name=3Dcommon</a> \=
</div><div>=C2=A0 =C2=A0 file://0001-omx-fixed-type-error-in-printf-call.pa=
tch \</div><div>=C2=A0 =C2=A0 &quot;</div></div><div><div>SRCREV_gst-omx =
=3D &quot;a2db76b048db278ef0aa798e106b7594264e06c0&quot;</div><div>SRCREV_c=
ommon =3D &quot;5edcd857b2107cd8b78c16232dd10877513ec157&quot;</div></div><=
div><br></div><div>=C2=A0- Jussi</div></div></div></div>

--001a11c25bd076747c052222e3ad--
