Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 779DFE016A1
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 07:57:25 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id oz11so671378veb.24
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 07:57:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=F5/gD0DYvwGzTdGI70zToXouvh62RSurLt69tjO8eWU=;
	b=N8YeYU+s6wsAx/kpfE/Wr+kMeJefclAOSp34wWCYOJI0B7JQccrl/cYQE+S0QXbJnO
	pb8Q2rsb5hhqrHE1C2v7/rwhUvRnhdeH6vrw80NNg4BfOtwYvQuB/a1pdJbdMNclAfPP
	7ARDR5yxT/08dTt/XRqYZhpYcp0T8gNDu+eLn+4cgUdc6nX6q7Flm0X29XIN640DwGjh
	RIWfFlfZU8JAtSjwdUG7F7f/T55XbIRAznTB7SKfNZ4tVQT3oF2Oj8BkGEXZVDmLzBOg
	bW3Yfb5LXRHgFzuW7RaTX6nYfynaBbl9xopyrUJk818veJ3HATIvtdqPMl/y586ga8/b
	JVIA==
X-Gm-Message-State: ALoCoQlcU9d3HglCxDc4QvXk57thT0NqoCktMkGN6lWYdGOIt6Eb/0480GY+yjOvOMhZ20LKX3sx
MIME-Version: 1.0
X-Received: by 10.58.190.34 with SMTP id gn2mr45843vec.34.1381762645053; Mon,
	14 Oct 2013 07:57:25 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Mon, 14 Oct 2013 07:57:24 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B8DD45A1@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153B8DD45A1@pluto.melinkcorp.local>
Date: Mon, 14 Oct 2013 07:57:24 -0700
Message-ID: <CAPhnLPDG4_iit8TcjGKtOqepdqDmoS15NTjM18DT8gB8rBYDmg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto-autobuilder: Nightly build not building nightly
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
X-List-Received-Date: Mon, 14 Oct 2013 14:57:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bryan,

This is probably because you only have a ForceScheduler implemented
which is always on by default. Timed schedulers have to be added. Can
you post the rest of your nightly-foo?

You'll need a top level section within that conf that contains:

'name_of_scheduler':
                 {'type': 'Nightly'}

See: http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/README-NEW=
-AUTOBUILDER
for more info on scheduler props

-b

On Mon, Oct 14, 2013 at 6:46 AM, Bryan Evenson <bevenson@melinkcorp.com> wr=
ote:
> All,
>
> I have a local yocto-autobuilder setup (using yocto-autobuilder master) w=
hich I can do a build of my own setup.  I created my own nightly-foo.conf f=
ile and verified that a forced build of this builds without errors.  Howeve=
r, the nightly builds are not triggering and I'm wondering what I missed.
>
> I modified yoctoAB.conf to only include my buildset.  So my yoctoAB.conf =
now looks like this:
>
> [BuildSets]
> Order: ['nightly-foo']
>
> I set this up near the beginning of October and there has not been a nigh=
tly build triggered since my last forced build.  At first I thought it was =
because the layers I am using have not been updated, as I'm using the Dylan=
 branch for everything.  However, poky/dylan just received some updates a f=
ew days ago and my autobuilder has not yet triggered a new nightly build.
>
> Is there something I need to add to my nightly-foo.conf to get the nightl=
y build to trigger?  Or is there a different configuration file that I need=
 to modify?
>
> Thanks,
> Bryan Evenson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

