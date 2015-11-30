Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E427E007C9; Mon, 30 Nov 2015 10:46:30 -0800 (PST)
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
	*      [209.85.160.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2346CE005B3
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 10:46:25 -0800 (PST)
Received: by ykfs79 with SMTP id s79so196555563ykf.1
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 10:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=1NvLTsat5R28RbqzvLv+uqd1k8xmONc1MlEZZtIwPQU=;
	b=xPESMCyn+MXRCysC15WZjCg0eVaa8mA/Ir0IRcv2tpsUR/3sMR76gkhRj6CiZ89GXe
	P5rT4b2p2/BuHQyOPU9Xmu6h9fs7xI0PG5z72glF626HqHrbW0BM7fQf4x3NRBvIQrL7
	bRq8SSFAs0CNVInmSdx/8s+c/Go0umk8R9hx6bsvmvykaG0GmSsFnK7al2K3tmSAkOHj
	MMA3LWzUdF72DINpuz2D9SutWqWUINBFHy433SM3af/c7XXLvnuBF2aXdRm8AX8SvpCB
	mlL5ReAzalDe1VprVVfpIPHtmD1tCBtnmoYoBbHv6vqREn50D0syLTm/CSCsNpG4UNVh
	yLww==
MIME-Version: 1.0
X-Received: by 10.13.226.10 with SMTP id l10mr15750829ywe.164.1448909185016;
	Mon, 30 Nov 2015 10:46:25 -0800 (PST)
Received: by 10.129.155.208 with HTTP; Mon, 30 Nov 2015 10:46:24 -0800 (PST)
In-Reply-To: <F94F5311-1C09-49AA-B666-681FCCC7B4D6@gmail.com>
References: <56538201.1020802@intel.com>
	<48CC80AE-4DC5-4631-81E3-8E6D781B7B3A@gmail.com>
	<CAF3SDA6DUQQm1Uq-T-qnWyVjcAzE+EQMwA_iKkKR+zwSgcyp4g@mail.gmail.com>
	<F94F5311-1C09-49AA-B666-681FCCC7B4D6@gmail.com>
Date: Mon, 30 Nov 2015 16:46:24 -0200
Message-ID: <CAF3SDA5YspcxQ_RVemBHhYAkfbiF0tNgB4RJ9ba64aEnhqie=w@mail.gmail.com>
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
X-List-Received-Date: Mon, 30 Nov 2015 18:46:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2015-11-30 16:20 GMT-02:00 Jens Rehsack <rehsack@gmail.com>:
>> 2015-11-30 14:10 GMT-02:00 Jens Rehsack <rehsack@gmail.com>:
>>>
>>>> Am 23.11.2015 um 22:15 schrieb Mariano Lopez <mariano.lopez@intel.com>=
:
>>>>
>>>> There has been interest in an image based software updater in Yocto Pr=
oject. The proposed solution for a image based updater is to use Stefano Ba=
bic's software updater (http://sbabic.github.io/swupdate). This software do=
 a binary copy, so it is needed to have at least two partitions, these part=
itions would be the rootfs and the maintenance partition. The rootfs it's t=
he main partition used to boot during the normal device operation, on the o=
ther hand, the maintenance will be used to update the main partition.
>>>>
>>>> To update the system, the user has to connect to device and boot in th=
e maintenance partition; once in the maintenance partition the software upd=
ater will copy the new image in the rootfs partition. A final reboot into t=
he rootfs it is necessary to complete the upgrade.
>>>>
>>>> As mentioned before the the software will copy an image to the partiti=
on, so everything in that partition will be wiped out, including custom con=
figurations. To avoid the loss of configuration I explore three different s=
olutions:
>>>> 1. Use a separate partition for the configuration.
>>>> a. The pro of this method is the partition is not touched during the u=
pdate.
>>>> b. The con of this method is the configuration is not directly in root=
fs (example: /etc).
>>>>
>>>> 2. Do the backup during the update.
>>>> a. The pro is the configuration is directly in rootfs.
>>>> b. The con is If the update fail most likely the configuration would b=
e lost.
>>>>
>>>> 3. Have an OverlayFS for the rootfs or the partition that have the con=
figuration.
>>>> a. The pro is the configuration is  "directly" in rootfs.
>>>> b. The con is there is need to provide a custom init to guarantee the =
Overlay is mounted before the boot process.
>>>>
>>>> With the above information I'm proposing to use a separate partition f=
or the configuration; this is because is more reliable and doesn't require =
big changes in the current architecture.
>>>>
>>>> So, the idea is to have 4 partitions in the media:
>>>> 1. boot. This is the usual boot partition
>>>> 2. data. This will hold the configuration files. Not modified by updat=
es.
>>>> 3. maintenance. This partition will be used to update rootfs.
>>>> 4. rootfs. Partition used for normal operation.
>>>
>>> That's what we currently have implemented and running in field for a wh=
ile with a small difference:
>>>
>>> 1) We don't use Stefano Babic's software updater, but an own script whi=
ch deals with initial software flash and later update similar - https://git=
hub.com/rdm-dev/meta-jens/tree/jethro/recipes-rdm/prd
>>> 2) We have integrated the updater with an update-service which can down=
load the new image and install based on a manifest (signature support comes=
 with next update) - https://github.com/rdm-dev/meta-jens/tree/jethro/recip=
