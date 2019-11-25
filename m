Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.532.1574707668316053406
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 10:47:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ucKXXoBJ;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: anibal.limon@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCD23E00F84; Mon, 25 Nov 2019 10:47:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3405EE00F6F
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 10:47:45 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id n9so10788594vsa.12
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 10:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HmwKHqn4DSeFyPZrolkPHCEkZwZBvKOvYGi5oKoRZxg=;
        b=ucKXXoBJRNQXnPuZzOHoSEJqK9VpwPSDN2hh4pH8+ORQCLVyklXNEShfgws94Wgtyz
         an66a89fDXG/hGQ/UTxZw7+MYSquel9v107RRhLHH6WfK7PsgZiQt7JOkoRR1jyqVtSg
         656PSApC1QBefgDDhoZdsX7yxRGSN3F3YbGONfSCxnCPVbiE2nKs96IRyfAY33PFgqI1
         4/A+eehyDIGS+6SAdC6YEWaBw4uE6SDeQOoPKR1SCioWcUDb3/5uBXh5aK0gIEDFrC8n
         OT1AYZv1c/CcFu/u7WwkbFnNimdpZG4mTZNrurl7dOaevf8esEPTcgmf850Eiz7fIuVZ
         UudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HmwKHqn4DSeFyPZrolkPHCEkZwZBvKOvYGi5oKoRZxg=;
        b=Qu2F+k0qOlZqeW9Ydpu4lACA8OCDSluqXSxqEs6OQBzwi75nYmQpN0QOLV1DNMW05Q
         t2eEwqz9zwBQUB9VSiHKKedbMlimwGu+c9C+LtFfbG+6flFjUCPlsezvCO5tfe2zbrQH
         PmpLFzURmj/ozMX0oUJLoPIin/CsLr5UmJK8RLmV0I8/4daaGO5AcHcpFg3kcP0g8ze7
         Kv7wVGpgdZ6xz564W+v+x4A0jzcqXNFEu9wSzyMrFb4QDHxXPwvUiM7bx/t8KPo8mNnt
         RDJSsI3xfZeEvNuSIfhJnmm/N0KHiYgWRKyY1Yp5UjEmXJ7EjD/i3l8GkS1lL8Kcro+x
         ARtQ==
X-Gm-Message-State: APjAAAUfS7Ly2Z4RPQ7L15tSau1RGhhqDrEZQp+WHmvZq4H+9EZdNIMA
	fQvAsMSrB4PJklH0tuxQSZEEtAgbTZS0m/0v6+KEdkzZ/SU=
X-Google-Smtp-Source: APXvYqzeN+3rH0ObU7zdx8TiV0w+Dau2UQkSXkzdjrTmGKoupE/2x+EuSElo8KulzS6Hb4Ax+/nA/vq2IkR/Nj4J/IY=
X-Received: by 2002:a05:6102:109e:: with SMTP id s30mr21163750vsr.175.1574707664134;
 Mon, 25 Nov 2019 10:47:44 -0800 (PST)
MIME-Version: 1.0
References: <CA+_Aqivq7XN8Q_fu43EFwhWs377vduoR9D5gVGBqS7gJgzKxNw@mail.gmail.com>
 <446afa92a1440c604e2074ab70f506fe3e46a0d5.camel@linuxfoundation.org>
 <AA9B40170ABA1047B45E714CB2B866B7069B514E@PGSMSX103.gar.corp.intel.com>
 <CA+_Aqis35mG154_4Jzhk_o0txdri=otjfqq678nBSpRNEx-xUA@mail.gmail.com>
 <CA+_AqivQ-4E+AMaSr07sPM8EqkwfMkiKYn4=m3jsSVQ_iESnBw@mail.gmail.com>
 <MN2PR11MB449328BB3D241C45B5578F90ED4A0@MN2PR11MB4493.namprd11.prod.outlook.com>
 <CAP71WjywQ9O+-NS1Uhp+wwztbM97NwuLdpRFSquNzB39aw3E-Q@mail.gmail.com>
In-Reply-To: <CAP71WjywQ9O+-NS1Uhp+wwztbM97NwuLdpRFSquNzB39aw3E-Q@mail.gmail.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Mon, 25 Nov 2019 12:47:32 -0600
Message-ID: <CA+_Aqiv=bmo+-EyiQTq_K0sP1axDDREdkdePgpRudX7sa0JSFQ@mail.gmail.com>
Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Orling, Timothy T" <timothy.t.orling@intel.com>, 
	"Sangal, Apoorv" <apoorv.sangal@intel.com>
Content-Type: multipart/alternative; boundary="000000000000f23e98059830329c"

--000000000000f23e98059830329c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 25 Nov 2019 at 10:23, Nicolas Dechesne <nicolas.dechesne@linaro.org=
>
wrote:

