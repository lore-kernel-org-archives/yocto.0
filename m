Return-Path: <andreas2025@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9012E0077C
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 12:22:08 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hm4so1270893wib.0
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 12:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=RPUHE1oMj3EM5UH2yoKUUZQ0WzmRE8DUMo3UQM/Ucpo=;
	b=rZgfNdCYCRaK+dz706C/XDXp/rdCq1smjprOOKPyyin7dOuXjLqO0QwxRyAD+qFYU9
	mzEsM4Eaa3+lCSiAMC4pWJonWxs0/SpR8nn2N1jtA+loM07VsApQPWxnYE2fp4Y4mDaw
	r9pcUXdDwLbHbhH3Pjuq4NrSq6IaRjUVyTkV7hGapAsGBfxJ7EWk8OhOlMy46WKIp74a
	2E4O33apFnSawFusRgYyq8GEr3ZmImGd5PUDdy5SvgA/KraFApGFIYEzkY+DdrcX9qjR
	eSGTcxkkAVzoOKSM8KN7Ut4WzwBtjn+ninMllB9lgbB8cWTwiOoFeH/dXa3XsXpKHY8N
	uhtA==
MIME-Version: 1.0
X-Received: by 10.180.21.225 with SMTP id y1mr4202480wie.24.1394565726786;
	Tue, 11 Mar 2014 12:22:06 -0700 (PDT)
Received: by 10.216.81.129 with HTTP; Tue, 11 Mar 2014 12:22:06 -0700 (PDT)
In-Reply-To: <531F5F68.1030207@windriver.com>
References: <CAAVaN8x28LCRC7Oz+vdovFk9EifMd2eGdkaUsymi1GRaGhOEsg@mail.gmail.com>
	<531F5F68.1030207@windriver.com>
Date: Tue, 11 Mar 2014 19:22:06 +0000
Message-ID: <CAAVaN8zeR1wS4qKqz9L6bti9RP=5isvKz24gbnXHkaT2JU5qaQ@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Working with a git'ed kernel on the server
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
X-List-Received-Date: Tue, 11 Mar 2014 19:22:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thank you,

I've just noticed my bb file has:

SRCREV_pn-${PN} = "${AUTOREV}"

So it should be ok?


On Tue, Mar 11, 2014 at 7:09 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 14-03-11 03:07 PM, Andy Ng wrote:
>>
>> Hello list,
>>
>> I have a git'ed kernel on a server. When I do make "push" changes to the
>> kernel
>> and then I try bitbake core-image-minimal on my local host, the build
>> process does not pick up the
>> changes from the server. I just do bitbake virtual/kernel -c cleanall
>> to force it to get my latest kernel from the server.
>>
>> Is there any way to make the recipe to sync to the server every time i
>> make a build?
>
>
> Set your SRCREV to ${AUTOREV}, and you'll get what you want.
>
> Bruce
>
>>
>> Best regards,
>> Andy
>>
>

