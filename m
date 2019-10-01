Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC6E7E00D6A; Tue,  1 Oct 2019 08:36:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sjolley.yp.pm[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 236BEE00CB9
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 08:36:03 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id c25so48988764iot.12
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2019 08:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=emK4sI913XCOChSDfLz5CN455e5JzopjeL9HhAjBL6I=;
	b=d/+0QoXgdRGZSuLsB7LXnFyz4HAd6Xue3GENLRC/m71FMyi/LCP2EP7HnjtoRCPfo3
	j5EBfyNdBsBmd2uRSgM2Xus70jbppPVmPAMUKhNrvPnx1gLNGqmEhVUnesUuQHJwPV0w
	PihLzmR09u2WT9WNeps94+y2Ey8hn9XdW2EkLZjB5ZmQhqTayLKlaWU6NpNu7TyMHfoS
	/DcbKtOhmaXVTYc5QtSFA29qHDDvbX3vtlGrJ88GeBsWFAHX/whP0rIYRIq4QqE/+LLQ
	krRWYls1zuy4ItAT4dHS0c1FIzeBUVoCOdlxLPVPBNfM00zO6DgPgerj2ZqMGeEz5HGr
	XZ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=emK4sI913XCOChSDfLz5CN455e5JzopjeL9HhAjBL6I=;
	b=Pjh6NxGN21l/x64Jp5Koikklr4j926s1mdmUnWx0CUb4SRzBiVdo7KP8quCw4ngxDR
	fNYhV10D1LZFHVBvCTWGLsPZ+mi1ap8JIJJEa6QQ0gs5WPA5avqSJnBVnpbdqwl4ts1x
	ROSndv2EGTbCWk06DOR0O3+/mc048pCGNjFih0nMGK7OyN8pX90efP4AybR7X3ga5B1W
	zCT52CzKyuGEbNxh90T4fem8Wb/g2xWk81Dd70us4Kaq5b7NUX+fcUi9Eai8SCdr3jIg
	pMMC8XkF3BAgbWhodwXrynK8a29ZuxcRk6lPfELJOEHnxzKn2+nIgf5YCp3fqIRM8mU5
	XzCQ==
X-Gm-Message-State: APjAAAUeJxV64fSA2HG+hog2TnMJnuvtuh3wurPz1gDQYJEwfXYhE0Ab
	nshwAKGQdqTwXnVsgnP24KvZxtPIi3WO5rHXmhMqWk7r
X-Google-Smtp-Source: APXvYqzdZzLKRAS9hxCotus5LSzQ0E69+8JB7UJScsUHgJn56ebQyFwV6N+4HVDXBeCHYOWXHmYwqM20AblrMAqtHxc=
X-Received: by 2002:a6b:f311:: with SMTP id m17mr1085617ioh.0.1569944162659;
	Tue, 01 Oct 2019 08:36:02 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 1 Oct 2019 08:35:51 -0700
Message-ID: <CAK5yBb9rsdL74cngTLEFoZrchOrfBV1pK=jAjWDfs+Aj2+CkJw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Monthly Technical call notes
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
X-List-Received-Date: Tue, 01 Oct 2019 15:36:04 -0000
Content-Type: multipart/alternative; boundary="00000000000021f3550593db1cf9"

--00000000000021f3550593db1cf9
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

--00000000000021f3550593db1cf9
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

--00000000000021f3550593db1cf9--
