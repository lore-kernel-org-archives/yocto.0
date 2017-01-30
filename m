Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9DC6E003D7; Sun, 29 Jan 2017 20:31:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB685E0030B
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 20:31:51 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id h53so17945804qth.3
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 20:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hlIyLqrWfqluSRi7x83QEVZA95/nzwDA4fQy/TfUwek=;
	b=e2sdKdA4F3QyV+VOe4u2IXcIZe+5fXVzR1yhWB8FoQHx0w9Xk2oWsM7Cm8HcoNUgDp
	+iCgRNJYYe0kOTG3z16lbobsablSRhFvXu6h8EBqPK2/iDEgdqwY/A/zztFp51Siw8aH
	ylKTIqhZQPA13AASnBielXMobD9y2KABvSaK8RPYcdhsPix6Ve6zfC0SZ9tsn8q/9bl1
	10ZKLHnBa4oFZQ4s+H0koAHL9t2Rfd32smG84+JNhiQgmCV3N2AcRw/sc87cnaqRcf4K
	JD+t53YabwuE0XX5NAHHK3BxJSssci8vEftT7r+q8xqIQ9Onu066ZhyFP53H4K7yGZbL
	N83g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hlIyLqrWfqluSRi7x83QEVZA95/nzwDA4fQy/TfUwek=;
	b=RoX1Nxt4cFPumj/cgLxIW2rwDrS+H6tCDszyooDBEmK5OGgzG0UiyZ78fSI908sNhy
	X4nr/pnW1d3PlKZj1rIH5ZoXInOqeDbs3noN6wgIVDkIGhkStbsZTVNqkEd4wn4dsrN8
	+T3mOz8sY8aUHzOQtEu5T6XAiFJUybLuVNbxCC87C15uYtlFV2VDNa/72VgiDUhe+xDj
	1VhBtHr+wcEM9gRdICnDbunff/3MzLlDJAxauRFqQxhNFouezZDY+HmOY3/VyD4SQkXC
	lXKc6pknFtBX+21wJrHTVp5mKMSBHdH5V//dVWiiTaDYIk0SZKBgyRuRFRfx4y+EW84L
	uM0Q==
X-Gm-Message-State: AIkVDXKYdOCjNpAr1/L0O4ca90clMX6Ou8ltCj7HdCPPhgkG7nCXSAJJ4irMAftkokQAKs9nN7rdGoD8LSKNLQ==
X-Received: by 10.200.43.212 with SMTP id n20mr18074957qtn.117.1485750710445; 
	Sun, 29 Jan 2017 20:31:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.135.153 with HTTP; Sun, 29 Jan 2017 20:31:49 -0800 (PST)
In-Reply-To: <CADkTA4N8iMJD1pt=E9qSsjGKAOfvMnHAwS=3h1AntxTxDXOUGQ@mail.gmail.com>
References: <20170125103759.15880-1-freesilicon@gmail.com>
	<CADkTA4N8iMJD1pt=E9qSsjGKAOfvMnHAwS=3h1AntxTxDXOUGQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 29 Jan 2017 23:31:49 -0500
Message-ID: <CADkTA4MvR-tpPbyHgDsVV7xcRk5Ef6zKJF335m4vcphYCvhGWg@mail.gmail.com>
To: David Vincent <freesilicon@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto-kernel-tools][PATCH 0/1] Rework merge of feature branches
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
X-List-Received-Date: Mon, 30 Jan 2017 04:32:00 -0000
Content-Type: multipart/alternative; boundary=001a1135b98e523a730547484b7d

--001a1135b98e523a730547484b7d
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 25, 2017 at 1:05 PM, Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

>
>
> On Wed, Jan 25, 2017 at 5:37 AM, David Vincent <freesilicon@gmail.com>
> wrote:
>
>> I've recently noticed that, on Morty, feature branches of a Yocto kernel
>> are not
>> merged anymore. This is due to the fact that the meta-series file does not
>> process the git merge commands anymore.
>>
>
> Indeed. I dropped that functionality on purpose when I did the
> simplification
> and streamlining of the processing .. since I wanted to see if anyone was
> using it.
>
> I now have my answer :D
>
> I need to have a closer look at the patch and run it through some tests
> here, but  on my glance, you've done it correctly.
>
>
>> This commit creates a new merge command to be executed when processing the
>> kernel metadata. To solve the issue, there is also a patch to send to
>> oe-core
>> for kernel-yocto.bbclass, but I wait for this patch to be included since
>> there
>> is no point without it.
>>
>
> Send that patch to me, or I'll just do the patch myself .. since yes, we
> do need
> to add merge to the list of valid comments when processing the meta data.
>
> I'll submit all the changes in my next consolidated pull request for the
> kernels + tools.
>

I spent Friday looking into this in more detail, and to keep things
consistent
with how the path and config queues are handled, with all the tree
manipulations
pull out of the various scripts and exposed in the bbclass itself, I ended
up with
a different implementation of the support.

The kern-tools change is the same as you did (and is your change), the
difference
is in the bbclass processing, where do_patch() modifies the tree, and it
consumes
the output of the meta-data routine .. versus the kgit-meta script itself.

