Return-Path: <lookatyouhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01EBCE00BAF; Thu, 23 May 2019 08:05:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lookatyouhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67B13E00B8F
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 08:05:11 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id g18so5687983otj.11
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 08:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=iBcpPq8C0mh7+Uo8G2v9OU6aXBLWX8xbfkrxnFzhbDU=;
	b=tnPniTbklmTT4/oEgkH7+vmklJioBP9BXfMBF2t3o+dRVbFVdFjmHCOScXIOmlO0Cs
	zJ+LXI7LJJqOpT7bMwHi5pwUXodH+vy9QU9EuXTEE2aZnyY1k5c0JdEeMs016/HjA785
	YocVczkni8qnBBErhvsDDZPnzpthuds+8EWqs7lj0x6nYgKYRXhJb3WXx4E50PvoaKMy
	VOkqAgIAqi+I0gO1EXRnbGF8cOu6rFiKiNDMCI17oju6da1hbGRXfmf59NoKuFvGB+c6
	9LGUzQiju4r+DZadAWA3Vliw8LVgjttPS7ZHZsDbpNnlstNccakc2YdHH9YwvEsogHEW
	tlYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iBcpPq8C0mh7+Uo8G2v9OU6aXBLWX8xbfkrxnFzhbDU=;
	b=AXKaiCi77fzCnsrUko+02a5Ar8syca5p0LVVdlqmGOdplBF+7XpcrIrpiLP7rhLBuE
	B5+8GCkNZSHuz9maPD8rEx4B4k0DBUywih2gUjgCSN3alHjNEptqp7ZKxuENkVdBMv4j
	dubaNXmUHAG+xROhvJgHoCnUuF8GBssIilyijczL+UBETzilbkS7qd/+yEsrxfHaxXV2
	1mqyd4Bt4I56QYpBjGNHvkmchZoC0kqRvbRsq+/gzNiG4LHQg4xN73DrK6ZEOY3UPAYM
	ifyYR8ngfZGE9j2zKXO3nxIg+fZH5AJCPSAugS69+MwHJufDJ/Shvc182j5cPXlSQ+N6
	sXIA==
X-Gm-Message-State: APjAAAXX9dqeNl+ntbKN2FlGuuQtLAIKQC8X+sTdpCCB0mcwRMH3AttG
	g5sg+sMROIzW/8ZZGdkqrd2izkEENsFlcYh8UseDHru0Vwc=
X-Google-Smtp-Source: APXvYqzCCHzrhp/7pxJCLhjg4GXxKeI+ca5jImP8bEbzovD/fkfZnTrkMWLmInMqLEf2iwzUeD7xJ1sDfx9WCkb26EQ=
X-Received: by 2002:a9d:6b0d:: with SMTP id g13mr21537677otp.91.1558623910624; 
	Thu, 23 May 2019 08:05:10 -0700 (PDT)
MIME-Version: 1.0
From: Shane Peelar <lookatyouhacker@gmail.com>
Date: Thu, 23 May 2019 11:05:01 -0400
Message-ID: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: prelink-cross with -fno-plt
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
X-List-Received-Date: Thu, 23 May 2019 15:05:12 -0000
Content-Type: multipart/alternative; boundary="000000000000880d6c05898f6860"

--000000000000880d6c05898f6860
Content-Type: text/plain; charset="UTF-8"

Hi Everyone @ the Yocto project,

I'm Shane Peelar, a PhD Candidate at the University of Windsor.
I'm writing to you about prelink-cross, as part of the Yocto project.
Specifically, I'm looking at using it with executables built using
`-fno-plt` under GCC.
I wasn't quite sure where to send this email to, so I figured I'd try
here.  If there's a better place to send this, please let me know.

Right now, prelink-cross seems to fail an assertion in arch-x86_64.c, line
421, when
using it with an executable built with `-fno-plt`:

...
assert (i < dso->ehdr.e_shnum)
...

This snippet seems to be looking for the ".plt" section and, since it can't
find it, the assertion fires.  This makes sense because in `-fno-plt`
executables, the `.plt` section is missing entirely.
I'm not an expert on ELF stuff, although I am learning quickly.  It looks
like
this code wants to write into GOT[1] the address of ".plt" + 0x16 -- since
".plt" doesn't
exist, does it make sense to just change this assert to an if statement
like so:

...
      if (i < dso->ehdr.e_shnum)
      { ... }
...

and skip over that part?  Or is this a real error condition for
prelink-cross and it really should not continue?  The executable in
question is also non-PIE, if that makes a difference.

Thanks for your time,
Shane

--000000000000880d6c05898f6860
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Everyone @ the Yocto project,<br></div><div><br></=
div><div>I&#39;m Shane Peelar, a PhD Candidate at the University of Windsor=
.</div><div>I&#39;m writing to you about prelink-cross, as part of the Yoct=
o project.</div><div>Specifically, I&#39;m looking at using it with executa=
bles built using `-fno-plt` under GCC.<br></div><div>I wasn&#39;t quite sur=
e where to send this email to, so I figured I&#39;d try here.=C2=A0 If ther=
e&#39;s a better place to send this, please let me know.<br></div><div><br>=
</div><div>Right now, prelink-cross seems to fail an assertion in arch-x86_=
64.c, line 421, when</div><div>using it with an executable built with `-fno=
-plt`:<br></div><div><br>...<br></div><div>assert (i &lt; dso-&gt;ehdr.e_sh=
num)</div><div>...</div><div><br></div><div>This snippet seems to be lookin=
g for the &quot;.plt&quot; section and, since it can&#39;t find it, the ass=
ertion fires.=C2=A0 This makes sense because in `-fno-plt` executables, the=
 `.plt` section is missing entirely.</div><div>I&#39;m not an expert on ELF=
 stuff, although I am learning quickly.=C2=A0 It looks like</div><div>this =
code wants to write into GOT[1] the address of &quot;.plt&quot; + 0x16 -- s=
ince &quot;.plt&quot; doesn&#39;t</div><div>exist, does it make sense to ju=
st change this assert to an if statement like so:<br><br>...<br>=C2=A0 =C2=
=A0 =C2=A0 if (i &lt; dso-&gt;ehdr.e_shnum)<br>=C2=A0 =C2=A0 =C2=A0 { ... }=
<br>...</div><div><br></div><div>and skip over that part?=C2=A0 Or is this =
a real error condition for prelink-cross and it really should not continue?=
=C2=A0 The executable in question is also non-PIE, if that makes a differen=
ce.</div><div><br></div><div>Thanks for your time,</div><div>Shane</div></d=
iv>

--000000000000880d6c05898f6860--
