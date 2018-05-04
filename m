Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E009FE009DF; Fri,  4 May 2018 10:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7F49E005A9
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 10:02:37 -0700 (PDT)
Received: by mail-ot0-f169.google.com with SMTP id i5-v6so13567653otf.1
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 10:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=D9sgquU/UoshSDPfKKyMM37czeODjF4gZNKEwOXlU/k=;
	b=Ks2xqFqC8cqVet0f8LkWkWGB5t6EyDrKtJTlUS08v7Arsz4YpEJZugPhl10XZMZ3pX
	nTwXEV2pWFgVZKxNqGhX6sa2ht/WBikKc8PnENge2FUIxAIErQKrD3005HAXfOQTeCmn
	WR3PqwpUljAjEQoQ2ZmKYk+Wo3QAayWLOhCXl2ODdmQa++5YCgCnOW6IY/xO6j/z69mW
	+IQSu7R2HcMOzmKdli36hq4tRw0t/u4GTABYVf9mxWzA7Z66VWMIYQTAHmzb1VvscFMu
	AVi4S9jnaxtCdGViw/OUT4CVyHHZWYShi8SxuXZO33rNt/b9VrgT3CGhrVGN0YhgSmBM
	/S9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=D9sgquU/UoshSDPfKKyMM37czeODjF4gZNKEwOXlU/k=;
	b=Ts/hNgTuA6zPheDuw6h+jz2RZ5pmBuqbXwbdoJ5eWJ2X3Xybpf47E+jn2cXwLqbzUz
	6WbpHmUcRd5Pll/7EuCTuYFmnwzYupWEqbV1o2vMBUc8CTZlbzpJJXJxHTT+7wMlbqb6
	kGlLkuTeUbA9TEHQy4d151n9/d7wz1ozp9Gk6qlvO5ZYtzTyGeQdWTPB35onIHJ9FadC
	VpGNcgvA5AJnsgws504DOenpGMLxxdXb6MpIpFTWTZBmsEVrEFnzNTa5EAKC5BV5ECXJ
	lYezB4dRoyebm4dKsZJDkSlJVH/IAvzXjVTYQ8oe15YmPkbjVT673IfisVoux1LVUp5f
	uUVA==
X-Gm-Message-State: ALQs6tBx1PuzLdX+l7NWFAtNCeWf60JAK+RlCX17/rULE8SjWK37IJEu
	QwFMdx4Mtn6BYWnX/IlPzXe6sv12YBp6ChopMp0=
X-Google-Smtp-Source: AB8JxZpw96sIBM4Eg5SaZ5kYgcpkwexs7ZcGdz7eqP8G5DTAlNTXwwr8VDA5mZVAn8uymWjQMrobchTQ4c19zFo4aNI=
X-Received: by 2002:a9d:1f70:: with SMTP id
	x45-v6mr20565203otx.144.1525453356676; 
	Fri, 04 May 2018 10:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7009:0:0:0:0:0 with HTTP;
	Fri, 4 May 2018 10:02:35 -0700 (PDT)
In-Reply-To: <CAFNP8OumcOK9tmXso4ahfRH0qC0BYrpQA3a0x-kkwAnv+wBm+w@mail.gmail.com>
References: <1524154643.18865.113.camel@linuxfoundation.org>
	<39f087be-1129-6131-d5d1-5714f127667b@thecshore.com>
	<1525186011.25196.117.camel@linuxfoundation.org>
	<CAFNP8Ov2waP_aG81Y9_AJRNbm4FicjhkC7Yy-M5OU=SXLmJarg@mail.gmail.com>
	<5e09a0d81b0a48a1bebdc3e8ed542f52@XBOX02.axis.com>
	<CAFNP8Ot4j5V4LzmE=7MU+WWXX1wha0_8byV27TLr2Qb9pW9SOw@mail.gmail.com>
	<1de735f1d8b44901b57403f49bca0611@XBOX02.axis.com>
	<CAFNP8OumcOK9tmXso4ahfRH0qC0BYrpQA3a0x-kkwAnv+wBm+w@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 4 May 2018 10:02:35 -0700
Message-ID: <CAFNP8OviGFw1RiJmbeu31DKPckJ=fZqwJyzy31+MfjQ+m=8mhg@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [OE-core] 2.6 planning proposals and meeting
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
X-List-Received-Date: Fri, 04 May 2018 17:02:39 -0000
Content-Type: multipart/alternative; boundary="000000000000723b59056b64490e"

