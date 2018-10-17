Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B9C1E00BBF; Tue, 16 Oct 2018 23:54:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA4CE00B5E
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 23:54:40 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id q50so25140605otd.0
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 23:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=lcj0cuNp0boKpe0fMHqkaFrp8AXJFO1H44V//PbkY48=;
	b=uuj/wvDxYLsxlhzGJ11cro5vLovgcFmY7WB4HssDVVze/kpsMVlSwp0TqgoTcPgHlC
	j58rMF9I9/mn3g1W9dHoGCgdPaaufu+xxInC7Fp8W2gIz2fEU8e86I5D+8ARNYgjup6m
	9uUBqFWIhIKclNutVMWogWVtu5ehLf91Y5vyvSk1G15Fqw6Ep5flMAQxUqjrRO/yaMLK
	iJ4L2VbuYOTkTNCliZlxbssuTzehJtXmWdiqLgm8ojmVcSXByHd4NcH2N+UlEqq+howj
	sktD74qPFR7IqNRr/lWrZOwG7OcqGlqhXT+y+i+1iJo57jQ3Btfv93O77rmqyLM7gwBb
	CrMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=lcj0cuNp0boKpe0fMHqkaFrp8AXJFO1H44V//PbkY48=;
	b=GneN31oI5L85EwbRYCD+KRsNwmqzFPTCG93qpLpsQWFUGems8oBVwrB14B3BY9qkY6
	ZhmVLAZ6UTF18GAi8zb9nLTjB08Aq2Me9MLM4wyX7RlEQI+8XEUMlLO2lhwNSgSkx/zJ
	vyLwwB6soBrzrJS11V5ZXlUGxz98HKl8pQkf8CFgkakuRAXXJLuTrMRg+3gouuntXt2A
	7449yirmYvB0dcppCJKynCWRvCem3derGiUvEWVdQOyZ8BOXbXMF2ID3k6S/fB8QI4g7
	RQ0azrmX2nDTivGPJniljSYvK7+/Dq0ZYV9jMA7n066OGJlCy8rlJOD0O/Kajh24SEvx
	qqeg==
X-Gm-Message-State: ABuFfoh20Z44++R4leaAM0D5oWmRfEOu5ah0WIu3kh8KP58XYK2KEQ7R
	14t04iKw+zmJLSwL77CLwKgZgfJZFmX8uVW2/kg=
X-Google-Smtp-Source: ACcGV63QKchOoFEDOtefLyl1qeDwqtaAcxrbSD9HTM38QZfY9FtqFPDxs67DcfBvh4vSL8BBx58fX0jCgyKBKclMvp4=
X-Received: by 2002:a9d:724f:: with SMTP id a15mr16265647otk.320.1539759279505;
	Tue, 16 Oct 2018 23:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=qcm1Eyy-mYABFcCdRA@mail.gmail.com>
	<CAJTo0LZ=eCkuygCcfLVaoGgLyVY2Ljf7SVOYX_gAXRvWGCDUqQ@mail.gmail.com>
	<CAEhQi8kM6sy9Gq4fkCWMeABV9ZKTak2YTQFzib3GT7t5Wm7fLw@mail.gmail.com>
	<CAJTo0LYj47+tp3cfN9_9rdw-gFz8MWy2Mwq4Beqb25hwKSbAwA@mail.gmail.com>
	<CAEhQi8m5Vs9dyoFkGefqU5NHcvJzf_nMmzWEOk6fdxRznDSGfw@mail.gmail.com>
	<CAJTo0LZoR4ywkGpaCBZfJHWZP_UdtsdYqqzoeA4XyiFS3f3Q8A@mail.gmail.com>
	<CAJ86T=WDcdfJyWz9bCqSYfBA-OR_SZjg8mcDAeZjfhCELn2+OA@mail.gmail.com>
	<CAEhQi8kYtQHYp5EQkA_LOeJvTvwAb6yvpr_CybWhvJsxFPU=iA@mail.gmail.com>
