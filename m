Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6F45E0070C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 14:23:21 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so414239pbb.35
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2012 14:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=lEnIGl30YSt/hyzUx840bIqKEXfItT6eQtstPlaOxuw=;
	b=k86eMrco7d9DN947w0AAQgiqcxjySdloCzrlHURPUr1TUynBpQEbY85GXs+jJbgpfU
	ypqI6+E0lvf8SrbNVNPdw6UzcJ37mQysWf4CX1ZoNSgwsQwUSCwKrpUX258wW+jTYso+
	k3QKCLnpfAgoQXWEAYrKR5l6kZcRqSQNJB79ZAuJtnXnqEfXqyEMDtIAUwLnGbpyjMPb
	V4HMz/cK+ZpKuShec5Y5uyh8eNjLnzWQpSB/inps6jNtWZq2aYVgOePmaOOshn2kMVoa
	Pz42py3al8i7nuaXFod/kZohHJ33ykuiPr6KcQxCpGE7w1Aby8vHiCPzGT8slIe9CRkn
	2z8g==
MIME-Version: 1.0
Received: by 10.68.201.6 with SMTP id jw6mr32066287pbc.92.1333488201421; Tue,
	03 Apr 2012 14:23:21 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Tue, 3 Apr 2012 14:23:21 -0700 (PDT)
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A46AF089A@ORSMSX101.amr.corp.intel.com>
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com> <2917058.nSOBk0kvaU@helios>
	<CAMKF1sotGuDMJfb1xtxjVug6zL7Pr4MRwNpOVuEFMw-hdxQfRA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AEA5A6@ORSMSX101.amr.corp.intel.com>
	<CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF089A@ORSMSX101.amr.corp.intel.com>
Date: Tue, 3 Apr 2012 17:23:21 -0400
Message-ID: <CADzUK1JnSJQCh74GAyPAxFroWqKCHWFTTiGm3ko6-kAZFKAYgg@mail.gmail.com>
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
X-List-Received-Date: Tue, 03 Apr 2012 21:23:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Song,

I thought that I already updated the wiki. It seems like you created
an extra page. "_scripts" is missing from the link. It should be
there.

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
>> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup
>> _scripts. Pretty good, someone was thinking about the same thing. But
>> this page turns out to be empty. It seems that we need to get better tha=
n this.
>>
>> I'm wondering if someone could update this wiki page or if the informati=
on is somewhere else...
>
> I do not know of if the information is elsewhere - I had to find this inf=
ormation for my project
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
> #matchbox-panel --titlebar --start-applets $START_APPLETS --end-applets $=
END_APPLETS &
>
> /usr/games/fifteen &
>
> exec matchbox-window-manager -theme Sato -use_desktop_mode decorated -use=
_cursor $SHOWCURSOR $@