--000000000000723b59056b64490e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Peter,

See
https://www.yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#var-BUILDH=
ISTORY_FEATURES
for the re-ordered list.

Thanks,
Scott

On Fri, May 4, 2018 at 9:53 AM, Scott Rifenbark <srifenbark@gmail.com>
wrote:

> Sorry man... I just stuck the new one in there.  Alphabetical would be
> best.  I will fix that.
>
> Thanks,
> Scott
>
> On Fri, May 4, 2018 at 9:26 AM, Peter Kjellerstedt <
> peter.kjellerstedt@axis.com> wrote:
>
>> Not sure why you reordered the descriptions of the features from
>> image,package,sdk,task to image,task,package,sdk (I added =E2=80=9Ctask=
=E2=80=9D at the end
>> since that kept them sorted alphabetically), but apart from that it look=
s
>> fine to me.
>>
>>
>>
>> //Peter
>>
>>
>>
>> *From:* Scott Rifenbark [mailto:srifenbark@gmail.com]
>> *Sent:* den 3 maj 2018 15:58
>> *To:* Peter Kjellerstedt <peter.kjellerstedt@axis.com>
>> *Cc:* Richard Purdie <richard.purdie@linuxfoundation.org>;
>> openembedded-core <openembedded-core@lists.openembedded.org>; Yocto
>> discussion list <yocto@yoctoproject.org>
>>
>> *Subject:* Re: [OE-core] 2.6 planning proposals and meeting
>>
>>
>>
>> Hi Peter,
>>
>> Thanks for the patch.  I have applied it to the 2.5 version of the Yocto
>> Project Reference Manual (see https://yoctoproject.org/docs/
>> 2.5/ref-manual/ref-manual.html#var-BUILDHISTORY_FEATURES).  You can also
>> see https://yoctoproject.org/docs/2.5/ref-manual/ref-manual.html
>> #var-BUILDHISTORY_FEATURES for the commit in the yocto-docs repository.
>>
>> Please look it over as I did a bit of modification for manual purposes.
>>
>> Regards,
>>
>> Scott
>>
>>
>>
>> On Thu, May 3, 2018 at 12:29 AM, Peter Kjellerstedt <
>> peter.kjellerstedt@axis.com> wrote:
>>
>>
>>
>>
>>
>> *From:* openembedded-core-bounces@lists.openembedded.org [mailto:
>> openembedded-core-bounces@lists.openembedded.org] *On Behalf Of *Scott
>> Rifenbark
>> *Sent:* den 1 maj 2018 16:56
>> *To:* Richard Purdie <richard.purdie@linuxfoundation.org>
>> *Cc:* openembedded-core <openembedded-core@lists.openembedded.org>
>> *Subject:* Re: [OE-core] 2.6 planning proposals and meeting
>>
>>
>>
>> On Tue, May 1, 2018 at 7:46 AM, Richard Purdie <
>> richard.purdie@linuxfoundation.org> wrote:
>>
>> Hi,
>>
>> On Fri, 2018-04-20 at 08:02 -0400, Daniel F. Dickinson wrote:
>> > I'm relatively new to OE; I've written a couple of pre-alpha layers
>> > to try some idea, and worked on meta-openembedded, but I've not had a
>> > chance to go in depth on the Yocto documentation, and at the some
>> > there see to be things (based on the lists) that are out of date, or
>> > new things that aren't even mentioned, which makes getting up speed
>> > somewhat difficult.
>>
>> Writing down where you think there are issues would be a help so that
>> we can see if there is some way we can improve that.
>>
>>
>>
>> Yes - please indicate any areas in the documentation you believe need
>> updated, changed, or added.  I have been trying to bring things up-to-da=
te
>> in several manuals during the 2.5 process.  So, identifying areas in the
>> 2.5 manual set would be very helpful.  To be sure you are viewing 2.5
>> manuals use the following form for the URL:
>>
>>       yoctoproject.org/docs/2.5/<manual_folder>/<manual_folder>.html
>>
>>       where <manual_folder> is
>>
>>            brief-yoctoprojectqs
>>
>>            bsp-guide
>>
>>            overview-manual
>>
>>            dev-manual
>>
>>            sdk-manual
>>
>>            profile-manual
>>
>>            kernel-dev
>>
>>            ref-manual
>>
>>            toaster-manual
>>
>>            bitbake-user-guide
>>
>> Thanks
>>
>> Scott
>>
>> Is there any special process to get manual updates accepted? I am asking
>> because I sent an update for the BUILDHISTORY_FEATURES variable to the
>> Yocto mailing list (https://lists.yoctoproject.or
>> g/pipermail/yocto/2018-January/039787.html) at the end of January (last
>> pinged a month ago) and it still has not made it into the manual AFAICT =
and
>> it has not received any feedback.
>>
>> //Peter
>>
>>
>>
>>
>>
>
>

--000000000000723b59056b64490e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Peter, <br><br></div>See <a href=3D"https:/=
/www.yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#var-BUILDHISTORY_=
FEATURES">https://www.yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#=
var-BUILDHISTORY_FEATURES</a> for the re-ordered list.<br><br></div>Thanks,=
 <br></div>Scott<br></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Fri, May 4, 2018 at 9:53 AM, Scott Rifenbark <span dir=3D"ltr">=
&lt;<a href=3D"mailto:srifenbark@gmail.com" target=3D"_blank">srifenbark@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><div><div>Sorry man... I just stuck the new one in there.=C2=A0 Alpha=
betical would be best.=C2=A0 I will fix that. <br><br></div>Thanks, <br></d=
iv>Scott<br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Fri, May 4, 2018 at 9:26 AM, Pe=
ter Kjellerstedt <span dir=3D"ltr">&lt;<a href=3D"mailto:peter.kjellerstedt=
@axis.com" target=3D"_blank">peter.kjellerstedt@axis.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"SV">
<div class=3D"m_18528078194147615m_-2968784877136477045WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#943634" lang=3D"EN-US">Not sur=
e why you reordered the descriptions of the features from image,package,sdk=
,task to image,task,package,sdk (I added =E2=80=9Ctask=E2=80=9D at the end =
since that kept them sorted
 alphabetically), but apart from that it looks fine to me.<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#943634" lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#943634" lang=3D"EN-US">//Peter=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#943634" lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Scott Rifenbark [mailto:<a href=3D"mailto:srifenbark@gmail.com"=
 target=3D"_blank">srifenbark@gmail.com</a>]
