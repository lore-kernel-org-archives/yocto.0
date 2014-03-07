Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A22BE009F5
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 18:53:34 -0800 (PST)
Received: by mail-vc0-f179.google.com with SMTP id ij19so3113433vcb.38
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 18:53:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=IbjuX+5F6+ereesGQH2sqCQjCUJcMzBamqCkFfGc+L4=;
	b=BAwqbY9HxhH1cFp9n1UAwRhdUey+KYK+MMjGUgtKw1jClMYIMFYjGxjUrQ5gpEuE66
	Z8hknUeVcoJkwJZ6hmnHFlVIZit42/sHZqVoraRLNcLJhd6KvxY22MNBf/BLmSR0SUl9
	dE0CxJCo7hEUoNznv/6gME/oa3Yq0r3rVAEg4DQ24KKZU0ACzBq2X/UP1b2dY+bUCSy0
	ErG92BX+5ROEWOhdaT0fuKIjF4fmFFXQennbZRhtGZPwdGJuc+XYEKw520wAIwhzyATl
	cDd8pCcOJ2rdepnjR4GtN8FBrsSeA/2v9I+i2RZKm2iASi2YxuYBR01l29B+27HqkF9v
	Jevw==
X-Gm-Message-State: ALoCoQl5I0yqzEgGHIhzoXKOaALLCA2XgLYGCanmlI8FzqbKgJ/odwhnnIC6NJbHhfM3GpusuyI0
MIME-Version: 1.0
X-Received: by 10.58.77.204 with SMTP id u12mr263644vew.29.1394160813733; Thu,
	06 Mar 2014 18:53:33 -0800 (PST)
Received: by 10.52.76.201 with HTTP; Thu, 6 Mar 2014 18:53:33 -0800 (PST)
In-Reply-To: <9e3dd03777e746aa8f3bd01f69d9a873@BLUPR05MB037.namprd05.prod.outlook.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
	<3beb0e18e2659a8266e9fe1c705c8fe263aae387.1394042358.git.elizabeth.flanagan@intel.com>
	<9e3dd03777e746aa8f3bd01f69d9a873@BLUPR05MB037.namprd05.prod.outlook.com>
Date: Fri, 7 Mar 2014 02:53:33 +0000
Message-ID: <CAPhnLPAUkcM8RfJc97ymg-+5jcXj-We83CKUVxxCfd3M=Db20Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AB PATCH 06/27] Autobuilder.py/Buildset.py: More sane parser/UI
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
X-List-Received-Date: Fri, 07 Mar 2014 02:53:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 6, 2014 at 5:43 AM, Bryan Evenson <bevenson@melinkcorp.com> wro=
te:
> Beth,
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Elizabeth Flanagan
>> Sent: Wednesday, March 05, 2014 1:23 PM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] [AB PATCH 06/27] Autobuilder.py/Buildset.py: More sane
>> parser/UI
>>
>> From: Beth Flanagan <elizabeth.flanagan@intel.com>
>>
>> The parser for Autobuilder.py didn't dive very deep on triggered builds.=
 If it
>> found one, it just grabbed it's properties and then displayed them on th=
e UI.
>> This allowed us to mix and match repos/branches/commits.
>>
>
> I'm a little unclear what functionality is being removed.  After this com=
mit, are we still able to specify a different repo/branch/commit for each l=
ayer?

Hi Bryan,

Yes, this doesn't effect that ability. What I call "mix and match" is
what you'd see if you had a build that triggers other builds (like
nightly.conf in buildsets.master). Prior to this patch, you would be
able to set via the UI each individual repo/git hash/branch/tag that
each of the triggered builds used. So, for example, your nightly could
normally run master poky and trigger a build called nightly-next which
would default to master-next. What mix and match allowed you to do is
to override via the UI any of those repo source stamp attributes.

While that was an interesting thing, I wasn't really using it, it made
the UI clunky and tbh, the parser was garbage to begin with. I had no
ability to inherit the props of triggers of triggers, it was hard to
read, hard to grok, and really needed a rewrite. So, during that
rewrite, I ditched the "mix and match" bit, simplified the source
variables (no more triggerer_nightly_triggered_commit_foo variables ;)
) and tried to make it a bit easier to understand.

> Or was the previous functionality to mix and match repo/branch/commits wi=
thin a layer?  For example, would a buildset still be able to specify the r=
epos as follows:
>
> repos: [{'poky':
>             {'repourl':'git://git.yoctoproject.org/poky',
>              'branch':'dora'}},
>         {'meta-openembedded':
>             {'repourl':'git://git.openembedded.org/meta-openembedded',
>              'branch':'dora'}}]
>
> which have a different repository for each layer?  Or do something like:
> repos: [{'poky':
>             {'repourl':'git://git.yoctoproject.org/poky',
>              'branch':'dora'}},
>         {'meta-openembedded':
>             {'repourl':'git://git.openembedded.org/meta-openembedded',
>              'branch':'master'}}]
>
> to specify different branches for each layer?  Granted, probably not a go=
od idea for poky and meta-openembedded, but would be necessary for private =
layers that don't follow the same branch naming scheme.
>

Both are perfectly legitimate and these changes don't effect that
ability at all.

> And as you had stated this is a fairly large patchset with some interface=
 changes.  What are the plans (short-term and long-term) for the Autobuilde=
r documentation?

It's been on the list for a while, but, to be honest, it was only a
year ago that the autobuilder refactor occurred and I wanted to see
how we'd end up using it and what changes we'd need to make before we
set things in stone. As it stands, we've made very few and minor
changes over the past 6 months to the conf format, so I feel confident
that we won't make many more major changes. The one place I see
possibly making some changes is within TriggerBuilds (which we've
already changed once). I'm not thrilled with how we're setting builder
priority and I know there is a better way to do it (prioritizeBuilders
or something?), I just haven't sat down and drawn it out yet.

>Is the plan just to update the README files, or are there plans to move to=
ward an HTML document under http://www.yoctoproject.org/documentation?  Eit=
her way, the Autobuilder documentation is pretty sparse and as an Autobuild=
er user I'm willing to extend the documentation.  If there are specific sec=
tions you are looking to document first, let us know.

YES! I would love help documenting this, especially from an end user
perspective. I know how *I* use the AB but how others do is somewhat
of a black hole sometimes.

Generally, I think the most bang for the buck here is to documention:

- Quick start (how to get up and running and do basic config changes)
- buildset/*.conf documentation and config/autobuilder.conf documentation
- Buildstep class documentation
- Custom buildstep creation

With 1.6 fast approaching, I'd like to get this on the radar for 1.7.

>
> Thanks,
> Bryan

--=20
Elizabeth Flanagan
Yocto Project
Build and Release

