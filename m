Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27AC9E00404; Thu, 20 Oct 2016 08:17:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6DD9E002AC
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 08:17:51 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id s49so58169687qta.0
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 08:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IQRiGqfKE041LkzkPchLnmYD5g2OFB6Zjn2z0uxQLSg=;
	b=VnAtp3VWLAocDBIlc1BXeZIOe7EmzLZ4B1sdQP/yRxqd6VBDP9kpQWGqZtz+cFRmAy
	TSmMrt0HUKGM1h9rOW3J0yPYmRtG+jzHsyQc8d1Xv/NsW9SAyZsTiiafinf2VkJPEx1f
	Xnk5xrOc34g+JbenDd1aH7h6c+2liHsdFtdUS0H/zIzYGj6jKhP5ECLURvyySyRngeln
	gWSmDC3p9F8Mbw8q+uYv4SIxsdy2EMU/XN1W3QT3sS99b+18X+QdphqcRQbMur8kGVXg
	Od4VuCrzluBC9ztf6MGObsXnN9iJ3PaVxutpFaX7S+9W833QmRVYC4POX8RndOs/GLm/
	NBlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IQRiGqfKE041LkzkPchLnmYD5g2OFB6Zjn2z0uxQLSg=;
	b=Dkq+ElHlf4qdqnhCHUJXbLXFAn8PZ3H/vd1qVTU5kKLJiTJ9LmuNUdSFrtJzXMqgGq
	z/mW1ihhpsaAUrTK55rnp2phl247ECeeNmgPEhc9NS3ulKH4mMyNAq0zkVRSxGxvjqy+
	cVri9GDg4T/EvLaPYGm5SXZBzoA+b98/frdoXs11lFJhpkG61SGj5Q28xiYbRZmE0ue8
	nuDyNPme1nM4U+6I654GJy4j+yBoBqj+gftEcH7Y8Y2wSqBl+bVjjx56m+/wM3xMO1ZZ
	EEXYPFTromhFi9WhX5F5Kwq22RmmF1tx1//lPpW63wnhcunZ5RfSV6Vsz6xAVvwNKiSw
	u7kg==
X-Gm-Message-State: AA6/9RlhBFk4q0bX4PWQlep8w1Yv7l2BFlmc4nD0wffiWGyMnunbcvrYK8dpg7nSUSqtzSR2n+a43tUex98+ug==
X-Received: by 10.28.93.134 with SMTP id r128mr785963wmb.13.1476976670528;
	Thu, 20 Oct 2016 08:17:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.172.117 with HTTP; Thu, 20 Oct 2016 08:17:49 -0700 (PDT)
Received: by 10.80.172.117 with HTTP; Thu, 20 Oct 2016 08:17:49 -0700 (PDT)
In-Reply-To: <CALLyC8S3vnuxpQpBcPW-SbBtcsKAC+b91Fiw+DnP99x4t7J47g@mail.gmail.com>
References: <CALLyC8TfRL68sWhdn1Z7tmOKxpagFfaW4YnQ9FteEKCX_rdCgg@mail.gmail.com>
	<3331a156-1af4-14eb-86ef-5afb4d1e8404@t-online.de>
	<CAJTo0LZUvD6MrLLtf4_7uAX9UCutnOAUJeg3aBGubCd4JysTqw@mail.gmail.com>
	<CALLyC8S3vnuxpQpBcPW-SbBtcsKAC+b91Fiw+DnP99x4t7J47g@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 20 Oct 2016 17:17:49 +0200
Message-ID: <CAC+thW2hqEFeuoCr54tsq=T8bexraxsfCQc_Vhd=ymdzczjSWw@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: libtomcrypt libtomfastmath recipe
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
X-List-Received-Date: Thu, 20 Oct 2016 15:17:55 -0000
Content-Type: multipart/alternative; boundary=001a114690f0c9e35d053f4d6d77

--001a114690f0c9e35d053f4d6d77
Content-Type: text/plain; charset=UTF-8

Hi Vivek,

Il 20 ott 2016 1:42 PM, "Vivek Per" <pervivek@gmail.com> ha scritto:
>
> Hi All,
>
> Thank you very much this recipe worked for me.

If it worked, as already suggested by Ross, please consider posting it to
the mailing list for further review and hopefully for merging into meta-oe
or where it belongs best.

Instructions for contributing can be found at
https://github.com/openembedded/meta-openembedded/blob/master/README and in
READMEs from each layer.

