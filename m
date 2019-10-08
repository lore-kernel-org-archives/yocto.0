Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3A75E0074B; Tue,  8 Oct 2019 08:29:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sjolley.yp.pm[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D589E0074B
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2019 08:29:05 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id u8so37393526iom.5
	for <yocto@yoctoproject.org>; Tue, 08 Oct 2019 08:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=VbIUI6TCukIVVf16GR0zu8MdQTE8tY3d3JdyIWTmeXg=;
	b=vMgA5o4pqH7gpArenc12tEfZjVbW5p/ut1dxHvaZAaVQKorlZnRGPO8rs47nRVXEzw
	+NztMatdC9F+Y6aqdGLeDPuWWGpfRzKBdi7M0q9CmX4Xmg8UQfpCa6a5uzOprABdlqU6
	rJscFS2B9OrRui04YXyAqtypi7H2hLr/oYp/PAcXZF+sd9pXH8PlkWNM154EfJWB7GMG
	K7BrglitnNN40bdzZi3/KZjwGqzJ/j6mQDuBJU6vByzc0/LEikyb9fGdBZHKUK9lrhUm
	8zx9P8iTdSHj2D9VRCBEcKcuhRdH5aRWN8OFZxQZUpsTj3j9eX/KIleGpahcw9w9BkII
	a4aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=VbIUI6TCukIVVf16GR0zu8MdQTE8tY3d3JdyIWTmeXg=;
	b=q3amnTbHHCihQ6Nnmu5vkRQa861GAIGIT4KoZvt8ALqK7iMLMmfJV4Tk5cDecHhI7S
	LbtKUkyRdcoyUznQ4bwC+zatOot1+sABEmoYi2YvUZQWR2wyNxhGsjCqwycroiEaGURf
	sbpIqYcybvcpGmyDGxVJ6oH6Ixnd9yg6LAcTmXOe6Aqpu/CbyZE2N6qw9B0sIH112cX7
	j9s2WEXtOPNK6e5cWUK3Y84SB/eizHdBeP+bNXy+u22CY0/Cc6UJRzNvtH95j5qhr+qW
	LjfrjurHNnVCF4RVnn+CU7gkTzRD7waWCBkGIr8tOcA6Yf7Ym+9zz9e2UvxE+ds0r/fs
	BZ+Q==
X-Gm-Message-State: APjAAAXbyTpPIAtSBpR5nsFMQEHP++o2L8C/P749A/v67/CxDWVv13GR
	BqKVNt1oGFCsdRq27VITlNrf2Pa0cBVwyoy6bzI=
X-Google-Smtp-Source: APXvYqy4AZ1Rp9AYbQK04IqgwS9uzpvSpdORk5Pim4Vb8EkZaoDlsXFyo8LSi8SlmxirNAT6HVMwwDMtQYspDmFcBIE=
X-Received: by 2002:a92:d209:: with SMTP id y9mr9695249ily.286.1570548544842; 
	Tue, 08 Oct 2019 08:29:04 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 8 Oct 2019 08:28:55 -0700
Message-ID: <CAK5yBb_Q32FsB4x6L4n8mAoYbPajpd8oyb8ipH89Y=2a0hw_aA@mail.gmail.com>
To: openembedded-core@lists.openembedded.org, yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes for October 8, 2019
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Oct 2019 15:29:06 -0000
Content-Type: multipart/alternative; boundary="0000000000001e365d059467d463"

--0000000000001e365d059467d463
Content-Type: text/plain; charset="UTF-8"

See:
https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pg/edit


-- 

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

*7867 SW Bayberry Dr., Beaverton, OR 97007*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000001e365d059467d463
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See:=C2=A0

<a href=3D"https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZu=
hN_TSAfw2tdU9pg/edit">https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-Dwu=
zUJh52flOZuhN_TSAfw2tdU9pg/edit</a>=C2=A0=C2=A0<br clear=3D"all"><div><br><=
/div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gm=
ail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><p class=3D"MsoNormal=
" style=3D"background-image:initial;background-position:initial;background-=
repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif"=
>Thanks,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager<spa=
n></span></span></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-family:&quot;Co=
urier New&quot;;color:fuchsia;background-image:initial;background-position:=
initial;background-repeat:initial">7867 SW Bayberry Dr., Beaverton, OR 9700=
7</span></b><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><sp=
an></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div></div>

--0000000000001e365d059467d463--
