Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1527BE0054C; Mon, 21 Jul 2014 12:57:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 020E0E00342
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 12:57:49 -0700 (PDT)
Received: by mail-qg0-f46.google.com with SMTP id z60so5946352qgd.33
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 12:57:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=9pMUhpd15VJ7OYLOLUiZ1Lb30uiO1GwSHlsEE3qRhlA=;
	b=JhYLBsfQ8Tk+J9RbJh/eekwGHm9V57IOr1LQHa4JwL7FT/W7oq55DpEzHTf1j+I4Tb
	ouw/9B6PIPY889BlAtAsaQZpa0tD0f9x7UQ4gOHsnmscfQklLosfeyiZfVrBKBJ0LVRO
	OZTje6y03wnIBDobcfYDBAeGdwGr+HxnOZrd1llZVw7YtPnZ8PQZk5Wxghg9BwPm9y91
	ZFpOu0j9bUVdAGCESKh9fVAOsXbk1ZVfz6eFjkhX+HbYzwcY3Gfm5/iCzmjys+PU4Jvr
	AEgQ4WSsmCzFwxjEGGW8Vzpie39W2WLizDI5SSX5KGBggzvbiUYjJ1LZU86BfLw4zPPE
	oSog==
X-Gm-Message-State: ALoCoQk46Kr3/F7saPLi7d+c4KoyhwOTpd9JS1XHgAZ8nFlelriZc62jCE6E2EaiKO9DWtLl4A85
MIME-Version: 1.0
X-Received: by 10.224.71.198 with SMTP id i6mr47171072qaj.76.1405972668523;
	Mon, 21 Jul 2014 12:57:48 -0700 (PDT)
Received: by 10.140.43.183 with HTTP; Mon, 21 Jul 2014 12:57:48 -0700 (PDT)
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D6CAE0B@SESTOEX04.enea.se>
References: <CALZ2gZV=pDM5kE-VDdEp1xJRV+ig7q5ix+cFU9vjpvJg7x=o5Q@mail.gmail.com>
	<D7AB900AA081FD46B179E331E9F703E8907D76@SESTOEX04.enea.se>
	<6B17198E316BD04DBB6F6DD263019AE125573C4A@SESTOEX04.enea.se>
	<2D55BFC2C836774DB0F2FE17BECC006C28993A30@SESTOEX04.enea.se>
	<D7AB900AA081FD46B179E331E9F703E8908E42@SESTOEX04.enea.se>
	<DDB0C57E45663A458C5CACB7B5688BC21D6C5C0D@SESTOEX04.enea.se>
	<D7AB900AA081FD46B179E331E9F703E8908E9C@SESTOEX04.enea.se>
	<DDB0C57E45663A458C5CACB7B5688BC21D6C8818@SESTOEX04.enea.se>
	<CA+YB3rY8TifZWKrm5FJc871WMtzP-ZeiCZJS9ceSa3uUoR9TGA@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D6CAE0B@SESTOEX04.enea.se>
Date: Mon, 21 Jul 2014 15:57:48 -0400
Message-ID: <CANBf+V17Q0P98d7632+FX3_W1RsT3ZR=ZR4W1mG4iDJ-CRLnZw@mail.gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [OE-core] Carrier Grade layer proposal
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
X-List-Received-Date: Mon, 21 Jul 2014 19:57:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Alex,

I've been away from this for a bit but now I'm getting time to look at
it again and I was wondering if you had any deeper level of detail you
could share about the work going on in meta-cgl.  Obviously since this
is a new registration and one that will look rather different from all
of the other CGL registrations currently, those of us in the CGL
workgroup were quite interested to see this happen.  Personally I'm
also interested in this since it's the kind of thing I've been doing
for a long time now and if I can, I'd like to help out.  In
particular, if you've got a list of, say, the category B+ items, that
might be something I can do that will be independent of your work on
the more active cat-A stuff.  OTOH, cat-A is easy to work on since
those are the items I saw when I was working with meta-cgl a month or
so back.  I know you guys are focused on your part of it, but if you
had sort of a "here's how to help us" guide, that'd be awesome.

