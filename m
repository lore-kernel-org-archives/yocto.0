Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB40E008D3; Mon, 16 Jan 2017 18:33:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75DA8E007C2
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 18:33:41 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id i68so11223139uad.1
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 18:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QPXyC67UWoAR8f5G0eo0uSOBMR9EMS3+5kESyEvw63k=;
	b=Gzv1A6OPvceZURe8QbhHQIbgOk6OEEhcR6dikq9uB4vFzEobA9PtPUfAH0+yKHPvDN
	3Y68WjB59ichqzROU470jMbzlOJ6NG3K2//3XuAVGPhXkexaQf9932iZqHZmsJF3rPV8
	6WOeTupFZoDgwBAqgP8tNFje4zT8NWJAvaMcHIId+BHqu01iMybWnDmksBM6QIi2Ugg4
	I1Dvp3RIP+paF2gNs8Z43z5LiMYc9Dh/4nFjWMHMBjwTw22Y8H/KI9W9TpJovEqV1yYj
	tTacrhW/Ut3yXATfvKbBLApx7V6kG+kGrbbC7WohO8SV67YRAlUDHf8+1Dd4VsIWcXmY
	jU1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QPXyC67UWoAR8f5G0eo0uSOBMR9EMS3+5kESyEvw63k=;
	b=Vb7T86e02ZftnVUzTz+PZLDeH2YB6e302njTOpfxTmqfYrV+fx7QbY3A8CuobGUZEk
	Mioe6580SK0iZUv/CzomwLQqoVz61Ug8iLTLuYPmZE5kaWgg1emKb2IRESwLlC+cAbCl
	KCvhPBYlbosPQN0dN8vN3PV9mZcd/JUDGfYCN1KuHpFz2uEYYTzQxCAZdopDeSF0P8gC
	kCALGZFaSo/q2tyq/ZCMjmzbcfEHgdr1YEpqDVGeteamaUps101TxdlT60QJVQLvxu1N
	ehwHjXUmy5Fa4iQbig8hVOB/1DPR00z9AKfT7avhIFtfIE0uZTcXguk5eppIZdDrfrik
	zoZw==
X-Gm-Message-State: AIkVDXKBj5Bx/7CYhn+QBcDuu5CfmyMlKx9Yxvum8LG/g2TzGE1vnBUwwKt+RRIRGnXgXDYNpAtLCunpDJCNjg==
X-Received: by 10.176.92.153 with SMTP id s25mr8582855uaf.177.1484620421101;
	Mon, 16 Jan 2017 18:33:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.60.199 with HTTP; Mon, 16 Jan 2017 18:33:40 -0800 (PST)
In-Reply-To: <CAJTo0LbUawbpsCcadCCgSVct7Qx56ExKtBK+mTxc9eUW_B-4gw@mail.gmail.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
	<CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
	<448FE605-0D5E-4057-BF49-9EFFBC5CB8DD@sentientblue.com>
	<a0f910e1-e4e3-a36c-54f8-029cd72bae83@windriver.com>
	<23A9A636-C738-4FF6-962F-DCDC107A7AA8@bmw-carit.de>
	<656A5471-015B-4BE2-BEDA-7B9C98423EB8@sentientblue.com>
	<CAJTo0LbUawbpsCcadCCgSVct7Qx56ExKtBK+mTxc9eUW_B-4gw@mail.gmail.com>
From: Brian Avery <avery.brian@gmail.com>
Date: Mon, 16 Jan 2017 18:33:40 -0800
Message-ID: <CAKV_0egvWinqQ0jZWqeBaXa4mVbuVBFg4u3+_+gTYFBCatDrpA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Tue, 17 Jan 2017 02:33:45 -0000
Content-Type: multipart/alternative; boundary=f403045e2366d37dd40546412038

--f403045e2366d37dd40546412038
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

A couple of comments even though I'm coming late to the discussion.

So, from what I've understood from the above, the main issue with the
docker approach to building a yocto/oe image on the mac is that it was much
slower...  Here's  some numbers that don=E2=80=99t quite agree with that as=
sertion:

