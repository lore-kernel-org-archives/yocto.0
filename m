Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC7ACE00C14; Wed, 20 Sep 2017 14:26:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C64DCE00A39
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 14:26:44 -0700 (PDT)
Received: by mail-ua0-f173.google.com with SMTP id 72so2484427uas.8
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 14:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fnLTv5YBKbA9lSooOuufaO7GzTVdOXi+g7KE9yfRrEg=;
	b=O9eycmXRhb8k6eZrEKsWoa/TG+tNfjI0Blp8gbBIkbpxDYwcovU82tZkhDGpcDvlFd
	SGOwFuaotMe+Z48u4IAbSDjCI9PWqt0n8iEAP6X7W4W9qn42fDQxFKBLREipdak970Aa
	CpnyfFAQPwTAU9lBdXZ1ZJrn4Lxo/JjZOAd5sykqMCBDA5rQIZvnK+4XIYU4HPTU08Mf
	lp/iQFCC4qI4pMm3jpKR02lFl4a7Nc03FLronmRCbsqsqUiNgsKqPVHX6QDjJDERLex3
	u1xDRJL7S+FTriBTZ2ZAWupN2Dgt5tpeISkQVF5/6O6b2lx1hAuO5Tv3kZ52eA04gyzs
	du1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fnLTv5YBKbA9lSooOuufaO7GzTVdOXi+g7KE9yfRrEg=;
	b=FHBrG1bis5sGvTWBe+n+xOCdv3BcL0tPOYHUBm9D0BP/4hn2Rd4UTVOap/NYvR9/6L
	da6by95g+l3U1NvskmFMWIgzPPL2x7KCi3wUKeD7Mp/90shPUSt3pxAz3yaiGu16aIs9
	kwK0aeTxViD3oaHy0aLEWqtCQKufXFoxx97QaWsNK0+2lRrI0j7nG4iY3+WNh5zCBX5m
	xj6cAVj4wuqYH+1zq+jo14J1MJjS1rzfClwy8zMuCKliYALDA/9xEtcKcv+d+jMbf7pS
	xA5YI9aUuFM/mX/t6j4nca6o6VoBhpSsE8KUcXVuFGai8zRuilvRZE3quOcknW1TfWrQ
	Q7Bw==
X-Gm-Message-State: AHPjjUjHJiWccC1zJ1lzpegbqxz4hj6NDrtux2WieN6dwrZ3IefDI68e
	/Lxst7N3RtCc4YA+TlSXRNPGEkUF09baQFxAnQM=
X-Google-Smtp-Source: AOwi7QCLJwCkNf6UpEPK8lRnhB66vDMKgRNEx6n7yafwSrezDDfxbTGivOIPuIRNuR6sTXbkdNpPrZa+cZcjnQ0BWz8=
X-Received: by 10.159.51.236 with SMTP id y44mr97761uab.2.1505942803684; Wed,
	20 Sep 2017 14:26:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Wed, 20 Sep 2017 14:26:42 -0700 (PDT)
In-Reply-To: <51930197.tKTl6ynBxN@peggleto-mobl.ger.corp.intel.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
	<51930197.tKTl6ynBxN@peggleto-mobl.ger.corp.intel.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 20 Sep 2017 23:26:42 +0200
Message-ID: <CAC+thW2OF7qchCxiRk3MgL4PvZ9Yg4xkSidQpO5QDByR-iZMmg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eSDK install script failure
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
X-List-Received-Date: Wed, 20 Sep 2017 21:26:45 -0000
Content-Type: multipart/alternative; boundary="f403043ef77cdda1dd0559a5a12b"

--f403043ef77cdda1dd0559a5a12b
Content-Type: text/plain; charset="UTF-8"

Hi Paul,
thanks for explaining and helping sorting this out.

On Wed, Sep 20, 2017 at 11:54 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Andrea,
>
> On Wednesday, 20 September 2017 8:44:22 PM NZST Andrea Galbusera wrote:
> > Seeing the errors below while installing an eSDK. This is a routinely
> > generated VM that installs the eSDK from installation script. The errors
> > appeared with the latest iteration of the eSDK script, which is generated
> > with almost up-to-date revisions from master. Of course I have extra
> layers
> > in the mix, but none of them apparently had relevant changed since last
> > (working) iteration: mostly synching to master branches happened. Can
> > anyone help suggesting how to investigate this further? What do those
> > unexpected task mean? I'm blocked on releasing this SDK to developers and
> > clues from expert would be very appreciated...
> >
> > ==> default: Checking sstate mirror object availability...
> > ==> default: done.
> > ==> default: ERROR: Task python-native.do_fetch attempted to execute
> > unexpectedly
> > ==> default: ERROR: Task python-native.do_prepare_recipe_sysroot
> attempted
> > to execute unexpectedly
> > ==> default: ERROR: Task python-native.do_unpack attempted to execute
> > unexpectedly
> > ==> default: ERROR: Task python-native.do_patch attempted to execute
> > unexpectedly
> > ==> default: ERROR: Task python-native.do_populate_lic attempted to
> execute
> > unexpectedly and should have been setscened
> > ==> default: ERROR: Task python-native.do_configure attempted to execute
> > unexpectedly
> > ==> default: ERROR: Task python-native.do_compile attempted to execute
> > unexpectedly
> > ==> default: ERROR: Task python-native.do_install attempted to execute
> > unexpectedly
> > ==> default: ERROR: Task python-native.do_populate_sysroot attempted to
> > execute unexpectedly and should have been setscened
> > ==> default: ERROR: SDK preparation failed: error log written to
> > /home/vagrant/poky_sdk/preparing_build_system.log
> >
>
> Basically this means that these tasks tried to execute where really the
> results should have been able to be restored from sstate.
>
> The cause of this type of error is one of three things:
>
> 1) The sstate archive corresponding to a task wasn't able to be fetched
> from
> the server (for a minimal eSDK) or wasn't present in the installer (for a
> full
> eSDK - less likely as we basically do a trial run as part of building the
> eSDK
> in the first place)
>
> 2) The signature was somehow different to what it should have been. (Locked
> signatures are supposed to guard against this.)
>
> 3) A task that wasn't expected to execute did execute and thus the sstate
> wasn't available.
>
> Given that this was python-native which I would expect would be a normal
> part
> of the SDK, I would suspect #1. Is this a minimal or full eSDK (i.e. what
> is
> SDK_EXT_TYPE set to)?
>

