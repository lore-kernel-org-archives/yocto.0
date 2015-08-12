Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3489FE0071C; Wed, 12 Aug 2015 10:15:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EED4E003D9
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 10:15:03 -0700 (PDT)
Received: by iodv127 with SMTP id v127so10946663iod.3
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 10:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=v1hLdE0qTcNPgJoqIdV33QVs8rBU6HCw2bZqN8Vgmxo=;
	b=Y6SN/L5nOyXkxCICavkM07zFgKt8rQqRXfgz+VZSmYbMbs01v+aMNzJKwETdbPBOC+
	uePfD72zM2UxyYGet5DKRwKgmXAUodrTpaDNv8WJjN/9wsweZNV+W87f987VhsZoo5BW
	08y4CyMnvm8oxwfs8IbZEbvXU5DsVtpUkp++3+zhJBBnEIy0ECm3aqKxUm7qA9WNCiql
	tyFWn6XCMuHMhw1EEZDAh9PbM+EOo32f8efG7rRjFTror13WKh6QrtxvfUUL97sNrMH5
	B8aD8ZLHQbK/0BeMRb2bKiV+NFJFb8tOfTsvGx9WyZpV3pDPx4Ea/hV3CqqwoL9ryMbm
	0Ydg==
MIME-Version: 1.0
X-Received: by 10.107.158.197 with SMTP id h188mr32510304ioe.99.1439399703391; 
	Wed, 12 Aug 2015 10:15:03 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Wed, 12 Aug 2015 10:15:03 -0700 (PDT)
In-Reply-To: <55CB5F4A.9060806@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com> <20150809230528.GL17962@resin>
	<CALbNGRQhDdvVPdA1WHvfZ45WG45JYMYCJaNJTGns5ML5Rg+u6Q@mail.gmail.com>
	<55C85F2E.9080600@osg.samsung.com>
	<55CB5F4A.9060806@osg.samsung.com>
Date: Wed, 12 Aug 2015 19:15:03 +0200
Message-ID: <CALbNGRRU+HT+o7KsK_DDVFGMQgjERyp5ASfHE39YzeaomUxHnQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Wed, 12 Aug 2015 17:15:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 12, 2015 at 4:59 PM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
> Hello,
>
> On 08/10/2015 10:22 AM, Javier Martinez Canillas wrote:
>> Hello Andreas,
>>
>> On 08/10/2015 01:37 AM, Andreas M=C3=BCller wrote:
>>>> Khem definitely has a very good point. Maybe his way of putting it in =
words was
>>>> not that productive. But the core idea was definitely right: I don't w=
ant rpi
>>>> layer to introduce distro features.
>>> Agreed but I still have issues make the changes work
>>>
>>> What I have done to test:
>>>
>>> 1. add
>>> MASK_GPU_INTERRUPT =3D "0x400"
>>> DISTRO_FEATURES_append =3D " vc4-gfx"
>>>
>>> to my local.conf
>>>
>>> 2. put [1] on top of the VC4 patches sent  (this is a WIP patch not
>>> yet finished)
>>> 3. tested running X11
>>>
>
> I tested Andreas' WIP patch under X11 using the core-image-sato image and=
 I
> could reproduce the same behavior. KMS/DRM works when using the modesetti=
ng
> Xorg DDX but no GLES with HW acceleration.
>
>>
>> I did only test with Weston since that is what Tizen uses and not with X=
11.
>> I'll make sure to test with X11 and also include a mesa_%.bbappend for v=
2.
>>
>>> Question: What setting does the trick getting vc4 driver created by
>>> mesa doing the OpenGL work. I see only swrast which is bulls...
>>>
>>
>> I'm not really a graphics person so I'll let Derek to answer this. He is
>> in fact the author of most of these patches and I'm just working on push
>> them upstream.
>>
>
> Derek is on holidays until next week so I tried to dig on this. When runn=
ing
> the glmark2-es2 benchmark I get:
>
> $ glmark2-es2
> libEGL warning: DRI2: failed to authenticate
> ** Failed to set swap interval. Results may be bounded above by refresh r=
ate.
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>     glmark2 2014.03
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>     OpenGL Information
>     GL_VENDOR:     Mesa Project
>     GL_RENDERER:   Software Rasterizer
>     GL_VERSION:    OpenGL ES 2.0 Mesa 10.5.8
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> so as Andreas said, it is using swrast instead of the VC4 hw one. And in =
fact
> by running strace I see that there is a open("/usr/lib/dri/swrast_dri.so"=
,...)
> but /usr/lib/dri/vc4_dri.so is never opened.
>
> I tried bumping the mesa git recipe to use the same sha1 we are using in =
our
> Tizen port but ran into build issues...
>
> But I've reworked the patch series according to your suggestions and I ca=
n post
> a v2 if you want since at least KMS/DRM is working with Andreas' changes =
or do
> you want to first sort out the mesa bits for 3D HW accel before posting a=
 v2?
>
FYI: I managed to get the vc4 driver loaded (should be in my repo
branch vc4-2). With this I get some repeating kernel error messages
(don't have them here). I am sure that I read something about these
messages when preparing vc4 (yes I started similar before you sent
patches).

Hope I have some energy left tonight to check further and let you know...

Andreas

