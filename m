Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36358E0070C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 13:46:48 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F2400F81225; Tue,  3 Apr 2012 14:46:46 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 56E75F811DE;
	Tue,  3 Apr 2012 14:46:42 -0600 (MDT)
Message-ID: <4F7B61B2.9050208@mlbassoc.com>
Date: Tue, 03 Apr 2012 14:46:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com>	<2917058.nSOBk0kvaU@helios>
	<CAMKF1sotGuDMJfb1xtxjVug6zL7Pr4MRwNpOVuEFMw-hdxQfRA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AEA5A6@ORSMSX101.amr.corp.intel.com>
	<CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF089A@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A46AF089A@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 03 Apr 2012 20:46:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-03 14:34, Liu, Song wrote:
> Hi Autif, thanks a lot for providing the answer here. Since no one is showing any objections here, I updated the wiki page with your answer (https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup). Please let me know if there is any suggestions or concerns.

This rather narrow answer is only useful if you are running a MatchBox desktop.
There are many other deployment scenarios which would require a different approach.

> -----Original Message-----
> From: Autif Khan [mailto:autif.mlist@gmail.com]
> Sent: Thursday, March 29, 2012 4:56 PM
> To: Liu, Song
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to change the startup application
>
>> I got a question about how to change the startup application with Yocto for images generated with Yocto.
>> And I googled it and landed on this page:
>> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup
>> _scripts. Pretty good, someone was thinking about the same thing. But
>> this page turns out to be empty. It seems that we need to get better than this.
>>
>> I'm wondering if someone could update this wiki page or if the information is somewhere else...
>
> I do not know of if the information is elsewhere - I had to find this information for my project
>
> Here is my stab at it (already updated the wiki):
>
> Q: How do I change and add startup scripts?
>
> A: Edit meta/recipes-sato/matchbox-sato/matchbox-session-sato/session.
> Of course, if you have your own meta-layer, append the matchbox-session-sato_0.1.bb recipe.
>
> Disable 'matchbox-desktop' and 'matchbox-panel', however, do not disable 'exec matchbox-window-manager ...'
>
> Don't forget to run your app as a background process
>
> For example, the following code will start the fifteen game:
>
> #matchbox-desktop&
>
> # Lines containing feature-[foo] are removed at build time if the machine # doesn't have the feature "foo".
>
> #START_APPLETS=showdesktop,windowselector
> #END_APPLETS=clock,battery,systray,startup-notify,notify
> #END_APPLETS=openmoko-panel-gsm,$END_APPLETS # feature-phone
>
> #matchbox-panel --titlebar --start-applets $START_APPLETS --end-applets $END_APPLETS&
>
> /usr/games/fifteen&
>
> exec matchbox-window-manager -theme Sato -use_desktop_mode decorated -use_cursor $SHOWCURSOR $@
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

