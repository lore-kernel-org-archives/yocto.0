Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AF66E014E0
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 11:58:58 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id m6so928687wiv.13
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 11:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=jE5DBnv8Y+ysnx3S2BmgdY8GQRJ9gi8BSlabGS8P0FY=;
	b=NDlr2H92bf/EU4tt+VeRMMD3lHy4ORbBDMKBoNKWaFYbvhOu2ZBL2qDoa33hNdAV/z
	EsS27NmnimEqR+E1gQwTiONUpUG9USOGWFm+RY+7tZDWWUlym124DLEh1U3TVzMrULo3
	dscSFZHutsO4lmqrk2BIzPbE7G0rjG4Jjmo4EeNnCvi0uFxVeS7AJgpA6g0uAl1tB6N0
	eRGt4cGu83ljvqofMdUjAp2XBSnnYG5oCwoSK3oQ73ZbkG4TXZFRb6hQpAVXw4BZ9nLa
	YOylpYFYYTKrVXdmmiEUIn0UkUU7Uf90RqpBjOWEyd/p+dCMSKVpptvFZAVJD/e98Zl4
	03/A==
MIME-Version: 1.0
X-Received: by 10.180.73.206 with SMTP id n14mr3191691wiv.27.1367521137318;
	Thu, 02 May 2013 11:58:57 -0700 (PDT)
Received: by 10.194.5.132 with HTTP; Thu, 2 May 2013 11:58:57 -0700 (PDT)
In-Reply-To: <CAK18fxH+vfma5BuDfcLB7AdoJX+GjppYs83NSDC4=zh3O_OY4w@mail.gmail.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
	<CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
	<CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
	<518292E5.9030101@mlbassoc.com>
	<CAK18fxH+vfma5BuDfcLB7AdoJX+GjppYs83NSDC4=zh3O_OY4w@mail.gmail.com>
Date: Thu, 2 May 2013 14:58:57 -0400
Message-ID: <CAHUNapQw_-ZZBicJQCSjUqe9ZpCwMJBxvqmrLTjewnsJLs=uXg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Thu, 02 May 2013 18:58:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 2, 2013 at 12:45 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>> On 2 May 2013 16:12, Trevor Woerner <twoerner@gmail.com> wrote:
>>>> - a separate tool (which will probably need to be run as root) is used
>>>> to actually format/create the SD device (using, say, sfdisk for
>>>> automation) this way the last partition can be specified as "use the
>>>> rest of the disk"
>>>> - this tool unpacks the requested/required {tar|rpm|deb|ipk}s onto the
>>>> SD device (some of which can come from outside the Yocto build system,
>>>> e.g. from using the SDK); this device already has its
>>>> formatting/partitions ready
>>>> - this tool could also handle setting up serial numbers, IP addresses,
>>>> etc
>>>> - this tools also sets up the bootloader (if required)
>>>
>>>
>
> It always makes sense to create images and deploy it to different file
> types. I don't know why you don't think this is a feature the build system
> should handle.

If you ask the Yocto build system to generate an image for you, there
are no knobs you can tweak :-)

You are "stuck" with a basic FAT+EXTx image, which is all it can
generate for you since it needs to generate this image for you using
tools that don't require root privileges (parted, dd, mcopy...) .
Oddly enough, in some cases the two partitions aren't required;
everything could be done in one, but you get two anyway, because it's
easier to do it that way without root.

What if your product wants/needs a separate "/data" partition that is
2GB in size, and formatted with reiserfs? Is there a knob for that?
What if you want several separate partitions with varying formats? Is
there a simple knob for that? (Honestly I don't know, my understanding
is "no", you only get 2, but maybe someone will surprise me with
"yes"?)


In addition to what I've talked about above, there is a larger
"production" issue that would tie in better with that I propose rather
than with the way things are currently done. You've created your
one-off prototype and it works great. Now you want to ramp up
production and pump out 100's of these things a week. What if each of
your devices needs a unique serial number, or a unique IP address? Are
you really going to try to generate 100's of unique images and hope
your production/manufacturing team "gets it right"? Doing something
like this is not something the build system should handle, this is a
post-build activity.

The tools we have now are fantastic for someone doing one-off
prototypes in their basement, but they don't support the
post-development product phase very well (in my opinion!).

