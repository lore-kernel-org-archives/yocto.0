Return-Path: <navani.srivastava@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C37CE00786; Wed, 24 Sep 2014 05:01:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (navani.srivastava[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4271E0034C
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 05:01:28 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id rd18so6094230iec.33
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 05:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=iMx0xsm6mwAPFY1ftMJqAwUw24cg3+YJ4r5yhJF+o4c=;
	b=NNmP3Z2LDIjW0WWaxU/yq80qP2AHUvX2FgZ4qQ7F270B5Q4QmpUpVSoL+5c0MLMBtH
	LnEOAlYv+p3qmd497N71U/tdivYO7MLBdWy6leTxQ72DOB29cnKj1Dp87gA128YnRbcp
	ZqXEUC5VlA+tNLaKmepLmvDb3ehij3f4dwGDEG3328DbtFuyjZPOEtU+d9n1kxa3lkci
	PI94uk9jdMpWUcwfCp+6N+gyjP1ZjqHynCgy3xDTKEjS6wlvcnkCD1ZAcg7UQsa8ulFQ
	MKChm41OzjkfUxcuVuzukh2NJIogoKR0GFycESYwNTHwe/Ue2VvpWfv6WHEOG3bakrgs
	4cMQ==
X-Received: by 10.50.117.106 with SMTP id kd10mr12086362igb.5.1411560087352;
	Wed, 24 Sep 2014 05:01:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.217 with HTTP; Wed, 24 Sep 2014 05:01:06 -0700 (PDT)
In-Reply-To: <CA+Z6RkXJWR0R6et_mz3kQatXCkRTzE85HaLHi2BKA8b6Ywq2mQ@mail.gmail.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<CAMKF1sqc0+V0V__Ot1T_Qzd-DPpTK4OF9ooAz2EOEEXfT-S-aQ@mail.gmail.com>
	<CA+Z6RkUeUs0=EQ3adks8jBYbEQkiA6G8iP+Em8_YzHSGo2124Q@mail.gmail.com>
	<2064454.kM4kxd3gIa@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkXJWR0R6et_mz3kQatXCkRTzE85HaLHi2BKA8b6Ywq2mQ@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 24 Sep 2014 17:31:06 +0530
Message-ID: <CA+Z6RkUk5zeR3SiYd_ce2cY0-9fDSErhZuO4h2h9V-2ckp9icQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Navani Srivastava <navani.srivastava@lnttechservices.com>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Wed, 24 Sep 2014 12:01:39 -0000
Content-Type: multipart/alternative; boundary=089e0139fb629600730503ce71d9

--089e0139fb629600730503ce71d9
Content-Type: text/plain; charset=UTF-8

Removing integration of meta-toolchain-qte from my image helped in building
qjson as a part of SDK when running bitbake -c populate_sdk -v <myimage> or
bitbake <myimage>.

Integration of meta-toolchain-qte might need some more modifications.

Still as a requirement, I need to integrate my custom recipe with
meta-toolchain-qte to generate SDK having custom recipe as a tool. I have
created nativesdk bb file for custom recipe to integrate it via
nativesdk-packagegroup-qte-toolchain-host.bb but no luck..

On Wed, Sep 24, 2014 at 1:14 PM, Navani Srivastava <
navani.srivastava@gmail.com> wrote:

> Yes.. i did...
> On 24 Sep 2014 12:56, "Paul Eggleton" <paul.eggleton@linux.intel.com>
> wrote:
>
>> On Wednesday 24 September 2014 10:26:41 Navani Srivastava wrote:
>> > I corrected FILES_${PN} and added following in my image recipe-
>> > QTNAME = "qte"
>> > QT_DIR_NAME = "qtopia"
>> > require recipes-qt/meta/meta-toolchain-qt.bb
>> >
>> > but that didn't make any difference related to SDK integration. On
>> > executing 'bitbake -v <MyImageName>', it is generating rootfs and sdk,
>> in
>> > which contains rootfs contains qjson libraries but sdk doesn't integrate
>> > anything.
>>
>> To generate the SDK you'd need to also do bitbake -c populate_sdk
>> <imagename>
>> - you did do that as well after making the changes to the recipe, right ?
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>

--089e0139fb629600730503ce71d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Removing integration of meta-toolchain-qte from my image h=
elped in building qjson as a part of SDK when running bitbake -c populate_s=
dk -v &lt;myimage&gt; or bitbake &lt;myimage&gt;.<div><br></div><div>Integr=
ation of meta-toolchain-qte might need some more modifications.=C2=A0</div>=
<div><br></div><div>Still as a requirement, I need to integrate my custom r=
ecipe with meta-toolchain-qte to generate SDK having custom recipe as a too=
l. I have created nativesdk bb file for custom recipe to integrate it via=
=C2=A0<a href=3D"http://nativesdk-packagegroup-qte-toolchain-host.bb">nativ=
esdk-packagegroup-qte-toolchain-host.bb</a> but no luck..=C2=A0</div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Sep 24, 2=
014 at 1:14 PM, Navani Srivastava <span dir=3D"ltr">&lt;<a href=3D"mailto:n=
avani.srivastava@gmail.com" target=3D"_blank">navani.srivastava@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr">Yes..=
 i did...</p><div class=3D"HOEnZb"><div class=3D"h5">
<div class=3D"gmail_quote">On 24 Sep 2014 12:56, &quot;Paul Eggleton&quot; =
&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul=
.eggleton@linux.intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">On Wednesday 24 September 2014 10:26:41 Navani Srivast=
ava wrote:<br>
&gt; I corrected FILES_${PN} and added following in my image recipe-<br>
&gt; QTNAME =3D &quot;qte&quot;<br>
&gt; QT_DIR_NAME =3D &quot;qtopia&quot;<br>
&gt; require recipes-qt/meta/<a href=3D"http://meta-toolchain-qt.bb" target=
=3D"_blank">meta-toolchain-qt.bb</a><br>
&gt;<br>
&gt; but that didn&#39;t make any difference related to SDK integration. On=
<br>
&gt; executing &#39;bitbake -v &lt;MyImageName&gt;&#39;, it is generating r=
ootfs and sdk, in<br>
&gt; which contains rootfs contains qjson libraries but sdk doesn&#39;t int=
egrate<br>
&gt; anything.<br>
<br>
To generate the SDK you&#39;d need to also do bitbake -c populate_sdk &lt;i=
magename&gt;<br>
- you did do that as well after making the changes to the recipe, right ?<b=
r>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</blockquote></div>
</div></div></blockquote></div><br></div>

--089e0139fb629600730503ce71d9--
