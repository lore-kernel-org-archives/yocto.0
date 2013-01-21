Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32AEBE00496
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 14:56:44 -0800 (PST)
Message-ID: <50FDC60D.6010109@communistcode.co.uk>
Date: Mon, 21 Jan 2013 22:49:49 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130109 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5BEFD653CA8A8D47AA194ED30AB5968C36D6FA@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C36D6FA@GV1HQPEX03.babgsetc.pvt>
Subject: Re: Adding ALSA to the Yocto SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 Jan 2013 22:56:44 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 01/21/13 21:27, Patrick Turley wrote:
> I've been working on re-targeting some code from a vendor's board to our own board.
>
> For libraries and other low-level code, everything's been fine. For test applications, I'm running into a dependency on the header file alsa/asoundlib.h, which is obviously part of ALSA.
>
> I've been building our SDK with:
>
>      bitbake meta-toolchain-sdk
>
> This gives us most everything we need, but it does *not* include header files and libraries for ALSA. That actually seems perfectly reasonable to me -- not everyone needs ALSA support in their applications, so the *default* SDK shouldn't be burdened with that.
>
> We *do* need it. As I see it, there are two possibilities:
>
> 1) There's something I can do that will cause OE/Yocto to include ALSA header files in the SDK I produce. If that's the case, can you tell me what I need to do?
>
> 2) The ALSA header files aren't *supposed* to be in the SDK -- I'm supposed to be delivering them to the compilation process in another way. If that's the case, can you tell me what I need to do?
>
>
> Other items of note…
>
> -- Executing "bitbake alsa-lib" *did* put the expected files within our sysroot (under tmp/sysroots). Even so (as we intuitively expected) executing "bitbake meta-toolchain-sdk" afterward did *not* put them into the SDK. We conclude that having a package built and available for the SDK doesn't necessarily get it into the SDK.
>
> -- Adding ALSA to our image also caused the correct files to end up in our sysroot but, again, nothing appeared in the SDK. We conclude that the contents of the image do *not* dictate the contents of the SDK.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Patrick,

I'm sure someone very knowledgeable wull be about soon. But if you're 
running a fairly recent build then you will be able to execute:

bitbake your-image -c populate_sdk

which will build a custom sdk which will match the libs and files on in 
'your-image' exactly.

meta-toolchain-sdk is an odd beast, as it is not related to anything 
apart from being a generic toolchain with some base libs included. I 
also fell into this trap, in order to get a custom sdk which you can 
build like this, you must copy the meta-toolchain-sdk image and 
add/remove packages as you would in a target image.

Hope this helps!
Regards,
Jack.

