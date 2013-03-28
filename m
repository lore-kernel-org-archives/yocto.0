Return-Path: <anders@chargestorm.se>
Received: from stoexhubfe01.domain01.net (STOEXHUBFE01.domain01.net
	[83.145.59.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6FE8E014A9
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 22:54:19 -0700 (PDT)
Received: from ad.chargestorm.se (83.252.253.85) by stoexhubfe01.domain01.net
	(10.12.10.6) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Thu, 28 Mar 2013 06:54:17 +0100
Date: Thu, 28 Mar 2013 06:55:07 +0100
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20130328055507.GA2765@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <20130307104051.GH32228@jama.dyndns-home.com>
	<96E98E10F7094D32B371FD84AFF0FFFC@PAULD>
	<20130307182933.GS32228@jama.dyndns-home.com>
	<50BB56BA2C44400C9B6A31B0C2641BD2@PAULD>
	<20130307224223.GU32228@jama.dyndns-home.com>
	<D5340F46DF5F458D9096EA823C3A9EAE@PAULD>
	<20130327090320.GA13837@ad.chargestorm.se>
	<2AE00AC2A89C48A38A01262D58FA692A@PAULD>
	<5153A67F.9070702@windriver.com>
	<BAEA0795F10B4BF6BD9BAA17CBC46EB0@PAULD>
MIME-Version: 1.0
In-Reply-To: <BAEA0795F10B4BF6BD9BAA17CBC46EB0@PAULD>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
X-GFI-SMTP-Submission: 1
Subject: Re: Samba server?
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
X-List-Received-Date: Thu, 28 Mar 2013 05:54:20 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Paul D. DeRocco <pderocco@ix.netcom.com> [130328 04:11]:
> > From: ChenQi

> > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
> > section 5.2 Customizing Images

> > In your case, you could add the following line to local.conf.
> > IMAGE_INSTALL_append += "samba"

> > And you can use 'bitbake -g <image_recipe_name>' to see 
> > whether samba is pulled in.

> > For all docs, see https://www.yoctoproject.org/documentation/current.

> Thanks for that pointer. I'll try that out.

Chen Qi has already given you pointers to the documentation. Though,
I'll just add a few remarks that hopefully will kickstart your
understadning when reading the docs.

> So is there a general way to peruse the collection of recipes? Does one have
> to do "ls -R *.bb" to get the list of recipes, then read the comments inside
> the files to see how to use them?

No, the recipes themselves do not enforce their own inclusions into your
image. (That wouldn't really make sense, especially not when including
such a large layer as meta-oe).

> And how does one know in advance which ones get included by default? Is
> there some construct one looks for in the .bb file that indicates it gets
> included? Or is there some master recipe that says "this depends upon this
> big long list of standard recipes"?

Which image are you building? 

Say that you're building core-image-sato, then you'll have to look at
that recipe meta/recipes-sato/images/core-image-sato.bb. 

There you might find IMAGE_INSTALL, which defines what packages (and
package groupds) this recipe wants to install. 

The recipes can also define IMAGE_FEATURES, which are used by the
core-image.bbclass (which is inherited in the .bb-file), to add a number
of packages.

> And are any of the recipes that are included by default not actually
> required, and if so, how do you un-include them if you want to pare down the
> system to a bare minimum?

Sure, there's likely some stuff in most images that you're not
interested in. All the supplied images are there for some use-case, be
it demoing stuff, test, etc.

If you want to customize an image more, I'd recommend you to create your
own image. A first step might be to just copy one of the image recipes
to a layer of your own, and then modify it according to your taste.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

