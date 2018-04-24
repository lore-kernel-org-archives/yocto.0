Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB68EE009F4; Mon, 23 Apr 2018 23:40:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.197.172.111 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 527 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Apr 2018 23:40:03 PDT
Received: from gw03.mail.saunalahti.fi (gw03.mail.saunalahti.fi
	[195.197.172.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16201E00948
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 23:40:03 -0700 (PDT)
Received: from linux.suse (91-157-45-43.elisa-laajakaista.fi [91.157.45.43])
	by gw03.mail.saunalahti.fi (Postfix) with ESMTP id 4C19F20372;
	Tue, 24 Apr 2018 09:31:12 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
In-Reply-To: <CAJTo0LaMzWdr3c5siBv2CU2p-ZWCcRi06khNmMFgT-0PV0+17w@mail.gmail.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
	<5ad9c6a5.d806630a.b3470.003fSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAJTo0La99prBuhp5XDr1UPPYMqKHfHry6SWrQxpwudbK5KKCsA@mail.gmail.com>
	<CAALXFYxrWHrsJTKApWahyeXmjnAGXUfvc+ffmgfNGhjyvcTwcw@mail.gmail.com>
	<CAJTo0LaMzWdr3c5siBv2CU2p-ZWCcRi06khNmMFgT-0PV0+17w@mail.gmail.com>
Date: Tue, 24 Apr 2018 09:31:11 +0300
Message-ID: <87r2n5azf4.fsf@linux.suse>
MIME-Version: 1.0
Subject: Re: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Tue, 24 Apr 2018 06:40:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Ross for your answers.  I'm still working on fully understanding
shared state so I appreciate your help.  Let me follow up on both your
answers in a single message.

On Mon, Apr 23, 2018 at 6:38 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 23 April 2018 at 16:23, Iv=C3=A1n Castell <icastell@nayarsystems.com> =
wrote:
>>
[...]
>>
>> Related with that shared state cache, I found some information on a e-bo=
ok
>> (search the text on google to find the source):
>>
>> "Sharing a shared state cache is possible; however, it needs to be
>> approached with care. Not all changes are detected by the shared state c=
ache
>> implementation, and when this happens, some or all of the cache needs to=
 be
>> invalidated. This can cause problems when the state cache is being share=
d.
[...]
> Very curious as to what book said that, because *any* example of that
> happening is a bug in the recipe itself.  I wouldn't listen to it: the YP
> autobuilder has a shared sstate for three distributions * four architectu=
res
> * two libc implementations and doesn't have problems.
>
> Ross
>

I think when talking about shared state there can be 2 aspects of sharing

1.) sharing over time: Several invocations of bitbake in the same environme=
nt
  (DISTRO, MACHINE etc)
2.) sharing over distros etc.

Number 1 is an incremental build (as opposed to clean or full
build).  Without any doubt that is useful (or really mandatory) for
development work.  You build, you make little changes, you build, you
test, you make more changes...  You share state from the previous build,
because making a full clean build every time would lead to completely
inacceptable cycle times.

But when you are "done" with your changes you make an integration build
and to my experience that should be a clean (aka full) build.  You
intentionally do not share any state from a previous build, you don't
make an incremental build, because there is always the risk of broken
recipes.  I mean if there were no broken software, we would all be
unemployed by now...

Let me give a simple example I experienced my self recently:

I added creation of a new file in some task.  In my incremental
developer build it all worked fine.  When I put into a clean integration
build the task failed.  It turned out that the directory I wrote my new
file to in task A was created by a different task B.  In my development
build task B had already been executed long before I even started to
make the recipe modificationto to create a new file, so task A always
succeeded.  In the clean build task A happened to run first and failed.
A simple missing dependency / incorrect task ordering.  With parallel
clean builds you might not always find it, but with incremental builds
it can go undetected forever.

It's not only "some book" that mentions the risk of "bad" state, but
also the Yocto documentaton:

https://www.yoctoproject.org/docs/2.5/mega-manual/mega-manual.html#concepts=
-tips-and-tricks

(Especially 4.5.4.2. Invalidating Shared State.  Of course the
invalidating is easy, but finding what you need to invalidate is hard.)

Of course the less something is tested the bigger the risk is.  So the
bitbake system should be rather fine, commonly used Poky recipes
probably too.  But when it comes to random layers and our own local
recipes and bbappends I would expect the risk to grow a lot.

So do you really tell us in the message above that above that Yocto
project runs incremental integration builds?

Another way to think about it: Shared state is used to to avoid
rebuilds.  So how could I benefit from having state information in some
SSTATE_DIR already?  I have to build it anyway, because my build area is
empty to begin with.

The 2nd aspect, sharing over distros was covered in the other message.

On Mon, Apr 23, 2018 at 6:10 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 20 April 2018 at 11:47, Uwe Geuder <jrswdnan22@snkmail.com> wrote:
>> But can you share state between distros? Isn't the purpose of distros to
>> use different options (variable settings) so the state would always be
>> different?
>
> If the input to the recipe is different then the hashes would be
> different so the content won't conflict.  You can definitely share
> sstate between DISTROs.
>
> Ross

Under the assumption that all recepies were perfect (which they probably
aren't in every point of history, see above) I fully believe that the
build system would work perfectly when I share the SSTATE_DIR over
DISTRO borders (or diferent MACHINE settings).  But do I really have any
commmon data that would lead to any saving? As you say the hashes would
be different.  In my thinking all "expensive" state info should be
different, because a different DISTRO (or different MACHINE) would lead
to different hashes for bascially every item.  So in the best case I end
up with several distinct sets of state data stored under the same top
directory, but that doesn't seem to result in any saving.  In the worst
case an item goes into the same file, so I end up with "cache
thrashing".  Build A calculates the state and stores it, build B finds
the hashes not matching and puts its new info there.  Build A finds the
hashes not matching and...

Or does the saving come on the native part of the build? There I would
guess that common state could occur more commonly.

I think it would really help to have a hello world type of Yocto build,
where you could manually read through the sstate data to understand how
it works exactly.  In a real world sized build the amount of data does
not really help to understand the concepts.  Does anybody have a
recommendation what would be the smallest possible Yocto build that
makes some sense?

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)

