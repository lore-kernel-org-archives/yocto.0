Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58BC5E0094C; Mon,  8 Jun 2015 09:36:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0518E00496;
	Mon,  8 Jun 2015 09:36:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 08 Jun 2015 09:14:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,574,1427785200"; d="scan'208";a="723187818"
Received: from ewishar1-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.30.184])
	by fmsmga001.fm.intel.com with ESMTP; 08 Jun 2015 09:14:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Chang, Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>
Date: Mon, 08 Jun 2015 17:14:40 +0100
Message-ID: <2174669.LymzPMzo3U@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <107F2908-2817-46D5-96CC-0B71CD6ADBEB@keylevel.com>
References: <107F2908-2817-46D5-96CC-0B71CD6ADBEB@keylevel.com>
MIME-Version: 1.0
Cc: meta-intel@yoctoproject.org, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-intel] "Crazy" Xorg memory usage after upgrading from Daisy to Fido
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
X-List-Received-Date: Mon, 08 Jun 2015 16:36:35 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Rebecca, is this something you or one of your colleagues would be able =
to help=20
with?

Thanks,
Paul

On Friday 05 June 2015 08:29:00 Chris Tapp wrote:
> I=E2=80=99ve got an application that I=E2=80=99ve had running nicely =
under Daisy for some
> time. As Daisy is now a bit old, I decided to move the application to=
 Fido.
> I=E2=80=99m using the meta-intel/isg/valleyisland BSP and also switch=
ed to using
> its Fido branch.
>=20
> The move only required a few minor changes and allowed me to drop a D=
aisy
> =E2=80=9Cupdates=E2=80=9D layer that I had been using for things like=
 gstreamer-1.0.
>=20
> However, there is one behaviour which is killing me - I keep getting
> oom-killer events!
>=20
> The application is basically an OpenGL-ES 2.0 application that render=
s
> various bits of text, images and streams captured from a gstreamer pi=
peline
> at 60 Hz to a 1080 screen.
>=20
> Under Daisy this generally took just under 50% CPU and used a modest
> percentage of the 4 GB system memory - i.e. no where near running out=
 and
> usage was just about static.
>=20
> Under Fido the CPU usage is about the same and the memory used by the=

> application itself looks reasonable when compared to Daisy (and usage=
 is
> static). However, the memory used by XOrg is far from constant or sta=
ble -
> it basically has a VSZ value cycling from about 630m to 2989m with th=
e
> cycle period being in the order of 5 to 10 seconds. Peaks in XOrg mem=
ory
> usage coincide with stutters in video playback within my app (audio i=
s
> unaffected).
>=20
> Monitoring /proc/meminfo when this is going on shows that =E2=80=9CSh=
mem=E2=80=9D usage is
> following the same pattern as the memory used by XOrg (i.e. Shmem usa=
ge is
> high at the same time). If the values are plotted on a graph they app=
ear to
> show that Shmem usage grows linearly and then falls rapidly when near=
ly all
> the free memory has been exhausted, perhaps in response to a delayed
> garbage collection run.
>=20
> Does anyone have any ideas as to what I should be looking at to work =
out
> what=E2=80=99s going on?
>=20
> Are there any significant changes between XOrg under Daisy and Fido t=
hat
> could be causing this?
>=20
> Could this be related to the meta-intel video drivers?
>=20
> Any feedback / comments would be really appreciated.
>=20
> Thanks :-)
>=20
> --
>=20
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>=20
> ----
> You can tell you're getting older when your car insurance gets real c=
heap!

--=20

Paul Eggleton
Intel Open Source Technology Centre

