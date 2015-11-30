Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9082E00748; Mon, 30 Nov 2015 08:54:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-yk0-f180.google.com (mail-yk0-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7019DE00457
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 08:54:50 -0800 (PST)
Received: by ykba77 with SMTP id a77so190588763ykb.2
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 08:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=ZjMfucVIMQaAX2c+owPslYTHYyq5QDQ86U7cnnr0PKs=;
	b=wudl8vCa3knvbH6LaGLRMDOA5IBNk2NIW7SnzBhNo38176FINUVBpf8I36n6WxjNxc
	FPKlJcl0tFH0Gwux6EdN/yfYpSecdhgGYwy0fd3O5KwNwHVSA8kpDG2EfUw5pR4fnvvo
	Od0XOoegPCJS77SbSuMkwUpKxJtnwOl6j42GZ+9bpI7vEk/BDZ1ScR7ZhKukLlY+hNTt
	LAHkZMFbSg+PC9duyF98lIW/DKcxsqmRJB4eKJarbEwikTCn8E+gpMMbookQkUvFwMOV
	J60SP1+tY+9NaKyTcBb+nWsbNum17mbzGiUp6NVrY/wNoMH4qC5x/aXW69EWPG8o4Pob
	/Jcg==
MIME-Version: 1.0
X-Received: by 10.129.73.198 with SMTP id w189mr23594887ywa.223.1448902490386; 
	Mon, 30 Nov 2015 08:54:50 -0800 (PST)
Received: by 10.129.155.208 with HTTP; Mon, 30 Nov 2015 08:54:50 -0800 (PST)
In-Reply-To: <48CC80AE-4DC5-4631-81E3-8E6D781B7B3A@gmail.com>
References: <56538201.1020802@intel.com>
	<48CC80AE-4DC5-4631-81E3-8E6D781B7B3A@gmail.com>
Date: Mon, 30 Nov 2015 14:54:50 -0200
Message-ID: <CAF3SDA6DUQQm1Uq-T-qnWyVjcAzE+EQMwA_iKkKR+zwSgcyp4g@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>,
	openembedded-devel@lists.openembedded.org,
	Mariano Lopez <mariano.lopez@intel.com>
Subject: Re: RFC: Reference updater filesystem
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
X-List-Received-Date: Mon, 30 Nov 2015 16:54:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Hey Jen, I was looking for an image upgrade solution and factory reset
solution using overlayfs. The idea have two partitions one read-only
with the factory image, other to hold the changes that were made by
time. The factory reset feature should be triggered by a hided button
that can be pressed with help of a clips. I was thinking in using an
init ram disk to wipe out the rw partition, making the rootfs clean as
after an image installation. The upgrader tool shold re-flash a new
image to rootfs. Old rootfs is lost. The configuration changes that
have been holded by overlayfs should be wiped-out too, I didn't think
about that, is something to take in account.

Are you using overlayfs? How is it going? What difficulties you have found?

Other solution whould be using Smart package manager to upgrade the
rootfs, but this doesn't attend my need for factory-reset.

Please tell me more about your experience with overlayfs :)

Best regards,
- dhs

2015-11-30 14:10 GMT-02:00 Jens Rehsack <rehsack@gmail.com>:
>
>> Am 23.11.2015 um 22:15 schrieb Mariano Lopez <mariano.lopez@intel.com>:
>>
>> There has been interest in an image based software updater in Yocto Proj=
ect. The proposed solution for a image based updater is to use Stefano Babi=
c's software updater (http://sbabic.github.io/swupdate). This software do a=
 binary copy, so it is needed to have at least two partitions, these partit=
ions would be the rootfs and the maintenance partition. The rootfs it's the=
 main partition used to boot during the normal device operation, on the oth=
er hand, the maintenance will be used to update the main partition.
>>
>> To update the system, the user has to connect to device and boot in the =
maintenance partition; once in the maintenance partition the software updat=
er will copy the new image in the rootfs partition. A final reboot into the=
 rootfs it is necessary to complete the upgrade.
>>
>> As mentioned before the the software will copy an image to the partition=
, so everything in that partition will be wiped out, including custom confi=
gurations. To avoid the loss of configuration I explore three different sol=
utions:
>> 1. Use a separate partition for the configuration.
>>  a. The pro of this method is the partition is not touched during the up=
date.
>>  b. The con of this method is the configuration is not directly in rootf=
s (example: /etc).
>>
>> 2. Do the backup during the update.
>>  a. The pro is the configuration is directly in rootfs.
>>  b. The con is If the update fail most likely the configuration would be=
 lost.
>>
>> 3. Have an OverlayFS for the rootfs or the partition that have the confi=
guration.
>>  a. The pro is the configuration is  "directly" in rootfs.
>>  b. The con is there is need to provide a custom init to guarantee the O=
verlay is mounted before the boot process.
>>
>> With the above information I'm proposing to use a separate partition for=
 the configuration; this is because is more reliable and doesn't require bi=
g changes in the current architecture.
>>
>> So, the idea is to have 4 partitions in the media:
>> 1. boot. This is the usual boot partition
>> 2. data. This will hold the configuration files. Not modified by updates=
.
>> 3. maintenance. This partition will be used to update rootfs.
>> 4. rootfs. Partition used for normal operation.
>
> That's what we currently have implemented and running in field for a whil=
e with a small difference:
>
> 1) We don't use Stefano Babic's software updater, but an own script which=
 deals with initial software flash and later update similar - https://githu=
b.com/rdm-dev/meta-jens/tree/jethro/recipes-rdm/prd
> 2) We have integrated the updater with an update-service which can downlo=
ad the new image and install based on a manifest (signature support comes w=
ith next update) - https://github.com/rdm-dev/meta-jens/tree/jethro/recipes=
-rdm/system-image // http://www.netbsd.org/~sno/talks/nrpm/Moo-at-System-Im=
age-Update.pdf
> 3) We use
>
> boot
> rootfs
> maintfs
> data
>
> This layout allows us to extend data to fit the entire storage with know =
sizes for boot, rootfs and maintfs
>
> 4) Overlayfs with all serices is implemented (Update-wise, when coming fr=
om 3.10 to 3.18 or coming from 3.0 with unionfs to overlay ...) - https://g=
ithub.com/rdm-dev/meta-jens/tree/jethro/recipes-core/initoverlay
>
> Feel free to use that solution if you want.
>
> Cheers
> --
> Jens Rehsack - rehsack@gmail.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Do or do not. There is no try"
  Yoda Master

