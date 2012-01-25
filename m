Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D6B9E0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 09:05:01 -0800 (PST)
Received: by qcsg14 with SMTP id g14so2474974qcs.35
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 09:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=k5c/O4B3xA17Db0xGc8RN67buQMpvuqNeZhqpJ89kO0=;
	b=unHK/3QgOGuZLVYx3ls4ncE3NBQeFyfMeraGpY7y4TF9T6mI4ymfgqa2LArgaS8n3N
	TVxlntXnDDhgO4UP+t5ENButobBudjDuAQxJYMvxxWYaVujP9Ya4ubaWmDNDPF9tVORT
	KM3ZJYC9+FVLMFfeGDrDm225Ta6QGRYfz0fCw=
Received: by 10.229.137.18 with SMTP id u18mr6495632qct.153.1327511100425;
	Wed, 25 Jan 2012 09:05:00 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.235.211 with HTTP; Wed, 25 Jan 2012 09:04:39 -0800 (PST)
In-Reply-To: <165969514.8Xnp3ebGHF@helios>
References: <1327402068.2521.8.camel@babel.joshhome>
	<1782182.Md7PmFZxKk@helios>
	<1327469596.2543.15.camel@babel.joshhome> <165969514.8Xnp3ebGHF@helios>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 25 Jan 2012 10:04:39 -0700
X-Google-Sender-Auth: EWT85XvwVlCpROYs9erdGeRMffM
Message-ID: <CABcZAN=NaTDrOGvpjRpg8mTqsvv4z42zikLsPBVVHJjHSd0m0w@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: overriding a class in custom layer
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
X-List-Received-Date: Wed, 25 Jan 2012 17:05:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 25, 2012 at 8:56 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wednesday 25 January 2012 11:03:16 Joshua Immanuel wrote:
>> On Tue, 2012-01-24 at 16:17 +0000, Paul Eggleton wrote:
>> > I'd also say, what is in the classes is intended to work for everyone,
>> > so if there's something in the core classes that is not working well
>> > for your situation we'd really like to hear about it - hopefully we
>> > can incorporate whatever changes you need and you can avoid having to
>> > overlay the entire class.
>>
>> At present when we build an image, everything gets under one partition.
>> For my use case I need two images (denoting different partitions)
>> =C2=A0 =C2=A0 =C2=A01. rootfs image (mount point: '/', mounted as ro)
>> =C2=A0 =C2=A0 =C2=A02. data partition image (mount point: say '/data' mo=
unted as rw)
>>
>> While generating the image, I construct the /etc/fstab file manually by
>> representing filesystems by their uuids (generated using uuidgen). So,
>> to set this uuid in generated image I try to override the
>> image_types.bbclass and using tune2fs I set the uuid for the generated
>> images.
>
> AFAIK we don't already have the ability to do this, but it sounds very us=
eful.
> If it can be something that can be enabled and configured relatively easi=
ly
> then it would be great to have in OE-Core as I can imagine others making =
use
> of it.


That does sound nice. Actually, it'd also be nice to come up with a
declarative way to express info about partitioning in general, which
would ideally result in an automatic split up of the rootfs across
those partitions when appropriate. Hmmm.
--=20
Christopher Larson

