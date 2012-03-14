Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EAD8E004D2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 19:40:08 -0700 (PDT)
Received: by werc1 with SMTP id c1so1632284wer.35
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 19:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=FHY9/HLl7/2xPLMS0AkLE6YnaHAiCVOGQdMBb8ezyrU=;
	b=iYTPN+Nu8zInEa4w0FojYzVBaynUdVgmCw0/Lg5khkRrySbXH+hv/6QTQxQGrBmieh
	3kiBHupUSIVuHxvVDHn/8ymAqvS3rsVYYM5/iC+O+Aibn7QA9tfidLxU0iV4XKdgu+mu
	X7PGQ2uvWcScBrNrP36n0WnvAN2eU3dZsQhYRgSL3Db7/2IcsnfVvH+K4IL+8tnS4p+6
	2lZk5OkYEyLt0KSwwgyUfBtOZksTR8gcPEiejEDMZTX5BXWvpF4TmVkqKzLDAzwNqwUI
	DGmifBgh1csk0qFNigqWOzk9fobzesBKMbYnB60e/68dBLcNB4lbSjWJRZNaMvORJP5W
	2AJw==
MIME-Version: 1.0
Received: by 10.180.104.230 with SMTP id gh6mr1907153wib.22.1331692807314;
	Tue, 13 Mar 2012 19:40:07 -0700 (PDT)
Received: by 10.216.28.196 with HTTP; Tue, 13 Mar 2012 19:40:07 -0700 (PDT)
In-Reply-To: <1331667871.21321.12.camel@elmorro>
References: <cover.1331610171.git.tom.zanussi@intel.com>
	<86eeec9f1963b57809b988e148ddf43562e2f0bc.1331610171.git.tom.zanussi@intel.com>
	<4F5FA04C.7080901@linux.intel.com>
	<1331667871.21321.12.camel@elmorro>
Date: Tue, 13 Mar 2012 22:40:07 -0400
Message-ID: <CADkTA4N=oU9qB83gfGhDFghp8wLD69_x9Edyz1w_hFke9wAs=Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 1/2] meta-crownbay: switch to linux-yocto-3.2 kernel
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
X-List-Received-Date: Wed, 14 Mar 2012 02:40:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 13, 2012 at 3:44 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Tue, 2012-03-13 at 12:30 -0700, Darren Hart wrote:
>> Hi Tom,
>>
>> Some thoughts on this with respect to cleaning up and simplifying the
>> recipes per our earlier discussions.
>>
>> On 03/12/2012 09:37 PM, tom.zanussi@intel.com wrote:
>> > From: Tom Zanussi <tom.zanussi@intel.com>
>> >
>> > Switch crownbay and crownbay-noemgd to the 3.2 kernel.
>> >
>> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
>> > ---
>> > =A0meta-crownbay/conf/machine/crownbay-noemgd.conf =A0 =A0| =A0 =A02 +=
+
>> > =A0meta-crownbay/conf/machine/crownbay.conf =A0 =A0 =A0 =A0 =A0 | =A0 =
=A02 ++
>> > =A0.../linux/linux-yocto-rt_3.2.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 20 ++++++++++++++++++++
>> > =A0.../recipes-kernel/linux/linux-yocto_3.2.bbappend =A0| =A0 17 +++++=
++++++++++++
>> > =A04 files changed, 41 insertions(+), 0 deletions(-)
>> > =A0create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-r=
t_3.2.bbappend
>> > =A0create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3=
.2.bbappend
>> >
>> > diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-cr=
ownbay/conf/machine/crownbay-noemgd.conf
>> > index 2c80bd8..af85b00 100644
>> > --- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
>> > +++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
>> > @@ -4,6 +4,8 @@
>> > =A0#@DESCRIPTION: Machine configuration for Crown Bay systems, without=
 Intel-proprietary graphics bits
