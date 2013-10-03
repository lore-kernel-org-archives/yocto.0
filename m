Return-Path: <joe@deserted.net>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEDB7E01694
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2013 17:57:49 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id aq17so3890551iec.27
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2013 17:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type:content-transfer-encoding;
	bh=c5eEisHl55snZgbfe7Be3PdXpKvdL6t1ZxY0fB8EcMk=;
	b=kR2M8guxfn1Q05TS4pN1yMqhQC/NwpaFpIbg84tww+hqY4LLdOj2baHVaPdT5WDHHc
	ss9v6PCkrlixok2pRWfv072mNDkoiq5rscElR1UbPZKTHBqohQadXDyHIQsx5M3ojPa5
	HWOvqA9lBnkqAjVPvO2KmymfNAGnRHSe+hVjUPizopjZbQFDafFNIR/S2MxK2O3ORqAl
	Lcf4Yw4Bu5MAwu02YWgnleyk4y4ytCQVxwbkkSgvev92Y587T45oNGxA+V3rWe3Q06Zf
	GGFZJMG0uM9IB3xEBs7+FeDdLsDgMTdgZ9VEowkUfyXzFzCPXkfTFU2aeIwxS0nCbjwY
	SLVA==
X-Gm-Message-State: ALoCoQlB3YFxC8K8j9bqhaIcUB6kzPUyUWGm/uULkvVhQht54dguI0xL7ISHLuEwvfS5dbJfuRBM
MIME-Version: 1.0
X-Received: by 10.50.1.84 with SMTP id 20mr40237igk.17.1380761869184; Wed, 02
	Oct 2013 17:57:49 -0700 (PDT)
Received: by 10.42.152.71 with HTTP; Wed, 2 Oct 2013 17:57:49 -0700 (PDT)
Date: Wed, 2 Oct 2013 20:57:49 -0400
Message-ID: <CANBf+V1KsPcfEaJUL8fxyrk_V+bBuZ2HFSHkSy8sYMEkqsrw0A@mail.gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-selinux] Updated meta-selinux -- master (was: master-next)
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
X-List-Received-Date: Thu, 03 Oct 2013 00:57:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Philip / Mark / all,

Earlier today I updated master with a rebased version of what was in
master-next.  I apologize for not sending this out earlier.  Today's
been a bit turbo.

This update should have been a fast-forward update to master, so if
that's not the case, or if the updates cause any unexpected behaviour,
please let me know.

The only outstanding issue I'm aware of right now is basically what I
related in my earlier mail, but less severe.  The initial boot and
auto-relabelling hums along fine.  The second boot produces a few
issues about /dev/vcs* and /dev/fb* having their label applications
denied due to an invalid context.  Logging in to the system and
manually doing a restorecon on those devices as root/secadm_r/secadm_t
applies the correct label until the next boot.  Then you're back to
the default labels and have to restore them again.

The current state of affairs works around the more serious problem I
mentioned previously by not using the udev device cache.  I'd like to
fix that, but since it was the approach used in master previously, I
didn't think it was worth holding off on the update just for that.

-J.

On Sat, Sep 28, 2013 at 3:46 PM, Philip Tricca <flihp@twobit.us> wrote:
> On 09/27/2013 03:58 PM, Joe MacDonald wrote:
>> [[yocto] [meta-selinux] Updated meta-selinux -- master-next] On 13.09.19=
 (Thu 13:41) Mark Hatle wrote:
>>
>>> I have updated meta-selinux, and placed the update into the 'master-nex=
t' branch.
>>>
>>> This was locally tested with Poky as of commit
>>> 853bc53cd58a621918f0e5ce662dba263d1befb4.
>>>
>>> Note, when building the core-image-selinux, the internal refpolicies
>>> cause a lot of failures.  I'm not an expert on how this should be
>>> configured, so I'm looking for help/patches from others.
>>>
>>> If you know of any other additional patches that should be applied,
>>> or are able to help with the refpolicies, please let me know!
>>>
>>> Thanks!
>>> --Mark
>>
>> I just pushed a new (non-ff!) update to master-next.  It includes the
>> following:
>>
>>    - Mark Hatle: policycoreutils: avoid shell for checking target-specia=
l actions
>>    - Mark Hatle: setools: Uprev setools
>>    - Mark Hatle: README: Update status
>>    - Mark Hatle: libcap-ng: Uprev libcap-ng
>>    - Mark Hatle: audit: Uprev to audit 2.3.2
>>    - Mark Hatle: swig: Update to latest swig from meta-openembedded
>>    - Mark Hatle: python-ipy: Uprev to latest 0.81 version
>>    - Mark Hatle: distro/*: Update the distro files
>>    - Christopher Larson: layer.conf: avoid unnecessary early expansion w=
ith :=3D
>>    - Qiang Chen: selinux: remove reference to locale env files from logi=
n
>>    - Mark Hatle: linux-yocto: Add support for the 3.10 kernel
>>    - Xin Ouyang: kernel: add BBAPPEND for linux 3.10
>
> Can I put in a request to cherry-pick the 3.10 kernel update down to mast=
er? This is independent from all of the tools / policy updates and it would=
 be very convenient for those of us building against master oe-core. As of =
now a build of meta-selinux master against oe-core master results in an ima=
ge that will panic on boot as linux-yocto builds the 3.10 kernel and the se=
linux distros don't prefer a kernel with an available selinux config (3.8 i=
s the most recent).
>
> Thanks,
> - Philip
>



--=20
Joe MacDonald
:wq

