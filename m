Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BDD1E013FB;
	Sat, 19 May 2012 15:09:50 -0700 (PDT)
Received: from [109.224.129.17] (port=2862
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SVrqM-0005Op-S7; Sat, 19 May 2012 23:09:46 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
Date: Sat, 19 May 2012 23:09:48 +0100
Message-Id: <6CA23492-79BC-43A4-9A28-65554E2909A7@keylevel.com>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: RaspberryPi Layer
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
X-List-Received-Date: Sat, 19 May 2012 22:09:50 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DBD935DE-D84A-4388-960D-5538FB0664FA"

--Apple-Mail=_DBD935DE-D84A-4388-960D-5538FB0664FA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

On 19 May 2012, at 22:51, Andrei Gherzan wrote:

> After an exchange of messages with Richard, Saul and John Willis (he =
already started a layer for oe and did a good job in it) i want to =
announce that i started start a fork from his layer and with Florin =
Sarbu will prepare a layer for RaspberryPi to work upon poky.=20
> Until a stable version of this layer we will keep this layer on =
bitbucket: https://bitbucket.org/agherzan/meta-raspberrypi.=20
> I don't know if a mailing list is needed but if there are any others =
who want to contribute on this, we can adopt meta-fsl-arm's solution of =
a google group and use it as a way of communicating.=20
>=20
> Waiting for feedback and hope there will be others to come along.=20

Hi Andrei,

I'm interested in this. I've got a board here and have some basic stuff =
running based on the work John has done.

Graphics is painfully slow at the moment, but this seems to be mainly =
down to there being no hardware acceleration in the images that have =
been produced yet. It looks as if directfb (http://directfb.org/) plan =
to have this running shortly, so that looks like it would be worth =
keeping an eye on.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_DBD935DE-D84A-4388-960D-5538FB0664FA
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><div>On 19 May 2012, at 22:51, Andrei Gherzan wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite">After an exchange of messages with Richard, Saul and John Willis (he already started a layer for oe and did a good job in it) i want to announce that i started start a fork from his layer and with Florin Sarbu will prepare a layer for RaspberryPi to work upon poky.&nbsp;<div>


Until a stable version of this layer we will keep this layer on bitbucket:&nbsp;<a href="https://bitbucket.org/agherzan/meta-raspberrypi" target="_blank">https://bitbucket.org/agherzan/meta-raspberrypi</a>.&nbsp;</div><div>I don't know if a mailing list is needed but if there are any others who want to contribute on this, we can adopt meta-fsl-arm's solution of a google group and use it as a way of&nbsp;communicating.&nbsp;</div>


<div><br></div><div>Waiting for feedback and hope there will be others to come along.&nbsp;<br clear="all"><div style="text-align:center"></div></div></blockquote><br></div><div>Hi Andrei,</div><div><br></div><div>I'm interested in this. I've got a board here and have some basic stuff running based on the work John has done.</div><div><br></div><div>Graphics is painfully slow at the moment, but this seems to be mainly down to there being no hardware acceleration in the images that have been produced yet. It looks as if directfb (<a href="http://directfb.org/">http://directfb.org/</a>) plan to have this running shortly, so that looks like it would be worth keeping an eye on.</div><br><div apple-content-edited="true">
<span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com">www.keylevel.com</a></div><div><br></div></span><br class="Apple-interchange-newline">
</div>
<br></body></html>

--Apple-Mail=_DBD935DE-D84A-4388-960D-5538FB0664FA--
