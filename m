Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47607E011C5
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 08:43:58 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 14 Oct 2013 11:43:50 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Mon, 14 Oct 2013 11:43:49 -0400
Thread-Topic: [yocto] yocto-autobuilder: Nightly build not building nightly
Thread-Index: Ac7I7bOCDJSXBO3EQBq9BX6XO9uGWwABPPKA
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B8DD467D@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153B8DD45A1@pluto.melinkcorp.local>
	<CAPhnLPDG4_iit8TcjGKtOqepdqDmoS15NTjM18DT8gB8rBYDmg@mail.gmail.com>
In-Reply-To: <CAPhnLPDG4_iit8TcjGKtOqepdqDmoS15NTjM18DT8gB8rBYDmg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 14 Oct 2013 15:43:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Elizabeth,

> -----Original Message-----
> From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
> Sent: Monday, October 14, 2013 10:57 AM
> To: Bryan Evenson
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] yocto-autobuilder: Nightly build not building
> nightly
>=20
> Bryan,
>=20
> This is probably because you only have a ForceScheduler implemented
> which is always on by default. Timed schedulers have to be added. Can
> you post the rest of your nightly-foo?
>=20
> You'll need a top level section within that conf that contains:
>=20
> 'name_of_scheduler':
>                  {'type': 'Nightly'}
>=20
> See: http://git.yoctoproject.org/cgit.cgi/yocto-
> autobuilder/tree/README-NEW-AUTOBUILDER
> for more info on scheduler props

I added the following to my buildset configuration:

scheduler: [{'nightly-scheduler' :
                {'type':'Nightly',
                 'hour':'2',
                 'minute':'0',}}]

And I restarted the autobuilder ("./yocto-stop-autobuilder both" and
  "./yocto-start-autobuilder both" from the command line).  Now when
I go to the waterfall display for my autobuilder it shows the current
for my buildset as "waiting next in ~14 hrs 27 min at 2:00".  I'll
see if the build triggers okay tomorrow, but it looks hopeful.  If
I get impatient I may change the build time to later today.

I'll also note that the hour and minute parameter were required for
the scheduler to work.  If I didn't set these values, the autobuilder
failed to start.  I'll post a patch to update the documentation to note
that these values are required.

And for completeness, here is my nightly build config as it stands
right now:

[nightly-foo]
builders: 'builder1'
repos: [{'poky':=20
            {'repourl':'git://git.yoctoproject.org/poky',=20
	         'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},=20
             'branch':'dylan'}},=20
        {'meta-atmel':=20
            {'repourl':'git://github.com/evensonbryan/meta-atmel',=20
             'branch':'master'}},
        {'meta-openembedded':=20
            {'repourl':'git://git.openembedded.org/meta-openembedded',=20
             'branch':'dylan'}}]=20
steps: [{'SetDest':{}},=20
        {'CheckOutLayers': {}},=20
        {'RunPreamble': {}},=20
        {'GetDistroVersion' : {'distro': 'poky'}},
        {'CreateAutoConf': {'machine': 'at91sam9x5ek', 'SDKMACHINE' : 'i686=
', 'distro': 'poky', 'buildhistory': True}},
        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs':
            ['meta-atmel', 'meta-openembedded/meta-oe', 'meta-openembedded/=
meta-networking']}},
        {'BuildImages': {'images': 'core-image-minimal'}},
        {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
        {'PublishLayerTarballs':{}},
        {'PublishArtifacts': {'artifacts': ['at91sam9x5ek', 'ipk']}}]
scheduler: [{'nightly-scheduler' :
                {'type':'Nightly',
                 'hour':'2',
                 'minute':'0',}}]

Thanks,
Bryan Evenson

>=20
> -b
>=20
> On Mon, Oct 14, 2013 at 6:46 AM, Bryan Evenson
> <bevenson@melinkcorp.com> wrote:
> > All,
> >
> > I have a local yocto-autobuilder setup (using yocto-autobuilder
> master) which I can do a build of my own setup.  I created my own
> nightly-foo.conf file and verified that a forced build of this builds
> without errors.  However, the nightly builds are not triggering and I'm
> wondering what I missed.
> >
> > I modified yoctoAB.conf to only include my buildset.  So my
> yoctoAB.conf now looks like this:
> >
> > [BuildSets]
> > Order: ['nightly-foo']
> >
> > I set this up near the beginning of October and there has not been a
> nightly build triggered since my last forced build.  At first I thought
> it was because the layers I am using have not been updated, as I'm
> using the Dylan branch for everything.  However, poky/dylan just
> received some updates a few days ago and my autobuilder has not yet
> triggered a new nightly build.
> >
> > Is there something I need to add to my nightly-foo.conf to get the
> nightly build to trigger?  Or is there a different configuration file
> that I need to modify?
> >
> > Thanks,
> > Bryan Evenson
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release

