Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ABC0E00875; Tue,  7 Aug 2018 14:17:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,TRACKER_ID autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	*  1.3 TRACKER_ID BODY: Incorporates a tracking ID number
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38593E007D1
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2018 14:17:17 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id h4-v6so102804qtj.7
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2018 14:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=EtfyUmTcpkgyH6HSQ+ofg1/P4E4r6jpvsE8EMnz01P8=;
	b=D56Vyix2sJ6F5Xl+T83Ptgg+DjnLjrQHrgUIJGHy/aLwyp8u1rgPZKaI+8272mbWa9
	cf+m2f2FWfQexHcKsPPkzAFmmbor3tbqrpYunBUl7I82/vFLfbVhLiJN2wJmYawThZCW
	RBQfamtNzvLlUrH+SwjB6+rzCWETp6yNV2Ww5G/RY6ZjgOY5FnRMoAteqyRPhN3UCG+4
	J7hBSa1j09o9XutqrK8bYsWQkkQYonvnPIfpraP9zwgTGlRPbVyk3uJi3xwjyH+vI29A
	nzXt6+ND3jCP9VoL7d0W513H3pePPQM8+vJgKY9vacOtJvpA5VceGoQoaW4iVu5NthZz
	ud0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EtfyUmTcpkgyH6HSQ+ofg1/P4E4r6jpvsE8EMnz01P8=;
	b=UEteeaswzxUpTEU0LHpbW0TqjOgAL6AMANEr/tL187fX/IrwK4w0UuxVE8vhcEcBUX
	zPIfOyMx1hMh/jYffjmV3PoH20kNfgMN1ZkS3tzP2F37AGD3K/npR6spd6cnG9kUU5Nv
	Mo6O8z2ZeACV2KhZ3qkFsGhgZbLFoopvAIMyHjnQ9qUsSqrz2T4P720EoHGi4E5nQnon
	BVQa9Z0m2ZFQqKQMmFSUPlu82Nas745CovOTaxO3UN0IzNeSqPugvfCLCSGhxDbYtIb5
	ucwvqyLY8Ku8wUiKXw7BfjEbMlZQRUSI200kc21IMuhuT4sbrW1L0fToGw3awrUyLksA
	nnaQ==
X-Gm-Message-State: AOUpUlFc47VrkG2VrybWFGLaZUX3eltX+VYc1sY5O7VJFi9Ut/N16pFl
	0Ff8omp9Pzd0cHBtfE1CmhloQ1VEotU239NC8rC5P4LDl6xPbA==
X-Google-Smtp-Source: AA+uWPyIVUoRpf7fXHRKDqvYgSnZ0togRq8zZeuUb/GW1VfM5Xs6pp6GqbYeKGxyekbqyRhSntwLUqZqXFQ6bkKaJ0A=
X-Received: by 2002:ac8:728a:: with SMTP id v10-v6mr95676qto.7.1533676636485; 
	Tue, 07 Aug 2018 14:17:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Tue, 7 Aug 2018 14:17:16 -0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Tue, 7 Aug 2018 17:17:16 -0400
Message-ID: <CANmTPBbVgVKe0C-Jtd+KuPS=sHQPfLPeLkKCegiWGXrMi5w1GA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to pass compilation options from local.conf?
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
X-List-Received-Date: Tue, 07 Aug 2018 21:17:18 -0000
Content-Type: multipart/alternative; boundary="0000000000001e53ed0572deeb13"

--0000000000001e53ed0572deeb13
Content-Type: text/plain; charset="UTF-8"

Hi,

The manual is quite confusing:

https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PACKAGECONFIG

There are several methods to pass compilation options to a package from
*local.conf*:

PACKAGECONFIG[f1]

or

PACKAGECONFIG_append_pn-*recipename*

or
PACKAGECONFIG_CONFARGS

or
COMMON_EXTRA_OECONF_append_pn-*recipename*



*Which one to use?*

Say for extra compilation options for php from  *local.conf* , do I use*?*

