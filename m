Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 135B2E006C0
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 02:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=YL2Pa+/M+nxRrbvwZx6qVNqr69zv9/t4qUQn3Zi0WF0=; 
	b=YzkIjZi5yAXXkL3C9rEUw/DmcpgYdY4s1xxIqCvWbmbPN3PnZONMtd97YarK/qy4MxM/SQ74vrLby+OIEO2RDKpp/yCI/Q0iyRRWTLQfcL0RWnRIp3n7R5P2bNVtlPKd;
Received: from [109.224.129.17] (port=23700
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1TheQk-00008Y-8x; Sun, 09 Dec 2012 10:48:18 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CADkTA4ORbfM0zT5g5j4pSMUtfH7LJmSsdbckahXPu=2FDiDv7g@mail.gmail.com>
Date: Sun, 9 Dec 2012 10:48:17 +0000
Message-Id: <26A95DB9-6C86-4677-94FA-48C0E0AFF2B9@keylevel.com>
References: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
	<CABcZANm7UGMYO1BRK8k9EQdGrDG6w013S-nkQrCgFe5O+4v1SQ@mail.gmail.com>
	<58D08629-AD55-4693-8F56-83EA0A52CA77@keylevel.com>
	<CADkTA4ORbfM0zT5g5j4pSMUtfH7LJmSsdbckahXPu=2FDiDv7g@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Sun, 09 Dec 2012 10:48:20 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E67AD673-F749-4549-90A0-DE1044CE8BF9"

--Apple-Mail=_E67AD673-F749-4549-90A0-DE1044CE8BF9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

On 9 Dec 2012, at 04:47, Bruce Ashfield wrote:

>=20
>=20
>=20
> On Sat, Dec 8, 2012 at 7:54 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
> On 9 Dec 2012, at 00:11, Chris Larson wrote:
>=20
>> On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> Is it possible to have more than one bbappend applied to a recipe?
>>=20
>> I'm using meta-cedartrail with my own layer (which is set as lower =
priority).
>>=20
>> Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to be able =
to enable CONFIG_HID_APPLE in my layer so my Apple keyboard works (and =
keep meta-cedartrail 'clean'). Is it possible to use another =
linux-yocto_3.0.bbappend in my layer? I've given it a try, but it's not =
working and I thought it would be an idea to see if it __should__ before =
I try and fix it ;-)
>>=20
>> All bbappends from all layers are applied, in layer priority order.
>=20
> Thanks, I was hoping that was the case.
>=20
> I wonder why this isn't working then - I think I've done it as shown =
in the dev manual...
>=20
> Is it something other than the bbappends ? i.e. are you sure you have =
all the required
> dependencies for CONFIG_HID_APPLE already enabled, or in the same =
fragment
> you are appending ?

menuconfig shows that the dependencies are ok. I've got a single =
fragment referenced using a SRC_URI in the bbappend which sets =
FILESEXTRAPATHS_prepend. The .cfg file just sets:

CONFIG_HID_APPLE=3Dy

I can't find my .cfg file in the work area, so it seems as if it's not =
being picked up.

> Bruce
> =20
>=20
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
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
>=20
> --=20
> "Thou shalt not follow the NULL pointer, for chaos and madness await =
thee at its end"

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_E67AD673-F749-4549-90A0-DE1044CE8BF9
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><div>On 9 Dec 2012, at 04:47, Bruce Ashfield wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><br><div class="gmail_extra"><br><br><div class="gmail_quote">On Sat, Dec 8, 2012 at 7:54 PM, Chris Tapp <span dir="ltr">&lt;<a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; "><div style="word-wrap:break-word"><div><div><div class="h5"><div>On 9 Dec 2012, at 00:11, Chris Larson wrote:</div><br>
<blockquote type="cite"><div class="gmail_extra">On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp <span dir="ltr">&lt;<a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><div class="gmail_quote">
<blockquote class="gmail_quote" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; ">

<div>Is it possible to have more than one bbappend applied to a recipe?<br>
<br>
I'm using meta-cedartrail with my own layer (which is set as lower priority).<br>
<br>
Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to be able to enable CONFIG_HID_APPLE in my layer so my Apple keyboard works (and keep meta-cedartrail 'clean'). Is it possible to use another linux-yocto_3.0.bbappend in my layer? I've given it a try, but it's not working and I thought it would be an idea to see if it __should__ before I try and fix it ;-)</div>


</blockquote></div><br>All bbappends from all layers are applied, in layer priority order.</div></blockquote><div><br></div></div></div><div>Thanks, I was hoping that was the case.</div><div><br></div><div>I wonder why this isn't working then - I think I've done it as shown in the dev manual...</div>
</div></div></blockquote><div><br></div><div>Is it something other than the bbappends ? i.e. are you sure you have all the required</div><div>dependencies for CONFIG_HID_APPLE already enabled, or in the same fragment</div>
<div>you are appending ?</div></div></div></blockquote><div><br></div><div>menuconfig shows that the dependencies are ok. I've got a single fragment referenced using a SRC_URI in the bbappend which sets FILESEXTRAPATHS_prepend. The .cfg file just sets:</div><div><br></div><div>CONFIG_HID_APPLE=y</div><div><br></div><div>I can't find my .cfg file in the work area, so it seems as if it's not being picked up.</div><br><blockquote type="cite"><div class="gmail_extra"><div class="gmail_quote"><div>Bruce</div><div>&nbsp;</div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style="word-wrap:break-word"><div><br><blockquote type="cite">
<div class="gmail_extra">-- <br>Christopher Larson<br>
</div>
</blockquote></div><br><div>
<span style="text-indent:0px;letter-spacing:normal;font-variant:normal;text-align:auto;font-style:normal;font-weight:normal;line-height:normal;border-collapse:separate;text-transform:none;font-size:medium;white-space:normal;font-family:Helvetica;word-spacing:0px"><div>
Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com/" target="_blank">www.keylevel.com</a></div><div><br></div>
</span><br>
</div>
<br></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear="all"><div><br></div>-- <br>"Thou shalt not follow the NULL pointer, for chaos and madness await thee at its end"<br>
</div>
</blockquote></div><br><div apple-content-edited="true">
<span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com">www.keylevel.com</a></div><div><br></div></span><br class="Apple-interchange-newline">
</div>
<br></body></html>

--Apple-Mail=_E67AD673-F749-4549-90A0-DE1044CE8BF9--
