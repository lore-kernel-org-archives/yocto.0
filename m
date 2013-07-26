Return-Path: <ashcharles@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA3DE013DE
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 15:22:56 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pb11so350240veb.25
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 15:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=nES6Tl2hsyGHyul6iztr9K2r3InVRRej2TbBv2PaWYw=;
	b=Rb0pvRVcvems0/9SRoY/VaFvUEEDxirph1DeElsUjlCI/rHoszfFyd8Qh+lKtoaW9Y
	TwCgNCxLTdbOZYUJwZi9nrjf0Gc8TiO4zHlubZKD+4uzIKN9nMNiIUO/zbaG/S3dFzkT
	AZMXQmEIvVUNgl2ZmpDGjlVAgXDw33cpOVh7NeaYzoYPz5khun9l/zsN2zLMxXTF0b5E
	QVk1o7GkJp/qxKAbmTy1AGCQZ4AhaVaHByAhyIKE//WgS4OP1/4LFajBwAXoiGJIdvoA
	ZZ/hJWHk9MP5+Wxub/eY7MIKxoyfsxw8Gn2URI500aiZ4iWr/CmllHvx5KeLN6IytvM9
	bTtg==
X-Received: by 10.58.118.200 with SMTP id ko8mr21592285veb.94.1374877376075;
	Fri, 26 Jul 2013 15:22:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.180.133 with HTTP; Fri, 26 Jul 2013 15:22:25 -0700 (PDT)
In-Reply-To: <1500336.365Z9OCVSV@helios>
References: <CAK8F28k_8VR0qdC8JY2W020gx4EA4fGpw0yesodnLJ6j5WfT6A@mail.gmail.com>
	<1500336.365Z9OCVSV@helios>
From: Ash Charles <ashcharles@gmail.com>
Date: Fri, 26 Jul 2013 15:22:25 -0700
Message-ID: <CAK8F28kBgAxR4gauo8F1L9RyOYa4s_vU9Sq+=jOZbPpbm=D5qg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Configuring Channels for Smart PM
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
X-List-Received-Date: Fri, 26 Jul 2013 22:22:59 -0000
Content-Type: text/plain; charset=UTF-8

Hi Paul,

Thanks very much for your help.  This worked like a charm for me.

For future people searching:
- this didn't work (don't know why):
https://github.com/gumstix/meta-gumstix-extras/blob/02709f4fc5db1c4be6e5fc77e5e9630749a6daf7/recipes-devtools/python/python-smartpm/python-smartpm_1.4.1.bbappend

- this worked:
https://github.com/gumstix/meta-gumstix-extras/commit/acff007afffb19269e21bfd4cc1398fe23f00160

Hurrah!
--Ash

On Thu, Jul 25, 2013 at 2:24 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Ash,
>
> On Wednesday 24 July 2013 18:59:30 Ash Charles wrote:
>> I'm looking to use a bbappend to add a repository/channel that the
>> smart package manager can use out of the box.  For zypper, this was
>> just a question of adding a configuration file to the recipe.
>>
>> How might I preconfigure Smart?  The only way I've come up with so far
>> is a postinst 'smart channel --add....'
>
> It does seem like Smart is geared more to configuration via the command line
> rather than editing the configuration file directly.
>
> One approach you could take would be to add a shell function to your image
> recipe (or some class that multiple image recipes can inherit) that adds the
> feeds, and trigger that from ROOTFS_POSTPROCESS_COMMAND; this would add the
> feeds to your image when the image is generated. Something like this:
>
>
> add_custom_smart_config() {
>         smart --data-dir=${IMAGE_ROOTFS}/var/lib/smart channel --add ... -y
> }
>
> ROOTFS_POSTPROCESS_COMMAND += "add_custom_smart_config ; "
>
>
> It would be nice to have something built-in for this. I'll add it to my todo
> list.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

