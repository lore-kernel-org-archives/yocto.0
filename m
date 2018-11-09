Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63BDEE00A10; Fri,  9 Nov 2018 12:59:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
	[209.85.217.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87200E0053F
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 12:59:16 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id 124so1817889vsp.12
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 12:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=iERnXdF8d31YtvgFSJ4whPn/YMbHZcVyHVFv8bX3rAc=;
	b=F3ui5crbYY0Wh8RD8U9dTaRL51mvWB7evqu/IQGBkhX7QJq78XkzDj4KjPnQjhDZH0
	PhLJxUZRF/0nLyHQiIzjAbNLKeQMOrW4fmp6EQyKV9TkGic2HqmU/5tp/9ZWhlrFrEVP
	aBSzGB7gCV2c5E8jzsZHFE2UPS0Ddcxnmr4qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iERnXdF8d31YtvgFSJ4whPn/YMbHZcVyHVFv8bX3rAc=;
	b=Mh/SsFHtCKTQ1/CsmwQulmc2p+6UYFbfJa4dBSkXDAVdNrOr5d9ZiHoqhV9xq/wfES
	ytGIY/R7oyRX1ruFOTU5ReItliL0HwBUbvsbOddfrP051V7O/0LV7SaGtxey7tC1kvzj
	YFmBqGz4zr6rvA7E2pVAJI6LaP/gq8zTxBFtPMI8XK2UVLOLNP4kbnx8TJfVKEBDbhqs
	6AmEkVoj8WK269Vl8EkzMqBG6kQV8xc+/jd0b1y2S81w3hfj0gBNqkYSwYxyOnu/2oII
	B0Q3r/8m2XMN4/FI89hj0kUFbsMbI+tUr61cV3pgOTUry232NxczB2Ealmj7Sp4531rV
	EvtQ==
X-Gm-Message-State: AGRZ1gKUZ8Vfy8zHK7zwsP5XX/5U/DH5q3W8DxOJ1Xi4i1KvLx8Ym/Cn
	kVZ7oiXJEAhB02kUcC74tIizeD1LUXAu/xJnhXHsRA==
X-Google-Smtp-Source: AJdET5fCP+3Kb/E7QLD+mYGA64F2wSwRLzh02dr6KhywCYxSCZqrdPw4R/nDzBn27Lwzhc2cDz1Gr4blxrKPV0LjyUU=
X-Received: by 2002:a67:1d03:: with SMTP id d3mr1136574vsd.154.1541797155784; 
	Fri, 09 Nov 2018 12:59:15 -0800 (PST)
MIME-Version: 1.0
References: <CA+_Aqivq7XN8Q_fu43EFwhWs377vduoR9D5gVGBqS7gJgzKxNw@mail.gmail.com>
	<446afa92a1440c604e2074ab70f506fe3e46a0d5.camel@linuxfoundation.org>
	<AA9B40170ABA1047B45E714CB2B866B7069B514E@PGSMSX103.gar.corp.intel.com>
In-Reply-To: <AA9B40170ABA1047B45E714CB2B866B7069B514E@PGSMSX103.gar.corp.intel.com>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Fri, 9 Nov 2018 14:59:04 -0600
Message-ID: <CA+_Aqis35mG154_4Jzhk_o0txdri=otjfqq678nBSpRNEx-xUA@mail.gmail.com>
To: aaron.chun.yew.chan@intel.com
Cc: yocto@yoctoproject.org, timothy.t.orling@intel.com
Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration
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
X-List-Received-Date: Fri, 09 Nov 2018 20:59:18 -0000
Content-Type: multipart/alternative; boundary="000000000000c96282057a419f06"

--000000000000c96282057a419f06
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 8 Nov 2018 at 20:49, Chan, Aaron Chun Yew <
aaron.chun.yew.chan@intel.com> wrote:

> Hi Anibal/RP,
>
> > In order to do a distributed Boards testing the Yocto Autobuilder
> > needs to publish in some place accessible the artifacts (image,
> > kernel, etc) to flash/boot the board and the test suite expected to
> > execute.
>
> [Reply] That is correct, since Linaro have this in place to use
> https://archive.validation.linaro.org/directories/ and I have look into
> this as well, we can leverage on this
>               but I am up for any suggestion you might have. So the idea
> here is that we have a placeholder to store the publish artifacts remotel=
y
> and deploy using
>               native curl command with token access. Then based on your
> LAVA job definitions we can instruct LAVA to source the images via https.
>               Having said that, the deploy stage in LAVA must have some
> capabilities to read a token file in the LAVA job defintion and pick up t=
he
> binaries from public repo (git LFS).
>
>               In order for Board Distributed Tests to happen, there are 2
> items in my wish lists
>
>               1. Public hosting of binary repository - with access contro=
l
>

For publish the artifacts (Rootfs, Kernel image, Test suite), if there is a
public build a token isn't needed like targeting some boards already
commercialized and can be published anywhere like in
http://downloads.yoctoproject.org.


>               2. Ease Handshaking between two(2) different systems CI
> (e.g. Jenkins/Autobuilder) with LAVA
>                    a. Exchange build property (metadata) - includes
> hardware info, system info
>

You can add meta-data to a LAVA test definition.

                   b. Test reporting results
>

For notify job results LAVA test definition support the notify block in
test jobs or you can poll the API using for both needs a LAVA token.



>
> > I created a simple LAVA test definition that allows run testimage
> > (oe-test runtime) in my own LAVA LAB, is very simplistic only has a
> > regex to parse results and uses lava-target-ip and lava-echo-ipv4 to
> > get target and server IP addresses.
>
> [Reply] Although the lava test shell have these capabilities to use
> lava-target-ip or/and lava-echo-ipv4 this only works within LAVA scope, t=
he
> way we retrieve the Ipv4
>               address is reading the logs from LAVA thru XML-RPC and grep
> the pattern matching string which contains IP even before the HW get
> initialize entirely then parse
>               IP back to the Yocto Autobuilder.
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/l=
ava/trigger-lava-jobs


Yes, that's my idea the Yocto Autobuilder dosen't need to know about
particular network configuration in tha LAVA server for execute the job, in
this way the Yocto Autobuilder can communicate with LAVA server to retrieve
the testing job results, and in a case that needs to debug the board LAVA
support hacking sessions to allow connect to the board outside the LAB.

https://validation.linaro.org/static/docs/v2/hacking-session.html


>
>
> > Some of the tasks, I identified,  (if is accepted)
> >
> > - Yocto-aubuilder-helper: Implement/adapt to cover this new behavior ,
> > move the EXTRA_PLAIN_CMDS to a class.
> > - Poky/OE: Review/fix test-export or provide other mechanism to export
> > the test suite. > - Poky/OE: Review/fix test-export or provide other
> mechanism to export
> > the test suite.
>
> [Reply] I would like to understand further what is the implementation her=
e
> and how it addresses the problems that we have today. I believe in the
> past, Tim has tried
>               to enable testexport and transfer the testexport into the
> DUT but it was not very successful and we found breakage.
>

Agree, The testexport functionality is on not usage so there are some bugs
on it.


>
> > -  Yocto-aubuilder-helper: Create a better approach to re-use LAVA job
> > templates across boards.
>
> [Reply] I couldn=E2=80=99t be more supportive on this having a common LAV=
A job
> template across boards but I would like to stress this, we don=E2=80=99t =
exactly
> know how
>               community will define their own LAVA job definition,
> therefore what I had in mind as per today is to create a placeholde where
> LAVA job templates
>               can be define and other boards/community can reuse the same
> template if it fits their use cases. In general the templates we have tod=
ay
> are
>               created to fit into Yocto Project use cases.
>

Agree, I not mean a single template but a manner to add easily new LAVA
templates for boards in Yocto Autobuilder, this involves some base LAVA job
templates and a set of scripts to
generate the final template, like you are doing. For example there are
different ways to deploy a board but the login process is the same for
core-image's (login as root wo passwd).

Cheers,
Anibal


>
> Lastly  there are some works I've done on provisiong QEMU on LAVA
> sourceing from Yocto Project public releases, I am looking at where we ca=
n
> upstream this
> https://github.com/lab-github/yoctoproject-lava-test-shell
>
> Thanks!
>
> Cheers,
> Aaron Chan
> Open Source Technology Center Intel
>
> -----Original Message-----
> From: richard.purdie@linuxfoundation.org [mailto:
> richard.purdie@linuxfoundation.org]
> Sent: Thursday, November 8, 2018 6:45 AM
> To: Anibal Limon <anibal.limon@linaro.org>; yocto@yoctoproject.org
> Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>; Chan, Aaron Chun Yew =
<
> aaron.chun.yew.chan@intel.com>
> Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration
>
> Hi Anibal,
>
> On Wed, 2018-11-07 at 16:25 -0600, Anibal Limon wrote:
> > We know the need to execute OE testimage over real HW not only QEMU,
> >
> > I'm aware that currently there is an implementation on the Yocto
> > Autobuilder Helper , this initial implementation looks pretty well
> > separating parts for template generation [1] and the script to send
> > jobs to LAVA [2].
> >
> > There are some limitations.
> >
> > - Requires that the boards are accessible trough SSH (same network?)
> > by the Autobuilder, so no distributed LAB testing.
> > - LAVA doesn't know about test results because the execution is
> > injected via SSH.
> >
> > In order to do a distributed Boards testing the Yocto Autobuilder
> > needs to publish in some place accessible the artifacts (image,
> > kernel, etc) to flash/boot the board and the test suite expected to
> > execute.
> >
> > Currently there is a functionality called testexport (not too
> > used/maintained) that allows you to export the test suite.
>
> I continue to have mixed feelings about testexport. It adds complexity bu=
t
> I'm not sure its actually worth it.
>
> An alternative would be to specify a set of commit hashes for the
> configuration under test (poky or oe-core+bitbake and any other layers),
> then have LAVA obtain those pieces and run the tests directly.
>
> Its worth considering that we already now have two difference pieces of
> code trying to package up the build system/layers, eSDK and testexport.
> Ideally if we had some kind of standardised layer setup/configuration
> approach we'd then just have a config file to share, then the tools could
> recreate the environment and allow the tests to be run there without
> testexport. Layer-setup is itself a harder subject but for example the
> layer setup code in autobuilder-helper could easily be reused as things
> stand today...
>
> In fact the more I think about it, the more I think we may want to do it
> that way...
>
> > I created a simple LAVA test definition that allows run testimage
> > (oe-test runtime) in my own LAVA LAB, is very simplistic only has a
> > regex to parse results and uses lava-target-ip and lava-echo-ipv4 to
> > get target and server IP addresses.
> >
> > In this way the LAVA server handles all the testing and finally the
> > Yocto Autobuilder can get/poll an event to know what was the actual
> > result of the job and the job could be send to different LAVA LAB's.
>
> That does sound useful and is likely a way we could end up doing this.
> Its probably worth highlighting that we now have a way of summarising the
> result of the test in the form of the json file the tests all generate.
> Sharing that back to the Yocto autobuilder would give us the test results
> we need.
>
> > Some of the tasks, I identified,  (if is accepted)
> >
> > - Yocto-aubuilder-helper: Implement/adapt to cover this new behavior ,
> > move the EXTRA_PLAIN_CMDS to a class.
> > -  Yocto-aubuilder-helper: Create a better approach to re-use LAVA job
> > templates across boards.
> > - Poky/OE: Review/fix test-export or provide other mechanism to export
> > the test suite.
>
> I think some of these are also independent of each other and good things
> to work on regardless...
>
> I would like to hear feedback from those at Intel using LAVA who submitte=
d
> the existing code.
>
> Cheers,
>
> Richard
>
>

--000000000000c96282057a419f06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Thu, 8 Nov 2018 at 20:49, Chan, Aaron Chun Yew &lt;<a href=3D=
"mailto:aaron.chun.yew.chan@intel.com">aaron.chun.yew.chan@intel.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Anib=
al/RP,<br>
<br>
&gt; In order to do a distributed Boards testing the Yocto Autobuilder <br>
&gt; needs to publish in some place accessible the artifacts (image, <br>
&gt; kernel, etc) to flash/boot the board and the test suite expected to <b=
r>
&gt; execute.<br>
<br>
[Reply] That is correct, since Linaro have this in place to use <a href=3D"=
https://archive.validation.linaro.org/directories/" rel=3D"noreferrer" targ=
et=3D"_blank">https://archive.validation.linaro.org/directories/</a> and I =
have look into this as well, we can leverage on this <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 but I am up for any sugges=
tion you might have. So the idea here is that we have a placeholder to stor=
e the publish artifacts remotely and deploy using <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 native curl command with t=
oken access. Then based on your LAVA job definitions we can instruct LAVA t=
o source the images via https.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Having said that, the depl=
oy stage in LAVA must have some capabilities to read a token file in the LA=
VA job defintion and pick up the binaries from public repo (git LFS).<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 In order for Board Distrib=
uted Tests to happen, there are 2 items in my wish lists<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1. Public hosting of binar=
y repository - with access control <br></blockquote><div><br></div><div>For=
 publish the artifacts (Rootfs, Kernel image, Test suite), if there is a pu=
blic build a token isn&#39;t needed like targeting some boards already comm=
ercialized and can be published anywhere like in <a href=3D"http://download=
s.yoctoproject.org">http://downloads.yoctoproject.org</a>.</div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2. Ease Handshaking betwee=
n two(2) different systems CI (e.g. Jenkins/Autobuilder) with LAVA <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0a. Exc=
hange build property (metadata) - includes hardware info, system info <br><=
/blockquote><div><br></div><div>You can add meta-data to a LAVA test defini=
tion.=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0b. Tes=
t reporting results<br></blockquote><div>=C2=A0</div><div>For notify job re=
sults LAVA test definition support the notify block in test jobs or you can=
 poll the API using for both needs a LAVA token.</div><div><br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; I created a simple LAVA test definition that allows run testimage <br>
&gt; (oe-test runtime) in my own LAVA LAB, is very simplistic only has a <b=
r>
&gt; regex to parse results and uses lava-target-ip and lava-echo-ipv4 to <=
br>
&gt; get target and server IP addresses.<br>
<br>
[Reply] Although the lava test shell have these capabilities to use lava-ta=
rget-ip or/and lava-echo-ipv4 this only works within LAVA scope, the way we=
 retrieve the Ipv4<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 address is reading the log=
s from LAVA thru XML-RPC and grep the pattern matching string which contain=
s IP even before the HW get initialize entirely then parse<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 IP back to the Yocto Autob=
uilder. <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://git.yoct=
oproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/lava/trigger-lava-=
jobs" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/cgit=
/cgit.cgi/yocto-autobuilder-helper/tree/lava/trigger-lava-jobs</a></blockqu=
ote><div><br></div><div>Yes, that&#39;s my idea the Yocto Autobuilder dosen=
&#39;t need to know about particular network configuration in tha LAVA serv=
er for execute the job, in this way the Yocto Autobuilder can communicate w=
ith LAVA server to retrieve the testing job results, and in a case that nee=
ds to debug the board LAVA support hacking sessions to allow connect to the=
 board outside the LAB.</div><div><br></div><div><a href=3D"https://validat=
ion.linaro.org/static/docs/v2/hacking-session.html">https://validation.lina=
ro.org/static/docs/v2/hacking-session.html</a><br></div><div>=C2=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; Some of the tasks, I identified,=C2=A0 (if is accepted)<br>
&gt; <br>
&gt; - Yocto-aubuilder-helper: Implement/adapt to cover this new behavior ,=
 <br>
&gt; move the EXTRA_PLAIN_CMDS to a class.<br>
&gt; - Poky/OE: Review/fix test-export or provide other mechanism to export=
 <br>
&gt; the test suite. &gt; - Poky/OE: Review/fix test-export or provide othe=
r mechanism to export <br>
&gt; the test suite.<br>
<br>
[Reply] I would like to understand further what is the implementation here =
and how it addresses the problems that we have today. I believe in the past=
, Tim has tried<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to enable testexport and t=
ransfer the testexport into the DUT but it was not very successful and we f=
ound breakage.<br></blockquote><div><br></div><div>Agree, The testexport fu=
nctionality is on not usage so there are some bugs on it.</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; -=C2=A0 Yocto-aubuilder-helper: Create a better approach to re-use LAV=
A job <br>
&gt; templates across boards.<br>
<br>
[Reply] I couldn=E2=80=99t be more supportive on this having a common LAVA =
job template across boards but I would like to stress this, we don=E2=80=99=
t exactly know how <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 community will define thei=
r own LAVA job definition, therefore what I had in mind as per today is to =
create a placeholde where LAVA job templates <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 can be define and other bo=
ards/community can reuse the same template if it fits their use cases. In g=
eneral the templates we have today are <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 created to fit into Yocto =
Project use cases.=C2=A0 <br></blockquote><div><br></div>Agree, I not mean =
a single template but a manner to add easily new LAVA templates for boards =
in Yocto Autobuilder, this involves some base LAVA job templates and a set =
of scripts to</div><div class=3D"gmail_quote">generate the final template, =
like you are doing. For example there are different ways to deploy a board =
but the login process is the same for core-image&#39;s (login as root wo pa=
sswd).<br><div><br></div><div>Cheers,</div><div>Anibal</div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Lastly=C2=A0 there are some works I&#39;ve done on provisiong QEMU on LAVA =
sourceing from Yocto Project public releases, I am looking at where we can =
upstream this<br>
<a href=3D"https://github.com/lab-github/yoctoproject-lava-test-shell" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/lab-github/yoctoprojec=
t-lava-test-shell</a><br>
<br>
Thanks!<br>
<br>
Cheers,<br>
Aaron Chan<br>
Open Source Technology Center Intel <br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blan=
k">richard.purdie@linuxfoundation.org</a> [mailto:<a href=3D"mailto:richard=
.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundati=
on.org</a>] <br>
Sent: Thursday, November 8, 2018 6:45 AM<br>
To: Anibal Limon &lt;<a href=3D"mailto:anibal.limon@linaro.org" target=3D"_=
blank">anibal.limon@linaro.org</a>&gt;; <a href=3D"mailto:yocto@yoctoprojec=
t.org" target=3D"_blank">yocto@yoctoproject.org</a><br>
Cc: Nicolas Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org" tar=
get=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;; Chan, Aaron Chun Yew &l=
t;<a href=3D"mailto:aaron.chun.yew.chan@intel.com" target=3D"_blank">aaron.=
chun.yew.chan@intel.com</a>&gt;<br>
Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration<br>
<br>
Hi Anibal,<br>
<br>
On Wed, 2018-11-07 at 16:25 -0600, Anibal Limon wrote:<br>
&gt; We know the need to execute OE testimage over real HW not only QEMU,<b=
r>
&gt; <br>
&gt; I&#39;m aware that currently there is an implementation on the Yocto <=
br>
&gt; Autobuilder Helper , this initial implementation looks pretty well <br=
>
&gt; separating parts for template generation [1] and the script to send <b=
r>
&gt; jobs to LAVA [2].<br>
&gt; <br>
&gt; There are some limitations.<br>
&gt; <br>
&gt; - Requires that the boards are accessible trough SSH (same network?) <=
br>
&gt; by the Autobuilder, so no distributed LAB testing.<br>
&gt; - LAVA doesn&#39;t know about test results because the execution is <b=
r>
&gt; injected via SSH.<br>
&gt; <br>
&gt; In order to do a distributed Boards testing the Yocto Autobuilder <br>
&gt; needs to publish in some place accessible the artifacts (image, <br>
&gt; kernel, etc) to flash/boot the board and the test suite expected to <b=
r>
&gt; execute.<br>
&gt; <br>
&gt; Currently there is a functionality called testexport (not too<br>
&gt; used/maintained) that allows you to export the test suite.<br>
<br>
I continue to have mixed feelings about testexport. It adds complexity but =
I&#39;m not sure its actually worth it.<br>
<br>
An alternative would be to specify a set of commit hashes for the configura=
tion under test (poky or oe-core+bitbake and any other layers), then have L=
AVA obtain those pieces and run the tests directly.<br>
<br>
Its worth considering that we already now have two difference pieces of cod=
e trying to package up the build system/layers, eSDK and testexport.<br>
Ideally if we had some kind of standardised layer setup/configuration appro=
ach we&#39;d then just have a config file to share, then the tools could re=
create the environment and allow the tests to be run there without testexpo=
rt. Layer-setup is itself a harder subject but for example the layer setup =
code in autobuilder-helper could easily be reused as things stand today...<=
br>
<br>
In fact the more I think about it, the more I think we may want to do it th=
at way...<br>
<br>
&gt; I created a simple LAVA test definition that allows run testimage <br>
&gt; (oe-test runtime) in my own LAVA LAB, is very simplistic only has a <b=
r>
&gt; regex to parse results and uses lava-target-ip and lava-echo-ipv4 to <=
br>
&gt; get target and server IP addresses.<br>
&gt; <br>
&gt; In this way the LAVA server handles all the testing and finally the <b=
r>
&gt; Yocto Autobuilder can get/poll an event to know what was the actual <b=
r>
&gt; result of the job and the job could be send to different LAVA LAB&#39;=
s.<br>
<br>
That does sound useful and is likely a way we could end up doing this.<br>
Its probably worth highlighting that we now have a way of summarising the r=
esult of the test in the form of the json file the tests all generate. Shar=
ing that back to the Yocto autobuilder would give us the test results we ne=
ed.<br>
<br>
&gt; Some of the tasks, I identified,=C2=A0 (if is accepted)<br>
&gt; <br>
&gt; - Yocto-aubuilder-helper: Implement/adapt to cover this new behavior ,=
 <br>
&gt; move the EXTRA_PLAIN_CMDS to a class.<br>
&gt; -=C2=A0 Yocto-aubuilder-helper: Create a better approach to re-use LAV=
A job <br>
&gt; templates across boards.<br>
&gt; - Poky/OE: Review/fix test-export or provide other mechanism to export=
 <br>
&gt; the test suite.<br>
<br>
I think some of these are also independent of each other and good things to=
 work on regardless...<br>
<br>
I would like to hear feedback from those at Intel using LAVA who submitted =
the existing code.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div></div></div>

--000000000000c96282057a419f06--
