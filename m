Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A893DE00CE4; Thu, 21 Sep 2017 06:06:21 -0700 (PDT)
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
	*      [209.85.217.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 885A2E00C78
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 06:06:20 -0700 (PDT)
Received: by mail-ua0-f177.google.com with SMTP id n38so3520456uai.9
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 06:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=s3DEzZcxyYuVbiRnsMHQc5Vo9+Ka8eX2OLq7bMlUrKI=;
	b=bMngJfFt94LusZ/+Hv5G+gp+emdHRXd1AOpD7fdFsdq5iA/QfAVL1DVU+Hn/c/F9Ju
	fCT8tYUg0HGpWegsb/9bb2NfjRuTBJFYpNp3w33ZVVfQru6p6Yy+jQZiwoYR9SuB/crt
	bfEwJYdql6PGXKGVLLL36fA4mwH48eLlmH7iMyGqjPeAhgho+aZfjI+iI2bgEoNX769y
	958YgTdfoKhF6MrNpKnCzpxmrrMrQzM/c0+Dy8HLptODyL0F5HmaqU5PtkwQwJcYyPpO
	wKOOW8OMExW/cYZ1elBw7SoMgv1sEu2Wg7DpLBuIgxa1xlbrEZmBt1bFAFP4EjH0dv+0
	7LGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=s3DEzZcxyYuVbiRnsMHQc5Vo9+Ka8eX2OLq7bMlUrKI=;
	b=Ycco8U66pNIi2Vhpa5oe7XAwEkAjxfAJ900U2h4YDhom84mZCzlhuE22jZh7irFFBd
	JQYJyqU8HltLYggw5JlmPaEpfXDS/J2PxO1ZMR4LUpv7pHxH03UQ5DmPHm/Qzj/MzWca
	TfNwYPhsNpC4RGXxrX9hh6nkVeWzuzDf4AsMq0I9sNO8HCVUkhHbEYOxGsl9OE/yVpm1
	dIeFNUkabuDIBuhvOEb+NOQ6YUT7ccJyHlU6lEtWeB78BG6DtpB+ZVFspwT0GtlU1ILC
	fdgcmpDIdhXZn5QhNxdgz1Ahoa9RWWhcJQ22Vgh1qjYoa5gNM0CrzOQ4Iu76NcISMZzm
	kJ7Q==
X-Gm-Message-State: AHPjjUh7YQfxs3YbntfOHygpEB+00ZFxWnDh21Cqm4TS0LsF/gxMYhhw
	i+y7d74etfh/bpWnmz3eFLDudJfRf9D3tacmJ3k=
X-Google-Smtp-Source: AOwi7QDDJc4tLDoVEldeaLixuX/eB/SFV9C97DxNo/Xlv+IWOEbI8iaot08kGgMmNcAVWHHYXqQcqDETQc1e4ZZ7Hyk=
X-Received: by 10.176.80.84 with SMTP id z20mr2005756uaz.108.1505999179554;
	Thu, 21 Sep 2017 06:06:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Thu, 21 Sep 2017 06:06:19 -0700 (PDT)
In-Reply-To: <CAC+thW2OF7qchCxiRk3MgL4PvZ9Yg4xkSidQpO5QDByR-iZMmg@mail.gmail.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
	<51930197.tKTl6ynBxN@peggleto-mobl.ger.corp.intel.com>
	<CAC+thW2OF7qchCxiRk3MgL4PvZ9Yg4xkSidQpO5QDByR-iZMmg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 21 Sep 2017 15:06:19 +0200
Message-ID: <CAC+thW254MBv1CRC1tRh_hPRNPD=586P53hTPOHPaBE==useTg@mail.gmail.com>
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
X-List-Received-Date: Thu, 21 Sep 2017 13:06:21 -0000
Content-Type: multipart/alternative; boundary="94eb2c18f8a82123250559b2c2be"

--94eb2c18f8a82123250559b2c2be
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 20, 2017 at 11:26 PM, Andrea Galbusera <gizero@gmail.com> wrote:

> Hi Paul,
> thanks for explaining and helping sorting this out.
>
> On Wed, Sep 20, 2017 at 11:54 AM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> Hi Andrea,
>>
>> On Wednesday, 20 September 2017 8:44:22 PM NZST Andrea Galbusera wrote:
>> > Seeing the errors below while installing an eSDK. This is a routinely
>> > generated VM that installs the eSDK from installation script. The errors
>> > appeared with the latest iteration of the eSDK script, which is
>> generated
>> > with almost up-to-date revisions from master. Of course I have extra
>> layers
>> > in the mix, but none of them apparently had relevant changed since last
>> > (working) iteration: mostly synching to master branches happened. Can
>> > anyone help suggesting how to investigate this further? What do those
>> > unexpected task mean? I'm blocked on releasing this SDK to developers
>> and
>> > clues from expert would be very appreciated...
>> >
>> > ==> default: Checking sstate mirror object availability...
>> > ==> default: done.
>> > ==> default: ERROR: Task python-native.do_fetch attempted to execute
>> > unexpectedly
>> > ==> default: ERROR: Task python-native.do_prepare_recipe_sysroot
>> attempted
>> > to execute unexpectedly
>> > ==> default: ERROR: Task python-native.do_unpack attempted to execute
>> > unexpectedly
>> > ==> default: ERROR: Task python-native.do_patch attempted to execute
>> > unexpectedly
>> > ==> default: ERROR: Task python-native.do_populate_lic attempted to
>> execute
>> > unexpectedly and should have been setscened
>> > ==> default: ERROR: Task python-native.do_configure attempted to execute
>> > unexpectedly
>> > ==> default: ERROR: Task python-native.do_compile attempted to execute
>> > unexpectedly
>> > ==> default: ERROR: Task python-native.do_install attempted to execute
>> > unexpectedly
>> > ==> default: ERROR: Task python-native.do_populate_sysroot attempted to
>> > execute unexpectedly and should have been setscened
>> > ==> default: ERROR: SDK preparation failed: error log written to
>> > /home/vagrant/poky_sdk/preparing_build_system.log
>> >
>>
>> Basically this means that these tasks tried to execute where really the
>> results should have been able to be restored from sstate.
>>
>> The cause of this type of error is one of three things:
>>
>> 1) The sstate archive corresponding to a task wasn't able to be fetched
>> from
>> the server (for a minimal eSDK) or wasn't present in the installer (for a
>> full
>> eSDK - less likely as we basically do a trial run as part of building the
>> eSDK
>> in the first place)
>>
>> 2) The signature was somehow different to what it should have been.
>> (Locked
>> signatures are supposed to guard against this.)
>>
>> 3) A task that wasn't expected to execute did execute and thus the sstate
>> wasn't available.
>>
>> Given that this was python-native which I would expect would be a normal
>> part
>> of the SDK, I would suspect #1. Is this a minimal or full eSDK (i.e. what
>> is
>> SDK_EXT_TYPE set to)?
>>
>
> That was a "full" eSDK. I noticed that the "same" eSDK installer from
> another build host was not affected and I'm trying to rebuild on the
> original one with even more recent revision and see if it still happens or
> not. Failure with the first one was repeatable, hence I suspect an issue at
> sdk population stage, not during installation.
>

