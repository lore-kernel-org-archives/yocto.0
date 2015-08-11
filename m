Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 881B5E00A90; Mon, 10 Aug 2015 21:11:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 816B4E00A80
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 21:11:08 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.103])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZP0tA-0001Xo-TX; Tue, 11 Aug 2015 04:10:15 +0000
Message-ID: <55C975D1.5020806@twobit.us>
Date: Mon, 10 Aug 2015 21:10:57 -0700
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: Joe MacDonald <Joe_MacDonald@mentor.com>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
	<20150808210055.GC4021@mentor.com>
In-Reply-To: <20150808210055.GC4021@mentor.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCHv2 0/8] Label file system in build.
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
X-List-Received-Date: Tue, 11 Aug 2015 04:11:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hey Joe,

On 08/08/2015 02:00 PM, Joe MacDonald wrote:
> I'm sorry this has been in the merge queue for so long.

Better late than never :)

> I've merged it
> after taking the policy updates from Shrikant and a few other small
> patches that had been hanging around too.  I didn't drop it on master
> yet, though, since I wanted to give everyone else a little bit of time
> to try it out (myself included, I'm finally able to come up for air on
> some of the day job things :-)).  Instead it is currently living on the
> fs_label branch, but I rebased the patches on the current master HEAD
> commit.  That means, though, that if you get a chance I'd like to take a
> look at the branch to ensure I didn't mangle your patch set too much.

Will do.

Philip

> [[meta-selinux][PATCHv2 0/8] Label file system in build.] On 15.06.17 (Wed 15:30) Philip Tricca wrote:
> 
>> This is the second version of a patch series that allows the file system
>> of SELinux images to be labeled as part of the build process. This will
>> allow SELinux images to boot read only file systems and remove the need to
>> label the file system on first boot.
>>
>> To do this we must label the file system in the build as well as add
>> support for extended attributes to the mke2fs utility in the e2fsprogs
>> package. The first version of this patch series is here:
>> https://lists.yoctoproject.org/pipermail/yocto/2015-June/025141.html
>> The approach described in this previous RFC remains the same.
>>
>> Changes in v2:
>> This second version has two significant changes: First I've done a bunch
>> of cleanup. This includes work to make the descriptions in the patch
>> headers / commit messages more exact as well as combining some commits
>> with related functionality. Secondly I've reimplemented the xattr cache
>> so that it actually works.
>>
>> I've made the patch headers as descriptive as possible and kept the git
>> commit messages minimal. If the preference is for more verbose commit
>> messages I'm happy to oblige if advised.
>>
>> The cache is just a single linked list that's searched for duplicates after
>> the creation of each new xattr block. The previous implementation was similar
>> but, aside from not working properly, it was overly complex in its attempt to
>> keep the list sorted.
>>
>> Tests:
>> To test this new implementation I used the core-image-selinux-minimal image
>> from the unmodified master branch as a control. This image has 2536 unique
>> file system objects including the root fs directory. The ext4 file system
>> produced by the build has 71492 blocks with 13621 free.
>>
>> As an additional test I added the patches from this set WITHOUT the cache
>> patches. This causes each file system object with an associated extended
>> attribute to use up an additional block for the xattr. This should cause
>> (hypothesis) the output file system to have 13621 - 2536 = 11085 free
>> blocks. The build producing an ext4 file system with 71492 blocks and 11088
>> free. That's an additional 2533 blocks used instead of the 2536 expected.
>> These 3 missing xattr blocks can be accounted for in that there are 3
>> unlabeled files in the file system.
>>
>> Introducing the cache allows files with identical xattr blocks to share
>> them to reduce the number of used blocks. Since we're only storing SELinux
>> labels in the xattrs we can say that every file with the same SELinux label
>> should share an xattr block. Counting the unique SELinux labels on file
>> objects we know that there are 83 in total. The second hypothesis we have
>> to test then is that using the cache will reduce the number of used blocks
>> from 2533 down to 83.
>>
>> Applying the patch that enables the cache produces a third and final ext4
>> file system. This one again report 71492 total blocks but this time 13538
>> free. This is 83 blocks fewer than the unlabled file system from the
>> initial test as we expected. The code added by this patch set is also
>> instrumented to count the objects in the cache when they're freed. With
>> this debug output enabled it reports the same number of objects in the
>> cache.
>>
>> From the test results I'm pretty confident that the cache functions as
>> expected. It's still a very basic implementation but given the small
>> number of unique SELinux labels in the reference file systems it's
>> likely sufficient for a first version. Feedback / comments on both the
>> implementation and testing approach would be appreciated.
>>
>> Regards,
>> Philip
>> ----
>>
>> Philip Tricca (8):
>>   policycoreutils: Patch setfiles to add FTS_NOCHDIR to fts_flags.
>>   selinux-image: Add new image class to label the rootfs, use it for
>>     selinux images.
>>   e2fsprogs: Add bbappend and stub for xattr module.
>>   e2fsprogs: Insert calls to xattr module into mke2fs and build xattr
>>     code.
>>   e2fsprogs: Add xattr security prefix data to
>>     lib/ext2fs/ext2_ext_attr.h
>>   e2fsprogs: Copy xattr block from source file.
>>   e2fsprogs: Add stub functions for an xattr cache and struct to hold
>>     the header and block data.
>>   e2fsprogs: Implement xattr block cache with simple linked list.
>>
>>  classes/selinux-image.bbclass                      |   8 +
>>  ...ib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch |  20 ++
>>  .../misc-xattr-add-xattr-module-stub.patch         |  57 ++++
>>  .../misc-xattr-create-xattr-block-node.patch       | 175 +++++++++++
>>  .../e2fsprogs/misc-xattr-create-xattr-block.patch  | 341 +++++++++++++++++++++
>>  .../e2fsprogs/misc-xattr-create-xattr-cache.patch  | 181 +++++++++++
>>  .../mke2fs.c-create_inode.c-copy-xattrs.patch      | 164 ++++++++++
>>  .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |  10 +
>>  .../images/core-image-selinux-minimal.bb           |   2 +-
>>  recipes-security/images/core-image-selinux.bb      |   2 +-
>>  .../policycoreutils-fts_flags-FTS_NOCHDIR.patch    |  25 ++
>>  recipes-security/selinux/policycoreutils_2.3.bb    |   1 +
>>  12 files changed, 984 insertions(+), 2 deletions(-)
>>  create mode 100644 classes/selinux-image.bbclass
>>  create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
>>  create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-add-xattr-module-stub.patch
>>  create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block-node.patch
>>  create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-block.patch
>>  create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/misc-xattr-create-xattr-cache.patch
>>  create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/mke2fs.c-create_inode.c-copy-xattrs.patch
>>  create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
>>  create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch
>>