>> > =A0# i.e. E660 + EG20T
>> >
>> > +PREFERRED_VERSION_linux-yocto ?=3D "3.2%"
>> > +
>> > =A0require conf/machine/include/tune-atom.inc
>> > =A0require conf/machine/include/ia32-base.inc
>> >
>> > diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/=
conf/machine/crownbay.conf
>> > index 2c1ef3d..1458bff 100644
>> > --- a/meta-crownbay/conf/machine/crownbay.conf
>> > +++ b/meta-crownbay/conf/machine/crownbay.conf
>> > @@ -4,6 +4,8 @@
>> > =A0#@DESCRIPTION: Machine configuration for Crown Bay systems
>> > =A0# i.e. E660 + EG20T
>> >
>> > +PREFERRED_VERSION_linux-yocto ?=3D "3.2%"
>> > +
>> > =A0require conf/machine/include/tune-atom.inc
>> > =A0require conf/machine/include/ia32-base.inc
>> >
>> > diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bba=
ppend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>> > new file mode 100644
>> > index 0000000..dee9bce
>> > --- /dev/null
>> > +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>> > @@ -0,0 +1,20 @@
>> > +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>> > +
>> > +COMPATIBLE_MACHINE_crownbay-noemgd =3D "crownbay-noemgd"
>> > +KMACHINE_crownbay-noemgd =3D "crownbay"
>> > +
>> > +KERNEL_FEATURES_append_crownbay-noemgd +=3D " cfg/smp.scc"
>>
>> I think we start putting cfg/smp.scc in the BSP scc file directly rather
>> than in the recipe itself. This can be a follow-on patch, or just with
>> the next kernel release even. But I wanted to point it out.
>>
>
> Yeah, I saw that and agree - I just don't want to spend the time to do
> all that now. =A0I basically have this week to get them all moved over
> into a basically functional state and will submit patches to do this and
> the below as follow-ons once the basics are out of the way.
>
>> > +
>> > +COMPATIBLE_MACHINE_crownbay =3D "crownbay"
>> > +KMACHINE_crownbay =3D "crownbay"
>> > +
>> > +KERNEL_FEATURES_append_crownbay +=3D " cfg/smp.scc"
>> > +
>> > +# Update the following to use a different BSP branch or meta SRCREV
>> > +#KBRANCH_crownbay-noemgd =3D "yocto/standard/preempt-rt/base"
>> > +#SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?=3D XXXX
>> > +#SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?=3D XXXX
>> > +
>> > +#KBRANCH_crownbay =3D "yocto/standard/preempt-rt/base"
>> > +#SRCREV_machine_pn-linux-yocto-rt_crownbay ?=3D XXXX
>> > +#SRCREV_meta_pn-linux-yocto-rt_crownbay ?=3D XXXX
>> > diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappe=
nd b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>> > new file mode 100644
>> > index 0000000..3b02076
>> > --- /dev/null
>> > +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>> > @@ -0,0 +1,17 @@
>> > +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>> > +
>> > +COMPATIBLE_MACHINE_crownbay =3D "crownbay"
>> > +KMACHINE_crownbay =A0=3D "crownbay"
>> > +KBRANCH_crownbay =A0=3D "standard/default/crownbay"
>>
>> I believe crownbay no longer requires special patches right? Can we just
>> use the standard/default/base branch here and squash the crownbay branch=
?
>>
>
> At the moment it doesn't, and I'll probably submit a patch to do that
> for everything that it make sense for again after things are functional
> with the simple changes first.

There's one catch with this. We currently have the graphics drivers staged =
as
topic branches so they can be in tree, and be kept pristine. The BSPs merge
the graphics topic branch they want, and we can leverage common commits
across all the users.

If you drop the BSP branch, then the graphics changes need to be universall=
y
safe for all similar BSPs, since that merge will now be to a shared branch.
That's normally fine, but for the case where we have multiple emgd versions=
,
it can break things.

We have complete flexibility to how we stage the branches, and how we
generate the content that is built, so this can change .. but that's
how we currently
have it setup. Those graphics merges are board specific changes and require
a branch.


>
>> > +KERNEL_FEATURES_append_crownbay +=3D " cfg/smp.scc"
>> > +
>> > +COMPATIBLE_MACHINE_crownbay-noemgd =3D "crownbay-noemgd"
>> > +KMACHINE_crownbay-noemgd =A0=3D "crownbay"
>> > +KBRANCH_crownbay-noemgd =A0=3D "standard/default/crownbay"
>> > +KERNEL_FEATURES_append_crownbay-noemgd +=3D " cfg/smp.scc"
>> > +
>> > +SRCREV_machine_pn-linux-yocto_crownbay ?=3D "4471c11c7755727219b673cb=
887d8a13b8715aba"
>> > +SRCREV_meta_pn-linux-yocto_crownbay ?=3D "64840f55ee144e9814278eaa8e3=
f33dd60da892c"
>> > +
>> > +SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=3D "4471c11c775572721=
9b673cb887d8a13b8715aba"
>> > +SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=3D "64840f55ee144e981427=
8eaa8e3f33dd60da892c"
>>
>> The meta SRCREV shouldn't be unique from the base linux-yocto_3.2.bb
>> recipe, so this can be dropped and save the effort of updating it later.
>>
>
> I don't really want to let the meta SRCREV float - I've run into a
> couple nasty problems in the past letting that happen. i.e. nobody does
> runtime testing of the BSPs when they change the meta SRCREV in the base
> recipe.

runtime testing is the hard part. I can build them .. but can't boot them a=
ll!

Cheers,

Bruce

>
>> If we use the standard/default/base branch, the machine SRCREV can also
>> be dropped.
>>
>
> Agreed, if the machine branch changes to standard/default/base, I'll
> change that too.
>
> Tom
>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

