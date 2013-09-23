Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7CF3E013D6
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 10:40:37 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=[10.79.148.145])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VOA7f-0003Xu-5e; Mon, 23 Sep 2013 17:40:35 +0000
Message-ID: <52407D0B.5020802@twobit.us>
Date: Mon, 23 Sep 2013 13:40:27 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130828 Icedove/17.0.8
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <20130923042418.GA17195@longhaul.twobit.us>
	<CAJTo0LaKEQW3NGJLguns72Y2Vic48edxN9MjOoTe_L4izJsE4w@mail.gmail.com>
	<52405205.4070701@twobit.us>
In-Reply-To: <52405205.4070701@twobit.us>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux] Add sysvinit to DISTRO_FEATURES in oe-selinux distro.
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
X-List-Received-Date: Mon, 23 Sep 2013 17:40:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/23/2013 10:36 AM, Philip Tricca wrote:
> On 09/23/2013 04:51 AM, Burton, Ross wrote:
>> On 23 September 2013 05:24, Philip Tricca <flihp@twobit.us> wrote:
>>> -DISTRO_FEATURES_append = "pam selinux"
>>> +DISTRO_FEATURES_append = "pam selinux sysvinit"
>>
>> sysvinit is a backfilled distro feature so you shouldn't need this.  I
>> can see two cases where you may need it: either you're setting
>> DISTRO_FEATURES_BACKFILL_CONSIDERED to sysvinit (in which case don't),
> 
> I'm not even sure what DISTRO_FEATURES_BACKFILL_CONSIDERED is so we can
> rule that out. Finding it in the docs now ...
> 
>> or you're cherry-picking pieces from different releases (in which case
>> this probably isn't the fix you're after).
> 
> I'm not doing anything so sophisticated (misguided?). I ran into this
> while setting up a build to test unrelated patches. Regardless this is
> the type of feedback I need so thank you. I'll go back and pull fresh
> from upstream and re-test.

I've located the source of this issue. Turns out DISTRO_FEATURES_BACKFILL
and DISTRO_FEATURES are concatenated somewhere along the way. The lack of
leading whitespace in the DISTRO_FEATURES_append from the oe-selinux distro
was causing 'sysvinit' and 'pam' to be combined into 'sysvinitpam'. The
check in the packagegroup class that I was running into must be evaluated
before any sanity check for invalid entries DISTRO_FEATURES.

Adding a leading space to the DISTRO_FEATURES_append in the oe-selinux
distro resolves this issue. Thanks for the pointer to the backfill
mechanism Ross. I'll submit a new patch.

Cheers,
- Philip



