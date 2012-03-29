Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF403E013D6
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 16:56:03 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so1045305pbb.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 16:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xOOc/zfOuOadXO2Hp3+Wydd+ZhAtaIXNj/7ZApBO8Yc=;
	b=gmd62SgPToPc9Vgv06fMdMHZXO8OCaNik0oDKazKhMm7eXiHM+X98WZd1yJf8ClTZe
	/4JXP4JNna53OReqHD8WKslo4qN1JDMAb9j+3i7rimIX23QPtg8kCto7AngFtZly3nOM
	ODhP/cbmea0KTVjygQUx9/VbAcBskL53gbrSXrhXERtnhFyNmva1Xz9C1H+LP1ca7GdS
	MNDGga6mOpoXtGhOr8EA7yEssuaM8IZo8VrhIQIOle+N3b8CjnXqhpcrbeEXN/ctvZOH
	lOdp4eYE+oG0HFi6g8suEAUVPL/2pO78wfvKw2CVkkahqWKvDl2YIrojFIqn7YGxqtim
	D2IQ==
MIME-Version: 1.0
Received: by 10.68.132.41 with SMTP id or9mr4394263pbb.8.1333065363298; Thu,
	29 Mar 2012 16:56:03 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Thu, 29 Mar 2012 16:56:03 -0700 (PDT)
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A46AEA5A6@ORSMSX101.amr.corp.intel.com>
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com> <2917058.nSOBk0kvaU@helios>
	<CAMKF1sotGuDMJfb1xtxjVug6zL7Pr4MRwNpOVuEFMw-hdxQfRA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AEA5A6@ORSMSX101.amr.corp.intel.com>
Date: Thu, 29 Mar 2012 19:56:03 -0400
Message-ID: <CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: "Liu, Song" <song.liu@intel.com>
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
X-List-Received-Date: Thu, 29 Mar 2012 23:56:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

> I got a question about how to change the startup application with Yocto for images generated with Yocto.
> And I googled it and landed on this page:
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup_scripts. Pretty good, someone
> was thinking about the same thing. But this page turns out to be empty. It seems that we need to get
> better than this.
>
> I'm wondering if someone could update this wiki page or if the information is somewhere else...

I do not know of if the information is elsewhere - I had to find this
information for my project

Here is my stab at it (already updated the wiki):

Q: How do I change and add startup scripts?

A: Edit meta/recipes-sato/matchbox-sato/matchbox-session-sato/session.
Of course, if you have your own meta-layer, append the
matchbox-session-sato_0.1.bb recipe.

Disable 'matchbox-desktop' and 'matchbox-panel', however, do not
disable 'exec matchbox-window-manager ...'

Don't forget to run your app as a background process

For example, the following code will start the fifteen game:

#matchbox-desktop &

# Lines containing feature-[foo] are removed at build time if the machine
# doesn't have the feature "foo".

#START_APPLETS=showdesktop,windowselector
#END_APPLETS=clock,battery,systray,startup-notify,notify
#END_APPLETS=openmoko-panel-gsm,$END_APPLETS # feature-phone

#matchbox-panel --titlebar --start-applets $START_APPLETS
--end-applets $END_APPLETS &

/usr/games/fifteen &

exec matchbox-window-manager -theme Sato -use_desktop_mode decorated
-use_cursor $SHOWCURSOR $@

