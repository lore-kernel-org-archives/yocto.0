Return-Path: <gizero@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DE8BE012F0
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 08:42:52 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id dt10so1159583wgb.11
	for <yocto@yoctoproject.org>; Fri, 05 Oct 2012 08:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=/mnUNptLENJ7XvwZyP6W6dH83yBZPcKvpbyK018Gvuw=;
	b=TtIHY9H/aO9OAj5RkTyvJDmWA+5WxPt2ZEUzPjYwasKRQz3bItSBD5Thk6vUPl7CaH
	pAQkQOi/S0XZjwl/xMR0UBhWKrr2sWfqX83Nsdj7oMcgE/d3h5nauCzizTFrbkpBCvsg
	pBLplTP2O0yEexnURVRHLy/wEsMWTDG4wGHUQdncvVa+tuYjnTdChgBBEvIhFSojGZaE
	SV1gOnFGHzOD5Cub/xFsNeXzinATazQ+Y5sG02KWj5airLE8xcMPLdRa7fkPZgB2+9hI
	Dm2T7MfKGOfTSr1DzAIABpb/gD3hygiwspBGCvHgk/uSA/2ipABiBCjO5QFz9JFu8Bjy
	8D6A==
MIME-Version: 1.0
Received: by 10.180.87.34 with SMTP id u2mr4222453wiz.4.1349451771008; Fri, 05
	Oct 2012 08:42:51 -0700 (PDT)
Received: by 10.223.158.74 with HTTP; Fri, 5 Oct 2012 08:42:50 -0700 (PDT)
Date: Fri, 5 Oct 2012 17:42:50 +0200
Message-ID: <CAC+thW1SSxgO4e5=my01WKcVb77q1BbDzjAQh16=aq28We46fw@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Project 1.3 beta feedback
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Oct 2012 15:42:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

Below you can find my answers to the Yocto Project 1.3 beta testing survey.

Regards,
Andrea


Experience survey of using Yocto 1.3

Q: Which architecture did you choose to build?

A: qemuppc, beagleboard

Q: How easily were you able to build an image and boot an image?

A: Quite easily. I also took some time for reviewing the QS guide
which looks adequate to me either for newbies or users coming from
different build systems.

Q: Is there any surprise to you in the process of doing this Beta
testing? If so, would you please describe
it and tell us how you expected it to work?

A: Not really a surprise (already knew about that), but a very
pleasant experience was knotty2. It results cleaner than its
"forever-scrolling" parent.

Q: How do you like our HOB interface? Please provide us with your
thoughts and suggestions on HOB
interface and functionality.

A: I like the hob design. It actually does not support yet a few
workflows that I consider much important for my work: i.e. adding new
recipes, supporting kernel development (mainly configuration,
patching). I understand not every user does require them and hence I
don't consider myself as the actual hob's average target user. Anyway
I appreciate the project is working on more intuitive tools like HOB
and I look forward to see if similar effort will also bring us webhob
experience in the future. People doing mainly package integration
would benefit the best from HOB, since they need not to dig into the
build system's details.

Q: Was it easy to find the support you needed to build and boot an image?

A: Procedures for the official emulated target are well documented and
clear enough for the task required by this beta testing. Support for
deploying and booting on reference real-hardware target is a little
bit lacking but a lot of resources and documentation are already
available online and I agree on not duplicating reference material.

Q: Which Bugzilla reports did you submit?

A: None till now. Still investigating on some oddities and discussing
with the team on IRC. Also hit bug #3135, which is already fixed in
master now.

Q: Did you try anything else with Yocto 1.3?

A: Building an SDK and investigating procedures to deploy toolchains,
SDKs and ADTs is one of my primary goals. I built toolchains for the
arm architecture and tested the environment to build a simple C
source. Relocatable SDK is a good improvement in term of flexibility
when deploying for application developers. The beta snapshot does
bring bug #3135, but it's already fixed in master.

Q: What would you like to have in Yocto Project for future releases?

A: Documentation as a whole IMHO should and must improve a bit to make
it more useful for reference. At the design level, I see the team is
working very well, by keeping the documentation in a single place:
this grants us consistency and its really a good point. I still see
some confusion between online documentation, documentation source you
can build from master and the "latest" online documentation which is
often referenced on the mailing list. However I know that keeping all
the docs up-to-date and consistent is not an easy job.
Needs with respect to documentation do largely depend on the user's
perspective. For instance, if your goal is writing new recipes for
your own layers, you'll ask for a good variables reference and, maybe,
a reasonable checklist with best conventions for keeping metadata
consistent. This is also required if you want to contribute back with
high degree of confidence that your patches will be considered and
reviewed. If, on the other hand, your are more involved in kernel
configuration and customization, your hope is to keep your work as
much as possible integrated with the build system: this will grant you
a closer develop-deploy-test flow by using the same tools will be used
for production. Such a workflow does have documentation but I
personally believe this is a point we can improve a lot.
Yocto Project users do belong to a very heterogeneous base: I see a
great challenge in keeping docs usable by differently focused people!