Also, I probably missed it, but is the intent to use either the yocto
list or the oe list for all meta-cgl discussions, or do you have a
dedicated list we can sign up for?  I see you have guidance for
sending submissions to meta-cgl, but is that a list that's open to the
community, or is it an internal alias / distribution list for Enea?

Thanks,
-J.


On Mon, Jul 7, 2014 at 2:43 PM, Alexandru Vaduva
<Alexandru.Vaduva@enea.com> wrote:
> Hello Jeff,
>
> The errors are package related.
> Meta-cgl can be seen as a non BSP specific layer (it can be viewed as the=
 LSB from poky).
> I already started fixing a number, of the already existing errors and the=
 patches will be added upstream after proper testing.
> I will continue the bug fixing and package integration (into the core-ima=
ge-cgl image) process and after that is finished I will continue with the
> Category B packages.
>
> I will also try to keep you guys informed about the latest updates, mainl=
y on the YPTM, but for those who cannot wait that much, there is the
> Git repository with which they can interact: http://git.enea.com/git/?p=
=3Dlinux/meta-cgl.git;a=3Dsummary
>
>
> Have a good day,
> Alex
>
>
> -----Original Message-----
> From: jefro.net@gmail.com [mailto:jefro.net@gmail.com] On Behalf Of Jeff =
Osier-Mixon
> Sent: Monday, July 07, 2014 9:22 PM
> To: Alexandru Vaduva
> Subject: Re: [OE-core] Carrier Grade layer proposal
>
> Thanks, Alex.
>
> Others on the mailing lists, if you have any comments on the contents of =
this new layer, please mention them on this thread.
>
> Re compilation errors, were they specific to a BSP or were they general e=
rrors in the packages?
>
> thanks
>
> On Mon, Jun 30, 2014 at 8:01 AM, Alexandru Vaduva <Alexandru.Vaduva@enea.=
com> wrote:
>> Hello Jeff,
>>
>>
>>
>> The available layer is a work in progress.
>>
>> For the moment we have done an internal mapping of the packages needed
>> inside meta-cgl layer. The mapping is done as following:
>> A. Requirement that map against package/packages with recipes that
>> already exists in Yocto
>>   A1. Requirement that map against package/packages with recipes
>> already existing in meta-enea
>>   A2. Requirement that map against package/packages with recipes that
>> exists in Yocto (but not in meta-enea) B. Requirement that map against
>> package/packages without any recipe C. Requirement does not directly
>> map against package/packages and needs some investigation.
>> D. Requirement that no solution have been found after a more detailed
>> investigation.
>>
>>
>>
>> When the release was made available on the public repository, the
>> packages from the A1 and A2 were integrated, a bunch of them with compil=
ation errors:
>>
>> -          lksctp-tools
>>
>> -          openais
>>
>> -          pacemaker
>>
>> -          openhpi
>>
>> -          open-iscsi-user
>>
>> -          open-iscsi-kernel
>>
>> -          libcap-ng
>>
>> -          cluster-glue
>>
>> -          cluster-resource-agents
>>
>> The activity on the meta-cgl was resumed today and those build and
>> integration errors will be dealt next.
>>
>>
>>
>> On the longer run we will try to create recipes and/or fulfill all the
>> other requirements from the class B, C, and D.
>>
>> Please do not hesitate to contact me if you have further questions.
>>
>>
>>
>>
>>
>> Alex
>>
>>
>>
>> From: Jon Aldama
>> Sent: Friday, June 27, 2014 1:07 PM
>> To: Alexandru Vaduva; Cosmin Moldoveanu; Jenny Andersson; David
>> Nystr=C3=B6m
>> Cc: Daniel Bornaz; Adrian Dudau
>> Subject: RE: Carrier Grade layer proposal
>>
>>
>>
>> Roger that! Thanks Alexandru!
>>
>>
>>
>>
>>
>> From: Alexandru Vaduva
>> Sent: den 27 juni 2014 11:43
>> To: Jon Aldama; Cosmin Moldoveanu; Jenny Andersson; David Nystr=C3=B6m
>> Cc: Daniel Bornaz; Adrian Dudau
>> Subject: RE: Carrier Grade layer proposal
>>
>>
>>
>> Hello Jon,
>>
>>
>>
>> We will first have an internal meeting on Monday and after that I will
>> offer an answer to Jeff.
>>
>>
>>
>>
>>
>> Alex
>>
>>
>>
>> From: Jon Aldama
>> Sent: Friday, June 27, 2014 12:32 PM
>> To: Cosmin Moldoveanu; Jenny Andersson; David Nystr=C3=B6m
>> Cc: Alexandru Vaduva; Daniel Bornaz; Adrian Dudau
>> Subject: RE: Carrier Grade layer proposal
>>
>>
>>
>> Thank you Cosmin,
>>
>>
>>
>> Alexandru, could you please respond Jeff at the mailing list? (see
>> down
>> below)
>>
>>
>>
>> Cheers
>>
>> Jon
>>
>>
>>
>> From: Cosmin Moldoveanu
>> Sent: den 27 juni 2014 10:59
>> To: Jenny Andersson; Jon Aldama; David Nystr=C3=B6m
>> Cc: Alexandru Vaduva; Daniel Bornaz; Adrian Dudau
>> Subject: RE: Carrier Grade layer proposal
>>
>>
>>
>> Hi,
>>
>>
>>
>> Alexandru Vaduva will be main responsible for interfacing with
>> community on meta-cgl topic. He will also attend Yocto Technical
>> Meetings whenever necessary from now on.
>>
>>
>>
>> BR,
>>
>> /Cosmin
>>
>>
>>
>> From: Jenny Andersson
>> Sent: Friday, June 27, 2014 10:32 AM
>> To: Jon Aldama; David Nystr=C3=B6m; Cosmin Moldoveanu
>> Cc: Valentin Cobelea
>> Subject: RE: Carrier Grade layer proposal
>>
>>
>>
>> Hi Cosmin,
>>
>>
>>
>> How took over after Valentin left Enea? Could someone in your team respo=
nd.
>>
>>
>>
>> Thanks,
>>
>> Jenny
>>
>>
>>
>> From: Jon Aldama
>> Sent: den 27 juni 2014 09:28
>> To: David Nystr=C3=B6m; Jenny Andersson
>> Cc: Valentin Cobelea
>> Subject: FW: Carrier Grade layer proposal
>>
>>
>>
>> David, Jenny,
>>
>>
>>
>> Will any of you answer this?
>>
>>
>>
>> BTW, have you managed to file the Yocto compatibility application?
>>
>>
>>
>> Regards
>>
>> Jon
>>
>>
>>
>> From: Osier-mixon, Jeffrey [mailto:jeffrey.osier-mixon@intel.com]
>> Sent: den 26 juni 2014 20:36
>> To: David Nystr=C3=B6m; davide.ricci@windriver.com; challinan@gmail.com;
>> teodor.bobornilo@windriver.com; Valentin Cobelea; chase.maupin@ti.com;
>> Jon Aldama; philip.balister@gmail.com; kevin_mccombe@mentor.com;
>> akuster@mvista.com; jason.wessel@windriver.com;
>> richard.purdie@linuxfoundation.org; hui.geng@huawei.com;
>> john_cherry@mentor.com; jeffrey.osier-mixon@intel.com
>> Cc: Philip Balister
>> Subject: YP: Carrier Grade layer proposal
>>
>>
>>
>> Hi all - this is a simple followup to our meeting at ELC regarding a
>> meta-cgl layer, proposed by Enea.
>>
>>
>>
>> The plan was to create a list of recipes to be included, and to start
>> a discussion on the mailing list.There is a thread on the list from
>> back in April, but I don't see anything more recent than that. Has
>> there been any progress?
>>
>>
>>
>> thanks
>>
>>
>> --
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>>
>
>
>
> --
> Jeff Osier-Mixon @Intel
> Yocto Project Community Manager http://yoctoproject.org
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Joe MacDonald
:wq