es-rdm/system-image // http://www.netbsd.org/~sno/talks/nrpm/Moo-at-System-=
Image-Update.pdf
>>> 3) We use
>>>
>>> boot
>>> rootfs
>>> maintfs
>>> data
>>>
>>> This layout allows us to extend data to fit the entire storage with kno=
w sizes for boot, rootfs and maintfs
>>>
>>> 4) Overlayfs with all serices is implemented (Update-wise, when coming =
from 3.10 to 3.18 or coming from 3.0 with unionfs to overlay ...) - https:/=
/github.com/rdm-dev/meta-jens/tree/jethro/recipes-core/initoverlay
>>>
>>> Feel free to use that solution if you want.
>
>> Am 30.11.2015 um 17:54 schrieb Daniel. <danielhilst@gmail.com>:
>>
>> Hi,
>>
>> Hey Jen, I was looking for an image upgrade solution and factory reset
>> solution using overlayfs. The idea have two partitions one read-only
>> with the factory image, other to hold the changes that were made by
>> time. The factory reset feature should be triggered by a hided button
>> that can be pressed with help of a clips. I was thinking in using an
>> init ram disk to wipe out the rw partition, making the rootfs clean as
>> after an image installation. The upgrader tool shold re-flash a new
>> image to rootfs. Old rootfs is lost. The configuration changes that
>> have been holded by overlayfs should be wiped-out too, I didn't think
>> about that, is something to take in account.
>>
>> Are you using overlayfs? How is it going? What difficulties you have fou=
nd?
>
> Yes, we do. All difficulties we'd found are solved in referred initoverla=
y
> recipe. Maybe one fine I write a blog post regarding that topic ;)
>
>> Other solution whould be using Smart package manager to upgrade the
>> rootfs, but this doesn't attend my need for factory-reset.
>
> How does that fit into an ro rootfs?
It doesn't. If I choose this aproach I'll need an rw rootfs,
>
>> Please tell me more about your experience with overlayfs :)
>
> It's more stable than unionfs. There was little effort updating
> systems from 3.10 with overlay patch to 4.1 with overlay builtin
> kernel (work dirs must be created - https://github.com/rdm-dev/meta-jens/=
blob/jethro/recipes-core/initoverlay/initoverlay/migrate2overlay.sh#L28-L30=
)
I'm using 3.10 kernel, the overlayfs is supported as a patch for this
version of kernel? I'll take a look. Thanks for the reply
>
> Cheers
> --
> Jens Rehsack - rehsack@gmail.com
>

Regards,

- dhs


--=20
"Do or do not. There is no try"
  Yoda Master

