Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 633BBE00C05; Tue,  8 Dec 2015 23:17:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04AB5E00B8C
	for <yocto@yoctoproject.org>; Tue,  8 Dec 2015 23:17:31 -0800 (PST)
Received: by vkbs1 with SMTP id s1so37900039vkb.1
	for <yocto@yoctoproject.org>; Tue, 08 Dec 2015 23:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kz2uDxF7KEGEBb/VapQjnEP7NZ5zWXPztpHSOM7GSZk=;
	b=TE1zidHogBx1zFnZvjnPd7kV265sCvJAvIFViWvuXOiQtwz5Aotn1G1GslwMbSK6TZ
	j/e+yFNT/G+JFo4X7v4CYhaJfKx1Ehc+AGLx7k4wejMC2YmY5DEyRaB/uvKrQ/u2NEB+
	ak9KO+s6S15eAJ/nBJ6E3g3owjVzV1UWZVAqpyciXZf8kFzeCKt5vixHsZmjg4Os0GAr
	c36o2k/29dnDc+t+Qk+c4nWlHhi/2DWr3pVknZcS6PPmAzs2wTSCB07HZ2MGPuGFadc2
	4Llm6q/lVsOTVsplxpS8LZucSBMvKFLi/2uUW3sRJzB/fBuTLEuW0YW0UZk0TKC0wCZc
	DcPg==
MIME-Version: 1.0
X-Received: by 10.31.5.15 with SMTP id 15mr3368106vkf.108.1449645450724; Tue,
	08 Dec 2015 23:17:30 -0800 (PST)
Received: by 10.31.179.207 with HTTP; Tue, 8 Dec 2015 23:17:30 -0800 (PST)
In-Reply-To: <CAHiDW_E=MqPmoi2trxQu14Wsm_Jsf+6L3n0UDX++gNoH+FYjrA@mail.gmail.com>
References: <CALLyC8TnwQ8E6odivqp2XeQ_5DbQTBmNHUsmHQkc2yzV_VdBpA@mail.gmail.com>
	<CAHiDW_E=MqPmoi2trxQu14Wsm_Jsf+6L3n0UDX++gNoH+FYjrA@mail.gmail.com>
Date: Wed, 9 Dec 2015 12:47:30 +0530
Message-ID: <CALLyC8Sph8YwYsYV9-PZzGuQzQSYxBqvWK0SRWeAh5SMq2abEQ@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
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
X-List-Received-Date: Wed, 09 Dec 2015 07:17:41 -0000
Content-Type: multipart/alternative; boundary=001a1143df742408e6052671e257

--001a1143df742408e6052671e257
Content-Type: text/plain; charset=UTF-8

Hi,
   Thank you *Jussi Kukkonen* for you help
   I have tried the above procedure two git repo in one recipe, it is
fetching to download directory and getting failed while unpacking to the
work directory . I am using yocto 1.7 (dizzy) . The above SRC_URI mentioned
in gstreamer recipe in yocto 1.8 (fido). Does two SRC_URL in one recipe
works in yocto 1.7(dizzy) ?.
        I saw there is a small change in bitbake/lib/fetch2/git.py file in
 yocto 1.7 and yocto 1.8 . Is this the reason it is getting failed to
unpack. Is there any solution to do so?.

Thanks and Regards
      Vivek

On Thu, Oct 15, 2015 at 4:51 PM, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> On 15 October 2015 at 14:03, Vivek Per <pervivek@gmail.com> wrote:
>
>> hi,
>>       Can i add two git source url in one recipe(SRC_URI).
>> If so how can i add and how can i give source revision for two these
>> files in one recipe.
>>
>
> Name the SRC_URIs, then set SRCREV_<name> for each of those. Example from
> gstreamer1.0-omx:
>
> SRC_URI = " \
>     git://
> anongit.freedesktop.org/gstreamer/gst-omx;branch=master;name=gst-omx \
>     git://
> anongit.freedesktop.org/gstreamer/common;destsuffix=git/common;branch=master;name=common
> \
>     file://0001-omx-fixed-type-error-in-printf-call.patch \
>     "
> SRCREV_gst-omx = "a2db76b048db278ef0aa798e106b7594264e06c0"
> SRCREV_common = "5edcd857b2107cd8b78c16232dd10877513ec157"
>
>  - Jussi
>

--001a1143df742408e6052671e257
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0Thank you=C2=A0<span style=3D"font-si=
ze:12.8px;white-space:nowrap"><b>Jussi Kukkonen</b> for you help</span><br>=
<div>=C2=A0 =C2=A0I have tried the above procedure two git repo in one reci=
pe, it is fetching to download directory and getting failed while unpacking=
 to the work directory . I am using yocto 1.7 (dizzy) . The above SRC_URI m=
entioned in gstreamer recipe in yocto 1.8 (fido). Does two SRC_URL in one r=
ecipe works in yocto 1.7(dizzy) ?.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 I =
saw there is a small change in bitbake/lib/fetch2/git.py file in =C2=A0yoct=
o 1.7 and yocto 1.8 . Is this the reason it is getting failed to unpack. Is=
 there any solution to do so?.</div><div><br></div><div>Thanks and Regards<=
/div><div>=C2=A0 =C2=A0 =C2=A0 Vivek</div></div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Thu, Oct 15, 2015 at 4:51 PM, Jussi=
 Kukkonen <span dir=3D"ltr">&lt;<a href=3D"mailto:jussi.kukkonen@intel.com"=
 target=3D"_blank">jussi.kukkonen@intel.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><span class=3D"">On 15 October 2015 at 14:03, Vivek Pe=
r <span dir=3D"ltr">&lt;<a href=3D"mailto:pervivek@gmail.com" target=3D"_bl=
ank">pervivek@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div dir=
=3D"ltr">hi,<div>=C2=A0 =C2=A0 =C2=A0 Can i add two git source url in one r=
ecipe(SRC_URI).</div><div>If so how can i add and how can i give source rev=
ision for two these files in one recipe.</div></div></blockquote><div>=C2=
=A0</div></span><div>Name the SRC_URIs, then set SRCREV_&lt;name&gt; for ea=
ch of those. Example from gstreamer1.0-omx:</div><div><br></div><div><div>S=
RC_URI =3D &quot; \</div><div>=C2=A0 =C2=A0 git://<a href=3D"http://anongit=
.freedesktop.org/gstreamer/gst-omx;branch=3Dmaster;name=3Dgst-omx" target=
=3D"_blank">anongit.freedesktop.org/gstreamer/gst-omx;branch=3Dmaster;name=
=3Dgst-omx</a> \</div><div>=C2=A0 =C2=A0 git://<a href=3D"http://anongit.fr=
eedesktop.org/gstreamer/common;destsuffix=3Dgit/common;branch=3Dmaster;name=
=3Dcommon" target=3D"_blank">anongit.freedesktop.org/gstreamer/common;dests=
uffix=3Dgit/common;branch=3Dmaster;name=3Dcommon</a> \</div><div>=C2=A0 =C2=
=A0 file://0001-omx-fixed-type-error-in-printf-call.patch \</div><div>=C2=
=A0 =C2=A0 &quot;</div></div><div><div>SRCREV_gst-omx =3D &quot;a2db76b048d=
b278ef0aa798e106b7594264e06c0&quot;</div><div>SRCREV_common =3D &quot;5edcd=
857b2107cd8b78c16232dd10877513ec157&quot;</div></div><span class=3D"HOEnZb"=
><font color=3D"#888888"><div><br></div><div>=C2=A0- Jussi</div></font></sp=
an></div></div></div>
</blockquote></div><br></div>

--001a1143df742408e6052671e257--