>
> Thanks and Regards,
>
>
> On Thu, Oct 20, 2016 at 3:40 AM, Burton, Ross <ross.burton@intel.com>
wrote:
>>
>> Please considering posting these recipe into meta-oe or similar,
tomcrypt etc comes up every few months.  And posting a recipe to the list
implies you want review, right? :)
>>
>> On 19 October 2016 at 10:12, Markus Volk <f_l_k@t-online.de> wrote:
>>>
>>> DESCRIPTION = "tomcrypt"
>>> HOMEPAGE = " http://www.libtom.net"
>>> LICENSE = "DWTFYW"
>>
>> Second worst license known to man.  :(
>>>
>>> LIC_FILES_CHKSUM =
"file://${S}/LICENSE;md5=71baacc459522324ef3e2b9e052e8180"
>>
>> These URLs are relative to ${S} so just file://LICENSE works.
>>>
>>> SRC_URI = "git://github.com/libtom/libtomcrypt.git;branch=develop \
>>> "
>>>
>>> SRCREV = "${AUTOREV}"
>>
>> In general it's recommended to use a fixed SHA and then override SRVREV
if you need to for testing/CI/whatever.
>>>
>>> PV = "${SRCPV}"
>>> PR = "1"
>>
>> No need for PR in general.
>>>
>>> S = "${WORKDIR}/git"
>>>
>>> inherit autotools-brokensep
>>
>> Boo.  Is upstream fixable or is it beyond help?
>>>
>>> SRC_URI[md5sum] = "d2f152e4dc83ee4cdb1b4f1a4866fe7f"
>>> SRC_URI[sha256sum] =
"d0ff89397f9a5fd1d13b1cbc419d5d426e14473135515d72bfcb58e5babf5032"
>>
>> No need for SRC_URI if you're using git fetcher.
>>
>> Ross
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114690f0c9e35d053f4d6d77
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Vivek,</p>
<p dir=3D"ltr">Il 20 ott 2016 1:42 PM, &quot;Vivek Per&quot; &lt;<a href=3D=
"mailto:pervivek@gmail.com">pervivek@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hi All,<br>
&gt;<br>
&gt; Thank you very much this recipe worked for me.</p>
<p dir=3D"ltr">If it worked, as already suggested by Ross, please consider =
posting it to the mailing list for further review and hopefully for merging=
 into meta-oe or where it belongs best.</p>
<p dir=3D"ltr">Instructions for contributing can be found at<a href=3D"http=
s://github.com/openembedded/meta-openembedded/blob/master/README"> https://=
github.com/openembedded/meta-openembedded/blob/master/README</a> and in REA=
DMEs from each layer.</p>
<p dir=3D"ltr">&gt;<br>
&gt; Thanks and Regards,<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Oct 20, 2016 at 3:40 AM, Burton, Ross &lt;<a href=3D"mailto:ro=
ss.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Please considering posting these recipe into meta-oe or similar, t=
omcrypt etc comes up every few months.=C2=A0 And posting a recipe to the li=
st implies you want review, right? :)<br>
&gt;&gt;<br>
&gt;&gt; On 19 October 2016 at 10:12, Markus Volk &lt;<a href=3D"mailto:f_l=
_k@t-online.de">f_l_k@t-online.de</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; DESCRIPTION =3D &quot;tomcrypt&quot;<br>
&gt;&gt;&gt; HOMEPAGE =3D &quot;<a href=3D"http://www.libtom.net"> http://w=
ww.libtom.net</a>&quot;<br>
&gt;&gt;&gt; LICENSE =3D &quot;DWTFYW&quot;<br>
&gt;&gt;<br>
&gt;&gt; Second worst license known to man. =C2=A0:(<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; LIC_FILES_CHKSUM =3D &quot;file://${S}/LICENSE;md5=3D71baacc45=
9522324ef3e2b9e052e8180&quot;<br>
&gt;&gt;<br>
&gt;&gt; These URLs are relative to ${S} so just file://LICENSE works.=C2=
=A0<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; SRC_URI =3D &quot;git://<a href=3D"http://github.com/libtom/li=
btomcrypt.git;branch=3Ddevelop">github.com/libtom/libtomcrypt.git;branch=3D=
develop</a> \<br>
&gt;&gt;&gt; &quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt;&gt;<br>
&gt;&gt; In general it&#39;s recommended to use a fixed SHA and then overri=
de SRVREV if you need to for testing/CI/whatever.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; PV =3D &quot;${SRCPV}&quot;<br>
&gt;&gt;&gt; PR =3D &quot;1&quot;<br>
&gt;&gt;<br>
&gt;&gt; No need for PR in general.=C2=A0<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; inherit autotools-brokensep<br>
&gt;&gt;<br>
&gt;&gt; Boo.=C2=A0 Is upstream fixable or is it beyond help?=C2=A0<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; SRC_URI[md5sum] =3D &quot;d2f152e4dc83ee4cdb1b4f1a4866fe7f&quo=
t;<br>
&gt;&gt;&gt; SRC_URI[sha256sum] =3D &quot;d0ff89397f9a5fd1d13b1cbc419d5d426=
e14473135515d72bfcb58e5babf5032&quot;<br>
&gt;&gt;<br>
&gt;&gt; No need for SRC_URI if you&#39;re using git fetcher.<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt;<a href=3D"mailto:yocto@yoctoproject.org"> yocto@yoctoproject.org</a><b=
r>
&gt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto"> https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;</p>

--001a114690f0c9e35d053f4d6d77--
