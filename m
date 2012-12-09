Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25C94E00770
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 08:31:20 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so1641341lbo.35
	for <yocto@yoctoproject.org>; Sun, 09 Dec 2012 08:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=ot1HO/7DDCKbalWC9NOGpS2OXlAHztkouRQCpfQRcCk=;
	b=OqMcloGL+HsAWIOtpi7SRs2oDGEvzi21cd8IBxAcY8NbLv1SIuV+BUCqpapJm0vXo1
	YyIIoOT6VOcyJDMDqurEhq1WS6uOSHwjbW1iUZiR4OZLwX9aj59Sochawq9Gb/UxxVqK
	7Z5yS7icLAvE7f1dUFwLJZAHGWZu7STJpRanFDrYTb2w/PMobtG0Zi0RLjPLJUZoUeCF
	GU0Np24eNOt1JcjjRLF9qPMGX7rnspLrHSCsaBFtbuAE0HjAuVdfXYVcGgliqJf7JIOM
	vwTaXbaQ4o8jCpVPb/rY5nRNBYMiFSQx65deA7bZyJ9Fs8m11eW5TqlAe2ECXI3MOH/U
	nFSg==
Received: by 10.112.28.65 with SMTP id z1mr4954997lbg.119.1355070679740; Sun,
	09 Dec 2012 08:31:19 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.42.162 with HTTP; Sun, 9 Dec 2012 08:30:58 -0800 (PST)
In-Reply-To: <50C4A54C.9060201@windriver.com>
References: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
	<CABcZANm7UGMYO1BRK8k9EQdGrDG6w013S-nkQrCgFe5O+4v1SQ@mail.gmail.com>
	<58D08629-AD55-4693-8F56-83EA0A52CA77@keylevel.com>
	<CADkTA4ORbfM0zT5g5j4pSMUtfH7LJmSsdbckahXPu=2FDiDv7g@mail.gmail.com>
	<26A95DB9-6C86-4677-94FA-48C0E0AFF2B9@keylevel.com>
	<50C4A54C.9060201@windriver.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 9 Dec 2012 09:30:58 -0700
X-Google-Sender-Auth: tVJXvzgUi5HItyDF-9fNX2z4Y2g
Message-ID: <CABcZANnEy4WsPqRrQhd99HfeyXX59fabhVtnALzxz=wfOXToYQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: bbappending a bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 09 Dec 2012 16:31:21 -0000
Content-Type: multipart/alternative; boundary=bcaec554d9d682f05304d06dfa1f

--bcaec554d9d682f05304d06dfa1f
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 9, 2012 at 7:50 AM, Bruce Ashfield <bruce.ashfield@windriver.com
> wrote:

> On 12-12-09 5:48 AM, Chris Tapp wrote:
>
>> On 9 Dec 2012, at 04:47, Bruce Ashfield wrote:
>>
>>
>>>
>>>
>>> On Sat, Dec 8, 2012 at 7:54 PM, Chris Tapp <opensource@keylevel.com
>>> <mailto:opensource@keylevel.**com <opensource@keylevel.com>>> wrote:
>>>
>>>     On 9 Dec 2012, at 00:11, Chris Larson wrote:
>>>
>>>      On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp
>>>>     <opensource@keylevel.com <mailto:opensource@keylevel.**com<opensource@keylevel.com>>>
>>>> wrote:
>>>>
>>>>         Is it possible to have more than one bbappend applied to a
>>>>         recipe?
>>>>
>>>>         I'm using meta-cedartrail with my own layer (which is set as
>>>>         lower priority).
>>>>
>>>>         Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to
>>>>         be able to enable CONFIG_HID_APPLE in my layer so my Apple
>>>>         keyboard works (and keep meta-cedartrail 'clean'). Is it
>>>>         possible to use another linux-yocto_3.0.bbappend in my layer?
>>>>         I've given it a try, but it's not working and I thought it
>>>>         would be an idea to see if it __should__ before I try and fix
>>>>         it ;-)
>>>>
>>>>
>>>>     All bbappends from all layers are applied, in layer priority order.
>>>>
>>>
>>>     Thanks, I was hoping that was the case.
>>>
>>>     I wonder why this isn't working then - I think I've done it as
>>>     shown in the dev manual...
>>>
>>>
>>> Is it something other than the bbappends ? i.e. are you sure you have
>>> all the required
>>> dependencies for CONFIG_HID_APPLE already enabled, or in the same
>>> fragment
>>> you are appending ?
>>>
>>
>> menuconfig shows that the dependencies are ok. I've got a single
>> fragment referenced using a SRC_URI in the bbappend which sets
>> FILESEXTRAPATHS_prepend. The .cfg file just sets:
>>
>> CONFIG_HID_APPLE=y
>>
>> I can't find my .cfg file in the work area, so it seems as if it's not
>> being picked up.
>>
>
I'd suggest putting your .bbappend on a pastebin so we can inspect it.
-- 
Christopher Larson

