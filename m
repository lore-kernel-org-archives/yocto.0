Return-Path: <bewithsathish@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16403E006B5
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 21:18:09 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by dadi14 with SMTP id i14so3551400dad.35
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2011 21:18:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lpcSBVdf71PgvUb2SJRtu5r6uyJjLyAAZKZgkZR6D6s=;
	b=r+LhMZXLoKSvh+0QMZ7kOZnn0OBlf6kL8DzCxXRvpskTAuVxxmIpjh+fQ826qe075D
	6ghGXihBbz7BqMqML54S30WstumLiN9XmjoXwH/PKpv2ejydG8zz1N+GJxRJoNs3Ykmc
	C70aU/FbhK26UWuxpAPgKxTY/JYC6OU8QROak=
MIME-Version: 1.0
Received: by 10.68.73.7 with SMTP id h7mr3334313pbv.57.1323407888788; Thu, 08
	Dec 2011 21:18:08 -0800 (PST)
Received: by 10.68.48.227 with HTTP; Thu, 8 Dec 2011 21:18:08 -0800 (PST)
In-Reply-To: <CANJvwR9dvuxk8Mz_67igs2cge5LY=mi4PnnaKocQSmPF3kL95Q@mail.gmail.com>
References: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
	<4EE132C5.6040007@linux.intel.com>
	<CANJvwR-GVN+=JaS29oxmGM6mr-D6ncv+vsyVT2OaT+vOEaU8qA@mail.gmail.com>
	<4EE1957E.1060506@linux.intel.com>
	<CANJvwR9dvuxk8Mz_67igs2cge5LY=mi4PnnaKocQSmPF3kL95Q@mail.gmail.com>
Date: Fri, 9 Dec 2011 10:48:08 +0530
Message-ID: <CANJvwR9Xgk9sU4vANMdTx8PpFG3cg7a+KgDFE6fN64mrsoJniQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 09 Dec 2011 05:18:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Dec 9, 2011 at 10:37 AM, Sathishkumar Duraisamy
<bewithsathish@gmail.com> wrote:
> On Fri, Dec 9, 2011 at 10:28 AM, Joshua Lock <josh@linux.intel.com> wrote:
>> On 08/12/11 20:52, Sathishkumar Duraisamy wrote:
>>> Hi,
>>>
>>> I migrating from Openembedded to yocto project and using Beagleboard
>>> as playground.
>>>
>>> On Fri, Dec 9, 2011 at 3:27 AM, Joshua Lock <josh@linux.intel.com> wrote:
>>>>
>>>> On 05/12/11 10:35, madeeha javed wrote:
>>>>> I an using Yocto Edison. My machine configuration is beagleboard. And
>>>>> when I launch hob and Bake. I get a message that Output Image Type is
>>>>> not set.When I Edit-> Preferences, I see that jffs2 and tar.bz2 are
>>>>> set. And even if I select a different type, the message keeps is
>>>>> there.
>>>>
>>> I too faced similar problem for hob.
>>>
>>>> Madeeha,
>>>>
>>>> I'm not able to replicate this issue. Have you modified any of the
>>>> configuration files by hand? The three key files in build/conf are
>>>> hob-post.conf, hob-pre.conf, local.conf
>>>
>>> Please find these files in the attachment.
>>
>> Did you forget the attachment? Or did the mailing list strip it?
>
> Sorry, I forget to attach.
>>
>>>
>>>>
>>>> It's possible you've hard-assigned the variable in there.
>>>>
>>>> If you can provide more information I can try and replicate. A copy of
>>>> the above configuration files would be useful.
>>>
>>> In openembedded, I see the some lines like this
>>>
>>> # Add the required image file system types below. Valid are
>>> # jffs2, tar(.gz|bz2), cpio(.gz), cramfs, ext2(.gz), ext3(.gz), ext4(.gz|.bz2),
>>> # squashfs, squashfs-lzma
>>> IMAGE_FSTYPES = "jffs2 tar"
>>>
>>> which is moved to hob-post.conf, which may causing the problems I hope.
>>

I forget to say, in bash terminal, it works fine. In hob only it
causing the issue.

-- 
Regards,
Sathishkumar D
http://flowersopenlab.weebly.com/

