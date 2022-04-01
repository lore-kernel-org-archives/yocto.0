Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF23C64ED9
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:49 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.4533.1648845800407811482
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 13:43:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=HwVW5faf;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 526CDBD081;
	Fri,  1 Apr 2022 20:43:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 526CDBD081
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648845798;
	bh=bpdh51iXD9irNuFYibbXEzwbUnCPm1f6eaQImM+dPOg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HwVW5fafMTcNPb+jLWP0TviUh9s6F4SqR2aVvDEXOjr8JLbftzdD/PjLaRwReLjlq
	 jRUAzmwSnOL6ciXzxmegg2i4bmRHAoX8fh+sLne4TYtsTwU6r6l+CNvVuCP1MRWaW8
	 CM9+UXMl4WchV34imId/qd9eYEoX36lL4meenSdmAEufW+W1Olusy2lqn3gemsFhGe
	 5H74j2k3LtZmM6CrPFWiP63fnBcb1y6RLuEpbApDrYS9K+Q6eBQHXL9KZFRJlISexp
	 BpwTgaZm2yO8HJjTmpcLwIgg2evDThVa6HBbhDSqnJdgpAb0WGVT+Jm7oVHip9RZ6U
	 7pXCNPBZNu2Ug==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G5mToCFLRbZ5; Fri,  1 Apr 2022 20:43:14 +0000 (UTC)
Date: Fri, 01 Apr 2022 16:43:14 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 94C89BD07B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648845794;
	bh=bpdh51iXD9irNuFYibbXEzwbUnCPm1f6eaQImM+dPOg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IXh1pQpC7uqKjhFHCqxx4ZwgA4VIUxivM+3mYkP4rRVHQS4zFvaHlZAzQlMWoS7zt
	 wonswlfSnS44AY2gHpB6CHhsOI4Ysw7WvYFHZ0QgUEwqFEjQbZ4+ITU31rDedk0LVi
	 q4q1DHLY+0P+0XtRkJS0qnYcDOZsKg47gWEWe03O7nxBRGSrwL3IXtC/AnbtDf1GgP
	 cue9zav3/wCNMvnP/kCxSHooL2Yz142oPOwBOjb6Q2SVVRhLBLRhsKMWiAX29DjRvw
	 S2AKSBXZh617hTj3iqAm+YmwmaYGuF/bPd0T4+qYWNOPJX9K5S5+St+RXQE5WFB7X+
	 jSeK7dOvmIUkA==
From: jchludzinski <jchludzinski@vivaldi.net>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
In-Reply-To: 
 <CAMKF1sqZHZRNvW0BY3MfVH+cKv3nRtjTRab_EXJwKGpANu_EZQ@mail.gmail.com>
References: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
 <CAMKF1sqZHZRNvW0BY3MfVH+cKv3nRtjTRab_EXJwKGpANu_EZQ@mail.gmail.com>
Message-ID: <76417f23fd6ad3abdc6b1e196f8ed90e@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_f11ccff1f7bf1ff10d439eb6a7f81dfb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56616

--=_f11ccff1f7bf1ff10d439eb6a7f81dfb
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

There's this:
#SDKMACHINE ?= "i686"

---John

On 2022-04-01 16:22, Khem Raj wrote:

> On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via lists.yoctoproject.org
> [1 [1]] <jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
> 
>> I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to
>> host on the same RP4. Admittedly, a not practical platform for this
>> purpose but it should work.
>> 
>> I'm trying to target the ARM ISA for the image using yocto-3.4.2.
>> I've tried simply using the default setting and end up with:
>> 
>> _ERROR:  OE-core's config sanity checker detected a potential
>> misconfiguration._
>> _    Either fix the cause of this error or at your own risk disable
>> the checker (see sanity.conf)._
>> _    Following is the list of potential problems / advisories:_
>> _ _
>> _    Specified SDKMACHINE value is not valid_
>> 
>> I've tried editing ./conf/local.conf:
>> 
>> MACHINE ?= "qemuarm64"
>> 
>> #MACHINE ??= "qemux86-64"
> 
> It's complaining about SDKMACHINE setting which is a separate
> variable, can you check your local.conf if it's set to something
> 
>> But this accomplishes nothing. Needless to say, I'm a yacto/OE
>> newbie, so any suggestions would be greatly appreciated.
>> 
>> ---John
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#56614):
>> https://lists.yoctoproject.org/g/yocto/message/56614
>> Mute This Topic: https://lists.yoctoproject.org/mt/90188098/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>> [raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
> 
> Links:
> ------
> [1] http://lists.yoctoproject.org


