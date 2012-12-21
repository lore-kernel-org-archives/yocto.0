Return-Path: <daiane.list@gmail.com>
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38769E011AC;
	Fri, 21 Dec 2012 10:16:45 -0800 (PST)
Received: by mail-qa0-f43.google.com with SMTP id cr7so6419049qab.9
	for <multiple recipients>; Fri, 21 Dec 2012 10:16:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=XqQr3mUq6nc8ktMF0I/kqx3UiJsAr/M+9cr3xnACMnw=;
	b=pZ6osAuoegCPnfcf+PYXsWf+JOBxYflzvYQkjNtz7FIj0tj8q3ldpLmMCkNxYqjppD
	2+GQG8VT8NW3OvbUVSb8cN18AmhkAMpWyMlv26FY4K7BPqv/q+I6mJflO90D9MFE76t+
	cm13n6V3GGX+qo/970886dJz9reaqOAfuUs/ENvsdW23NJwhwADspjTuqB7vYBfRA7Tz
	ccRBuciToMLdzBvNvZuWFka8PM67a0QJrPSG4xGl3gUflojVFBkB/GW0LMqZpxY0bS8O
	92/nWxkfEwndkg6+1KjGPHKEFWeWNrmVoNx1K6/lM42NZfgf+dd0L8RXjNt2Cljb2MRn
	ltQw==
MIME-Version: 1.0
Received: by 10.224.183.147 with SMTP id cg19mr6990820qab.16.1356113804469;
	Fri, 21 Dec 2012 10:16:44 -0800 (PST)
Received: by 10.49.119.200 with HTTP; Fri, 21 Dec 2012 10:16:44 -0800 (PST)
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A80FFB0@039-SN1MPN1-002.039d.mgd.msft.net>
References: <4439C3C0562087488F139C696CD862A71328DE01@SBS-MEDEC.medecbenelux.local>
	<70CC66F5C30A414DADDA6973E4CA391A80FFB0@039-SN1MPN1-002.039d.mgd.msft.net>
Date: Fri, 21 Dec 2012 16:16:44 -0200
Message-ID: <CA+jg_OUAX0i8kF2siRhx8JKS_DMO2Xx5-kj8SJ8itr2fZ2_yCQ@mail.gmail.com>
From: Daiane Angolini <daiane.list@gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
X-Mailman-Approved-At: Fri, 21 Dec 2012 12:05:44 -0800
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Tim Verstraete <Tim.Verstraete@medecbenelux.be>
Subject: Re: [meta-freescale] uboot i.MX6
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
X-List-Received-Date: Fri, 21 Dec 2012 18:16:45 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 21, 2012 at 3:34 PM, McClintock Matthew-B29882
<B29882@freescale.com> wrote:
> On Thu, Dec 6, 2012 at 4:24 AM, Tim Verstraete
> <Tim.Verstraete@medecbenelux.be> wrote:
>> I have build the i.MX6 with danny release of yocto and latest freescale =
meta
>> using the core-image-minimal image for imx6qsabresd target machine =E8 r=
esult
>> is build has done everything BUT I when I upload my uboot to my sd card =
I
>> get nothing. When I change uboot to the image from the freescale website
>> everything runs =85

What=B4s your board? Are you using imx6 Sabre SD?
I=B4ve been working with imx6qsabresd last week and I always boot the board=
.

Let=B4s understand why you facing this behavior.


Daiane