--bcaec554d9d682f05304d06dfa1f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><div class=3D"gmail_quote">On Sun, Dec 9, 2012 a=
t 7:50 AM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ash=
field@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;=
</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 12-12-09 5:48 AM, Chris=
 Tapp wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
On 9 Dec 2012, at 04:47, Bruce Ashfield wrote:<br>
<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
<br>
<br>
On Sat, Dec 8, 2012 at 7:54 PM, Chris Tapp &lt;<a href=3D"mailto:opensource=
@keylevel.com" target=3D"_blank">opensource@keylevel.com</a><br></div><div =
class=3D"im">
&lt;mailto:<a href=3D"mailto:opensource@keylevel.com" target=3D"_blank">ope=
nsource@keylevel.<u></u>com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 On 9 Dec 2012, at 00:11, Chris Larson wrote:<br>
<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
=C2=A0 =C2=A0 On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp<br></div><div><div=
 class=3D"h5">
=C2=A0 =C2=A0 &lt;<a href=3D"mailto:opensource@keylevel.com" target=3D"_bla=
nk">opensource@keylevel.com</a> &lt;mailto:<a href=3D"mailto:opensource@key=
level.com" target=3D"_blank">opensource@keylevel.<u></u>com</a>&gt;&gt; wro=
te:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Is it possible to have more than one bbappend a=
pplied to a<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 recipe?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I&#39;m using meta-cedartrail with my own layer=
 (which is set as<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 lower priority).<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Meta-cedartrail has a linux-yocto_3.0.bbappend,=
 but I want to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 be able to enable CONFIG_HID_APPLE in my layer =
so my Apple<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 keyboard works (and keep meta-cedartrail &#39;c=
lean&#39;). Is it<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 possible to use another linux-yocto_3.0.bbappen=
d in my layer?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I&#39;ve given it a try, but it&#39;s not worki=
ng and I thought it<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 would be an idea to see if it __should__ before=
 I try and fix<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 it ;-)<br>
<br>
<br>
=C2=A0 =C2=A0 All bbappends from all layers are applied, in layer priority =
order.<br>
</div></div></blockquote><div><div class=3D"h5">
<br>
=C2=A0 =C2=A0 Thanks, I was hoping that was the case.<br>
<br>
=C2=A0 =C2=A0 I wonder why this isn&#39;t working then - I think I&#39;ve d=
one it as<br>
=C2=A0 =C2=A0 shown in the dev manual...<br>
<br>
<br>
Is it something other than the bbappends ? i.e. are you sure you have<br>
all the required<br>
dependencies for CONFIG_HID_APPLE already enabled, or in the same fragment<=
br>
you are appending ?<br>
</div></div></blockquote><div><div class=3D"h5">
<br>
menuconfig shows that the dependencies are ok. I&#39;ve got a single<br>
fragment referenced using a SRC_URI in the bbappend which sets<br>
FILESEXTRAPATHS_prepend. The .cfg file just sets:<br>
<br>
CONFIG_HID_APPLE=3Dy<br>
<br>
I can&#39;t find my .cfg file in the work area, so it seems as if it&#39;s =
not<br>
being picked up.<br></div></div></blockquote></blockquote><div><br></div><d=
iv>I&#39;d suggest putting your .bbappend on a pastebin so we can inspect i=
t.</div></div>-- <br>Christopher Larson<br>
</div>

--bcaec554d9d682f05304d06dfa1f--