Nuking tmp/ and rebuilding with the same revisions of the successful build
host didn't fix the issue... Same error on installation of the generated
eSDK. Would you suggest any other investigation step? On my todo list I'd
put using the sstate from that other build host than nuking local
sstate-cache/ and going to take a very long coffee break. :-(

--94eb2c18f8a82123250559b2c2be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Sep 20, 2017 at 11:26 PM, Andrea Galbusera <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Paul,<div=
><div class=3D"gmail_extra">thanks for explaining and helping sorting this =
out.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><d=
iv class=3D"h5">On Wed, Sep 20, 2017 at 11:54 AM, Paul Eggleton <span dir=
=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_bl=
ank">paul.eggleton@linux.intel.com</a><wbr>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">Hi Andrea,<br>
<div><div class=3D"m_3824721494825319561h5"><br>
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
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_prepare_recip<wbr>e_s=
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
&gt; =3D=3D&gt; default: ERROR: Task python-native.do_populate_sysr<wbr>oot=
 attempted to<br>
&gt; execute unexpectedly and should have been setscened<br>
&gt; =3D=3D&gt; default: ERROR: SDK preparation failed: error log written t=
o<br>
&gt; /home/vagrant/poky_sdk/prepari<wbr>ng_build_system.log<br>
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
SDK_EXT_TYPE set to)?<br></blockquote><div><br></div></div></div><div>That =
was a &quot;full&quot; eSDK. I noticed that the &quot;same&quot; eSDK insta=
ller from another build host was not affected and I&#39;m trying to rebuild=
 on the original one with even more recent revision and see if it still hap=
pens or not. Failure with the first one was repeatable, hence I suspect an =
issue at sdk population stage, not during installation.</div></div></div></=
div></div></blockquote><div><br></div><div>Nuking tmp/ and rebuilding with =
the same revisions of the successful build host didn&#39;t fix the issue...=
 Same error on installation of the generated eSDK. Would you suggest any ot=
her investigation step? On my todo list I&#39;d put using the sstate from t=
hat other build host than nuking local sstate-cache/ and going to take a ve=
ry long coffee break. :-( =C2=A0</div></div><br></div></div>

--94eb2c18f8a82123250559b2c2be--
