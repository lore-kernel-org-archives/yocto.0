Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70AD5E01206
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 03:03:44 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id m6so90138oag.18
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 03:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=R2rZxhaZ/5zOaCYtzK1joxMsC09Z8ORUQpODLUVCvxY=;
	b=cOQQ0O+VjiZMLRrQw4J4rAfq/Woc1NRdgdswDji2UKgKcrZjatHp6AXfsN2Ok04pWb
	aaWIqSnPysvyMnwgFkxu5m8Sf0AnsZdWsWaystFBPU9877dmOu1w8Vut+Upc9tWfB0Hx
	WmK614+bcqciqJwlJr3vea3hLJazmOADvp/0nuAqxzb+boqM1Csr4KlTvpy6MBpn9elI
	G1edyQkQyzDzRQe4TspUqRBettV2ceh/RwFAboqwJDsRc2E9cK9mP/JXE7asjiumZRuk
	bjnvQo/313zNiXoB4A9qEEVstpUrHFELjyIFOe3F8fUxPXUJBSWwe7DOvQ6EwwANOrv6
	wIKA==
MIME-Version: 1.0
X-Received: by 10.182.143.5 with SMTP id sa5mr1479836obb.80.1378289024100;
	Wed, 04 Sep 2013 03:03:44 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Wed, 4 Sep 2013 03:03:44 -0700 (PDT)
In-Reply-To: <CAFyqS9r=urMtznxZphVbnKEHiOrPVBGDtVFH1a8hisY2rcqrDQ@mail.gmail.com>
References: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
	<CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
	<5226FF30.9010000@vtkloud.com>
	<CAFyqS9r=urMtznxZphVbnKEHiOrPVBGDtVFH1a8hisY2rcqrDQ@mail.gmail.com>
Date: Wed, 4 Sep 2013 12:03:44 +0200
Message-ID: <CAFyqS9pRok8XEurH+r0Z6jTNiqADML1b1+xmPRzY49WMjVc6ww@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: JC <jc@vtkloud.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libtool problem?
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
X-List-Received-Date: Wed, 04 Sep 2013 10:03:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2013 at 11:56 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> On Wed, Sep 4, 2013 at 11:36 AM, JC <jc@vtkloud.com> wrote:
>> On 04/09/2013 11:24, Hans Beck=E9rus wrote:
>>>
>>> On Wed, Sep 4, 2013 at 9:53 AM, Hans Beck=E9rus <hans.beckerus@gmail.co=
m>
>>> wrote:
>>>>
>>>> Hi. I recently discovered that our populated SDK can not properly
>>>> build much at all :(
>>>> libtool complains about .la files that have been moved and not being
>>>> able to find dito.
>>>> The rootfs builds fine however. What I did noticed was that in our .la
>>>> files we get lines like this:
>>>>
>>>> dependency_libs=3D' =3D/usr/lib/libxcb.la =3D/usr/lib/libXau.la
>>>> =3D/usr/lib/libXdmcp.la'
>>>>
>>>> Is that '=3D'-sign really supposed to be there? Is that why many build=
s
>>>> fails to properly locate the .la files?
>>>>
>>> The '=3D'-sign is still a mystery to me. But it does not seem to matter
>>> much.
>>> If I configure my packages (built from the SDK toolchain) using
>>>
>>> '--with-libtool-sysroot=3D/home/toolchain/sysroots/cortexa9-vfp-poky-li=
nux-gnueabi/'
>>> it works! But should that really be needed? Is the path to be used by
>>> libtool not supposed to be automatically resolved to point at the
>>> toolchain sysroot in cross-compilation environment?
>>
>>
>> In my case '--with-libtool-sysroot' is correctly resolved by the SDK set=
up,
>> but ./configure complains it does not recognize it, so I end up not bein=
g
>> able to test generated (dynamically linked) binaries. The common "hello
>> world" template says it cannot find ld-linux, and indeed it's in the pat=
h of
>> libtool-sysroot.
>>
>> Googling it did not helped me to resolve the issue :(
>>
> Yes, in my case the script sourced also resolves the path correct to
> CONFIGURE_FLAGS, but that is not automatically used by a generated
> configure script is it!? I guess that is why I need to add it manually
> each time. You should not to do that, or?
>
According to generated 'configure' the option should not be needed.

  --with-libtool-sysroot=3DDIR Search for dependent libraries within DIR
                        (or the compiler's sysroot if not specified).

So, if --with-libtool-sysroot is not set it should pick it up from
whatever the compiler is using.
That does not seem to work :(

>> Jay
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

