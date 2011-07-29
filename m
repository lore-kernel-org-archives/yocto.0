Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0055E4C800D8
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2011 18:59:41 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jul 2011 16:59:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,285,1309762800"; d="scan'208";a="35735822"
Received: from unknown (HELO [10.255.14.105]) ([10.255.14.105])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2011 16:59:41 -0700
Message-ID: <4E31F800.4010501@linux.intel.com>
Date: Thu, 28 Jul 2011 17:00:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: "Ourada, Paul" <Paul.Ourada@Covidien.com>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org><1311052872-10569-2-git-send-email-galak@kernel.crashing.org><CAMKF1sq4ho3-P6L0PfDVxpAscccS561LLRUNc64okvsU9R=f9Q@mail.gmail.com><4537825C-7D8E-4260-88D2-C5F851FF827A@kernel.crashing.org>	<E7D51FCF-F5DC-448D-8354-410E0217D10F@kernel.crashing.org>
	<2A069A8019B2DF43BD330EE490B1EF527F2A16@TAMANS-BE04.thcg.net>
	<4E31D93E.2000606@linux.intel.com>
	<4D9E0AFD9C2FCC428A8EAADA898F5B2D012F90@TAMANS-MB100V.thcg.net>
In-Reply-To: <4D9E0AFD9C2FCC428A8EAADA898F5B2D012F90@TAMANS-MB100V.thcg.net>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Trying to create OpenDDS recipe
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
X-List-Received-Date: Thu, 28 Jul 2011 23:59:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Nitin, Khem, some toolchain related (I think) questions inline below.

On 07/28/2011 04:16 PM, Ourada, Paul wrote:
> Hi Darren -
> 
> Thanks for getting back to me. I have been able to get a lot further
> with the recipe. It turns out that the problem is in the makefiles
> for OpenDDS. I'll detail further below.
> 
> Paul E. Ourada Sr. Principal Software Engineer Covidien, Energy-based
> Devices 5920 Longbow Drive Boulder, CO 80301 
> paul.ourada@covidien.com www.covidien.com Main: 303-530-2300 Ofc:
> 303-581-6940 Fax: 303-581-6741
> 
> 
>> Hi Paul,
> 
> On 07/19/2011 07:41 AM, Ourada, Paul wrote:
>>> I hope this is the correct place to post this. If not, please let
>>> me know.
> 
>> This is the right place. In the future please don't reply to an
>> existing post as your message then gets threaded with the one you
>> replied to (likely why you didn't receive a response so far - that
>> I see anyway).
> 
> I guess I thought that changing the subject would have fixed that.
> Guess the mail list s/w is smarter than that. :)

In case you're actually curious :-) it's your mail client. It inserts
the following header:

In-Reply-To: <E7D51FCF-F5DC-448D-8354-410E0217D10F@kernel.crashing.org>

Which a compliant mail reader will thread with that message.

> 
>>> 
>>> I'm trying to create a recipe for OpenDDS. The recipe works so
>>> far as fetching, unpacking, and configuration. Or it seems to. :)
>>> Part of the configuration piece is that it also pulls down
>>> ACE+TAO real-time CORBA. This part works fine as well.
>>> 
>>> I set S as follows to match the unpacking directories enforced by
>>> the tar file:
>>> 
>>> S = ${WORKINGDIR}/DDS
>>> 
>>> The package comes with a configuration script pre-built, and it
>>> expects to be told where glibc is. So, I write do_configure as
>>> follows:
>>> 
>>> EXTRA_OECONF = "-glibc=${STAGING_DIR}/${MACHINE}/usr"
>>> 
>>> do_configure() { ${S}/configure ${EXTRA_OECONF} }
>>> 
>>> The problem that I run into is during compilation. I write the
>>> following for do_compile()
>>> 
>>> do_compile() { oenote ${STAGING_DIR} cd ${S} && make }
> 
>> Is there a reason you are overriding configure and compile? These
>> appear to be autoconf projects, which should just work for recipes
>> using autotools.bbclass.
> 
> I had tried that initially. The configuration file is already
> supplied, so running autotools to create the configure script is not
> necessary, but running ./configure is. Is there a better way to do
> that?

Does regenerating .configure actually cause a problem? If not, I would
still suggest using the autotools base and simplify your recipe.

> 
> : : << most of the compiler command line gobblety-gook snipped>>
> 
>>> -DTAO_IDL_PREPROCESSOR=\"i586-poky-linux-g++ -march=i586
>>> --sysroot=/opt/yocto/poky-5.0.1-build/tmp/sysroots/qemux86\"
> 
> 
>>> The thing that is puzzling me is that --sysroot seems to be
>>> pointing in the general direction of ${STAGING_DIR} and so the
>>> include directive, #include <features.h>> should be good. I have
>>> checked, and features.h is in the /usr/include subdirectory
>>> there.
> 
>> I see unistd.h missing, not features.h.
> 
> You're right, it was complaining about unistd.h, but it turns out
> that the real culprit was the TAO_IDL_PREPROCESSOR macro above. When
> I compared it to what was being emitted in the Ubuntu compile, I saw
> that the long, nasty, compound, double-quoted thing should have just
> been "i586-poky-linux-g++." TAO_ID_PREPROCESSOR was being assigned
> the value of ${CXX}.
> 
> It appears that instead of pre-pending the ${CPPFLAGS} variable,
> yocto/poky recipes were appending the cross-compile build variables
> to ${CXX}. I patched the OpenDDS makefile(s) to look for the first
> word in the ${CXX} macro, and substituted that in the assignment of
> TAO_IDL_PREPROCESSOR. Dunno if that's the "right" way to do it, or if
> there's a bug in ${CXX} assignment?

These are good toolchain questions for Nitin or Khem, now on CC.

> 
> Anyway, I think that I'm getting there w/the recipe. I'm sure that
> there are some things I'm doing wrong. For instance, I'm no longer
> cd'ing to ${S}, as OE already takes me there. I'm also using
> oe_runmake in do_compile().

If you're running oe_runmake from do_compile then you might be able to
omit do_compile and use the base class implementation.

> 
> I expect that I'll be running some version of "make install" at some
> point.

Again, should be automagic.

> 
> I'm sure I'll have more questions as I go along.
> 
> Thanks for helping an OE/Yocto N00b!
> 
> Paul
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

