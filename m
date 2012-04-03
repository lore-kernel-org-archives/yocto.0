Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF8F6E0132F
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 14:58:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Apr 2012 14:58:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="126744165"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 03 Apr 2012 14:58:17 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Apr 2012 14:58:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.123]) with mapi id
	14.01.0355.002; Tue, 3 Apr 2012 14:58:16 -0700
From: "Liu, Song" <song.liu@intel.com>
To: Autif Khan <autif.mlist@gmail.com>
Thread-Topic: [yocto] How to change the startup application
Thread-Index: AQHNDev4RHBJHNzPq0ShVMObs12UzZaCaH+AgActGzCAAIPjgP//lAjg
Date: Tue, 3 Apr 2012 21:58:15 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A46AF0ACD@ORSMSX101.amr.corp.intel.com>
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com>	<2917058.nSOBk0kvaU@helios>
	<CAMKF1sotGuDMJfb1xtxjVug6zL7Pr4MRwNpOVuEFMw-hdxQfRA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AEA5A6@ORSMSX101.amr.corp.intel.com>
	<CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF089A@ORSMSX101.amr.corp.intel.com>
	<CADzUK1JnSJQCh74GAyPAxFroWqKCHWFTTiGm3ko6-kAZFKAYgg@mail.gmail.com>
In-Reply-To: <CADzUK1JnSJQCh74GAyPAxFroWqKCHWFTTiGm3ko6-kAZFKAYgg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to change the startup application
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
X-List-Received-Date: Tue, 03 Apr 2012 21:58:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, Autif. I guess I missed the last word for the link, but it's strang=
e that the page was there. Anyway, I deleted mine.

Song

-----Original Message-----
From: Autif Khan [mailto:autif.mlist@gmail.com]=20
Sent: Tuesday, April 03, 2012 2:23 PM
To: Liu, Song
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to change the startup application

Hi Song,

I thought that I already updated the wiki. It seems like you created an ext=
ra page. "_scripts" is missing from the link. It should be there.

Source:
https://wiki.yoctoproject.org/wiki/Category:FAQ

What I added days ago:
https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup_scri=
pts

What you added (which I think should be deleted):
https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup

Agree?

On Tue, Apr 3, 2012 at 4:34 PM, Liu, Song <song.liu@intel.com> wrote:
> Hi Autif, thanks a lot for providing the answer here. Since no one is sho=
wing any objections here, I updated the wiki page with your answer (https:/=
/wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup). Please le=
t me know if there is any suggestions or concerns.
>
> Song
>
> -----Original Message-----
> From: Autif Khan [mailto:autif.mlist@gmail.com]
> Sent: Thursday, March 29, 2012 4:56 PM
> To: Liu, Song
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to change the startup application
>
>> I got a question about how to change the startup application with Yocto =
for images generated with Yocto.
>> And I googled it and landed on this page:
>> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startu
>> p _scripts. Pretty good, someone was thinking about the same thing.=20
>> But this page turns out to be empty. It seems that we need to get=20
>> better than this.
>>
>> I'm wondering if someone could update this wiki page or if the informati=
on is somewhere else...
>
> I do not know of if the information is elsewhere - I had to find this=20
> information for my project
>
> Here is my stab at it (already updated the wiki):
>
> Q: How do I change and add startup scripts?
>
> A: Edit meta/recipes-sato/matchbox-sato/matchbox-session-sato/session.
> Of course, if you have your own meta-layer, append the matchbox-session-s=
ato_0.1.bb recipe.
>
> Disable 'matchbox-desktop' and 'matchbox-panel', however, do not disable =
'exec matchbox-window-manager ...'
>
> Don't forget to run your app as a background process
>
> For example, the following code will start the fifteen game:
>
> #matchbox-desktop &
>
> # Lines containing feature-[foo] are removed at build time if the machine=
 # doesn't have the feature "foo".
>
> #START_APPLETS=3Dshowdesktop,windowselector
> #END_APPLETS=3Dclock,battery,systray,startup-notify,notify
> #END_APPLETS=3Dopenmoko-panel-gsm,$END_APPLETS # feature-phone
>
> #matchbox-panel --titlebar --start-applets $START_APPLETS=20
> --end-applets $END_APPLETS &
>
> /usr/games/fifteen &
>
> exec matchbox-window-manager -theme Sato -use_desktop_mode decorated=20
> -use_cursor $SHOWCURSOR $@

