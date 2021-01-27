Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5453.1611739050463998103
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 01:17:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@embed.me.uk header.s=soverin header.b=nLiUL+D7;
 spf=softfail (domain: embed.me.uk, ip: 198.145.29.25, mailfrom: ml@embed.me.uk)
Received: from outbound.soverin.net (outbound.soverin.net [116.202.65.218])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E1C2E38C04C2
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 09:17:29 +0000 (UTC)
Received: from smtp.soverin.net (unknown [10.10.3.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by outbound.soverin.net (Postfix) with ESMTPS id 4D5946008F;
	Wed, 27 Jan 2021 09:17:28 +0000 (UTC)
Received: from smtp.soverin.net (smtp.soverin.net [159.69.232.138]) by soverin.net
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embed.me.uk;
	s=soverin; t=1611739047;
	bh=jt8hhZtE9G77H9X8tprLXByj5quzZ0pSU7u+YSeATIs=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=nLiUL+D7Uw0xgyCIQv76dgxI9D96jZL7PCQs2LFpuhZx715mR5RRUBFFkiN0QYwgg
	 wVRJGhck9xdYf4qkVCquJ3J6bnnkqj9Fz7dUVUpNv81MelcwhGmO71/vbpmh5TlWR8
	 84oMU21ETIDYoWt0fm20RjQ4eGFQxQz3/PQ8gmU9S2Mm0ZKbncfn+bUsgV05632jL9
	 3zIQZI9Py8uBTM5reXOuPWN0DXg2AWbTYHVIj2kN4haHJTvTKV2RtO+jdhijtI9lEk
	 8NQMXsBrXdbMTjv3Z3+1pWIxmzWOIzJWK7slflgCvo9atFifEBmjdVCtiiZYBMej4I
	 X1rntEQPNOyOQ==
Subject: Re: [yocto] any interest in an official "meta-rubygems" layer?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
 Konrad Weihmann <kweihmann@outlook.com>
References: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca>
 <1a4deeb6-a63a-8ec1-ff56-d50ec2ef071d@embed.me.uk>
 <4d3d282c-60d8-e6c8-3c9-671e2f8b1f4@crashcourse.ca>
From: "Jack Mitchell" <ml@embed.me.uk>
Message-ID: <a3853032-18b9-af2d-bc38-1c5c12e003f6@embed.me.uk>
Date: Wed, 27 Jan 2021 09:17:24 +0000
MIME-Version: 1.0
In-Reply-To: <4d3d282c-60d8-e6c8-3c9-671e2f8b1f4@crashcourse.ca>
X-Groupsio-MsgNum: 52111
Content-Type: multipart/mixed;
 boundary="------------B3A174148DFE82B4DB471455"
Content-Language: en-US-large

--------------B3A174148DFE82B4DB471455
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 27/01/2021 09:09, Robert P. J. Day wrote:
> On Wed, 27 Jan 2021, Jack Mitchell wrote:
> ... snip ...
> 
>> Hi Robert,
>>
>> This is something I would be interested in. I have a developed a
>> much more basic rubygems class privately which I had intended to
>> opensource and create a similar later, so it would be nice to have a
>> central place to contribute Ruby/RubyGems improvements. As you have
>> found there are many layers with spotty Ruby support and a
>> particular copy of an old class that is being banded about which is
>> often insufficient.
> 
>   cool ... care to share your rubygems.bbclass file? be great to
> combine the best of both worlds.
> 
> rday
>

Please find attached, it's basically the old ruby class with only
support for pure RubyGems (i.e. no cross-compiling) with some influence
from the pypi class for grabbing and compiling a SRC_URI.

Cheers,
Jack.

-- 
Jack Mitchell, Consultant
https://www.tuxable.co.uk

--------------B3A174148DFE82B4DB471455
Content-Type: text/plain; charset=UTF-8;
 name="rubygems.bbclass"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="rubygems.bbclass"

ZGVmIGdldF9ydWJ5Z2Vtc3ZlcnNpb24ocCk6CiAgICBpbXBvcnQgcmUKICAgIGZyb20gb3MucGF0
aCBpbXBvcnQgaXNmaWxlCiAgICBpbXBvcnQgc3VicHJvY2VzcwogICAgZm91bmRfdmVyc2lvbiA9
ICJTT01FVEhJTkcgRkFJTEVEISIKCiAgICBjbWQgPSAiJXMvZ2VtIiAlIHAKCiAgICBpZiBub3Qg
aXNmaWxlKGNtZCk6CiAgICAgICByZXR1cm4gZm91bmRfdmVyc2lvbgoKICAgIHZlcnNpb24gPSBz
dWJwcm9jZXNzLlBvcGVuKFtjbWQsICJlbnYiLCAiZ2VtZGlyIl0sIHN0ZG91dD1zdWJwcm9jZXNz
LlBJUEUpLmNvbW11bmljYXRlKClbMF0KCiAgICByID0gcmUuY29tcGlsZSgiLiooWzAtOV0rXC5b
MC05XStcLlswLTldKykkIikKICAgIG0gPSByLm1hdGNoKHZlcnNpb24uZGVjb2RlKCJ1dGYtOCIp
KQogICAgaWYgbToKICAgICAgICBmb3VuZF92ZXJzaW9uID0gbS5ncm91cCgxKQoKICAgIHJldHVy
biBmb3VuZF92ZXJzaW9uCgpSVUJZX0dFTV9WRVJTSU9OID89ICIke0BnZXRfcnVieWdlbXN2ZXJz
aW9uKCIke1NUQUdJTkdfQklORElSX05BVElWRX0iKX0iCgpkZWYgcnVieWdlbXNfZ2VtKGQpOgog
ICAgYnBuID0gZC5nZXRWYXIoJ0JQTicpCiAgICBpZiBicG4uc3RhcnRzd2l0aCgncnVieS0nKToK
ICAgICAgICByZXR1cm4gYnBuWzU6XQogICAgcmV0dXJuIGJwbgoKUlVCWUdFTVNfR0VNX05BTUUg
Pz0gIiR7QHJ1YnlnZW1zX2dlbShkKX0iClJVQllHRU1TX0dFTV9FWFQgPz0gImdlbSIKUlVCWUdF
TVNfR0VNID89ICIke1JVQllHRU1TX0dFTV9OQU1FfS0ke1BWfS4ke1JVQllHRU1TX0dFTV9FWFR9
IgoKZGVmIHJ1YnlnZW1zX3NyY191cmkoZCk6CiAgICBwYWNrYWdlID0gZC5nZXRWYXIoJ1JVQllH
RU1TX0dFTV9OQU1FJykKICAgIHBhY2thZ2VfZXh0ID0gZC5nZXRWYXIoJ1JVQllHRU1TX0dFTV9F
WFQnKQogICAgcHYgPSBkLmdldFZhcignUFYnKQogICAgcmV0dXJuICdodHRwczovL3J1YnlnZW1z
Lm9yZy9kb3dubG9hZHMvJXMtJXMuJXMnICUgKHBhY2thZ2UsIHB2LCBwYWNrYWdlX2V4dCkKClJV
QllHRU1TX1NSQ19VUkkgPz0gIiR7QHJ1YnlnZW1zX3NyY191cmkoZCl9IgoKSE9NRVBBR0UgPz0g
Imh0dHBzOi8vcnVieWdlbXMub3JnL2dlbXMvJHtSVUJZR0VNU19HRU1fTkFNRX0iClNSQ19VUkkg
Kz0gIiR7UlVCWUdFTVNfU1JDX1VSSX0iClMgPSAiJHtXT1JLRElSfS8ke1JVQllHRU1TX0dFTV9O
QU1FfS0ke1BWfSIKCkRFUEVORFMgKz0gIiBcCiAgICBydWJ5LW5hdGl2ZSBcCiIKClJERVBFTkRT
XyR7UE59ICs9ICIgXAogICAgcnVieSBcCiIKCnJ1YnlnZW1zX2RvX2NvbXBpbGUoKSB7Cgk6Cn0K
CmRvX3VucGFja1tkZXBlbmRzXSArPSAicnVieS1uYXRpdmU6ZG9fcG9wdWxhdGVfc3lzcm9vdCIK
CnJ1YnlnZW1zX2RvX3VucGFjaygpIHsKCWdlbSB1bnBhY2sgLS10YXJnZXQgJHtXT1JLRElSfSAk
e0RMX0RJUn0vJHtSVUJZR0VNU19HRU19Cn0KClJVQllfR0VNX0RJUj0iJHtsaWJkaXJ9L3J1Ynkv
Z2Vtcy8ke1JVQllfR0VNX1ZFUlNJT059IgpHRU1fREVTVD0iJHtEfS8ke1JVQllfR0VNX0RJUn0i
CgpydWJ5Z2Vtc19kb19pbnN0YWxsKCkgewogICAgZ2VtIGluc3RhbGwgLS1pZ25vcmUtZGVwZW5k
ZW5jaWVzIC0tbG9jYWwgLS1lbnYtc2hlYmFuZyAtLWluc3RhbGwtZGlyICR7R0VNX0RFU1R9LyAk
e0RMX0RJUn0vJHtSVUJZR0VNU19HRU19CiAgICBybSAtcmYgJHtHRU1fREVTVH0vY2FjaGUKfQoK
RklMRVNfJHtQTn0tZG9jID0gIiR7UlVCWV9HRU1fRElSfS9kb2MiCkZJTEVTXyR7UE59ID0gIiR7
UlVCWV9HRU1fRElSfSIKCkVYUE9SVF9GVU5DVElPTlMgZG9fdW5wYWNrIGRvX2NvbXBpbGUgZG9f
aW5zdGFsbAoK

--------------B3A174148DFE82B4DB471455--
