Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6520.1574699007706632359
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 08:23:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ZwqfHPWO;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: nicolas.dechesne@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F646E00F3E; Mon, 25 Nov 2019 08:23:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6375BE00F1D
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:23:25 -0800 (PST)
Received: by mail-lf1-f48.google.com with SMTP id y19so11491490lfl.9
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pU2XMC5C9lxm+bpcyja9Qfsu3rPHSJKwiWi7RU/0IUw=;
        b=ZwqfHPWOWV3U/8ahmv8lzhCFy2ZXGB3EeQ/AYxN7XzGcJVvalnRj9mwigoIU7ITLoi
         +OwINnyZ/AayRycf5CtH9EKFvvj208nxow3NUXqR8Qam9sVGoq42UOUzuM44AUGprhl1
         U8WahFlIOLRLyxCPCSb4mafv2MG+/U8+idVklIk2usj6C63JOAPtcZ9Vi5lgFaq6ajl+
         V+3EPIkl0YkxKCNty0dUhT2/jugOoJYLkuPEcvUyO9CXgT+Z0rea3dQCs7slWRib7EzF
         HlPO5kI8Ql2B0lkSGJJcRva+OjW+eOSE4nfC5rOdrViGa66WKjnt//PAfSEiHjX8lZAK
         8HjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pU2XMC5C9lxm+bpcyja9Qfsu3rPHSJKwiWi7RU/0IUw=;
        b=Cl0enlN2dZTLMqENRHfMia2P7HPKOmGEx20bBdFZgiMrWPwiEti4cDBMJVZrn5jrQT
         kfk8HncHkjyaJXi00Ps5a7OWZ0t7jYzFTk0p6dKzEV6KiCpgpK2CJ8eOnW1w0r9G/PcL
         sKpR+yRfFuvJbGaz9gNzemD0OegaFOeKKUIxPs3ce1clFWX0YBDoDYq1htwWf1luShDn
         OO03+wfigafHkC/UVAX4JOAyK/K4Doh70pEQs1l3Mg3TnLuZ7ih0P+2jY82/J0cd7v8b
         CR7p3gIQw9CUQbmr8zH7r4F78hZhpzek+H0uM1EOpj6txd9V76gAJiBwaZMNp1PAri9a
         M99g==
X-Gm-Message-State: APjAAAWSHNk/72WRoVU7Gkrx3gQTQvQjUCM1OSG+8kHiNX4R9rRFAcqh
	vOtY9iQB3BoYU3XdMP/GGW/xicKk7hKX5xJz1Efcxg==
X-Google-Smtp-Source: APXvYqyUFXCWO6rh+QSPYmSZcgUnhrumDNYYx+RNoO2xGINTxfVtsMInm4qtz+m12YQN4B18yL3S6fHq3W7r0aUbnbY=
X-Received: by 2002:ac2:428d:: with SMTP id m13mr15355814lfh.64.1574699003906;
 Mon, 25 Nov 2019 08:23:23 -0800 (PST)
MIME-Version: 1.0
References: <CA+_Aqivq7XN8Q_fu43EFwhWs377vduoR9D5gVGBqS7gJgzKxNw@mail.gmail.com>
 <446afa92a1440c604e2074ab70f506fe3e46a0d5.camel@linuxfoundation.org>
 <AA9B40170ABA1047B45E714CB2B866B7069B514E@PGSMSX103.gar.corp.intel.com>
 <CA+_Aqis35mG154_4Jzhk_o0txdri=otjfqq678nBSpRNEx-xUA@mail.gmail.com>
 <CA+_AqivQ-4E+AMaSr07sPM8EqkwfMkiKYn4=m3jsSVQ_iESnBw@mail.gmail.com> <MN2PR11MB449328BB3D241C45B5578F90ED4A0@MN2PR11MB4493.namprd11.prod.outlook.com>
In-Reply-To: <MN2PR11MB449328BB3D241C45B5578F90ED4A0@MN2PR11MB4493.namprd11.prod.outlook.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Mon, 25 Nov 2019 17:23:12 +0100
Message-ID: <CAP71WjywQ9O+-NS1Uhp+wwztbM97NwuLdpRFSquNzB39aw3E-Q@mail.gmail.com>
Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration
To: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Cc: Anibal Limon <anibal.limon@linaro.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Orling, Timothy T" <timothy.t.orling@intel.com>, 
	"Sangal, Apoorv" <apoorv.sangal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hey,


