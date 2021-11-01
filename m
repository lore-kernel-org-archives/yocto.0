Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06DFFC433F5
	for <webhook@archiver.kernel.org>; Mon,  1 Nov 2021 06:27:08 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web11.40400.1635748026353559655
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 Oct 2021 23:27:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=bYWjjf2e;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 55FD1BD035
	for <yocto@lists.yoctoproject.org>; Mon,  1 Nov 2021 06:26:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 55FD1BD035
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1635748018;
	bh=z5wqOCI2Ocb1B81tLqRNcLzgPHh8Y2i/Iz+4A9RJITY=;
	h=Date:From:To:Subject:From;
	b=bYWjjf2eepERJYiF2pdLBlGb6wIiI2vkDW3GsUAh6qzw9CC+PP+yHfZkL6jBkDgI7
	 3h2Ej/ZuZ+B/MXiRz1GfxQnH0LGzmAgIG8vFj9p808/MrfroUGwkSTfE4d7kHUc6/H
	 bkCbkSGcpJoBXhSsTAxfQ9qCU9Cox6lt1Ov+MJiAWNK151wSyNFZP1EZuOAVKx9LXO
	 RouperkXoKQ+1kCd8lReMM7lnUDUWO+iT1sN5TsP+W7uML2hT3v8457FaI+dpu+KI+
	 tQWF87M2pfOI+kQ64t3WN0GwglenSlDi4YbJjXNMvBtnCqE0BQjSqNmfLHkoHq+vTZ
	 eXYKNVySl+bnQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rl9X3WOA9XXu for <yocto@lists.yoctoproject.org>;
	Mon,  1 Nov 2021 06:26:56 +0000 (UTC)
Date: Mon, 01 Nov 2021 02:26:55 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net F2675BD033
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1635748015;
	bh=z5wqOCI2Ocb1B81tLqRNcLzgPHh8Y2i/Iz+4A9RJITY=;
	h=Date:From:To:Subject:From;
	b=lEEaFFV3zeTjOCUXIe3aczPv54QC+U7Nhp5ktzg/BMYx//PXYedRZoDrfCMJwFxaX
	 W4+LG6d9/Ec35O62gRF2oRF5SpPcCmy6bNqK7V8dNsswMbPpa56U2bLoSyZqGG/9IJ
	 n5fHwvhI+UNuerIewxygzF8x/ltXNn+z0x8Zvo6vcY/8gD6igHqWGznUWqBAqihMPX
	 skrEhdxr3gqpX7vnc8hVA3pEp9aMNSU1xormLlxdTKnuf5VTlnLb/ffrQMN0jUxxNf
	 4he6573k/uNCp+Ypk5iVINa2rq1XL5KA/QtZ90GmOYr3SI2CD0o/gBfCrko3mrcZET
	 7E+s0YmV1xPig==
From: jchludzinski <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: Specified SDKMACHINE value is not valid
Message-ID: <e26334762f4d4b2e7f0f12a0f429da14@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_a12ff680c9ad814d7e88473da92908b8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Nov 2021 06:27:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55199

--=_a12ff680c9ad814d7e88473da92908b8
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

NEWBIE question!

I tried building and I get: "_Specified SDKMACHINE value is not valid_"

pi@raspberrypi ~/p/build> bitbake core-image-minimal
/usr/lib/python3/dist-packages/html5lib/_trie/_base.py:3: 
DeprecationWarning: Using or importing the ABCs from 'collections' 
instead of from 'collections.abc' is deprecated, and in 3.8 it will stop 
working
   from collections import Mapping
WARNING: Host distribution "raspbian-10" has not been validated with 
this version of the build system; you may possibly experience unexpected 
failures. It is recommended that you use a tested distribution.
ERROR:  OE-core's config sanity checker detected a potential 
misconfiguration.
     Either fix the cause of this error or at your own risk disable the 
checker (see sanity.conf).
     Following is the list of potential problems / advisories:

     Specified SDKMACHINE value is not valid

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit 
code.
I've tried setting SDKMACHINE to 'arm' and 'qemuarm' but get the same 
message?

Obviously I failed to do something (properly)?

Ideas?
--=_a12ff680c9ad814d7e88473da92908b8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
NEWBIE question!</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
I tried building and I get: "<em><strong>Specified SDKMACHINE value is not =
valid</strong></em>"<br /><br />
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">pi@raspberrypi ~/p/build&gt; bitbak=
e core-image-minimal</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">/usr/lib/python3/dist-packages/html=
5lib/_trie/_base.py:3: DeprecationWarning: Using or importing the ABCs from=
 'collections' instead of from 'collections.abc' is deprecated, and in 3.8 =
it will stop working</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">&nbsp; from collections import Mapp=
ing</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">WARNING: Host distribution "raspbia=
n-10" has not been validated with this version of the build system; you may=
 possibly experience unexpected failures. It is recommended that you use a =
tested distribution.</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">ERROR:&nbsp; OE-core's config sanit=
y checker detected a potential misconfiguration.</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">&nbsp; &nbsp; Either fix the cause =
of this error or at your own risk disable the checker (see sanity.conf).</s=
pan></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">&nbsp; &nbsp; Following is the list=
 of potential problems / advisories:</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">&nbsp;</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">&nbsp; &nbsp; Specified SDKMACHINE =
value is not valid</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">&nbsp;</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">&nbsp;</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">Summary: There was 1 WARNING messag=
e shown.</span></div>
<div style=3D"padding-left: 40px;"><span style=3D"font-family: 'courier new=
', courier, monospace; color: #000080;">Summary: There was 1 ERROR message =
shown, returning a non-zero exit code.</span></div>
<br />I've tried setting SDKMACHINE to 'arm' and 'qemuarm' but get the same=
 message?<br /><br />Obviously I failed to do something (properly)?<br /><b=
r />Ideas?</div>
</body></html>

--=_a12ff680c9ad814d7e88473da92908b8--