I ran a couple of tests, some on my linux box and some on my mac laptop.
The tests involved building core-image-minimal for a qemux86 target. All
the downloads were in place. There was no sstate, parse cache, nor was
there an existing tmp directory before the tests were run.

My linux box has a Intel(R) Xeon(R) CPU E5-2699 v3 @ 2.30GHz , 36 cores.
My mac laptop has a Intel(R) Core(TM) i7-4870HQ CPU @ 2.50GHz.

The test is "$ time bitbake core-image-minimal"

Here are the results of the tests:

Linux box Ubuntu 14.04

clock : 30m24.024

user  : 229m12.324

sys    : 20m10.188

=E2=80=94-

Linux box Ubuntu 14.04 running inside docker 1.12.3 using crops/poky:latest

clock : 30m37.66

user  : 231m35.984

sys    : 31m20.204


=E2=80=94=E2=80=94

Linux box Ubuntu 14.04 running inside docker 1.12.3 using crops/poky:latest

I set the following in my local.conf file:

BB_NUMBER_THREADS=3D=E2=80=9C2=E2=80=9D

BB_NUMBER_PARSE_THREADS=3D=E2=80=9C2=E2=80=9D

PARALLEL_MAKE=3D=E2=80=9C-j 2=E2=80=9D

AND I constrained docker to 2 cpu cores and 8 gb of ram (This is what I
have my mac laptop set to).

clock : 127m8.523

user  : 201m32.468

sys    : 19m54.052


=E2=80=94

Mac OSX laptop - running docker 1.12.5 2 cpus, 8gb ram

I set the following in my local.conf file:

BB_NUMBER_THREADS=3D=E2=80=9C2=E2=80=9D

BB_NUMBER_PARSE_THREADS=3D=E2=80=9C2=E2=80=9D

PARALLEL_MAKE=3D=E2=80=9C-j 2=E2=80=9D


clock : 99m31.190

user  : 137m40.400

sys    : 18m38.650


=E2=80=94=E2=80=94


So, from the above, it looks like my mac is actually faster when it has the
same number of cores and memory.  I haven=E2=80=99t seen any particular slo=
wdown
with running docker linux programs on the mac other than those caused by
the difference in horsepower between my build server and my laptop.


Thanks,

Brian Avery

an Intel employee


p.s. Andrea, would you mind replying with how you changed the docker run to
make loopback work? I=E2=80=99d like to add it to the docs. Also, if you co=
uld
point me at what layers you used to make resin, I=E2=80=99d like to give th=
at a try
as well.  Right now, we are providing a bare bones environment but I=E2=80=
=99d be
happy to write up a howto for inheriting from our images to customize your
own for special purposes (like doing builds that require loopback mounts,
for instance).







On Mon, Jan 16, 2017 at 3:19 AM, Burton, Ross <ross.burton@intel.com> wrote=
:

>
> On 14 January 2017 at 19:45, Roger Smith <roger@sentientblue.com> wrote:
>
>> Is Building Yocto project on a POSIX system, a desire for the Yocto
>> project? It would allow support on all bsd UNIX=E2=80=99s including macO=
S
>>
>
> Making OE itself work isn't rocket science - fix a few Linuxisms in
> bitbake, port pseudo to macOS.
>
> The hard bit is then convincing the hundred-odd recipes that are often
> Linux-centric if not Linux specific to build under something that isn't
> Linux.  My ross/darwin branch (from before the security changes) has a
> patch to gmp as 'echo' has different semantics. unlink() has different
> error codes between macOS and Linux.  There's a very long tail of
> differences that will need patching and testing.
>
> But if this is something you care about, patches welcome!
>
> Ross
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f403045e2366d37dd40546412038
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">







<p class=3D"gmail-p1"><span class=3D"gmail-s1">Hi,</span></p>
<p class=3D"gmail-p2">A couple of comments even though I&#39;m coming late =
to the discussion.<br><span class=3D"gmail-s1"></span></p>
<p class=3D"gmail-p2">So, from what I&#39;ve understood from the above, the=
 main issue with the docker approach to building a yocto/oe image on the ma=
