Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91417E013F7
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 02:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=8cdO9j1p2zKbyPwKVhPbx79x5OyZYe5fGNr3e8bqKqA=; 
	b=SOVxJBMX8UEQJDeZ6vNfLTGxpZ+FP0owFBWezZ8P0nzXd7HbJGjbIDv+N5mhD2bmGNocVUKR7UwdzRP8C0u7S/RbZ0Nlps8k8X9OGUxusBi3ghvwmM+jhxe9G5ytTgxJ;
Received: from [109.224.129.17] (port=30082
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1Ti0WP-0006rY-WE; Mon, 10 Dec 2012 10:23:38 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <BBF3222A-17DC-455A-8F79-A8CD0231179C@keylevel.com>
Date: Mon, 10 Dec 2012 10:23:37 +0000
Message-Id: <2FD32D91-25A9-486F-9E23-E25F8932B7A9@keylevel.com>
References: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
	<CABcZANm7UGMYO1BRK8k9EQdGrDG6w013S-nkQrCgFe5O+4v1SQ@mail.gmail.com>
	<58D08629-AD55-4693-8F56-83EA0A52CA77@keylevel.com>
	<CADkTA4ORbfM0zT5g5j4pSMUtfH7LJmSsdbckahXPu=2FDiDv7g@mail.gmail.com>
	<26A95DB9-6C86-4677-94FA-48C0E0AFF2B9@keylevel.com>
	<50C4A54C.9060201@windriver.com>
	<CABcZANnEy4WsPqRrQhd99HfeyXX59fabhVtnALzxz=wfOXToYQ@mail.gmail.com>
	<5A9D49A5-7CBB-4A2D-9119-3F52B212AC84@keylevel.com>
	<CABcZAN=Ob8u2QA0QEPyPsPnzxsLLsPjROq2PSc0jPJAOnDotLg@mail.gmail.com>
	<BBF3222A-17DC-455A-8F79-A8CD0231179C@keylevel.com>
To: Chris Larson <clarson@kergoth.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
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
X-List-Received-Date: Mon, 10 Dec 2012 10:23:39 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_AA907B3C-FD7D-4DD0-9FE9-8828AEB60968"

--Apple-Mail=_AA907B3C-FD7D-4DD0-9FE9-8828AEB60968
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

On 9 Dec 2012, at 16:57, Chris Tapp wrote:

>=20
> On 9 Dec 2012, at 16:47, Chris Larson wrote:
>=20
>>=20
>>=20
>> On Sun, Dec 9, 2012 at 9:44 AM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> On 9 Dec 2012, at 16:30, Chris Larson wrote:
>>=20
>>> On Sun, Dec 9, 2012 at 7:50 AM, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:
>>> On 12-12-09 5:48 AM, Chris Tapp wrote:
>>> On 9 Dec 2012, at 04:47, Bruce Ashfield wrote:
>>>=20
>>>=20
>>>=20
>>>=20
>>> On Sat, Dec 8, 2012 at 7:54 PM, Chris Tapp <opensource@keylevel.com
>>> <mailto:opensource@keylevel.com>> wrote:
>>>=20
>>>     On 9 Dec 2012, at 00:11, Chris Larson wrote:
>>>=20
>>>     On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp
>>>     <opensource@keylevel.com <mailto:opensource@keylevel.com>> =
wrote:
>>>=20
>>>         Is it possible to have more than one bbappend applied to a
>>>         recipe?
>>>=20
>>>         I'm using meta-cedartrail with my own layer (which is set as
>>>         lower priority).
>>>=20
>>>         Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want =
to
>>>         be able to enable CONFIG_HID_APPLE in my layer so my Apple
>>>         keyboard works (and keep meta-cedartrail 'clean'). Is it
>>>         possible to use another linux-yocto_3.0.bbappend in my =
layer?
>>>         I've given it a try, but it's not working and I thought it
>>>         would be an idea to see if it __should__ before I try and =
fix
>>>         it ;-)
>>>=20
>>>=20
>>>     All bbappends from all layers are applied, in layer priority =
order.
>>>=20
>>>     Thanks, I was hoping that was the case.
>>>=20
>>>     I wonder why this isn't working then - I think I've done it as
>>>     shown in the dev manual...
>>>=20
>>>=20
>>> Is it something other than the bbappends ? i.e. are you sure you =
have
>>> all the required
>>> dependencies for CONFIG_HID_APPLE already enabled, or in the same =
fragment
>>> you are appending ?
>>>=20
>>> menuconfig shows that the dependencies are ok. I've got a single
>>> fragment referenced using a SRC_URI in the bbappend which sets
>>> FILESEXTRAPATHS_prepend. The .cfg file just sets:
>>>=20
>>> CONFIG_HID_APPLE=3Dy
>>>=20
>>> I can't find my .cfg file in the work area, so it seems as if it's =
not
>>> being picked up.
>>>=20
>>> I'd suggest putting your .bbappend on a pastebin so we can inspect =
it.
>>=20
>> Please see http://pastebin.com/EnesrEN0
>>=20
>> Did you use bitbake -e linux-yocto | grep SRC_URI=3D to confirm it's =
listed there?
>=20
> I have now - it isn't showing. Any syntax errors in the bbappend are =
detected, so it looks like it's being processed.

I think I may have worked this out.

My bbappend was using SRC_URI. If I change this to SRC_URI_cedartrail =
then my .cfg is fetched and merged as expected.