> hey,
>
>
> On Mon, Nov 25, 2019 at 2:49 AM Chan, Aaron Chun Yew
> <aaron.chun.yew.chan@intel.com> wrote:
> >
> > Hi Anibal.
> >
> >
> >
> > Hope that all is well with you and good to hear from someone from the
> community.
> >
> >
> >
> > We are maintaining our own LAVA server/dispatcher and only the
> administrator can create a user account for you.
> >
> > With the access, each user can create their own authentication tokens.
> Steps are:
> >
> >
> >
> > API (tab) =C3=A0 Authentication Tokens =C3=A0 New (+) =C3=A0 Enter the =
Description of
> new token =C3=A0 Copy the token
> >
> >
> >
> > You can define the server URL and token into the yoctoabb/config.py lik=
e
> this:
> >
> >
> >
> > =E2=80=9Clava-server=E2=80=9D: {
> >
> >     =E2=80=9Cserver=E2=80=9D:  =E2=80=9Chttps://staging.validation.lina=
ro.org/=E2=80=9D,
> >
> >     =E2=80=9Ctoken=E2=80=9D: <New Generated User Token>
> >
> > },
> >
> > =E2=80=9Cartifactorial=E2=80=9D: {
> >
> >    =E2=80=9Cserver=E2=80=9D: =E2=80=9C
> https://archive.validation.linaro.org/artifacts/team/qa/2019/11/24/12/28/
> =E2=80=9D,
> >
> >    =E2=80=9Ctoken=E2=80=9D: <New Generated User Token>
> >
> > }
> >
> >
> >
> > To summarize on what had just mentioned about a year ago, the concept i=
s
> that if your hardware is located on a remote site,
> >
> > we need to have user access to the LAVA server in order to schedule
> task/jobs and to retrieve the IP addr on the device
> >
> > which allow host to connect to the device on the network where both
> servers can communicate with each other.
>
> Can you please summarize/explain how the device under test is being
> used during the testing? The devices we have in our LAVA lab instance
> are generally not accessible from the outside world with SSH. I think
> I remember that SSH access was required to run the tests, but I am not
> sure about the details.
>

Aaron is explaining the current implementation in the Yocto Autobuilder it
relays of being in the same network/access with LAVA and the tests are
driven only by OE testimage and right
it requires to have SSH access details.


>
> The way we (Linaro) run tests on our devices in our LAVA lab (that
> includes all kind of tests, such as kernel only, but also YP/OE based,
> Android, ... ) is that the device under test is controlled via the
> serial console, not SSH. The test is driven from a LAVA test case
> definition. Do you think we can modify the YP ABB to behave in a
> similar way?


