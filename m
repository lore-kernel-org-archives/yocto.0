Return-Path: <knygar@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA112E006B4
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 08:53:26 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iabz7 with SMTP id z7so994902iab.35
	for <yocto@yoctoproject.org>; Tue, 04 Oct 2011 08:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type:content-transfer-encoding;
	bh=Wavu9whN5W69bRembzP+LkqelWmgTZQAfQ32JHHDvkg=;
	b=fH+6FSfM7J0fcsoYxLdEUk/p6ShJTMcfs69mKTF+T+Vn57YgreQTVBNrmgeOuXMRVC
	DwRFV4m7itOjMh7se5o6DelSCnebSxkiWmKNIy/rjWI/YhiJM8XLUZSVlp3oGZObB1k3
	XmDYkW771X7R4Jb0JbwBMDmMAEVEI9EOodI48=
Received: by 10.231.73.139 with SMTP id q11mr2334412ibj.97.1317743605079; Tue,
	04 Oct 2011 08:53:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.231.34.137 with HTTP; Tue, 4 Oct 2011 08:53:05 -0700 (PDT)
In-Reply-To: <1317743223.2229.17.camel@scimitar>
References: <1531E53627F1F749B4FE809BF2A4EB6702B130EF@WETMEX10.loepfe.com>
	<1317743223.2229.17.camel@scimitar>
From: ya knygar <knygar@gmail.com>
Date: Tue, 4 Oct 2011 15:53:05 +0000
Message-ID: <CAJVWO9YXNmZO0W49Yh++dfqmkXpR82HPSrfVJe8-3+H2t_G62w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Yocto webbrowser ?
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
X-List-Received-Date: Tue, 04 Oct 2011 15:53:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

but why "webkit-web-browser" and not some gecko build? Isn't
're-branding' of mobile firefox would not be easier than building a
powerful stand-alone mobile webkit browser? Isn't the Mozilla's work
more important than supporting webkit now, at all?

The gecko's memory consumption has been stretched for the mobiles,
adding the UX efforts, extensions, and that Firefox Mobile is almost
the only floss mobile browser, i can't understand why not to try with
it now.

On Tue, Oct 4, 2011 at 3:46 PM, Joshua Lock <josh@linux.intel.com> wrote:
> On Tue, 2011-10-04 at 15:26 +0200, Vellemans, Noel wrote:
>>
>> Hi all,
>>
>> I've been building the current-release of yocto (which succeeds)
>> [ sato-qemu-arm build]
>>
>>
>> 1) At this time I would like to 'include' the web-browser
>> (webkit-web-browser) =C2=A0into this build but I can not find any doc's =
on
>> how to do this?
>> Any pointers ?
>
> You'll need to customise an image to include the web browser:
> http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html=
#usingpoky-extend-customimage
>
>> 2) If the Web-browser build succeeds, how can I install this on the
>> target ?
>
> Alternatively you can scp the built package (probably
> build/tmp/deploy/rpm/ARCH/packagename if you're using the default
> settings) to the target device and install with the on-device package
> management tools.
>
> Regards,
> Joshua
> --
> Joshua Lock
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Yocto Project "Johannes factotum"
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Intel Open Source Technology Centre
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