Links:
------
[1] http://lists.yoctoproject.org
--=_f11ccff1f7bf1ff10d439eb6a7f81dfb
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
There's this:<br /><span style=3D"color: #0000ff;">#SDKMACHINE ?=3D "i686"<=
/span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
---John<br /><br /><br />On 2022-04-01 16:22, Khem Raj wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via lists.=
yoctoproject.org<br />[<a href=3D"http://lists.yoctoproject.org" target=3D"=
_blank" rel=3D"noopener noreferrer">1</a>] &lt;<a href=3D"mailto:jchludzins=
ki=3Dvivaldi.net@lists.yoctoproject.org">jchludzinski=3Dvivaldi.net@lists.y=
octoproject.org</a>&gt; wrote:<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">I'm trying an experiment building yocto/OE on a Raspbe=
rry Pi 4 to<br />host on the same RP4. Admittedly, a not practical platform=
 for this<br />purpose but it should work.<br /><br />I'm trying to target =
the ARM ISA for the image using yocto-3.4.2.<br />I've tried simply using t=
he default setting and end up with:<br /><br />_ERROR: &nbsp;OE-core's conf=
ig sanity checker detected a potential<br />misconfiguration._<br />_ &nbsp=
;&nbsp;&nbsp;Either fix the cause of this error or at your own risk disable=
<br />the checker (see sanity.conf)._<br />_ &nbsp;&nbsp;&nbsp;Following is=
 the list of potential problems / advisories:_<br />_ _<br />_ &nbsp;&nbsp;=
&nbsp;Specified SDKMACHINE value is not valid_<br /><br />I've tried editin=
g ./conf/local.conf:<br /><br />MACHINE ?=3D "qemuarm64"<br /><br />#MACHIN=
E ??=3D "qemux86-64"</blockquote>
<br />It&rsquo;s complaining about SDKMACHINE setting which is a separate<b=
r />variable, can you check your local.conf if it&rsquo;s set to something =
<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">But this accomplishes nothing. Needless to say, I'm a =
yacto/OE<br />newbie, so any suggestions would be greatly appreciated.<br /=
><br />---John<br />-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br />Link=
s: You receive all messages sent to this group.<br />You automatically foll=
ow any topics you start or reply to.<br />View/Reply Online (#56614):<br />=
<a href=3D"https://lists.yoctoproject.org/g/yocto/message/56614" target=3D"=
_blank" rel=3D"noopener noreferrer">https://lists.yoctoproject.org/g/yocto/=
message/56614</a><br />Mute This Topic: <a href=3D"https://lists.yoctoproje=
ct.org/mt/90188098/1997914" target=3D"_blank" rel=3D"noopener noreferrer">h=
ttps://lists.yoctoproject.org/mt/90188098/1997914</a><br />Group Owner: <a =
href=3D"mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctop=
roject.org</a><br />Unsubscribe: <a href=3D"https://lists.yoctoproject.org/=
g/yocto/unsub" target=3D"_blank" rel=3D"noopener noreferrer">https://lists.=
yoctoproject.org/g/yocto/unsub</a><br />[<a href=3D"mailto:raj.khem@gmail.c=
om">raj.khem@gmail.com</a>]<br />-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-</blockquote>
&nbsp;<br /><br />Links:<br />------<br />[1] <a href=3D"http://lists.yocto=
project.org" target=3D"_blank" rel=3D"noopener noreferrer">http://lists.yoc=
toproject.org</a></blockquote>
</div>
</body></html>

--=_f11ccff1f7bf1ff10d439eb6a7f81dfb--