PACKAGECONFIG[php]="--enable-ftp --enable-sysvshm --enable-sysvmsg
--enable-sysvsem --enable-debug"
or
PACKAGECONFIG_append_pn-php = "--enable-ftp --enable-sysvshm
--enable-sysvmsg --enable-sysvsem --enable-debug"
or
COMMON_EXTRA_OECONF_append_pn-php = "--enable-ftp --enable-sysvshm
--enable-sysvmsg --enable-sysvsem --enable-debug"


Thanks,
S

--0000000000001e53ed0572deeb13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>The manual is quite conf=
using:</div><div><br></div><div><a href=3D"https://www.yoctoproject.org/doc=
s/latest/ref-manual/ref-manual.html#var-PACKAGECONFIG">https://www.yoctopro=
ject.org/docs/latest/ref-manual/ref-manual.html#var-PACKAGECONFIG</a></div>=
<div><br></div><div>There are several methods to pass compilation options t=
o a package from <b><i><span style=3D"font-family:monospace,monospace">loca=
l.conf</span></i></b>:</div><div>
<pre class=3D"gmail-literallayout">PACKAGECONFIG[f1]</pre>

or</div><div>
<pre class=3D"gmail-literallayout">PACKAGECONFIG_append_pn-<em class=3D"gma=
il-replaceable"><code>recipename</code></em> </pre>

or</div><div>
<span style=3D"font-family:monospace,monospace">PACKAGECONFIG_CONFARGS=C2=
=A0</span></div><div><br></div><div>or</div><div><code>COMMON_EXTRA_OECONF_=
append_pn-<i>recipename</i></code></div><div><code><i><br></i></code></div>=
<div><span style=3D"font-family:arial,helvetica,sans-serif"><code><br></cod=
e></span></div><div><code><span style=3D"font-family:arial,helvetica,sans-s=
erif">
</span><div><span style=3D"font-family:arial,helvetica,sans-serif"><br></sp=
an></div><div><span style=3D"font-family:arial,helvetica,sans-serif"><b>Whi=
ch one to use?</b><i><br></i></span></div><div><span style=3D"font-family:a=
rial,helvetica,sans-serif"><i><br></i></span></div><div><span style=3D"font=
-family:arial,helvetica,sans-serif">Say for extra compilation options for p=
hp from=C2=A0
<b><i><span style=3D"font-family:monospace,monospace">local.conf</span></i>=
</b> , do I use<i>?</i></span></div><div><span style=3D"font-family:arial,h=
elvetica,sans-serif"><i></i></span></div><div><span style=3D"font-family:ar=
ial,helvetica,sans-serif"><br><span style=3D"font-family:monospace,monospac=
e">PACKAGECONFIG[php]=3D&quot;--enable-ftp --enable-sysvshm --enable-sysvms=
g --enable-sysvsem --enable-debug&quot;</span><br>
or

<br><span style=3D"font-family:monospace,monospace">PACKAGECONFIG_append_pn=
-php =3D &quot;--enable-ftp --enable-sysvshm --enable-sysvmsg --enable-sysv=
sem --enable-debug&quot;</span><br>
or

<br><font size=3D"2"><span style=3D"font-family:monospace,monospace">COMMON=
_EXTRA_OECONF_append_pn-php =3D &quot;--enable-ftp --enable-sysvshm --enabl=
e-sysvmsg --enable-sysvsem --enable-debug&quot;</span></font></span></div><=
div><br><span style=3D"font-family:arial,helvetica,sans-serif"></span></div=
><div><span style=3D"font-family:arial,helvetica,sans-serif"><br></span></d=
iv><div><span style=3D"font-family:arial,helvetica,sans-serif">Thanks,</spa=
n></div><div><span style=3D"font-family:arial,helvetica,sans-serif">S<br></=
span></div><div><span style=3D"font-family:arial,helvetica,sans-serif"><br>=
</span></div><div><span style=3D"font-family:arial,helvetica,sans-serif"><i=
><br></i></span></div><div><code><span style=3D"font-family:arial,helvetica=
,sans-serif"></span></code></div></code></div></div>

--0000000000001e53ed0572deeb13--
