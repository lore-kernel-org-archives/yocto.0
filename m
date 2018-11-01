Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BFFCE00BCC; Thu,  1 Nov 2018 03:12:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [195.197.172.111 listed in list.dnswl.org]
X-Greylist: delayed 343 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Nov 2018 03:12:32 PDT
Received: from gw03.mail.saunalahti.fi (gw03.mail.saunalahti.fi
	[195.197.172.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCF8EE00B9D
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 03:12:32 -0700 (PDT)
Received: from linux.suse (91-157-44-75.elisa-laajakaista.fi [91.157.44.75])
	by gw03.mail.saunalahti.fi (Postfix) with ESMTP id 1ED272001A;
	Thu,  1 Nov 2018 12:06:45 +0200 (EET)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <3c8fcce7-e642-a8f2-b599-a85f487038e1@teltonika.lt>
References: <3c8fcce7-e642-a8f2-b599-a85f487038e1@teltonika.lt>
Date: Thu, 01 Nov 2018 12:06:44 +0200
Message-ID: <87va5hf6x7.fsf@linux.suse>
MIME-Version: 1.0
Subject: Re: Removing hostapd init file
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
X-List-Received-Date: Thu, 01 Nov 2018 10:12:34 -0000
Content-Type: text/plain

On Tue, Oct 23, 2018 at 9:14 AM Kristupas Savickas kristupas.savickas-at-teltonika.lt wrote:
>
> Greetings,
>
> I'm trying to remove the hostapd init file as I'll handle startup of it on my own. I've created a .bbappend file in my layer to do this:
>
> do_install_append() {
>     rm -rf ${D}${sysconfdir}/init.d
> }
>
> However, this results in a compilation warning when building my image
> and the ipk-postinst is still being run on my target:
[...]
> I tried setting INITSCRIPT_NAME to "" in my .bbappend, but it fails
> with an error during do_rootfs task of my image:
[...]

I guess the problem is that the recipe inherits update-rc.d class and
that class wants to work with the init script. Unfortunately
uninheriting a class in a bbappend is not possible AFAIK. I am not
familiar with the details of the class whether there is a way to tell it
to do nothing.
 
> Any pointers of how I could accomplish my goal?
>

What about 

  do_install_append() {
      (echo "#!/bin/sh" ; echo true) > ${D}${sysconfdir}/init.d/hostapd    
  }


Just guessing. Untested and I have not worked with sysv init for
years... Maybe update-rc.d requires the typcial comment section at the
beginning. If so you just add it. 

Or actually if update-rc.d refers to the comment section in the
beginning of the script you could add a patch that changes the
Default-Start: value to empty (or some runlevel you do not use).

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)

