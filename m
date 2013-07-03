Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41E70E0141B
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 19:26:16 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id kq13so6880125pab.39
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2013 19:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=vRtY75Vw2qCGDEgJOYpzscE5/Lm8EQSqEgcxIcwNLgQ=;
	b=v04+NNdJau6jDrp1M0wUusWsHEd3nTAT3hXh8JV8/DggtVt/RS9wFWny/JY31i6fU/
	/vnN64AyzGW61iS/EMwAfeSk2AFwOXcAQPiQrEh2RVZ3mhzl2+3DksbN/mtk6inL5MGo
	ki4WIBFm+mTxF9fSQI7NGKbK9POiTDmSmhgIMFXQdn6nBNzcblbk6PH1zG/LS4q9dWc+
	oH/M3Ly+9YB56e/ibUIoW7fB/SP+8OV2K9BEuDtE2CYhiElNoI7vMyZOpDG6rRXzwCT3
	62SCgm1/l7lYXsmH6F7vshb2D65ukRa6GfMaTXDGXgxBzNwqAI9uQ8Tmx6cYmLqami1z
	GfiA==
MIME-Version: 1.0
X-Received: by 10.68.196.167 with SMTP id in7mr31678784pbc.170.1372818376141; 
	Tue, 02 Jul 2013 19:26:16 -0700 (PDT)
Received: by 10.68.175.33 with HTTP; Tue, 2 Jul 2013 19:26:16 -0700 (PDT)
In-Reply-To: <1372699690.18377.6.camel@envy.home>
References: <1372409484.9930.245.camel@ted> <51CD86F1.7090409@windriver.com>
	<1372424223.9930.257.camel@ted> <51CD8973.7020704@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF5244E@ORSMSX101.amr.corp.intel.com>
	<51CD9264.2040609@windriver.com> <1372427783.9930.258.camel@ted>
	<1372482483.9243.42.camel@envy.home>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF52828@ORSMSX101.amr.corp.intel.com>
	<51D11493.6030602@yoctoproject.org>
	<1372657489.4401.7.camel@envy.home>
	<51D11F2E.6070104@yoctoproject.org> <1372661219.25291.6.camel@ted>
	<1372699690.18377.6.camel@envy.home>
Date: Tue, 2 Jul 2013 22:26:16 -0400
Message-ID: <CADkTA4M4xwTLP-ZRxn231M0v4m1FmTPaOpd86sn+sXDfjMt-fA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <darren.hart@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: poky-extras
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
X-List-Received-Date: Wed, 03 Jul 2013 02:26:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 1, 2013 at 1:28 PM, Darren Hart <darren.hart@intel.com> wrote:
> On Mon, 2013-07-01 at 07:46 +0100, Richard Purdie wrote:
>> On Sun, 2013-06-30 at 23:18 -0700, Michael Halstead wrote:
>> > On 06/30/2013 10:44 PM, Darren Hart wrote:
>> > > On Sun, 2013-06-30 at 22:33 -0700, Michael Halstead wrote:
>> > > > I can change the name shortly. Is there any reason to keep a read-only
>> > > > copy available at the current location temporarily?
>> > > Not really. Unless Bruce is using it in some automated scripts that need
>> > > to be updated.
>> > >
>> >
>> > The name has been changed. Shall we update the description or is
>> > "Supplementary metadata layers to extend the Poky core" still
>> > appropriate?
>>
>> We can change it to something like "Supplementary linux-yocto kernel
>> development metadata" unless Bruce has any better description.
>
> Bruce is out this week with limited email access. He isn't terribly
> picky on naming and that description should work as good as any.

Yup, and apparently my access when it comes back .. makes me
read email in random order!

The description and resolution are all fine with me.

Bruce

>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