<br>
<b>Sent:</b> den 3 maj 2018 15:58<br>
<b>To:</b> Peter Kjellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis=
.com" target=3D"_blank">peter.kjellerstedt@axis.com</a>&gt;<br>
<b>Cc:</b> Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org" target=3D"_blank">richard.purdie@linuxfoundatio<wbr>n.org</a>&gt;;=
 openembedded-core &lt;<a href=3D"mailto:openembedded-core@lists.openembedd=
ed.org" target=3D"_blank">openembedded-core@lists.opene<wbr>mbedded.org</a>=
&gt;; Yocto discussion list &lt;<a href=3D"mailto:yocto@yoctoproject.org" t=
arget=3D"_blank">yocto@yoctoproject.org</a>&gt;</span></p><div><div class=
=3D"m_18528078194147615h5"><br>
<b>Subject:</b> Re: [OE-core] 2.6 planning proposals and meeting<u></u><u><=
/u></div></div><p></p>
</div>
</div><div><div class=3D"m_18528078194147615h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi Peter, <u></u><u><=
/u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Thanks for the patch.=
=C2=A0 I have applied it to the 2.5 version of the Yocto Project Reference =
Manual (see
<a href=3D"https://yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#var=
-BUILDHISTORY_FEATURES" target=3D"_blank">
https://yoctoproject.org/docs/<wbr>2.5/ref-manual/ref-manual.html<wbr>#var-=
BUILDHISTORY_FEATURES</a>).=C2=A0 You can also see
<a href=3D"https://yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#var=
-BUILDHISTORY_FEATURES" target=3D"_blank">
https://yoctoproject.org/docs/<wbr>2.5/ref-manual/ref-manual.html<wbr>#var-=
BUILDHISTORY_FEATURES</a> for the commit in the yocto-docs repository.<u></=
u><u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Please look it over a=
s I did a bit of modification for manual purposes.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Regards, <u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Scott<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Thu, May 3, 2018 at 12:29 AM, Peter Kjellerstedt =
&lt;<a href=3D"mailto:peter.kjellerstedt@axis.com" target=3D"_blank">peter.=
kjellerstedt@axis.com</a>&gt; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#943634" lang=3D"EN-US">=C2=A0<=
/span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#943634" lang=3D"EN-US">=C2=A0<=
/span><u></u><u></u></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US">
<a href=3D"mailto:openembedded-core-bounces@lists.openembedded.org" target=
=3D"_blank">
openembedded-core-bounces@list<wbr>s.openembedded.org</a> [mailto:<a href=
=3D"mailto:openembedded-core-bounces@lists.openembedded.org" target=3D"_bla=
nk">openembedded-core-boun<wbr>ces@lists.openembedded.org</a>]
<b>On Behalf Of </b>Scott Rifenbark<br>
<b>Sent:</b> den 1 maj 2018 16:56<br>
<b>To:</b> Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org" target=3D"_blank">richard.purdie@linuxfoundatio<wbr>n.org</a>&gt;<=
br>
<b>Cc:</b> openembedded-core &lt;<a href=3D"mailto:openembedded-core@lists.=
openembedded.org" target=3D"_blank">openembedded-core@lists.opene<wbr>mbedd=
ed.org</a>&gt;<br>
<b>Subject:</b> Re: [OE-core] 2.6 planning proposals and meeting</span><u><=
/u><u></u></p>
</div>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Tue, May 1, 2018 at 7:46 AM,=
 Richard Purdie &lt;</span><a href=3D"mailto:richard.purdie@linuxfoundation=
.org" target=3D"_blank"><span lang=3D"EN-US">richard.purdie@linuxfoundatio<=
wbr>n.org</span></a><span lang=3D"EN-US">&gt;
 wrote:</span><u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-=
bottom:5.0pt">
<p class=3D"MsoNormal">Hi,<br>
<br>
On Fri, 2018-04-20 at 08:02 -0400, Daniel F. Dickinson wrote:<br>
&gt; I&#39;m relatively new to OE; I&#39;ve written a couple of pre-alpha l=
ayers<br>
&gt; to try some idea, and worked on meta-openembedded, but I&#39;ve not ha=
d a<br>
&gt; chance to go in depth on the Yocto documentation, and at the some<br>
&gt; there see to be things (based on the lists) that are out of date, or<b=
r>
&gt; new things that aren&#39;t even mentioned, which makes getting up spee=
d<br>
&gt; somewhat difficult.<br>
<br>
Writing down where you think there are issues would be a help so that<br>
we can see if there is some way we can improve that.<u></u><u></u></p>
</blockquote>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Yes - please indicate=
 any areas in the documentation you believe need updated, changed, or added=
.=C2=A0 I have been trying to bring things up-to-date in several manuals du=
ring the 2.5 process.=C2=A0
 So, identifying areas in the 2.5 manual set would be very helpful.=C2=A0 T=
o be sure you are viewing 2.5 manuals use the following form for the URL:<u=
></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">=C2=A0 =C2=A0 =C2=A0 =
<a href=3D"http://yoctoproject.org/docs/2.5/" target=3D"_blank">
yoctoproject.org/docs/2.5/</a>&lt;man<wbr>ual_folder&gt;/&lt;manual_folder&=
gt;.<wbr>html<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">=C2=A0 =C2=A0 =C2=A0 =
where &lt;manual_folder&gt; is
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 brief-yocto=
projectqs<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 bsp-guide<u=
></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 overview-ma=
nual<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 dev-manual<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 sdk-manual<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 profile-man=
ual<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 kernel-dev<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 ref-manual<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 toaster-man=
ual<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0 bitbake-user-guide<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;margin-left:5.25pt">
Scott<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#943634" lang=3D"EN-US">Is ther=
e any special process to get manual updates accepted? I am asking because I=
 sent an update for the BUILDHISTORY_FEATURES variable
 to the Yocto mailing list (<a href=3D"https://lists.yoctoproject.org/piper=
mail/yocto/2018-January/039787.html" target=3D"_blank">https://lists.yoctop=
roject.or<wbr>g/pipermail/yocto/2018-January<wbr>/039787.html</a>) at the e=
nd of January (last pinged a month ago) and it
 still has not made it into the manual AFAICT and it has not received any f=
eedback.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#943634" lang=3D"EN-US">//Peter=
</span><span style=3D"color:#888888"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#943634" lang=3D"EN-US">=C2=A0<=
/span><span style=3D"color:#888888"><u></u><u></u></span></p>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--000000000000723b59056b64490e--
