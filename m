Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0000E0084A; Mon, 26 Jun 2017 21:18:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F1F9E00524
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 21:18:22 -0700 (PDT)
X-Halon-ID: a60353ae-5aef-11e7-b24c-005056917a89
Authorized-sender: petter@technux.se
Received: from petterarch (unknown [78.78.81.189])
	by bin-vsp-out-01.atm.binero.net (Halon) with ESMTPA
	id a60353ae-5aef-11e7-b24c-005056917a89;
	Tue, 27 Jun 2017 06:18:19 +0200 (CEST)
Message-ID: <1498537093.5949.5.camel@technux.se>
From: Petter Mabacker <petter@technux.se>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 27 Jun 2017 06:18:13 +0200
In-Reply-To: <CAK18fxFB7oLwTQ93wYQXV6JZZ0OZ6jaNNfgKzSBeqdFc6qGfLQ@mail.gmail.com>
References: <CAK18fxFB+SXZeTSpmZvT5wsOLtvsPRqTnmfx21z=vRvFtQ9mZw@mail.gmail.com>
	<CAHUNapSrkQSNUA9hRmw+wH0rN3zNcxSdQmoP-=WG-pegFW9qnA@mail.gmail.com>
	<CAK18fxFB7oLwTQ93wYQXV6JZZ0OZ6jaNNfgKzSBeqdFc6qGfLQ@mail.gmail.com>
X-Mailer: Evolution 3.24.3 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Jenkins, reviews and mailing list
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
X-List-Received-Date: Tue, 27 Jun 2017 04:18:25 -0000
Content-Type: multipart/alternative; boundary="=-5C+QzSndO38VrJuk7J0z"

--=-5C+QzSndO38VrJuk7J0z
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2017-06-26 at 17:12 +0100, Andrei Gherzan wrote:
> On Mon, Jun 26, 2017 at 2:29 PM, Trevor Woerner <twoerner@gmail.com>
> wrote:
> > On Mon, Jun 26, 2017 at 9:21 AM, Andrei Gherzan <andrei@gherzan.ro>
> > wrote:
> > 
> > > We've been testing a setup with meta-raspberrypi which seems to
> > work fine:
> > 
> > > PR to github integrated with a jenkins server and use mailing
> > list for
> > 
> > > discussions.
> > 
> > >
> > 
> > > I propose to copy the same setup to meta-chip too.
> > 
> > 
> > 
> > That's all fine. As the maintainer (thank you!) you're welcome to
> > use
> > 
> > whatever workflow with which you're the happiest... as long as you
> > 
> > update the "Contributing" section of the README :-)
> > 
> 
> Sure. That makes sense.

Hi Andrei,
I fully agree with Trevor, just update the README and lets rock! :) But
like you say I also believe it's good if people can take the time to
also send the patches to mailing list, so we don't risk losing those
valuable discussions that often is initated through the mailing list
(since more people will track the changes that way). My opinion is that
this have work good for meta-raspberrypi, so cannot see any reasons why
it should work great for meta-chip as well.
Let us know when jenkins is up-and-running!
Cheers Petter
> --Andrei Gherzan
> 

--=-5C+QzSndO38VrJuk7J0z
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><div>On Mon, 2017-06-26 at 17:12 +0100, Andrei Gherzan wrote:</div><blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div dir="ltr"><div class="gmail_extra"><div class="gmail_quote">On Mon, Jun 26, 2017 at 2:29 PM, Trevor Woerner <span dir="ltr">&lt;<a href="mailto:twoerner@gmail.com" target="_blank">twoerner@gmail.com</a>&gt;</span> wrote:<br><blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><span class="gmail-">On Mon, Jun 26, 2017 at 9:21 AM, Andrei Gherzan &lt;<a href="mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; We've been testing a setup with meta-raspberrypi which seems to work fine:<br>
&gt; PR to github integrated with a jenkins server and use mailing list for<br>
&gt; discussions.<br>
&gt;<br>
</span><span class="gmail-">&gt; I propose to copy the same setup to meta-chip too.<br>
<br>
</span>That's all fine. As the maintainer (thank you!) you're welcome to use<br>
whatever workflow with which you're the happiest... as long as you<br>
update the "Contributing" section of the README :-)<br>
</blockquote></div><div><br></div><div>Sure. That makes sense.</div></div></div></blockquote><div><br></div><div>Hi Andrei,</div><div><br></div><div>I fully agree with Trevor, just update the README and lets rock! :) But like you say I also believe it's good if people can take the time to also send the patches to mailing list, so we don't risk losing those valuable discussions that often is initated through the mailing list (since more people will track the changes that way). My opinion is that this have work good for meta-raspberrypi, so cannot see any reasons why it should work great for meta-chip as well.</div><div><br></div><div>Let us know when jenkins is up-and-running!</div><div><br></div><div>Cheers Petter</div><div><br></div><blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div dir="ltr"><div class="gmail_extra"><div><br class="gmail-Apple-interchange-newline">--</div>Andrei Gherzan<br></div></div>
</blockquote></body></html>

--=-5C+QzSndO38VrJuk7J0z--
