Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCEA2E00D14; Wed,  6 Jan 2016 17:44:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91615E00AB5
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 17:44:04 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id ik10so45040356igb.1
	for <yocto@yoctoproject.org>; Wed, 06 Jan 2016 17:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TGcb/XX8XWFfq39ykXKc52jeon7QiScr4dvODiVfrjE=;
	b=PMMItafqeMfdbzgiGUf113YHTFD2XmBiCrKtDoBbOebB9Ke6EV8tttb1kfsWObNzU9
	Ex+OzLK4RfyW1S1P8VW+9TW8WGk+QI9JbWnnMZ/+gdjfC3htinNf9aXpepvGh5lj37ML
	RhAcKxZx4VbvumRLOZS2OmDpZ119/r0T62bD1GOOJwjDQ23qZhkUHdWY4/TTp4hpkOlN
	dnPFo2KZ5BVJZZSR0+sg5vo+FhVc5TPk1OGqQgPfgYk02FSzEFJCwhE9TI7PkBcC/sUq
	StKkWTtAcuKurcmG1zpLJGir/2iyMYYAB4i2BdH/bM6RvnjpQGMjcKQv6H0hgbxjeucr
	PBrw==
X-Received: by 10.50.62.75 with SMTP id w11mr1225484igr.32.1452131043935;
	Wed, 06 Jan 2016 17:44:03 -0800 (PST)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	s6sm36039778ioe.43.2016.01.06.17.44.02 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 06 Jan 2016 17:44:03 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAK18fxF5d+7JecsEHM=wGWGfzeyZPTVKbLbfygNqNoEcjnce0A@mail.gmail.com>
	<CAK18fxGSYtduY0xv8aF8hYWJORmZwdMxw2TAgf3XS5_u+sKBWQ@mail.gmail.com>
	<568D986B.5040303@windriver.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <568DC2DE.4070107@gmail.com>
Date: Wed, 6 Jan 2016 20:43:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <568D986B.5040303@windriver.com>
Subject: Re: Layer manifest (topic touched at ELCE)
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
X-List-Received-Date: Thu, 07 Jan 2016 01:44:08 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 01/06/16 17:42, Mark Hatle wrote:
> But using a combination of the defined dependencies and the layer index you
> should be able to resolve "known" layers.  (Would also be nice if the index
> looked for collisions as well...)

I wrote a silly script[1] that probes the layer index and presents the
user with a list of MACHINES. The user chooses and MACHINE and, based on
the dependencies of the BSP layer defining that machine, the script
pulls in all the required layers and updates the conf/bblayer.conf file.
So basically the user just picks a MACHINE and the script does the rest
so all the user then has to do is type "bitbake <image>". It was just a
silly little proof of concept. It's not perfect, but it does work for me
and I do use it all the time. Of course, it makes assumptions with which
others might not agree ;-) ndec tried it and said it didn't work for
him; yymv. The point is the data is out there (in the layer index) and
it's not too hard to just choose a machine and let the computer pull the
layers and update your config. The thing is... IMHO the layers are
_almost_ a foreign part of the entire build process. IMHO they're
_almost_ like a second-class citizen.

I'm not trying to complain.

But it's not just layers, the whole process of setting up your
configuration is a bit of a mess! I've tried floating the idea (maybe it
was at ELCE?) that maybe the configuration files should be more unified?
Wouldn't it be great if I could give you one configuration file and with
it you could type "bitbake <image>" and it would do all the work of
pulling in the layers, the layer dependencies, maybe even specify
specific checkouts of those repositories, it would specify all the bits
you need, and then build your image? In many cases builds only succeed
when specific checkouts of specific layer repositories are used with
specific configuration incantations in specific configuration files.
It'd be nice to be able to specify all the things you need to re-create
my build in one config file.

It seems awkward that I can checkout the yocto layer and build
core-image-x11 as-is, but if I want to build core-image-wayland then I
have to edit conf/local.conf and rejigger a bunch of configuration
parameters before it'll work. If specific DISTRO_FEATURES are required
for an image to build, they should be in the image configuration file,
no? The build shouldn't rely on me correctly adjusting my local.conf to
make it work?

If I perform a build today and want to save <something> so that I can
have some hope of being able to recreate that build at some point in the
future I have to save: auto.conf, local.conf, bblayers.conf, then, for
each layer, I have to record what the HEAD was for its repository as
well as where I got every layer from (there are several github layers,
for example, with the same name).

:-)

The arguments against this panacea ;-) revolve around the need to keep
the build system as flexible as possible. It is argued that each part of
the build process should be independent and therefore be independently
configurable.

Circling back to your email, a layer manifest for a BSP should specify
all layer dependencies, specify where to find those layers (and maybe
even suggest which branches/checkouts to use?), in such a way that the
build could use it automatically without expecting the user to find,
checkout, and update bblayers.conf manually.

Maybe this discussion would be better on oe-architecture?















[1] https://github.com/twoerner/oe-layerindex-config

