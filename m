Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89595E00596
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 13:34:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2012 13:34:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="128342937"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2012 13:34:26 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Apr 2012 13:34:25 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.160]) with mapi id
	14.01.0355.002; Tue, 3 Apr 2012 13:34:25 -0700
From: "Liu, Song" <song.liu@intel.com>
To: Autif Khan <autif.mlist@gmail.com>
Thread-Topic: [yocto] How to change the startup application
Thread-Index: AQHNDev4RHBJHNzPq0ShVMObs12UzZaCaH+AgActGzA=
Date: Tue, 3 Apr 2012 20:34:24 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A46AF089A@ORSMSX101.amr.corp.intel.com>
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com>	<2917058.nSOBk0kvaU@helios>
	<CAMKF1sotGuDMJfb1xtxjVug6zL7Pr4MRwNpOVuEFMw-hdxQfRA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AEA5A6@ORSMSX101.amr.corp.intel.com>
	<CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
In-Reply-To: <CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
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
X-List-Received-Date: Tue, 03 Apr 2012 20:34:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Autif, thanks a lot for providing the answer here. Since no one is showi=
ng any objections here, I updated the wiki page with your answer (https://w=
iki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup). Please let =
me know if there is any suggestions or concerns.

Song

-----Original Message-----
From: Autif Khan [mailto:autif.mlist@gmail.com]=20
Sent: Thursday, March 29, 2012 4:56 PM
To: Liu, Song
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to change the startup application

> I got a question about how to change the startup application with Yocto f=
or images generated with Yocto.
> And I googled it and landed on this page:
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup
> _scripts. Pretty good, someone was thinking about the same thing. But=20
> this page turns out to be empty. It seems that we need to get better than=
 this.
>
> I'm wondering if someone could update this wiki page or if the informatio=
n is somewhere else...

I do not know of if the information is elsewhere - I had to find this infor=
mation for my project

Here is my stab at it (already updated the wiki):

Q: How do I change and add startup scripts?

A: Edit meta/recipes-sato/matchbox-sato/matchbox-session-sato/session.
Of course, if you have your own meta-layer, append the matchbox-session-sat=
o_0.1.bb recipe.

Disable 'matchbox-desktop' and 'matchbox-panel', however, do not disable 'e=
xec matchbox-window-manager ...'

Don't forget to run your app as a background process

For example, the following code will start the fifteen game:

#matchbox-desktop &

# Lines containing feature-[foo] are removed at build time if the machine #=
 doesn't have the feature "foo".

#START_APPLETS=3Dshowdesktop,windowselector
#END_APPLETS=3Dclock,battery,systray,startup-notify,notify
#END_APPLETS=3Dopenmoko-panel-gsm,$END_APPLETS # feature-phone

#matchbox-panel --titlebar --start-applets $START_APPLETS --end-applets $EN=
D_APPLETS &

/usr/games/fifteen &

exec matchbox-window-manager -theme Sato -use_desktop_mode decorated -use_c=
ursor $SHOWCURSOR $@

