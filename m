Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB760C636F9
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:45 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web09.9865.1648889249969355061
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Apr 2022 01:47:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=cm3iqSHe;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 43B28BD0E6;
	Sat,  2 Apr 2022 08:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 43B28BD0E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648889247;
	bh=i6W6zUYXJMcton72Nxp66WYJqsyVDzqvxLRY703kCzE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=cm3iqSHegqV/cUJIESRJdzn+9JWF2N2gDtZWVkepVCoxMen5PsmX9NVJLIrsGNlks
	 8YBVwMdz9OjpBw+3ExFdmNR1krfXOInL7mGUAUU73VVEAuRyZT++ZVwq2hIOiP2mrK
	 v5l8bSuLYx72eyUjhe4bWLGDSzRhTZjy5kwZoUDC7JcEj1j4JJpH3ugQMbZbXxCZl9
	 YhbUknO1FCfXSkwfy8cosjzG24gM9HIOiJFbhKf7PSbw7NW/KNNxIJmriIpRuUN8Hp
	 QfMkWcctpEwsDFtzEDLPtj+PGnFC9RvdFkNRt/AVaCUKt2fjFUC+NxELsi/x/30zdR
	 TKTsnLqbKvNnQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cGyI3v1iJ8T2; Sat,  2 Apr 2022 08:47:23 +0000 (UTC)
Date: Sat, 02 Apr 2022 04:47:22 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 8D88ABD04A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648889243;
	bh=i6W6zUYXJMcton72Nxp66WYJqsyVDzqvxLRY703kCzE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=m4GA1gUZiWDgvqYJg6Y5gvaE2JTY4jGdj0ve8F2TiieaUFIhZfehcOUP+XdX7JqKZ
	 nh/9ww1//ACjEASl7GoEoAPtFV8e67qab1T7TzU0+zJNQa42PDa22OFRLOtVY5J+2F
	 pvF9ZDQ/2GooH7jZRWUUf8LFbvBTh+0535qtd1Y584Nz+G0LNr7TK2RZ0scR7mgi0r
	 CDXIt40WyYvRg7ZiIPzD/MTbg4RiXuioBzynoMvz6GD3ovDy1BwRhZHXKRGwPAypCD
	 kjvz2XF/ABY9y+yiY9iyQ+Fog8OjY5c6NeG0qDfxYQ3gyR+agG6YGaqRPuuvd6Ibvf
	 m652DFj3qIKTw==
From: jchludzinski <jchludzinski@vivaldi.net>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
In-Reply-To: 
 <CAMKF1sqsAEdLEtD6c_vnoNX1FXBZteiDuuMyEiFvMZ4i7n3AXQ@mail.gmail.com>
References: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
 <CAMKF1sqZHZRNvW0BY3MfVH+cKv3nRtjTRab_EXJwKGpANu_EZQ@mail.gmail.com>
 <16E1E0852A508284.15950@lists.yoctoproject.org>
 <b4f0f9c76768d68ad2f4b1822d11bca8@vivaldi.net>
 <CAMKF1sqsAEdLEtD6c_vnoNX1FXBZteiDuuMyEiFvMZ4i7n3AXQ@mail.gmail.com>
Message-ID: <9bb492b8e60e2ba16b978016203341a7@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_12329db92117a5b41a2d80eac188bc0c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56640

--=_12329db92117a5b41a2d80eac188bc0c
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

$ git clone git://git.yoctoproject.org/poky.git
$ cd ./poky
$ git checkout yocto-3.4.2
$ cd ..
$ source ./poky/oe-init-build-env
$ cd ./build
$ time bitbake core-image-minimal
...
ERROR:  OE-core's config sanity checker detected a potential 
misconfiguration.
     Either fix the cause of this error or at your own risk disable the 
checker (see sanity.conf).
     Following is the list of potential problems / advisories:

     Specified SDKMACHINE value is not valid

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit 
code.

________________________________________________________
Executed in    3.92 secs    fish           external
    usr time    1.07 secs    9.77 millis    1.06 secs
    sys time    0.18 secs    2.96 millis    0.17 secs

On 2022-04-01 18:09, Khem Raj wrote:

