Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B22CCE0027E
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 11:59:09 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1TGDs2-0001xh-7q; Mon, 24 Sep 2012 19:59:06 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAB3sqtbAiXcExJVa4B=O=vyLMAYEDSFWQa+BwGAGessmd2PFqA@mail.gmail.com>
Date: Mon, 24 Sep 2012 19:59:03 +0100
Message-Id: <4A72DEA8-1EB1-4DE5-B3B7-9DF9CAE626FF@keylevel.com>
References: <CAB3sqtaLL81HnFqnE5FKy0j7o8cpNUj6S7qVk6JO3EHTKBPDvg@mail.gmail.com>
	<9E8C582C-5DC7-4239-B2ED-9F3282861D38@keylevel.com>
	<CAB3sqtbAiXcExJVa4B=O=vyLMAYEDSFWQa+BwGAGessmd2PFqA@mail.gmail.com>
To: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: what are libraries required to use SDL
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
X-List-Received-Date: Mon, 24 Sep 2012 18:59:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2451B7A0-FF24-46E0-9EE0-868EF553461B"

--Apple-Mail=_2451B7A0-FF24-46E0-9EE0-868EF553461B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

On 24 Sep 2012, at 10:16, Tarek El-Sherbiny wrote:

> I'm using the MM soc i.MX6 from freescale. My application doesn't =
require a full fledged desktop GUI so I'm basing my work on minimal =
image. The application needs to play video "Possibly full screen" using =
gstreamer and just draw some buttons over the video for control using =
SDL.

I've no experience with that platform, but...

> I have included libsdl - libsdl-image - libx11 and this is what was =
installed:
> root@imx6qsabrelite:~# rpm -qa |grep sdl
> libsdl-1.2-0-1.2.15-r0.armv7a
> libsdl-image-1.2-0-1.2.10-r3.armv7a
>=20
> root@imx6qsabrelite:~# rpm -qa |grep libx
> libxau6-1.0.7-r0.armv7a
> libxdmcp6-1.1.1-r0.armv7a
> libxml2-2.7.8-r7.armv7a
> libxcb1-1.8.1-r0.armv7a
> libx11-6-1.4.4-r3.armv7a
> libxext6-1.3.1-r0.armv7a
> libx11-xcb1-1.4.4-r3.armv7a
> libxfixes3-5.0-r0.armv7a
> libxrender1-0.9.7-r0.armv7a
> libxi6-1.4.5-r0.armv7a
> libxxf86vm1-1.1.2-r0.armv7a
> libxdamage1-1.1.3-r1.armv7a
> libxtst6-1.2.1-r0.armv7a
>=20
> I still get the same error message so I'm not sure what else I need to =
do to tell SDL to use HDMI video output?

Do you also need to have an X server to use Xlib?

>=20
> If it easer to use DirectFB rather than libx11 I can do that. Is it =
only directfb that I need to include? Is there any configuration =
parameters that I need to enable?

If you don't need a full GUI then DirectFB will certainly do the job. =
All I did to get this going was:

1) Add libsdl as a dependency;
2) Add the following to local.conf to pull in DirectFB and build libsdl =
to use it:
     DISTRO_FEATURES +=3D " directfb"

