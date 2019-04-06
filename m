Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CDECE00D20; Fri,  5 Apr 2019 23:36:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3925E00D00
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 23:36:13 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44bn571qjzz3y;
	Sat,  6 Apr 2019 08:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1554532571;
	bh=olRk9Wmij5HCCaFMLU2yJL5Wc9rgmmAJ7dgr2onotkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JgUZdD91B90K5gjcIvu6yE3RCcfbByDWyQhdUj0Qcvm3r6rYx+gEe42rS/W43+zbh
	eVkLeJc668BksO4V6yyeiFWmz8aFZJ92C3Aw/euhcQzowrGH3uKCiro4pMQE0RYDTC
	EjK5yBHipEMw+iaQj0h1Biyx7EIQZ+xnEYfr5aKHrYhkwW2hqVBGEF+wKIbOtAA0JA
	+Wj2LcYqPIlEMCgXIhHdJCUe3bGtyei9FhcvMF4kyMkNcuWr91c3QrZXsQ3sZZxj06
	hjWiCkTzhdqkvY7wekAL9SWWTirKEE4pLyxqmTtk0BWdYhHvjVIC3wIPsbGMuwGfX0
	MSi88tJYGX/NgElSpNshiPqiBZlbgNDsMP8J89fviLzIJORKr3Vp6iyFEYyaaLWsfz
	vOCf1CrRNqUFfBJPvxNzy6qusdJxLD50hcn5cRxZY5O8q7NoTpbwtbWd4a5Z7v1XZh
	/0NebOOseT0fdWXnSnGBMqjP2QYMFZDCJgU8H+4OrP9BGXfMCYgXbOoZmbWg8wccUb
	nzPGgB5ZIDGxtkyPbVOWoTqSTlTJfCpiF5nytFgWhB7V9l9MPU2S0jAvDJiMZ67KxW
	/4vmQErx4a6PSRUgox+AkyanLIZGmhsuTEQmFnIHckutzvtmhXaeWFyB6jBSxIAPFb
	yGZ6HNGIkYVJ6VT/LXHVGeb0=
Date: Sat, 6 Apr 2019 09:36:08 +0300
From: Adrian Bunk <bunk@stusta.de>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20190406063608.GA3290@localhost>
References: <1554416266-28620-1-git-send-email-akuster808@gmail.com>
	<1554416266-28620-2-git-send-email-akuster808@gmail.com>
	<20190405045951.GA28935@localhost>
	<623dd471-1e89-fdcb-fcc6-deab840731ab@gmail.com>
	<20190405081930.GA22318@localhost>
	<945d1df4-2eff-645a-a707-833139b00def@gmail.com>
MIME-Version: 1.0
In-Reply-To: <945d1df4-2eff-645a-a707-833139b00def@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] sssd: add DISTRO_FEATURE sssd
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
X-List-Received-Date: Sat, 06 Apr 2019 06:36:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sat, Apr 06, 2019 at 05:54:35AM +0530, akuster808 wrote:
> 
> 
> On 4/5/19 1:49 PM, Adrian Bunk wrote:
> > On Fri, Apr 05, 2019 at 11:05:17AM +0530, akuster808 wrote:
> >>
> >> On 4/5/19 10:29 AM, Adrian Bunk wrote:
> >>> On Fri, Apr 05, 2019 at 03:47:46AM +0530, Armin Kuster wrote:
> >>>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >>>> ---
> >>>>  recipes-security/sssd/sssd_1.16.4.bb | 2 +-
> >>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
> >>>> index 34bc8c8..d6a308c 100644
> >>>> --- a/recipes-security/sssd/sssd_1.16.4.bb
> >>>> +++ b/recipes-security/sssd/sssd_1.16.4.bb
> >>>> @@ -16,7 +16,7 @@ SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f
> >>>>  
> >>>>  inherit autotools pkgconfig gettext python-dir distro_features_check
> >>>>  
> >>>> -REQUIRED_DISTRO_FEATURES = "pam"
> >>>> +REQUIRED_DISTRO_FEATURES = "pam sssd"
> >>>> ...
> >>> Adding a distro feature for a leaf package is wrong.
> >> Is it a naming issue or something else? I would like to understand so I
> >> may avoid making the same mistake.
> > This has nothing to do with naming.
> > It is about getting rid of workarounds by fixing the root cause,
> > instead of adding more and more layers of workarounds.
> >
> > A DISTRO_FEATURE is for cases where PACKAGECONFIG in many recipes should 
> > be toggled with one setting, or the setting has to be the same in several
> > recipes.
> The definition is old and needs to be updated to modern time. There a
> plenty of recipes that require libraries the we ended up using this
> mechanism. Look at the X11 situations. The sssd requires PAM but there
> is no PAM config option supported in the recipe so I should remove PAM
> to then?

X11 and PAM are low-level libraries.

A user might choose to build a distribution without X11 support or 
without PAM support, and there is no better solution for this.

It is not intended for temporary quick hacks.

> > DISTRO_FEATURES is not appropriate to guard a quick hack workaround for
> > breakage caused by another workaround.
> Its being used in the case of mali support.  So I do see value in able
> to use this mechanism in those cases.

What are you referring to here?

> I do have another option and that is to supply the previous libldb. This
> I know is standard practice for other layers.

I actually wonder why sssd currently requires libldb,
it does not DEPEND on it so is not built against it.

> > The problem at hand is that libldb in meta-openembedded was upgraded to 
> > a version not compatible with the version of samba in meta-openembedded.
> 
> And that should not have been allowed IMHO.

0001-ldb-Refuse-to-build-Samba-against-a-newer-minor-vers.patch in samba
seems to have been added to prevent exactly this in the future.

> What is even worse, one can
> not install libldb onto a system without seen the same issues so it
> appears no one is using it.

samba uses the internal version and for sssd it is a non-default
PACKAGECONFIG.

> > As workaroud the libldb shipped in samba was used and installed by 
> > the samba recipe.
> >
> > The proper fix would be to upgrade samba to 4.9 or 4.10,
> > and use the external libldb again.
> > This would make all problems caused by having two different versions
> > of libldb disappear.
> >
> > If this is not possible, it is likely samba that should stop just 
> > shipping the (older versions of) the conflicting binaries for now.
> >
> > In a semi-related note, the current samba is a pretty outdated even for
> > the 4.8 branch and misses several CVE fixes.
> Make you wonder if folks are using samba.

using != maintaining

Users tend to use whatever is provided by a stable series,
and trust that this is properly security supported.

They cannot even notice that samba has not been updated for warrior
before warrior becomes a stable series and they start using it.

Creating an automated regular report based on cve_check for master and 
all supported stable series for several layers might be easy enough.

Currently the output would be depressing for master and worse
for stable branches.

Actually providing security support by providing properly tested fixes
for master and 2 supported stable series would be full-time work for
several people.

> - armin

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