On Mon, Nov 25, 2019 at 2:49 AM Chan, Aaron Chun Yew
<aaron.chun.yew.chan@intel.com> wrote:
>
> Hi Anibal.
>
>
>
> Hope that all is well with you and good to hear from someone from the com=
munity.
>
>
>
> We are maintaining our own LAVA server/dispatcher and only the administra=
tor can create a user account for you.
>
> With the access, each user can create their own authentication tokens. St=
eps are:
>
>
>
> API (tab) =C3=A0 Authentication Tokens =C3=A0 New (+) =C3=A0 Enter the De=
scription of new token =C3=A0 Copy the token
>
>
>
> You can define the server URL and token into the yoctoabb/config.py like =
this:
>
>
>
> =E2=80=9Clava-server=E2=80=9D: {
>
>     =E2=80=9Cserver=E2=80=9D:  =E2=80=9Chttps://staging.validation.linaro=
.org/=E2=80=9D,
>
>     =E2=80=9Ctoken=E2=80=9D: <New Generated User Token>
>
> },
>
> =E2=80=9Cartifactorial=E2=80=9D: {
>
>    =E2=80=9Cserver=E2=80=9D: =E2=80=9Chttps://archive.validation.linaro.o=
rg/artifacts/team/qa/2019/11/24/12/28/=E2=80=9D,
>
>    =E2=80=9Ctoken=E2=80=9D: <New Generated User Token>
>
> }
>
>
>
> To summarize on what had just mentioned about a year ago, the concept is =
that if your hardware is located on a remote site,
>
> we need to have user access to the LAVA server in order to schedule task/=
jobs and to retrieve the IP addr on the device
>
> which allow host to connect to the device on the network where both serve=
rs can communicate with each other.

Can you please summarize/explain how the device under test is being
used during the testing? The devices we have in our LAVA lab instance
are generally not accessible from the outside world with SSH. I think
I remember that SSH access was required to run the tests, but I am not
sure about the details.

The way we (Linaro) run tests on our devices in our LAVA lab (that
includes all kind of tests, such as kernel only, but also YP/OE based,
Android, ... ) is that the device under test is controlled via the
serial console, not SSH. The test is driven from a LAVA test case
definition. Do you think we can modify the YP ABB to behave in a
similar way?

We can run OE ptest on the OE images that we built, here is an example
of LAVA test case that shows ptest was run:
https://validation.linaro.org/results/1890697/0_linux-ptest

To run ptest, we are using the following LAVA test definition (snippet):
https://github.com/Linaro/test-definitions/blob/master/automated/linux/ptes=
t/ptest.yaml

which in turns use this test execution script:
https://github.com/Linaro/test-definitions/blob/master/automated/linux/ptes=
t/ptest.py

LAVA was essentially designed to be used with a test definition, and I
was hoping we would find a way to integrate and link YP ABB 'output'
with LAVA in this way.

What do you think?

