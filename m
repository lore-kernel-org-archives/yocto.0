Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92FEFE006C3
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 20:47:03 -0800 (PST)
Received: by mail-vc0-f176.google.com with SMTP id fo13so1768046vcb.35
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 20:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=em60CCiWnjp6zAb4etA6X4jG8rDZ51CMQphB5fCTfgk=;
	b=b5Sjl5IO7rqiqQQNerwnTZLrJdTog2oLTSBm3KOis3k27HzKTxN6caP6xhaiiYTB4X
	cRnjvD+GDr7kdS7c1MyGTwPjreEHTbp7NEptaCCN3aFGYGBlMus0VWAbgHJ6b1YMYiX4
	WmTuuQkx5vfPXVUJFRFOCRaySDW2/8WYPoWWDJY8Z9UrPFKNFiztOsjmNcxrnDEO0TAK
	OAm2mAk7pOoGTBk9mu666uq7Og2ZKCl3bdNvMlmnSyh3ts4TwHggcSoIH/jhacOQHwoZ
	xu5PNccMoj8f3/N+DUj2Vsr5qceh90utc8s98BiiHv+4M+jhY58sNRjTnGtR0NIbNmLk
	HNxQ==
MIME-Version: 1.0
Received: by 10.220.150.136 with SMTP id y8mr6545937vcv.34.1355028422695; Sat,
	08 Dec 2012 20:47:02 -0800 (PST)
Received: by 10.58.161.78 with HTTP; Sat, 8 Dec 2012 20:47:02 -0800 (PST)
In-Reply-To: <58D08629-AD55-4693-8F56-83EA0A52CA77@keylevel.com>
References: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
	<CABcZANm7UGMYO1BRK8k9EQdGrDG6w013S-nkQrCgFe5O+4v1SQ@mail.gmail.com>
	<58D08629-AD55-4693-8F56-83EA0A52CA77@keylevel.com>
Date: Sat, 8 Dec 2012 23:47:02 -0500
Message-ID: <CADkTA4ORbfM0zT5g5j4pSMUtfH7LJmSsdbckahXPu=2FDiDv7g@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
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
X-List-Received-Date: Sun, 09 Dec 2012 04:47:03 -0000
Content-Type: multipart/alternative; boundary=f46d043d64b3cb9a9d04d064230a

--f46d043d64b3cb9a9d04d064230a
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Dec 8, 2012 at 7:54 PM, Chris Tapp <opensource@keylevel.com> wrote:

> On 9 Dec 2012, at 00:11, Chris Larson wrote:
>
> On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp <opensource@keylevel.com>wrote:
>
>> Is it possible to have more than one bbappend applied to a recipe?
>>
>> I'm using meta-cedartrail with my own layer (which is set as lower
>> priority).
>>
>> Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to be able to
>> enable CONFIG_HID_APPLE in my layer so my Apple keyboard works (and keep
>> meta-cedartrail 'clean'). Is it possible to use another
>> linux-yocto_3.0.bbappend in my layer? I've given it a try, but it's not
>> working and I thought it would be an idea to see if it __should__ before I
>> try and fix it ;-)
>>
>
> All bbappends from all layers are applied, in layer priority order.
>
>
> Thanks, I was hoping that was the case.
>
> I wonder why this isn't working then - I think I've done it as shown in
> the dev manual...
>

Is it something other than the bbappends ? i.e. are you sure you have all
the required
dependencies for CONFIG_HID_APPLE already enabled, or in the same fragment
you are appending ?

Bruce


>
> --
> Christopher Larson
>
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--f46d043d64b3cb9a9d04d064230a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat, D=
ec 8, 2012 at 7:54 PM, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D"mailto:o=
pensource@keylevel.com" target=3D"_blank">opensource@keylevel.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><div><di=
v><div class=3D"h5"><div>On 9 Dec 2012, at 00:11, Chris Larson wrote:</div>=
<br>
<blockquote type=3D"cite"><div class=3D"gmail_extra">On Sat, Dec 8, 2012 at=
 5:07 PM, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D"mailto:opensource@key=
level.com" target=3D"_blank">opensource@keylevel.com</a>&gt;</span> wrote:<=
br><div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;=
margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color=
:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<div>Is it possible to have more than one bbappend applied to a recipe?<br>
<br>
I&#39;m using meta-cedartrail with my own layer (which is set as lower prio=
rity).<br>
<br>
Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to be able to en=
able CONFIG_HID_APPLE in my layer so my Apple keyboard works (and keep meta=
-cedartrail &#39;clean&#39;). Is it possible to use another linux-yocto_3.0=
.bbappend in my layer? I&#39;ve given it a try, but it&#39;s not working an=
d I thought it would be an idea to see if it __should__ before I try and fi=
x it ;-)</div>


</blockquote></div><br>All bbappends from all layers are applied, in layer =
priority order.</div></blockquote><div><br></div></div></div><div>Thanks, I=
 was hoping that was the case.</div><div><br></div><div>I wonder why this i=
sn&#39;t working then - I think I&#39;ve done it as shown in the dev manual=
...</div>
</div></div></blockquote><div><br></div><div>Is it something other than the=
 bbappends ? i.e. are you sure you have all the required</div><div>dependen=
cies for CONFIG_HID_APPLE already enabled, or in the same fragment</div>
<div>you are appending ?</div><div><br></div><div>Bruce</div><div>=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><div><br=
><blockquote type=3D"cite">
<div class=3D"gmail_extra">-- <br>Christopher Larson<br>
</div>
</blockquote></div><br><div>
<span style=3D"text-indent:0px;letter-spacing:normal;font-variant:normal;te=
xt-align:auto;font-style:normal;font-weight:normal;line-height:normal;borde=
r-collapse:separate;text-transform:none;font-size:medium;white-space:normal=
;font-family:Helvetica;word-spacing:0px"><div>
Chris Tapp</div><div><br></div><div><a href=3D"mailto:opensource@keylevel.c=
om" target=3D"_blank">opensource@keylevel.com</a></div><div><a href=3D"http=
://www.keylevel.com" target=3D"_blank">www.keylevel.com</a></div><div><br><=
/div>
</span><br>
</div>
<br></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Th=
ou shalt not follow the NULL pointer, for chaos and madness await thee at i=
ts end&quot;<br>
</div>

--f46d043d64b3cb9a9d04d064230a--