> On Fri, Apr 1, 2022 at 2:02 PM jchludzinski <jchludzinski@vivaldi.net> 
> wrote:
> But obviously commented out.
> 
> On 2022-04-01 16:43, jchludzinski via lists.yoctoproject.org wrote: 
> There's this:
> #SDKMACHINE ?= "i686"

OK it should be ok then. Can you describe your steps to setup the 
system?
maybe there is some caveat

> ---John
> 
> On 2022-04-01 16:22, Khem Raj wrote:
> 
> On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via
> lists.yoctoproject.org
> [1 [1]] <jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
> 
> I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to
> host on the same RP4. Admittedly, a not practical platform for
> this
> purpose but it should work.
> 
> I'm trying to target the ARM ISA for the image using yocto-3.4.2.
> I've tried simply using the default setting and end up with:
> 
> _ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration._
> _    Either fix the cause of this error or at your own risk
> disable
> the checker (see sanity.conf)._
> _    Following is the list of potential problems / advisories:_
> _ _
> _    Specified SDKMACHINE value is not valid_
> 
> I've tried editing ./conf/local.conf:
> 
> MACHINE ?= "qemuarm64"
> 
> #MACHINE ??= "qemux86-64"
> It's complaining about SDKMACHINE setting which is a separate
> variable, can you check your local.conf if it's set to something
> 
> But this accomplishes nothing. Needless to say, I'm a yacto/OE
> newbie, so any suggestions would be greatly appreciated.
> 
> ---John
> Links:
> ------
> [1] http://lists.yoctoproject.org

Links:
------
[1] http://lists.yoctoproject.org

-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#56618): 
https://lists.yoctoproject.org/g/yocto/message/56618
Mute This Topic: https://lists.yoctoproject.org/mt/90188098/5071304
Group Owner: yocto+owner@lists.yoctoproject.org
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
[jchludzinski@vivaldi.net]
-=-=-=-=-=-=-=-=-=-=-=-
--=_12329db92117a5b41a2d80eac188bc0c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"color: #000080;">$ git clone git://git.yoctoproject.org/poky=
=2Egit</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"color: #000080;">$ cd ./poky</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"color: #000080;">$ git checkout yocto-3.4.2</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"color: #000080;">$ cd ..</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"color: #000080;">$ source ./poky/oe-init-build-env</span></d=
iv>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"color: #000080;">$ cd ./build</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"color: #000080;">$ time bitbake core-image-minimal</span></d=
iv>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"color: #000080;">...</span><br />
<div><span style=3D"color: #000080;">ERROR:&nbsp; OE-core's config sanity c=
hecker detected a potential misconfiguration.</span></div>
<div><span style=3D"color: #000080;">&nbsp; &nbsp; Either fix the cause of =
this error or at your own risk disable the checker (see sanity.conf).</span=
></div>
<div><span style=3D"color: #000080;">&nbsp; &nbsp; Following is the list of=
 potential problems / advisories:</span></div>
<div><span style=3D"color: #000080;">&nbsp;</span></div>
<div><span style=3D"color: #000080;">&nbsp; &nbsp; Specified SDKMACHINE val=
ue is not valid</span></div>
<div><span style=3D"color: #000080;">&nbsp;</span></div>
<div><span style=3D"color: #000080;">&nbsp;</span></div>
<div><span style=3D"color: #000080;">Summary: There was 1 WARNING message s=
hown.</span></div>
<div><span style=3D"color: #000080;">Summary: There was 1 ERROR message sho=
wn, returning a non-zero exit code.</span></div>
<div><span style=3D"color: #000080;">&nbsp;</span></div>
<div><span style=3D"color: #000080;">______________________________________=
__________________</span></div>
<div><span style=3D"color: #000080;">Executed in&nbsp; &nbsp; 3.92 secs&nbs=
p; &nbsp; fish&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;external</span></div>
<div><span style=3D"color: #000080;">&nbsp; &nbsp;usr time&nbsp; &nbsp; 1.0=
7 secs&nbsp; &nbsp; 9.77 millis&nbsp; &nbsp; 1.06 secs</span></div>
<div><span style=3D"color: #000080;">&nbsp; &nbsp;sys time&nbsp; &nbsp; 0.1=
8 secs&nbsp; &nbsp; 2.96 millis&nbsp; &nbsp; 0.17 secs</span></div>
<p><br /></p>
</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
On 2022-04-01 18:09, Khem Raj wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">On Fri, Apr 1, 2022 at 2:02 PM jchludzinski &lt;<a hre=
f=3D"mailto:jchludzinski@vivaldi.net">jchludzinski@vivaldi.net</a>&gt; wrot=
e:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><br />But obviously commented out.<br /><br />On 2022-=
04-01 16:43, jchludzinski via lists.yoctoproject.org wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">There's this:<br />#SDKMACHINE ?=3D "i686"</blockquote>
</blockquote>
<br />OK it should be ok then. Can you describe your steps to setup the sys=
tem?<br />maybe there is some caveat<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><br />---John<br /><br />On 2022-04-01 16:22, Khem Raj=
 wrote:<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via<br />l=
