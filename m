Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 447BDE008A6; Mon,  2 Feb 2015 08:41:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D775E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 08:41:15 -0800 (PST)
Received: by mail-pa0-f46.google.com with SMTP id lj1so84293216pab.5
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 08:41:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=MQWrPt9xNphhdIy5rOZsYF2gIoXWQrwk1iK0AFRkF7U=;
	b=Av7SnDFKD7/BI8ucygAHYW/gLEauNMvfsSpjZJinU0b+JHMlRTZXMos370kz6Ovkgq
	vVu40vR4WtDgB7XFyfy+aryp+RPzUhJbwwRr7820qwsoSsVVw3uyf6IiD7ZumzgNvkDI
	QoZBPgGOFTFatqV9PxVO4PCzxhjlI8X75TYP4/N2X1hGC3cRGrKNQi9iD9cPN/Lm8UcX
	5+fysxLmy4TlO9+1yZAKZJkz7dilwUD0jtnRoZ46ZdPuM1G5M/bCPp4w0wIzuLb92JLU
	CeP0ohF8VkVI/QgZA2Zghc/T+UaB0vMS8c6Fljh+O+cmFQf691WoWm/seJ3ZEnVe+r3i
	kOwg==
X-Gm-Message-State: ALoCoQkeuKIACZBrRDiZ2uiHIb93VprfZrpQUlz8IeQHW2vB5b/39V8HzchajsodU6Rphzfl2/96
X-Received: by 10.68.69.5 with SMTP id a5mr30864651pbu.57.1422895275294;
	Mon, 02 Feb 2015 08:41:15 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:c42b:9a19:c8d3:f701?
	([2601:c:a700:272f:c42b:9a19:c8d3:f701])
	by mx.google.com with ESMTPSA id
	nj8sm19322856pdb.42.2015.02.02.08.41.13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Feb 2015 08:41:14 -0800 (PST)
Message-ID: <54CFA8A5.7090504@mvista.com>
Date: Mon, 02 Feb 2015 08:41:09 -0800
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
In-Reply-To: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
Subject: Re: [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Mon, 02 Feb 2015 16:41:25 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Khem,

If I knew what "testing' entailed I would through some time at this.

- Armin

On 02/02/2015 02:02 AM, Khem Raj wrote:
> Hi All
>
> I have put together upgrade to gcc 4.9.2 as well as glibc 2.21 (
> upcoming ) on  a contrib branch ( top 2 patches) its has not got much
> testing besides x86 qemu thus far.
>
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-glibc-upgrade
>
> I would like to request some help in testing these out in your
> respective environments and please report any issues you see so we can
> start sorting them out at earlier and making its way into OE-Core.
>
> Thanks for your help
>
> -Khem
>