In-Reply-To: <CAEhQi8kYtQHYp5EQkA_LOeJvTvwAb6yvpr_CybWhvJsxFPU=iA@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 17 Oct 2018 08:54:28 +0200
Message-ID: <CAEhQi8n7my1YS_84AqNtWq7C_cqXyQQYmTsY3nHPGRMcoc5RPg@mail.gmail.com>
To: armccurdy@gmail.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [poky][meta] already-stripped ignore if set for any other package then INSANE_SKIP_${PN}
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
X-List-Received-Date: Wed, 17 Oct 2018 06:54:41 -0000
Content-Type: multipart/alternative; boundary="000000000000e503d705786724c0"

--000000000000e503d705786724c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Maybe update the documentation I think Andre McCurdy stated it clearly.
English is not my first language but maybe something like

"Depending on when a QA test is running it may or may not be disabled
per-package basis. For example "already-stripped" can only be applied on
INSANE_SKIP_${PN} while "dev-so" can be disabled per-package basis."

BR
M=C3=A5ns Zigher

Den ons 17 okt. 2018 kl 06:39 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com=
>:

> Thank you for the clarification that helps
>
> BR
> M=C3=A5ns Zigher
>
> Den ons 17 okt. 2018 kl 00:36 skrev Andre McCurdy <armccurdy@gmail.com>:
>
>> On Tue, Oct 16, 2018 at 6:47 AM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>> > It's only already-stripped that needs to be on PN, because the
>> > stripping happens before packaging.  When already-stripped files,
>> > there are no packages yet.
>> >
>> > Ross
>> > On Tue, 16 Oct 2018 at 14:22, M=C3=A5ns Zigher <mans.zigher@gmail.com>
>> wrote:
>> >>
>> >> Ok so it is not supported to have the already-stripped on a package
>> level? I cannot set it on PN because I have some so-files that is alread=
y
>> stripped and others that is not so that was why I wanted to create a
>> package for the already-stripped so-files and use the already-stripped o=
n
>> that package. Anyway thanks for the help I ended up creating a new recip=
e
>> for the already-stripped so-files. But is all the INSANE_SKIP flags only
>> supported for PN? I think I have seen dev-so used on an package level?
>>
>> The key point is when the QA test is run. In the case of
>> "already-stripped", the test is run as part of split_and_strip_files()
>> in package.bbclass, ie as part of the normal stripping process. As
>> Ross mentions, it's therefore run before the build output is split
>> into packages.
>>
>> The "dev-so" QA test is run as part of do_package_qa() in
>> insane.bbclass and can be disabled on a per-package basis.
>>
>> As far as I know, there's no documentation to say which QA tests can
>> be disabled on a per-package basis and which can not. If you want to
>> be sure you need to read the source. Start by grepping for the QA test
>> you are interested in and also for "package_qa_handle_error" (which is
>> the function which is called when a QA test fails). Those two together
>> should help locate the place where the QA test is run... and from that
>> you can inspect the code to see if/how INSANE_SKIP is applied. For
>> example, in the case of "already-stripped", the test is run from
>> split_and_strip_files() and only INSANE_SKIP_${PN} is checked:
>>
>>
>> http://git.openembedded.org/openembedded-core/tree/meta/classes/package.=
bbclass?h=3Dsumo#n1010
>>
>> (In this case, the code could perhaps be even clearer if checking
>> whether "already-stripped" is found in INSANE_SKIP_${PN} was done once
>> at the start of the function, rather than being determining again and
>> again for each file inside the "for every elf file" loop).
>>
>> >> BR
>> >> M=C3=A5ns Zigher
>> >>
>> >> Den m=C3=A5n 15 okt. 2018 kl 22:23 skrev Burton, Ross <
>> ross.burton@intel.com>:
>> >>>
>> >>> Ah yes, of course.  Stripping happens *before* package splitting, so
>> >>> it doesn't make sense to have it set on PN-package1.  Just set it on
>> >>> PN and it should work.
>> >>>
>> >>> Ross
>> >>> On Mon, 15 Oct 2018 at 08:18, M=C3=A5ns Zigher <mans.zigher@gmail.co=
m>
>> wrote:
>> >>> >
>> >>> > Hi,
>> >>> >
>> >>> > Sorry I see now that there is a typo. What I mean is that in the
>> default package I am not suing INSANE_SKIP but for packag1 I need
>> already-stripped
>> >>> >
>> >>> > INSANE_SKIP_${PN}-package1 =3D " \
>> >>> > dev-so \
>> >>> > already-stripped \
>> >>> > "
>> >>> >
>> >>> > But I continuously get the error that they are already-stripped. S=
o
>> is it supposed to work because I don't understand  the code in the
>> package.bbclass since it looks like it is only checking for
>> already-stripped in ${PN} and not ${PN}-package1?
>> >>> >
>> >>> > BR
>> >>> > M=C3=A5ns Zigher
>> >>> >
>> >>> >
>> >>> >
>> >>> > Den fre 12 okt. 2018 kl 16:30 skrev Burton, Ross <
>> ross.burton@intel.com>:
>> >>> >>
>> >>> >> On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher <mans.zigher@gmail=
.com>
>> wrote:
>> >>> >> > I have been struggling with a problem where I need to create a
>> package in a recipe and set already-stripped for that package. The packa=
ge
>> in question is not the the default one so I am trying to set it by using
>> >>> >> >
>> >>> >> > INSANE_SKIP_${PN} +=3D " \
>> >>> >> > dev-so \
>> >>> >> > already-stripped \
>> >>> >> > "
>> >>> >>
>> >>> >> You say no the default one, but PN is "the default" one, so that'=
s
>> >>> >> probably why that doesn't work.
>> >>> >>
>> >>> >> Ross
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000e503d705786724c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Maybe update the documentation I think Andre McCurdy =
stated it clearly. English is not my first language but maybe something lik=
e=C2=A0</div><div><br></div>&quot;Depending on when a QA test is running it=
 may or may not be disabled per-package basis. For example &quot;already-st=