>
>
>
> We had also done publishing the artifacts into Artifactorial (similar to =
https://archive.validation.linaro.org/directories/),
>
> Artifactorial uses curl command to upload/download artifacts store on the=
 remote server, we can  definitely integrate
>
> a python script using pycurl.
>
> However the setback on Artifactorial is that it creates a timestamp based=
 on /<path>/<year>/<month>/<day>/<hour>/<minute>/<seconds>
>
> which can be tricky at times which automation may require to handle as we=
 do not want to pick up the wrong image and flash into the
>
> hardware (e.g. beaglebone).
>
>
>
> On another approach you can bring up your own LAVA server thru Docker - h=
ttps://hub.docker.com/r/lavasoftware/lava-server
>
> We had also explore this option in the past and its working for us. This =
way you can have access control and miniture board farm which you
>
> can run tests on, if we do not have the hardware which you require you ma=
y still need to have access to staging linaro LAVA server.
>
>
>
> Lastly, you may consider to have access to LAVA dispatcher on Linaro end,=
 as =E2=80=9Cboard_info.json=E2=80=9D is generated on the hardware booted o=
n Yocto
>
> will contain board information which maybe helpful in the future. The dis=
patcher holds the rootfs of the image were local results/data are stored.
>
> For do_testimage the results are already handle by the bitbake framework =
and does not require the effort to retrieve the results.
>
>
>
> Cheers,
>
> Aaron
>
> Open Source Technology Center Intel
>
>
>
> From: Anibal Limon <anibal.limon@linaro.org>
> Sent: Sunday, November 24, 2019 2:40 AM
> To: Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>
> Cc: Richard Purdie <richard.purdie@linuxfoundation.org>; yocto@yoctoproje=
ct.org; Nicolas Dechesne <nicolas.dechesne@linaro.org>; Orling, Timothy T <=
timothy.t.orling@intel.com>; Sangal, Apoorv <apoorv.sangal@intel.com>
> Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration
>
>
>
> + Yang Wang
>
>
>
> Yang and me have been discussing about this Integration work (bugzilla [1=
]) and trying to breakdown the tasks needed.
>
>
>
> Nico: Yang and me talk about will be if Yocto Project can get a token to =
access staging LAVA instance in order to test the integration. [2]
>
>
>
> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13016
>
> [2] https://staging.validation.linaro.org/
>
>
>
> On Fri, 9 Nov 2018 at 14:59, Anibal Limon <anibal.limon@linaro.org> wrote=
:
>
>
>
> On Thu, 8 Nov 2018 at 20:49, Chan, Aaron Chun Yew <aaron.chun.yew.chan@in=
tel.com> wrote:
>
> Hi Anibal/RP,
>
> > In order to do a distributed Boards testing the Yocto Autobuilder
> > needs to publish in some place accessible the artifacts (image,
> > kernel, etc) to flash/boot the board and the test suite expected to
> > execute.
>
> [Reply] That is correct, since Linaro have this in place to use https://a=
rchive.validation.linaro.org/directories/ and I have look into this as well=
, we can leverage on this
>               but I am up for any suggestion you might have. So the idea =
here is that we have a placeholder to store the publish artifacts remotely =
and deploy using
>               native curl command with token access. Then based on your L=
AVA job definitions we can instruct LAVA to source the images via https.
>               Having said that, the deploy stage in LAVA must have some c=
apabilities to read a token file in the LAVA job defintion and pick up the =
binaries from public repo (git LFS).
>
>               In order for Board Distributed Tests to happen, there are 2=
 items in my wish lists
>
>               1. Public hosting of binary repository - with access contro=
l
>
>
>
> For publish the artifacts (Rootfs, Kernel image, Test suite), if there is=
 a public build a token isn't needed like targeting some boards already com=
mercialized and can be published anywhere like in http://downloads.yoctopro=
ject.org.
>
>
>
>               2. Ease Handshaking between two(2) different systems CI (e.=
g. Jenkins/Autobuilder) with LAVA
>                    a. Exchange build property (metadata) - includes hardw=
are info, system info
>
>
>
> You can add meta-data to a LAVA test definition.
>
>
>
>                    b. Test reporting results
>
>
>
> For notify job results LAVA test definition support the notify block in t=
est jobs or you can poll the API using for both needs a LAVA token.
>
>
>
>
>
>
> > I created a simple LAVA test definition that allows run testimage
> > (oe-test runtime) in my own LAVA LAB, is very simplistic only has a
> > regex to parse results and uses lava-target-ip and lava-echo-ipv4 to
> > get target and server IP addresses.
>
> [Reply] Although the lava test shell have these capabilities to use lava-=
target-ip or/and lava-echo-ipv4 this only works within LAVA scope, the way =
we retrieve the Ipv4
>               address is reading the logs from LAVA thru XML-RPC and grep=
 the pattern matching string which contains IP even before the HW get initi=
alize entirely then parse
>               IP back to the Yocto Autobuilder.
>
>               http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder=
-helper/tree/lava/trigger-lava-jobs
>
>
>
> Yes, that's my idea the Yocto Autobuilder dosen't need to know about part=
icular network configuration in tha LAVA server for execute the job, in thi=
s way the Yocto Autobuilder can communicate with LAVA server to retrieve th=
e testing job results, and in a case that needs to debug the board LAVA sup=
port hacking sessions to allow connect to the board outside the LAB.
>
>
>
> https://validation.linaro.org/static/docs/v2/hacking-session.html
>
>
>
>
>
> > Some of the tasks, I identified,  (if is accepted)
> >
> > - Yocto-aubuilder-helper: Implement/adapt to cover this new behavior ,
> > move the EXTRA_PLAIN_CMDS to a class.
> > - Poky/OE: Review/fix test-export or provide other mechanism to export
> > the test suite. > - Poky/OE: Review/fix test-export or provide other me=
chanism to export
> > the test suite.
>
> [Reply] I would like to understand further what is the implementation her=
e and how it addresses the problems that we have today. I believe in the pa=
st, Tim has tried
>               to enable testexport and transfer the testexport into the D=
UT but it was not very successful and we found breakage.
>
>
>
> Agree, The testexport functionality is on not usage so there are some bug=
s on it.
>
>
>
> Yang commented me that He is using testexport but I agree that isn't not =
has full functionality as testimage, so in any case a mechanism to use the =
test suite + artifacts is needed, could
>
> be making a copy of full build environment (bitbake + layers + config) an=
d compress in order be able to execute inside LAVA.
>
>
>
>
>
>
> > -  Yocto-aubuilder-helper: Create a better approach to re-use LAVA job
> > templates across boards.
>
> [Reply] I couldn=E2=80=99t be more supportive on this having a common LAV=
A job template across boards but I would like to stress this, we don=E2=80=
=99t exactly know how
>               community will define their own LAVA job definition, theref=
ore what I had in mind as per today is to create a placeholde where LAVA jo=
b templates
>               can be define and other boards/community can reuse the same=
 template if it fits their use cases. In general the templates we have toda=
y are
>               created to fit into Yocto Project use cases.
>
>
>
> Agree, I not mean a single template but a manner to add easily new LAVA t=
emplates for boards in Yocto Autobuilder, this involves some base LAVA job =
templates and a set of scripts to
>
> generate the final template, like you are doing. For example there are di=
fferent ways to deploy a board but the login process is the same for core-i=
mage's (login as root wo passwd).
>
>
>
> Cheers,
>
> Anibal
>
>
>
>
> Lastly  there are some works I've done on provisiong QEMU on LAVA sourcei=
ng from Yocto Project public releases, I am looking at where we can upstrea=
m this
> https://github.com/lab-github/yoctoproject-lava-test-shell
>
> Thanks!
>
> Cheers,
> Aaron Chan
> Open Source Technology Center Intel
>
> -----Original Message-----
> From: richard.purdie@linuxfoundation.org [mailto:richard.purdie@linuxfoun=
dation.org]
> Sent: Thursday, November 8, 2018 6:45 AM
> To: Anibal Limon <anibal.limon@linaro.org>; yocto@yoctoproject.org
> Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>; Chan, Aaron Chun Yew =
<aaron.chun.yew.chan@intel.com>
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
t I'm not sure its actually worth it.
>
> An alternative would be to specify a set of commit hashes for the configu=
ration under test (poky or oe-core+bitbake and any other layers), then have=
 LAVA obtain those pieces and run the tests directly.
>
> Its worth considering that we already now have two difference pieces of c=
ode trying to package up the build system/layers, eSDK and testexport.
> Ideally if we had some kind of standardised layer setup/configuration app=
roach we'd then just have a config file to share, then the tools could recr=
eate the environment and allow the tests to be run there without testexport=
. Layer-setup is itself a harder subject but for example the layer setup co=
de in autobuilder-helper could easily be reused as things stand today...
>
> In fact the more I think about it, the more I think we may want to do it =
that way...
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
> Its probably worth highlighting that we now have a way of summarising the=
 result of the test in the form of the json file the tests all generate. Sh=
aring that back to the Yocto autobuilder would give us the test results we =
need.
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
> I think some of these are also independent of each other and good things =
to work on regardless...
>
> I would like to hear feedback from those at Intel using LAVA who submitte=
d the existing code.
>
> Cheers,
>
> Richard