That was a "full" eSDK. I noticed that the "same" eSDK installer from
another build host was not affected and I'm trying to rebuild on the
original one with even more recent revision and see if it still happens or
not. Failure with the first one was repeatable, hence I suspect an issue at
sdk population stage, not during installation.

--f403043ef77cdda1dd0559a5a12b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><div class=3D"gmail_extra">thanks for explain=
ing and helping sorting this out.</div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Wed, Sep 20, 2017 at 11:54 AM, Paul Eggleton <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D=
"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">Hi Andrea,<br>
<div><div class=3D"h5"><br>
On Wednesday, 20 September 2017 8:44:22 PM NZST Andrea Galbusera wrote:<br>
&gt; Seeing the errors below while installing an eSDK. This is a routinely<=
br>
&gt; generated VM that installs the eSDK from installation script. The erro=
rs<br>
&gt; appeared with the latest iteration of the eSDK script, which is genera=
ted<br>
&gt; with almost up-to-date revisions from master. Of course I have extra l=
ayers<br>
&gt; in the mix, but none of them apparently had relevant changed since las=
t<br>
&gt; (working) iteration: mostly synching to master branches happened. Can<=
br>
&gt; anyone help suggesting how to investigate this further? What do those<=
br>
&gt; unexpected task mean? I&#39;m blocked on releasing this SDK to develop=
ers and<br>
&gt; clues from expert would be very appreciated...<br>
&gt;<br>
&gt; =3D=3D&gt; default: Checking sstate mirror object availability...<br>
&gt; =3D=3D&gt; default: done.<br>
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_fetch attempted to ex=
ecute<br>
&gt; unexpectedly<br>
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_prepare_<wbr>recipe_s=
ysroot attempted<br>
&gt; to execute unexpectedly<br>
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_unpack attempted to e=
xecute<br>
&gt; unexpectedly<br>
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_patch attempted to ex=
ecute<br>
&gt; unexpectedly<br>
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_populate_lic attempte=
d to execute<br>
&gt; unexpectedly and should have been setscened<br>
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_configure attempted t=
o execute<br>
&gt; unexpectedly<br>
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_compile attempted to =
execute<br>
&gt; unexpectedly<br>
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_install attempted to =
execute<br>
&gt; unexpectedly<br>
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_populate_<wbr>sysroot=
 attempted to<br>
&gt; execute unexpectedly and should have been setscened<br>
&gt; =3D=3D&gt; default: ERROR: SDK preparation failed: error log written t=
o<br>
&gt; /home/vagrant/poky_sdk/<wbr>preparing_build_system.log<br>
&gt;<br>
<br>
</div></div>Basically this means that these tasks tried to execute where re=
ally the<br>
results should have been able to be restored from sstate.<br>
<br>
The cause of this type of error is one of three things:<br>
<br>
1) The sstate archive corresponding to a task wasn&#39;t able to be fetched=
 from<br>
the server (for a minimal eSDK) or wasn&#39;t present in the installer (for=
 a full<br>
eSDK - less likely as we basically do a trial run as part of building the e=
SDK<br>
in the first place)<br>
<br>
2) The signature was somehow different to what it should have been. (Locked=
<br>
signatures are supposed to guard against this.)<br>
<br>
3) A task that wasn&#39;t expected to execute did execute and thus the ssta=
te<br>
wasn&#39;t available.<br>
<br>
Given that this was python-native which I would expect would be a normal pa=
rt<br>
of the SDK, I would suspect #1. Is this a minimal or full eSDK (i.e. what i=
s<br>
SDK_EXT_TYPE set to)?<br></blockquote><div><br></div><div>That was a &quot;=
full&quot; eSDK. I noticed that the &quot;same&quot; eSDK installer from an=
other build host was not affected and I&#39;m trying to rebuild on the orig=
inal one with even more recent revision and see if it still happens or not.=
 Failure with the first one was repeatable, hence I suspect an issue at sdk=
 population stage, not during installation.=C2=A0</div></div></div></div></=
div>

--f403043ef77cdda1dd0559a5a12b--