ripped&quot; can only be applied on INSANE_SKIP_${PN} while &quot;dev-so&qu=
ot; can be disabled per-package basis.&quot;<div><br></div><div>BR</div><di=
v>M=C3=A5ns Zigher</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r">Den ons 17 okt. 2018 kl 06:39 skrev M=C3=A5ns Zigher &lt;<a href=3D"mail=
to:mans.zigher@gmail.com">mans.zigher@gmail.com</a>&gt;:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">Thank you for the clarification that=
 helps<div><br></div><div>BR</div><div>M=C3=A5ns Zigher</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr">Den ons 17 okt. 2018 kl 00:36 skrev=
 Andre McCurdy &lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank"=
>armccurdy@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tu=
e, Oct 16, 2018 at 6:47 AM, Burton, Ross &lt;<a href=3D"mailto:ross.burton@=
intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<br>
&gt; It&#39;s only already-stripped that needs to be on PN, because the<br>
&gt; stripping happens before packaging.=C2=A0 When already-stripped files,=
<br>
&gt; there are no packages yet.<br>
&gt;<br>
&gt; Ross<br>
&gt; On Tue, 16 Oct 2018 at 14:22, M=C3=A5ns Zigher &lt;<a href=3D"mailto:m=
ans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt; wrote=
:<br>
&gt;&gt;<br>
&gt;&gt; Ok so it is not supported to have the already-stripped on a packag=
e level? I cannot set it on PN because I have some so-files that is already=
 stripped and others that is not so that was why I wanted to create a packa=
ge for the already-stripped so-files and use the already-stripped on that p=
ackage. Anyway thanks for the help I ended up creating a new recipe for the=
 already-stripped so-files. But is all the INSANE_SKIP flags only supported=
 for PN? I think I have seen dev-so used on an package level?<br>
