Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1852.1581788741343245503
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2020 09:45:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=S794KKhO;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2821E0172D; Sat, 15 Feb 2020 09:45:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96D61E0172B
	for <yocto@yoctoproject.org>; Sat, 15 Feb 2020 09:45:39 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id j17so15276352edp.3
        for <yocto@yoctoproject.org>; Sat, 15 Feb 2020 09:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0POcwndcbhFaOF3OfAp9jpT7Awj7+WHSnEaY0+S8e14=;
        b=S794KKhOaiT/EVeZ4lJwpm8QBpJ3RbTCGA+PVnpeU+h5P0H++rq9UogcOhphwnOQRJ
         NYARAX50ZNldUCh+/XgwaEU/B4gXqaARkFm1If/OXcnHzfDuThcumkPANBp0iYCCQl57
         LmUQgJJ6/ENPExdyLn2MtFlw0heTsZDbb+r6v9jJA53a40gRZPxMTAvMjI+Kl4zYR5qM
         PvHSOMLQYpKk4pt3irvFfNv9XDUR9lPuASY4O2y+z2xE2AlKaadgZLBQTYGiNNUzYexh
         yw5Z8/DyPCVb7+JW34FrPsMBvWiWHw5RajNulZNuHcJno0HUXGa0Yt9UFB1vK+qBMCzq
         Hv+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0POcwndcbhFaOF3OfAp9jpT7Awj7+WHSnEaY0+S8e14=;
        b=m8KVxqWN4rxRmRYtR+UTNPSu1+8DeBpqh+6cMw7svaH8SvIGxy4ZdE2CT+NZO1RknL
         dhrU24Vc0DERfhfoNPmBXHEA+rGw74qZW9CNQaV0zZa2ZSLlHdj94QM8RuU576r5RfkJ
         Kuq2b0y6kokYLQXPV9SzPrqtQ5vWpvrUGHBaYxcIVoKqNjV64gAb2qEt4IQlNGzdu+Lr
         SeZuLHaJ+d6QUqoB1+AKC6RvybYX+iD2IUQz/4netC6F5xNVHgR8paNGEaHQfVSMrAC6
         XDwIpTygzxqMULFZKfy+5ZhuEjK1VG8SRPmEm0Q78F/shEACtSVvkSmVa0lZ2MOPdOWV
         glww==
X-Gm-Message-State: APjAAAVubI+i6eA/Ad2HYkXRMQBUXfsM9M0wAwyGoE1yqEk2bfCAPdPs
	/t11bJn/zrUlBSeb2p1UzTL0fo5XelADkbyvLkUYkFHW
X-Google-Smtp-Source: APXvYqwtNJvO7yLRBkGa0EQqiP/9DZqilNlyZ0gVlEsLgBVasFUPX0lqCqAKLveG4ffbA3IL+dah+AbZGEhpmT8EhPM=
X-Received: by 2002:a17:906:5a94:: with SMTP id l20mr8532380ejq.192.1581788738738;
 Sat, 15 Feb 2020 09:45:38 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2002150129460.2926947@localhost.localdomain>
 <61336b69-5456-3951-4b52-a6d471049612@ibeeto.com> <CA+chaQdy2=M+HeX93X1c-Ttk-1r6KtBXEFFS62Pkj19UQC_C3g@mail.gmail.com>
In-Reply-To: <CA+chaQdy2=M+HeX93X1c-Ttk-1r6KtBXEFFS62Pkj19UQC_C3g@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Sat, 15 Feb 2020 18:45:27 +0100
Message-ID: <CA+chaQe5SDQUR0Qi+i4GuT4k-0qDJoEUeZgtAFv3TdNmD+ph7A@mail.gmail.com>
Subject: Re: [yocto] does git SRC_URI really *require" a SRCREV setting?
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e1dc8d059ea0e36b"

--000000000000e1dc8d059ea0e36b
Content-Type: text/plain; charset="UTF-8"

or not.. both were already fixed
http://git.openembedded.org/meta-openembedded/commit/?id=2f6c043c0c99ccf71f9eb9088adbe42972b9d8a0
http://git.openembedded.org/meta-openembedded/commit/?id=f61d9b3fd32dede5f2ab2aabbf0a8fb9fa75dd98

On Sat, Feb 15, 2020 at 6:38 PM Martin Jansa <martin.jansa@gmail.com> wrote:

> Both recipes should be updated to use SRCREV like any other recipe, I'll
> send patch for that.
>
> The documentation should also mention that using tag names in SRCREV (or
> tag parameter) is not recommended, because tags can be moved and bitbake
> will always use "git ls-remote" to map the tag name to actual git sha,
> which needs to upstream repo to be available (breaking the builds without
> access to the network).
>
> On Sat, Feb 15, 2020 at 6:33 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
> wrote:
>
>> The wording might need improvement but both of your examples actually do
>> provide SRC_REV but in the inline form with SRC_URI (rev/tag).
>>
>> The documentation should probably say something like SRC_REV needs to be
>> provided but it can either be done by setting the variable explicitly or by
>> using the rev/tag option with SRC_URI.
>>
>> :rjs
>> On 2/14/20 10:35 PM, rpjday@crashcourse.ca wrote:
>>
>>   yes, yes, more obsessive-compulsive nitpickery, but YP dev tasks
>> manual, section 3.3.5, reads:
>>
>> "Another way of specifying source is from an SCM. For Git
>> repositories, you must specify SRCREV and you should specify PV to
>> include the revision with SRCPV."
>>
>>   you *must* specify SRCREV? i don't think that's true -- a couple
>> examples from meta-oe ... here's hiredis_0.13.1.bb:
>>
>> SRC_URI = "git://github.com/redis/hiredis;protocol=git;rev=f58dd249d6ed47a7e835463c3b04722972281dbb \
>>
>>   and here's sshfs-fuse_2.8.bb:
>>
>> SRC_URI = "git://github.com/libfuse/sshfs;tag=b2fa7593586b141298e6159f40f521d2b0f4f894 \
>>
>>   neither of which specify SRCREV (clearly since they don't need to
>> given the SRC_URI options in use).
>>
>> rday
>>
>> p.s. bitbake's git.py fetcher code makes no mention of the "rev"
>> option in its opening docstring. just an observation if anyone wants
>> to tweak that.
>>
>>
>>
>> --
>> -----
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3386 x700
>>
>> 
>>
>

--000000000000e1dc8d059ea0e36b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">or not.. both were already fixed<div><a href=3D"http://git=
.openembedded.org/meta-openembedded/commit/?id=3D2f6c043c0c99ccf71f9eb9088a=
dbe42972b9d8a0">http://git.openembedded.org/meta-openembedded/commit/?id=3D=
2f6c043c0c99ccf71f9eb9088adbe42972b9d8a0</a><br></div><div><a href=3D"http:=
//git.openembedded.org/meta-openembedded/commit/?id=3Df61d9b3fd32dede5f2ab2=
aabbf0a8fb9fa75dd98">http://git.openembedded.org/meta-openembedded/commit/?=
id=3Df61d9b3fd32dede5f2ab2aabbf0a8fb9fa75dd98</a><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 15, =
2020 at 6:38 PM Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com">=
martin.jansa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Both recipes should be updated to us=
e SRCREV like any other recipe, I&#39;ll send patch for that.<div><br></div=
><div>The documentation should also mention that using tag names in SRCREV =
(or tag parameter) is not recommended, because tags can be moved and bitbak=
e will always use &quot;git ls-remote&quot; to map the tag name to actual g=
it sha, which needs to upstream repo to be available (breaking the builds w=
ithout access to the network).</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 15, 2020 at 6:33 PM Rudolf =
J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank">=
rudolf.streif@ibeeto.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
  
    
  
  <div>
    <p>The wording might need improvement but both of your examples
      actually do provide SRC_REV but in the inline form with SRC_URI
      (rev/tag).</p>
    <p>The documentation should probably say something like SRC_REV
      needs to be provided but it can either be done by setting the
      variable explicitly or by using the rev/tag option with SRC_URI.<br>
    </p>
    <p>:rjs<br>
    </p>
    <div>On 2/14/20 10:35 PM,
      <a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@cr=
ashcourse.ca</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre>  yes, yes, more obsessive-compulsive nitpickery, but YP dev ta=
sks
manual, section 3.3.5, reads:

&quot;Another way of specifying source is from an SCM. For Git
repositories, you must specify SRCREV and you should specify PV to
include the revision with SRCPV.&quot;

  you *must* specify SRCREV? i don&#39;t think that&#39;s true -- a couple
examples from meta-oe ... here&#39;s <a href=3D"http://hiredis_0.13.1.bb" =
target=3D"_blank">hiredis_0.13.1.bb</a>:

SRC_URI =3D &quot;git://<a href=3D"http://github.com/redis/hiredis;protoco=
l=3Dgit;rev=3Df58dd249d6ed47a7e835463c3b04722972281dbb" target=3D"_blank">g=
ithub.com/redis/hiredis;protocol=3Dgit;rev=3Df58dd249d6ed47a7e835463c3b0472=
2972281dbb</a> \

  and here&#39;s <a href=3D"http://sshfs-fuse_2.8.bb" target=3D"_blank">ss=
hfs-fuse_2.8.bb</a>:

SRC_URI =3D &quot;git://<a href=3D"http://github.com/libfuse/sshfs;tag=3Db=
2fa7593586b141298e6159f40f521d2b0f4f894" target=3D"_blank">github.com/libfu=
se/sshfs;tag=3Db2fa7593586b141298e6159f40f521d2b0f4f894</a> \

  neither of which specify SRCREV (clearly since they don&#39;t need to
given the SRC_URI options in use).

rday

p.s. bitbake&#39;s git.py fetcher code makes no mention of the &quot;rev&q=
uot;
option in its opening docstring. just an observation if anyone wants
to tweak that.

</pre>
      <br>
      <fieldset></fieldset>
      <pre></pre>
    </blockquote>
    <pre cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </div>

<br>
</blockquote></div>
</blockquote></div>

--000000000000e1dc8d059ea0e36b--