> Thanks in advance.=20
>=20
> On Sun, Sep 23, 2012 at 9:09 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
> On 23 Sep 2012, at 20:07, Tarek El-Sherbiny wrote:
>=20
> > Hi,
> >
> > I'm porting a program which uses SDL to openembedded Yocto-project. =
I have included libsdl to my image but SDL is failling to initialize =
SDL_Init(SDL_INIT_VIDEO) gives:
> >  No available video device
> >
> > What are the packages that I need to install to get SDL video =
device?
>=20
> What graphics do you have available? I've got it working ok using =
DirectFB and X11 should be ok as well.
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_2451B7A0-FF24-46E0-9EE0-868EF553461B
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><div>On 24 Sep 2012, at 10:16, Tarek El-Sherbiny wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite">I'm using the MM soc i.MX6 from freescale. My application doesn't require a full fledged desktop GUI so I'm basing my work on&nbsp;minimal&nbsp;image. The application needs to play video "Possibly full screen" using gstreamer and just draw some buttons over the video for control using SDL.</blockquote><div><br></div><div>I've no experience with that platform, but...</div><div><br></div><blockquote type="cite"><div>I have included libsdl -&nbsp;libsdl-image -&nbsp;libx11 and this is what was installed:</div><div><div>root@imx6qsabrelite:~# rpm -qa |grep sdl</div><div>libsdl-1.2-0-1.2.15-r0.armv7a</div><div>libsdl-image-1.2-0-1.2.10-r3.armv7a</div>
</div><div><br></div><div><div>root@imx6qsabrelite:~# rpm -qa |grep libx</div><div>libxau6-1.0.7-r0.armv7a</div><div>libxdmcp6-1.1.1-r0.armv7a</div><div>libxml2-2.7.8-r7.armv7a</div><div>libxcb1-1.8.1-r0.armv7a</div><div>
libx11-6-1.4.4-r3.armv7a</div><div>libxext6-1.3.1-r0.armv7a</div><div>libx11-xcb1-1.4.4-r3.armv7a</div><div>libxfixes3-5.0-r0.armv7a</div><div>libxrender1-0.9.7-r0.armv7a</div><div>libxi6-1.4.5-r0.armv7a</div><div>libxxf86vm1-1.1.2-r0.armv7a</div>
<div>libxdamage1-1.1.3-r1.armv7a</div><div>libxtst6-1.2.1-r0.armv7a</div></div><div><br></div><div>I still get the same error message so I'm not sure what else I need to do to tell SDL to use HDMI video output?</div></blockquote><div><br></div><div>Do you also need to have an X server to use Xlib?</div><br><blockquote type="cite"><div>
<br></div><div>If it easer to use DirectFB rather than libx11 I can do that. Is it only&nbsp;directfb that I need to include? Is there any configuration parameters that I need to enable?</div></blockquote><div><br></div><div>If you don't need a full GUI then DirectFB will certainly do the job. All I did to get this going was:</div><div><br></div><div>1) Add libsdl as a dependency;</div><div>2) Add the following to local.conf to pull in DirectFB and build libsdl to use it:</div><div>&nbsp; &nbsp; &nbsp;DISTRO_FEATURES += " directfb"</div><br><blockquote type="cite"><div>Thanks&nbsp;in advance.&nbsp;</div>
<div><br><div class="gmail_quote">On Sun, Sep 23, 2012 at 9:09 PM, Chris Tapp <span dir="ltr">&lt;<a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class="HOEnZb"><div class="h5">On 23 Sep 2012, at 20:07, Tarek El-Sherbiny wrote:<br>
<br>
&gt; Hi,<br>
&gt;<br>
&gt; I'm porting a program which uses SDL to openembedded Yocto-project. I have included libsdl to my image but SDL is failling to initialize SDL_Init(SDL_INIT_VIDEO) gives:<br>
&gt; &nbsp;No available video device<br>
&gt;<br>
&gt; What are the packages that I need to install to get SDL video device?<br>
<br>
</div></div>What graphics do you have available? I've got it working ok using DirectFB and X11 should be ok as well.<br>
<br>
Chris Tapp<br>
<br>
<a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href="http://www.keylevel.com/" target="_blank">www.keylevel.com</a><br>
<br>
<br>
<br>
</blockquote></div><br></div>
</blockquote></div><br><div apple-content-edited="true">
<span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com">www.keylevel.com</a></div><div><br></div></span><br class="Apple-interchange-newline">
</div>
<br></body></html>

--Apple-Mail=_2451B7A0-FF24-46E0-9EE0-868EF553461B--
