Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFE21E01430
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2012 13:09:49 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1TFsUp-0002Xh-8w; Sun, 23 Sep 2012 21:09:43 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAB3sqtaLL81HnFqnE5FKy0j7o8cpNUj6S7qVk6JO3EHTKBPDvg@mail.gmail.com>
Date: Sun, 23 Sep 2012 21:09:40 +0100
Message-Id: <9E8C582C-5DC7-4239-B2ED-9F3282861D38@keylevel.com>
References: <CAB3sqtaLL81HnFqnE5FKy0j7o8cpNUj6S7qVk6JO3EHTKBPDvg@mail.gmail.com>
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
X-List-Received-Date: Sun, 23 Sep 2012 20:09:49 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

On 23 Sep 2012, at 20:07, Tarek El-Sherbiny wrote:

> Hi,
>=20
> I'm porting a program which uses SDL to openembedded Yocto-project. I =
have included libsdl to my image but SDL is failling to initialize =
SDL_Init(SDL_INIT_VIDEO) gives:
>  No available video device
>=20
> What are the packages that I need to install to get SDL video device?

What graphics do you have available? I've got it working ok using =
DirectFB and X11 should be ok as well.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