The work can be seen in my poky-contrib tree:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=zedd/kernel,
in the
commit "kern-tools: re-enable scc merge command".

These changes are on master, and passed my testing to merge feature branches
into the branch being built.

If you are able to try it out (on master), that would be great. I'm going
to let it
soak for a few days, and once it merges to master, it can be ported to
morty.

Cheers,

Bruce



>
> Bruce
>
>
>>
>> David Vincent (1):
>>   scc: Move merge command
>>
>>  tools/kgit-meta          | 14 ++++++++++++++
>>  tools/scc                | 13 -------------
>>  tools/scc-cmds/merge.cmd | 10 ++++++++++
>>  3 files changed, 24 insertions(+), 13 deletions(-)
>>  create mode 100644 tools/scc-cmds/merge.cmd
>>
>> --
>> 2.11.0
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end"
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a1135b98e523a730547484b7d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Jan 25, 2017 at 1:05 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<=
a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote"><span class=3D"gmail-">On Wed, Jan 25, 2017 at 5:37 AM, Da=
vid Vincent <span dir=3D"ltr">&lt;<a href=3D"mailto:freesilicon@gmail.com" =
target=3D"_blank">freesilicon@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">I&#39;ve recently noticed that, on =
Morty, feature branches of a Yocto kernel are not<br>
merged anymore. This is due to the fact that the meta-series file does not<=
br>
process the git merge commands anymore.<br></blockquote><div><br></div></sp=
an><div>Indeed. I dropped that functionality on purpose when I did the simp=
lification<br></div><div>and streamlining of the processing .. since I want=
ed to see if anyone was<br></div><div>using it.<br><br></div><div>I now hav=
e my answer :D<br></div><div>=C2=A0<br></div><div>I need to have a closer l=
ook at the patch and run it through some tests<br></div><div>here, but=C2=
=A0 on my glance, you&#39;ve done it correctly.<br></div><span class=3D"gma=
il-"><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
This commit creates a new merge command to be executed when processing the<=
br>
kernel metadata. To solve the issue, there is also a patch to send to oe-co=
re<br>
for kernel-yocto.bbclass, but I wait for this patch to be included since th=
ere<br>
is no point without it.<br></blockquote><div><br></div></span><div>Send tha=
t patch to me, or I&#39;ll just do the patch myself .. since yes, we do nee=
d<br></div><div>to add merge to the list of valid comments when processing =
the meta data.<br><br></div><div>I&#39;ll submit all the changes in my next=
 consolidated pull request for the<br></div><div>kernels + tools.<br></div>=
</div></div></div></blockquote><div><br></div><div>I spent Friday looking i=
nto this in more detail, and to keep things consistent</div><div>with how t=
he path and config queues are handled, with all the tree manipulations</div=
><div>pull out of the various scripts and exposed in the bbclass itself, I =
ended up with</div><div>a different implementation of the support.</div><di=
v><br></div><div>The kern-tools change is the same as you did (and is your =
change), the difference</div><div>is in the bbclass processing, where do_pa=
tch() modifies the tree, and it consumes</div><div>the output of the meta-d=
ata routine .. versus the kgit-meta script itself.</div><div><br></div><div=
>The work can be seen in my poky-contrib tree:</div><div><br></div><div><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dzed=
d/kernel">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dz=
edd/kernel</a>, in the<br></div><div>commit &quot;kern-tools: re-enable scc=
 merge command&quot;.</div><div><br></div><div>These changes are on master,=
 and passed my testing to merge feature branches</div><div>into the branch =
being built.</div><div><br></div><div>If you are able to try it out (on mas=
ter), that would be great. I&#39;m going to let it</div><div>soak for a few=
 days, and once it merges to master, it can be ported to morty.</div><div><=
br></div><div>Cheers,</div><div><br></div><div>Bruce</div><div><br></div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div><br></d=
iv><div>Bruce<br></div><span class=3D"gmail-"><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
<br>
David Vincent (1):<br>
=C2=A0 scc: Move merge command<br>
<br>
=C2=A0tools/kgit-meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 14 ++++++++++++++=
<br>
=C2=A0tools/scc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 13=
 -------------<br>
=C2=A0tools/scc-cmds/merge.cmd | 10 ++++++++++<br>
=C2=A03 files changed, 24 insertions(+), 13 deletions(-)<br>
=C2=A0create mode 100644 tools/scc-cmds/merge.cmd<br>
<span class=3D"gmail-m_7767945799124234993HOEnZb"><font color=3D"#888888"><=
br>
--<br>
2.11.0<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></span></div><span class=3D"gmail-HOEnZb"><font =
color=3D"#888888"><br><br clear=3D"all"><br>-- <br><div class=3D"gmail-m_77=
67945799124234993gmail_signature">&quot;Thou shalt not follow the NULL poin=
ter, for chaos and madness await thee at its end&quot;</div>
</font></span></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature">&quot;Thou shalt not follow the NULL pointer, for chao=
s and madness await thee at its end&quot;</div>
</div></div>

--001a1135b98e523a730547484b7d--
