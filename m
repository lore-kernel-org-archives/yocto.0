Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77CFAC64ED4
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:49 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web12.3945.1648843741589657140
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 13:09:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=vI9APmzI;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 438B8BD081
	for <yocto@lists.yoctoproject.org>; Fri,  1 Apr 2022 20:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 438B8BD081
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648843739;
	bh=OR9eVrX6o+WZzX/hKlSJndGJECuaV8mSGvMaV8rP8Bo=;
	h=Date:From:To:Subject:From;
	b=vI9APmzIeO6rVw45z67/hmMI7nNn0In54TC3PEjVlkpsA/uMALSXWBQ/ZAPhWOZzC
	 XrarG7kjLKuo8e05bYHfuP05TSvZWwyqozSOdgamGV/MXfliG7XPFnVleutr1DF867
	 7nQXIFmvBdNRUzLgbNEL7F6lQgcND7m7VnMOhidRxMfe3H+l2Rf13XZA+IP6DKe59t
	 UWWe8nTyo5L+g/ZsiJtxVd544WdpjMDxjsttCT0niBZP1kuggDjL+aBQZKx5ShBzc6
	 T15Lt0YT+HUyG2Q73FiyCKnKD8EarZkcroFSNUCnz0ztZxpAbsalN55MW0E/jOMnsh
	 rZ1MN5AGXHZhA==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CpJaTEfCdF93 for <yocto@lists.yoctoproject.org>;
	Fri,  1 Apr 2022 20:08:57 +0000 (UTC)
Date: Fri, 01 Apr 2022 16:08:56 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 2A533BD072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648843737;
	bh=OR9eVrX6o+WZzX/hKlSJndGJECuaV8mSGvMaV8rP8Bo=;
	h=Date:From:To:Subject:From;
	b=q/W57CMsRvFZMtYsvKA3QJrJ5vGCqfU0OEgc9wrvx7pscSmaJ/7RNT8g160zWLp+O
	 cFsELJ7PBLsjPilvqmkzDtU/b0sOs7FtqYyKbFpuTIiAWQ5JEx4OvF1pqiIMZWHVOW
	 sxXF3+XGb0bTmlSCpOPrIN/X5KHJpf7o4XNce6p+5TAppz7m0MRIwuhEF3WorefVab
	 1I4Qwc61GHPNUHMTypih218uT/PKV3M1/yOLEm2Srhpm7Id/XSgpayoVCvIpW6lVm1
	 7Hh+Mdblc/iVZqeWdV2dlx8H4AfOLqAr86X64FAa/8TPxajwJw4Xs8s/Nuv9eyeqg+
	 VVZHzWIwz+UaQ==
From: jchludzinski <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: Specified SDKMACHINE value is not valid
Message-ID: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_76fc43e901c6005a4772759ea0d53402"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56614

--=_76fc43e901c6005a4772759ea0d53402
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to host 
on the same RP4. Admittedly, a not practical platform for this purpose 
but it should work.

I'm trying to target the ARM ISA for the image using yocto-3.4.2. I've 
tried simply using the default setting and end up with:

_ERROR:  OE-core's config sanity checker detected a potential 
misconfiguration._
_    Either fix the cause of this error or at your own risk disable the 
checker (see sanity.conf)._
_    Following is the list of potential problems / advisories:_
_ _
_    Specified SDKMACHINE value is not valid_

I've tried editing ./conf/local.conf:

MACHINE ?= "qemuarm64"

#MACHINE ??= "qemux86-64"

But this accomplishes nothing. Needless to say, I'm a yacto/OE newbie, 
so any suggestions would be greatly appreciated.

---John
--=_76fc43e901c6005a4772759ea0d53402
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to host on t=
he same RP4. Admittedly, a not practical platform for this purpose but it s=
hould work. <br /><br />I'm trying to target the ARM ISA for the image usin=
g yocto-3.4.2. I've tried simply using the default setting and end up with:=
</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">
<div><span style=3D"color: #0000ff;"><em>ERROR:&nbsp; OE-core's config sani=
ty checker detected a potential misconfiguration.</em></span></div>
<div><span style=3D"color: #0000ff;"><em>&nbsp; &nbsp; Either fix the cause=
 of this error or at your own risk disable the checker (see sanity.conf).</=
em></span></div>
<div><span style=3D"color: #0000ff;"><em>&nbsp; &nbsp; Following is the lis=
t of potential problems / advisories:</em></span></div>
<div><span style=3D"color: #0000ff;"><em>&nbsp;</em></span></div>
<div><span style=3D"color: #0000ff;"><em>&nbsp; &nbsp; Specified SDKMACHINE=
 value is not valid</em></span></div>
<div>&nbsp;</div>
<p>I've tried editing ./conf/local.conf:</p>
<p>MACHINE ?=3D "qemuarm64"</p>
<p>#MACHINE ??=3D "qemux86-64"</p>
<p>But this accomplishes nothing. Needless to say, I'm a yacto/OE newbie, s=
o any suggestions would be greatly appreciated.</p>
<p>---John</p>
</div>
</body></html>

--=_76fc43e901c6005a4772759ea0d53402--

