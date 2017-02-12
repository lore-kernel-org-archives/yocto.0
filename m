Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55AA8E009F3; Sat, 11 Feb 2017 18:04:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.177 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95909E009D7
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 18:04:40 -0800 (PST)
Received: by mail-ot0-f177.google.com with SMTP id 73so50606766otj.0
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 18:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O/o1Za5N1ZfZ2JkZyNNp6DARsSg0pvPnrzPrUaeVDkw=;
	b=NDl+EJZd4Q8Flitndw+H15FsOU49k7rfnBUucMTzRdK0EcBpSw3NIq9LLmbfZ4mpZy
	c67IJjnGo11WiwRJXVm8AJ+NJjgWRQBnsBzvagszbIeOa4q+m8lUenAe7Ym2ONILPprQ
	/Y1rbU+s+P8aUeUmWtnKYllmtzorJIpJY9Nd0JFrYzJKd1E2MzUo3s0YSr6wGfxCfHdD
	iNtyEHVMRzEDfRHa9/VK+plNegk+E0MyISNgwPZp+kNYrkjPALPLIIMGRtGiyeKob4SD
	65lPTOvI4EBDECNimQhp3HNxjDXcdlqos7E3KwjRZyG5QbiX7vIMWeDiAYYBoYa9b0rb
	abHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O/o1Za5N1ZfZ2JkZyNNp6DARsSg0pvPnrzPrUaeVDkw=;
	b=pFKZvcrzZTNvWPM/8NfBhDp+jQXMJnAGDsCuw47aHx8aLyilDEjUmJra6/8ugKdOqb
	xqbIF7QXg4lCBKH4UCOWtWklfmcbNUZIRCFfITZy1yc11JIy/TQ3m0OUuyZwJiv5mxrv
	/XzQLrBP4S4Q5NcCIIolS22UQVAbIRDLmYpRGp0mhZfAWYzQi5Ae+6qkwDAzd9WcifaE
	ZGTtXFQYcPUXVR1OD3zWxTrPB9Z0fdpOyZ5x6dmHc75YPjDgf0AhpExFtJ9iJ59jOTWv
	m8S+z3sghTQNX09JSNSsNSFs0nXM/p6lnAilIcoanH40G7ZRSPh1OvfzSeZvKzYUs7Qx
	TF2A==
X-Gm-Message-State: AMke39kxrIJatMcR/BxGT7+ZQ22/FseOhrOoyiUfGJXToAVFsEoQRBmTeMC8e/zwVP8QlYGkxWTxa86fK8fkEQ==
X-Received: by 10.157.44.153 with SMTP id p25mr8310994otb.27.1486865079521;
	Sat, 11 Feb 2017 18:04:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.5.8 with HTTP; Sat, 11 Feb 2017 18:04:19 -0800 (PST)
In-Reply-To: <589F5000.8050402@linux.intel.com>
References: <1486835474-10096-1-git-send-email-anibal.limon@linux.intel.com>
	<589F5000.8050402@linux.intel.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Sat, 11 Feb 2017 19:04:19 -0700
Message-ID: <CABcZANkJC0FVsrRh+Kdd8_h9yRWR=3gpWWO4O0t-gbKbEMOukw@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [[RFC][PATCH]] yocto-compat-layer.py: Add script to YP Compatible Layer validation
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
X-List-Received-Date: Sun, 12 Feb 2017 02:04:41 -0000
Content-Type: multipart/alternative; boundary=001a113b12fae4d86c05484bc0ef

--001a113b12fae4d86c05484bc0ef
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 11, 2017 at 10:55 AM, An=C3=ADbal Lim=C3=B3n <anibal.limon@linu=
x.intel.com
> wrote:

> During the development of this script based on OEQA framework i found a
> bug causing don't display stack traces, i sent a fix to the ML [1] also
> is on my branch at [2].
>
> I attached and example of how a log file looks, the example log results
> are based on meta-yocto-bsp.
>
> Cheers,
>         alimon
>
> [1]
> http://lists.openembedded.org/pipermail/openembedded-core/
> 2017-February/132494.html
> [2]
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/
> log/?h=3Dalimon/yp_compatible
>

This seems like a good start, but this isn=E2=80=99t useful:

    AssertionError: True is not false : Layer meta-yocto-bsp changed
signatures.

Presumably this is telling the user it=E2=80=99s modifying things without u=
sing the
appropriate overrides for machine or distro, but it doesn=E2=80=99t actuall=
y tell
them that, and displaying the changed checksums isn=E2=80=99t of a great de=
al of
use on its own either, I=E2=80=99d suggest at least capturing the changed v=
ariables
via bitbake-diffsigs or bitbake -S printdiff.
--=20
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--001a113b12fae4d86c05484bc0ef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sat, Feb 11, 2017 at 10:55 AM, An=C3=ADbal Lim=C3=B3n <span dir=3D"ltr">=
&lt;<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">aniba=
l.limon@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div id=
=3D"gmail-:7u" class=3D"gmail-a3s gmail-aXjCH gmail-m15a2e4e3cce616d4">Duri=
ng the development of this script based on OEQA framework i found a<br>
bug causing don&#39;t display stack traces, i sent a fix to the ML [1] also=
<br>
is on my branch at [2].<br>
<br>
I attached and example of how a log file looks, the example log results<br>
are based on meta-yocto-bsp.<br>
<br>
Cheers,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 alimon<br>
<br>
[1]<br>
<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2017-F=
ebruary/132494.html" rel=3D"noreferrer" target=3D"_blank">http://lists.open=
embedded.org/<wbr>pipermail/openembedded-core/<wbr>2017-February/132494.htm=
l</a><br>
[2]<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3D=
alimon/yp_compatible" rel=3D"noreferrer" target=3D"_blank">http://git.yocto=
project.org/<wbr>cgit/cgit.cgi/poky-contrib/<wbr>log/?h=3Dalimon/yp_compati=
ble</a><br>
<div class=3D"gmail-HOEnZb"></div></div></blockquote></div><br>This seems l=
ike a good start, but this isn=E2=80=99t useful:</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">=C2=A0 =C2=A0 AssertionError: Tr=
ue is not false : Layer meta-yocto-bsp changed signatures.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Presumably this is te=
lling the user it=E2=80=99s modifying things without using the appropriate =
overrides for machine or distro, but it doesn=E2=80=99t actually tell them =
that, and displaying the changed checksums isn=E2=80=99t of a great deal of=
 use on its own either, I=E2=80=99d suggest at least capturing the changed =
variables via bitbake-diffsigs or bitbake -S printdiff.<br>-- <br><div clas=
s=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Christopher La=
rson<br>kergoth at gmail dot com<br>Founder - BitBake, OpenEmbedded, OpenZa=
urus<br>Senior Software Engineer, Mentor Graphics</div></div></div></div>
</div></div>

--001a113b12fae4d86c05484bc0ef--