c is that it was much slower...=C2=A0 Here&#39;s =C2=A0some numbers that do=
n=E2=80=99t quite agree with that assertion:<br><span class=3D"gmail-s1"></=
span></p>
<p class=3D"gmail-p2">I ran a couple of tests, some on my linux box and som=
e on my mac laptop.=C2=A0 The tests involved building core-image-minimal fo=
r a qemux86 target. All the downloads were in place. There was no sstate, p=
arse cache, nor was there an existing tmp directory before the tests were r=
un.<br><span class=3D"gmail-s1"></span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">My linux box has a Intel(R) =
Xeon(R) CPU E5-2699 v3 @ 2.30GHz=C2=A0, 36 cores.=C2=A0 My mac laptop has a=
 Intel(R) Core(TM) i7-4870HQ CPU @ 2.50GHz.</span></p><p class=3D"gmail-p1"=
><span class=3D"gmail-s1">The test is &quot;$ time bitbake core-image-minim=
al&quot;</span></p><p class=3D"gmail-p2">Here are the results of the tests:=
<br><span class=3D"gmail-s1"></span></p>
<p class=3D"gmail-p2">Linux box Ubuntu 14.04<br><span class=3D"gmail-s1"></=
span></p>
<p class=3D"gmail-p3"><span class=3D"gmail-s1">clock : 30m24.024=C2=A0</spa=
n></p>
<p class=3D"gmail-p3"><span class=3D"gmail-s1">user =C2=A0: 229m12.324=C2=
=A0</span></p>
<p class=3D"gmail-p3"><span class=3D"gmail-s1">sys =C2=A0 =C2=A0: 20m10.188=
</span></p>
<p class=3D"gmail-p2">=E2=80=94-<br><span class=3D"gmail-s1"></span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">Linux box Ubuntu 14.04 runni=
ng inside docker 1.12.3 using crops/poky:latest</span></p>
<p class=3D"gmail-p3"><span class=3D"gmail-s1">clock : 30m37.66=C2=A0</span=
></p>
<p class=3D"gmail-p3"><span class=3D"gmail-s1">user =C2=A0: 231m35.984=C2=
=A0</span></p>
<p class=3D"gmail-p3"><span class=3D"gmail-s1">sys =C2=A0 =C2=A0: 31m20.204=
</span></p>
<p class=3D"gmail-p2"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">=E2=80=94=E2=80=94</span></p=
>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">Linux box Ubuntu 14.04 runni=
ng inside docker 1.12.3 using crops/poky:latest=C2=A0</span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">I set the following in my lo=
cal.conf file:</span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">BB_NUMBER_THREADS=3D=E2=80=
=9C2=E2=80=9D</span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">BB_NUMBER_PARSE_THREADS=3D=
=E2=80=9C2=E2=80=9D</span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">PARALLEL_MAKE=3D=E2=80=9C-j =
2=E2=80=9D</span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">AND I constrained docker to =
2 cpu cores and 8 gb of ram (This is what I have my mac laptop set to).</sp=
an></p>
<p class=3D"gmail-p4"><span class=3D"gmail-s2">clock :=C2=A0</span><span cl=
ass=3D"gmail-s1">127m8.523</span></p>
<p class=3D"gmail-p4"><span class=3D"gmail-s2">user =C2=A0:=C2=A0</span><sp=
an class=3D"gmail-s1">201m32.468</span></p>
<p class=3D"gmail-p5"><span class=3D"gmail-s1">sys =C2=A0 =C2=A0:=C2=A0</sp=
an><span class=3D"gmail-s3">19m54.052</span></p>
<p class=3D"gmail-p6"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p7"><span class=3D"gmail-s1">=E2=80=94</span></p>
<p class=3D"gmail-p7"><span class=3D"gmail-s1">Mac OSX laptop - running doc=
ker 1.12.5 2 cpus, 8gb ram=C2=A0</span></p><p class=3D"gmail-p1"><span clas=
s=3D"gmail-s1">I set the following in my local.conf file:</span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">BB_NUMBER_THREADS=3D=E2=80=
=9C2=E2=80=9D</span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">BB_NUMBER_PARSE_THREADS=3D=
=E2=80=9C2=E2=80=9D</span></p>
<p class=3D"gmail-p1"><span class=3D"gmail-s1">PARALLEL_MAKE=3D=E2=80=9C-j =
2=E2=80=9D</span></p>
<p class=3D"gmail-p6"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p7">clock : 99m31.190<br></p>
<p class=3D"gmail-p8"><span class=3D"gmail-s1">user =C2=A0:=C2=A0137m40.400=
</span></p>
<p class=3D"gmail-p8"><span class=3D"gmail-s1">sys =C2=A0 =C2=A0:=C2=A018m3=
8.650</span></p>
<p class=3D"gmail-p6"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p7"><span class=3D"gmail-s1">=E2=80=94=E2=80=94</span></p=
>
<p class=3D"gmail-p6"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p7"><span class=3D"gmail-s1">So, from the above, it looks=
 like my mac is actually faster when it has the same number of cores and me=
