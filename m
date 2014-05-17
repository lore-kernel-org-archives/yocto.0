Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45D6EE0073A; Sat, 17 May 2014 06:32:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.kmu-office.ch (unknown [178.209.48.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4BC8E00716
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 06:32:08 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id 70634446A22
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 15:27:24 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kmu-office.ch
Received: from mail.kmu-office.ch ([127.0.0.1])
	by localhost (mail.kmu-office.ch [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E+inxhb49roo for <yocto@yoctoproject.org>;
	Sat, 17 May 2014 15:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id C9C98446DCA
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 15:27:23 +0200 (CEST)
Received: from webmail.kmu-office.ch (unknown [178.209.48.103])
	(Authenticated sender: stefan@agner.ch)
	by mail.kmu-office.ch (Postfix) with ESMTPSA id AEAAF446A22;
	Sat, 17 May 2014 15:27:23 +0200 (CEST)
MIME-Version: 1.0
Date: Sat, 17 May 2014 15:31:41 +0200
From: Stefan Agner <stefan@agner.ch>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
In-Reply-To: <CAPhnLPCBpvCwzqAue_qakxbbZQRiRxeDTqY-D6UPDmrEn78S-Q@mail.gmail.com>
References: <cover.1399561605.git.stefan@agner.ch>
	<31cd125eb073f74ce6383396ad8df696@agner.ch>
	<CAPhnLPCBpvCwzqAue_qakxbbZQRiRxeDTqY-D6UPDmrEn78S-Q@mail.gmail.com>
Message-ID: <2c357cd27e84335c93041af0451cc643@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.0.1
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH v1 0/4] fixes for use with Angstrom
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
X-List-Received-Date: Sat, 17 May 2014 13:32:17 -0000
Content-Type: text/plain; charset=
Content-Transfer-Encoding: 7bit

Hi Beth,

Am 2014-05-15 17:32, schrieb Flanagan, Elizabeth:
>> Today I had troubles with our builder. After removing the whole source
>> directory and restart the build, the autobuilder somehow checked out and
>> resetted the autobuilder git! (the dora branch was checked out, which I
>> tried to checkout from a source branch). So far I could not reconstruct
>> what exactly happend, but the builder must have been in the wrong
>> directory when issuing some commands... Ugly. Calls for sandboxes :-)
>>
> 
> Ah. Please switch to master. There was a VERY VERY nasty bug that is
> probably still in dora caused by the yoctogit fetcher. I'll look at
> dora today and backport the patch.


Actually I was running master of Autobuilder. However, somehow
Autobuilder checked the branch dora out (its the branch I tried to
build, hence all my layers had "dora" as branch name).

> 
>> Anyway, I lost my custom master.cfg since git restored the version from
>> the dora branch (always remember to backup!)...
> 
> Yeah, when I was debugging it, I ended up scripting my setup just to
> figure out what was wrong.

Inbetween I figured out what happened: A git repository (fsl-arm-extra)
was somehow broken in my download folder. Hence the clone from the
download folder to the source directory failed. However, the git fetch
was done anyway, but since the clone failed that folder was not a valid
git repository. But since the yocto-slave lives under the Yocto
Autobuilder repository, git checked out the dora branch of the Yocto
Autobuilder repository...

Its crucial to check the return status of the git clone command and
don't call further commands if clone fails. If those two commands would
be two BuildBot steps, wouldn't it do this automatically?

First command:

git clone -s -n
/tmp/yocto-autobuilder/git/mirror/git.yoctoproject.org/meta-fsl-arm/ .
 in dir
/build/linuxdev/yocto-autobuilder/yocto-slave/toradex/source/git://git.yoctoproject.org/meta-fsl-arm
(timeout 100000 secs)
 watching logfiles {}
 argv: ['git', 'clone', '-s', '-n',
'/tmp/yocto-autobuilder/git/mirror/git.yoctoproject.org/meta-fsl-arm/',
'.']

Output:
Cloning into '.'...
error: refs/heads/master does not point to a valid object!
error: refs/remotes/origin/1.4_M3 does not point to a valid object!
error: refs/remotes/origin/1.4_M5 does not point to a valid object!
error: refs/remotes/origin/danny does not point to a valid object!
error: refs/remotes/origin/danny-next does not point to a valid object!
error: refs/remotes/origin/denzil does not point to a valid object!
error: refs/remotes/origin/dora does not point to a valid object!
error: refs/remotes/origin/dora-next does not point to a valid object!
error: refs/remotes/origin/dylan does not point to a valid object!
error: refs/remotes/origin/dylan-next does not point to a valid object!
error: refs/tags/1.2 does not point to a valid object!
error: refs/tags/1.2-rc1 does not point to a valid object!
error: refs/tags/1.3 does not point to a valid object!
error: refs/tags/1.4 does not point to a valid object!
error: refs/tags/1.5 does not point to a valid object!
done.
error: Trying to write ref HEAD with nonexistent object
c91ef2d2a12cd51af20011a4de8d9438e2d4890e
fatal: Cannot update the ref 'HEAD'.
fatal: The remote end hung up unexpectedly

Then, the second command:
git fetch -t --prune git://git.yoctoproject.org/meta-fsl-arm
+refs/heads/dora:refs/remotes/dora
 in dir
/build/linuxdev/yocto-autobuilder/yocto-slave/toradex/source/git://git.yoctoproject.org/meta-fsl-arm
(timeout 100000 secs)
 watching logfiles {}
 argv: ['git', 'fetch', '-t', '--prune',
'git://git.yoctoproject.org/meta-fsl-arm',
'+refs/heads/dora:refs/remotes/dora']
...

This resetted my head of the Yocto Autobuilder to dora...

--
Stefan

