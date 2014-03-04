Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CF8BE00965
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 14:40:25 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id to1so231591ieb.28
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 14:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=UK8YAOCdytw90zFUTXc3rR2y3v/EKNxnO8ivXEs7Z3c=;
	b=decko1jcFrI55ZMBmrslRG9iZioMrkBiFiP3hqT91ZE1tmfZDXKsSD97yfk6A9lb4M
	uh6U+6nYdQemSBr1KwDNheH5ib08u1SAUpkDBQecFD6bmu5OQNIan+gG665KkkEICodO
	31Akmv782RXivRZfFlFaePOqJWngcgEHIMlJ6i7fcc5JLB/BBcUGOcBmBTk0bqPkUzMO
	iBSK69rbdND3JtwRT8AQqaiaDdFUmdV2A5wcrRI+8khW9OfNpyYZycxzz21/qcSYxBBf
	t8/h8kitE5DWYsWL01a1cn3UrFI8OwRSB4uFDKO4pGzIWe0Lg966lQQkm/N8M+US6+ck
	KPLA==
X-Received: by 10.43.46.3 with SMTP id um3mr1770815icb.1.1393972824228; Tue,
	04 Mar 2014 14:40:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Tue, 4 Mar 2014 14:39:54 -0800 (PST)
In-Reply-To: <CABgO3_MuNG3BRko9w=uXgOJW9aFrGKUeYdNbtskSNNxdpk6g8g@mail.gmail.com>
References: <1393581239-5526-1-git-send-email-s.mennetrier@innotis.org>
	<CABgO3_MuNG3BRko9w=uXgOJW9aFrGKUeYdNbtskSNNxdpk6g8g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Mar 2014 14:39:54 -0800
Message-ID: <CAMKF1soRRrcaW2o=Ebw5nm1Jc-222QKwTU8OwW_VbdisGTQJ8g@mail.gmail.com>
To: Sebastien MENNETRIER <s.mennetrier@innotis.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][for-dora][PATCH] Installed fonts directory in the default location needed by omxplayer
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
X-List-Received-Date: Tue, 04 Mar 2014 22:40:28 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 4, 2014 at 12:18 AM, Sebastien MENNETRIER
<s.mennetrier@innotis.org> wrote:
>>  do_install() {
>>         oe_runmake dist
>> +       mkdir -p ${D}/usr/share/fonts/truetype/freefont/
>> +       install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
>>  }
>>
>>  FILES_${PN} = "${bindir}/omxplayer* \
>> -               ${libdir}/omxplayer/lib*${SOLIBS}"
>> +               ${libdir}/omxplayer/lib*${SOLIBS} \
>> +               /usr/share/fonts"
>>
>

send the patch to OE-Core ml and dont hardcode /usr/share but use
${datadir} instead