> We can run OE ptest on the OE images that we built, here is an example
> of LAVA test case that shows ptest was run:
> https://validation.linaro.org/results/1890697/0_linux-ptest
>
> To run ptest, we are using the following LAVA test definition (snippet):
>
> https://github.com/Linaro/test-definitions/blob/master/automated/linux/pt=
est/ptest.yaml
>
> which in turns use this test execution script:
>
> https://github.com/Linaro/test-definitions/blob/master/automated/linux/pt=
est/ptest.py
>
> LAVA was essentially designed to be used with a test definition, and I
> was hoping we would find a way to integrate and link YP ABB 'output'
> with LAVA in this way.
>
> What do you think?
>
> >
> >
> >
> > We had also done publishing the artifacts into Artifactorial (similar t=
o
> https://archive.validation.linaro.org/directories/),
> >
> > Artifactorial uses curl command to upload/download artifacts store on
> the remote server, we can  definitely integrate
> >
> > a python script using pycurl.
> >
> > However the setback on Artifactorial is that it creates a timestamp
> based on /<path>/<year>/<month>/<day>/<hour>/<minute>/<seconds>
> >
> > which can be tricky at times which automation may require to handle as
> we do not want to pick up the wrong image and flash into the
> >
> > hardware (e.g. beaglebone).
> >
> >
> >
> > On another approach you can bring up your own LAVA server thru Docker -
> https://hub.docker.com/r/lavasoftware/lava-server
> >
> > We had also explore this option in the past and its working for us. Thi=
s
> way you can have access control and miniture board farm which you
> >
> > can run tests on, if we do not have the hardware which you require you
> may still need to have access to staging linaro LAVA server.
> >
> >
> >
> > Lastly, you may consider to have access to LAVA dispatcher on Linaro
> end, as =E2=80=9Cboard_info.json=E2=80=9D is generated on the hardware bo=
oted on Yocto
> >
> > will contain board information which maybe helpful in the future. The
> dispatcher holds the rootfs of the image were local results/data are stor=
ed.
> >
> > For do_testimage the results are already handle by the bitbake framewor=
k
> and does not require the effort to retrieve the results.
> >
> >
> >
> > Cheers,
> >
> > Aaron
> >
> > Open Source Technology Center Intel
> >
> >
> >
> > From: Anibal Limon <anibal.limon@linaro.org>
> > Sent: Sunday, November 24, 2019 2:40 AM
> > To: Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>
> > Cc: Richard Purdie <richard.purdie@linuxfoundation.org>;
> yocto@yoctoproject.org; Nicolas Dechesne <nicolas.dechesne@linaro.org>;
> Orling, Timothy T <timothy.t.orling@intel.com>; Sangal, Apoorv <
> apoorv.sangal@intel.com>
> > Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration
> >
> >
> >
> > + Yang Wang
> >
> >
> >
> > Yang and me have been discussing about this Integration work (bugzilla
> [1]) and trying to breakdown the tasks needed.
> >
> >
> >
> > Nico: Yang and me talk about will be if Yocto Project can get a token t=
o
> access staging LAVA instance in order to test the integration. [2]
> >
> >
> >
> > [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13016
> >
> > [2] https://staging.validation.linaro.org/
> >
> >
> >
> > On Fri, 9 Nov 2018 at 14:59, Anibal Limon <anibal.limon@linaro.org>
> wrote:
> >
> >
> >
> > On Thu, 8 Nov 2018 at 20:49, Chan, Aaron Chun Yew <
> aaron.chun.yew.chan@intel.com> wrote:
> >
> > Hi Anibal/RP,
> >
> > > In order to do a distributed Boards testing the Yocto Autobuilder
> > > needs to publish in some place accessible the artifacts (image,
> > > kernel, etc) to flash/boot the board and the test suite expected to
> > > execute.
> >
> > [Reply] That is correct, since Linaro have this in place to use
> https://archive.validation.linaro.org/directories/ and I have look into
> this as well, we can leverage on this
> >               but I am up for any suggestion you might have. So the ide=
a
> here is that we have a placeholder to store the publish artifacts remotel=
y
> and deploy using
> >               native curl command with token access. Then based on your
> LAVA job definitions we can instruct LAVA to source the images via https.
> >               Having said that, the deploy stage in LAVA must have some
> capabilities to read a token file in the LAVA job defintion and pick up t=
he
> binaries from public repo (git LFS).
> >
> >               In order for Board Distributed Tests to happen, there are
> 2 items in my wish lists
> >
> >               1. Public hosting of binary repository - with access
> control
> >
> >
> >
> > For publish the artifacts (Rootfs, Kernel image, Test suite), if there
> is a public build a token isn't needed like targeting some boards already
> commercialized and can be published anywhere like in
> http://downloads.yoctoproject.org.
> >
> >
> >
> >               2. Ease Handshaking between two(2) different systems CI
> (e.g. Jenkins/Autobuilder) with LAVA
> >                    a. Exchange build property (metadata) - includes
> hardware info, system info
> >
> >
> >
> > You can add meta-data to a LAVA test definition.
> >
> >
> >
> >                    b. Test reporting results
> >
> >
> >
> > For notify job results LAVA test definition support the notify block in
> test jobs or you can poll the API using for both needs a LAVA token.
> >
> >
> >
> >
> >
> >
> > > I created a simple LAVA test definition that allows run testimage
> > > (oe-test runtime) in my own LAVA LAB, is very simplistic only has a
> > > regex to parse results and uses lava-target-ip and lava-echo-ipv4 to
> > > get target and server IP addresses.
> >
> > [Reply] Although the lava test shell have these capabilities to use
> lava-target-ip or/and lava-echo-ipv4 this only works within LAVA scope, t=
he
> way we retrieve the Ipv4
> >               address is reading the logs from LAVA thru XML-RPC and
> grep the pattern matching string which contains IP even before the HW get
> initialize entirely then parse
> >               IP back to the Yocto Autobuilder.
> >
> >
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/l=
ava/trigger-lava-jobs
> >
> >
> >
> > Yes, that's my idea the Yocto Autobuilder dosen't need to know about
> particular network configuration in tha LAVA server for execute the job, =
in
> this way the Yocto Autobuilder can communicate with LAVA server to retrie=
ve
> the testing job results, and in a case that needs to debug the board LAVA
> support hacking sessions to allow connect to the board outside the LAB.
> >
> >
> >
> > https://validation.linaro.org/static/docs/v2/hacking-session.html
> >
> >
> >
> >
> >
> > > Some of the tasks, I identified,  (if is accepted)
> > >
> > > - Yocto-aubuilder-helper: Implement/adapt to cover this new behavior =
,
> > > move the EXTRA_PLAIN_CMDS to a class.
> > > - Poky/OE: Review/fix test-export or provide other mechanism to expor=
t
> > > the test suite. > - Poky/OE: Review/fix test-export or provide other
> mechanism to export
> > > the test suite.
> >
> > [Reply] I would like to understand further what is the implementation
> here and how it addresses the problems that we have today. I believe in t=
he
> past, Tim has tried
> >               to enable testexport and transfer the testexport into the
> DUT but it was not very successful and we found breakage.
> >
> >
> >
> > Agree, The testexport functionality is on not usage so there are some
> bugs on it.
> >
> >
> >
> > Yang commented me that He is using testexport but I agree that isn't no=
t
> has full functionality as testimage, so in any case a mechanism to use th=
e
> test suite + artifacts is needed, could
> >
> > be making a copy of full build environment (bitbake + layers + config)
> and compress in order be able to execute inside LAVA.
> >
> >
> >
> >
> >
> >
> > > -  Yocto-aubuilder-helper: Create a better approach to re-use LAVA jo=
b
> > > templates across boards.
> >
> > [Reply] I couldn=E2=80=99t be more supportive on this having a common L=
AVA job
> template across boards but I would like to stress this, we don=E2=80=99t =
exactly
> know how
> >               community will define their own LAVA job definition,
> therefore what I had in mind as per today is to create a placeholde where
> LAVA job templates
> >               can be define and other boards/community can reuse the
> same template if it fits their use cases. In general the templates we hav=
e
> today are
> >               created to fit into Yocto Project use cases.
> >
> >
> >
> > Agree, I not mean a single template but a manner to add easily new LAVA
> templates for boards in Yocto Autobuilder, this involves some base LAVA j=
ob
> templates and a set of scripts to
> >
> > generate the final template, like you are doing. For example there are
> different ways to deploy a board but the login process is the same for
> core-image's (login as root wo passwd).
> >
> >
> >
> > Cheers,
> >
> > Anibal
> >
> >
> >
> >
> > Lastly  there are some works I've done on provisiong QEMU on LAVA
> sourceing from Yocto Project public releases, I am looking at where we ca=
n
> upstream this
> > https://github.com/lab-github/yoctoproject-lava-test-shell
> >
> > Thanks!
> >
> > Cheers,
> > Aaron Chan
> > Open Source Technology Center Intel
> >
> > -----Original Message-----
> > From: richard.purdie@linuxfoundation.org [mailto:
> richard.purdie@linuxfoundation.org]
> > Sent: Thursday, November 8, 2018 6:45 AM
> > To: Anibal Limon <anibal.limon@linaro.org>; yocto@yoctoproject.org
> > Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>; Chan, Aaron Chun
> Yew <aaron.chun.yew.chan@intel.com>
> > Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration
> >
> > Hi Anibal,
> >
> > On Wed, 2018-11-07 at 16:25 -0600, Anibal Limon wrote:
> > > We know the need to execute OE testimage over real HW not only QEMU,
> > >
> > > I'm aware that currently there is an implementation on the Yocto
> > > Autobuilder Helper , this initial implementation looks pretty well
> > > separating parts for template generation [1] and the script to send
> > > jobs to LAVA [2].
> > >
> > > There are some limitations.
> > >
> > > - Requires that the boards are accessible trough SSH (same network?)
> > > by the Autobuilder, so no distributed LAB testing.
> > > - LAVA doesn't know about test results because the execution is
> > > injected via SSH.
> > >
> > > In order to do a distributed Boards testing the Yocto Autobuilder
> > > needs to publish in some place accessible the artifacts (image,
> > > kernel, etc) to flash/boot the board and the test suite expected to
> > > execute.
> > >
> > > Currently there is a functionality called testexport (not too
> > > used/maintained) that allows you to export the test suite.
> >
> > I continue to have mixed feelings about testexport. It adds complexity
> but I'm not sure its actually worth it.
> >
> > An alternative would be to specify a set of commit hashes for the
> configuration under test (poky or oe-core+bitbake and any other layers),
> then have LAVA obtain those pieces and run the tests directly.
> >
> > Its worth considering that we already now have two difference pieces of
> code trying to package up the build system/layers, eSDK and testexport.
> > Ideally if we had some kind of standardised layer setup/configuration
> approach we'd then just have a config file to share, then the tools could
> recreate the environment and allow the tests to be run there without
> testexport. Layer-setup is itself a harder subject but for example the
> layer setup code in autobuilder-helper could easily be reused as things
> stand today...
> >
> > In fact the more I think about it, the more I think we may want to do i=
t
> that way...
> >
> > > I created a simple LAVA test definition that allows run testimage
> > > (oe-test runtime) in my own LAVA LAB, is very simplistic only has a
> > > regex to parse results and uses lava-target-ip and lava-echo-ipv4 to
> > > get target and server IP addresses.
> > >
> > > In this way the LAVA server handles all the testing and finally the
> > > Yocto Autobuilder can get/poll an event to know what was the actual
> > > result of the job and the job could be send to different LAVA LAB's.
> >
> > That does sound useful and is likely a way we could end up doing this.
> > Its probably worth highlighting that we now have a way of summarising
> the result of the test in the form of the json file the tests all generat=
e.
> Sharing that back to the Yocto autobuilder would give us the test results
> we need.
> >
> > > Some of the tasks, I identified,  (if is accepted)
> > >
> > > - Yocto-aubuilder-helper: Implement/adapt to cover this new behavior =
,
> > > move the EXTRA_PLAIN_CMDS to a class.
> > > -  Yocto-aubuilder-helper: Create a better approach to re-use LAVA jo=
b
> > > templates across boards.
> > > - Poky/OE: Review/fix test-export or provide other mechanism to expor=
t
> > > the test suite.
> >
> > I think some of these are also independent of each other and good thing=
s
> to work on regardless...
> >
> > I would like to hear feedback from those at Intel using LAVA who
> submitted the existing code.
> >
> > Cheers,
> >
> > Richard
>

--000000000000f23e98059830329c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, 25 Nov 2019 at 10:23, Nicolas=
 Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.deches=
ne@linaro.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">hey,<br>
<br>
<br>
On Mon, Nov 25, 2019 at 2:49 AM Chan, Aaron Chun Yew<br>
&lt;<a href=3D"mailto:aaron.chun.yew.chan@intel.com" target=3D"_blank">aaro=
n.chun.yew.chan@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Anibal.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Hope that all is well with you and good to hear from someone from the =
community.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; We are maintaining our own LAVA server/dispatcher and only the adminis=
trator can create a user account for you.<br>
&gt;<br>
&gt; With the access, each user can create their own authentication tokens.=
 Steps are:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; API (tab) =C3=A0 Authentication Tokens =C3=A0 New (+) =C3=A0 Enter the=
 Description of new token =C3=A0 Copy the token<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; You can define the server URL and token into the yoctoabb/config.py li=
ke this:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; =E2=80=9Clava-server=E2=80=9D: {<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=E2=80=9Cserver=E2=80=9D:=C2=A0 =E2=80=9C<a href=3D=
"https://staging.validation.linaro.org/" rel=3D"noreferrer" target=3D"_blan=
k">https://staging.validation.linaro.org/</a>=E2=80=9D,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0=E2=80=9Ctoken=E2=80=9D: &lt;New Generated User Tok=
en&gt;<br>
&gt;<br>
&gt; },<br>
&gt;<br>
&gt; =E2=80=9Cartifactorial=E2=80=9D: {<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =E2=80=9Cserver=E2=80=9D: =E2=80=9C<a href=3D"https://arc=
hive.validation.linaro.org/artifacts/team/qa/2019/11/24/12/28/" rel=3D"nore=
ferrer" target=3D"_blank">https://archive.validation.linaro.org/artifacts/t=
eam/qa/2019/11/24/12/28/</a>=E2=80=9D,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =E2=80=9Ctoken=E2=80=9D: &lt;New Generated User Token&gt;=
<br>
&gt;<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; To summarize on what had just mentioned about a year ago, the concept =
is that if your hardware is located on a remote site,<br>
&gt;<br>
&gt; we need to have user access to the LAVA server in order to schedule ta=
sk/jobs and to retrieve the IP addr on the device<br>
&gt;<br>
&gt; which allow host to connect to the device on the network where both se=
rvers can communicate with each other.<br>
<br>
Can you please summarize/explain how the device under test is being<br>
used during the testing? The devices we have in our LAVA lab instance<br>
are generally not accessible from the outside world with SSH. I think<br>
I remember that SSH access was required to run the tests, but I am not<br>
sure about the details.<br></blockquote><div><br></div><div>Aaron is explai=
ning the current implementation in the Yocto Autobuilder it relays of being=
 in the same network/access with LAVA and the tests are driven only by OE t=
estimage and right</div><div>it requires to have SSH access details.</div><=
div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
The way we (Linaro) run tests on our devices in our LAVA lab (that<br>
includes all kind of tests, such as kernel only, but also YP/OE based,<br>
Android, ... ) is that the device under test is controlled via the<br>
serial console, not SSH. The test is driven from a LAVA test case<br>
definition. Do you think we can modify the YP ABB to behave in a<br>
similar way?=C2=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
<br>
We can run OE ptest on the OE images that we built, here is an example<br>
of LAVA test case that shows ptest was run:<br>
<a href=3D"https://validation.linaro.org/results/1890697/0_linux-ptest" rel=
=3D"noreferrer" target=3D"_blank">https://validation.linaro.org/results/189=
0697/0_linux-ptest</a><br>
<br>
To run ptest, we are using the following LAVA test definition (snippet):<br=
>
<a href=3D"https://github.com/Linaro/test-definitions/blob/master/automated=
/linux/ptest/ptest.yaml" rel=3D"noreferrer" target=3D"_blank">https://githu=
b.com/Linaro/test-definitions/blob/master/automated/linux/ptest/ptest.yaml<=
/a><br>
<br>
which in turns use this test execution script:<br>
<a href=3D"https://github.com/Linaro/test-definitions/blob/master/automated=
/linux/ptest/ptest.py" rel=3D"noreferrer" target=3D"_blank">https://github.=
com/Linaro/test-definitions/blob/master/automated/linux/ptest/ptest.py</a><=
br>
<br>
LAVA was essentially designed to be used with a test definition, and I<br>
was hoping we would find a way to integrate and link YP ABB &#39;output&#39=
;<br>
with LAVA in this way.<br>
<br>
What do you think?<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; We had also done publishing the artifacts into Artifactorial (similar =
to <a href=3D"https://archive.validation.linaro.org/directories/" rel=3D"no=
referrer" target=3D"_blank">https://archive.validation.linaro.org/directori=
es/</a>),<br>
&gt;<br>
&gt; Artifactorial uses curl command to upload/download artifacts store on =
the remote server, we can=C2=A0 definitely integrate<br>
&gt;<br>
&gt; a python script using pycurl.<br>
&gt;<br>
&gt; However the setback on Artifactorial is that it creates a timestamp ba=
sed on /&lt;path&gt;/&lt;year&gt;/&lt;month&gt;/&lt;day&gt;/&lt;hour&gt;/&l=
t;minute&gt;/&lt;seconds&gt;<br>
&gt;<br>
&gt; which can be tricky at times which automation may require to handle as=
 we do not want to pick up the wrong image and flash into the<br>
&gt;<br>
&gt; hardware (e.g. beaglebone).<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On another approach you can bring up your own LAVA server thru Docker =
- <a href=3D"https://hub.docker.com/r/lavasoftware/lava-server" rel=3D"nore=
ferrer" target=3D"_blank">https://hub.docker.com/r/lavasoftware/lava-server=
</a><br>
&gt;<br>
&gt; We had also explore this option in the past and its working for us. Th=
is way you can have access control and miniture board farm which you<br>
&gt;<br>
&gt; can run tests on, if we do not have the hardware which you require you=
 may still need to have access to staging linaro LAVA server.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Lastly, you may consider to have access to LAVA dispatcher on Linaro e=
nd, as =E2=80=9Cboard_info.json=E2=80=9D is generated on the hardware boote=
d on Yocto<br>
&gt;<br>
&gt; will contain board information which maybe helpful in the future. The =
dispatcher holds the rootfs of the image were local results/data are stored=
.<br>
&gt;<br>
&gt; For do_testimage the results are already handle by the bitbake framewo=
rk and does not require the effort to retrieve the results.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Aaron<br>
&gt;<br>
&gt; Open Source Technology Center Intel<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; From: Anibal Limon &lt;<a href=3D"mailto:anibal.limon@linaro.org" targ=
et=3D"_blank">anibal.limon@linaro.org</a>&gt;<br>
&gt; Sent: Sunday, November 24, 2019 2:40 AM<br>
&gt; To: Chan, Aaron Chun Yew &lt;<a href=3D"mailto:aaron.chun.yew.chan@int=
el.com" target=3D"_blank">aaron.chun.yew.chan@intel.com</a>&gt;<br>
&gt; Cc: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundatio=
n.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;; <a hre=
f=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.or=
g</a>; Nicolas Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org" =
target=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;; Orling, Timothy T &l=
t;<a href=3D"mailto:timothy.t.orling@intel.com" target=3D"_blank">timothy.t=
.orling@intel.com</a>&gt;; Sangal, Apoorv &lt;<a href=3D"mailto:apoorv.sang=
al@intel.com" target=3D"_blank">apoorv.sangal@intel.com</a>&gt;<br>
&gt; Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; + Yang Wang<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Yang and me have been discussing about this Integration work (bugzilla=
 [1]) and trying to breakdown the tasks needed.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Nico: Yang and me talk about will be if Yocto Project can get a token =
to access staging LAVA instance in order to test the integration. [2]<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; [1] <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D130=
16" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D13016</a><br>
&gt;<br>
&gt; [2] <a href=3D"https://staging.validation.linaro.org/" rel=3D"noreferr=
er" target=3D"_blank">https://staging.validation.linaro.org/</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Fri, 9 Nov 2018 at 14:59, Anibal Limon &lt;<a href=3D"mailto:anibal=
.limon@linaro.org" target=3D"_blank">anibal.limon@linaro.org</a>&gt; wrote:=
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 8 Nov 2018 at 20:49, Chan, Aaron Chun Yew &lt;<a href=3D"mailt=
o:aaron.chun.yew.chan@intel.com" target=3D"_blank">aaron.chun.yew.chan@inte=
l.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Anibal/RP,<br>
&gt;<br>
&gt; &gt; In order to do a distributed Boards testing the Yocto Autobuilder=
<br>
&gt; &gt; needs to publish in some place accessible the artifacts (image,<b=
r>
&gt; &gt; kernel, etc) to flash/boot the board and the test suite expected =
to<br>
&gt; &gt; execute.<br>
&gt;<br>
&gt; [Reply] That is correct, since Linaro have this in place to use <a hre=
f=3D"https://archive.validation.linaro.org/directories/" rel=3D"noreferrer"=
 target=3D"_blank">https://archive.validation.linaro.org/directories/</a> a=
nd I have look into this as well, we can leverage on this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0but I am up for =
any suggestion you might have. So the idea here is that we have a placehold=
er to store the publish artifacts remotely and deploy using<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0native curl comm=
and with token access. Then based on your LAVA job definitions we can instr=
uct LAVA to source the images via https.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Having said that=
, the deploy stage in LAVA must have some capabilities to read a token file=
 in the LAVA job defintion and pick up the binaries from public repo (git L=
FS).<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0In order for Boa=
rd Distributed Tests to happen, there are 2 items in my wish lists<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01. Public hostin=
g of binary repository - with access control<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; For publish the artifacts (Rootfs, Kernel image, Test suite), if there=
 is a public build a token isn&#39;t needed like targeting some boards alre=
ady commercialized and can be published anywhere like in <a href=3D"http://=
downloads.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">http://dow=
nloads.yoctoproject.org</a>.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02. Ease Handshak=
ing between two(2) different systems CI (e.g. Jenkins/Autobuilder) with LAV=
A<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 a=
. Exchange build property (metadata) - includes hardware info, system info<=
br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; You can add meta-data to a LAVA test definition.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 b=
. Test reporting results<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; For notify job results LAVA test definition support the notify block i=
n test jobs or you can poll the API using for both needs a LAVA token.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; &gt; I created a simple LAVA test definition that allows run testimage=
<br>
&gt; &gt; (oe-test runtime) in my own LAVA LAB, is very simplistic only has=
 a<br>
&gt; &gt; regex to parse results and uses lava-target-ip and lava-echo-ipv4=
 to<br>
&gt; &gt; get target and server IP addresses.<br>
&gt;<br>
&gt; [Reply] Although the lava test shell have these capabilities to use la=
va-target-ip or/and lava-echo-ipv4 this only works within LAVA scope, the w=
ay we retrieve the Ipv4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0address is readi=
ng the logs from LAVA thru XML-RPC and grep the pattern matching string whi=
ch contains IP even before the HW get initialize entirely then parse<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IP back to the Y=
octo Autobuilder.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http:=
//git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/lava/tri=
gger-lava-jobs" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoprojec=
t.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/lava/trigger-lava-jobs</a=
><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Yes, that&#39;s my idea the Yocto Autobuilder dosen&#39;t need to know=
 about particular network configuration in tha LAVA server for execute the =
job, in this way the Yocto Autobuilder can communicate with LAVA server to =
retrieve the testing job results, and in a case that needs to debug the boa=
rd LAVA support hacking sessions to allow connect to the board outside the =
LAB.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"https://validation.linaro.org/static/docs/v2/hacking-sessio=
n.html" rel=3D"noreferrer" target=3D"_blank">https://validation.linaro.org/=
static/docs/v2/hacking-session.html</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; &gt; Some of the tasks, I identified,=C2=A0 (if is accepted)<br>
&gt; &gt;<br>
&gt; &gt; - Yocto-aubuilder-helper: Implement/adapt to cover this new behav=
ior ,<br>
&gt; &gt; move the EXTRA_PLAIN_CMDS to a class.<br>
&gt; &gt; - Poky/OE: Review/fix test-export or provide other mechanism to e=
xport<br>
&gt; &gt; the test suite. &gt; - Poky/OE: Review/fix test-export or provide=
 other mechanism to export<br>
&gt; &gt; the test suite.<br>
&gt;<br>
&gt; [Reply] I would like to understand further what is the implementation =
here and how it addresses the problems that we have today. I believe in the=
 past, Tim has tried<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0to enable testex=
port and transfer the testexport into the DUT but it was not very successfu=
l and we found breakage.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Agree, The testexport functionality is on not usage so there are some =
bugs on it.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Yang commented me that He is using testexport but I agree that isn&#39=
;t not has full functionality as testimage, so in any case a mechanism to u=
se the test suite + artifacts is needed, could<br>
&gt;<br>
&gt; be making a copy of full build environment (bitbake + layers + config)=
 and compress in order be able to execute inside LAVA.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; &gt; -=C2=A0 Yocto-aubuilder-helper: Create a better approach to re-us=
e LAVA job<br>
&gt; &gt; templates across boards.<br>
&gt;<br>
&gt; [Reply] I couldn=E2=80=99t be more supportive on this having a common =
LAVA job template across boards but I would like to stress this, we don=E2=
=80=99t exactly know how<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0community will d=
efine their own LAVA job definition, therefore what I had in mind as per to=
day is to create a placeholde where LAVA job templates<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0can be define an=
d other boards/community can reuse the same template if it fits their use c=
ases. In general the templates we have today are<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0created to fit i=
nto Yocto Project use cases.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Agree, I not mean a single template but a manner to add easily new LAV=
A templates for boards in Yocto Autobuilder, this involves some base LAVA j=
ob templates and a set of scripts to<br>
&gt;<br>
&gt; generate the final template, like you are doing. For example there are=
 different ways to deploy a board but the login process is the same for cor=
e-image&#39;s (login as root wo passwd).<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Anibal<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Lastly=C2=A0 there are some works I&#39;ve done on provisiong QEMU on =
LAVA sourceing from Yocto Project public releases, I am looking at where we=
 can upstream this<br>
&gt; <a href=3D"https://github.com/lab-github/yoctoproject-lava-test-shell"=
 rel=3D"noreferrer" target=3D"_blank">https://github.com/lab-github/yoctopr=
oject-lava-test-shell</a><br>
&gt;<br>
&gt; Thanks!<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Aaron Chan<br>
&gt; Open Source Technology Center Intel<br>
&gt;<br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"=
_blank">richard.purdie@linuxfoundation.org</a> [mailto:<a href=3D"mailto:ri=
chard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfou=
ndation.org</a>]<br>
&gt; Sent: Thursday, November 8, 2018 6:45 AM<br>
&gt; To: Anibal Limon &lt;<a href=3D"mailto:anibal.limon@linaro.org" target=
=3D"_blank">anibal.limon@linaro.org</a>&gt;; <a href=3D"mailto:yocto@yoctop=
roject.org" target=3D"_blank">yocto@yoctoproject.org</a><br>
&gt; Cc: Nicolas Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org=
" target=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;; Chan, Aaron Chun Y=
ew &lt;<a href=3D"mailto:aaron.chun.yew.chan@intel.com" target=3D"_blank">a=
aron.chun.yew.chan@intel.com</a>&gt;<br>
&gt; Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration<br>
&gt;<br>
&gt; Hi Anibal,<br>
&gt;<br>
&gt; On Wed, 2018-11-07 at 16:25 -0600, Anibal Limon wrote:<br>
&gt; &gt; We know the need to execute OE testimage over real HW not only QE=
MU,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m aware that currently there is an implementation on the Yo=
cto<br>
&gt; &gt; Autobuilder Helper , this initial implementation looks pretty wel=
l<br>
&gt; &gt; separating parts for template generation [1] and the script to se=
nd<br>
&gt; &gt; jobs to LAVA [2].<br>
&gt; &gt;<br>
&gt; &gt; There are some limitations.<br>
&gt; &gt;<br>
&gt; &gt; - Requires that the boards are accessible trough SSH (same networ=
k?)<br>
&gt; &gt; by the Autobuilder, so no distributed LAB testing.<br>
&gt; &gt; - LAVA doesn&#39;t know about test results because the execution =
is<br>
&gt; &gt; injected via SSH.<br>
&gt; &gt;<br>
&gt; &gt; In order to do a distributed Boards testing the Yocto Autobuilder=
<br>
&gt; &gt; needs to publish in some place accessible the artifacts (image,<b=
r>
&gt; &gt; kernel, etc) to flash/boot the board and the test suite expected =
to<br>
&gt; &gt; execute.<br>
&gt; &gt;<br>
&gt; &gt; Currently there is a functionality called testexport (not too<br>
&gt; &gt; used/maintained) that allows you to export the test suite.<br>
&gt;<br>
&gt; I continue to have mixed feelings about testexport. It adds complexity=
 but I&#39;m not sure its actually worth it.<br>
&gt;<br>
&gt; An alternative would be to specify a set of commit hashes for the conf=
iguration under test (poky or oe-core+bitbake and any other layers), then h=
ave LAVA obtain those pieces and run the tests directly.<br>
&gt;<br>
&gt; Its worth considering that we already now have two difference pieces o=
f code trying to package up the build system/layers, eSDK and testexport.<b=
r>
&gt; Ideally if we had some kind of standardised layer setup/configuration =
approach we&#39;d then just have a config file to share, then the tools cou=
ld recreate the environment and allow the tests to be run there without tes=
texport. Layer-setup is itself a harder subject but for example the layer s=
etup code in autobuilder-helper could easily be reused as things stand toda=
y...<br>
&gt;<br>
&gt; In fact the more I think about it, the more I think we may want to do =
it that way...<br>
&gt;<br>
&gt; &gt; I created a simple LAVA test definition that allows run testimage=
<br>
&gt; &gt; (oe-test runtime) in my own LAVA LAB, is very simplistic only has=
 a<br>
&gt; &gt; regex to parse results and uses lava-target-ip and lava-echo-ipv4=
 to<br>
&gt; &gt; get target and server IP addresses.<br>
&gt; &gt;<br>
&gt; &gt; In this way the LAVA server handles all the testing and finally t=
he<br>
&gt; &gt; Yocto Autobuilder can get/poll an event to know what was the actu=
al<br>
&gt; &gt; result of the job and the job could be send to different LAVA LAB=
&#39;s.<br>
&gt;<br>
&gt; That does sound useful and is likely a way we could end up doing this.=
<br>
&gt; Its probably worth highlighting that we now have a way of summarising =
the result of the test in the form of the json file the tests all generate.=
 Sharing that back to the Yocto autobuilder would give us the test results =
we need.<br>
&gt;<br>
&gt; &gt; Some of the tasks, I identified,=C2=A0 (if is accepted)<br>
&gt; &gt;<br>
&gt; &gt; - Yocto-aubuilder-helper: Implement/adapt to cover this new behav=
ior ,<br>
&gt; &gt; move the EXTRA_PLAIN_CMDS to a class.<br>
&gt; &gt; -=C2=A0 Yocto-aubuilder-helper: Create a better approach to re-us=
e LAVA job<br>
&gt; &gt; templates across boards.<br>
&gt; &gt; - Poky/OE: Review/fix test-export or provide other mechanism to e=
xport<br>
&gt; &gt; the test suite.<br>
&gt;<br>
&gt; I think some of these are also independent of each other and good thin=
gs to work on regardless...<br>
&gt;<br>
&gt; I would like to hear feedback from those at Intel using LAVA who submi=
tted the existing code.<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Richard<br>
</blockquote></div></div>

--000000000000f23e98059830329c--