I was expecting SRC_URI to be used for all machines, but this doesn't =
seem to be the case.

>> --=20
>> Christopher Larson
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_AA907B3C-FD7D-4DD0-9FE9-8828AEB60968
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><div>On 9 Dec 2012, at 16:57, Chris Tapp wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On 9 Dec 2012, at 16:47, Chris Larson wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div class="gmail_extra"><br><br><div class="gmail_quote">On Sun, Dec 9, 2012 at 9:44 AM, Chris Tapp <span dir="ltr">&lt;<a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="adM"><div class="h5"><div>On 9 Dec 2012, at 16:30, Chris Larson wrote:</div><br><blockquote type="cite"><div class="gmail_extra">

<div class="gmail_quote">On Sun, Dec 9, 2012 at 7:50 AM, Bruce Ashfield <span dir="ltr">&lt;<a href="mailto:bruce.ashfield@windriver.com" target="_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>On 12-12-09 5:48 AM, Chris Tapp wrote:<br>
</div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>
On 9 Dec 2012, at 04:47, Bruce Ashfield wrote:<br>
<br>
</div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>
<br>
<br>
<br>
On Sat, Dec 8, 2012 at 7:54 PM, Chris Tapp &lt;<a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.com</a><br></div><div>
&lt;mailto:<a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.<u></u>com</a>&gt;&gt; wrote:<br>
<br>
&nbsp; &nbsp; On 9 Dec 2012, at 00:11, Chris Larson wrote:<br>
<br>
</div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>
&nbsp; &nbsp; On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp<br></div><div><div>
&nbsp; &nbsp; &lt;<a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.com</a> &lt;mailto:<a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.<u></u>com</a>&gt;&gt; wrote:<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; Is it possible to have more than one bbappend applied to a<br>
&nbsp; &nbsp; &nbsp; &nbsp; recipe?<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; I'm using meta-cedartrail with my own layer (which is set as<br>
&nbsp; &nbsp; &nbsp; &nbsp; lower priority).<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to<br>
&nbsp; &nbsp; &nbsp; &nbsp; be able to enable CONFIG_HID_APPLE in my layer so my Apple<br>
&nbsp; &nbsp; &nbsp; &nbsp; keyboard works (and keep meta-cedartrail 'clean'). Is it<br>
&nbsp; &nbsp; &nbsp; &nbsp; possible to use another linux-yocto_3.0.bbappend in my layer?<br>
&nbsp; &nbsp; &nbsp; &nbsp; I've given it a try, but it's not working and I thought it<br>
&nbsp; &nbsp; &nbsp; &nbsp; would be an idea to see if it __should__ before I try and fix<br>
&nbsp; &nbsp; &nbsp; &nbsp; it ;-)<br>
<br>
<br>
&nbsp; &nbsp; All bbappends from all layers are applied, in layer priority order.<br>
</div></div></blockquote><div><div>
<br>
&nbsp; &nbsp; Thanks, I was hoping that was the case.<br>
<br>
&nbsp; &nbsp; I wonder why this isn't working then - I think I've done it as<br>
&nbsp; &nbsp; shown in the dev manual...<br>
<br>
<br>
Is it something other than the bbappends ? i.e. are you sure you have<br>
all the required<br>
dependencies for CONFIG_HID_APPLE already enabled, or in the same fragment<br>
you are appending ?<br>
</div></div></blockquote><div><div>
<br>
menuconfig shows that the dependencies are ok. I've got a single<br>
fragment referenced using a SRC_URI in the bbappend which sets<br>
FILESEXTRAPATHS_prepend. The .cfg file just sets:<br>
<br>
CONFIG_HID_APPLE=y<br>
<br>
I can't find my .cfg file in the work area, so it seems as if it's not<br>
being picked up.<br></div></div></blockquote></blockquote><div><br></div><div>I'd suggest putting your .bbappend on a pastebin so we can inspect it.</div></div></div></blockquote><div><br></div></div></div><div>Please see&nbsp;<a href="http://pastebin.com/EnesrEN0" target="_blank">http://pastebin.com/EnesrEN0</a></div>

</blockquote></div><br>Did you use bitbake -e linux-yocto | grep SRC_URI= to confirm it's listed there?<br></div></blockquote><div><br></div><div>I have now - it isn't showing. Any syntax errors in the bbappend are detected, so it looks like it's being processed.</div></div></div></blockquote><div><br></div><div>I think I may have worked this out.</div><div><br></div><div>My bbappend was using SRC_URI. If I change this to SRC_URI_cedartrail then my .cfg is fetched and merged as expected.</div><div><br></div><div>I was expecting SRC_URI to be used for all machines, but this doesn't seem to be the case.</div><br><blockquote type="cite"><div style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><blockquote type="cite"><div class="gmail_extra">-- <br>Christopher Larson<br>
</div>
</blockquote></div><br><div apple-content-edited="true">
<span class="Apple-style-span" style="border-collapse: separate; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com/">www.keylevel.com</a></div><div><br></div></span><br class="Apple-interchange-newline">
</div>
<br></div>_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br><div apple-content-edited="true">
<span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com">www.keylevel.com</a></div><div><br></div></span><br class="Apple-interchange-newline">
</div>
<br></body></html>

--Apple-Mail=_AA907B3C-FD7D-4DD0-9FE9-8828AEB60968--
