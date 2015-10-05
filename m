Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2E20E00CC9; Mon,  5 Oct 2015 10:10:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0806BE00B63
	for <yocto@yoctoproject.org>; Mon,  5 Oct 2015 10:10:06 -0700 (PDT)
Received: by ykdz138 with SMTP id z138so177325367ykd.2
	for <yocto@yoctoproject.org>; Mon, 05 Oct 2015 10:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=tCgnabpIPhQeecm/HwoSO9qa3JZ5be1zh+jznv7HIIg=;
	b=s0mhyNeCnFHWptgjDDksfqBfaLTrL1KB+Jkk5uEfOCiWuIs4Ab0o67qtS1U/OiazXO
	5yi+suMjgoG1AlRNeJm1pmL1+zjGnq4V8uLLREowlgkeqdcHBoUQA2XPH1qssP0gqOXZ
	p5MwDGehHTklKorkM7aPNvsPbR1zUSjhnjDo+iMba7pIMTF7f12tz+WAdSlN6zCYw1z/
	4AwZj3iwD8bUBzwEoTuihUzdhd6B5VfH/l+RiyrBRNuxAF/jMUtvN+in/I7AnF4v4jnS
	vKDRtqv6uPtSRR2tIH0rUoWZ74KQQhfRGEV2l/66L8HKtkzZkyssutGzDOB//lPSFa6Q
	rLJA==
MIME-Version: 1.0
X-Received: by 10.170.88.84 with SMTP id f81mr26138593yka.78.1444065005708;
	Mon, 05 Oct 2015 10:10:05 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Mon, 5 Oct 2015 10:10:05 -0700 (PDT)
In-Reply-To: <CAMKF1srjUiR3c5jX9KxMhhO+eDz4E23=cGKh5fEr5KYSu+iDxw@mail.gmail.com>
References: <560B8F1B.8030701@iseg-hv.de>
	<CAMKF1srjUiR3c5jX9KxMhhO+eDz4E23=cGKh5fEr5KYSu+iDxw@mail.gmail.com>
Date: Mon, 5 Oct 2015 14:10:05 -0300
Message-ID: <CAF3SDA4Hw=m2xW8grLCwESq1ioWP=2mL9Fqagw0_NiNyH9kOzw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: busybox udhcpd service file
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
X-List-Received-Date: Mon, 05 Oct 2015 17:10:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I would suggest you to setup build history and look files installed by
busybox package.

2015-10-05 13:13 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
> On Wed, Sep 30, 2015 at 12:28 AM, Lukas B=C3=B6hm <lukas.boehm@iseg-hv.de=
> wrote:
>> Hello,
>>
>> I want to use the busybox udhcpd server in conjunction with systemd. As
>> there is no service file included in the recipe (v1.22.1) and no udhcpd.=
conf
>> I made a bbappend to add this. Unfortunatelly the service file is not ad=
ded
>> to the final image but the conf-file.
>> My busybox_%.bbappend looks as follows:
>>
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>> SRC_URI +=3D " \
>>                 file://udhcpd.conf \
>>                 file://udhcpd.service \
>>         "
I don't really understand what you said. The udhcpd.conf file was
installed on image but not
the udhcpd.service file? Is that right? Can you check if busybox
already ships udhcpd.conf file?

>> SYSTEMD_PACKAGES +=3D " \
>>                 ${PN}-udhcpd \
>>         "
>> SYSTEMD_SERVICE_${PN}-udhcpd =3D "udhcpd.service"
>> FILES_${PN}-udhcpd +=3D "${systemd_unitdir}/system/udhcpd.service
>> ${sysconfdir}/udhcpd.conf"
>>
>> do_install_append () {
>>   install -d ${D}${systemd_unitdir}/system
>>   install -d ${D}${sysconfdir}
>>   install -m 0644 ${WORKDIR}/udhcpd.conf ${D}${sysconfdir}
>>   install -m 0644 ${WORKDIR}/udhcpd.service
>> ${D}${systemd_unitdir}/system/udhcpd.service
>> }
>> -----------------------------
>> The strange thing is, that the service file is installed to
>> ${WORKDIR}/image/lib/systemd/system but not to the final image.
>>
>> Any hints how to make it will be highly appreciated.
>
> Did you inherit systemd ?
>
>
>> Thanks
>>
>> Lukas B=C3=B6hm
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


Cheers,

--=20
"Do or do not. There is no try"
  Yoda Master

