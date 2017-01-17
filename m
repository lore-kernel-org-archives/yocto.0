Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FFEDE00970; Tue, 17 Jan 2017 15:20:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9739E00970;
	Tue, 17 Jan 2017 15:20:05 -0800 (PST)
Received: by mail-vk0-f54.google.com with SMTP id r136so103070901vke.1;
	Tue, 17 Jan 2017 15:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ZaNyfq41DzgRavKMTykHOfY127axDQIL3XI7YoYSlZA=;
	b=Rtl/frvXxMyFuHOT3EikRPO91QBOvlXzHVXs4FN5/YfBXPD/Ddo3aqxYETo84d/6sx
	Z/S5rivsf9ouCMkX99X7O6icaiI67FQPVl4HKrpDozqmJ9lZAPo/oQdrpqChJHQ1S4l0
	94elx7UOxcW0ygh6Vj/xmCRZ6YAW0MHO+kSPCcN6LhjK7fq8X3vvRZC9/UtS63sIYSjg
	zvaGT6vURf6tol1ndqH7Y02zMT+65i74UqDPrTJAOedrXWNwUYZ14ocVKnTR8Ib+6yHl
	TCBO6hTCsGSC/AIJqAlNIAjkvqbaBLZVQppD5Y3BgDV0oAO6etMnJ2xJURcRR60wpVIF
	CpQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ZaNyfq41DzgRavKMTykHOfY127axDQIL3XI7YoYSlZA=;
	b=aEhGVj2nIja1QwVE6ps9lP3bEbArOp6/h47KO6xW3Z4L1G3NOqH0wp9PIi+LuxuuS0
	Awq+HuJ47zG37EVwNSqKSj5Q/HCl41IMuzsL0VqRzD0l8QOFdlBtbjBFruSAeemOBMhK
	hv3E4/c+9BHzI4UqsmKxbbpHMx9DBOGnTHEjfQtolh5y7XxJq5Q3m11ynpdRQI8AF3l5
	UqXg4JKiOWpccjR5tOS65L0ZqzJx6GLue2ybGzg4vDnoi94iwcn/A43xCoOtx98bM/h7
	zGhMKBDBPNkx7cFVxi24WMQLGySNp/BWvE162ZoDI1BeP1I8l33FWqvnrQnE72fXSroU
	z1Hw==
X-Gm-Message-State: AIkVDXIgN9PTUWkBmRtxfrgUKEDRRkceI9MXmkO4d4N7wTt2i83W/FPCAanAW47PYqGQxUUFxzS0lPAFgBrjSQ==
X-Received: by 10.31.161.205 with SMTP id k196mr108960vke.12.1484695204423;
	Tue, 17 Jan 2017 15:20:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.69.246 with HTTP; Tue, 17 Jan 2017 15:20:03 -0800 (PST)
In-Reply-To: <70703025.YBBEieGfxA@peggleto-mobl.ger.corp.intel.com>
References: <CALbNGRTer2zeMMwEfjUVsBtw7X2Xxc4STGvA3YmO1CniWsvEqA@mail.gmail.com>
	<2102802.MZXjXepLX7@peggleto-mobl.ger.corp.intel.com>
	<CALbNGRRq8iODPF=vFXZk6wrtKr-szExdL2wazEZGHMZUbXYbCQ@mail.gmail.com>
	<70703025.YBBEieGfxA@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 18 Jan 2017 00:20:03 +0100
Message-ID: <CALbNGRS19rA8k=awGLH3p=MKoV+vtqH0BhjF2yhGcANYym7MSA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Openembedded layer index stopped updating
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
X-List-Received-Date: Tue, 17 Jan 2017 23:20:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 17, 2017 at 11:21 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Fri, 13 Jan 2017 11:02:20 Andreas M=C3=BCller wrote:
>> On Fri, Jan 13, 2017 at 9:55 AM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>> > On Fri, 13 Jan 2017 08:56:47 Andreas M=C3=BCller wrote:
>> >> again me... sorry but I use index regularly to check if somebody else
>> >> already created a recipe I am interested in.
>> >>
>> >> I think it was caused by maintenance changes.
>> >
>> > You're right, we have just done an upgrade and as a result we are
>> > currently dealing with an issue updating the index, as yet I don't kno=
w
>> > what has caused it exactly because we aren't actually seeing any error=
s -
>> > the update process only manages to update some of the layers before it
>> > stalls and then eventually gets killed. We're working on it, apologies=
 for
>> > the inconvenience.
>>
>> Thanks and there is no inconvenience - was just a ping
>
> FYI everything should be back to a working state now. I'll send a separat=
e
> email describing recent enhancements.
>
> Cheers,
> Paul
>
Thanks a lot!

Andreas

