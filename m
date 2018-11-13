Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EF84E00C49; Tue, 13 Nov 2018 15:50:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0E7EE00C3D
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 15:50:18 -0800 (PST)
Received: by mail-pf1-f170.google.com with SMTP id v68-v6so6899620pfk.0
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 15:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=FMpvEVGIJebPmmvrCzWzY2aoNU2gGPI+DlUzmeX3WDw=;
	b=ZRcwyOHHhZR17mLEtztMr5G9bDDToMkoKSI8USDPpggMdmOH+0w9kGC2+jzJVhtbTH
	aHE8ZRaV8naEw6NCrzrOeNwzDC8Rgj/5mO4LMPpx+lJrZ5vr8/lw7ZVqOJESVse9ZQ8B
	g9UtNoDHFRatrtrDR5a35OAqVqRiRGRuw7lNyn/GXYqsylJyUP+cZrwgOLrLXkB3hSFD
	GwPvoBIB5RMhL6nML8bnr+LeYi9qFZljI9eDAXBZiLgYmbcDilH/VvkLTsUV9OC5j0vl
	xnV9DYKLTDHsLh5IyS9a9I6hu/DKYYqhnTgx0V7qZI1/a/0MmUdptimdIb84io4Wi5RM
	kVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=FMpvEVGIJebPmmvrCzWzY2aoNU2gGPI+DlUzmeX3WDw=;
	b=SoIa2hykh5V2apjiMrQP3/8HQKYgcrUdxA6L2PM0wgC3HszxeC96Jtx5vfuexOd2kG
	7h6hEgE/+RnQ10NyMdgplqWyP9KjV+f08mwE8P3Mx6bodcRMlvbsYfEGW9KEY8jRBrtq
	UrGlryRbdvFo7v6gsSGJIABvkrAH7nA93M4cNb+fM+a6TJQLar/tVdypsY2JmGU9nHTh
	Btb+PJI+NyPBeaKkd9QVjLOsaPQLPeLUCjFQWvDlAOOEG25SawTNlrETrzxkbfJnKI4G
	X5qODtfN79gyNQ49SgOP/Mp7Y9UBwwbLxinQSv8aaTmBwly+N37WJlHphoafCEKYVdDn
	NhLw==
X-Gm-Message-State: AGRZ1gICO0UMHVPaVZQiJyQwLY382L1I5ysxfymdZDfmcie8rl/2stJb
	xTDxhZ5fPk+0C4TV4Xed8bVutA3X
X-Google-Smtp-Source: AJdET5c4qDKG8KxXq1KVtAOMb8mYjLkiEYEzhDYMJ238hAkdE92bqIM7VxZKGVkh9FvhyzdMwCBygg==
X-Received: by 2002:a63:c051:: with SMTP id z17mr6530554pgi.20.1542153018063; 
	Tue, 13 Nov 2018 15:50:18 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:75ee:9e74:d500:909d?
	([2601:202:4180:c33:75ee:9e74:d500:909d])
	by smtp.gmail.com with ESMTPSA id
	134sm20307823pgb.78.2018.11.13.15.50.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Nov 2018 15:50:17 -0800 (PST)
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.21.1811131521080.10117@localhost.localdomain>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <994912a2-bdd1-3502-526f-c9a2658895df@gmail.com>
Date: Tue, 13 Nov 2018 15:50:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.1811131521080.10117@localhost.localdomain>
Subject: Re: m4-native, zedboard, "Please port gnulib fseeko.c to your platform"
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
X-List-Received-Date: Tue, 13 Nov 2018 23:50:27 -0000
Content-Type: multipart/alternative;
	boundary="------------A5B94330F32B4EED3BC378D8"
Content-Language: en-US

--------------A5B94330F32B4EED3BC378D8
Content-Type: text/plain; charset=iso-8859-7
Content-Transfer-Encoding: quoted-printable

Robert,

On 11/13/18 12:28 PM, Robert P. J. Day wrote:
>   been away from YP for a few months, diving back in, want to build a
> core-image-minimal for my zedboard, and i will first admit that i'm
> using a non-approved distro (fully-updated fedora 29):
>
> "WARNING: Host distribution "fedora-29" has not been validated with
> this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested
> distribution."
>
>   no matter, i will live dangerously. but then things take an ugly
> turn:
>
> "WARNING: Your host glibc verson (2.28) is newer than that in
> uninative (2.27). Disabling uninative so that sstate is not
> corrupted."

