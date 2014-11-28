Return-Path: <yuchankit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01F59E0082F; Thu, 27 Nov 2014 17:43:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuchankit[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31B8AE006EF
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 17:43:43 -0800 (PST)
Received: by mail-wg0-f48.google.com with SMTP id y19so7668532wgg.35
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 17:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=oUrerRufgHfYjvVlYDHaOdE9zfWuIDHikrTDuzU3qL8=;
	b=d6oXpDfrb/7uceDMEIXbQ48hmt21BA6ZH+Gx1X6X4sUA3wb3BXXDcePKx2KbrVMtZ4
	RMg/Jl33Vg60AnU/3imnmiOvMc9YrzqRiCSGIVKnBYbjHVsV1sAZrTM8VajOxGF1lgGn
	kLYjipNpvEzZqXWeM9/5Jh0PQ28o03BW2fjIwhKWSsUfrvEJdaA2dfXe+NkFwt16TBlx
	qw8SkPQGs2iUWWBDdevzCs+J/Dp7B4OUgkqGlJycCp7D6wyT6qsiEKSz0usUYOqeW7m6
	TFMmJEoZ6Qnt/bIhit+uYPDoRtspYMQ3kKWFCqDaUmMhwtRTjjAaZdvKIrrg8El1ocR3
	ZwXw==
MIME-Version: 1.0
X-Received: by 10.194.3.2 with SMTP id 2mr64291944wjy.89.1417139022970; Thu,
	27 Nov 2014 17:43:42 -0800 (PST)
Received: by 10.180.72.208 with HTTP; Thu, 27 Nov 2014 17:43:42 -0800 (PST)
In-Reply-To: <D4365608-70BA-4FF1-AF43-7C8334DA93BF@keylevel.com>
References: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
	<D4365608-70BA-4FF1-AF43-7C8334DA93BF@keylevel.com>
Date: Fri, 28 Nov 2014 09:43:42 +0800
Message-ID: <CANusJLMp8wQXPQrefRpwwNxTh=A0yjAxoS1Svyso=w8fT99Zaw@mail.gmail.com>
From: Chan Kit Yu <yuchankit@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Creating a recipe to create /usr/local
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
X-List-Received-Date: Fri, 28 Nov 2014 01:43:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Chris,

Thank you very much :-)
But it was no good. I still get the same error even with the "install" use.

Here I attach the full recipe just in case I did wrong somewhere:

SUMMARY = "Create /usr/local"
SECTION = "meta-networking"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
#INSANE_SKIP_${PN} = "installed-vs-shipped"

do_install(){
        install -d  ${D}${prefix}/local/
}

Chan Kit



On Fri, Nov 28, 2014 at 5:00 AM, Chris Tapp <opensource@keylevel.com> wrote:
>
> On 27 Nov 2014, at 07:09, Chan Kit Yu <yuchankit@gmail.com> wrote:
>
>> Hi all,
>>
>> I'm not sure if emailing this is the most appropriate way and I
>> apologize in advance if that's not.
>>
>> I have some scripts that require /usr/local to exist in Yocto and
>> therefore I need to a recipe to create /usr/local directory. I tried
>> to accomplish this with a simple recipe but that proved futile.
>>
>> Although bitbaking that particular recipe was fine, trying to include
>> that package in local.conf resulted errors and those errors are
>> gibberish (it listed all the packages inside the image that I was
>> trying to comple) . Here's my simple stupid recipe:
>>
>> SUMMARY= "...."
>> LICENSE = "something...."
>> ...
>> ...
>> INSANE_SKIP_${PN} = "installed-vs-shipped"
>>
>> do_install(){
>>     mkdir -p ${D}/usr/local
>> }
>
> You need to use 'install' rather than mkdir
>
>
>> Is there a better way (or preferably the canonical way) to do this?
>
> Yes, there are some definitions you can use. In your case it would be:
>
>    # Install the 'local' directory to make sure it exists
>    install -d ${D}${prefix}/local
>
>    # Install a file to this location
>    install -f ${WORKDIR}/myfile ${D}${prefix}/local
>
> The available definitions are shown at the top of meta/conf/bitbake.conf in your Poky installation.
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> ----
> You can tell you're getting older when your car insurance gets real cheap!
>

