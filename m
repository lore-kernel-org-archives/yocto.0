Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 670DBE00901; Fri,  7 Nov 2014 06:16:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB467E00863
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 06:16:19 -0800 (PST)
Received: by mail-ob0-f180.google.com with SMTP id wp4so2570437obc.25
	for <yocto@yoctoproject.org>; Fri, 07 Nov 2014 06:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XFuIN3Z46Ax9AxsEKlJRoLIqhf1DRkXMNQiTWEQIXDo=;
	b=TQyYyWZYduTmSKwhxDH7XZw9VZA6AUCJkU5KhcYgij/ED9SvfOZnsC/zVGQVRNW8Q5
	caLern1ARrLgUvhcTyiuWDPojnBbGbkvronSlHk9HhEe1vmOE22FTI3c4X7ABCSsZHVl
	DSlUmOiqUhcqhjyrGKUDFrClBgbH5cI38JqV7uC38kQtvHE9GfXCnK/icrQS+MSNRJJk
	BXUEQZnieyqi3DS1SnJGA/e8P5905HzVLMK+Akanij409OSj20pyS6+1XtDlhWXw3QcM
	hNFVnY0h+vQcOu2t+1vTeJa+d4Uu6BSrctgLhjjiFIGqsiKfrHhNAjSRxG58HjJDUDHl
	QaUw==
MIME-Version: 1.0
X-Received: by 10.182.4.10 with SMTP id g10mr9957893obg.35.1415369778996; Fri,
	07 Nov 2014 06:16:18 -0800 (PST)
Received: by 10.60.162.240 with HTTP; Fri, 7 Nov 2014 06:16:18 -0800 (PST)
In-Reply-To: <CAFZh4h-zJTipBBsyGbFpvF6OY0fEdevNNgTdu=VPMLh74jk=iQ@mail.gmail.com>
References: <2C73D3E46744804E888EDCCD6FBE4FD089616794EE@SAFEX1MAIL5.st.com>
	<4884585.vGdbtxCfvM@peggleto-mobl5.ger.corp.intel.com>
	<CAFZh4h-zJTipBBsyGbFpvF6OY0fEdevNNgTdu=VPMLh74jk=iQ@mail.gmail.com>
Date: Fri, 7 Nov 2014 09:16:18 -0500
Message-ID: <CAFZh4h-APpx9hx8aUEAJkqWx-E9eXNTCV7gZ9kAYWThPqG+6jQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build issue with daisy branch
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
X-List-Received-Date: Fri, 07 Nov 2014 14:16:22 -0000
Content-Type: multipart/alternative; boundary=001a1134a152e73eab0507457483

--001a1134a152e73eab0507457483
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Nov 7, 2014 at 9:15 AM, Brian Hutchinson <b.hutchman@gmail.com>
wrote:

> On Fri, Nov 7, 2014 at 9:05 AM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> On Thursday 06 November 2014 16:01:44 Pierre Yves MORDRET wrote:
>> > Recently I came across a build issue when using daisy branch.
>> >
>> >    ports/linux/xattr/portdefs.h:1:24: fatal error: attr/xattr.h: No such
>> > file or directory #include <attr/xattr.h>
>> >
>> >     ERROR: Function failed: do_compile (log file is located at
>> >
>> .../tmp-eglibc/work/x86_64-nativesdk-oesdk-linux/nativesdk-pseudo/1.6.2-r0/
>> > temp/log.do_compile.26354)
>> >
>> > I saw an upgrade in daisy branch related to pseudo.
>> > Do you know which package is supposed to provide "attr/xattr.h"
>>
>> This has been subsequently fixed in the daisy branch - if you pull again
>> you
>> should get the fix.
>>
>> Cheers,
>> Paul
>>
>>
>>
> I too noticed something strange in my first dizzy build.  I stole a line
> from my previous local.conf:
>
>  IMAGE_FSTYPES ?= "jffs2 ubi tar.bz2"
>
> ... and the build failed with all kinds of ubi related errors.
>
> Regards,
>
> Brian
>
>
OK, forgive me.  I'm still asleep.  Didn't notice the OP was talking about
daisy.  I had dizzy on the brain.

B

--001a1134a152e73eab0507457483
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Nov 7, 2014 at 9:15 AM, Brian Hutchinson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div =
class=3D"gmail_extra"><div class=3D"gmail_quote"><span class=3D"">On Fri, N=
ov 7, 2014 at 9:05 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204=
,204);border-left-style:solid;padding-left:1ex"><span>On Thursday 06 Novemb=
er 2014 16:01:44 Pierre Yves MORDRET wrote:<br>
&gt; Recently I came across a build issue when using daisy branch.<br>
&gt;<br>
&gt;=A0 =A0 ports/linux/xattr/portdefs.h:1:24: fatal error: attr/xattr.h: N=
o such<br>
&gt; file or directory #include &lt;attr/xattr.h&gt;<br>
&gt;<br>
&gt;=A0 =A0 =A0ERROR: Function failed: do_compile (log file is located at<b=
r>
&gt; .../tmp-eglibc/work/x86_64-nativesdk-oesdk-linux/nativesdk-pseudo/1.6.=
2-r0/<br>
&gt; temp/log.do_compile.26354)<br>
&gt;<br>
&gt; I saw an upgrade in daisy branch related to pseudo.<br>
&gt; Do you know which package is supposed to provide &quot;attr/xattr.h&qu=
ot;<br>
<br>
</span>This has been subsequently fixed in the daisy branch - if you pull a=
gain you<br>
should get the fix.<br>
<br>
Cheers,<br>
Paul<br>
<span><font color=3D"#888888"><br></font></span><div><div><br></div></div><=
/blockquote><div><br></div></span><div>I too noticed something strange in m=
y first dizzy build.=A0 I stole a line from my previous local.conf:</div><d=
iv><br></div><div>=A0IMAGE_FSTYPES ?=3D &quot;jffs2 ubi tar.bz2&quot;</div>=
<div><br></div><div>... and the build failed with all kinds of ubi related =
errors.</div><div><br></div><div>Regards,</div><div><br></div><div>Brian</d=
iv><div></div></div><br></div></div></blockquote><div>=A0</div><div>OK, for=
give me.=A0 I&#39;m still asleep.=A0 Didn&#39;t notice the OP was talking a=
bout daisy.=A0 I had dizzy on the brain.</div><div><br></div><div>B</div><d=
iv>=A0</div></div><br></div></div>

--001a1134a152e73eab0507457483--
