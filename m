Return-Path: <matthew_stanger@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 814CEE009CD; Mon, 12 Sep 2016 12:29:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.48 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D146E009B8
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 12:29:33 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id c131so75118066wmh.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 12:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trimble.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P9i+UKAPbCmolcOxe8fps4DmSABHJbrqy2aUN387E9M=;
	b=OlEkxjSJzKNgYGtqvhjH03UvGMIR0DLLvB7J4DBu5YIBkzkpls5ZvQZirU3CDedLEz
	NDpGxorRKw4ObbIQJ8AeVxpcB0JlAD5xK1PLhxn4gWoiCypyz1TNkiFisWxzVUZNcDYL
	x9r0nww5GBGXvmpS4TSCI1r+tC7eLt9JNpCuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P9i+UKAPbCmolcOxe8fps4DmSABHJbrqy2aUN387E9M=;
	b=AVwvN3O+a7QFEIjlEPoU0xJ72yEKjDQ7gqVsEmIEOXvbmKJD6pl+InbfsEzwgQnpNR
	dkMpL7mbDnI3VUifbEVP4qpHm51J+DIZdCXQo1rnWhPypLawVaR1i1tVdO5o8gMrdV37
	zZNFuaWXJg0OShR4fWsJDbitLI7DgRheoww2sqvbEq3zZ9NEGJ1lXMPdQpNV9KuhD4i+
	CWXFT4h7m4258BjrCeLI3IeH/cTlG852uQA26xtOACiKOR5p8B/1Y3PfGHM6Btbu+mlE
	aYgg9BuXkSE6tEb4dJtW9Cz3FcG0P7CH9B6S2i58NscrlvErMaPN00CVO/aiXeXX/nWI
	DKtw==
X-Gm-Message-State: AE9vXwMHGoPAcoDY9K39mwK9foLI4CIEltGZGURFM8msJkvFKuUGHHbpt1sEmbIhtkLp7xwdKLhDUVf5HZv5MeCQ
X-Received: by 10.28.28.70 with SMTP id c67mr12741705wmc.8.1473708572886; Mon,
	12 Sep 2016 12:29:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.154.67 with HTTP; Mon, 12 Sep 2016 12:29:32 -0700 (PDT)
In-Reply-To: <CAJTo0La9QzpZUN8-d-u1BO_BggZ380d67bqcf5JJOfS9Hxn+Qw@mail.gmail.com>
References: <CANr77M1Oj+M6k3QqHKTNSS8YFtsgVm5N7qCh4oxSCGWbSNKLNg@mail.gmail.com>
	<CAJTo0La9QzpZUN8-d-u1BO_BggZ380d67bqcf5JJOfS9Hxn+Qw@mail.gmail.com>
From: Matthew Stanger <matthew_stanger@trimble.com>
Date: Mon, 12 Sep 2016 13:29:32 -0600
Message-ID: <CANr77M3wB3Nj2vr-1gAmbjsJGvNNTVcor13mwwqg94sjRAHxLA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Striping cross-compiled paths
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
X-List-Received-Date: Mon, 12 Sep 2016 19:29:36 -0000
Content-Type: multipart/alternative; boundary=001a1144fb74fd9e71053c548343

--001a1144fb74fd9e71053c548343
Content-Type: text/plain; charset=UTF-8

Thanks, I just found this post was addressed already ->
https://lists.yoctoproject.org/pipermail/poky/2015-August/010197.html

On Mon, Sep 12, 2016 at 1:16 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 12 September 2016 at 19:22, Matthew Stanger <
> matthew_stanger@trimble.com> wrote:
>
>> I'm using Yocto 1.7.1 I'd like built programs to have the build path
>> striped down. The goal is if I'm looking at some programs log after cross
>> compiling I want this:
>>
>> src/program.c:388
>>
>> where I currently get this:
>>
>> /usr/local/jenkins/workspace/project-build-manual/Project/bu
>> ild-project/tmp/work/arm926ejste-poky-linux-gnuebi/program/
>> 2.5.992+gitAUTOINC+1c6d246619-r0/git/src/program.c:388
>>
>> Is it possible to configure Yocto to do this for me? If so where can I
>> find info on how I would do this?
>>
>
> If those paths come from __FILE__ and so on, then currently no.  It would
> be great if GCC could do this, but currently it can not.
>
> Ross
>

--001a1144fb74fd9e71053c548343
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, I just found this post was addressed already -&gt;=
 <a href=3D"https://lists.yoctoproject.org/pipermail/poky/2015-August/01019=
7.html">https://lists.yoctoproject.org/pipermail/poky/2015-August/010197.ht=
ml</a></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mo=
n, Sep 12, 2016 at 1:16 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><span class=3D""><br><div class=3D"gmail_quote">On 12 Se=
ptember 2016 at 19:22, Matthew Stanger <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:matthew_stanger@trimble.com" target=3D"_blank">matthew_stanger@trimble.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I&#39;m us=
ing Yocto 1.7.1 I&#39;d like built programs to have the build path striped =
down. The goal is if I&#39;m looking at some programs log after cross compi=
ling I want this:</div><div><br></div><div>src/program.c:388</div><div><br>=
</div><div>where I currently get this:</div><div><br></div><div>/usr/local/=
jenkins/workspace/p<wbr>roject-build-manual/Project/bu<wbr>ild-project/tmp/=
work/arm926ejs<wbr>te-poky-linux-gnuebi/program/<wbr>2.5.992+gitAUTOINC+1c6=
d246619-<wbr>r0/git/src/program.c:388</div><div><br></div><div>Is it possib=
le to configure Yocto to do this for me? If so where can I find info on how=
 I would do this?<br></div><div></div></blockquote></div><br></span>If thos=
e paths come from __FILE__ and so on, then currently no.=C2=A0 It would be =
great if GCC could do this, but currently it can not.</div><span class=3D"H=
OEnZb"><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--001a1144fb74fd9e71053c548343--
