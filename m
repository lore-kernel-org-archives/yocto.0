Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93F5CE00B47; Wed, 31 May 2017 23:10:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C91E00ADD
	for <yocto@lists.yoctoproject.org>;
	Wed, 31 May 2017 23:10:17 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id w1so1834982qtg.2
	for <yocto@lists.yoctoproject.org>;
	Wed, 31 May 2017 23:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=FH5gAee3UOKhKubMHbgt1KtZbxFMVNCgc6or1qYB5uk=;
	b=ORPCec8yVltBMKarYyBNYuXtiFhLC3VKA/NY8FqXRg1kqM07mr+MzSpDoOFQZDDeq0
	uCR9VoKtDb5xqWPOM0cZxIGuxGbOLRTSNqvezjqfgy25++vkZfYAD/iP43+11U/fECBj
	eBfQlzCxv9cmLYpq099R6EUu4+9ubovy0vL2jEPvDPVY5qUbS2gcBoJ+vkKVNOlPPDJp
	TfGx6sHf3YHLWxla04uPhGH5UKMPYhT9TY0Tncravf7SdrF/Gnu9GsZ8aIaNKQz7vYhK
	7akBj77EHfCWMJRieEXn3Ii4AgquG/vmfPV8IHa2SacRHH6ObShg6s+0xT6CXczZdosu
	Nqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=FH5gAee3UOKhKubMHbgt1KtZbxFMVNCgc6or1qYB5uk=;
	b=oFYB6Hs98sZq6ngeyOKkxvs0vq70r0jBTkUJJg7YFteEzoQ4UXVNkBWbjodxVsJi0m
	iBeRp8afW5t6RMd2lEt8vg8BY+HfihmsqynSiwJzhrTAuBd75uQsiZDB4MwmwFiykkAV
	RENtvL0W223e9CdfY4MIoET2u2+0+fsjww5aD+EU+bey46yul+3Y0cQJ+wz/xFSWGmmp
	5XBPPtuTK5sjfW0feW8naHwWVe3EmJAghzxMlbDeAsVJ98An2r0kdOyXcVUUa1v/nvsD
	0vKnrR0kSXDQ8kDrGqticxRwYWsKGE+erh1Rwex1XG+02ypSVSpn7GCKwhs0Km1o3nTF
	MVNg==
X-Gm-Message-State: AODbwcA4onEl9wYgk8mzaJKb6Ig6Ju+Zu+M8gViI9dmlF7f5GNUuRhh5
	8CQm3qMCldv4+g9OeJkizI6EO//S1Zj2pqU=
X-Received: by 10.200.55.233 with SMTP id e38mr1166930qtc.198.1496297416644;
	Wed, 31 May 2017 23:10:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.167 with HTTP; Wed, 31 May 2017 23:10:16 -0700 (PDT)
In-Reply-To: <CAMKF1sqVEbdMKnqHHwsdWrs6aPDOowreRCZuk2h39J2XQEV8TA@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
	<CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
	<CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
	<CAMKF1soe0qjKuyASY+sE4rcvOM-uAqzBVdNbJb2=f0c6gOhZ_w@mail.gmail.com>
	<CAK18fxF3uXOdsZkaN9f-DKJaMc+4GVfW28xTVK9a-01x+ktLXA@mail.gmail.com>
	<CAMKF1sqVEbdMKnqHHwsdWrs6aPDOowreRCZuk2h39J2XQEV8TA@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 1 Jun 2017 07:10:16 +0100
Message-ID: <CAPyrkgwGS+oheJHGudM-SiveTkdefgexcLoYfsbq+mReHXt+HQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Thu, 01 Jun 2017 06:10:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 1, 2017 at 1:17 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Wed, May 31, 2017 at 5:00 PM, Andrei Gherzan <andrei@gherzan.ro> wrote=
:
>>
>> On Tue, May 30, 2017 at 6:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> On Tue, May 30, 2017 at 10:25 AM, Andre McCurdy <armccurdy@gmail.com>
>>> wrote:
>>> > On Tue, May 30, 2017 at 10:15 AM, Paul Barker <pbarker@toganlabs.com>
>>> > wrote:
>>> >> On 30 May 2017 5:08 p.m., "Khem Raj" <raj.khem@gmail.com> wrote:
>>> >>
>>> >> On Tue, May 30, 2017 at 12:57 AM, Martin Jansa <martin.jansa@gmail.c=
om>
>>> >> wrote:
>>> >>> * use latest revision in rpi-4.11.y branch
>>> >>> * using AUTOREV causes bitbake to run git ls-remote on the github.c=
om
>>> >>> repository in order
>>> >>>   to convert AUTOREV to currently latest SRCREV even when you don't
>>> >>> use
>>> >>> linux-raspberrypi_dev
>>> >>>   at all, just happen to have meta-raspberrypi layer in your
>>> >>> bblayers.conf, that's bad for
>>> >>>   people who want to be able to build without network access
>>> >>> (completely
>>> >>> from premirror)
>>> >>>
>>> >>
>>> >> These branches get rebased often so locking SRCREV caused another
>>> >> kind of problem. what we can do is.
>>> >>
>>> >> 1. Let user like you override the SRCREC via a bbappend or conf file=
.
>>> >> so change the assignment to ?=3D
>>> >> 2. Delete the recipe completely. We lose some of upstream testing.
>>> >>
>>> >> We should be able to skip the recipe if it isn't selected as the
>>> >> preferred
>>> >> version and/or provider of "virtual/kernel". I'm out at the minute s=
o
>>> >> can't
>>> >> look at it now but will try to take a look later this week.
>>> >
>>> > The linux-yocto-dev.bb recipe contains an example of doing that.
>>> >
>>>
>>> ah perfect. Thats what we need here
>>>
>>>
>>> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-kernel=
/linux/linux-yocto-dev.bb?h=3Dmaster#n28
>>>
>>> please rename the recipe to be linux-raspberrypi-dev.bb and add the mag=
ic
>>> above and send a v2
>>>
>>
>> Using the magic above we still hardcode a revision there. So if a user w=
ants
>> to compile the recipe without setting the preferred provider it will fai=
l.
>
> what will be the usecase ? when you have a different kernel selected but
> woould like to compile yet another kernel
>
> that rev can be a well known rev like branchpoint. Moreover, I think
> if someone wants to use the dev recipe then its expected that they
> switch
> to using AUTOREV or some other local mechanism for pinning if needed.
>

I was thinking of a different approach entirerly. We can add the
following at the top of the recipe file:

python __anonymous() {
    if "linux-raspberrypi-dev" not in
d.getVar("PREFERRED_PROVIDER_virtual/kernel"):
        msg =3D "Skipping linux-raspberrypi-dev as it is not the preferred =
" + \
              "provider of virtual/kernel."
        raise bb.parse.SkipRecipe(msg)
}

(Hopefully gmail won't mangle that too much)

I've just tested it and it works fine as long as it's before the use
of ${AUTOREV}. If there's no objections to this approach I'll submit a
patch.

Cheers,

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

