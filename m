Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CBE0E006C0
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 18:06:36 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so1407445lbo.35
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 18:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=T4YL50CoENayk+Sj5wzV5gnVKzRQpS6zJboRSLDlc7s=;
	b=vDGBnw8FtY6SGLU5w7Cgf0Yad9pYnnGls1LCM/Io9P5QkYDGrdC03PcS6gkOMmnHe1
	roktLJZdbXfk5Mlxmn/YnMQ4qA+6FfuBkmVUNesaVsY8UgCd1Q4Of5OA7mivk3k2DcTd
	fo11DluXtDuGs9x/4pRTgavco7073dkiGoeNv79e9FQm9Gv7N/BqodYgpzcUU6mFLD/V
	CkLHVWuGHWYZGSVczAkkrFPzslmL3jtYjtTi8gssAxa1WPRj2j34CplWmeYJ7fag30dx
	R62Fo3l1KTr1ExjAuwKbC0d1DVHmbe2gTz6MxUcSHpvI3sNvhz1zJmShBi7gXRqM3qdt
	8sdA==
Received: by 10.112.28.65 with SMTP id z1mr4307313lbg.119.1355018795296; Sat,
	08 Dec 2012 18:06:35 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.42.162 with HTTP; Sat, 8 Dec 2012 18:06:15 -0800 (PST)
In-Reply-To: <58D08629-AD55-4693-8F56-83EA0A52CA77@keylevel.com>
References: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
	<CABcZANm7UGMYO1BRK8k9EQdGrDG6w013S-nkQrCgFe5O+4v1SQ@mail.gmail.com>
	<58D08629-AD55-4693-8F56-83EA0A52CA77@keylevel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sat, 8 Dec 2012 19:06:15 -0700
X-Google-Sender-Auth: ZmHsOX3CNTxo95Duq-cuP5su3vw
Message-ID: <CABcZANkw6yU2HwRqnd9Liokc1d67Ngmxv-3eEc2OOmQYD+q7AQ@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
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
X-List-Received-Date: Sun, 09 Dec 2012 02:06:37 -0000
Content-Type: multipart/alternative; boundary=bcaec554d9d6f528f104d061e550

--bcaec554d9d6f528f104d061e550
Content-Type: text/plain; charset=UTF-8

On Sat, Dec 8, 2012 at 5:54 PM, Chris Tapp <opensource@keylevel.com> wrote:

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


Try making use of bitbake-layers show-appends (iirc)
-- 
Christopher Larson

--bcaec554d9d6f528f104d061e550
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat, Dec 8=
, 2012 at 5:54 PM, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D"mailto:opens=
ource@keylevel.com" target=3D"_blank">opensource@keylevel.com</a>&gt;</span=
> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"adM"><div class=3D"h5"><div>On=
 9 Dec 2012, at 00:11, Chris Larson wrote:</div><br><blockquote type=3D"cit=
e"><div class=3D"gmail_extra">

On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D=
"mailto:opensource@keylevel.com" target=3D"_blank">opensource@keylevel.com<=
/a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margi=
n-left:0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex">



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

</blockquote></div><br><br clear=3D"all"><div>Try making use of bitbake-lay=
ers show-appends (iirc)</div>-- <br>Christopher Larson<br>
</div>

--bcaec554d9d6f528f104d061e550--
