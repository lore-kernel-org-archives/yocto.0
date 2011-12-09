Return-Path: <bewithsathish@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 387A1E006DD
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 21:07:20 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pbcc13 with SMTP id c13so296025pbc.35
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2011 21:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XLo4EPGHdVg13b7ejdQRs4FgaziVMVSEww06a/kGivE=;
	b=FnYhka1HibMd9EH4b54cHnlZSNgMKtWyhdw5giVbnwArpKrpcNpTxzdzhiztTD0z/p
	oDgieuYO5eG1144IGJDUVuJhU9SVwRZQj9B29G/3QZea0xX4/6YEtwKPPNxd+nxBYW2R
	xHltkhxw0M1SfUB5+rEpdw/ShqliU6f9AatiA=
MIME-Version: 1.0
Received: by 10.68.73.162 with SMTP id m2mr3205549pbv.23.1323407239787; Thu,
	08 Dec 2011 21:07:19 -0800 (PST)
Received: by 10.68.48.227 with HTTP; Thu, 8 Dec 2011 21:07:19 -0800 (PST)
In-Reply-To: <4EE1957E.1060506@linux.intel.com>
References: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
	<4EE132C5.6040007@linux.intel.com>
	<CANJvwR-GVN+=JaS29oxmGM6mr-D6ncv+vsyVT2OaT+vOEaU8qA@mail.gmail.com>
	<4EE1957E.1060506@linux.intel.com>
Date: Fri, 9 Dec 2011 10:37:19 +0530
Message-ID: <CANJvwR9dvuxk8Mz_67igs2cge5LY=mi4PnnaKocQSmPF3kL95Q@mail.gmail.com>
From: Sathishkumar Duraisamy <bewithsathish@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: HOB usage
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
X-List-Received-Date: Fri, 09 Dec 2011 05:07:20 -0000
X-Groupsio-MsgNum: 3750
Content-Type: multipart/mixed; boundary=f46d041b47186bb4a104b3a1c292

--f46d041b47186bb4a104b3a1c292
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Dec 9, 2011 at 10:28 AM, Joshua Lock <josh@linux.intel.com> wrote:
> On 08/12/11 20:52, Sathishkumar Duraisamy wrote:
>> Hi,
>>
>> I migrating from Openembedded to yocto project and using Beagleboard
>> as playground.
>>
>> On Fri, Dec 9, 2011 at 3:27 AM, Joshua Lock <josh@linux.intel.com> wrote:
>>>
>>> On 05/12/11 10:35, madeeha javed wrote:
>>>> I an using Yocto Edison. My machine configuration is beagleboard. And
>>>> when I launch hob and Bake. I get a message that Output Image Type is
>>>> not set.When I Edit-> Preferences, I see that jffs2 and tar.bz2 are
>>>> set. And even if I select a different type, the message keeps is
>>>> there.
>>>
>> I too faced similar problem for hob.
>>
>>> Madeeha,
>>>
>>> I'm not able to replicate this issue. Have you modified any of the
>>> configuration files by hand? The three key files in build/conf are
>>> hob-post.conf, hob-pre.conf, local.conf
>>
>> Please find these files in the attachment.
>
> Did you forget the attachment? Or did the mailing list strip it?

Sorry, I forget to attach.
>
>>
>>>
>>> It's possible you've hard-assigned the variable in there.
>>>
>>> If you can provide more information I can try and replicate. A copy of
>>> the above configuration files would be useful.
>>
>> In openembedded, I see the some lines like this
>>
>> # Add the required image file system types below. Valid are
>> # jffs2, tar(.gz|bz2), cpio(.gz), cramfs, ext2(.gz), ext3(.gz), ext4(.gz|.bz2),
>> # squashfs, squashfs-lzma
>> IMAGE_FSTYPES = "jffs2 tar"
>>
>> which is moved to hob-post.conf, which may causing the problems I hope.
>
> Anywhere you set with = is a 'hard' assignment which we cannot override.
>
> Several of hobs settings are in hob-post.conf, if they have already been
> hard assigned in a configuration file which is parsed earlier we cannot
> override it.
>
> If you set the IMAGE_FSTYPES with ?= setting them from the GUI should world.
>
> Please be aware we're working to resolve such issues for hob in Yocto 1.2.
>


-- 
Regards,
Sathishkumar D
http://flowersopenlab.weebly.com/

--f46d041b47186bb4a104b3a1c292
Content-Type: application/x-gzip; name="hob-confs.tar.gz"
Content-Disposition: attachment; filename="hob-confs.tar.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gvyqcn090

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

--f46d041b47186bb4a104b3a1c292--