mory.=C2=A0 I haven=E2=80=99t seen any particular slowdown with running doc=
ker linux programs on the mac other than those caused by the difference in =
horsepower between my build server and my laptop.</span></p>
<p class=3D"gmail-p6"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p7">Thanks,=C2=A0<br></p>
<p class=3D"gmail-p7"><span class=3D"gmail-s1">Brian Avery</span></p>
<p class=3D"gmail-p7"><span class=3D"gmail-s1">an Intel employee</span></p>
<p class=3D"gmail-p6"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p7"><span class=3D"gmail-s1">p.s. Andrea, would you mind =
replying with how you changed the docker run to make loopback work? I=E2=80=
=99d like to add it to the docs. Also, if you could point me at what layers=
 you used to make resin, I=E2=80=99d like to give that a try as well.=C2=A0=
 Right now, we are providing a bare bones environment but I=E2=80=99d be ha=
ppy to write up a howto for inheriting from our images to customize your ow=
n for special purposes (like doing builds that require loopback mounts, for=
 instance).</span></p>
<p class=3D"gmail-p6"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p9"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p10"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p11"><span class=3D"gmail-s1"></span><br></p>
<p class=3D"gmail-p2"><span class=3D"gmail-s1"></span><br></p></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jan 16, 2017 at =
3:19 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@i=
ntel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">=
<span class=3D""><br><div class=3D"gmail_quote">On 14 January 2017 at 19:45=
, Roger Smith <span dir=3D"ltr">&lt;<a href=3D"mailto:roger@sentientblue.co=
m" target=3D"_blank">roger@sentientblue.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div id=3D"m_106971496948830018:4zk" class=3D"m_10=
6971496948830018a3s m_106971496948830018aXjCH m_106971496948830018m1599e84c=
1ff775a5">Is Building Yocto project on a POSIX system, a desire for the Yoc=
to project? It would allow support on all bsd UNIX=E2=80=99s including macO=
S<br></div></blockquote></div><br></span>Making OE itself work isn&#39;t ro=
cket science - fix a few Linuxisms in bitbake, port pseudo to macOS.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">The hard bit=
 is then convincing the hundred-odd recipes that are often Linux-centric if=
 not Linux specific to build under something that isn&#39;t Linux.=C2=A0 My=
 ross/darwin branch (from before the security changes) has a patch to gmp a=
s &#39;echo&#39; has different semantics. unlink() has different error code=
s between macOS and Linux.=C2=A0 There&#39;s a very long tail of difference=
s that will need patching and testing.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">But if this is something you care about, p=
atches welcome!</div><span class=3D"HOEnZb"><font color=3D"#888888"><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div></font></=
span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--f403045e2366d37dd40546412038--