>   ok, let's see how far we get ... and that's here, trying to compile
> m4-native:
>
> | gcc   -I. -I../../m4-1.4.18/lib
> -isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native=
/1.4.18-r0/recipe-sysroot-native/usr/include
> -isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native=
/1.4.18-r0/recipe-sysroot-native/usr/include
> -O2 -pipe -c -o freadahead.o ../../m4-1.4.18/lib/freadahead.c
> | gcc   -I. -I../../m4-1.4.18/lib
> -isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native=
/1.4.18-r0/recipe-sysroot-native/usr/include
> -isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native=
/1.4.18-r0/recipe-sysroot-native/usr/include
> -O2 -pipe -c -o fseeko.o ../../m4-1.4.18/lib/fseeko.c
> | ../../m4-1.4.18/lib/freadahead.c: In function =A1freadahead=A2:
> | ../../m4-1.4.18/lib/fseeko.c: In function =A1rpl_fseeko=A2:
> | ../../m4-1.4.18/lib/freadahead.c:92:3: error: #error "Please port
> gnulib freadahead.c to your platform! Look at the definition of
> fflush, fread, ungetc on your system, then report this to bug-gnulib."
> |   #error "Please port gnulib freadahead.c to your platform! Look at
> the definition of fflush, fread, ungetc on your system, then report
> this to bug-gnulib."
> |    ^~~~~
> | ../../m4-1.4.18/lib/fseeko.c:110:4: error: #error "Please port
> gnulib fseeko.c to your platform! Look at the code in fseeko.c, then
> report this to bug-gnulib."
> |    #error "Please port gnulib fseeko.c to your platform! Look at the
> code in fseeko.c, then report this to bug-gnulib."
>
>
> and so on. red hat's bugzilla has an entry for just this:
>
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1595702
>
> but i'm unsure (read, have no clue) how to deal with this, and i
> suspect it affects more targets than just zedboard which is why i'm
> asking on the general YP list.
>
>   thoughts? is there a cheap fix for this? i'm about to dive into
> debugging this, but if someone wants to make my life easy, that'd be
> great.

Thud has :
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-devtoo=
ls/m4?h=3Dthud&id=3D95ca077ab871ceff46c2052f324f879a1d624ff4

with backports pending verification for sumo but missed th Rocko cutoff.

- armin

> rday
>
>

--------------A5B94330F32B4EED3BC378D8
Content-Type: text/html; charset=iso-8859-7
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-7">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Robert,<br>
    </p>
    <div class="moz-cite-prefix">On 11/13/18 12:28 PM, Robert P. J. Day
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:alpine.LFD.2.21.1811131521080.10117@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">
  been away from YP for a few months, diving back in, want to build a
core-image-minimal for my zedboard, and i will first admit that i'm
using a non-approved distro (fully-updated fedora 29):

"WARNING: Host distribution "fedora-29" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution."

  no matter, i will live dangerously. but then things take an ugly
turn:

"WARNING: Your host glibc verson (2.28) is newer than that in
uninative (2.27). Disabling uninative so that sstate is not
corrupted."</pre>
    </blockquote>
    <br>
    <blockquote type="cite"
      cite="mid:alpine.LFD.2.21.1811131521080.10117@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">  ok, let's see how far we get ... and that's here, trying to compile
m4-native:

| gcc   -I. -I../../m4-1.4.18/lib
-isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native/1.4.18-r0/recipe-sysroot-native/usr/include
-isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native/1.4.18-r0/recipe-sysroot-native/usr/include
-O2 -pipe -c -o freadahead.o ../../m4-1.4.18/lib/freadahead.c
| gcc   -I. -I../../m4-1.4.18/lib
-isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native/1.4.18-r0/recipe-sysroot-native/usr/include
-isystem/home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/m4-native/1.4.18-r0/recipe-sysroot-native/usr/include
-O2 -pipe -c -o fseeko.o ../../m4-1.4.18/lib/fseeko.c
| ../../m4-1.4.18/lib/freadahead.c: In function ¡freadahead¢:
| ../../m4-1.4.18/lib/fseeko.c: In function ¡rpl_fseeko¢:
| ../../m4-1.4.18/lib/freadahead.c:92:3: error: #error "Please port
gnulib freadahead.c to your platform! Look at the definition of
fflush, fread, ungetc on your system, then report this to bug-gnulib."
|   #error "Please port gnulib freadahead.c to your platform! Look at
the definition of fflush, fread, ungetc on your system, then report
this to bug-gnulib."
|    ^~~~~
| ../../m4-1.4.18/lib/fseeko.c:110:4: error: #error "Please port
gnulib fseeko.c to your platform! Look at the code in fseeko.c, then
report this to bug-gnulib."
|    #error "Please port gnulib fseeko.c to your platform! Look at the
code in fseeko.c, then report this to bug-gnulib."


and so on. red hat's bugzilla has an entry for just this:

<a class="moz-txt-link-freetext" href="https://bugzilla.redhat.com/show_bug.cgi?id=1595702">https://bugzilla.redhat.com/show_bug.cgi?id=1595702</a>

but i'm unsure (read, have no clue) how to deal with this, and i
suspect it affects more targets than just zedboard which is why i'm
asking on the general YP list.

  thoughts? is there a cheap fix for this? i'm about to dive into
debugging this, but if someone wants to make my life easy, that'd be
great.
</pre>
    </blockquote>
    <p>Thud has :
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-devtools/m4?h=thud&amp;id=95ca077ab871ceff46c2052f324f879a1d624ff4">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-devtools/m4?h=thud&amp;id=95ca077ab871ceff46c2052f324f879a1d624ff4</a></p>
    <p>with backports pending verification for sumo but missed th Rocko
      cutoff.</p>
    <p>- armin<br>
    </p>
    <blockquote type="cite"
      cite="mid:alpine.LFD.2.21.1811131521080.10117@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">
rday

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------A5B94330F32B4EED3BC378D8--