ists.yoctoproject.org<br />[1 [1]] &lt;<a href=3D"mailto:jchludzinski=3Dviv=
aldi.net@lists.yoctoproject.org">jchludzinski=3Dvivaldi.net@lists.yoctoproj=
ect.org</a>&gt; wrote:<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">I'm trying an experiment building yocto/OE on a Raspbe=
rry Pi 4 to<br />host on the same RP4. Admittedly, a not practical platform=
 for<br />this<br />purpose but it should work.<br /><br />I'm trying to ta=
rget the ARM ISA for the image using yocto-3.4.2.<br />I've tried simply us=
ing the default setting and end up with:<br /><br />_ERROR: &nbsp;OE-core's=
 config sanity checker detected a potential<br />misconfiguration._<br />_ =
&nbsp;&nbsp;&nbsp;Either fix the cause of this error or at your own risk<br=
 />disable<br />the checker (see sanity.conf)._<br />_ &nbsp;&nbsp;&nbsp;Fo=
llowing is the list of potential problems / advisories:_<br />_ _<br />_ &n=
bsp;&nbsp;&nbsp;Specified SDKMACHINE value is not valid_<br /><br />I've tr=
ied editing ./conf/local.conf:<br /><br />MACHINE ?=3D "qemuarm64"<br /><br=
 />#MACHINE ??=3D "qemux86-64"</blockquote>
<br />It's complaining about SDKMACHINE setting which is a separate<br />va=
riable, can you check your local.conf if it's set to something<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">But this accomplishes nothing. Needless to say, I'm a =
yacto/OE<br />newbie, so any suggestions would be greatly appreciated.<br /=
><br />---John</blockquote>
<br />Links:<br />------<br />[1] <a href=3D"http://lists.yoctoproject.org"=
 target=3D"_blank" rel=3D"noopener noreferrer">http://lists.yoctoproject.or=
g</a></blockquote>
<br /><br />Links:<br />------<br />[1] <a href=3D"http://lists.yoctoprojec=
t.org" target=3D"_blank" rel=3D"noopener noreferrer">http://lists.yoctoproj=
ect.org</a><br /><br /><br /></blockquote>
</blockquote>
<br /><br />-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br />Links: You r=
eceive all messages sent to this group.<br />View/Reply Online (#56618): <a=
 href=3D"https://lists.yoctoproject.org/g/yocto/message/56618" target=3D"_b=
lank" rel=3D"noopener noreferrer">https://lists.yoctoproject.org/g/yocto/me=
ssage/56618</a><br />Mute This Topic: <a href=3D"https://lists.yoctoproject=
=2Eorg/mt/90188098/5071304" target=3D"_blank" rel=3D"noopener noreferrer">h=
ttps://lists.yoctoproject.org/mt/90188098/5071304</a><br />Group Owner: <a =
href=3D"mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctop=
roject.org</a><br />Unsubscribe: <a href=3D"https://lists.yoctoproject.org/=
g/yocto/unsub" target=3D"_blank" rel=3D"noopener noreferrer">https://lists.=
yoctoproject.org/g/yocto/unsub</a><br />[<a href=3D"mailto:jchludzinski@viv=
aldi.net">jchludzinski@vivaldi.net</a>]<br />-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-</blockquote>
</div>
</body></html>

--=_12329db92117a5b41a2d80eac188bc0c--