<br>
The key point is when the QA test is run. In the case of<br>
&quot;already-stripped&quot;, the test is run as part of split_and_strip_fi=
les()<br>
in package.bbclass, ie as part of the normal stripping process. As<br>
Ross mentions, it&#39;s therefore run before the build output is split<br>
into packages.<br>
<br>
The &quot;dev-so&quot; QA test is run as part of do_package_qa() in<br>
insane.bbclass and can be disabled on a per-package basis.<br>
<br>
As far as I know, there&#39;s no documentation to say which QA tests can<br=
>
be disabled on a per-package basis and which can not. If you want to<br>
be sure you need to read the source. Start by grepping for the QA test<br>
you are interested in and also for &quot;package_qa_handle_error&quot; (whi=
ch is<br>
the function which is called when a QA test fails). Those two together<br>
should help locate the place where the QA test is run... and from that<br>
you can inspect the code to see if/how INSANE_SKIP is applied. For<br>
example, in the case of &quot;already-stripped&quot;, the test is run from<=
br>
split_and_strip_files() and only INSANE_SKIP_${PN} is checked:<br>
<br>
=C2=A0 <a href=3D"http://git.openembedded.org/openembedded-core/tree/meta/c=
lasses/package.bbclass?h=3Dsumo#n1010" rel=3D"noreferrer" target=3D"_blank"=
>http://git.openembedded.org/openembedded-core/tree/meta/classes/package.bb=
class?h=3Dsumo#n1010</a><br>
<br>
(In this case, the code could perhaps be even clearer if checking<br>
whether &quot;already-stripped&quot; is found in INSANE_SKIP_${PN} was done=
 once<br>
at the start of the function, rather than being determining again and<br>
again for each file inside the &quot;for every elf file&quot; loop).<br>
<br>
&gt;&gt; BR<br>
&gt;&gt; M=C3=A5ns Zigher<br>
&gt;&gt;<br>
&gt;&gt; Den m=C3=A5n 15 okt. 2018 kl 22:23 skrev Burton, Ross &lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Ah yes, of course.=C2=A0 Stripping happens *before* package sp=
litting, so<br>
&gt;&gt;&gt; it doesn&#39;t make sense to have it set on PN-package1.=C2=A0=
 Just set it on<br>
&gt;&gt;&gt; PN and it should work.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Ross<br>
&gt;&gt;&gt; On Mon, 15 Oct 2018 at 08:18, M=C3=A5ns Zigher &lt;<a href=3D"=
mailto:mans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&g=
t; wrote:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Hi,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Sorry I see now that there is a typo. What I mean is that=
 in the default package I am not suing INSANE_SKIP but for packag1 I need a=
lready-stripped<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; INSANE_SKIP_${PN}-package1 =3D &quot; \<br>
&gt;&gt;&gt; &gt; dev-so \<br>
&gt;&gt;&gt; &gt; already-stripped \<br>
&gt;&gt;&gt; &gt; &quot;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; But I continuously get the error that they are already-st=
ripped. So is it supposed to work because I don&#39;t understand=C2=A0 the =
code in the package.bbclass since it looks like it is only checking for alr=
eady-stripped in ${PN} and not ${PN}-package1?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; BR<br>
&gt;&gt;&gt; &gt; M=C3=A5ns Zigher<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Den fre 12 okt. 2018 kl 16:30 skrev Burton, Ross &lt;<a h=
ref=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.co=
m</a>&gt;:<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher &lt;<a=
 href=3D"mailto:mans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.=
com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt; &gt; I have been struggling with a problem where I ne=
ed to create a package in a recipe and set already-stripped for that packag=
e. The package in question is not the the default one so I am trying to set=
 it by using<br>
&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;&gt; &gt; INSANE_SKIP_${PN} +=3D &quot; \<br>
&gt;&gt;&gt; &gt;&gt; &gt; dev-so \<br>
&gt;&gt;&gt; &gt;&gt; &gt; already-stripped \<br>
&gt;&gt;&gt; &gt;&gt; &gt; &quot;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; You say no the default one, but PN is &quot;the defau=
lt&quot; one, so that&#39;s<br>
&gt;&gt;&gt; &gt;&gt; probably why that doesn&#39;t work.<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; Ross<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>
</blockquote></div>

--000000000000e503d705786724c0--
