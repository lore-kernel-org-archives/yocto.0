Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADBCBE00C94; Sat, 12 Aug 2017 23:42:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Sat, 12 Aug 2017 23:42:29 PDT
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38486E00C93
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 23:42:29 -0700 (PDT)
X-Halon-ID: 68ce2888-7ff2-11e7-8607-0050569116f7
Authorized-sender: petter@technux.se
Received: from petterarch (unknown [85.195.55.167])
	by bin-vsp-out-03.atm.binero.net (Halon) with ESMTPA
	id 68ce2888-7ff2-11e7-8607-0050569116f7;
	Sun, 13 Aug 2017 08:41:21 +0200 (CEST)
Message-ID: <1502606525.7630.13.camel@technux.se>
From: Petter Mabacker <petter@technux.se>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Sun, 13 Aug 2017 08:42:05 +0200
In-Reply-To: <CAHiDW_E0POkBdC2Ss9jeUNFrN=LFP0ygcqCkf0vvkaL7muDHgg@mail.gmail.com>
References: <CAGsrAHdDiWSc3U9TFZOEJUaYo8iwuR3KMOv1n3cUsAp-Zv-OoQ@mail.gmail.com>
	<CAHiDW_FD0gJLh34H+qEZA5aSH8Q1-5uhVUtykRVd0dFtUOAReQ@mail.gmail.com>
	<CAGsrAHd6UirSR5A0pzG+wpYWvHSmzPbi13LwzFHRwz-Tkism1w@mail.gmail.com>
	<CAHiDW_E0POkBdC2Ss9jeUNFrN=LFP0ygcqCkf0vvkaL7muDHgg@mail.gmail.com>
X-Mailer: Evolution 3.24.5 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Errors while tring rpi-test-image for rpi3
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
X-List-Received-Date: Sun, 13 Aug 2017 06:42:30 -0000
Content-Type: multipart/alternative; boundary="=-L06RTEVghCYoefVj0dS8"

--=-L06RTEVghCYoefVj0dS8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2017-08-12 at 15:10 +0300, Jussi Kukkonen wrote:
> > ERROR: Nothing PROVIDES 'libav' (but
> > /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-
> multimedia/omxplayer/omxplayer_git.bb
> > DEPENDS on or otherwise requires it)
> > ERROR: ffmpeg PROVIDES libav but was skipped: because it has a
> > restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
> 
> Searching the Yocto reference manual for this term will lead to http:
> //www.yoctoproject.org/docs/current/ref-manual/ref-
> manual.html#enabling-commercially-licensed-recipes which should have
> the details you need to resolve the issue. 
> 
> Jussi

Hi,
This info is actually also present in the meta-raspberrypi
documentation, in 'docs/extra-apps.md':
$ cat docs/extra-apps.md# Extra apps
## omxplayer
omxplayer depends on libav which has a commercial license. So in order
to beable to compile omxplayer you will need to whiteflag the
commerciallicense in your local.conf:
    LICENSE_FLAGS_WHITELIST = "commercial"


To make full use of the documentation I recommend that you are
generating the documentation within docs/ in for example html format
and make use of the searching functionality in there.

BR Petter

--=-L06RTEVghCYoefVj0dS8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html><head></head><body><div>On Sat, 2017-08-12 at 15:10 +0300, Jussi Kukkonen wrote:</div><blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div dir="ltr">&gt; ERROR: Nothing PROVIDES 'libav' (but<br>&gt; /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/<a href="http://omxplayer_git.bb">omxplayer_git.bb</a><br>&gt; DEPENDS on or otherwise requires it)<br>&gt; ERROR: ffmpeg PROVIDES libav but was skipped: because it has a<br>&gt; restricted license not whitelisted in LICENSE_FLAGS_WHITELIST<br><div><br></div><div>Searching the Yocto reference manual for this term will lead to <a href="http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#enabling-commercially-licensed-recipes">http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#enabling-commercially-licensed-recipes</a> which should have the details you need to resolve the issue.&nbsp;</div><div><br></div><div>Jussi</div></div>
</blockquote><div><br></div><div>Hi,</div><div><br></div><div>This info is actually also present in the meta-raspberrypi documentation, in 'docs/extra-apps.md':</div><div><br></div><div>$ cat docs/extra-apps.md</div><div># Extra apps</div><div><br></div><div>## omxplayer</div><div><br></div><div>omxplayer depends on libav which has a commercial license. So in order to be</div><div>able to compile omxplayer you will need to whiteflag the commercial</div><div>license in your local.conf:</div><div><br></div><div>&nbsp;&nbsp;&nbsp;&nbsp;LICENSE_FLAGS_WHITELIST = "commercial"</div><div><br></div><div><br></div><div><br></div><div>To make full use of the documentation I recommend that you are generating the documentation within docs/ in for example html format and make use of the searching functionality in there.</div><div><br></div><div><br></div><div>BR Petter</div><div></div></body></html>

--=-L06RTEVghCYoefVj0dS8--
